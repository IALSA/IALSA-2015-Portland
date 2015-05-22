## This script corrects irregularities in the naming of the output files

rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

#####################################
## @knitr load_sources
# source("./scripts/0_collect_studies.R")
# source("./scripts/1_combine_and_extend.R")


#####################################
## @knitr load_packages
library(knitr)
library(testit, quietly=TRUE) #For asserts
library(dplyr)

## @knitr load_data
ds1 <- readRDS('./data/shared/ds1.rds')


## @knitr inspect_naming
ds <- ds1 %>% dplyr::filter(study_name=="eas")

ds %>% dplyr::count(physical_construct)
ds %>% dplyr::count(physical_measure)


## @knitr bring_forth_wrong
ds %>% dplyr::filter(physical_construct=="nophysspec") %>% select(output_file)
ds %>% dplyr::filter(physical_measure=="NA") %>% select(output_file)

d <- ds %>% dplyr::filter(model_number=="u1", subgroup=="female", model_type=="aeh") %>% select(output_file)

table(ds$physical_measure,ds$model_number, useNA="always")
table(ds$physical_measure,ds$subgroup, useNA="always")
table(ds$physical_measure,ds$model_type, useNA="always")

## @knitr fix_phys_construct
#### Corrections to PHYSICAL outcome ####
ds[ds$physical_construct==" pulmonary","physical_construct"] <- "pulmonary"

table(ds$physical_construct, ds$study_name)

ds$physical_construct <- tolower(stringr::str_trim(ds$physical_construct))

#### corrections to CovSet in model_type ####
ds[ds$model_type=="age","model_type"] <- "a"


## @knitr fix_phys_measure
#### Correction to PHYSICAL SPECIFIC ####

table(ds$physical_measure, ds$study_name)
ds$physical_measure <- tolower(stringr::str_trim(ds$physical_measure))


## @knitr fix_cog_construct
#### Corrections to the COGNITIVE outcome ####
# sort(unique(ds$cognitive_construct))
# table(ds$cognitive_construct)
ds[ds$cognitive_construct==" knowledge","cognitive_construct"] <- "knowledge"
table(ds$cognitive_construct, ds$study_name)

ds$cognitive_construct <- tolower(stringr::str_trim(ds$cognitive_construct))

# tbl <- table(ds$physical_construct, ds$cognitive_construct, ds$study_name)
# ftable(tbl)


## @knitr fix_cog_measure
#### Correction to COGNITIVE SPECIFIC ####
ds$cognitive_measure <- tolower(stringr::str_trim(ds$cognitive_measure))


ds[!is.na(ds$cognitive_measure) & ds$cognitive_measure=="bostonmaning", c("study_name", "cognitive_measure")][,2] <- "bostonnaming"


ds[!is.na(ds$cognitive_measure) & ds$cognitive_measure=="digitsback", c("study_name", "cognitive_measure")][,2] <- "digitbackward"

ds[!is.na(ds$cognitive_measure) & ds$cognitive_measure=="digitsymol", c("study_name", "cognitive_measure")][,2] <- "digitsymbol"

