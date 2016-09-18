rm(list = ls())
library(magrittr)

# catalog <- readRDS("./data/shared/derived/pp-spread.rds") # physical-physical track
catalog_spread <- readRDS("./data/shared/derived/pc-spread.rds") # physical-cognitive track
# template for structuring tables for reporting individual models
stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil-v5.csv")
# load lookup function
source("./scripts/functions-table-assembly.R")


# returns:
# > names(a)
# [1] "id"   "coef" "info"
# unique(catalog$study_name)
# view_options(catalog, "octo")


# ---- one-study-example ----------------------------
a_possibles <- c("fev","fev100","pef") # if there are multiple measure of the contruct
a_possibles <- "gait"
view_options(catalog_spread, "eas", a_possibles )
view_options(catalog_spread, "eas", "gait", full_id = F)
# inspect individual models
catalog_spread %>%
  pull_one_model(
    study_name_ = "eas",
    subgroup_   = "male",
    process_a_  = "pef",
    process_b_  =  "fas",
    model_type_ = "a"
  )
view_options(catalog_spread, "eas",a_possibles, full_id = F )
# create the baking mix for models with a selected pivot
baking_mix <- catalog_spread %>%
  make_baking_mix(
    study_name_      = "eas",
    subgroup_        = "female",
    model_type       = "aehplus",
    process_a_to_sum = "gait" # pivot
  )
lapply(baking_mix, names) # one element for each pair with the pivot
# using layers from individual model we now bake the cake
cake <- bake_the_cake(baking_mix)
lapply(cake, names) # inspect the cake
# now we slice the cake with a predefined cookie-cutter
slice <- slice_the_cake(cake)
# the cake is ready to be surved in the appropriate location of a report
# use wrapper function to serve:
catalog_spread %>%
  serve_a_slice("eas","female","aehplus", "pef")





















