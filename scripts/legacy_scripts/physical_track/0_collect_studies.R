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
# out_list_all <- list.files(pathStudies, full.names=T, recursive=T, pattern="out$")

a <- list.files(file.path(pathStudies,"eas/physical"),full.names=T, recursive=T, pattern="out$")
b <- list.files(file.path(pathStudies,"elsa/physical"),full.names=T, recursive=T, pattern="out$")
# c <- list.files(file.path(pathStudies,"habc/physical"),full.names=T, recursive=T, pattern="out$")
d <- list.files(file.path(pathStudies,"hrs/physical"),full.names=T, recursive=T, pattern="out$")
e <- list.files(file.path(pathStudies,"ilse/physical"),full.names=T, recursive=T, pattern="out$")
f <- list.files(file.path(pathStudies,"lasa/physical"),full.names=T, recursive=T, pattern="out$")
# g <- list.files(file.path(pathStudies,"nas/physical"),full.names=T, recursive=T, pattern="out$")
h <- list.files(file.path(pathStudies,"nuage/physical"),full.names=T, recursive=T, pattern="out$")
i <- list.files(file.path(pathStudies,"octo/OUTPUT_files/physical"),full.names=T, recursive=T, pattern="out$")
j <- list.files(file.path(pathStudies,"radc/outputs/physical"),full.names=T, recursive=T, pattern="out$")
# k <- list.files(file.path(pathStudies,"satsa/physical"),full.names=T, recursive=T, pattern="out$")
model_path <- c(a,b, d, e, f, h, i, j)
# i <- length(out_list_all)
# i
study_name <- list()
for(i in 1:length(model_path)){
  a <- strsplit(model_path[i], split="/")
  selector <- a[[1]] %in% c("studies")
  element_number <- c(1:length(selector))[selector]
  study_name[i] <- a[[1]][element_number+1]
}

out_list_all <- list()
out_list_all[["path"]] <- model_path
out_list_all[["study"]] <- study_name
names(out_list_all)

#### Extra ####
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

#####    #####
## Each of the following collects models in the specific study and places them in a .csv file
## these data transfer objects (dto) are then fed to 1_prepare_for_reporting.R

## @knitr get.Models
# study <- "ilse"
# source("./scripts/0a_collection_functions.R")

# studies <- c("eas","elsa", "habc", "ilse", "nas", "nuage", "octo")


study <- "eas"
blacklist <- c("u2_male_ae_pulmonary_noCog_pek_noCogSpec.out")
# source("./scripts/0a_collection_functions.R")
source("./scripts/physical_track/0a_collection_functions.R")

study <- "elsa"
# source("./scripts/0a_collection_functions.R")
source("./scripts/physical_track/0a_collection_functions.R")

# study <- "habc" # not presently included
# source("./scripts/0a_collection_functions.R")

study <- "hrs" # not presently included
# blacklist <- c("b1_female_aeh_muscle_memory_hand_delayedrecall.out",
#                "b1_female_aeh_pulmonary_memory_peak_delayedrecall.out",
#                "b1_male_age_walking_mental_gait_tics.out",
#                "b1_female_aeh_muscle_memory_hand_immediaterecall.out")
# source("./scripts/0a_collection_functions.R")
source("./scripts/physical_track/0a_collection_functions.R")


study <- "ilse"
# source("./scripts/0a_collection_functions.R")
source("./scripts/physical_track/0a_collection_functions.R")


study <- "lasa"
source("./scripts/physical_track/0a_collection_functions.R")


# study <- "nas"
# source("./scripts/physical_track/0a_collection_functions.R")

study <- "nuage"
source("./scripts/physical_track/0a_collection_functions.R")

study <- "octo"
source("./scripts/physical_track/0a_collection_functions.R")

study <- "radc"
source("./scripts/physical_track/0a_collection_functions.R")

# study <- "satsa"
# source("./scripts/physical_track/0a_collection_functions.R")

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


