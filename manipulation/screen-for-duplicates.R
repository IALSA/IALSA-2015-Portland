rm(list=ls(all=TRUE))  #Clear the variables from previous runs.
cat("\f") # clear console

# ---- load-sources ------------------------------------------------------------
# Call `base::source()` on any repo file that defines functions needed below.  Ideally, no real operations are performed.
source("./scripts/mplus/group-variables.R")
source("./scripts/mplus/extraction-functions-auto.R")
source("./scripts/common-functions.R")

# ---- load-packages -----------------------------------------------------------
# Attach these packages so their functions don't need to be qualified: http://r-pkgs.had.co.nz/namespace.html#search-path
library(magrittr) #Pipes
library(MplusAutomation)
library(IalsaSynthesis)


# ---- duplicates-in-catalog -------------------
# catalog <- read.csv("./data/shared/pc-0-catalog-raw.csv", header = T,  stringsAsFactors=FALSE)
# catalog <- read.csv("./data/shared/pc-1-catalog-clean.csv", header = T,  stringsAsFactors=FALSE)
catalog <- read.csv("./data/shared/pc-2-catalog-augmented.csv", header = T,  stringsAsFactors=FALSE)

# ---- quality-control ---------------------------------------------------------
duplicates <- catalog %>%
  dplyr::group_by_(.dots = model_components$id) %>%
  dplyr::summarize(n = n()) %>%
  dplyr::arrange(desc(n))
testit::assert("Pool contains duplicates", max(duplicates$n)==1)
# look up specific models
catalog %>%
  dplyr::filter(study_name == "map") %>%
  dplyr::filter(model_type == "aeh") %>%
  dplyr::filter(process_a == "grip" & process_b == "categories") %>%
  dplyr::select_(.dots = c(model_components$id,"file_path"))

# check specific indices
catalog %>%
  dplyr::filter(model_number == "b1") %>%
  dplyr::filter(study_name == "map") %>%
  dplyr::filter(model_type == "aehplus") %>%
  dplyr::select(study_name, model_type,process_a, process_b,has_converged, er_tau_00_est)




  # ---- check-folder-contents ---------------------------
  feb27 <-  list.files(
    "./studies/satsa/physical-cognitive/plus_models/2015-02-27",
    full.names=F, recursive=T, pattern="out$")

  jun16 <-  list.files(
    "./studies/satsa/physical-cognitive/plus_models/2015-06-16",
    full.names=F, recursive=T, pattern="out$")

  nov06 <-  list.files(
    "./studies/satsa/physical-cognitive/plus_models/2015-11-06",
    full.names=F, recursive=T, pattern="out$")

  nov14 <-  list.files(
    "./studies/satsa/physical-cognitive/plus_models/2016-11-14",
    full.names=F, recursive=T, pattern="out$")




  # feb27
  # jun16
  # nov06
  # nov14

  intersect(feb27, jun16)
  intersect(feb27, nov06)
  intersect(feb27, nov14) #
  setdiff(feb27, nov14) # unique to first

  file.copy(from, to, overwrite = recursive, recursive = FALSE,
            copy.mode = TRUE, copy.date = FALSE)


  intersect(jun16, nov06)
  intersect(jun16, nov14)

  intersect(nov06, nov14)
