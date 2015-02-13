# remove all elements for a clean start
rm(list=ls(all=TRUE))



## @knitr LoadData
pathDir <- getwd() # establish home directory
pathDtoBivariate <- file.path(pathDir,"studies/ELSA/dto_bivariate.csv")

dto_ELSA <- read.csv(pathDtoBivariate, header=TRUE, stringsAsFactors=FALSE )
str(dto_ELSA)
