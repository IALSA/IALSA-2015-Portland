
study_names <- c("eas", "esla", "habc", "hrs", "ilse", "lasa", "nas", "nshd", "nuage", "obas",   "octo", "radc", "satsa" )
# study_names <- c("obas")

# execute collect_STUDY.R code only for studies, which folders contain "collected_params.csv" file
# from each .cvs file, draw only the rows for which $model_number is not NA
# or lalternatively don't run studies which $model_number has any NA

for( study_name in study_names ){
  study_directory <- file.path("./studies", study_name, "collected_params.csv" )

  source(paste0("./studies/", study_name, "/collect_", study_name, ".R"))
}
