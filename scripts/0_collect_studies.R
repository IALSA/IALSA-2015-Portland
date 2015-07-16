options(width=160)
rm(list=ls())
cat("\f")

library(MplusAutomation)

## @knitr setPaths

pathDir <- getwd() # establish home directory
pathStudies <- file.path(pathDir,"studies")
list.files(pathStudies) # inspect participating studies

## @knitr setGlobals
# studies <- c("eas", "elsa")
out_list_all <- list.files(pathStudies, full.names=T, recursive=T, pattern="out$")

## @knitr loadFunctionsThatCollect
# source("./scripts/0a_functions_that_collect.R")
# source("./scripts/0a_collection_functions.R")
#
# ## @knitr find.Conflicts
# find.Conflicts("eas")
# find.Conflicts("elsa")
# find.Conflicts("habc")
# # find.Conflicts("hrs")
# find.Conflicts("ilse")
# # find.Conflicts("lasa")
# # find.Conflicts("nas")
# # find.Conflicts("nshd")
# find.Conflicts("nuage")
# find.Conflicts("obas")
# find.Conflicts("octo")
# # find.Conflicts("radc")
# find.Conflicts("satsa")
#
#
#
#
# ## @knitr find.CI
# find.CI(study = "eas")
# find.CI("elsa")
# find.CI(study = "habc")
# # find.CI("hrs")
# find.CI("ilse")
# # find.CI("lasa")
# # find.CI("nas")
# # find.CI("nshd")
# find.CI("nuage")
# find.CI("obas")
# find.CI("octo")
# # find.CI("radc")
# find.CI("satsa")
#

## Each of the following collects models in the specific study and places them in a .csv file
## these data transfer objects (dto) are then fed to 1_prepare_for_reporting.R

## @knitr get.Models
# study <- "ilse"
# source("./scripts/0a_collection_functions.R")

# studies <- c("eas","elsa", "habc", "ilse", "nas", "nuage", "octo")


study <- "eas"
blacklist <- c("u2_male_ae_pulmonary_noCog_pek_noCogSpec.out")
source("./scripts/0a_collection_functions.R")

study <- "elsa"
source("./scripts/0a_collection_functions.R")

study <- "habc" # not presently included
source("./scripts/0a_collection_functions.R")

study <- "hrs" # not presently included
blacklist <- c("b1_female_aeh_muscle_memory_hand_delayedrecall.out",
               "b1_female_aeh_pulmonary_memory_peak_delayedrecall.out",
               "b1_male_age_walking_mental_gait_tics.out",
               "b1_female_aeh_muscle_memory_hand_immediaterecall.out")
source("./scripts/0a_collection_functions.R")

study <- "ilse"
source("./scripts/0a_collection_functions.R")

study <- "nas"
source("./scripts/0a_collection_functions.R")

study <- "nuage"
source("./scripts/0a_collection_functions.R")

study <- "octo"
source("./scripts/0a_collection_functions.R")

study <- "radc"
source("./scripts/0a_collection_functions.R")

study <- "satsa"
source("./scripts/0a_collection_functions.R")

# get_models("eas")
# get_models("elsa")
# get_models("habc")
# # get_models("hrs")
# get_models("ilse")
# # get_models("lasa")
# get_models("nas")
# # get_models("nshd")
# get_models("nuage")
# get_models("obas")
# get_models("octo")
# get_models("radc")
# get_models("satsa")


