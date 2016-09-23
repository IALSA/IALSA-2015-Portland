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
pathStudies <- file.path("./data/shared/covariance-issue/studies")
list.files(pathStudies) # inspect participating studies

# Verify these packages are available on the machine, but their functions need to be qualified: http://r-pkgs.had.co.nz/namespace.html#search-path
requireNamespace("ggplot2")
requireNamespace("tidyr")
requireNamespace("dplyr") #Avoid attaching dplyr, b/c its function names conflict with a lot of packages (esp base, stats, and plyr).
requireNamespace("testit") #For asserting conditions meet expected patterns.


# ---- get-out-paths ---------------------------------------------------------
## point to the folders with results for physical-physical track
eas   <- list.files(file.path(pathStudies,"eas"),full.names=T, recursive=T, pattern="out$")
# elsa  <- list.files(file.path(pathStudies,"elsa/physical"),full.names=T, recursive=T, pattern="out$")
# hrs   <- list.files(file.path(pathStudies,"hrs/physical"),full.names=T, recursive=T, pattern="out$")
# ilse  <- list.files(file.path(pathStudies,"ilse/physical"),full.names=T, recursive=T, pattern="out$")
# lasa  <- list.files(file.path(pathStudies,"lasa/physical"),full.names=T, recursive=T, pattern="out$")
# nuage <- list.files(file.path(pathStudies,"nuage/physical"),full.names=T, recursive=T, pattern="out$")
# octo  <- list.files(file.path(pathStudies,"octo/physical"),full.names=T, recursive=T, pattern="out$")
# map   <- list.files(file.path(pathStudies,"map/physical"),full.names=T, recursive=T, pattern="out$")
# satsa <- list.files(file.path(pathStudies,"satsa/physical"),full.names=T, recursive=T, pattern="out$")

# list_pp <-  list(
list_outs<-  list(
  "eas"   = eas#,
  # "elsa"  = elsa,
  # "hrs"   = hrs,
  # "ilse"  = ilse,
  # "lasa"  = lasa,
  # "nuage" = nuage,
  # "octo"  = octo#,
  # "map"   = map,
  # "satsa" = satsa
  )
# Now the object contains paths to files with model outputs
list_outs[["eas"]]

# ---- function-to-collect ---------------------------------------------------------
# study = "lasa"; i = 1
collect_study <- function(study, selected_results){
  # create a file to populated, helps organize model output
  # selected_results is defined in group_variables.R, it provides the list of vars to be selected
  results <- data.frame(matrix(NA, ncol = length(selected_results) ))
  names(results) <- selected_results
  for(i in seq_along(list_outs[[study]])){
    (collected <- collect_result(path=list_outs[[study]][i]))
    (collected_names <- names(collected))
    results[i, collected_names] <- collected
  }
  write.csv(results,  paste0(pathStudies,"/parsed-",study,".csv"), row.names=F)
  return(results)
}

# ---- collect-studies ---------------------------------------------------------
collect_study(study="eas", selected_results)
# collect_study(study="elsa", selected_results)
# collect_study(study="hrs", selected_results)
# collect_study(study="ilse", selected_results)
# collect_study(study="lasa", selected_results)
# collect_study(study="map", selected_results)
# collect_study(study="nuage", selected_results)
# collect_study(study="octo", selected_results)
# collect_study(study="satsa", selected_results)

# ---- combine-studies ---------------------------------------------------------
# combine results files from each study
# (combine_studies <- list.files("./data/shared/phys-cog/", pattern = "^parsed-results-pc-\\w+\\.csv$", full.names =T) )
(combine_studies <- list.files(pathStudies, pattern = "^parsed-\\w+\\.csv$", full.names =T) )
# (combine_studies <- list.files("./data/shared/", pattern = "^parsed-results-pc-elsa", full.names =T) )
dtos <- list()
for(i in seq_along(combine_studies)){
  dtos[[i]] <- read.csv(combine_studies[i], header=T, stringsAsFactors = F)
}
results <- plyr::ldply(dtos, data.frame)
# explore dplyr::bind_rows() for a better solution
head(results[,c("study_name","a_GAMMA_14_est")]) # example

# ---- dto ---------------------------------------------------------
write.csv(results,  paste0(pathStudies,"/0-parsed-results-raw.csv"), row.names=F)






