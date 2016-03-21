options(width=160)
rm(list=ls())
cat("\f")

# @knitr load_packages ----------------------------------------------------------------------
library(MplusAutomation)
library(IalsaSynthesis)

# @knitr set_paths  ----------------------------------------------------------------------

pathDir <- getwd() # establish home directory
pathStudies <- file.path(pathDir,"studies")
list.files(pathStudies) # inspect participating studies

# @knitr load_sources

source("./scripts/mplus/group-variables.R")
source("./scripts/mplus/extraction-functions.R")
## @knitr setGlobals


# @knitr list_paths_studies -------------------------------------------------------------------

## point to the folders with results for physical-cognitive track
eas <- list.files(file.path(pathStudies,"eas/physical-cognitive/without-errors"),full.names=T, recursive=T, pattern="out$")
elsa <- list.files(file.path(pathStudies,"elsa/physical-cognitive"),full.names=T, recursive=T, pattern="out$")
hrs <- list.files(file.path(pathStudies,"hrs/physical-cognitive"),full.names=T, recursive=T, pattern="out$")
ilse <- list.files(file.path(pathStudies,"ilse/physical-cognitive"),full.names=T, recursive=T, pattern="out$")
lasa <- list.files(file.path(pathStudies,"lasa/physical-cognitive"),full.names=T, recursive=T, pattern="out$")
nuage <- list.files(file.path(pathStudies,"nuage/physical-cognitive"),full.names=T, recursive=T, pattern="out$")
octo <- list.files(file.path(pathStudies,"octo/physical-cognitive"),full.names=T, recursive=T, pattern="out$")
map <- list.files(file.path(pathStudies,"map/physical-cognitive"),full.names=T, recursive=T, pattern="out$")
satsa <- list.files(file.path(pathStudies,"satsa/physical-cognitive"),full.names=T, recursive=T, pattern="out$")

list_pc <-  list("eas" = eas,
                                "elsa" = elsa,
                                "hrs" = hrs,
                                "ilse" = ilse,
                                "lasa" = lasa,
                                "nuage" = nuage,
                                "octo" = octo,
                                "map" = map,
                                "satsa" = satsa)
# list_pc[["elsa"]]

## point to the folders with results for physical-cognitive track
eas <- list.files(file.path(pathStudies,"eas/physical"),full.names=T, recursive=T, pattern="out$")
elsa <- list.files(file.path(pathStudies,"elsa/physical"),full.names=T, recursive=T, pattern="out$")
hrs <- list.files(file.path(pathStudies,"hrs/physical"),full.names=T, recursive=T, pattern="out$")
ilse <- list.files(file.path(pathStudies,"ilse/physical"),full.names=T, recursive=T, pattern="out$")
lasa <- list.files(file.path(pathStudies,"lasa/physical"),full.names=T, recursive=T, pattern="out$")
nuage <- list.files(file.path(pathStudies,"nuage/physical"),full.names=T, recursive=T, pattern="out$")
octo <- list.files(file.path(pathStudies,"octo/physical"),full.names=T, recursive=T, pattern="out$")
radc <- list.files(file.path(pathStudies,"radc/physical"),full.names=T, recursive=T, pattern="out$")
satsa <- list.files(file.path(pathStudies,"satsa/physical"),full.names=T, recursive=T, pattern="out$")

list_pp <-  list("eas" = eas,
                 "elsa" = elsa,
                 "hrs" = hrs,
                 "ilse" = ilse,
                 "lasa" = lasa,
                 "nuage" = nuage,
                 "octo" = octo,
                 "map" = map,
                 "satsa" = satsa)

# collect a vector with .out file paths

# studies <- c("eas", "elsa", "hrs", "ilse", "lasa", "nuage", "octo", "map", "satsa")
path_model_output <- list_pc[["octo"]][1]

# (path=path_model_output)

collect_results <- function(path){
  # extract model idendification
  mid <- get_id(path)
  msum <- get_msum(path)
  mpar <- get_mpar(path)
  result <- data.frame(matrix(NA, ncol = length(selected_results)))
  names(result) <- selected_results
  result <- get_results_basic(path, mid, msum, mpar, result)
  result <- get_results_errors(path, mpar, result)
  result <- get_results_random(path, mpar, result)
  result <- get_results_fixed(path, mpar, result)
  return(result)
}
# collected <- collect_results(path=path_model_output)


# apply the function above to multiple output from a list
model_list_eas <- list_pc[["eas"]]
model_list_elsa <- list_pc[["elsa"]]
model_list_hrs <- list_pc[["hrs"]]
model_list_ilse <- list_pc[["ilse"]]
model_list_lasa <- list_pc[["lasa"]]
model_list_nuage <- list_pc[["nuage"]]
model_list_octo <- list_pc[["octo"]]
model_list_map <- list_pc[["map"]]
model_list_satsa <- list_pc[["satsa"]]

# model_list <- plyr::ldply(list_pc, data.frame)
# names(model_list) <- c("study_name","file_path")
# model_list <- as.character(model_list$file_path)

model_list <- list("eas" = model_list_eas,
                   "elsa" = model_list_elsa,
                   "hrs" = model_list_hrs ,
                   "ilse" = model_list_ilse,
                   "lasa" = model_list_lasa ,
                   "map" = model_list_map ,
                   "nuage" = model_list_nuage ,
                   "octo" = model_list_octo ,
                   "satsa" = model_list_satsa)
results <- data.frame(matrix(NA, ncol = length(selected_results)))
names(results) <- selected_results
# study <- "eas"
# study <- "elsa" # bad
# study <- "hrs" # bad
# study <- "ilse" # bad
study <- "lasa"
# study <- "map"
# study <- "nuage"
# study <- "octo"
# study <- "satsa"

for(i in seq_along(model_list)){
  # i <- 1
  (collected <- collect_results(path=model_list[[study]][i]))
  (collected_names <- names(collected))
  results[i, collected_names] <- collected
}

### NOTE to DO: attach attributes with descriptions to the variables of the result file
write.csv(results,  paste0("./data/shared/parsed-results-pc-",study,".csv"), row.names=F)
#

source("./sandbox/rename-classify/rename-classify.R")
source("./sandbox/extend/standardize_ISR.R")
rmarkdown::render(input = "./sandbox/inspect-extracted-results/inspect-extracted.Rmd" ,
                  output_format="html_document", clean=TRUE)
























