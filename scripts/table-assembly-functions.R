# this report assembles tables for comparing models
# it works with catalogs that include multiple models

# # catalog <- readRDS("./data/shared/derived/pp-spread.rds") # physical-physical track
# catalog_spread <- readRDS("./data/shared/derived/pc-spread.rds") # physical-cognitive track
# # template for structuring tables for reporting individual models
# stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil-v5.csv")
# d <- catalog_spread
# study_name_ = "octo"
# subgroup_   = "male"
# process_a_  = "grip"
# process_b_  =  "block"
# model_type_ = "aehplus"

###########################
#### VIEWING functions ####
###########################

view_options <- function(
  d
  ,study_name_
  ,subgroups   = sort(unique(d$subgroup)) #c("male","female")
  ,model_types = sort(unique(d$model_type)) #c("a","aehplus")
  ,processes_a = sort(unique(d$process_a))
  ,processes_b = sort(unique(d$process_b))
  # ,a = sort(unique(d$process_a))
  # ,b = sort(unique(d$process_b))
  ,full_id = TRUE
){

  if(full_id){
    d2 <- d %>%
      dplyr::filter(
        study_name == study_name_
        ,model_type %in% model_types
        ,subgroup %in% subgroups
        ,process_a %in% processes_a
        ,process_b %in% processes_b

      ) %>%
      dplyr::group_by(study_name,subgroup, model_type, process_a, process_b) %>%
      dplyr::summarize(
        n_models = n()/44 # replace this with a dynamic value
        # ,count = dplyr::cumany(n_models)
      )
  }else{
    d2 <- d %>%
      dplyr::filter(
        study_name == study_name_,
        process_a %in% processes_a,
        process_b %in% processes_b
      ) %>%
      dplyr::group_by(process_a, process_b) %>%
      dplyr::summarize(
        n_models = n()/44 # replace this with a dynamic value
        # ,count = dplyr::cumall(n_models)
      )
  }
  d2 <- as.data.frame(d2)
  return(d2)
}

# prints a table of extracted coefficients for a single model
view_one_model <- function(
  d,
  study_name_,
  subgroup_,
  model_type_,
  process_a_,
  process_b_,
  pretty_=T
){
  # stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil.csv")
  # stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil-v2.csv")
  # stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil-v3.csv")
  # stencil <- read.csv("https://raw.githubusercontent.com/IALSA/IALSA-2015-Portland/master/data/shared/tables/study-specific-stencil.csv")
  # stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil-v5.csv")

  pattern_est <- c(
    "intercept"    = "%0.2f",
    "slope"        = "%0.2f"
  )
  pattern_se <- c(
    "intercept"    = "%0.2f",
    "slope"        = "%0.2f"
  )
  pattern_dense <- c(
    "intercept"    = "%6s(%4s),%7s",
    "slope"        = "%6s(%4s),%7s"
  )


  stencil$label <- format(stencil$label, justify = "left")
  model_key <- stencil$full_name
  model_key_labels <- stencil$label
  # d <- results
  single_model <- d %>%
    dplyr::mutate(
      full_name     = paste0(process,"_",coefficient,"_",subindex)
    ) %>%
    dplyr::filter(
      study_name == study_name_,
      subgroup   == subgroup_,
      process_a  == process_a_,
      process_b  == process_b_,
      model_type == model_type_,
      full_name %in% model_key
    )

  subject_count_ <- single_model$subject_count[1]
  AIC_ <- single_model$aic[1]
  BIC_ <- single_model$bic[1]
  LL_ <- single_model$ll[1]

  model_info <- data.frame(
    label = c("N", "AIC", "BIC"),
    est = as.double(c(subject_count_, AIC_, BIC_)),
    stringsAsFactors = FALSE)

  d2 <- dplyr::left_join(stencil, single_model, by = "full_name") %>%
    dplyr::mutate(process = process.y) %>%
    dplyr::select(type, process, label,est, se, pval, - process.y)

  if(pretty_){
    d2 <- d2 %>%
      dplyr::mutate(
        # subject_count = scales::comma(subject_count),
        est_pretty    = sprintf(pattern_est[1], est),
        se_pretty     = sprintf(pattern_se[1], se),
        pval_pretty   = sprintf("%0.2f", pval), #Remove leading zero from p-value.
        pval_pretty   = ifelse(pval>.99, ".99", sub("^0(.\\d+)$", "\\1", pval_pretty)), #Cap p-value at .99
        # pval_pretty   = sprintf("*p*=%s", pval_pretty),
        pval_pretty   = sprintf("p=%s", pval_pretty),
        # pval_pretty   = ifelse(pval_pretty=="*p*=.00", "*p*<.01", pval_pretty),       #Cap p-value at .01
        # pval_pretty   = ifelse(pval_pretty=="*p*=NA" , "*p*= NA", pval_pretty),       #Pad NA with space
        pval_pretty   = ifelse(pval_pretty=="p=.00", "p<.01", pval_pretty),       #Cap p-value at .01
        pval_pretty   = ifelse(pval_pretty=="p=NA" , "p= NA", pval_pretty),       #Pad NA with space

        pattern       = pattern_dense[1],
        dense         = sprintf(pattern, est_pretty, se_pretty, pval_pretty),
        # dense         = ifelse(is.na(est), "--,*p*=  ----", dense)
        dense         = ifelse(is.na(est), "--,p=  ----", dense)
      ) %>%
      dplyr::select(type, process, label, dense)

    model_info <- model_info %>%
      dplyr::rename(dense =  est) %>%
      dplyr::mutate(dense = scales::comma(dense,0))
    d3 <- dplyr::bind_rows(d2,model_info )
  }else{
    d3 <- dplyr::bind_rows(d2,model_info )
  }
  # print(d3, n= nrow(d3))
  return(as.data.frame(d3))

}


