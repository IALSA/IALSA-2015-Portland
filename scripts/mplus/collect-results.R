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

(path=path_model_output)

collect_results <- function(path){
  # extract model idendification
  mid <- get_id(path)
  msum <- get_msum(path)
  mpar <- get_mpar(path)
  result <- data.frame(matrix(NA, ncol = length(selected_results)))
  names(result) <- selected_results
  result <- get_results_basic(path, mid, msum, mpar, result)
  result <- get_results_errors(path, mpar, result)
  # result <- get_results_random(path, mpar, result)
  return(result)
}
# collected <- collect_results(path=path_model_output)


# apply the function above to multiple output from a list
model_list <- list_pc[["octo"]][1:2]
results <- data.frame(matrix(NA, ncol = length(selected_results)))
names(results) <- selected_results
for(i in seq_along(model_list)){
  # i <- 1
  (collected <- collect_results(path=model_list[i]))
  (collected_names <- names(collected))
  results[i, collected_names] <- collected
}



interect(a,b)
### NOTE to DO: attach attributes with descriptions to the variables of the result file
write.csv(results,  "./data/shared/parsed-results.csv", row.names=F)
#


























