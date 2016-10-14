rm(list = ls())
library(magrittr)

catalog <- read.csv("./data/shared/pc-2-parsed-results-computed_ci.csv", header = T,  stringsAsFactors=FALSE)
catalog_spread <- readRDS("./data/shared/derived/pc-spread.rds") # physical-cognitive track
# template for structuring tables for reporting individual models
stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil-v6.csv")
# basic lookup function
source("./scripts/model-lookup-function.R")
# load lookup function
source("./scripts/functions-table-assembly.R")


# ---- table-of-correlations --------------------------
# PHYS ||            LEVELS            ||            SLOPES            ||         RESIDUALS            ||
# _____|| a | ae| aeh | aehplus | full || a | ae| aeh | aehplus | full || a | ae| aeh | aehplus | full ||
# cog_1||                              ||                              ||                              ||
# cog_2||                              ||                              ||                              ||
#  ... ||                              ||                              ||                              ||
# cog_N||______________________________||______________________________||______________________________||

# 1
spread_across_model_type(
  d = catalog
  , study_name_ = "elsa"
  ,subgroup_ = "female"
  ,pivot = "fev"
  ,target_value = "cr_levels_est"
)

# 2
a <- spread_model_type(
   d = catalog
  ,study_name_ = "elsa"
  ,subgroup_ = "female"
  ,pivot = "fev"
  ,target_name  = "ab_tau_11_pval" # cr_slopes_est
  ,target_label = "Levels"
)
print(a)

# 3
print_bisr_spread(
  d = catalog
  ,study_name    = "elsa"
  ,subgroup      = "female"
  ,pivot         = "fev"
  ,target_names  = c("cr_levels_est","cr_slopes_est", "cr_resid_est")
  ,target_labels = c("Levels","Slopes","Residuals")
)

# ---- one-study-debug-mode ----------------------------
# a_possibles <- c("fev","fev100","pef")  # if there are multiple measure of the contruct
a_possibles <- "pef"

catalog_spread %>% view_options(
  study_name="nuage"
  # ,model_types = c("a","aehplus")
  # ,processes_a = "pef"
  # ,process_b = "logic_tot"
  ,full_id  = T
)
catalog_spread %>% view_options(
  study_name="lasa"
  # ,model_types = c("a")
  ,processes_a = "pef"
  ,processes_b = "tics"
  ,full_id = T
)
# inspect individual models
catalog_spread %>%
  pull_one_model(
    study_name_ = "hrs"
    ,subgroup_   = "male"
    ,process_a_  = "pef"
    ,process_b_  =  "word_de"
    ,model_type_ = "aehplus"
  )

# create the baking mix for models with a selected pivot
baking_mix <- make_baking_mix_model_type(
  d            = catalog_spread,
  study_name_  = "hrs",
  subgroup_    = "female",
  model_type_  = c("a","ae","aeh","aehplus"),     # pivot
  process_a    = "pef",
  process_b    = "word_de"
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


# ---- one-study-example-model_type ----------------------------
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
baking_mix <- make_baking_mix_model_type(
    d            = catalog_spread,
    study_name_  = "eas",
    subgroup_    = "female",
    model_type_  = c("a","ae","aeh","aehplus"),     # pivot
    process_a    = "pef",
    process_b    = "block"
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
  ,model_types = c("aehplus")
  ,processes_a = "pef"
  # ,processes_b = "logic_tot"
  ,full_id = T
)
# inspect individual models
pull_one_model(catalog_spread
  ,study_name_ = "eas"
  ,subgroup_   = "male"
  ,model_type_ = "aehplus"
  ,process_a_  = "pef"
  ,process_b_  =  "block"
)

# create the baking mix for models with a selected pivot
baking_mix <- make_baking_mix_process_a(d = catalog_spread
  ,study_name_  = "eas"
  ,subgroup_    = "female"
  ,model_type_  = "aehplus"
  ,process_a    = "pef"   # spread
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

# --------- ----------------------






## Now all together
catalog_spread %>%
  serve_a_slice("eas","female","aehplus", "pef")





