###########################
##### BAKING functions ####
###########################

pull_one_model <- function(
  d
  , study_name_
  , subgroup_
  , model_type_
  , process_a_
  , process_b_
){
  # TESTING CASE
  # d = catalog_spread
  # study_name_ = "octo"
  # subgroup_   = "female"
  # model_type_  = "aehplus"
  # process_a_   = "pef"
  # process_b_ = "block"


  stencil$label <- format(stencil$label, justify = "left")
  model_key <- stencil$full_name
  model_key_labels <- stencil$label

  model_id <- c(
    study_name = study_name_,
    subgroup   = subgroup_,
    model_type = model_type_,
    process_a  = process_a_,
    process_b  = process_b_
  )
  # pull out a single model
  single_model <- d %>%
    dplyr::mutate(
      full_name     = paste0(process,"_",coefficient,"_",subindex)
    ) %>%
    dplyr::filter(
      study_name ==  as.character(model_id["study_name"]),
      subgroup   ==  as.character(model_id["subgroup"]),
      model_type ==  as.character(model_id["model_type"]),
      process_a  ==  as.character(model_id["process_a"]),
      process_b  ==  as.character(model_id["process_b"]),
      full_name %in% model_key
    )
  # assemble model coefficients
  model_coef <- dplyr::left_join(stencil, single_model, by = "full_name") %>%
    dplyr::mutate(process = process.y) %>%
    dplyr::select(type, process, label,est, se, pval, - process.y, full_name)

  # assemble model  information (1)
  subject_count_ <- single_model$subject_count[1]
  wave_count_ <- single_model$wave_count[1]
  parameter_count_ <- single_model$parameter_count[1]

  model_info_1 <- data.frame(
    label = c("N","occasions","parameters"),
    est = as.integer(c(subject_count_, wave_count_, parameter_count_)),
    stringsAsFactors = FALSE)

  # assemble model information (2)
  AIC_ <- single_model$aic[1]
  BIC_ <- single_model$bic[1]
  LL_ <- single_model$ll[1]

  model_info_2 <- data.frame(
    label = c("LL", "AIC", "BIC"),
    est = as.double(c(LL_, AIC_, BIC_)),
    stringsAsFactors = FALSE)
  # model_info_2$est <- format(model_info_2$est,digits = 0,big.mark ="," )

  # compute and assemble BISR correlations

  d <- as.data.frame(model_coef)

  (ab_tau_00 <- d[d$full_name=='ab_tau_00',"est"])
  (aa_tau_00 <- d[d$full_name=='aa_tau_00',"est"])
  (bb_tau_00 <- d[d$full_name=='bb_tau_00',"est"])
  (ab_cor_00 <- ab_tau_00 / (sqrt(aa_tau_00)*sqrt(bb_tau_00)))

  (ab_tau_11  <- d[d$full_name=='ab_tau_11',"est"])
  (aa_tau_11  <- d[d$full_name=='aa_tau_11',"est"])
  (bb_tau_11  <- d[d$full_name=='bb_tau_11',"est"])
  (ab_cor_11  <- ab_tau_11 / (sqrt(aa_tau_11)*sqrt(bb_tau_11)))

  (ab_sigma_00 <- d[d$full_name=='ab_sigma_00',"est"])
  (a_sigma_00  <- d[d$full_name=='a_sigma_00',"est"])
  (b_sigma_00  <- d[d$full_name=='b_sigma_00',"est"])
  (ab_cor_res  <- ab_sigma_00 / (sqrt(a_sigma_00)*sqrt(b_sigma_00)))

  bisr_corr <- data.frame(
    label = c(
      "Correlation of Levels",
      "Correlation of Slopes",
      "Correlation of Residuals"),
    est   = as.double(c(ab_cor_00, ab_cor_11, ab_cor_res)),
    stringsAsFactors = FALSE
  )
  # bisr_corr$est <- round(bisr_corr$est, 2)
  bisr_corr$label <- format(bisr_corr$label, justify = "left")
  rm(d)

  # assemble object for output
  ls <- list()
  ls[["id"]]   <- model_id
  ls[["coef"]] <- as.data.frame(model_coef %>% dplyr::select(-full_name))
  ls[["corr"]] <- bisr_corr
  ls[["info_1"]] <- model_info_1
  ls[["info_2"]] <- model_info_2

  # ls[["label"]] <- model_key_labels

  # a <- ls$id
  # mid <- paste0(a,sep="-", collapse ="")
  # mid <- paste(substr(mid, 1, nchar(mid)-1))
  #
  # str(a)
  # names(a)
  # name <-c(mid, "coef", "info")
  # names(ls) <- c(mid, "coef", "info")
  return(ls)

}

