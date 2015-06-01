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
# ds <- ds1 %>% dplyr::filter(study_name=="satsa")
ds <- ds1
# ds <- ds1[ds1$study_name=="eas",]

nrow(ds)
## @knitr remove_omissions
desired_subpart_count <- 7L # necessary number of componets in legal filename
ds$model_name <- gsub(pattern=".out",replacement="",ds$output_file) # remove .out ending
subparts <- strsplit(ds$model_name,"_") # break up each  model_name, store in a list
subpart_count <- sapply(subparts, length) # count compents in each element of the list
is_valid <- (subpart_count==desired_subpart_count) # create logical vector
length(ds$output_file[!is_valid]) # that many models with omitted elements in the name

if(sum(!is_valid)>0){ print(ds$output_file[!is_valid])}else{
  cat("All your models were named properly")
}
ds <- ds[is_valid,] # keep only the legal names

## @knitr common_corrections

#### corrections to CovSet in model_type ####
ds[ds$model_type=="age","model_type"] <- "a" # rename for sorting/consistency purposes

#### make all lowercase ####
ds$physical_construct <- tolower(stringr::str_trim(ds$physical_construct))
ds$physical_measure <- tolower(stringr::str_trim(ds$physical_measure))
ds$cognitive_construct <- tolower(stringr::str_trim(ds$cognitive_construct))
ds$cognitive_measure <- tolower(stringr::str_trim(ds$cognitive_measure))


#### look for bad names ####

ds %>% dplyr::count(model_number)
ds %>% dplyr::count(subgroup)
ds %>% dplyr::count(model_type)
ds %>% dplyr::count(physical_construct)
ds %>% dplyr::count(physical_measure)
ds %>% dplyr::count(cognitive_construct)
ds %>% dplyr::count(cognitive_measure)
ds %>% dplyr::count(output_file)

table(ds$model_number)
table(ds$subgroup)
table(ds$model_type)
table(ds$physical_construct)
table(ds$physical_measure)
table(ds$cognitive_construct)
table(ds$cognitive_measure)
table(ds$output_file)

## @knitr bring_forth_wrong
ds %>% dplyr::filter(physical_construct=="nophysspec") %>% select(output_file)
ds %>% dplyr::filter(physical_measure=="nocogspec") %>% select(output_file)
ds %>% dplyr::filter(cognitive_construct=="nophysspec") %>% select(output_file)
ds %>% dplyr::filter(cognitive_measure=="nostonnaming") %>% select(output_file)


d <- ds %>% dplyr::filter(model_number=="u1", subgroup=="female", model_type=="aeh") %>% select(output_file)

table(ds$physical_measure,ds$model_number, useNA="always")
table(ds$physical_measure,ds$subgroup, useNA="always")
table(ds$physical_measure,ds$model_type, useNA="always")


#### Corrections to model_type ####
ds[ds$model_type=="aheplus","model_type"] <- "aehplus"


#### Corrections to PHYSICAL construct ####
ds[ds$physical_construct=="nophysspec","physical_construct"] <- "nophys"
ds[ds$physical_construct=="pumonary","physical_construct"] <- "pulmonary"

#### Correction to PHYSICAL measure ####
ds[ds$cognitive_construct %in% c(" knowledge", "knoledge", "knowlegde"),"cognitive_construct"] <- "knowledge"

#### Corrections to the COGNITIVE construct ####
ds[ds$physical_measure %in% c("nophsyspec","nophyspec","nophyssec","nophyscog" ),"physical_measure"] <- "nophysspec"

#### Correction to COGNITIVE measure ####
ds[ds$cognitive_measure %in% c("bostonmaning","nostonnaming"),"cognitive_measure"] <- "bostonnaming"
ds[ds$cognitive_measure %in% c("wasivocab"),"cognitive_measure"] <- "waisvocab"

ds[ds$cognitive_measure %in% c("digitsymol"),"cognitive_measure"] <- "digitsymbol"


saveRDS(ds,"./data/shared/ds1a.rds") # save corrected dataset

#### Test the naming ####




#
# ## @knitr fix_phys_construct
#
# ##
# ds[ds$physical_construct==" pulmonary","physical_construct"] <- "pulmonary"
#
# table(ds$physical_construct, ds$study_name)
#
# ## @knitr fix_phys_measure
# table(ds$physical_measure, ds$study_name)
#
# # @knitr fix_cog_construct
#
# # sort(unique(ds$cognitive_construct))
# # table(ds$cognitive_construct)
#
# table(ds$cognitive_construct, ds$study_name)
#
#
#
# # tbl <- table(ds$physical_construct, ds$cognitive_construct, ds$study_name)
# # ftable(tbl)
#
#
# ## @knitr fix_cog_measure
#
#
#
#
# ds[!is.na(ds$cognitive_measure) & ds$cognitive_measure=="bostonmaning", c("study_name", "cognitive_measure")][,2] <- "bostonnaming"
#
# ds[!is.na(ds$cognitive_measure) & ds$cognitive_measure=="digitsback", c("study_name", "cognitive_measure")][,2] <- "digitbackward"
#
# ds[!is.na(ds$cognitive_measure) & ds$cognitive_measure=="digitsymol", c("study_name", "cognitive_measure")][,2] <- "digitsymbol"

