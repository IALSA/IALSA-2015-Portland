# the purpose of this script is to create a data transfer object (dto), which will hold all data and metadata from each candidate study of the exercise

# run the line below to stitch a basic html output. For elaborated report, run the corresponding .Rmd file
# knitr::stitch_rmd(script="./manipulation/0-ellis-island.R", output="./manipulation/stitched-output/0-ellis-island.md")
#These first few lines run only when the file is run in RStudio, !!NOT when an Rmd/Rnw file calls it!!
rm(list=ls(all=TRUE))  #Clear the variables from previous runs.
cat("\f") # clear console

# ---- load-sources ------------------------------------------------------------
# Call `base::source()` on any repo file that defines functions needed below.  Ideally, no real operations are performed.
source("./scripts/mplus/group-variables.R")
source("./scripts/mplus/extraction-functions.R")
source("./scripts/common-functions.R")

# ---- load-packages -----------------------------------------------------------
# Attach these packages so their functions don't need to be qualified: http://r-pkgs.had.co.nz/namespace.html#search-path
library(magrittr) #Pipes
library(MplusAutomation)
library(IalsaSynthesis)

# ---- declare-globals ---------------------------------------------------
pathDir <- getwd() # establish home directory
pathStudies <- file.path(pathDir,"studies")
list.files(pathStudies) # inspect participating studies

# Verify these packages are available on the machine, but their functions need to be qualified: http://r-pkgs.had.co.nz/namespace.html#search-path
requireNamespace("ggplot2")
requireNamespace("tidyr")
requireNamespace("dplyr") #Avoid attaching dplyr, b/c its function names conflict with a lot of packages (esp base, stats, and plyr).
requireNamespace("testit") #For asserting conditions meet expected patterns.

# ---- dto-1 ---------------------------------------------------------
# point to the folders with results for physical-cognitive track
eas   <- list.files(file.path(pathStudies,"eas/physical-cognitive/without-errors"),full.names=T, recursive=T, pattern="out$")
elsa  <- list.files(file.path(pathStudies,"elsa/physical-cognitive"),full.names=T, recursive=T, pattern="out$")
hrs   <- list.files(file.path(pathStudies,"hrs/physical-cognitive"),full.names=T, recursive=T, pattern="out$")
ilse  <- list.files(file.path(pathStudies,"ilse/physical-cognitive"),full.names=T, recursive=T, pattern="out$")
lasa  <- list.files(file.path(pathStudies,"lasa/physical-cognitive"),full.names=T, recursive=T, pattern="out$")
map   <- list.files(file.path(pathStudies,"map/physical-cognitive"),full.names=T, recursive=T, pattern="out$")
nas   <- list.files(file.path(pathStudies,"nas/physical-cognitive"),full.names=T, recursive=T, pattern="out$")
nuage <- list.files(file.path(pathStudies,"nuage/physical-cognitive/without-errors/"),full.names=T, recursive=T, pattern="out$")
# obas  <- list.files(file.path(pathStudies,"obas/physical-cognitive/"),full.names=T, recursive=T, pattern="out$")
octo  <- list.files(file.path(pathStudies,"octo/physical-cognitive/Final/"),full.names=T, recursive=T, pattern="out$")
satsa <- list.files(file.path(pathStudies,"satsa/physical-cognitive/"),full.names=T, recursive=T, pattern="out$")

list_pc <-  list("eas" = eas,
                 "elsa" = elsa,
                 "hrs" = hrs,
                 "ilse" = ilse,
                 "lasa" = lasa,
                 "map" = map,
                 "nas" = nas,
                 "nuage" = nuage,
                 "octo" = octo,
                 "satsa" = satsa)
# Now the object contains paths to files with model outputs
list_pc[["satsa"]]

# ---- dto ---------------------------------------------------------
## point to the folders with results for physical-physical track
eas   <- list.files(file.path(pathStudies,"eas/physical"),full.names=T, recursive=T, pattern="out$")
elsa  <- list.files(file.path(pathStudies,"elsa/physical"),full.names=T, recursive=T, pattern="out$")
hrs   <- list.files(file.path(pathStudies,"hrs/physical"),full.names=T, recursive=T, pattern="out$")
ilse  <- list.files(file.path(pathStudies,"ilse/physical"),full.names=T, recursive=T, pattern="out$")
lasa  <- list.files(file.path(pathStudies,"lasa/physical"),full.names=T, recursive=T, pattern="out$")
map   <- list.files(file.path(pathStudies,"map/physical"),full.names=T, recursive=T, pattern="out$")
nuage <- list.files(file.path(pathStudies,"nuage/physical"),full.names=T, recursive=F, pattern="out$")
octo  <- list.files(file.path(pathStudies,"octo/physical"),full.names=T, recursive=T, pattern="out$")
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
# Now the object contains paths to files with model outputs
list_pp[["elsa"]]

# collect a vector with .out file paths

# ---- dto ---------------------------------------------------------
# studies <- c("eas", "elsa", "hrs", "ilse", "lasa", "nuage", "octo", "map", "satsa")
# path_model_output <- list_pc[["eas"]][23]
# path_model_output <- list_pc[["elsa"]][1]
# path_model_output <- list_pc[["hrs"]][13]
# path_model_output <- list_pc[["ilse"]][1]
# path_model_output <- list_pc[["lasa"]][1]
# path_model_output <- list_pc[["map"]][116]
# path_model_output <- list_pc[["nuage"]][10]
# path_model_output <- list_pc[["octo"]][38]
# path_model_output <- list_pc[["satsa"]][50]