# creates baking mix for models of a particular (outcome pair) across many (model types)
make_baking_mix_model_type <- function(
  d=catalog_spread
  ,study_name_
  ,subgroup_
  ,model_type_
  ,process_a_
  ,process_b_
  ,print_config=T
){
  # TESTING CASE
  # d = catalog_spread
  # study_name_ = "octo"
  # subgroup_   = "female"
  # model_type_ = c("a","ae","aeh","aehplus")
  # process_a_   = "pef"
  # process_b_ = "block"

  # d = catalog_spread
  # study_name_ = "elsa"
  # subgroup_   = "female"
  # model_type_ = c("a","ae","aeh","aehplus")
  # process_a_   = "pef"
  # process_b_ = "letter"

  spread = "model_type"

  d2 <- d %>%
    dplyr::filter(
      study_name %in% study_name_
      ,subgroup   %in% subgroup_
      ,model_type %in% model_type_
      # ,model_type %in% c("a","ae","aeh","aehplus")
      ,process_a  %in% process_a_
      ,process_b  %in% process_b_
    ) %>%
    dplyr::group_by(study_name, subgroup, model_type, process_a, process_b) %>%
    dplyr::summarize(n_models = n()/44)
  if(print_config){
    print(d2, n = nrow(d2))
  }

  spread_names <- sort(unique(as.data.frame(d2)[,spread]))

  baking_mix <- list()
  for(i in spread_names){
    baking_mix[[i]] <- pull_one_model(
       d                = catalog_spread
      ,study_name_      = study_name_ # "eas"
      ,subgroup_        = subgroup_ #"male"
      ,model_type_      = i # "aehplus",
      ,process_a        = process_a_ #"pef",
      ,process_b        = process_b_ # "block"
    )
  }
  baking_mix[["spread"]] <- spread
  return(baking_mix)
}


