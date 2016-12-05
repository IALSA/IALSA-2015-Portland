# the purpose of this script is to create a data transfer object (dto), which will hold all data and metadata from each candidate study of the exercise

# run the line below to stitch a basic html output. For elaborated report, run the corresponding .Rmd file
# knitr::stitch_rmd(script="./manipulation/0-ellis-island.R", output="./manipulation/stitched-output/0-ellis-island.md")
#These first few lines run only when the file is run in RStudio, !!NOT when an Rmd/Rnw file calls it!!
rm(list=ls(all=TRUE))  #Clear the variables from previous runs.
cat("\f") # clear console

# ---- load-sources ------------------------------------------------------------
# Call `base::source()` on any repo file that defines functions needed below.  Ideally, no real operations are performed.
source("./scripts/mplus/group-variables.R")
# source("./scripts/mplus/extraction-functions.R")
source("./scripts/mplus/extraction-functions-auto.R")
source("./scripts/common-functions.R")

# ---- load-packages -----------------------------------------------------------
# Attach these packages so their functions don't need to be qualified: http://r-pkgs.had.co.nz/namespace.html#search-path
library(magrittr) #Pipes
library(MplusAutomation)
library(IalsaSynthesis)
# Verify these packages are available on the machine, but their functions need to be qualified: http://r-pkgs.had.co.nz/namespace.html#search-path
requireNamespace("ggplot2")
requireNamespace("tidyr")
requireNamespace("dplyr") #Avoid attaching dplyr, b/c its function names conflict with a lot of packages (esp base, stats, and plyr).
requireNamespace("testit") #For asserting conditions meet expected patterns.

# ---- declare-globals ---------------------------------------------------
pathDir <- getwd() # establish home directory
pathStudies <- file.path(pathDir,"studies")
list.files(pathStudies) # inspect participating studies

# studies <- c("eas", "elsa", "hrs", "ilse", "lasa", "nuage", "octo", "map", "satsa")

# ---- define-utility-functions ---------------------------------------------------------
# function to collect results of a single outcome
collect_result <- function(path){
  print(path)
  # extract model idendification
  mid  <- get_id(path)
  msum <- get_msum(path)
  mpar <- get_mpar(path)

  result <- data.frame(matrix(NA, ncol = length(selected_results)))
  names(result) <- selected_results
  result <- get_results_basic(path, mid, msum, mpar, result)
  result <- get_results_errors(path, mpar, result)

  # result %>% t() %>% head(27)
  if(result$has_converged){
  result <- get_results_random(path, mpar, result)
  result <- get_results_residual(path, mpar, result)
  result <- get_results_fixed(path, mpar, result)
  }
  result %>% t()
  return(result)
}

# function to collect results from the entire study
collect_study <- function(study, selected_results){
  # create a file to populated, helps organize model output
  results <- data.frame(matrix(NA, ncol = length(selected_results) ))
  names(results) <- selected_results
  # browser()
  for(i in seq_along(model_output_file_path[[study]])){
    # the action happens here
    (collected <- collect_result(path=model_output_file_path[[study]][i]))
    (collected_names <- names(collected))
    results[i, collected_names] <- collected
  }
  write.csv(
    results,
    paste0("./data/shared/phys-cog/pc-catalog-",study,".csv"),
    row.names=F
  )
  return(results)
}


# ---- define-paths ---------------------------------------------------------
# point to the folders with results for physical-cognitive track
eas   <- list.files("./studies/eas/physical-cognitive/without-errors",full.names=T, recursive=T, pattern="out$")
elsa  <- list.files("./studies/elsa/physical-cognitive",full.names=T, recursive=T, pattern="out$")
hrs   <- list.files("./studies/hrs/physical-cognitive",full.names=T, recursive=T, pattern="out$")
ilse  <- list.files("./studies/ilse/physical-cognitive",full.names=T, recursive=T, pattern="out$")
lasa  <- list.files("./studies/lasa/physical-cognitive",full.names=T, recursive=T, pattern="out$")
# map   <- list.files("./studies/map/physical-cognitive"),full.names=T, recursive=T, pattern="out$")
# map   <- list.files("./studies/map/physical-cognitive/outputs/Old Models",full.names=T, recursive=T, pattern="out$")
map   <- list.files("./output/studies/map/phys-cog",full.names=T, recursive=T, pattern="out$")
# map   <- list.files("./output/studies/map/test",full.names=T, recursive=T, pattern="out$")
nas   <- list.files("./studies/nas/physical-cognitive",full.names=T, recursive=T, pattern="out$")
nuage <- list.files("./studies/nuage/physical-cognitive/without-errors/",full.names=T, recursive=T, pattern="out$")
# obas  <- list.files("./studies/obas/physical-cognitive/"),full.names=T, recursive=T, pattern="out$")
octo  <- list.files("./studies/octo/physical-cognitive/Final/",full.names=T, recursive=T, pattern="out$")
satsa <- list.files("./studies/satsa/physical-cognitive/",full.names=T, recursive=T, pattern="out$")

