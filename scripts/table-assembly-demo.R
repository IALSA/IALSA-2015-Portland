rm(list = ls())
library(magrittr)
catalog <- read.csv("./data/shared/pc-2-catalog-augmented.csv", header = T,  stringsAsFactors=FALSE)
catalog_spread <- readRDS("./data/shared/derived/pc-spread.rds")
# catalog <- read.csv("./data/shared/pc-2-parsed-results-computed_ci.csv", header = T,  stringsAsFactors=FALSE)
# catalog_spread <- readRDS("./data/shared/derived/pc-spread.rds") # physical-cognitive track
# template for structuring tables for reporting individual models
stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil-v6.csv")
# basic lookup function
# source("./scripts/model-lookup-function.R")
# load lookup function
source("./scripts/table-assembly-functions.R")



# this script explains and demonstrates the use of functions
# for assembling and printing report tables

# Viewing functions

view_options(
   d           = catalog_spread                       # transformed catalog
  ,study_name  = c("nas")                            # name of study
  ,model_types = c("a","ae","aeh","aehplus", "full")  # types of model (covariate set)
  ,processes_a = c("fev","fev100","pef")              # names of process 1
  # ,processes_b = c("block")                          # names of process 2
  ,full_id     = TRUE
)

view_one_model(
  d           = catalog_spread,  # transformed catalog
  study_name_ = "nas",          # name of study
  subgroup_   = "male",        # gender: male or female
  model_type_ = "aehplus",       # type of model (covariate set)
  process_a_  = "fev",           # single measure of process 1
  process_b_  = "word_de",       # single measure of process 2
  pretty_     = TRUE            # formatting option
)

print_coefficients(
  d              = catalog         # contains model solutions, row = model
  ,study_name    = "nas"          # name of study
  ,subgroup      = "male"        # gender : male or female
  ,pivot         = "fev"           # fixed; name of process 1
  ,target_names  = c(              # coefficients of interest
    "cr_levels_est"
    ,"cr_slopes_est"
    ,"cr_resid_est"
    )
  ,target_labels = c(              # labels for the coefs of interest
    "Correlation of Levels"
    ,"Correlation of Slopes"
    ,"Correlation of Residuals"
    )
  ,print_format = "pandoc"
)



###  Baking functions

ls <- pull_one_model(
   d           = catalog_spread # transformed catalog
  ,study_name_ = "nas"         # name of study
  ,subgroup_   = "male"       # gender : male or female
  ,model_type_ = "aehplus"      # type of model (covariate set)
  ,process_a_  = "fev"          # name of process 1
  ,process_b_  = "mmse"        # name of process 2
)
lapply(ls, names)


baking_mix <- make_baking_mix_model_type(
  d = catalog_spread                         # transformed catalog
  ,study_name_ = "nas"                      # name of study
  ,subgroup_   = "male"                    # gender : male or female
  ,model_type_ = c("a","ae","aeh","aehplus") # types of model to include
  ,process_a_  = "fev"                       # name of process 1
  ,process_b_  = "mmse"                     # name of process 2
)
lapply(baking_mix, names)


baking_mix <- make_baking_mix_process_a(
  d = catalog_spread          # transformed catalog
  ,study_name_ = "nas"       # name of study
  ,subgroup_   = "male"     # gender : male or female
  ,model_type_ = c("aehplus") # the common model type
  ,process_a_  = "fev"        # the stable process in pair
)
lapply(baking_mix, names)

# using layers from individual model we now bake the cake
cake <- bake_the_cake(
  baking_mix # the output of make_baking_mix_()
)
lapply(cake, names) # inspect the cake

# now we slice the cake with a predefined cookie-cutter
slice <- slice_the_cake(
  cake,                                  # output of bake_the_cake()
  mask_not  = c("a","b","ab","aa","bb"), # process components to keep
  info      = TRUE,                      # include model information section?
  corr      = TRUE,                      # include bivariate correlation section?
  aggregate = TRUE                       # include collumn of aggregates across models?
)
print(slice)


### Convenience functions
serve_slice_model_type(
   d            = catalog_spread
  ,study_name   = "nas"                      # name of study
  ,subgroup     = "male"                    # gender : male or female
  ,model_type   = c("a","ae","aeh","aehplus") # compare across these models
  ,process_a    = "fev"                       # name of process 1
  ,process_b    = "mmse"                     # name of process 2
  ,print_config = FALSE                       # should configuration be printed?
  ,mask_not     = c("a","b","ab","aa","bb")   # process components to keep
  ,info         = TRUE                        # include bivariate correlation section?
  ,corr         = TRUE                        # include collumn of aggregates across models?
)

serve_slice_process_a(
  d             = catalog_spread
  ,study_name   = "nas"      # name of study
  ,subgroup     = "male"    # gender : male or female
  ,model_type   = "aehplus"   # target model type used in comparisons
  ,process_a    = "fev"       # fixed name of process 1
  ,print_config = FALSE       # should configuration be printed?
  ,mask_not     = c("a","aa") # process components to keep
  ,info         = TRUE        # include bivariate correlation section?
  ,corr         = TRUE        # include collumn of aggregates across models?
)


print_outcome_pairs(
   d = catalog_spread # transformed catalog
  ,study               = "nas"                      # name of study
  ,gender              = "male"                    # gender : male or female
  ,outcome             = "fev"                       # fixed name of process 1
  ,model_type_standard = "aehplus"                   # compare this type
  ,model_type_set      = c("a","ae","aeh","aehplus") # compare across these models
)




# ---- table-of-correlations --------------------------
# PHYS ||            LEVELS            ||            SLOPES            ||         RESIDUALS            ||
# _____|| a | ae| aeh | aehplus | full || a | ae| aeh | aehplus | full || a | ae| aeh | aehplus | full ||
# cog_1||                              ||                              ||                              ||
# cog_2||                              ||                              ||                              ||
#  ... ||                              ||                              ||                              ||
# cog_N||______________________________||______________________________||______________________________||


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

# create the baking mix to compare models across model types
baking_mix <- make_baking_mix_model_type(
    d            = catalog_spread,
    study_name_  = "eas",
    subgroup_    = "female",
    model_type_  = c("a","ae","aeh","aehplus"),     # pivot
    process_a    = "pef",
    process_b    = "block"
  )
lapply(baking_mix, names) # one element for each pair with the pivot

# create the baking mix to compare models across outcome pairs
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





















