rm(list = ls())
catalog <- readRDS("./data/shared/derived/spread.rds")
stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil.csv")
# load lookup function
source("./scripts/model-lookup-function.R")

single_model <- pull_one_model(
  d           = catalog,
  study_name_ = "map",
  subgroup_   = "female",
  process_a_  = "grip",
  process_b_  = "symbol",
  model_type_ = "aehplus",
  pretty_     = FALSE
)


view_options(catalog, "map")
