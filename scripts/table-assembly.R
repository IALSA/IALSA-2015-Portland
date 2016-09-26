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

print_bisr_spread <- function(
   d
  ,study_name_
  ,subgroup_
  ,pivot

){
  # d            =  catalog
  # study_name_  = "eas"
  # subgroup_    = "female"
  # pivot        = "pef"

  cat("\\n",paste0("Gender = _",subgroup_,"_; Process (a) = _",pivot,"_\\n"))

  metaspread <- c("cr_levels_est","cr_slopes_est", "cr_resid_est")
  ls <- list()
  for(i in metaspread){

    d_print   <- spread_across_model_type(
      d = d
      ,study_name_ = study_name_
      ,subgroup_ = subgroup_
      ,pivot = pivot
      ,target_value = i
    ) %>%
    dplyr::rename(component = target) %>%
    dplyr::select(-model_number,-study_name, -process_a, -subgroup) %>%
    dplyr::mutate(
       component = gsub(metaspread[1],"Levels", component)
      ,component = gsub(metaspread[2],"Slopes", component)
      ,component = gsub(metaspread[3],"Residuals", component)
    ) %>%
    dplyr::select(component, process_b, dplyr::everything()) #%>%
    col_names <- names(d_print)
    col_names <- col_names[!col_names %in% c("component","process_b")]
    for(cn in col_names){
      d_print[,cn] <- sprintf("%0.2f",d_print[,cn])
      d_print[d_print[,cn] == "NA",cn] <- "."
    }
    print(
      knitr::kable(
        d_print
        ,format = "pandoc"
        ,align = c("r","l","r","r","r","r","r","r")
      )
    )
  }
}
print_bisr_spread(
  d = catalog
 ,study_name_ = "eas"
 ,subgroup_ = "male"
 ,pivot = "pef"
 # ,target_value =
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
serve_a_slice_process_a <- function(
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
    process_a_       = process_a,
    print_config = FALSE
  )
  cake <- bake_the_cake(baking_mix)
  slice <- slice_the_cake(cake)
  # print(knitr::kable(slice))
  return(slice)
}

catalog_spread %>%
  serve_a_slice("eas","female","aehplus", "pef")





















