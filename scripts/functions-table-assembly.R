
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
      dplyr::summarize(n_models = n()/44)
  }else{
    d2 <- d %>%
      dplyr::filter(
        study_name == study_name_,
        process_a %in% processes_a,
        process_b %in% processes_b
      ) %>%
      dplyr::group_by(process_a, process_b) %>%
      dplyr::summarize(n_models = n()/44)

  }
  d2 <- as.data.frame(d2)
  # print(d2, n = nrow(d2))
  # print(d2)
  return(d2)
}

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
    label = c("R(intercepts)", "R(slopes)", "R(residuals)"),
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



###########################
##### BAKING functions ####
###########################

make_baking_mix_model_type <- function(
  d=catalog_spread
  ,study_name_
  ,subgroup_
  ,model_type_
  ,process_a_
  ,process_b_
  ,print_config=T
){
  # d = catalog_spread
  # study_name_ = "octo"
  # subgroup_   = "female"
  # model_type_ = c("a","ae","aeh","aehplus")
  # process_a_   = "pef"
  # process_b_ = "block"

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



make_baking_mix_process_a <- function(
  d=catalog_spread
  ,study_name_
  ,subgroup_
  ,model_type_
  ,process_a_
  ,print_config=T
){
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



# a <- cake_layers$est
# str(a)
put_stat_frosting <- function(a, row_labels, model_names){
  # b <- as.data.frame(a,col.names = paste0("model_",1:length(a)))
  b <- as.data.frame(a, col.names = model_names)
  b[,"label"] <- row_labels
  # b %>% head()
  # b[1,"model_1"] <- NA
  b[,"mean"] <- apply(b[,model_names],1,mean, na.rm = TRUE)
  b[,"sd"]   <- apply(b[,model_names],1,sd, na.rm = TRUE)
  b[,"min"]  <- apply(b[,model_names],1,min, na.rm = TRUE)
  b[,"max"]  <- apply(b[,model_names],1,max, na.rm = TRUE)
  return(b)
}


bake_the_cake <- function(baking_mix){
  # BAKING THE CAKE
  # now we will creat a list object in which each element will be
  # a 38 by m data.frame with model coefficient values of a given type (est/se/pval)
  # first we base fundamental "layers" of the cake: est/se/pval/.../....
  cake_layers <- list()

  # model_names <- paste0("model_",1:length(baking_mix))
  model_names <- names(baking_mix)
  model_names <- model_names[!model_names %in% "spread"]
  # browser()
  for(m in model_names){
    # m <- 1
    a <- baking_mix[[m]][["id"]]
    mid <- paste0(a,sep="-", collapse ="")
    mid <- paste(substr(mid, 1, nchar(mid)-1))
    # names(mid) <- model_names[m]

    cake_layers[["id"]][m] <- mid
    # a <- baking_mix[[1]][["coef"]]["label"]
    # a <- paste(baking_mix[[1]][["coef"]]$label)
    # str(a)
    # cake_layers[['label']][m] <- as.data.frame(noquote(baking_mix[[1]][["coef"]]["label"]))
    # cake_layers[['label']][m] <- baking_mix[[1]][["coef"]]["label"]
    # names(cake_layers[["id"]][m]) <- model_names[m]
    lapply(cake_layers, names)
    for(index in c("est", "se", "pval")){
      # index = "est"
      # for(m in 1:length(baking_mix)){

      cake_layers[[index]][[m]] <- baking_mix[[m]][["coef"]][[index]]

      # cake_layers[[index]][m] <- baking_mix[m][["coef"]][[index]]
    }
  }

  names(cake_layers[["id"]]) <- model_names



  # put_stat_frosting <- function(a, row_labels){
  #   # b <- as.data.frame(a,col.names = paste0("model_",1:length(a)))
  #   b <- as.data.frame(a, col.names = model_names)
  #   b[,"label"] <- row_labels
  #   # b %>% head()
  #   # b[1,"model_1"] <- NA
  #   b[,"mean"] <- apply(b[,model_names],1,mean, na.rm = TRUE)
  #   b[,"sd"]   <- apply(b[,model_names],1,sd, na.rm = TRUE)
  #   b[,"min"]  <- apply(b[,model_names],1,min, na.rm = TRUE)
  #   b[,"max"]  <- apply(b[,model_names],1,max, na.rm = TRUE)
  #   return(b)
  # }

  row_labels <- baking_mix[[1]][["coef"]]["label"]
  for(index in c("est", "se", "pval")){
    # index = "est"
    cake_layers[[index]] <- put_stat_frosting(cake_layers[[index]], row_labels, model_names)
  }
  cake_layers[["baking_mix"]] <- baking_mix
  return(cake_layers)
}
# cake <- bake_the_cake(baking_mix)


slice_the_cake <- function(
  cake,
  mask_not = c("a","b","ab","aa","bb"),
  info = T,
  corr = T

  ){


  # slice[[1]] <- labels
  # slice[[m]] <- dense of the model
  # slice[[collapsed]] <- collapsing across models (mean, se, pval)

  # model_names <- paste0("model_",1:length(cake$baking_mix))
  model_names <- names(cake$baking_mix)
  # dense_names <- gsub("model","dense",model_names)
  model_names <- model_names[!model_names %in% "spread"]

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

  names(model_denses) <- model_names

  # names(model_denses) <- model_names
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
  process_a_name <- unique(names_process_a)
  testit::assert("Process must be the same across", sum( duplicated(process_a_name))==0L)
  model_denses[process_a_name] <- dense_v2(est_raw)
  model_denses[process_a_name] <- ifelse(model_denses[,"process"] %in% mask_not, model_denses[,process_a_name],"---")


  slice <- model_denses

  compute_aggregate <- function(x, row_labels, model_names){
    x[,"label"] <- row_labels
    x[,"mean"] <- apply(x[,model_names],1,mean, na.rm = TRUE)
    x[,"sd"]   <- apply(x[,model_names],1,sd, na.rm = TRUE)
    x[,"min"]  <- apply(x[,model_names],1,min, na.rm = TRUE)
    x[,"max"]  <- apply(x[,model_names],1,max, na.rm = TRUE)
    return(x)
  }

  assemble_aggregate <- function(cake,component,digits, model_names){
    # component = "corr"
    # component = "info_1"
    # component = "info_2"
    output <- list()
    for(m in model_names){
      output[[m]] <- cake$baking_mix[[m]][[component]]["est"]
    }
    output <- as.data.frame(output)
    names(output) <- model_names
    row_labels <- cake$baking_mix[[1]][[component]]["label"]
    output <- compute_aggregate(output,row_labels, model_names)
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
  pattern_dense <- c(
    "intercept"    = "%6s(%4s),%7s",
    "slope"        = "%6s(%4s),%7s"
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
      dense         = ifelse(is.na(mean), "--,p=  ----", dense)
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
  d
  ,study_name
  ,subgroup
  ,model_type
  ,process_a
  ,process_b
  ,print_config = FALSE
  ,mask_not = c("a","b","ab","aa","bb")
  ,info = T
  ,corr = T
){
  baking_mix <- make_baking_mix_model_type(
    d                = catalog_spread,
    study_name_      = study_name,
    subgroup_        = subgroup,
    model_type_      = model_type,
    process_a_       = process_a,
    process_b        = process_b,
    print_config     = print_config
  )
  cake <- bake_the_cake(baking_mix)
  slice <- slice_the_cake(cake,info = info, corr=corr, mask_not = mask_not)
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
  d
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

  study_name = "eas"
  model_type = "aehplus"
  process_a = "pef"

  baking_mix <- make_baking_mix_process_a(
    d                = catalog_spread,
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