# creates baking mix for models of a particular (type) across many (process_a) outcomes
make_baking_mix_process_a <- function(
  d=catalog_spread
  ,study_name_
  ,subgroup_
  ,model_type_
  ,process_a_
  ,print_config=T
){
  # TESTING CASE
  # d = catalog_spread
  # study_name_ = "octo"
  # subgroup_   = "female"
  # model_type_ = c("aehplus")
  # process_a_   = "pef"

  spread = "process_b"
  d2 <- d %>%
    dplyr::filter(
      study_name %in% study_name_
      ,subgroup   %in% subgroup_
      ,model_type %in% model_type_
      ,process_a  %in% process_a_
    ) %>%
    dplyr::group_by(study_name, subgroup, model_type, process_a, process_b) %>%
    dplyr::summarize(n_models = n()/44)
  if(print_config){
    print(d2, n = nrow(d2))
  }
  spread_names <- sort(unique(as.data.frame(d2)[,spread]))
  baking_mix <- list()
  for(i in spread_names){
    baking_mix[[i]] <- pull_one_model(
      d                = catalog_spread
      ,study_name_      = study_name_  # "eas"
      ,subgroup_        = subgroup_    #"male"
      ,model_type_      = model_type_  # "aehplus",
      ,process_a        = process_a_   #"pef",
      ,process_b        = i
    )
  }
  baking_mix[["spread"]] <- "process_b"
  return(baking_mix)
}


put_stat_frosting <- function(a, row_labels, model_names){
  # (a <- cake_layers[[index]]); str(a)
  (b <- as.data.frame(a, col.names = model_names))
  b[,"label"] <- row_labels

  target <- as.data.frame(b[,model_names])
  names(target) <- model_names

  b[,"mean"] <- apply(target,1,mean, na.rm = TRUE)
  b[,"sd"]   <- apply(target,1,sd, na.rm = TRUE)
  b[,"min"]  <- apply(target,1,min, na.rm = TRUE)
  b[,"max"]  <- apply(target,1,max, na.rm = TRUE)
  return(b)
}


bake_the_cake <- function(
  baking_mix
){
  # BAKING THE CAKE
  # now we will create a list object in which each element will be
  # a 38 by m data.frame with model coefficient values of a given type (est/se/pval)
  # first we base fundamental "layers" of the cake: est/se/pval/.../....
  cake_layers <- list()

  # model_names <- paste0("model_",1:length(baking_mix))
  (model_names <- names(baking_mix))
  (model_names <- model_names[!model_names %in% "spread"])
  # browser()
  for(m in model_names){
    # m <- 1
    (a <- baking_mix[[m]][["id"]])
    (mid <- paste0(a,sep="-", collapse =""))
    (mid <- paste(substr(mid, 1, nchar(mid)-1)))
    # names(mid) <- model_names[m]

    (cake_layers[["id"]][m] <- mid)

    lapply(cake_layers, names)
    for(index in c("est", "se", "pval")){
      # index = "est"
      cake_layers[[index]][[m]] <- baking_mix[[m]][["coef"]][[index]]
    }
  }

  (names(cake_layers[["id"]]) <- model_names)

  row_labels <- baking_mix[[1]][["coef"]]["label"]
  for(index in c("est", "se", "pval")){
    # index = "est"
    # browser()
    cake_layers[[index]] <- put_stat_frosting(cake_layers[[index]], row_labels, model_names)
  }
  cake_layers[["baking_mix"]] <- baking_mix
  return(cake_layers)
}
# cake <- bake_the_cake(baking_mix)


