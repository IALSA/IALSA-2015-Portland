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

# @knitr assemble_table --------------------------------------------------------------
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
    est            = c(d$p_GAMMA_01_est , d$p_GAMMA_02_est , d$p_GAMMA_03_est , d$p_GAMMA_11_est , d$p_GAMMA_12_est , d$p_GAMMA_13_est ),
    se             = c(d$p_GAMMA_01_se  , d$p_GAMMA_02_se  , d$p_GAMMA_03_se  , d$p_GAMMA_11_se  , d$p_GAMMA_12_se  , d$p_GAMMA_13_se  ),
    wald           = c(d$p_GAMMA_01_wald, d$p_GAMMA_02_wald, d$p_GAMMA_03_wald, d$p_GAMMA_11_wald, d$p_GAMMA_12_wald, d$p_GAMMA_13_wald),
    pval           = c(d$p_GAMMA_01_pval, d$p_GAMMA_02_pval, d$p_GAMMA_03_pval, d$p_GAMMA_11_pval, d$p_GAMMA_12_pval, d$p_GAMMA_13_pval),

    stringsAsFactors=FALSE
  )

  d_fixed <- d_fixed %>%
    dplyr::mutate(
      pval_pretty   = ifelse(pval>.999, ".999", sub("^0(.\\d+)$", "\\1", pval)), #Remove leading zero from p-value.
      dense         = sprintf("%+0.3f(%0.3f),p=%s", est, se, pval_pretty) #Force est & se to have three decimals (eg, .1 turns into .100).
    ) %>%
    dplyr::select(
      -est,
      -se,
      -wald,
      -pval,
      -pval_pretty
    )

  return( d_fixed )
}
extract_fixed <- function( d, in_study_name, in_physical_measure, in_cognitive_measure, in_model_type="aehplus" ) {
  d <- d %>%
    dplyr::filter(study_name==in_study_name & model_type==in_model_type & physical_measure==in_physical_measure & cognitive_measure==in_cognitive_measure)
  testit::assert("Only two rows should exist.", nrow(d)==2L)

  ds_fixed_male <- extract_fixed_gender(d, in_gender = "male") %>%
    dplyr::rename_("male" = "dense")

  ds_fixed_female <- extract_fixed_gender(d, in_gender = "female") %>%
    dplyr::rename_("female" = "dense")

  ds_fixed <- ds_fixed_male %>%
    dplyr::full_join(ds_fixed_female, by="name")

  return( ds_fixed )

}

ds_fixed <-  extract_fixed(
  ds_wide,
  in_study_name          = "hrs",
  in_physical_measure    = "grip",
  in_cognitive_measure   = "gait"
)

knitr::kable(ds_fixed, align=c("l", "r", "r"))
