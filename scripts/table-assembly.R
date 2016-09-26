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
  , study_name_ = "eas"
  ,subgroup_ = "female"
  ,pivot = "pef"
  ,target_value = "cr_levels_est"
)

# 2
a <- spread_model_type(
   d = catalog
  ,study_name_ = "eas"
  ,subgroup_ = "male"
  ,pivot = "pef"
  ,target_name  = "ab_tau_11_pval" # cr_slopes_est
  ,target_label = "Levels"
)
print(a)

# 3
print_bisr_spread <- function(
  d
  ,study_name
  ,subgroup
  ,pivot
  ,target_names
  ,target_labels
){
  cat("\\n",paste0("Study = _",toupper(study_name),"_; Gender = _",subgroup_,"_; Process (a) = _",pivot,"_\\n"))
  ls <- list()
  for(i in seq_along(target_names)){
    # i <- 1
    ls[[i]] <-  spread_model_type(
           d = catalog
          ,study_name_  = study_name#"eas"
          ,subgroup_    = subgroup#"male"
          ,pivot        = "pef"# pivot#"pef"
          ,target_name  = target_names[i] # cr_slopes_est
          ,target_label = target_labels[i]
      )
      print(
        knitr::kable(
          ls[[i]]
          ,format = "pandoc"
          ,align = c("r","l","r","r","r","r","r","r")
        )
      )
  }
}
print_bisr_spread(
  d = catalog
  ,study_name    = "eas"
  ,subgroup      = "female"
  ,pivot         = "fev"
  ,target_names  = c("cr_levels_est","cr_slopes_est", "cr_resid_est")
  ,target_labels = c("Levels","Slopes","Residuals")
)


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





