slice_the_cake <- function(
  cake,
  mask_not  = c("a","b","ab","aa","bb"),
  info      = TRUE,
  corr      = TRUE,
  aggregate = TRUE
){
  (model_names <- names(cake$baking_mix))
  (model_names <- model_names[!model_names %in% "spread"])

  names_study_name <- c()
  names_subgroup   <- c()
  names_model_type <- c()
  names_process_a  <- c()
  names_process_b  <- c()
  for(m in seq_along(model_names)){
    names_study_name[m] <- as.character(cake$baking_mix[[m]]$id["study_name"])
    names_subgroup[m]   <- as.character(cake$baking_mix[[m]]$id["subgroup"])
    names_model_type[m] <- as.character(cake$baking_mix[[m]]$id["model_type"])
    names_process_a[m]  <- as.character(cake$baking_mix[[m]]$id["process_a"])
    names_process_b[m]  <- as.character(cake$baking_mix[[m]]$id["process_b"])
  }

  model_denses <- list()
  for(m in model_names){
    coef_raw <- data.frame(
      label = cake$baking_mix[[m]][["coef"]]["label"],# local use only
      est  = cake$est[[m]],
      se   = cake$se[[m]],
      pval = cake$pval[[m]]
    )
    # browser()
    model_denses[[m]] <- dense_v1(coef_raw)
  }
  model_denses <- as.data.frame(model_denses)
  (names(model_denses) <- model_names)

  model_denses <- cbind(
    cake$baking_mix[[1]][["coef"]]["process"], # process indicator
    cake$baking_mix[[1]][["coef"]]["label"], # label indicator
    model_denses)
  # compute summary
  est_raw <- data.frame(
    label = cake$baking_mix[[1]][["coef"]]["label"],
    est_mean  = cake$est["mean"],
    est_sd    = cake$est["sd"]
  )

  ##### process_a must become a dynamic element : process_b
  (process_a_name <- unique(names_process_a))
  testit::assert("Process must be the same across", sum( duplicated(process_a_name))==0L)
  model_denses[process_a_name] <- dense_v2(est_raw)
  model_denses[process_a_name] <- ifelse(model_denses[,"process"] %in% mask_not, model_denses[,process_a_name],"---")

  slice <- model_denses
  # Now start adding custom sections

  compute_aggregate <- function(
    x,
    row_labels,
    model_names
  ){
    x[,"label"] <- row_labels

    target <- as.data.frame(x[,model_names])
    names(target) <- model_names

    x[,"mean"] <- apply(target,1,mean, na.rm = TRUE)
    x[,"sd"]   <- apply(target,1,sd, na.rm = TRUE)
    x[,"min"]  <- apply(target,1,min, na.rm = TRUE)
    x[,"max"]  <- apply(target,1,max, na.rm = TRUE)
    return(x)
  }

  assemble_aggregate <- function(
    cake,
    component,
    digits,
    model_names
  ){
    # component = "corr"
    # component = "info_1"
    # component = "info_2"
    output <- list()
    for(m in model_names){
      output[[m]] <- cake$baking_mix[[m]][[component]]["est"]
    }
    output <- as.data.frame(output)
    (names(output) <- model_names)
    (row_labels <- cake$baking_mix[[1]][[component]]["label"])
    (output <- compute_aggregate(output,row_labels, model_names))
    if(component =="info_2"){
      output[process_a_name] <- dense_v3(output) #? should I pass
    }else{
      output[process_a_name] <- dense_v2(output) #? should I pass
    }


    output <- as.data.frame(output) %>%
      dplyr::select(label,dplyr::everything(), -mean,-sd, -min,-max)
    for(i in model_names){
      output[,i] <- format(output[,i],digits=digits, big.mark = ",")
    }
    return(output)
  }


  if(corr){
    model_corrs <- assemble_aggregate(cake, "corr",   2, model_names)
    slice <- dplyr::full_join(slice,model_corrs)
  }

  if(info){
    model_info_1 <- assemble_aggregate(cake, "info_1",   2, model_names)
    model_info_2 <- assemble_aggregate(cake, "info_2",   2, model_names)
    slice <- dplyr::full_join(slice,model_info_1)
    slice <- dplyr::full_join(slice,model_info_2)
  }

  slice[is.na(slice$process),"process"] <- "\\ "
  slice[slice$process=="aa","process"] <- "a"
  slice[slice$process=="bb","process"] <- "b"

  # slice[slice$label == "Correlation of levels","process"] <- "ab"
  # slice[slice$label == "Correlation of slopes","process"] <- "ab"
  # slice[slice$label == "Correlation of residuals","process"] <- "ab"

  slice_names <- c("process","label", model_names,"mean(sd)")
  names(slice) <- slice_names
  if(!aggregate){
    slice["mean(sd)"] <- NULL
  }

  return(slice)

}




##########################
### densing functions ####
##########################


