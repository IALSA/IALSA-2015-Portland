## This script corrects irregularities in the naming of the output files
cat("\f") # clear console
rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.


#####################################
## @knitr load_sources

#####################################
## @knitr load_packages
library(knitr)
library(testit, quietly=TRUE) #For asserts
library(dplyr)

## @knitr load_data
# ds1 <- readRDS('./data/shared/ds0.rds')
ds1 <- read.csv('./data/shared/results_all.csv')
# ds <- ds1 %>% dplyr::filter(study_name=="satsa")
ds <- ds1 %>% dplyr::arrange_("cognitive_measure")
# ds <- ds1[ds1$study_name=="eas",]
head(ds[c("cognitive_construct","cognitive_measure","output_file")])
tail(ds[c("cognitive_construct","cognitive_measure","output_file")])

nrow(ds)


## @knitr make_all_lower
ds$physical_measure <- tolower(stringr::str_trim(ds$physical_measure))
ds$cognitive_measure <- tolower(stringr::str_trim(ds$cognitive_measure))

names(ds)
# t <- table(ds$physical_construct, ds$cognitive_construct);t[t==0]<-".";t

## @knitr spell_model_number
t <- table(ds$model_number, ds$study_name);t[t==0]<-".";t


## @knitr spell_subgroup
t <- table(ds$subgroup, ds$study_name);t[t==0]<-".";t



## @knitr spell_model_type
t <- table(ds$model_type, ds$study_name);t[t==0]<-".";t

## @knitr correct_model_type
ds[ds$model_type %in% c("aheplus", "aeplus") ,"model_type"] <- "aehplus"
ds[ds$model_type=="age","model_type"] <- "a" # rename for sorting/consistency purposes
ds[ds$model_type=="empty","model_type"] <- "0"
t <- table(ds$model_type, ds$study_name);t[t==0]<-".";t
# we also remove "aeplus" for now, while Lewina is reruning models with data unadjusted for height
ds <- ds %>% dplyr::filter(!(model_type %in% c("aeplus")))
# ds <- ds[ds$model_type %in% c("aeplus","aheplus","age","empty"),]



## @knitr spell_physical_measure -------
t <- table(ds$physical_measure, ds$study_name);t[t==0]<-".";t

## @knitr correct_physical_measure
# rename obvious typos
ds[ds$physical_measure %in% c("fevc", "fev1", "fvc", "fev100") ,"physical_measure"] <- "fev"
## iN ILSE, look up philipp about tug
ds[(ds$physical_measure == "nophysspec" | ds$physical_measure == "nophyscog")  & ds$physical_construct == "tug","physical_measure"] <- "tug"
t <- table(ds$physical_measure, ds$study_name);t[t==0]<-".";t

# rename the absense of physical measure
ds[ds$physical_measure %in% c("nophysspec","nophsyspec","nophyscog", "nophyspec", "nophyssec" ), "physical_measure"] <- "univar"
# collapse a category
ds[ds$physical_measure == "hand","physical_measure"] <- "grip"
# rename suspected misspelling
ds[ds$physical_measure %in% c("peak"),"physical_measure"] <- "pef"
ds[ds$physical_measure %in% c("pumonary","pulomnary"),"physical_measure"] <- "pulmonary"

# inspect new names
t <- table(ds$physical_measure, ds$study_name);t[t==0]<-".";t



## @knitr spell_cognitive_measure
t <- table(ds$cognitive_measure, ds$study_name);t[t==0]<-".";t

## @knitr correct_cognitive_measure
# rename obvious typos
ds[ds$cognitive_measure %in% c("wasivocab"),"cognitive_measure"] <- "waisvocab"
ds[ds$cognitive_measure %in% c("digitsymol"),"cognitive_measure"] <- "digitsymbol"

# rename the absense of physical measure
ds[ds$cognitive_measure %in% c("nocog", "nocogspec"),"cognitive_measure"] <- "nocog"

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
ds[ds$cognitive_measure %in% c("digitbackward","digitspanbackward"),"cognitive_measure"] <- "digitsbackward"
#
ds[ds$cognitive_measure %in% c("digitforward","digitspanforward"),"cognitive_measure"] <- "digitsforward"
#
ds[ds$cognitive_measure %in% c("digitspantotal","disigtspantotal"),"cognitive_measure"] <- "digitsspan"
#
ds[ds$cognitive_measure %in% c("logicalmemorytotal"),"cognitive_measure"] <- "logicalmemory"

