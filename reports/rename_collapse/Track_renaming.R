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
ds1 <- readRDS('./data/shared/ds0.rds')
# ds <- ds1 %>% dplyr::filter(study_name=="satsa")
ds <- ds1 %>% dplyr::arrange_("cognitive_measure")
# ds <- ds1[ds1$study_name=="eas",]
head(ds[c("cognitive_construct","cognitive_measure","output_file")])
tail(ds[c("cognitive_construct","cognitive_measure","output_file")])

nrow(ds)


## @knitr remove_omissions
desired_subpart_count <- 7L # necessary number of componets in legal filename
ds$model_name <- gsub(pattern=".out",replacement="",ds$output_file) # remove .out ending
subparts <- strsplit(ds$model_name,"_") # break up each  model_name, store in a list
subpart_count <- sapply(subparts, length) # count compents in each element of the list
is_valid <- (subpart_count==desired_subpart_count) # create logical vector
length(ds$output_file[!is_valid]) # that many models with omitted elements in the name

# Define what models have invalid names and print them
if(sum(!is_valid)>0){ print(ds$output_file[!is_valid])}else{
  cat("All your models were named properly")
}
ds <- ds[is_valid,] # keep only model the valid names
nrow(ds) # how many models we ended up with.

## @knitr make_all_lower
ds$physical_construct <- tolower(stringr::str_trim(ds$physical_construct))
ds$physical_measure <- tolower(stringr::str_trim(ds$physical_measure))
ds$cognitive_construct <- tolower(stringr::str_trim(ds$cognitive_construct))
ds$cognitive_measure <- tolower(stringr::str_trim(ds$cognitive_measure))




## @knitr spell_model_number
t <- table(ds$model_number, ds$study_name);t[t==0]<-".";t


## @knitr spell_subgroup
t <- table(ds$subgroup, ds$study_name);t[t==0]<-".";t



## @knitr spell_model_type
t <- table(ds$model_type, ds$study_name);t[t==0]<-".";t

## @knitr correct_model_type
# rename obvious typo
ds[ds$model_type=="aheplus","model_type"] <- "aehplus"
# rename values for consistency
ds[ds$model_type=="age","model_type"] <- "a" # rename for sorting/consistency purposes
ds[ds$model_type=="empty","model_type"] <- "0"
# inspect new names
t <- table(ds$model_type, ds$study_name);t[t==0]<-".";t
# we also remove "aeplus" for now, while Lewina is reruning models with data unadjusted for height
ds <- ds %>% dplyr::filter(!(model_type %in% c("aeplus")))



## @knitr spell_physical_construct
t <- table(ds$physical_construct, ds$study_name);t[t==0]<-".";t

## @knitr correct_physical_construct
# rename obvious typo
ds[ds$physical_construct %in% c("pumonary"),"physical_construct"] <- "pulmonary"
# Rename the absense of physical construct
ds[ds$physical_construct %in% c("nophys", "nophysspec"),"physical_construct"] <- "Univar"
# inspect new names
t <- table(ds$physical_construct, ds$study_name);t[t==0]<-".";t



## @knitr spell_physical_measure
t <- table(ds$physical_measure, ds$study_name);t[t==0]<-".";t

## @knitr correct_physical_measure
# rename obvious type
ds[ds$physical_measure == "fevc","physical_measure"] <- "fev"
## iN ILSE, look up philipp about tug
ds[(ds$physical_measure == "nophysspec" | ds$physical_measure == "nophyscog")  & ds$physical_construct == "tug","physical_measure"] <- "tug"



# rename the absense of physical measure
ds[ds$physical_measure %in% c("nophysspec","nophsyspec","nophyscog", "nophyspec", "nophyssec" ), "physical_measure"] <- "univar"
# collapse a category
ds[ds$physical_measure == "hand","physical_measure"] <- "grip"
ds[ds$physical_measure %in% c("fev1"), "physical_measure"] <- "fev"




# inspect new names
t <- table(ds$physical_measure, ds$study_name);t[t==0]<-".";t



## @knitr spell_cognitive_construct
t <- table(ds$cognitive_construct, ds$study_name);t[t==0]<-".";t

## @knitr correct_cognitive_construct
# rename obvious typos
ds[ds$cognitive_construct %in% c(" knowledge", "knoledge", "knowlegde"),"cognitive_construct"] <- "knowledge"
# rename the absense of physical measure
ds[ds$cognitive_construct %in% c("nocog", "nocogspec"),"cognitive_construct"] <- "Univar"
# collape categories
ds[ds$cognitive_construct == "memoryattention","cognitive_construct"] <- "memory"
ds[ds$cognitive_construct %in% c("fluid","fluidreasoning"),"cognitive_construct"] <- "reasoning"
ds[ds$cognitive_construct %in% c("verbalfluency"),"cognitive_construct"] <- "fluency"
# inspect new names
t <- table(ds$cognitive_construct, ds$study_name);t[t==0]<-".";t



