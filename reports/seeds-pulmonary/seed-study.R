rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

# ---- load-sources ------------------------------------------------------------
#Load any source files that contain/define functions, but that don't load any other types of variables
#   into memory.  Avoid side effects and don't pollute the global environment.
# load functions to assemble the tables
source("./scripts/table-assembly-functions.R")
source("./scripts/mplus/model-components.R") # organizes variable names

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
catalog <- read.csv("./data/shared/pc-2-catalog-augmented.csv", header = T,  stringsAsFactors=FALSE)
catalog_spread <- readRDS("./data/shared/derived/pc-spread.rds")
catalog %>% dplyr::glimpse()
catalog_spread %>% dplyr::glimpse()
# template for structuring tables for reporting individual models
# stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil-v7.csv")
stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil-v10.csv")

# ---- tweak-data ---------------------------------------------
# perform custom touch-up, local to physical-cognitive track
catalog <- catalog %>%
  dplyr::filter(!process_a == "fev100") %>% # remove temporary items (usually for testing)
  dplyr::filter(model_type == "aehplus",model_number=="b1") %>%   # limit the scope
  dplyr::left_join(domain_renaming_stencil, by = c("study_name", "process_b","process_b_domain")) %>%
  dplyr::mutate(
    process_b_domain = domain_new # overwrite with new values
  ) %>%
  dplyr::select(-domain_new) %>%    # remove dublicated columns
  dplyr::mutate(
    process_b = process_b_label,       # replace domain structure
    process_b_domain = domain_b_label  # with custom specification
  ) %>%
  dplyr::select(-process_b_label, -domain_b_label)


catalog_spread <- catalog_spread %>%
  dplyr::filter(!process_a == "fev100") %>% # remove temporary items (usually for testing)
  # dplyr::filter(model_type == "aehplus",model_number=="b1") %>%   # limit the scope
  dplyr::left_join(domain_renaming_stencil, by = c("study_name", "process_b","process_b_domain")) %>%
  dplyr::mutate(
    process_b_domain = domain_new # overwrite with new values
  ) %>%
  dplyr::select(-domain_new) %>%    # remove dublicated columns
  dplyr::mutate(
    process_b = process_b_label,       # replace domain structure
    process_b_domain = domain_b_label  # with custom specification
  ) %>%
  dplyr::select(-process_b_label, -domain_b_label)

# ---- explorations -------------------------------------------
catalog_spread %>% view_options(
  study_name_ ="nas"
  ,full_id     = T
  # ,subgroups   = c("female")
  ,model_types = c("aehplus")
  # ,processes_a = "pef"
  # ,processes_b = "symbol"
)


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


# ---- eas ---------------------------------------------------------
study <- 'eas'
outcome <- "pef"

print_header(catalog_spread)
print_body(catalog_spread, catalog)

# elsa has only "aehplus" form
# ---- elsa ---------------------------------------------------------
study <- 'elsa'
# outcome <- "fev100"
outcome <- "fev"

print_header(catalog_spread)
print_body(catalog_spread, catalog)

# ---- hrs ---------------------------------------------------------
study <- 'hrs'
outcome <- "pef"

print_header(catalog_spread)
print_body(catalog_spread, catalog)

# ---- octo ---------------------------------------------------------
study <- 'octo'
outcome <- "pef"

print_header(catalog_spread)
print_body(catalog_spread, catalog)


# lasa has only "aehplus" form
# ---- lasa ---------------------------------------------------------
study <- 'lasa'
outcome <- "pef"

print_header(catalog_spread)
print_body(catalog_spread, catalog)


# ---- map ---------------------------------------------------------
study <- 'map'
outcome <- "fev"

print_header(catalog_spread)
print_body(catalog_spread, catalog)

# ---- nas ---------------------------------------------------------
study <- 'nas'
outcome <- "fev"

print_header(catalog_spread)
print_body_gender(catalog_spread, catalog, "male")

# ---- satsa ---------------------------------------------------------
study <- 'satsa'
outcome <- "fev"

print_header(catalog_spread)
print_body(catalog_spread, catalog)



# ---- session-info ---------------------
cat("\n#Session Info")
sessionInfo()






