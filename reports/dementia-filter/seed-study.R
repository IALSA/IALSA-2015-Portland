rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

# ---- load-sources ------------------------------------------------------------
#Load any source files that contain/define functions, but that don't load any other types of variables
#   into memory.  Avoid side effects and don't pollute the global environment.
# load functions to assemble the tables
source("./scripts/table-assembly-functions.R")

# ---- load-packages -----------------------------------------------------------
library(magrittr) #Pipes
library(ggplot2)
requireNamespace("readr")
requireNamespace("knitr")
requireNamespace("dplyr")
requireNamespace("tidyr")
requireNamespace("DT")
requireNamespace("scales")

# ---- declare-globals ---------------------------------------------------------
options(show.signif.stars=F) #Turn off the annotations on p-values
print_format <- "pandoc"
# print_format <- "html"
model_type_standard <- "aehplus" # spread at outcome pair level
# model_type_set <- c("a", "ae", "aeh", "aehplus", "full") # spread at model type level
model_type_set <- c("a", "ae", "aeh", "aehplus","full") # spread at model type level


# ---- load-data ---------------------------------------------------------------
# ls_catalog <- readRDS("./data/shared/derived/ls_catalog_dem_criteria.rds")
catalog        <- readRDS("./data/shared/derived/dem-criteria/catalog-4.rds")
catalog_spread <- readRDS("./data/shared/derived/dem-criteria/catalog-5.rds")

# catalog <- read.csv("./data/shared/pc-2-catalog-augmented.csv", header = T,  stringsAsFactors=FALSE)
# catalog_spread <- readRDS("./data/shared/derived/pc-spread.rds")
# template for structuring tables for reporting individual models
# stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil-v7.csv")
stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil-v10.csv")

# ---- explorations -------------------------------------------
catalog_spread %>% view_options(
  study_name_ ="octo"
  ,full_id     = T
  # ,subgroups   = c("female")
  ,model_types = c("aehplus")
  # ,processes_a = "pef"
  # ,processes_b = "symbol"
)




# ---- subset-condition -----------------------
# selected_condition <- "dem_ever_0"
# selected_condition <- "dem_entry_0"
# selected_condition <- "all"
catalog <- catalog %>%
  dplyr::filter(condition == selected_condition)

catalog_spread <- catalog_spread %>%
  dplyr::filter(condition == selected_condition)

# ---- print-functions -----------------

print_header <- function(
  catalog_spread
){
  cat("\n# Available models \n")
  print(cat("\n",paste0("Study **",toupper(study),"** have contributed the following outcome pairs to the IASLA-2015-Portland model pool:"),"\n"))
  cat("\n")
  print(
    knitr::kable(
      view_options(catalog_spread
                   ,study_name_ = study#"eas"
                   ,full_id     = F
                   ,subgroups   = c("female","male")
                   ,processes_a = outcome#"pef"
      )
      # ,format = "html"
      ,format = print_format
    )
  )
  cat("\n")
  for(gender in c("female","male")){
    cat("\n")
    print(
      knitr::kable(
        view_options(catalog_spread
                     ,study_name_ = study#"eas"
                     ,full_id     = T
                     ,subgroups   = gender
                     ,processes_a = outcome#"pef"
        )
        # ,format = "html"
        ,format = print_format
      )
    )
    cat("\n")
  }
}

print_body <- function(
  catalog_spread,
  catalog
){

  for(gender in c("female","male")){
    # if(gender == "female"){
    #   processes_b <- c("block", "digit_tot","symbol", "trailsb")
    # }else{ # covariate sets may differ by gender, both must have the standard "aehplus"
    #   processes_b <- c("block", "digit_tot","symbol", "trailsb") # fas would break it no standard
    # }
    cat("\n#",gender,"\n")
    print_outcome_pairs(
      d = catalog_spread
      ,study = study#'eas'
      ,gender = gender
      ,outcome = outcome#"pef"
      ,model_type_standard = model_type_standard#"aehplus" # spread at outcome pair level
      ,model_type_set = model_type_set#c("a", "ae", "aeh", "aehplus", "full") # spread at model type level
      ,print_format = print_format
    )
    cat("\n## Summary","\n")
    cat("\n",paste0("Study = _",toupper(study),"_; Gender = _",gender,"_; Process (a) = _",outcome,"_\n"))
    cat("\n Computed correlations:\n")
    print_coefficients(
      d = catalog
      ,study_name    = study
      ,subgroup      = gender
      ,pivot         = outcome
      ,target_names  = c(
        "cr_levels_est"
        ,"cr_slopes_est"
        ,"cr_resid_est")
      ,target_labels = c(
        "Correlation of Levels"
        ,"Correlation of Slopes"
        ,"Correlation of Residuals"
      )
      ,print_format = print_format
      # ,processes_b_  = processes_b
    )
    cat("\n")
    cat("P-values for corresponding covariances: \n")
    print_coefficients(
      d              = catalog         # contains model solutions, row = model
      ,study_name    = study           # name of study
      ,subgroup      = gender          # gender : male or female
      ,pivot         = outcome         # fixed; name of process 1
      ,target_names  = c(              # coefficients of interest
        "ab_tau_00_pval"
        ,"ab_tau_11_pval"
        ,"ab_sigma_00_pval"
      )
      ,target_labels = c(              # labels for the coefs of interest
        "Covariance of Levels"
        ,"Covariance of Slopes"
        ,"Covariance of  Residuals"
      )
      ,print_format = print_format
    )
  }
}