## @knitr spell_cognitive_measure
t <- table(ds$cognitive_measure, ds$study_name);t[t==0]<-".";t

## @knitr correct_cognitive_measure
# rename obvious typos
ds[ds$cognitive_measure %in% c("wasivocab"),"cognitive_measure"] <- "waisvocab"
ds[ds$cognitive_measure %in% c("digitsymol"),"cognitive_measure"] <- "digitsymbol"

# rename the absense of physical measure
ds[ds$cognitive_measure %in% c("nocog", "nocogspec"),"cognitive_measure"] <- "univar"

# renaming categories
ds[ds$cognitive_measure %in% c("anal"),"cognitive_measure"] <- "analogies"

# collapse categories
ds[ds$cognitive_measure %in% c("bostonmaning","nostonnaming", "bostonnaming"),"cognitive_measure"] <- "bnt"
#
ds[ds$cognitive_measure %in% c("mmms"),"cognitive_measure"] <- "3ms"
#
ds[ds$cognitive_measure %in% c("blockdesign","waisblockdesign"),"cognitive_measure"] <- "block"
#
ds[ds$cognitive_measure %in% c("delayedwordrecall"),"cognitive_measure"] <- "wordlistdelay"
#
ds[ds$cognitive_measure %in% c("animals","categoryfluency","category"),"cognitive_measure"] <- "categories"
#
ds[ds$cognitive_measure %in% c("figid"),"cognitive_measure"] <- "figureid"
#
ds[ds$cognitive_measure %in% c("information"),"cognitive_measure"] <- "info"
#
ds[ds$cognitive_measure %in% c("immediaterecall"),"cognitive_measure"] <- "wordlistimmed"
#
ds[ds$cognitive_measure %in% c("synon"),"cognitive_measure"] <- "synonyms"
#
ds[ds$cognitive_measure %in% c("fas","verbalfluencytest"),"cognitive_measure"] <- "verbalfluency"
#
ds[ds$cognitive_measure %in% c("digitsymbol","digitsymbolsubstitutiontest","digitsymboltotal"),"cognitive_measure"] <- "symbol"
#
ds[ds$cognitive_measure %in% c("digitbackward","digitspanbackward"),"cognitive_measure"] <- "digitsback"
#
ds[ds$cognitive_measure %in% c("digitsforward","digitspanforward"),"cognitive_measure"] <- "digitsforward"
#
ds[ds$cognitive_measure %in% c("digitspantotal","disigtspantotal"),"cognitive_measure"] <- "digitspan"
#
ds[ds$cognitive_measure %in% c("logicalmemorytotal"),"cognitive_measure"] <- "logicalmemory"

# recategorize
ds[ds$cognitive_measure %in% c("info"),"cognitive_construct"] <- "knowledge"
ds[ds$cognitive_measure %in% c("symbol"),"cognitive_construct"] <- "speed"
ds[ds$cognitive_measure %in% c("bnt"),"cognitive_construct"] <- "language"
ds[ds$cognitive_measure %in% c("categories"),"cognitive_construct"] <- "fluency"
ds[ds$cognitive_measure %in% c("bnt"),"cognitive_construct"] <- "language"
ds[ds$cognitive_measure %in% c("digitsback"),"cognitive_construct"] <- "executive"
ds[ds$cognitive_measure %in% c("figurelogic"),"cognitive_construct"] <- "speed"
ds[ds$cognitive_measure %in% c("trailsb"),"cognitive_construct"] <- "executive"
ds[ds$cognitive_measure %in% c("figureid"),"cognitive_construct"] <- "speed"
ds[ds$cognitive_measure %in% c("3ms"),"cognitive_construct"] <- "mental"
ds[ds$cognitive_measure %in% c("digitsforward"),"cognitive_construct"] <- "memory"
ds[ds$cognitive_measure %in% c("figurelogic"),"cognitive_construct"] <- "reasoning"
ds[ds$cognitive_measure %in% c("mmse"),"cognitive_construct"] <- "mental"
# Pending
ds[ds$cognitive_measure %in% c("patterncomparison"),"cognitive_construct"] <- "speed"


t <- table(ds$cognitive_measure, ds$study_name);t[t==0]<-".";t
#



## @knitr save_renamed_file
saveRDS(ds,"./data/shared/ds1.rds") # save corrected dataset



## @knitr dummy
# rmarkdown::render(input = "./reports/rename_collapse/Track_renaming.Rmd", output_format="html_document", clean=TRUE)

## @knitr dummy
#### look for bad names ####
ds %>% dplyr::count(study_name)
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



