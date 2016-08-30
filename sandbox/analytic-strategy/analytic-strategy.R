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
path_catalog <- "./data/shared/pc-2-parsed-results-computed_ci.csv "
path_spread  <- "./data/shared/derived/pc-spread.rds"
# path_output     <- "./data/shared/pc-1-parsed-results.rds"
source("./scripts/graphs/domain-mapping.R")

# ---- load-data ---------------------------------------------------------------
# catalog <- read.csv(path_input, header = T,  stringsAsFactors=FALSE)
catalog <- readr::read_csv(path_catalog)
spread <- readRDS(path_input)


ds <- catalog %>%
  dplyr::filter(model_number == "b1") %>%
  dplyr::filter(!process_a == "nophys")
# ---- process_a ---------------
t <- table(ds$process_a, ds$study_name); t[t==0]<-"."; t
nrow(t)

# ---- process_b -------------------
t <- table(ds$process_b_row, ds$study_name); t[t==0]<-"."; t
nrow(t)
d <- ds %>%
  dplyr::filter(model_number == "b1") %>%
  dplyr::group_by_("study_name","process_b") %>%
  dplyr::summarize(count=n()) %>%
  dplyr::ungroup() %>%
  dplyr::arrange_("study_name")
knitr::kable(d)

# ----- ------------
t <- table(ds$process_b_row, ds$process_a); t[t==0]<-"."; t
nrow(t)

d <- ds %>%
  dplyr::filter(model_number == "b1") %>%
  dplyr::group_by_("process_b_row","process_b_domain") %>%
  dplyr::summarize(count=n()) %>%
  dplyr::ungroup() %>%
  dplyr::arrange_("process_b_domain")
d$process_b_row <- format(d$process_b_row, justify = "left")
# d$process_b_domain <- format(d$process_b_domain, justify = "left")

print(d, n = 100)
knitr::kable(d)



t <- table( ds$process_b_row, ds$study_name, ds$process_a); t[t==0]<-"."; t
nrow(t)

# ---- outcome-space ----------
ds %>% dplyr::glimpse()
# subset for managibility
ds_graph <- ds %>%
  dplyr::select_(
    "study_name","model_number", "subgroup", "model_type","process_a",
    "process_b", "process_b_cell", "process_b_row", "process_b_domain",
    "R_SASB_est","R_IAIB_est"
  ) %>%
  dplyr::mutate(
    cognitive_domain = ordered(process_b_domain, levels=cog_domain_order)
  )
ds_graph %>% dplyr::glimpse()
ds_graph %>% dplyr::group_by(cognitive_domain) %>% dplyr::summarize(n=n())
# load graphing function
source("./scripts/graphs/domain-mapping.R")

domain_map(ds_graph)

subset_process <- c("fev")
ds_graph_1 <- ds_graph %>%
  dplyr::filter(process_a %in% subset_process)

domain_map(ds_graph_1)
























