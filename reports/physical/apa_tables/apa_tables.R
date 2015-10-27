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

