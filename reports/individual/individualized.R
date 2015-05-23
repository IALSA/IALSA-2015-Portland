rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

#####################################
## @knitr load_sources
# source("./scripts/0_collect_studies.R") # extracts models into individual dtos
# source("./scripts/1_combine_and_extend.R") # combines, process, and saves as RDS


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
library(dplyr)

## @knitr load_data
ds1 <- readRDS('./data/shared/ds1.rds')
ds1a <- readRDS('./data/shared/ds1a.rds') # names corrected
keepvar <- c("model_number","study_name","model_type", "subgroup", "physical_construct","cognitive_construct","physical_measure","cognitive_measure", "output_file")
# ds <- ds1[ , keepvar]

## @knitr load_eas
selected_study <- "eas"
ds <- ds1[ds1$study_name==selected_study,]
dsa <- ds1a[ds1a$study_name==selected_study,] # filtered and corrected

# ## @knitr load_habc
# ds <- ds1[ds1$study_name=="habc",]
#
# ## @knitr load_ilse
# ds <- ds1[ds1$study_name=="ilse",]
#
# ## @knitr load_nas
# ds <- ds1[ds1$study_name=="nas",]
#
# ## @knitr load_nuage
# ds <- ds1[ds1$study_name=="nuage",]
#
# ## @knitr load_obas
# ds <- ds1[ds1$study_name=="obas",]
#
# ## @knitr load_octo
# ds <- ds1[ds1$study_name=="octo",]
#
# ## @knitr load_radc
# ds <- ds1[ds1$study_name=="radc",]
#
# ## @knitr load_satsa
# ds <- ds1[ds1$study_name=="satsa",]







## @knitr count_total
cat(nrow(ds))

## @knitr count_unibi
t1 <- table(ds$model_number)
t1[t1==0] <- "."
t1


## @knitr list.omissions
desired_subpart_count <- 7L
ds$model_name <- gsub(pattern=".out",replacement="",ds$output_file) # remove .out ending
subparts <- strsplit(ds$model_name,"_") # break up each  model_name, store in a list
subpart_count <- sapply(subparts, length) # count compents in each element of the list
is_valid <- (subpart_count==desired_subpart_count) # create logical vector

print(ds$output_file[!is_valid])

# ds <- ds[is_valid,] # keep only the legal names
ds <- dsa # same as above, filter in 1a_correct_model_names

## @knitr list.full.number
cat(nrow(ds))

## @knitr list.phys.constructs
t1 <- table(ds$physical_construct, ds$model_number)
t1[t1==0] <- "."
t1

## @knitr list.phys.measures
t1 <- table(ds$physical_measure, ds$model_number)
t1[t1==0] <- "."
t1

## @knitr list.cog.constructs
t1 <- table(ds$cognitive_construct, ds$model_number)
t1[t1==0] <- "."
t1

## @knitr list.cog.measures
t1 <- table(ds$cognitive_measure, ds$model_number)
t1[t1==0] <- "."
t1


## @knitr cross.phys.uni
d <- ds %>% dplyr::filter(model_number %in% c("u0","u1","u2"))
t1 <- table(d$model_number, d$physical_measure, d$physical_construct)
t1[t1==0] <- "."
ftable(t1)

## @knitr cross.cog.uni
d <- ds %>% dplyr::filter(model_number %in% c("u0","u1","u2"))
t1 <- table(d$model_number, d$cognitive_measure, d$cognitive_construct)
t1[t1==0] <- "."
ftable(t1)


## @knitr cross.phys.bi
d <- ds %>% dplyr::filter(model_number %in% c("b0","b1","b2"))
t1 <- table(d$physical_measure, d$physical_construct)
t1[t1==0] <- "."
t1

## @knitr cross.cog.bi
d <- ds %>% dplyr::filter(model_number %in% c("b0","b1","b2"))
t1 <- table(d$cognitive_measure, d$cognitive_construct)
t1[t1==0] <- "."
t1





## @knitr cog.construct.phys.construct
d <- ds %>% dplyr::filter(model_number %in% c("b0","b1","b2"))
t1 <- table(d$cognitive_construct, d$physical_construct)
t1[t1==0] <- "."
t1

## @knitr cog.measures.phys.construct
d <- ds %>% dplyr::filter(model_number %in% c("b0","b1","b2"))
t1 <- table(d$cognitive_measure, d$physical_construct)
t1[t1==0] <- "."
t1

## @knitr cog.construct.phys.measure
d <- ds %>% dplyr::filter(model_number %in% c("b0","b1","b2"))
t1 <- table(d$cognitive_construct, d$physical_measure)
t1[t1==0] <- "."
t1

## @knitr cog.measure.phys.measure
d <- ds %>% dplyr::filter(model_number %in% c("b0","b1","b2"))
t1 <- table(d$cognitive_measure, d$physical_measure)
t1[t1==0] <- "."
t1




######################################################
## @knitr load_functions

## Basic summary
inspect.study <- function(unibi){
ds <- ds[ds$uni_bi==unibi,]
a <- ds %>% group_by(subgroup) %>% summarize(count=length(converged)); print(a); cat("\n");
a <- ds %>% group_by(covariates=model_type) %>% summarize(count=length(converged)); print(a); cat("\n");
a <- ds %>% group_by(phys.construct=physical_construct) %>% summarize(count=length(converged)); print(a); cat("\n");
a <- ds %>% group_by(phys.measure=physical_measure) %>% summarize(count=length(converged)); print(a); cat("\n\n\n");
a <- ds %>% group_by(cog.construct=cognitive_construct) %>% summarize(count=length(converged)); print(a); cat("\n");
a <- ds %>% group_by(cog.measure=cognitive_measure) %>% summarize(count=length(converged)); print(a); cat("\n\n\n");
}

## List constructs
list.constructs <- function(unibi){
ds <- ds[ds$uni_bi==unibi,]
# # t1 <- table(ds$model_number, ds$physical_construct )
# t1 <- table(ds$physical_construct )
# t1[t1==0] <- "."
# # ftable(t1)
# print(t1)
ds %>% dplyr::count(physical_construct)

}
# list.constructs("u")
# list.constructs("b")


## Cross tab of constructs
cross.constructs <- function(unibi){
ds <- ds[ds$uni_bi==unibi,]
t1 <- table(ds$cognitive_construct,ds$physical_construct)
t1[t1==0] <- "."
t1
}


## Cross tab of measures
cross.measures <- function(unibi){
ds <- ds[ds$uni_bi==unibi,]
t1 <- table(ds$cognitive_measure,ds$physical_measure)
t1[t1==0] <- "."
t1
}

## Cross tab of physical
cross.physical <- function(unibi){
ds <- ds[ds$uni_bi==unibi,]
t1 <- table(ds$physical_measure,ds$physical_construct)
t1[t1==0] <- "."
t1
}
# cross.physical("b")


## Cross tab of cognitive
cross.cognitive<- function(unibi){
ds <- ds[ds$uni_bi==unibi,]
t1 <- table(ds$cognitive_measure,ds$cognitive_construct)
t1[t1==0] <- "."
t1
}
# cross.cognitive("b")



## @knitr list.constructs.b
ds %>% dplyr::filter(model_number %in% c("b0", "b1", "b2")) %>%
  count(physical_construct)



head(ds)

ds %>% filter(uni_bi=="u", cognitive_construct=="memory") %>% select(output_file)

## @knitr constructs_bivariate
cross.constructs("b")

## @knitr measures_bivariate
cross.measures("b")
