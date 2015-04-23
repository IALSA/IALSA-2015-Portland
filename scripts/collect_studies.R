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



findConflicts("eas")
findConflicts("habc")

