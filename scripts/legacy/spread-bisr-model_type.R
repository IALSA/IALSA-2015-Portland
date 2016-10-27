# This R script is used by
#
rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

# ---- load-sources ------------------------------------------------------------
#Load any source files that contain/define functions, but that don't load any other types of variables
#   into memory.  Avoid side effects and don't pollute the global environment.

# ---- load-packages -----------------------------------------------------------
library(magrittr) #Pipes
library(ggplot2)
requireNamespace("knitr")
requireNamespace("dplyr")
requireNamespace("tidyr")
requireNamespace("DT")
requireNamespace("scales")

# ---- declare-globals ---------------------------------------------------------
options(show.signif.stars=F) #Turn off the annotations on p-values
# path_input <- "./data/shared/parsed-results.rds"
# path_input <- "./data/shared/pp-1-parsed-results.rds"
# path_input <- "./data/shared/pc-1-parsed-results.csv"
path_input <- "./data/shared/pc-2-parsed-results-computed_ci.csv"

coefficient_of_variation <- function(x)( sd(x)/mean(x) )

##########
# PART 1 : model identifiers
variables_part_1 <- c(
  "model_number",
  "study_name",
  "process_a",
  "process_b",
  "subgroup",           # male & female
  "model_type"          # 0 , a, ae, aeh, aeh+, & full
)

###########
# PART 4a : model information indices
# variables_part_4a <- c(
variables_part_2 <- c(
  "subject_count",
  "parameter_count",
  "wave_count",
  'll', "aic", "bic"
)


# variables_part_4 <- c(variables_part_4, variables_part_5)
# ---- load-data ---------------------------------------------------------------
# ds_full <- readRDS(path_input) # catalog
catalog <- read.csv(path_input, header = T,  stringsAsFactors=FALSE)

# ---- remove-duplicates ---------------------
ds_no_duplicates <- catalog %>%
  dplyr::filter(model_number == "b1") %>%
  dplyr::filter( !is.na(process_a) & !is.na(process_b) ) %>%  # remove univariate models
  dplyr::filter( process_a!="nophys" & process_b!="nocog" ) # remove univariate models

# rm(path_input)
# create a small ds for testing
# ds_small <- ds_full %>%
#   # dplyr::filter(
#   #   study_name == "octo"
#   #   ,process_a  == "gait"
#   #   ,process_b  == "block"
#   #   ,subgroup   == "female"
#   #   ,model_type == "aehplus"
#   # )
#   dplyr::select(
#     .dots = c(
#       variables_part_1
#       ,variables_part_2
#     )
#
#   )
# temp <- ds_small

# ---- spread-across-models ----------------
# procA  ||            LEVELS            ||    SLOPES    ||   RESIDUALS  ||
# _______|| a | ae| aeh | aehplus | full || a |...| full || a |...| full ||
# procB_1||                              ||              ||              ||
# procB_2||                              ||              ||              ||
#   ...  ||                              ||              ||              ||
# procB_N||..............................||..............||. ............||


spread_across_model_type <- function(
  d
  ,study_name_
  ,subgroup_
  ,pivot
  ,target_value
){
  # d = catalog
  # study_name_  = "eas"
  # subgroup_    = "female"
  # pivot        = "pef"
  # target_value = "cr_levels_est"
  ds_target <- d %>%
    dplyr::distinct() %>%
    dplyr::filter(model_number == "b1") %>%
    dplyr::filter( !is.na(process_a) & !is.na(process_b) ) %>%  # remove univariate models
    dplyr::filter( process_a!="nophys" & process_b!="nocog" ) %>%  # remove univariate models
    dplyr::filter(
      study_name == study_name_#"eas" #eas  elsa   hrs  ilse  lasa   map nuage  octo satsa
      ,subgroup  == subgroup_#"female"
      ,process_a == pivot#"pef"
      # ,process_b == "trailsb"
    ) %>%
    dplyr::select_(
      .dots=c(
         "model_number"
        ,"study_name"
        ,"process_a"
        ,"process_b"
        ,"subgroup"
        ,"model_type"
        # ,variables_part_2  # info
        , target_value # target variable
      )
    ) %>%
    tidyr::gather_("target", "value",target_value ) %>%
    dplyr::distinct() %>%
    # dplyr::select(-model_type, -g, - new_var) %>%
    tidyr::spread_(key_col = "model_type", value_col = "value" )
    return(ds_target)
}
spread_across_model_type(
  d = catalog
  , study_name_ = "eas"
  ,subgroup_ = "female"
  ,pivot = "pef"
  ,target_value = "cr_slopes_est"
)

    temp <- ds_target





