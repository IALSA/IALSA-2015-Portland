rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.
#####################################
## @knitr load_sources
dsb <- readRDS('./data/shared/dsb.rds')

# key columns/variables
keycol <- c("model_number"="Alpha numeric ","study_name","converged", )


keycolF <- factor(ds$keycol, values

unique(dsb$study_name)

names(dsb)

#####################################
## @knitr load_packages
# library(xtable)
library(knitr)
library(scales) #For formating values in graphs
library(RColorBrewer)
# library(reshape2) #For converting wide to long
library(grid) #For graphing
library(ggplot2) #For graphing
library(testit, quietly=TRUE) #For asserts


