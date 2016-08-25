rm(list = ls())
catalog <- readRDS("./data/shared/derived/spread.rds")
stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil.csv")
# load lookup function
source("./scripts/model-lookup-function.R")

single_model <- pull_one_model(
  d           = catalog,
  study_name_ = "lasa",
  subgroup_   = "male",
  process_a_  = "pef",
  process_b_  =  "raven",
  model_type_ = "aehplus",
  pretty_     = TRUE
)

unique(catalog$study_name)
view_options(catalog, "lasa")