list_paths <- list("eas" = eas,
                 "elsa"  = elsa,
                 "hrs"   = hrs,
                 "ilse"  = ilse,
                 "lasa"  = lasa,
                 "map"   = map,
                 "nas"   = nas,
                 "nuage" = nuage,
                 "octo"  = octo,
                 "satsa" = satsa)
# Now the object contains paths to files with model outputs
# list_paths[["map"]]
# list_paths[["map"]]=="./output/studies/map/phys-cog/fev100-wordlistim/b1_female_a_fev100_wordlistim.out"


# ---- targeted-parsing ---------------------------------------------------------

# path_model_output <- list_paths[["eas"]][23]
# path_model_output <- list_paths[["elsa"]][1]
# path_model_output <- list_paths[["hrs"]][13]
# path_model_output <- list_paths[["ilse"]][1]
# path_model_output <- list_paths[["lasa"]][1]
# path_model_output <- list_paths[["map"]][1]
# path_model_output <- list_paths[["nuage"]][10]
# path_model_output <- list_paths[["octo"]][38]
# path_model_output <- list_paths[["satsa"]][50]


# check the parameter output
# (path=path_model_output)
# collected <- collect_result(path=path_model_output)
# collected %>% t()
# get_mpar(path=path_model_output)$unstandardized


# ---- parse-studies ---------------------------------------------------------
# create the master file to direct parsing
# use this object to narrow collection to a subset of paths
model_output_file_path <- list(
  "eas"   = list_paths[["eas"]],
  "elsa"  = list_paths[["elsa"]], #[1:2],
  "hrs"   = list_paths[["hrs"]], #[1:2],
  "ilse"  = list_paths[["ilse"]],#[1:2],
  "lasa"  = list_paths[["lasa"]],#[1:2],
  "map"   = list_paths[["map"]],#[1-2],
  "nas"   = list_paths[["nas"]],#[20]
  "nuage" = list_paths[["nuage"]],#[1:2] ,
  "octo"  = list_paths[["octo"]],#[1:2],
  "satsa" = list_paths[["satsa"]] #[1:2]
)

# Parse model outputs from each study at a time
collect_study(study="eas", selected_results)
# collect_study(study="elsa", selected_results)
# collect_study(study="hrs", selected_results)
# collect_study(study="ilse", selected_results)
# collect_study(study="lasa", selected_results)
# collect_study(study="map", selected_results)
# collect_study(study="nas", selected_results)
# collect_study(study="nuage", selected_results)
# collect_study(study="octo", selected_results)
# collect_study(study="satsa", selected_results)

# ---- combine-results ---------------------------------------------------------
# combine results files from each study
(results_studies <- list.files("./data/shared/phys-cog/", pattern = "^pc-catalog-\\w+\\.csv$", full.names =T) )
dtos <- list()
for(i in seq_along(results_studies)){
  dtos[[i]] <- read.csv(results_studies[i], header=T, stringsAsFactors = F)
}
catalog <- plyr::ldply(dtos, data.frame)

# ---- quality-control ---------------------------------------------------------
duplicates <- catalog %>%
  dplyr::group_by_(.dots = model_components$id) %>%
  dplyr::summarize(n = n()) %>%
  dplyr::arrange(desc(n))
testit::assert("Pool contains duplicates", max(duplicates$n)==1)
# look up specific models
# catalog %>%
#   dplyr::filter(study_name == "elsa") %>%
#   dplyr::filter(model_type == "aehplus") %>%
#   dplyr::filter(process_a == "gait" & process_b == "trailsb") %>%
#   dplyr::select_(.dots = c(model_components$id,"file_path"))
#
#
# catalog %>%
#   dplyr::filter(study_name == "elsa") %>%
#   dplyr::filter(model_type == "aehplus") %>%
#   dplyr::select(study_name, model_type,process_a, process_b, R_IAIB_est)


# ---- save-to-disk ------------------------------------------------------------
write.csv(catalog,  paste0("./data/shared/pc-0-catalog-raw.csv"), row.names=F)



