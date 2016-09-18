
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