# ---- physical_construct -------------------------------------------

# ---- cognitive_construct -------------------------------------------
# recategorize
# KNOWLEDGE - green
ds[ds$cognitive_measure %in% c("info"),"cognitive_construct"] <- "knowledge"
ds[ds$cognitive_measure %in% c("nart"),"cognitive_construct"] <- "knowledge"
ds[ds$cognitive_measure %in% c("synonyms"),"cognitive_construct"] <- "knowledge"
ds[ds$cognitive_measure %in% c("waisgeneralknowledge", "waisgeneral"),"cognitive_construct"] <- "knowledge"
ds[ds$cognitive_measure %in% c("waisvocab"),"cognitive_construct"] <- "knowledge"
ds[ds$cognitive_measure %in% c("waisvocab"),"cognitive_construct"] <- "knowledge"
ds[ds$cognitive_measure %in% c("knowledge"),"cognitive_construct"] <- "knowledge"


# LANGUAGE - blueish green
ds[ds$cognitive_measure %in% c("bnt"),"cognitive_construct"] <- "language"
ds[ds$cognitive_measure %in% c("language"),"cognitive_construct"] <- "language"


# FLUENCY - greenish blue
ds[ds$cognitive_measure %in% c("categories"),"cognitive_construct"] <- "fluency"
ds[ds$cognitive_measure %in% c("fluency", "verbalfluency"),"cognitive_construct"] <- "fluency"



# MEMORY - blue
ds[ds$cognitive_measure %in% c("bostonstory"),"cognitive_construct"] <- "memory"
ds[ds$cognitive_measure %in% c("delayedrecall"),"cognitive_construct"] <- "memory"
ds[ds$cognitive_measure %in% c("digitsforward"),"cognitive_construct"] <- "memory"
ds[ds$cognitive_measure %in% c("figurememory"),"cognitive_construct"] <- "memory"
ds[ds$cognitive_measure %in% c("logicalmemory"),"cognitive_construct"] <- "memory"
ds[ds$cognitive_measure %in% c("wordlistdelay"),"cognitive_construct"] <- "memory"
ds[ds$cognitive_measure %in% c("wordlistimmed"),"cognitive_construct"] <- "memory"
ds[ds$cognitive_measure %in% c("wordlistrecog"),"cognitive_construct"] <- "memory"
ds[ds$cognitive_measure %in% c("mirrecall"),"cognitive_construct"] <- "memory"
ds[ds$cognitive_measure %in% c("proserecall","prose"),"cognitive_construct"] <- "memory"
ds[ds$cognitive_measure %in% c("memory"),"cognitive_construct"] <- "memory"

# WORKING MEMORY - reddish-blue
ds[ds$cognitive_measure %in% c("digitsbackward"),"cognitive_construct"] <- "workmemory"
ds[ds$cognitive_measure %in% c("digitorder"),"cognitive_construct"] <- "workmemory"

# EXECUTIVE FUNCTION - purple
ds[ds$cognitive_measure %in% c("executive"),"cognitive_construct"] <- "executive"
ds[ds$cognitive_measure %in% c("trailsb"),"cognitive_construct"] <- "executive"

# VISUASPACIAL REASONING - bluish-red
ds[ds$cognitive_measure %in% c("block"),"cognitive_construct"] <- "vsreasoning"
ds[ds$cognitive_measure %in% c("figurelogic"),"cognitive_construct"] <- "vsreasoning"
ds[ds$cognitive_measure %in% c("matrices","raven"),"cognitive_construct"] <- "vsreasoning"
ds[ds$cognitive_measure %in% c("rotations"),"cognitive_construct"] <- "vsreasoning"
ds[ds$cognitive_measure %in% c("lpsspatialability","ipsspatialability"),"cognitive_construct"] <- "vsreasoning"
ds[ds$cognitive_measure %in% c("waispicturecompletion"),"cognitive_construct"] <- "vsreasoning"
ds[ds$cognitive_measure %in% c("line","lineorientation"),"cognitive_construct"] <- "vsreasoning"
ds[ds$cognitive_measure %in% c("visuospatial"),"cognitive_construct"] <- "vsreasoning"
ds[ds$cognitive_measure %in% c("reasoning"),"cognitive_construct"] <- "vsreasoning"


