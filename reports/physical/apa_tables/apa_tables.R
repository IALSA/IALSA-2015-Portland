rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

# @knitr load_sources ------------------------------------------------------------
#Load any source files that contain/define functions, but that don't load any other types of variables
#   into memory.  Avoid side effects and don't pollute the global environment.
# source("./SomethingSomething.R")

# @knitr load_packages -----------------------------------------------------------
library(ggplot2) #For graphing
library(magrittr) #Pipes
requireNamespace("knitr", quietly=TRUE)
requireNamespace("dplyr", quietly=TRUE)
requireNamespace("tidyr", quietly=TRUE)

# @knitr declare_globals ---------------------------------------------------------
path_input <- "./projects/physical/outputs/physical.rds"

address_variables <- c("study_name", "model_number", "subgroup", "model_type", "physical_measure", "cognitive_measure")

# @knitr load_data ---------------------------------------------------------------
ds_wide <- readRDS(path_input)

# @knitr tweak_data --------------------------------------------------------------
ds_wide$run_id <- seq_len(nrow(ds_wide))
tau_variables <- grep("^\\S+_TAU_\\S+$", colnames(ds_wide), value=T)

regex <- "^(\\w{2})_(\\w+)_(\\d{2})_(\\w+)$"
ds_tau_eav <- ds_wide[, c("run_id", tau_variables)] %>%
  tidyr::gather_(key="parameter", value="estimate", tau_variables) %>%
  dplyr::mutate(
    part      = gsub(regex, "\\1", parameter),
    thing     = gsub(regex, "\\2", parameter),
    cov       = gsub(regex, "\\3", parameter),
    quantity  = gsub(regex, "\\4", parameter)
  )

# @knitr loop_through_studies --------------------------------------------------------------
# in_study_name          <- "hrs"
# in_gender              <- "female"
# in_model_type          <- "aehplus"
# in_physical_measure    <- "grip"
# in_cognitive_measure   <- "gait"
# d <- ds_wide %>%
#   dplyr::filter(study_name==in_study_name & subgroup==in_gender & model_type==in_model_type & physical_measure==in_physical_measure & cognitive_measure==in_cognitive_measure)


extract_fixed_gender <- function( d, in_gender ) {
  testit::assert("Only two rows should be passed.", nrow(d)==2L)
  d <- d %>%
    dplyr::filter(subgroup==in_gender)
  testit::assert("Only one row should be passed.", nrow(d)==1L)

  d_fixed <- data.frame(
    name           = c("int_age",         "int_edu",         "int_height",      "slope_age",       "slope_edu",       "slope_height"),

    p_est          = c(d$p_GAMMA_01_est , d$p_GAMMA_02_est , d$p_GAMMA_03_est , d$p_GAMMA_11_est , d$p_GAMMA_12_est , d$p_GAMMA_13_est ),
    p_se           = c(d$p_GAMMA_01_se  , d$p_GAMMA_02_se  , d$p_GAMMA_03_se  , d$p_GAMMA_11_se  , d$p_GAMMA_12_se  , d$p_GAMMA_13_se  ),
    p_wald         = c(d$p_GAMMA_01_wald, d$p_GAMMA_02_wald, d$p_GAMMA_03_wald, d$p_GAMMA_11_wald, d$p_GAMMA_12_wald, d$p_GAMMA_13_wald),
    p_pval         = c(d$p_GAMMA_01_pval, d$p_GAMMA_02_pval, d$p_GAMMA_03_pval, d$p_GAMMA_11_pval, d$p_GAMMA_12_pval, d$p_GAMMA_13_pval),

    c_est          = c(d$c_GAMMA_01_est , d$c_GAMMA_02_est , d$c_GAMMA_03_est , d$c_GAMMA_11_est , d$c_GAMMA_12_est , d$c_GAMMA_13_est ),
    c_se           = c(d$c_GAMMA_01_se  , d$c_GAMMA_02_se  , d$c_GAMMA_03_se  , d$c_GAMMA_11_se  , d$c_GAMMA_12_se  , d$c_GAMMA_13_se  ),
    c_wald         = c(d$c_GAMMA_01_wald, d$c_GAMMA_02_wald, d$c_GAMMA_03_wald, d$c_GAMMA_11_wald, d$c_GAMMA_12_wald, d$c_GAMMA_13_wald),
    c_pval         = c(d$c_GAMMA_01_pval, d$c_GAMMA_02_pval, d$c_GAMMA_03_pval, d$c_GAMMA_11_pval, d$c_GAMMA_12_pval, d$c_GAMMA_13_pval),

    stringsAsFactors=FALSE
  )

  d_fixed <- d_fixed %>%
    dplyr::mutate(
      p_pval_pretty   = ifelse(p_pval>.999, ".999", sub("^0(.\\d+)$", "\\1", p_pval)), #Remove leading zero from p-value.
      c_pval_pretty   = ifelse(c_pval>.999, ".999", sub("^0(.\\d+)$", "\\1", c_pval)),
      p_dense         = sprintf("%+0.3f(%0.3f),p=%s", p_est, p_se, p_pval_pretty), #Force est & se to have three decimals (eg, .1 turns into .100).
      c_dense         = sprintf("%+0.3f(%0.3f),p=%s", c_est, c_se, c_pval_pretty)
    ) %>%
    dplyr::select( name, p_dense, c_dense )

  return( d_fixed )
}
extract_fixed <- function( d, in_study_name, in_physical_measure, in_cognitive_measure, in_model_type="aehplus" ) {
  # browser()
  d <- d %>%
    dplyr::filter(study_name==in_study_name & model_type==in_model_type & physical_measure==in_physical_measure & cognitive_measure==in_cognitive_measure)
  testit::assert("Only two rows should exist.", nrow(d)==2L)

  ds_fixed_male <- extract_fixed_gender(d, in_gender = "male") %>%
    dplyr::rename_("p_male" = "p_dense", "c_male" = "c_dense")

  ds_fixed_female <- extract_fixed_gender(d, in_gender = "female") %>%
    dplyr::rename_("p_female" = "p_dense", "c_female" = "c_dense")

  ds_fixed <- ds_fixed_male %>%
    dplyr::full_join(ds_fixed_female, by="name")

  return( ds_fixed )

}

# studies <- sort(unique(ds_wide$study_name))
# for( study in sort(unique(ds_wide$study_name)) ) {
# for( study in "satsa" ) {
for( study in c("eas", "elsa", "hrs", "ilse", "lasa", "nuage", "octo", "radc") ) {
  cat("\n\n# Study:", study, "\n\n")
  ds_study <- ds_wide %>%
    dplyr::filter(study_name==study) %>%
    dplyr::group_by(physical_measure, cognitive_measure) %>%
    dplyr::summarize() %>%
    dplyr::ungroup()

  for( model_index in seq_len(nrow(ds_study)) ) {
    p_measure <- ds_study[model_index, ]$physical_measure
    c_measure <- ds_study[model_index, ]$cognitive_measure
    cat("\n\n### ", p_measure, "vs", c_measure, "\n\n")

    ds_fixed <-  extract_fixed(
      ds_wide,
      in_study_name          = study,
      in_physical_measure    = p_measure,
      in_cognitive_measure   = c_measure
    )

    print(knitr::kable(ds_fixed, format = "markdown"))
  }
}

# ds_fixed <-  extract_fixed(
#   ds_wide,
#   in_study_name          = "hrs",
#   in_physical_measure    = "grip",
#   in_cognitive_measure   = "gait"
# )
#
# knitr::kable(ds_fixed)
