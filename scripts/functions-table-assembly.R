
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


pull_one_model <- function(d, study_name_, subgroup_, process_a_, process_b_, model_type_, pretty_=T){

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
