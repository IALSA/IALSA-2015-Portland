options(width=160)
rm(list=ls())
cat("\f")

library(MplusAutomation)

## @knitr setPaths

pathDir <- getwd() # establish home directory
pathStudies <- file.path(pathDir,"studies")
list.files(pathStudies) # inspect participating studies

## @knitr setGlobals
studies <- c("eas", "elsa")
out_list_all <- list.files(pathStudies, full.names=T, recursive=T, pattern="out$")

## @knitr loadFunctionsThatCollect
source("./scripts/0a_functions_that_collect.R")

## @knitr find.Conflicts
find.Conflicts("eas")
find.Conflicts("elsa")
find.Conflicts("habc")
# find.Conflicts("hrs")
find.Conflicts("ilse")
# find.Conflicts("lasa")
find.Conflicts("nas")
# find.Conflicts("nshd")
find.Conflicts("nuage")
find.Conflicts("obas")
find.Conflicts("octo")
find.Conflicts("radc")
find.Conflicts("satsa")




## @knitr find.CI
find.CI(study = "eas")
find.Conflicts("elsa")
find.CI(study = "habc")
# find.CI("hrs")
find.CI("ilse")
# find.CI("lasa")
find.CI("nas")
# find.CI("nshd")
find.CI("nuage")
find.CI("obas")
find.CI("octo")
find.CI("radc")
find.CI("satsa")


## Each of the following collects models in the specific study and places them in a .csv file
## these data transfer objects (dto) are then fed to 1_prepare_for_reporting.R

## @knitr get.Models
get.Models("eas")
get.Models("elsa")
get.Models("habc")
# get.Models("hrs")
get.Models("ilse")
# get.Models("lasa")
get.Models("nas")
# get.Models("nshd")
get.Models("nuage")
get.Models("obas")
get.Models("octo")
get.Models("radc")
get.Models("satsa")

