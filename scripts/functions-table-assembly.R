
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


pull_one_model <- function(d, study_name_, subgroup_,model_type_,  process_a_, process_b_, pretty_=T){

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
    dplyr::select(type, process, label,est, se, pval, - process.y)

  # assemble model information
  subject_count_ <- single_model$subject_count[1]
  wave_count_ <- single_model$wave_count[1]
  parameter_count_ <- single_model$parameter_count[1]
  AIC_ <- single_model$aic[1]
  BIC_ <- single_model$bic[1]
  LL_ <- single_model$ll[1]

  model_info <- data.frame(
    label = c("N","occasions","parameters","LL", "AIC", "BIC"),
    est = as.double(c(subject_count_, wave_count_, parameter_count_, LL_, AIC_, BIC_)),
    stringsAsFactors = FALSE)

  # assemble object for output
  ls <- list()
  ls[["id"]]   <- model_id
  ls[["coef"]] <- as.data.frame(model_coef)
  ls[["info"]] <- model_info
  ls[["label"]] <- model_key_labels

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

view_options <- function(d, study_){
  d2 <- d %>%
    dplyr::filter(study_name == study_) %>%
    dplyr::group_by(process_a, process_b) %>%
    dplyr::summarize(n = n())
  print(d2, n = nrow(d2))
}



# single_model_pretty <- pull_one_model(d = catalog,
#                                       study_name_ = "map",
#                                       subgroup_   = "female",
#                                       process_a_  = "grip",
#                                       process_b_  = "bnt",
#                                       model_type_ = "aehplus"
# )
# knitr::kable(single_model_pretty)

##########################
### densing functions ####
##########################


dense_v1 <- function(cake, label_=FALSE){
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
      pval_pretty   = sprintf("p=%s", pval_pretty),
      # pval_pretty   = ifelse(pval_pretty=="*p*=.00", "*p*<.01", pval_pretty),       #Cap p-value at .01
      # pval_pretty   = ifelse(pval_pretty=="*p*=NA" , "*p*= NA", pval_pretty),       #Pad NA with space
      pval_pretty   = ifelse(pval_pretty=="p=.00", "p<.01", pval_pretty),       #Cap p-value at .01
      pval_pretty   = ifelse(pval_pretty=="p=NA" , "p= NA", pval_pretty),       #Pad NA with space

      pattern       = pattern_dense[1],
      dense         = sprintf(pattern, est_pretty, se_pretty, pval_pretty),
      # dense         = ifelse(is.na(est), "--,*p*=  ----", dense)
      dense         = ifelse(is.na(est), "--,p=  ----", dense)
    )
    # coef_dense <- coef_dense %>% dplyr::select(label, dense)
    coef_dense <- coef_dense %>% dplyr::select( dense)

  return(coef_dense)
}

dense_v2 <- function(cake, label_=FALSE){
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


bake_the_cake <- function(baking_mix){
  # BAKING THE CAKE
  # now we will creat a list object in which each element will be
  # a 38 by m data.frame with model coefficient values of a given type (est/se/pval)
  # first we base fundamental "layers" of the cake: est/se/pval/.../....
  cake_layers <- list()

  model_names <- paste0("model_",1:length(baking_mix))

  for(m in seq_along(model_names)){
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


  # a <- cake_layers$est
  # str(a)
  put_stat_frosting <- function(a, row_labels){
    b <- as.data.frame(a,col.names = paste0("model_",1:length(a)))
    b[,"label"] <- row_labels
    # b %>% head()
    # b[1,"model_1"] <- NA
    b[,"mean"] <- apply(b[,model_names],1,mean, na.rm = TRUE)
    b[,"sd"]   <- apply(b[,model_names],1,sd, na.rm = TRUE)
    b[,"min"]  <- apply(b[,model_names],1,min, na.rm = TRUE)
    b[,"max"]  <- apply(b[,model_names],1,max, na.rm = TRUE)
    return(b)
  }

  row_labels <- baking_mix[[1]][["coef"]]["label"]
  for(index in c("est", "se", "pval")){
    # index = "est"
    cake_layers[[index]] <- put_stat_frosting(cake_layers[[index]], row_labels)
  }
  cake_layers[["baking_mix"]] <- baking_mix
  return(cake_layers)
}
# cake <- bake_the_cake(baking_mix)


slice_the_cake <- function(cake){

  # slice[[1]] <- labels
  # slice[[m]] <- dense of the model
  # slice[[collapsed]] <- collapsing across models (mean, se, pval)

  model_names <- paste0("model_",1:length(cake$baking_mix))
  dense_names <- gsub("model","dense",model_names)


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
  for(m in seq_along(model_names)){
    coef_raw <- data.frame(
      label = cake$baking_mix[[1]][["coef"]]["label"],
      est  = cake$est[[m]],
      se   = cake$se[[m]],
      pval = cake$pval[[m]]
    )
    model_denses[[m]] <- dense_v1(coef_raw)
  }
  model_denses <- as.data.frame(model_denses)
  names(model_denses) <- names_process_b
  model_denses <- cbind(
    cake$baking_mix[[1]][["coef"]]["process"], # process indicator
    cake$baking_mix[[1]][["coef"]]["label"], # label indicator
    model_denses)
  # compute summary


  for(m in seq_along(model_names)){
    est_raw <- data.frame(
      label = cake$baking_mix[[1]][["coef"]]["label"],
      est_mean  = cake$est["mean"],
      est_sd    = cake$est["sd"]
    )
  }
  process_a_name <- unique(names_process_a)
  testit::assert("Process must be the same across", sum( duplicated(process_a_name))==0L)
  model_denses[process_a_name] <- dense_v2(est_raw)
  model_denses[process_a_name] <- ifelse(model_denses[,"process"]=="a",model_denses[,process_a_name],"---")

  model_denses <- model_denses[c("label")]

  slice <- model_denses %>%

    return(slice)

}



