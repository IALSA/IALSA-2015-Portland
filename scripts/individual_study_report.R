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
keepvar <- c("model_number","study_name", "model_type","physical_outcome","cognitive_outcome","physical_specific","cognitive_specific", "output_file")

ds <- dsb[ , keepvar]

## @knitr dummy
# key columns/variables
keycol <- c("model_number"="Alpha numeric ","study_name","converged", )
keycolF <- factor(ds$keycol, values

unique(dsb$study_name)

names(dsb)

## @knitr all_freqs
length(dsb$study_name)
table(dsb$study_name)
table(dsb$physical_outcome,dsb$study_name)
table(dsb$cognitive_outcome,dsb$study_name)
t1 <- table(dsb$study_name, dsb$cognitive_outcome,dsb$physical_outcome)
ftable(t1)
















