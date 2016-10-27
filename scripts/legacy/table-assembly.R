rm(list = ls())
library(magrittr)

catalog <- read.csv("./data/shared/pc-2-parsed-results-computed_ci.csv", header = T,  stringsAsFactors=FALSE)
catalog_spread <- readRDS("./data/shared/derived/pc-spread.rds") # physical-cognitive track
# template for structuring tables for reporting individual models
stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil-v6.csv")
# basic lookup function
# source("./scripts/model-lookup-function.R")
# load lookup function
source("./scripts/functions-table-assembly.R")



# this script explains and demonstrates the use of functions
# for assembling and printing report tables

# Exploratory functions

view_options(
   d           = catalog_spread                       # transformed catalog
  ,study_name  = c("elsa")                            # name of study
  ,model_types = c("a","ae","aeh","aehplus", "full")  # types of model (covariate set)
  ,processes_a = c("fev","fev100","pef")              # names of process 1
  ,processes_b = c("word_de", "word_im")              # names of process 2
  ,full_id     = TRUE
)

view_one_model(
  d           = catalog_spread,  # transformed catalog
  study_name_ = "elsa",          # name of study
  subgroup_   = "female",        # gender: male or female
  model_type_ = "aehplus",       # type of model (covariate set)
  process_a_  = "fev",           # single measure of process 1
  process_b_  = "word_de",       # single measure of process 2
  pretty_     = FALSE            # formatting option
)

spread_model_type(
  d             = catalog          # contains model solutions, row = model
  ,study_name_  = "eas"            # name of study
  ,subgroup_    = "female"         # gender : male or female
  ,pivot        = "pef"            # fixed; name of process 1
  ,target_name  = "cr_levels_est"  # name of the parameter of interest
  ,target_label = "Levels"         # required custom label
)

###  Baking function

ls <- pull_one_model(
   d           = catalog_spread      # transformed catalog
  ,study_name_ = "octo"    # name of study
  ,subgroup_   = "female"  # gender : male or female
  ,model_type_ = "aehplus"# type of model (covariate set)
  ,process_a_  = "pef"    # name of process 1
  ,process_b_ = "block"    # name of process 2
)
lapply(ls, names)


baking_mix <- make_baking_mix_model_type(
  d = catalog_spread
  ,study_name_ = "octo"
  ,subgroup_   = "female"
  ,model_type_ = c("a","ae","aeh","aehplus")
  ,process_a_   = "pef"
  ,process_b_ = "block"
)
lapply(baking_mix, names)


baking_mix <- make_baking_mix_process_a(
  d = catalog_spread
  ,study_name_ = "octo"
  ,subgroup_   = "female"
  ,model_type_ = c("aehplus")
  ,process_a_   = "pef"
)
lapply(baking_mix, names)

# using layers from individual model we now bake the cake
cake <- bake_the_cake(baking_mix)
lapply(cake, names) # inspect the cake
# now we slice the cake with a predefined cookie-cutter
slice <- slice_the_cake(cake, mask_not = c("a","b","ab","aa","bb") )
# the cake is ready to be surved in the appropriate location of a report
# use wrapper function to serve:
knitr::kable(slice)



# Reporting functions

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
  ,study_name_ = "eas"
  ,subgroup_ = "female"
  ,pivot = "pef"
  ,target_value = "cr_levels_est"
)

# 2
spread_model_type(
   d = catalog
  ,study_name_ = "eas"
  ,subgroup_ = "female"
  ,pivot = "pef"
  ,target_name  = "cr_levels_est" # cr_slopes_est
  ,target_label = "Levels"
)


# 3
print_bisr_spread(
  d = catalog
  ,study_name    = "eas"
  ,subgroup      = "female"
  ,pivot         = "pef"
  ,target_names  = c("cr_levels_est","cr_slopes_est", "cr_resid_est")
  ,target_labels = c("Levels","Slopes","Residuals")
)

# ---- one-study-debug-mode ----------------------------
# a_possibles <- c("fev","fev100","pef")  # if there are multiple measure of the contruct
a_possibles <- "pef"

catalog_spread %>% view_options(
  study_name="elsa"
  # ,model_types = c("a","aehplus")
  ,processes_a = "fev"
  # ,process_b = "logic_tot"
  ,full_id  = T
)
catalog_spread %>% view_options(
  study_name="eas"
  # ,model_types = c("a")
  ,processes_a = "pef"
  ,processes_b = "symbol"
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
  study_name_  = "eas",
  subgroup_    = "female",
  model_type_  = c("a","ae","aeh","aehplus"),     # pivot
  process_a    = "pef",
  process_b    = "symbol"
)

baking_mix <- make_baking_mix_model_type(
  d            = catalog_spread,
  study_name_  = "elsa",
  subgroup_    = "female",
  model_type_  = c("a","ae","aeh","aehplus"),     # pivot
  process_a    = "fev",
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





















