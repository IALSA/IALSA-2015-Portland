rm(list = ls())
library(magrittr)

# catalog <- readRDS("./data/shared/derived/pp-spread.rds") # physical-physical track
catalog_spread <- readRDS("./data/shared/derived/pc-spread.rds") # physical-cognitive track
# template for structuring tables for reporting individual models
stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil-v6.csv")
# load lookup function
source("./scripts/model-lookup-function.R")

view_one_model(
  d           = catalog_spread,
  study_name_ = "eas",
  subgroup_   = "female",
  process_a_  = "gait",
  process_b_  =  "block",
  model_type_ = "aehplus",
  pretty_     = T
)

# unique(catalog$study_name)
# view_options(catalog, "octo")

# view_options(catalog, "eas")
view_options(catalog, "elsa") # annie
# view_options(catalog, "hrs")
# view_options(catalog, "ilse")
# view_options(catalog, "lasa") # annie
# view_options(catalog, "map")
# view_options(catalog, "nuage")
# view_options(catalog, "octo") # annie
# view_options(catalog, "satsa")
