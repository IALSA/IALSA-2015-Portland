rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

# ---- load-sources ------------------------------------------------------------
#Load any source files that contain/define functions, but that don't load any other types of variables
#   into memory.  Avoid side effects and don't pollute the global environment.
# load functions to assemble the tables


source("./scripts/mplus/extraction-functions.R")   # parsing functions, groupings, components
source("./scripts/mplus/mplus.R")                  # working with Mplus object

source("./scripts/graphs/model-anatomy-functions.R")# treating single outputs
source("./scripts/table-assembly-functions.R")      # working with compound catalogs

source("./scripts/graphs/main_theme.R") # pre-sets and options for graphing
# ---- load-packages -----------------------------------------------------------
library(magrittr) #Pipes
library(ggplot2)
requireNamespace("readr")
requireNamespace("knitr")
requireNamespace("dplyr")
requireNamespace("tidyr")


# ---- declare-globals ---------------------------------------------------------
options(show.signif.stars=T) #Turn off the annotations on p-values
print_format = "html"
# print_format = "pandoc"

# ---- load-data ---------------------------------------------------------------
# template for structuring tables for reporting individual models
stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil-v10.csv")


# ---- get-paths -------------------------------------
path_studies <- "./studies"
## point to the folders with results for physical-physical track
eas   <- list.files(file.path(path_studies,"eas/physical"),full.names=T, recursive=T, pattern="out$")
elsa  <- list.files(file.path(path_studies,"elsa/physical"),full.names=T, recursive=T, pattern="out$")
hrs   <- list.files(file.path(path_studies,"hrs/physical"),full.names=T, recursive=T, pattern="out$")
ilse  <- list.files(file.path(path_studies,"ilse/physical"),full.names=T, recursive=T, pattern="out$")
lasa  <- list.files(file.path(path_studies,"lasa/physical"),full.names=T, recursive=T, pattern="out$")
nuage <- list.files(file.path(path_studies,"nuage/physical"),full.names=T, recursive=T, pattern="out$")
octo  <- list.files(file.path(path_studies,"octo/physical"),full.names=T, recursive=T, pattern="out$")
map   <- list.files(file.path(path_studies,"map/physical"),full.names=T, recursive=T, pattern="out$")
satsa <- list.files(file.path(path_studies,"satsa/physical"),full.names=T, recursive=T, pattern="out$")

list_study_path <-  list(
  "eas" = eas,
  "elsa" = elsa,
  "hrs" = hrs,
  "ilse" = ilse,
  "lasa" = lasa,
  "map" = map,
  "nuage" = nuage,
  "octo" = octo,
  "satsa" = satsa
)

# Now the object contains paths to files with model outputs
ds_list <- as.data.frame(list_study_path[["eas"]])
print(ds_list)


print_study <- function(study_name, list_study_path){
  for( i in seq_along(list_study_path[[study_name]])){
    (path_out <- list_study_path[[study_name]][i])
    ls_model <- get_model_data(
      path_out,
      model_components,
      center_age = 70 # location at which baseline age was centered
    )
    outcome_pair <- paste0(ls_model$catalog$process_a, "-",ls_model$catalog$process_b)
    model_id <- paste0(
      ls_model$catalog$subgroup, "-",
      ls_model$catalog$model_type, "-",
      outcome_pair
    )
    cat("\n##",model_id,"\n")
    cat("\n### Trajectories","\n")
    observed_predicted(ls_model)
    cat("\n")
    cat("\n### Factor Scores","\n")
    factor_score_scatter(ls_model)
    cat("\n")
    cat("\n### Coefficients","\n")
    # model_parsed <- ls_model$catalog
    t <- proto_table(ls_model$catalog, model_components)
    print(knitr::kable(t,format = "html",align =c("l","c","l","r")  ))
  }
}
# ---- eas ---------------------------
print_study("eas",list_study_path)

# ---- elsa ---------------------------
print_study("elsa",list_study_path)

# ---- hrs ---------------------------
print_study("hrs",list_study_path)

# ---- ilse ---------------------------
print_study("ilse",list_study_path)

# ---- lasa ---------------------------
print_study("lasa",list_study_path)

# ---- map ---------------------------
print_study("map",list_study_path)

# ---- nuage ---------------------------
print_study("nuage",list_study_path)

# ---- octo ---------------------------
print_study("octo",list_study_path)

# ---- satsa ---------------------------
print_study("satsa",list_study_path)
























