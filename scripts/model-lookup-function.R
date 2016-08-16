# rm(list = ls())
# ds <- readRDS("./data/shared/derived/temp.rds")
# ds <- ds %>%
#   dplyr::mutate(
#   full_name     = paste0(process,"_",coefficient,"_",subindex)
#   ) %>%
#   dplyr::select(-process, coefficient, subindex)
#
# ds %>%
# single_model %>%
#   dplyr::slice(1:100) %>%
#   DT::datatable(
#     class     = 'cell-border stripe',
#     caption   = "Growth Curve Model Solution --Collapsed Format",
#     filter    = "top",
#     options   = list(pageLength = 20, autoWidth = TRUE)
#   )
#
# study_name_ = "map";subgroup_   = "female";process_a_  = "grip";process_b_  = "line";model_type_ = "aehplus"

pull_one_model <- function(d, study_name_, subgroup_, process_a_, process_b_, model_type_){
  # stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil.csv")
  stencil <- read.csv("https://raw.githubusercontent.com/IALSA/IALSA-2015-Portland/master/data/shared/tables/study-specific-stencil.csv")
  stencil$label <- format(stencil$label, justify = "left")
  model_key <- stencil$full_name
  model_key_labels <- stencil$label

  d <- d %>%
       dplyr::mutate(
       full_name     = paste0(process,"_",coefficient,"_",subindex)
       )


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
    stringsAsFactors = FALSE
  )

  d2 <- dplyr::left_join(stencil, single_model, by = "full_name") %>%
      dplyr::select(type, process, label,est, se, pval)
  # d2 <- d2 %>%
  #   dplyr::mutate(
  #     # subject_count = scales::comma(subject_count),
  #     est_pretty    = sprintf(pattern_est[1], est),
  #     se_pretty     = sprintf(pattern_se[1], se),
  #     pval_pretty   = sprintf("%0.2f", pval), #Remove leading zero from p-value.
  #     pval_pretty   = ifelse(pval>.99, ".99", sub("^0(.\\d+)$", "\\1", pval_pretty)), #Cap p-value at .99
  #     pval_pretty   = sprintf("*p*=%s", pval_pretty),
  #     pval_pretty   = ifelse(pval_pretty=="*p*=.00", "*p*<.01", pval_pretty),       #Cap p-value at .01
  #     pval_pretty   = ifelse(pval_pretty=="*p*=NA" , "*p*= NA", pval_pretty),       #Pad NA with space
  #     pattern       = pattern_dense[1],
  #     dense         = sprintf(pattern, est_pretty, se_pretty, pval_pretty),
  #     dense         = ifelse(is.na(est), "--,*p*=  ----", dense)
  #   )
  d3 <- dplyr::bind_rows(d2,model_info )
  print(d3, n= 50)
  return(d3)

}
# study_name_ = "map";subgroup_   = "female";process_a_  = "grip";process_b_  = "line";model_type_ = "aehplus"
# single_model_pretty <- pull_one_model(d = ds_spread,
#                                       study_name_ = "map",
#                                       subgroup_   = "female",
#                                       process_a_  = "grip",
#                                       process_b_  = "bnt",
#                                       model_type_ = "aehplus"
# )
# knitr::kable(single_model_pretty)
