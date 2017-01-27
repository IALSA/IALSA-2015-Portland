# This script provides a quick access to the catalog-type structures
rm(list = ls())
library(magrittr)

# ---- load-sources ------------------------------------------------------------
# Call `base::source()` on any repo file that defines functions needed below.  Ideally, no real operations are performed.
source("./scripts/mplus/group-variables.R")
# source("./scripts/mplus/extraction-functions-auto.R")
source("./scripts/mplus/model-components.R")
source("./scripts/common-functions.R")
source("./scripts/model-lookup-functions.R")
source("./scripts/table-assembly-functions.R")

# ---- load-packages -----------------------------------------------------------
# Attach these packages so their functions don't need to be qualified: http://r-pkgs.had.co.nz/namespace.html#search-path
library(magrittr) #Pipes
library(MplusAutomation)
library(IalsaSynthesis)

# ----- load-data ---------------------------
catalog <- read.csv("./data/shared/pc-2-catalog-augmented.csv", header = T,  stringsAsFactors=FALSE)
catalog_spread <- readRDS("./data/shared/derived/pc-spread.rds") # physical-cognitive track
# template for structuring tables for reporting individual models
stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil-v10.csv")

# catalog <- read.csv("./data/shared/phys-cog/pc-catalog-octo.csv", header = T,  stringsAsFactors=FALSE)



# ---- direct-view-of-catalog --------------------
t(names(catalog))
catalog %>%
  dplyr::filter(
    study_name == "map"
    # ,subgroup   == 'female'
    ,model_type == "aehplus"
    # process_a  == "grip"#,
    # process_b  == "gait"
  ) %>%
  dplyr::filter(
    # !process_b == "nocog"
  ) %>%
  dplyr::select(
    study_name,
    subgroup,
    model_type,
    process_a,
    process_b,

    # ab_TAU_00_est,
    # ab_TAU_00_se,
    # ab_TAU_00_wald,
    # ab_TAU_00_pval
    # ab_tau_00_est,
    # ab_tau_00_se,
    # ab_tau_00_wald,
    # ab_tau_00_pval
    # subject_count,
    cr_slopes_est
    # er_tau_11_est
    # ab_tau_11_est

  ) %>%
  dplyr::arrange(desc(er_tau_11_est))

  # ----- view-catalog-contents -------------------------
view_options(
  d           = catalog_spread                       # transformed catalog
  ,study_name  = c("satsa")                            # name of study
  # ,model_types = c("a","ae","aeh","aehplus", "full")  # types of model (covariate set)
  # ,processes_a = c("fev","fev100","pef")              # names of process 1
  # ,processes_b = c("block")                          # names of process 2
  ,full_id     = TRUE
)
print_format = "html"

# ----- print-coefficients ---------------------
print_coefficients(
  d              = catalog         # contains model solutions, row = model
  # ,study_name    = "eas"          # name of study
  # ,study_name    = "elsa"          # name of study
  # ,study_name    = "hrs"          # name of study
  # ,study_name    = "ilse"          # name of study
  # ,study_name    = "lasa"          # name of study
  # ,study_name    = "map"          # name of study
  # ,study_name    = "nuage"          # name of study
  # ,study_name    = "octo"          # name of study
  ,study_name    = "satsa"          # name of study
  ,subgroup      = "female"        # gender : male or female
  # ,subgroup      = "male"        # gender : male or female
  # ,pivot         = "pef"           # fixed; name of process 1
  # ,pivot         = "fev"           # fixed; name of process 1
  # ,pivot         = "gait"           # fixed; name of process 1
  # ,pivot         = "tug"           # fixed; name of process 1
  ,pivot         = "grip"           # fixed; name of process 1
  ,target_names  = c(              # coefficients of interest
    "er_tau_11_est"
    ,"ab_tau_11_pval"

  )
  ,target_labels = c(              # labels for the coefs of interest
    "Correlation of Slopes"
    ,"Covariance of Slopes"

  ),print_format = "pandoc"

)

# ---- dummy ------------------
|study |pulmonary|~level|~slope|
|------|--------|----|-----|
|EAS   | pef    | 300| 10  |
|ELSA  | fev100 | 190| 2   |
|HRS   | pef    | 260| 2   |
|LASA  | pef    | 350| 4   |
|MAP   | fev    | 2  | .05 |
|NAS   | fev    | 25 | .2  |
|OCTO  | pef    | 320| 8   |
|SATSA | fev    | 2  | .03 |


