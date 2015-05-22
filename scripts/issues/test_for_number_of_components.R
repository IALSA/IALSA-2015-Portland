rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.




#####################################
## @knitr load_packages

library(testit, quietly=TRUE) #For asserts
library(dplyr)

## @knitr load_data
dsb <- readRDS('./data/shared/dsb.rds')

##
ds <- dplyr::select(dsb, model_number, subgroup, model_type, physical_outcome, cognitive_outcome, physical_specific, cognitive_specific, output_file)

head(ds)
ds$short <- gsub(".out","",ds$output_file)
a <- strsplit(ds$short,"_")

## needed test: ff a is less than 7 components, then print output_file
