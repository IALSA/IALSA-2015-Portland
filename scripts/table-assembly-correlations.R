# This R script is used by
#
rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

# ---- load-sources ------------------------------------------------------------
#Load any source files that contain/define functions, but that don't load any other types of variables
#   into memory.  Avoid side effects and don't pollute the global environment.
# basic lookup function
source("./scripts/model-lookup-function.R")

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
path_input <- "./data/shared/pc-2-parsed-results-computed_ci.csv"

# ---- load-data ---------------------------------------------------------------
# ds_full <- readRDS(path_input) # catalog

catalog <- read.csv(path_input, header = T,  stringsAsFactors=FALSE)
rm(path_input)

# ---- tweak-data ----------------------------
ds <- catalog %>%
  # ds_long <- ds_small %>%
  dplyr::rename_(
    # general model information
      "study_name"   = "`study_name`"
    , "model_number" = "`model_number`"
    , "subgroup"     = "`subgroup`"
    , "model_type"   = "`model_type`"
    , "r_levels"     = "ab_CORR_00"
    , "r_slopes"     = "ab_CORR_11"
    , "r_residuals"  = "ab_CORR_residual"

  ) %>%
  dplyr::select(
    study_name,
    subgroup,
    model_type,
    process_a,
    process_b,
    r_levels,
    r_slopes,
    r_residuals
  )


view_options(
   ds
  ,study_name_ = "eas"
  # ,subgroups = "female"
  # ,model_types = "aeh"
  ,processes_a = "pef"
  # ,processes_b = "block"
)

# ) %>%
# dtmp <- ds_long %>%
dplyr::select_(.dots=c(variables_part_1, variables_part_4a, variables_part_4b, variables_part_4c))  %>%
  dplyr::filter( !is.na(process_a) & !is.na(process_b) ) %>%  # remove univariate models
  dplyr::filter( process_a!="nophys" & process_b!="nocog" ) %>% # remove univariate models
  tidyr::gather_("g", "value", c(variables_part_4b,variables_part_4c)) %>% # BISR + covariates
  dplyr::mutate(
    process      = gsub(regex_general, "\\1", g, perl=T),
    coefficient  = gsub(regex_general, "\\2", g, perl=T),
    subindex     = gsub(regex_general, "\\3", g, perl=T),
    stat         = gsub(regex_general, "\\4", g, perl=T)
  )
rm(ds_order_gamma, ds_full, variables_part_4b) #variables_part_1
# temp <- ds_long
# ---- table-dynamic-long ----------------------------------------
