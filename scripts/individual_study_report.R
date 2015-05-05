rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.
#####################################
## @knitr load_sources



#####################################
## @knitr load_packages
# library(xtable)
# library(printr)
library(knitr)
library(scales) #For formating values in graphs
library(RColorBrewer)
# library(reshape2) #For converting wide to long
library(grid) #For graphing
library(ggplot2) #For graphing
library(testit, quietly=TRUE) #For asserts

## @knitr load_data
dsb <- readRDS('./data/shared/dsb.rds')
ds <- dsb[ , c("model_number","study_name", "model_type","physical_outcome","cognitive_outcome","physical_specific","cognitive_specific", "output_file")]

## @knitr dummy
# key columns/variables
keycol <- c("model_number"="Alpha numeric ","study_name","converged", )
keycolF <- factor(ds$keycol, values

unique(dsb$study_name)

names(dsb)

## @knitr number_studies
length(dsb$study_name)


## @knitr missing_studies
pathDir <- getwd() # establish home directory
pathStudies <- file.path(pathDir,"studies")
misslong <- list.dirs(pathStudies, recursive = F)
missing <- gsub("C:/Users/andkov/Documents/GitHub/IALSA-2015-Portland/studies/","",misslong)
present <- unique(dsb$study_name)
miss <- missing[!(missing %in% present)]
miss


## @knitr freq_studies
t1<-table(dsb$study_name)
t1[t1==0] <- "."
t1

## @knitr freq_phys_studies
t2 <- table(dsb$physical_outcome,dsb$study_name)
t2[t2==0] <- "."
t2

## @knitr freq_cog_studies
t3 <- table(dsb$cognitive_outcome,dsb$study_name)
t3[t3==0] <- "."
t3

## @knitr freq_cog_phys
t4 <- table(dsb$cognitive_outcome,dsb$physical_outcome)
t4[t4==0] <- "."
t4

## @knitr freq_cog_phys_studies

# for(study in present){
#   ds <- dsb[dsb$study==study,]
#   t5 <- table(ds$cognitive_outcome,ds$physical_outcome)
#   t5[t5==0] <- "."
#
# #   cat("\n")
#   cat(paste0("Study: ",study))
#   t5
# }

t5 <- table(dsb$study,dsb$cognitive_outcome,dsb$physical_outcome)
t5[t5==0] <- "."
ftable(t5)