# SPEED - orange
ds[ds$cognitive_measure %in% c("symbol","codingtask"),"cognitive_construct"] <- "speed"
ds[ds$cognitive_measure %in% c("figureid"),"cognitive_construct"] <- "speed"
ds[ds$cognitive_measure %in% c("numbercomp"),"cognitive_construct"] <- "speed"
ds[ds$cognitive_measure %in% c("patterncomp"),"cognitive_construct"] <- "speed"
ds[ds$cognitive_measure %in% c("psif"),"cognitive_construct"] <- "speed"
ds[ds$cognitive_measure %in% c("speed"),"cognitive_construct"] <- "speed"


# MENTAL STATUS - grey
ds[ds$cognitive_measure %in% c("3ms"),"cognitive_construct"] <- "mental"
ds[ds$cognitive_measure %in% c("mmse"),"cognitive_construct"] <- "mental"
ds[ds$cognitive_measure %in% c("clock"),"cognitive_construct"] <- "mental"
ds[ds$cognitive_measure %in% c("serial7"),"cognitive_construct"] <- "mental"
ds[ds$cognitive_measure %in% c("tics"),"cognitive_construct"] <- "mental"
ds[ds$cognitive_measure %in% c("mental"),"cognitive_construct"] <- "mental"


d <- dplyr::group_by_(ds,"cognitive_construct", "cognitive_measure") %>%
  dplyr::summarise(count = n())
d
dd <- d %>% dplyr::filter(is.na(cognitive_construct))
dd


# ds[ds$cognitive_measure %in% c("info"),"cognitive_construct"] <- "knowledge"
# ds[ds$cognitive_measure %in% c("symbol"),"cognitive_construct"] <- "speed"
# ds[ds$cognitive_measure %in% c("bnt"),"cognitive_construct"] <- "language"
# ds[ds$cognitive_measure %in% c("categories"),"cognitive_construct"] <- "fluency"
# ds[ds$cognitive_measure %in% c("bnt"),"cognitive_construct"] <- "language"
# ds[ds$cognitive_measure %in% c("digitsback"),"cognitive_construct"] <- "executive"
# ds[ds$cognitive_measure %in% c("figurelogic"),"cognitive_construct"] <- "speed"
# ds[ds$cognitive_measure %in% c("trailsb"),"cognitive_construct"] <- "executive"
# ds[ds$cognitive_measure %in% c("figureid"),"cognitive_construct"] <- "speed"
# ds[ds$cognitive_measure %in% c("3ms"),"cognitive_construct"] <- "mental"
# ds[ds$cognitive_measure %in% c("digitsforward"),"cognitive_construct"] <- "memory"
# ds[ds$cognitive_measure %in% c("figurelogic"),"cognitive_construct"] <- "reasoning"
# ds[ds$cognitive_measure %in% c("mmse"),"cognitive_construct"] <- "mental"
# Pending
# ds[ds$cognitive_measure %in% c("patterncomparison"),"cognitive_construct"] <- "speed"


t <- table(ds$cognitive_measure, ds$study_name);t[t==0]<-".";t
#



## @knitr save_renamed_file
saveRDS(ds,"./data/shared/ds1.rds") # save corrected dataset
saveRDS(ds,"./data/shared/ds2.rds") # save corrected dataset



## @knitr dummy
# rmarkdown::render(input = "./reports/rename_collapse/Track_renaming.Rmd", output_format="html_document", clean=TRUE)

## @knitr dummy
#### look for bad names ####
# ds %>% dplyr::count(study_name)
# ds %>% dplyr::count(model_number)
# ds %>% dplyr::count(subgroup)
# ds %>% dplyr::count(model_type)
# ds %>% dplyr::count(physical_construct)
# ds %>% dplyr::count(physical_measure)
# ds %>% dplyr::count(cognitive_construct)
# ds %>% dplyr::count(cognitive_measure)
# ds %>% dplyr::count(output_file)
#
# table(ds$model_number)
# table(ds$subgroup)
# table(ds$model_type)
# table(ds$physical_construct)
# table(ds$physical_measure)
# table(ds$cognitive_construct)
# table(ds$cognitive_measure)
# table(ds$output_file)
#


