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
# study_name_ = "map";
# subgroup_   = "female";
# process_a_  = "grip";
# process_b_  = "line";
# model_type_ = "aehplus"
# d <- readRDS("./data/shared/derived/spread.rds")
# stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil.csv")
# results <- read.csv("https://raw.githubusercontent.com/IALSA/IALSA-2015-Portland/master/data/shared/derived/temp.csv", stringsAsFactors = FALSE)
# stencil <- read.csv("https://raw.githubusercontent.com/IALSA/IALSA-2015-Portland/master/data/shared/tables/study-specific-stencil.csv")

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

# d <- catalog_spread
# study_name_ = "octo"
# subgroup_   = "male"
# process_a_  = "grip"
# process_b_  =  "block"
# model_type_ = "aehplus"
# pretty_     = FALSE

view_one_model <- function(d, study_name_, subgroup_, process_a_, process_b_, model_type_, pretty_=T){
  # stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil.csv")
  # stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil-v2.csv")
  # stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil-v3.csv")
  # stencil <- read.csv("https://raw.githubusercontent.com/IALSA/IALSA-2015-Portland/master/data/shared/tables/study-specific-stencil.csv")
  # stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil-v5.csv")

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
