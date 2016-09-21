rm(list = ls())
library(magrittr)

# catalog <- readRDS("./data/shared/derived/pp-spread.rds") # physical-physical track
catalog_spread <- readRDS("./data/shared/derived/pc-spread.rds") # physical-cognitive track
# template for structuring tables for reporting individual models
stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil-v6.csv")
# basic lookup function
source("./scripts/model-lookup-function.R")
# load lookup function
source("./scripts/functions-table-assembly.R")
model_view <- catalog_spread %>%
  view_one_model(
    study_name_ = "eas",
    subgroup_   = "female",
    process_a_  = "gait",
    process_b_  =  "block",
    model_type_ = "aehplus",
    pretty_     = FALSE
)


# returns:
# > names(a)
# [1] "id"   "coef" "info"
# unique(catalog$study_name)
# view_options(catalog, "octo")

# ---- one-study-example-model_type -------
# a_possibles <- c("fev","fev100","pef") # if there are multiple measure of the contruct
# a_possibles <- "gait"
view_options(
  d = catalog_spread
  ,study_name_ ="eas"
  ,full_id = T
  ,subgroups = c("female")
  ,model_types = c("a","ae","aeh", "aehplus")
  ,processes_a = "pef"
  ,processes_b = "block"
)

# inspect individual models
catalog_spread %>%
  pull_one_model(
    study_name_ = "eas",
    subgroup_   = "male",
    process_a_  = "pef",
    process_b_  =  "fas",
    model_type_ = "a"
  )

# create a baking mix for the pivot : model_type
baking_mix <- catalog_spread %>%
  make_baking_mix_model_type(
    study_name_      = "eas",
    subgroup_        = "female",
    # model_type       = ""      # pivot
    process_a        = "pef",
    process_b        = "block"
  )
lapply(baking_mix, names)
cake <- bake_the_cake(baking_mix)
lapply(cake, names) # inspect the cake
slice <- slice_the_cake(cake, mask_not = c("a","b","ab","aa","bb") )
knitr::kable(slice)

# create a baking mix for the pivot : process_a
# baking_mix <- catalog_spread %>%
#   make_baking_mix_process_a(
#     study_name_      = "eas",
#     subgroup_        = "female",
#     model_type       =  "aehplus",
#     process_a_to_sum = "pef" # pivot
#   )
# lapply(baking_mix, names)



# ---- one-study-example-process_a ----------------------------
a_possibles <- c("fev","fev100","pef")  # if there are multiple measure of the contruct
a_possibles <- "gait"

catalog_spread %>% view_options(
  study_name="eas"
  # ,model_types = c("a","aehplus")
  # ,processes_a = "grip"
  # ,process_b = "logic_tot"
  ,full_id = F
)
catalog_spread %>% view_options(
   study_name="eas"
  # ,model_types = c("a")
  ,processes_a = "grip"
  ,processes_b = "logic_tot"
  ,full_id = T
  )
# inspect individual models
catalog_spread %>%
  pull_one_model(
     study_name_ = "eas"
    ,subgroup_   = "male"
    ,process_a_  = "pef"
    ,process_b_  =  "fas"
    ,model_type_ = "a"
  )

# create the baking mix for models with a selected pivot
baking_mix <- catalog_spread %>%
  make_baking_mix_model_type( # not that functions are unique to the pivot (for now)
    study_name_      = "eas",
    subgroup_        = "female",
    # model_type       = ""      # pivot
    process_a        = "pef",
    process_b        = "block"
  )
lapply(baking_mix, names) # one element for each pair with the pivot
# using layers from individual model we now bake the cake
cake <- bake_the_cake(baking_mix)
lapply(cake, names) # inspect the cake
# now we slice the cake with a predefined cookie-cutter
slice <- slice_the_cake(cake, mask_not = c("a","b","ab","aa","bb") )
# the cake is ready to be surved in the appropriate location of a report
# use wrapper function to serve:
knitr::kable(slice)

## Now all together
serve_a_slice <- function(
  d                ,
  study_name_      ,
  subgroup_        ,
  model_type       ,
  process_a_to_sum
){
  baking_mix <- make_baking_mix_process_a(
    d                = catalog_spread,
    study_name_      = study_name_,
    subgroup_        = subgroup_,
    model_type       = model_type,
    process_a_to_sum = process_a_to_sum,
    print_config = FALSE
  )
  cake <- bake_the_cake(baking_mix)
  slice <- slice_the_cake(cake)
  # print(knitr::kable(slice))
  return(slice)
}

catalog_spread %>%
  serve_a_slice("eas","female","aehplus", "pef")





















