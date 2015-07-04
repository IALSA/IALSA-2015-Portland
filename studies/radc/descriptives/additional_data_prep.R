
# remove all elements for a clean start
rm(list=ls(all=TRUE))
cat("\014")
library(foreign)
library(plyr)
library(dplyr)

pathDir <- getwd() # set the Root directory
pathRADC <- file.path(pathDir,"studies/radc/unshared/radcMAP_wide.dat")
pathName <- file.path(pathDir,"studies/radc/descriptives/radc_wide_Variablenames.txt")
ds0 <- read.table(pathRADC, header=F) # import ground-0 object
radcNames <- read.table(pathName) # import the names of variables

head(radcNames)
a <- as.vector(radcNames[,1])
class(a)
str(a)

names(ds0) <- as.vector(radcNames[,1]) # adding variable names

#Creating a variable to identify female participants without dementia.
ds0$includeF <- ifelse(('msex' == 0 & 'dementia.00' != 1 & 'dementia.01' !=1 &
'dementia.02' !=1 & 'dementia.03' !=1 & 'dementia.04' !=1 & 'dementia.05' !=1 & 'dementia.06' !=1 &
'dementia.07' !=1 & 'dementia.08' !=1 & 'dementia.09' !=1 &'dementia.10' !=1 &
'dementia.11' !=1 & 'dementia.12' !=1 & 'dementia.13' !=1 & 'dementia.14' !=1 &
'dementia.15' !=1 & 'dementia.16' !=1 & 'dementia.17' !=1 & 'dementia.18' !=1 &
'dementia.19' !=1 & 'dementia.20' !=1) , 1,0)

#Creating a variable to identify male cases without dementia.
ds0$includeM <- ifelse(('msex' == 1 &'dementia.00' != 1 & 'dementia.01' !=1 & 'dementia.02' !=1 &
'dementia.03' !=1 & 'dementia.04' !=1 & 'dementia.05' !=1 & 'dementia.06' !=1 &
'dementia.07' !=1 & 'dementia.08' !=1 & 'dementia.09' !=1 &'dementia.10' !=1 &
'dementia.11' !=1 & 'dementia.12' !=1 & 'dementia.13' !=1 & 'dementia.14' !=1 &
'dementia.15' !=1 & 'dementia.16' !=1 & 'dementia.17' !=1 & 'dementia.18' !=1 &
'dementia.19' !=1 & 'dementia.20' !=1) , 1,0)

#Creating data subset for included female participants.
radcMapF <- subset(ds0, includeF==1,)

