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
# stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil-v7.csv")
stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil-v8.csv")

# ---- explorations -------------------------------------------
catalog_spread %>% view_options(
   study_name_ ="eas"
  ,full_id = T
  ,subgroups = c("female")
  # ,model_types = c("aehplus")
  ,processes_a = "pef"
  # ,processes_b = "block"
)


# ---- print-functions -----------------
print_outcome_pairs <- function(
  d
  ,study
  ,gender
  ,outcome
  ,model_type_standard
  ,model_type_set
){
    cat("\n",paste0("Gender = ",gender,";  Process (a) = *",outcome,"*; Process (b): ",  paste0("*",model_type_set,"*", collapse = ", "),"; Model type: _",model_type_standard,"_\n"))
    print(
      knitr::kable(
        serve_slice_process_a(
           d          = d
          ,study_name = study#"eas"
          ,subgroup   = gender#"female"
          ,model_type = model_type_standard#"aehplus"
          ,process_a  = outcome#"pef"
          ,mask_not   = c("a","aa")
        )
        ,format = "html"
        ,align  = c("c", "l", "r", "r", "r", "r", "r")
      )
    )
    for(i in processes_b ){
      cat("\n## ",i,"\n")
      cat("\n",paste0("Gender = ",gender,";  Process (a) = *",outcome,"*; Process (b): _",i,"_" ))
      print(
        knitr::kable(
          serve_slice_model_type(
            d            =  d
            , study_name = study#"eas"
            , subgroup   = gender#"female"
            , model_type = model_type_set#
            , process_a  = outcome#"pef"
            , process_b  = i
          ),
          ,format = "html"
          ,align  = c("c", "l", "r", "r", "r", "r", "r")
        )
      )
    }
  }

# ---- eas ---------------------------------------------------------
study <- 'eas'
outcome <- "pef"
model_type_standard <- "aehplus" # spread at outcome pair level
model_type_set <- c("a", "ae", "aeh", "aehplus", "full") # spread at model type level


cat("\n# Available models \n")
cat("\n",paste0("Study **",toupper(study),"** contains the following outcome pairs:"),"\n\n")
view_options(catalog_spread
             ,study_name_ = study#"eas"
             ,full_id = F
             ,subgroups = c("female","male")
             ,processes_a = outcome#"pef"
) #%>% knitr::kable(format = "html")
for(gender in c("female","male")){
  if(gender == "female"){
    processes_b <- c("block", "digit_tot", "symbol", "trailsb")
  }else{ # covariate sets may differ by gender, both must have the standard "aehplus"
    processes_b <- c("block", "digit_tot", "symbol", "trailsb") # fas would break it no standard
  }
  cat("\n#",gender)
  view_options(catalog_spread
    ,study_name_ =study#"eas"
    ,full_id     = T
    ,subgroups   = gender#c("female","male")
    ,processes_a = outcome#"pef"
  ) #>% knitr::kable(format = "html")
  print_outcome_pairs(
    d = catalog_spread
    ,study = 'eas'
    ,gender = gender
    ,outcome = "pef"
    ,model_type_standard = "aehplus" # spread at outcome pair level
    ,model_type_set = c("a", "ae", "aeh", "aehplus", "full") # spread at model type level
  )
}




# ---- session-info ---------------------
cat("\n#Session Info")
sessionInfo()