dense_v1 <- function(coef_raw, label_=FALSE){
  pattern_est <- c(
    "intercept"    = "%0.2f",
    "slope"        = "%0.2f"
  )
  pattern_se <- c(
    "intercept"    = "%0.2f",
    "slope"        = "%0.2f"
  )
  # pattern_dense <- c(
  #   "intercept"    = "%6s(%4s),%7s",
  #   "slope"        = "%6s(%4s),%7s"
  # )

  pattern_dense <- c(
    "intercept"    = "%6s (%4s) %7s",
    "slope"        = "%6s (%4s) %7s"
  )

  coef_dense <- coef_raw %>%
    dplyr::mutate(
      # subject_count = scales::comma(subject_count),
      est_pretty    = sprintf(pattern_est[1], est),
      se_pretty     = sprintf(pattern_se[1], se),
      pval_pretty   = sprintf("%0.2f", pval), #Remove leading zero from p-value.
      pval_pretty   = ifelse(pval>.99, ".99", sub("^0(.\\d+)$", "\\1", pval_pretty)), #Cap p-value at .99
      # pval_pretty   = sprintf("*p*=%s", pval_pretty),
      # pval_pretty   = sprintf("p=%s", pval_pretty),
      pval_pretty   = sprintf("%s", pval_pretty),
      # pval_pretty   = ifelse(pval_pretty=="*p*=.00", "*p*<.01", pval_pretty),       #Cap p-value at .01
      # pval_pretty   = ifelse(pval_pretty=="*p*=NA" , "*p*= NA", pval_pretty),       #Pad NA with space
      # pval_pretty   = ifelse(pval_pretty=="p=.00", "p<.01", pval_pretty),       #Cap p-value at .01
      # pval_pretty   = ifelse(pval_pretty=="p=NA" , "p= NA", pval_pretty),       #Pad NA with space
      pval_pretty   = ifelse(pval_pretty==".00", "<.01", pval_pretty),       #Cap p-value at .01
      pval_pretty   = ifelse(pval_pretty=="NA" , "  NA", pval_pretty),       #Pad NA with space

      pattern       = pattern_dense[1],
      dense         = sprintf(pattern, est_pretty, se_pretty, pval_pretty),
      # dense         = ifelse(is.na(est), "--,*p*=  ----", dense)
      # dense         = ifelse(is.na(est), "--,p=  ----", dense)
      dense         = ifelse(is.na(est), "---", dense)
    )
  # coef_dense <- coef_dense %>% dplyr::select(label, dense)
  coef_dense <- coef_dense %>% dplyr::select( dense)

  return(coef_dense)
}

dense_v2 <- function(est_raw, label_=FALSE){
  pattern_est <- c(
    "intercept"    = "%0.2f",
    "slope"        = "%0.2f"
  )
  pattern_se <- c(
    "intercept"    = "%0.2f",
    "slope"        = "%0.2f"
  )
  pattern_dense <- c(
    "intercept"    = "%4s(%2s)",
    "slope"        = "%4s(%2s)"
  )
  pattern_dense_long <- c(
    "intercept"    = "%4s(%2s) , [%4s;%4s]",
    "slope"        = "%4s(%2s) , [%4s;%4s]"
  )


  est_dense <- est_raw %>%
    dplyr::mutate(
      # subject_count = scales::comma(subject_count),
      mean_pretty   = sprintf(pattern_est[1], mean),
      sd_pretty     = sprintf(pattern_se[1], sd),
      # min_pretty    = sprintf(pattern_est[1], min)#,
      # max_pretty    = sprintf(pattern_est[1], max)#,

      pattern       = pattern_dense[1],
      # pattern       = pattern_dense_long[1],
      dense         = sprintf(pattern, mean_pretty, sd_pretty),
      # dense         = sprintf(pattern, mean_pretty, sd_pretty, min_pretty, max_pretty),
      # dense         = ifelse(is.na(mean), "--,p=  ----", dense)
      dense         = ifelse(is.na(mean), "---", dense)
    )
  # coef_dense <- coef_dense %>% dplyr::select(label, dense)
  est_dense <- est_dense %>% dplyr::select( dense)

  return(est_dense)
}

dense_v3 <- function(est_raw, label=FALSE){
  est_dense <- est_raw %>%
    dplyr::mutate(
      mean_pretty   = format(mean,digits=0,big.mark = ","),
      sd_pretty     = format(sd,digits=0,big.mark = ","),
      dense         = paste0(mean_pretty,"(",sd_pretty,")"),
      dense         = ifelse(is.na(mean), "...", dense)
    )
  est_dense <- est_dense %>% dplyr::select( dense)
  return(est_dense)
}



##############################
#### SERVING FUNCTIONS #######
##############################