print_body_gender <- function(
  catalog_spread,
  catalog,
  gender_value
){

  for(gender in gender_value){
    # if(gender == "female"){
    #   processes_b <- c("block", "digit_tot","symbol", "trailsb")
    # }else{ # covariate sets may differ by gender, both must have the standard "aehplus"
    #   processes_b <- c("block", "digit_tot","symbol", "trailsb") # fas would break it no standard
    # }
    cat("\n#",gender,"\n")
    print_outcome_pairs(
      d = catalog_spread
      ,study = study#'eas'
      ,gender = gender
      ,outcome = outcome#"pef"
      ,model_type_standard = model_type_standard#"aehplus" # spread at outcome pair level
      ,model_type_set = model_type_set#c("a", "ae", "aeh", "aehplus", "full") # spread at model type level
      ,print_format = print_format
    )
    cat("\n## Summary","\n")
    cat("\n",paste0("Study = _",toupper(study),"_; Gender = _",gender,"_; Process (a) = _",outcome,"_\n"))
    cat("\n Computed correlations:\n")
    print_coefficients(
      d = catalog
      ,study_name    = study
      ,subgroup      = gender
      ,pivot         = outcome
      ,target_names  = c(
        "cr_levels_est"
        ,"cr_slopes_est"
        ,"cr_resid_est")
      ,target_labels = c(
        "Correlation of Levels"
        ,"Correlation of Slopes"
        ,"Correlation of Residuals")
      # ,processes_b_  = processes_b
    )
    cat("\n")
    cat("P-values for corresponding covariances: \n")
    print_coefficients(
      d              = catalog         # contains model solutions, row = model
      ,study_name    = study           # name of study
      ,subgroup      = gender          # gender : male or female
      ,pivot         = outcome         # fixed; name of process 1
      ,target_names  = c(              # coefficients of interest
        "ab_tau_00_pval"
        ,"ab_tau_11_pval"
        ,"ab_sigma_00_pval"
      )
      ,target_labels = c(              # labels for the coefs of interest
        "Covariance of Levels"
        ,"Covariance of Slopes"
        ,"Covariance of  Residuals"
      )
    )
  }
}



# ---- octo ---------------------------------------------------------
study <- 'octo'
# outcome <- "pef"
outcome <- "grip"
# outcome <- "gait"

print_header(catalog_spread)
print_body(catalog_spread, catalog)

# ---- session-info ---------------------
cat("\n#Session Info")
sessionInfo()

# ---- publish --------------
# WORD reports
# path_report_1 <- "./reports/dementia-filter/pulmonary-dem_ever_0.Rmd"
# path_report_2 <- "./reports/dementia-filter/pulmonary-dem_entry_0.Rmd"
# path_report_3 <- "./reports/dementia-filter/pulmonary-all.Rmd"

path_report_1 <- "./reports/dementia-filter/grip-dem_ever_0.Rmd"
path_report_2 <- "./reports/dementia-filter/grip-dem_entry_0.Rmd"
path_report_3 <- "./reports/dementia-filter/grip-all.Rmd"

# path_report_1 <- "./reports/dementia-filter/gait-dem_ever_0.Rmd"
# path_report_2 <- "./reports/dementia-filter/gait-dem_entry_0.Rmd"
# path_report_3 <- "./reports/dementia-filter/gait-all.Rmd"

# allReports <- c(path_pulmonary_1)
# allReports <- c(path_pulmonary_2)
# allReports <- c(path_pulmonary_3)
allReports <- c(path_report_1, path_report_2, path_report_3)

# allReports <- c(path_pulmonary_focus, path_pulmonary_full,
#                 path_gait_focus, path_gait_full,
#                 path_grip_focus, path_grip_full)

pathFilesToBuild <- c(allReports)
testit::assert("The knitr Rmd files should exist.", base::file.exists(pathFilesToBuild))
# Build the reports
for( pathFile in pathFilesToBuild ) {

  rmarkdown::render(input = pathFile,
                    output_format=c(
                      # "html_document" # set print_format <- "html" in seed-study.R
                      # "pdf_document"
                      # ,"md_document"
                      "word_document" # set print_format <- "pandoc" in seed-study.R
                    ),
                    clean=TRUE)
}






