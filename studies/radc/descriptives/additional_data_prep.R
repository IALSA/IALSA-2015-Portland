
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

#Filtering out individuals with dementia diagnosis at any time point.
filter(ds0, dementia.00==0|-9999, dementia.01==0|-9999, dementia.02==0|-9999,
dementia.03==0|-9999, dementia.04==0|-9999, dementia.05==0|-9999, dementia.06==0|-9999,
dementia.07==0|-9999, dementia.08==0|-9999, dementia.09==0|-9999, dementia.10==0|-9999,
dementia.11==0|-9999, dementia.12==0|-9999, dementia.13==0|-9999, dementia.14==0|-9999,
dementia.15==0|-9999, dementia.16==0|-9999, dementia.17==0|-9999, dementia.18==0|-9999,
dementia.19==0|-9999, dementia.20==0|-9999)



