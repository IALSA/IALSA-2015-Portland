rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

# ---- load-sources ------------------------------------------------------------
#Load any source files that contain/define functions, but that don't load any other types of variables
#   into memory.  Avoid side effects and don't pollute the global environment.
# basic lookup function
source("./scripts/model-lookup-function.R")
# load lookup function
source("./scripts/functions-table-assembly.R")

# ---- load-packages -----------------------------------------------------------
library(magrittr) #Pipes
library(ggplot2)
requireNamespace("readr")
requireNamespace("knitr")
requireNamespace("dplyr")
requireNamespace("tidyr")
requireNamespace("DT")
requireNamespace("scales")

# ---- declare-globals ---------------------------------------------------------
options(show.signif.stars=F) #Turn off the annotations on p-values
# ---- load-data ---------------------------------------------------------------
# catalog <- readRDS("./data/shared/derived/pp-spread.rds") # physical-physical track
catalog_spread <- readRDS("./data/shared/derived/pc-spread.rds") # physical-cognitive track
# template for structuring tables for reporting individual models
stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil-v7.csv")

# ---- explorations -------------------------------------------
catalog_spread %>% view_options(
   study_name_ ="eas"
  ,full_id = T
  ,subgroups = c("female")
  # ,model_types = c("aehplus")
  ,processes_a = "pef"
  # ,processes_b = "block"
)


# ---- custom-functions -----------------

# ---- eas-0 ---------------------------------------------------------
#
cat("\n# Available models \n")
cat("\n All models involving pulmonary function: \n")
view_options(catalog_spread
  ,study_name_ ="eas"
  ,full_id = T
  ,subgroups = c("female")
  # ,model_types = c("aehplus")
  ,processes_a = "pef"
  # ,processes_b = "block"
) %>% knitr::kable()
cat("\n All outcome pairs involving pulmonary function: \n")
view_options(catalog_spread
             ,study_name_ ="eas"
             ,full_id = F
             ,subgroups = c("female")
             ,processes_a = "pef"
) %>% knitr::kable()



# ---- eas-1 ---------------------------------------------------------
cat("\n Models involving pef ")
knitr::kable(
  serve_slice_process_a(d = catalog_spread
    ,study_name = "eas"
    ,subgroup = "female"
    ,model_type = "aehplus"
    ,process_a = "pef"
    ,mask_not = c("a","aa")
  ),
align      = c("l", "l", "r", "r", "r", "r", "r")
)


# ---- eas-2 ---------------------------------------------------------
cat("\n## Female \n")
processes_b <- c("block", "digit_tot", "symbol", "trailsb")
for(i in processes_b){
  cat("\n### ",i,"\n")
  print(knitr::kable(
    serve_slice_model_type(
      d =  catalog_spread
    , study_name = "eas"
    , subgroup   = "female"
    , model_type = c("a", "ae", "aeh", "aehplus", "plus")
    , process_a  = "pef"
    , process_b  = i
    ),
    align      = c("l", "l", "r", "r", "r", "r", "r")
  ))
}
cat("\n## Male \n")
processes_b <- c("block", "digit_tot", "symbol", "trailsb")
for(i in processes_b){
  cat("\n### ",i,"\n")
  print(knitr::kable(
    serve_slice_model_type(
      d =  catalog_spread
      , study_name = "eas"
      , subgroup   = "male"
      , model_type = c("a", "ae", "aeh", "aehplus", "plus")
      , process_a  = "pef"
      , process_b  = i
    ),
    align      = c("l", "l", "r", "r", "r", "r", "r")
  ))
}