# ---- serve-slice-model_type -------------------------------
serve_slice_model_type <- function(
  d = catalog_spread
  ,study_name
  ,subgroup
  ,model_type
  ,process_a
  ,process_b
  ,print_config = FALSE
  ,mask_not = c("a","b","ab","aa","bb")
  ,info = TRUE
  ,corr = TRUE
){
  # TESTING CASE
  # study_name = "lasa"
  # subgroup = "male"
  # model_type = "aehplus"
  # process_a = "pef"
  # process_b = "letter"
  # print_config = FALSE
  # browser()
  baking_mix <- make_baking_mix_model_type(
    d                = d,
    study_name_      = study_name,
    subgroup_        = subgroup,
    model_type_      = model_type,
    process_a_       = process_a,
    process_b        = process_b,
    print_config     = print_config
  )
  cake <- bake_the_cake(baking_mix)
  slice <- slice_the_cake(
    cake
    ,info      = info
    ,corr      = corr
    ,mask_not  = mask_not
    ,aggregate = FALSE
  )
  # print(knitr::kable(slice))
  return(slice)
}

# catalog_spread %>% serve_slice_model_type(
#   study_name   = "eas"            ,
#   subgroup     = "female"         ,
#   model_type   = c("a", "ae","aeh","aehplus") ,
#   process_a    = "pef"            ,
#   process_b    = "block"          ,
#   print_config = FALSE
# )


# ---- serve-slice-process_a -------------------------------
serve_slice_process_a <- function(
  d = catalog_spread
  ,study_name
  ,subgroup
  ,model_type
  ,process_a
  # ,process_b
  ,print_config = FALSE
  ,mask_not = c("a","b","ab","aa","bb")
  ,info = T
  ,corr = T
){
  # TESTING CASE
  # study_name = "eas"
  # model_type = "aehplus"
  # process_a = "pef"

  baking_mix <- make_baking_mix_process_a(
    d                = d,
    study_name_      = study_name,
    subgroup_        = subgroup,
    model_type_      = model_type,
    process_a_       = process_a,
    # process_b        = process_b,
    print_config     = print_config
  )
  cake <- bake_the_cake(baking_mix)
  slice <- slice_the_cake(cake,info = info, corr=corr, mask_not = mask_not)
  # print(knitr::kable(slice))
  return(slice)
}

# catalog_spread %>% serve_slice_process_a(
#   study_name   = "eas"            ,
#   subgroup     = "female"         ,
#   model_type   = "aehplus"        ,
#   process_a    = "pef"            ,
#   # process_b    = "block"          ,
#   print_config = FALSE
# )

##################################
## Report selected coefficients ##
#################################
report_long_hand <- function(
  d # catalog
  ,study_name_
  ,subgroup_
  ,pivot
  ,target_value
){
  # d = catalog
  # study_name_  = "lasa"
  # subgroup_    = "female"
  # pivot        = "pef"
  # target_value = "cr_levels_est"
  ds_target <- d %>%
    dplyr::distinct() %>%
    dplyr::filter(model_number == "b1") %>%
    dplyr::filter( !is.na(process_a) & !is.na(process_b) ) %>%  # remove univariate models
    dplyr::filter( process_a!="nophys" & process_b!="nocog" ) %>%  # remove univariate models
    dplyr::filter(
      study_name == study_name_#"eas" #eas  elsa   hrs  ilse  lasa   map nuage  octo satsa
      ,subgroup  == subgroup_#"female"
      ,process_a == pivot#"pef"
      # ,process_b == "trailsb"
    ) %>%
    dplyr::select_(
      .dots=c(
        "model_number"
        ,"study_name"
        ,"process_a"
        ,"process_b"
        ,"subgroup"
        ,"model_type"
        # ,variables_part_2  # info
        , target_value # target variable
      )
    ) %>%
    tidyr::gather_("target", "value",target_value ) %>%
    dplyr::distinct() %>%
    # dplyr::select(-model_type, -g, - new_var) %>%
    tidyr::spread_(key_col = "model_type", value_col = "value" )
  return(ds_target)
}
# report_long_hand(
#   d = catalog
#   , study_name_ = "eas"
#   ,subgroup_ = "female"
#   ,pivot = "pef"
#   ,target_value = "cr_levels_est"
# )

