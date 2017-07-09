rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

# ---- load-sources ------------------------------------------------------------
#Load any source files that contain/define functions, but that don't load any other types of variables
#   into memory.  Avoid side effects and don't pollute the global environment.
source("./scripts/mplus/model-components.R") # organizes variable names
source("./reports/correlation-3/support-functions.R")
# ---- load-packages -----------------------------------------------------------
library(magrittr) #Pipes
library(ggplot2)
library(forestplot)
# library(dplyr)
requireNamespace("knitr")
requireNamespace("dplyr")
requireNamespace("tidyr")
requireNamespace("DT")
requireNamespace("scales")

# ---- declare-globals ---------------------------------------------------------
options(show.signif.stars=F) #Turn off the annotations on p-values
# print_format <- "html"
print_format <- "pandoc"
# print model_components to view prepared objects
# model_components %>% print()
# ----- input-phys-cog -----------------
path_input <- "./data/shared/pc-2-catalog-augmented.csv"

# ---- load-data ---------------------------------------------------------------
catalog <- readr::read_csv(path_input)
rm(path_input)
# catalog %>% dplyr::glimpse()
# use this stencil to customize domain grouping to the needed project
# domain_renaming_stencil <- readr::read_csv("./reports/correlation-3/domain-grouping.csv")
domain_renaming_stencil <- readr::read_csv("./reports/correlation-3/pulmonary-domain-structure-dead.csv")
# domain_renaming_stencil %>% dplyr::glimpse()
# ---- tweak-data --------------------
# perform custom touch-up, local to physical-cognitive track
catalog <- catalog %>%
  dplyr::filter(!process_a == "fev100") %>% # remove temporary items (usually for testing)
  dplyr::filter(model_type == "aehplus",model_number=="b1")  # limit the scope

# impose specific domain structure
# impose specific domain structure
catalog <- catalog %>%
  dplyr::left_join(domain_renaming_stencil, by = c("study_name", "process_b","process_b_domain")) %>%
  dplyr::mutate(process_b_domain = process_b_domain_new) %>% # overwrite with new values
  dplyr::select(-process_b_domain_new) # remove dublicated columns
# catalog %>% glimpse()
# # determine what will be used as names and labels
catalog <- catalog  %>%
  dplyr::mutate(
    # process_b        = process_b_label,       # replace NAMES of measures and domains
    process_b_row    = process_b_label,       # replace NAMES of measures and domains
    process_b_domain = process_b_domain_label # with  LABELS of measure and domains
  ) %>%
  dplyr::select(-process_b_label, -process_b_domain_label)
catalog %>% glimpse()

# ---- dummy ----------------------

cognitive_domain = "Verbal Ability"
physical_measure = c("fev","pef", "pek")

vars_for_meta <- c("process_b_domain","study_name", "process_a","process_b","subgroup")
est_name <- "er_tau_00_est"
se_name <- "er_tau_00_se"
ds <- catalog %>%
  dplyr::filter(process_a %in% physical_measure) %>%
  dplyr::filter(process_b_domain == cognitive_domain) %>%
  dplyr::select_(.dots=c(vars_for_meta, est_name, se_name ))

ds %>% glimpse()

# create a subset on which meta analysis will be performed (with subgroup comparison)
get_forest_data_subgroups <- function(
  d # catalog_long
  ,cognitive_domain #
  ){

}




























