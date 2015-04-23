options(width=160)
rm(list=ls())
cat("\f")

library(MplusAutomation)

## @knitr setPaths

pathDir <- getwd() # establish home directory
pathStudy <- file.path(pathDir,"studies") 
list.files(pathStudy)
