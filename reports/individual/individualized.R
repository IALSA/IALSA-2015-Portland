rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

#####################################
## @knitr load_sources
# source("./scripts/0_collect_studies.R")
# source("./scripts/1_combine_and_extend.R")


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
keepvar <- c("model_number","study_name","model_type", "subgroup", "physical_outcome","cognitive_outcome","physical_specific","cognitive_specific", "output_file")
# ds <- ds1[ , keepvar]

## @knitr load_eas
ds <- ds1[ds1$study_name=="eas",]

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




## @knitr load_functions

## Basic summary
inspect.study <- function(unibi){
ds <- ds[ds$uni_bi==unibi,]
a <- ds %>% group_by(subgroup) %>% summarize(count=length(converged)); print(a); cat("\n");
a <- ds %>% group_by(covariates=model_type) %>% summarize(count=length(converged)); print(a); cat("\n");
a <- ds %>% group_by(phys.construct=physical_outcome) %>% summarize(count=length(converged)); print(a); cat("\n");
a <- ds %>% group_by(phys.measure=physical_specific) %>% summarize(count=length(converged)); print(a); cat("\n\n\n");
a <- ds %>% group_by(cog.construct=cognitive_outcome) %>% summarize(count=length(converged)); print(a); cat("\n");
a <- ds %>% group_by(cog.measure=cognitive_specific) %>% summarize(count=length(converged)); print(a); cat("\n\n\n");
}

## List constructs
list.constructs <- function(unibi){
ds <- ds[ds$uni_bi==unibi,]
# # t1 <- table(ds$model_number, ds$physical_outcome )
# t1 <- table(ds$physical_outcome )
# t1[t1==0] <- "."
# # ftable(t1)
# print(t1)
ds %>% dplyr::count(physical_outcome)

}
# list.constructs("u")
# list.constructs("b")


## Cross tab of constructs
cross.constructs <- function(unibi){
ds <- ds[ds$uni_bi==unibi,]
t1 <- table(ds$cognitive_outcome,ds$physical_outcome)
t1[t1==0] <- "."
t1
}


## Cross tab of measures
cross.measures <- function(unibi){
ds <- ds[ds$uni_bi==unibi,]
t1 <- table(ds$cognitive_specific,ds$physical_specific)
t1[t1==0] <- "."
t1
}

## Cross tab of physical
cross.physical <- function(unibi){
ds <- ds[ds$uni_bi==unibi,]
t1 <- table(ds$physical_specific,ds$physical_outcome)
t1[t1==0] <- "."
t1
}
# cross.physical("b")


## Cross tab of cognitive
cross.cognitive<- function(unibi){
ds <- ds[ds$uni_bi==unibi,]
t1 <- table(ds$cognitive_specific,ds$cognitive_outcome)
t1[t1==0] <- "."
t1
}
# cross.cognitive("b")




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

ds$output_file[!is_valid]

ds <- ds[is_valid,] # keep only the legal names


## @knitr list.constructs.u
list.constructs("u")

head(ds)

ds %>% filter(uni_bi=="u", cognitive_outcome=="memory") %>% select(output_file)

## @knitr constructs_bivariate
cross.constructs("b")

## @knitr measures_bivariate
cross.measures("b")