# list_pc$satsa
# (path=path_model_output)
# check the parameter output
# model <- get_mpar(path)$unstandardized
# get_mpar(path)$unstandardized %>% dplyr::slice(1:26)
# ---- dto ---------------------------------------------------------
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
# collected[c(model_id,b_GAMMA_04)]
# result %>% dplyr::glimpse()

model_output_file_path <- list(
  "eas"   = list_pc[["eas"]],
  "elsa"  = list_pc[["elsa"]], #[1:2],
  "hrs"   = list_pc[["hrs"]], #[1:2],
  "ilse"  = list_pc[["ilse"]],#[1:2],
  "lasa"  = list_pc[["lasa"]],#[1:2],
  "map"   = list_pc[["map"]],#[1:2],
  "nas"   = list_pc[["nas"]],#[20]
  "nuage" = list_pc[["nuage"]],#[1:2] ,
  "octo"  = list_pc[["octo"]],#[1:2],
  "satsa" = list_pc[["satsa"]] #[1:2]
)

# model_output_file_path <- list(
#   "eas"   = list_pp[["eas"]],
#   "elsa"  = list_pp[["elsa"]], #[1:2],
#   "hrs"   = list_pp[["hrs"]], #[1:2],
#   "ilse"  = list_pp[["ilse"]],#[1:2],
#   "lasa"  = list_pp[["lasa"]],#[1:2],
#   "map"   = list_pp[["map"]],#[1:2],
#   "nuage" = list_pp[["nuage"]],#[1:2] ,
#   "octo"  = list_pp[["octo"]],#[1:2],
#   "satsa" = list_pp[["satsa"]] #[1:2]
# )

# ---- dto ---------------------------------------------------------

collect_study <- function(study, selected_results){

  # create a file to populated, helps organize model output
  results <- data.frame(matrix(NA, ncol = length(selected_results) ))
  names(results) <- selected_results
  # browser()
  #
  for(i in seq_along(model_output_file_path[[study]])){
  # for(i in 50:50){
    # i <- 1; study = "eas"
    (collected <- collect_result(path=model_output_file_path[[study]][i]))
    (collected_names <- names(collected))
    results[i, collected_names] <- collected
  }

  write.csv(results,    paste0("./data/shared/phys-cog/parsed-results-pc-",study,".csv"), row.names=F)
  # write.csv(results,  paste0("./data/shared/phys-phys/parsed-results-pp-",study,".csv"), row.names=F)
  return(results)
}

# ---- dto ---------------------------------------------------------
# collect_study(study="eas", selected_results)
# collect_study(study="elsa", selected_results)
# collect_study(study="hrs", selected_results)
# collect_study(study="ilse", selected_results)
# collect_study(study="lasa", selected_results)
# collect_study(study="map", selected_results)
# collect_study(study="nas", selected_results)
# collect_study(study="nuage", selected_results)
# collect_study(study="octo", selected_results)
collect_study(study="satsa", selected_results)

# ---- dto ---------------------------------------------------------
# combine results files from each study
(combine_studies <- list.files("./data/shared/phys-cog/", pattern = "^parsed-results-pc-\\w+\\.csv$", full.names =T) )
# (combine_studies <- list.files("./data/shared/phys-phys/", pattern = "^parsed-results-pp-\\w+\\.csv$", full.names =T) )
# (combine_studies <- list.files("./data/shared/", pattern = "^parsed-results-pc-elsa", full.names =T) )
dtos <- list()
for(i in seq_along(combine_studies)){
  dtos[[i]] <- read.csv(combine_studies[i], header=T, stringsAsFactors = F)
}
results <- plyr::ldply(dtos, data.frame)
# explore dplyr::bind_rows() for a better solution
head(results[,c("study_name","a_GAMMA_14_est")]) # example

# ---- dto ---------------------------------------------------------
#### REMOVE DUPLICATES BEFORE SAVING THE DATA FOR THE NEXT STEP
# a <- results %>% dplyr::group_by_(model_id) %>% mutate(count = n())
# a %>% dplyr::select_(.ods = stem) %>% dplyr::slice(n=5)


### NOTE to DO: attach attributes with descriptions to the variables of the `results` file
write.csv(results,  paste0("./data/shared/pc-0-parsed-results-raw.csv"), row.names=F)
# write.csv(results,  paste0("./data/shared/pp-0-parsed-results-raw.csv"), row.names=F)
#




# results %>% dplyr::glimpse()
# results %>% mutate(count=n())
# results %>% dplyr::summarize


# ---- dto ---------------------------------------------------------
#  TODO:  compose dto to pass down the workflow


# ---- verify-values -----------------------------------------------------------
# testit::assert("`model_name` should be a unique value", sum(duplicated(ds$model_name))==0L)
# testit::assert("`miles_per_gallon` should be a positive value.", all(ds$miles_per_gallon>0))
# testit::assert("`weight_gear_z` should be a positive or missing value.", all(is.na(ds$miles_per_gallon) | (ds$miles_per_gallon>0)))

# ---- save-to-disk ------------------------------------------------------------

# Save as a compress, binary R dataset.  It's no longer readable with a text editor, but it saves metadata (eg, factor information).
# saveRDS(dto, file="./data/unshared/derived/dto.rds", compress="xz")

# ---- object-verification ------------------------------------------------
# the production of the dto object is now complete
# # we verify its structure and content:
# dto <- readRDS("./data/unshared/derived/dto.rds")
# # each element this list is another list:
# names(dto)
# # 1st element - names of the studies as character vector
# dto[["studyName"]]
# # 2nd element - file paths of the data files for each study
# dto[["filePath"]]
# # 3rd element - list objects with
# names(dto[["unitData"]])
# dplyr::tbl_df(dto[["unitData"]][["alsa"]])
# # 4th element - dataset with augmented names and labels for variables from all involved studies
# dplyr::tbl_df(dto[["metaData"]])






