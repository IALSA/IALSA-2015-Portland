rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.




#####################################
## @knitr load_packages

library(testit, quietly=TRUE) #For asserts
library(dplyr)

## @knitr load_data
ds1 <- readRDS('./data/shared/ds1.rds')

##
ds <- dplyr::select(ds1, model_number, subgroup, model_type, physical_constructphysical_construct, cognitive_construct, physical_measure, cognitive_measure, output_file)


desired_subpart_count <- 7L
ds$short <- gsub(".out","",ds$output_file)
subparts <- strsplit(ds$short,"_")
subpart_count <- sapply(subparts, length)
is_valid <- (subpart_count==desired_subpart_count)

ds$output_file[!is_valid]