report_short_hand <- function(
  d # catalog
  ,study_name_
  ,subgroup_
  ,pivot
  ,target_name
  ,target_label
  # ,processes_b
){
  # d            =  catalog
  # study_name_  = "lasa"
  # subgroup_    = "female"
  # pivot        = "pef"
  # target_name  = "cr_levels_est"
  # target_label = "Levels"

  d_print   <- report_long_hand(
    d = d
    ,study_name_ = study_name_
    ,subgroup_ = subgroup_
    ,pivot = pivot
    ,target_value = target_name
  ) %>%
    dplyr::rename(label = target) %>%
    dplyr::select(-model_number,-study_name, -process_a, -subgroup) %>%
    dplyr::mutate(
      label = gsub(target_name, target_label, label)
    ) %>%
    dplyr::select(label, process_b, dplyr::everything()) #%>%
    # dplyr::filter(process_b %in% processes_b)
  col_names <- names(d_print)
  col_names <- col_names[!col_names %in% c("label","process_b")]
  for(cn in col_names){
    d_print[,cn] <- sprintf("%0.2f",d_print[,cn])
    d_print[d_print[,cn] == "NA",cn] <- "."
  }
  return(d_print)
}
# a <- report_short_hand(
#    d = catalog
#   ,study_name_ = "eas"
#   ,subgroup_ = "male"
#   ,pivot = "pef"
#   ,target_name  = "ab_tau_11_pval" # cr_slopes_est
#   ,target_label = "Levels"
# )
# print(a)

print_coefficients <- function(
  d # catalog
  ,study_name
  ,subgroup
  ,pivot_
  ,target_names
  ,target_labels
  # ,processes_b_
  ,print_format = "html"
){
  # cat("\\n",paste0("Study = _",toupper(study_name),"_; Gender = _",subgroup_,"_; Process (a) = _",pivot,"_\\n"))
  cat("\n ")
  ls <- list()
  for(i in seq_along(target_names)){
    # i <- 1
    ls[[i]] <-  report_short_hand(
      d = d
      ,study_name_  = study_name#"lasa"
      ,subgroup_    = subgroup#"male"
      ,pivot        = pivot_#"pef"# pivot#"pef"
      ,target_name  = target_names[i] # cr_slopes_est
      ,target_label = target_labels[i]
      # ,processes_b  = processes_b_
    )
    print(
      knitr::kable(
        ls[[i]]
        ,format = print_format
        # ,format = "pandoc"
        ,align = c("l","r","r","r","r","r","r","r")
      )
    )
    cat("\n")
  }
}


print_outcome_pairs <- function(
  d # catalog_spread
  ,study
  ,gender
  ,outcome
  ,model_type_standard
  ,model_type_set
  ,print_format = "pandoc" # html, pandoc
){
  # TESTING CASE
  # d                   = catalog_spread
  # study               = "lasa" #'elsa'
  # gender              = "male"
  # outcome             = "pef"# "fev"
  # model_type_standard = "aehplus" # spread at outcome pair level
  # model_type_set      = c("a", "ae", "aeh", "aehplus", "full") # spread at model type level
  # print_format        = "pandoc"

  # browser()
  dtemp <- d %>%
    dplyr::filter(
      study_name == study
      ,subgroup == gender
      ,process_a == outcome
    )
  processes_b <- sort(unique(dtemp$process_b))

  cat("\n",paste0("Gender = _",gender,"_; Model type: _",model_type_standard,"_;  Process (a) = _",outcome,"_; Process (b): ",  paste0("*",processes_b,"*", collapse = ", "),"\n"))

  print(
    knitr::kable(
      serve_slice_process_a(
        d = d
        ,study_name = study#"eas"
        ,subgroup   = gender#"female"
        ,model_type = model_type_standard#"aehplus"
        ,process_a  = outcome#"pef"
        ,mask_not   = c("a","aa")
      )
      # ,format = "html"
      ,format = print_format
      ,align  = c("c", "l", "r", "r", "r", "r", "r")
    )
  )
  for(i in processes_b ){
    # i <- "letter"
    cat("\n## ",i,"\n")
    cat("\n",paste0("Gender = _",gender,"_;  Process (a) = *",outcome,"*; Process (b) = _",i,"_"))
    cat("\n")
    print(
      knitr::kable(
        serve_slice_model_type(
          d = d
          , study_name = study#"eas"
          , subgroup   = gender#"female"
          , model_type = model_type_set#
          , process_a  = outcome#"pef"
          , process_b  = i
        )
        # ,format = "html"
        ,format =print_format
        ,align  = c("c", "l", "r", "r", "r", "r", "r")
      )
    )
  }
}














