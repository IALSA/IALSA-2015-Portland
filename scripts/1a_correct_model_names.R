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

ds %>% dplyr::count(physical_outcome)
ds %>% dplyr::count(physical_specific)


## @knitr bring_forth_wrong
ds %>% dplyr::filter(physical_outcome=="nophysspec") %>% select(output_file)
ds %>% dplyr::filter(physical_specific=="NA") %>% select(output_file)

d <- ds %>% dplyr::filter(model_number=="u1", subgroup=="female", model_type=="aeh") %>% select(output_file)

table(ds$physical_specific,ds$model_number, useNA="always")
table(ds$physical_specific,ds$subgroup, useNA="always")
table(ds$physical_specific,ds$model_type, useNA="always")

## @knitr fix_phys_construct
#### Corrections to PHYSICAL outcome ####
ds[ds$physical_outcome==" pulmonary","physical_outcome"] <- "pulmonary"

table(ds$physical_outcome, ds$study_name)

ds$physical_outcome <- tolower(stringr::str_trim(ds$physical_outcome))

#### corrections to CovSet in model_type ####
ds[ds$model_type=="age","model_type"] <- "a"


## @knitr fix_phys_measure
#### Correction to PHYSICAL SPECIFIC ####

table(ds$physical_specific, ds$study_name)
ds$physical_specific <- tolower(stringr::str_trim(ds$physical_specific))


## @knitr fix_cog_construct
#### Corrections to the COGNITIVE outcome ####
# sort(unique(ds$cognitive_outcome))
# table(ds$cognitive_outcome)
ds[ds$cognitive_outcome==" knowledge","cognitive_outcome"] <- "knowledge"
table(ds$cognitive_outcome, ds$study_name)

ds$cognitive_outcome <- tolower(stringr::str_trim(ds$cognitive_outcome))

# tbl <- table(ds$physical_outcome, ds$cognitive_outcome, ds$study_name)
# ftable(tbl)


## @knitr fix_cog_measure
#### Correction to COGNITIVE SPECIFIC ####
ds$cognitive_specific <- tolower(stringr::str_trim(ds$cognitive_specific))


ds[!is.na(ds$cognitive_specific) & ds$cognitive_specific=="bostonmaning", c("study_name", "cognitive_specific")][,2] <- "bostonnaming"


ds[!is.na(ds$cognitive_specific) & ds$cognitive_specific=="digitsback", c("study_name", "cognitive_specific")][,2] <- "digitbackward"

ds[!is.na(ds$cognitive_specific) & ds$cognitive_specific=="digitsymol", c("study_name", "cognitive_specific")][,2] <- "digitsymbol"

