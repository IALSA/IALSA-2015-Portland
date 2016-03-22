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
source("./scripts/common-functions.R")
## @knitr setGlobals


# @knitr list_paths_studies -------------------------------------------------------------------
# all this could be be in a dataframe: one row per output
# model_id, track_name, specific_variables
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
path_model_output <- list_pc[["eas"]][12]

# (path=path_model_output)

collect_result <- function(path){
  # extract model idendification
  mid <- get_id(path)
  msum <- get_msum(path)
  mpar <- get_mpar(path)

  result <- data.frame(matrix(NA, ncol = length(selected_results)))
  names(result) <- selected_results

  result <- get_results_basic(path, mid, msum, mpar, result)
  result <- get_results_errors(path, mpar, result)
  result <- get_results_random(path, mpar, result)
  result <- get_results_residual(path, mpar, result)
  result <- get_results_fixed(path, mpar, result)
  return(result)
}
# collected <- collect_result(path=path_model_output)
# result %>% dplyr::glimpse()
# consider making the following big rectangular object in long format: study_name, file_path
model_output_file_path <- list(
  "eas" = list_pc[["eas"]][1:10],
  "elsa"  = list_pc[["elsa"]], #[1:2],
  "hrs"   = list_pc[["hrs"]], #[1:2],
  "ilse"  = list_pc[["ilse"]],#[1:2],
  "lasa"  = list_pc[["lasa"]],#[1:2],
  "map"   = list_pc[["map"]],#[1:2],
  "nuage" = list_pc[["nuage"]],#[1:2] ,
  "octo"  = list_pc[["octo"]],#[1:2],
  "satsa" = list_pc[["satsa"]] #[1:2]
)


collect_study <- function(study, selected_results){

  # create a file to populated, helps organize model output
  results <- data.frame(matrix(NA, ncol = length(selected_results) ))
  names(results) <- selected_results
  # browser()
  #
  for(i in seq_along(model_output_file_path[[study]])){
    # i <- 1; study = "eas"
    (collected <- collect_result(path=model_output_file_path[[study]][i]))
    (collected_names <- names(collected))
    results[i, collected_names] <- collected
  }

  write.csv(results,  paste0("./data/shared/parsed-results-pc-",study,".csv"), row.names=F)
  return(results)
}

# collect_study(study="eas", model_output_file_path, selected_results)
# collect_study(study="elsa", model_output_file_path, selected_results)
# collect_study(study="hrs", model_output_file_path, selected_results)
# collect_study(study="ilse", model_output_file_path, selected_results)
# collect_study(study="lasa", model_output_file_path, selected_results)
# collect_study(study="map", model_output_file_path, selected_results)
# collect_study(study="nuage", model_output_file_path, selected_results)
# collect_study(study="octo", model_output_file_path, selected_results)
# collect_study(study="satsa", model_output_file_path, selected_results)

# combine results files from each study
# (combine_studies <- list.files("./data/shared/", pattern = "^parsed-results-pc-\\w+\\.csv$", full.names =T) )
(combine_studies <- list.files("./data/shared/", pattern = "^parsed-results-pc-hrs", full.names =T) )
dtos <- list()
for(i in seq_along(combine_studies)){
  dtos[[i]] <- read.csv(combine_studies[i], header=T, stringsAsFactors = F)
}
results <- plyr::ldply(dtos, data.frame)
# explore dplyr::bind_rows() for a better solution
head(results[,c("study_name","ab_TAU_00_est")])

#### REMOVE DUPLICATES BEFORE SAVING THE DATA FOR THE NEXT STEP
a <- results %>% dplyr::group_by_(model_id) %>% mutate(count = n())
a %>% dplyr::select_(.ods = stem) %>% dplyr::slice(n=5)


### NOTE to DO: attach attributes with descriptions to the variables of the `results` file
write.csv(results,  paste0("./data/shared/parsed-results-raw.csv"), row.names=F)
#


rmarkdown::render(input = "./sandbox/inspect-extracted-results/inspect-extracted-raw.Rmd" ,
                  output_format="html_document", clean=TRUE)

# source("./sandbox/rename-classify/rename-classify.R")
# source("./sandbox/extend/standardize_ISR.R")
rmarkdown::render(input = "./sandbox/inspect-extracted-results/inspect-extracted.Rmd" ,
                  output_format="html_document", clean=TRUE)
#
#

# results %>% dplyr::glimpse()
# results %>% mutate(count=n())
# results %>% dplyr::summarize





















