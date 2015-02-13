# remove all elements for a clean start
rm(list=ls(all=TRUE))



## @knitr LoadData
pathDir <- getwd() # establish home directory
pathELSAdto <- file.path(pathDir,"studies/ELSA/dto_ELSA.csv")

dto_ELSA <- read.csv(pathELSAdto, header=TRUE)
