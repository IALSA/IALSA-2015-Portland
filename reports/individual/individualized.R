rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.
#####################################
## @knitr load_sources



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
dsb <- readRDS('./data/shared/dsb.rds')
keepvar <- c("model_number","study_name","model_type", "subgroup", "physical_outcome","cognitive_outcome","physical_specific","cognitive_specific", "output_file")
# ds <- dsb[ , keepvar]

## @knitr load_eas
ds <- dsb[dsb$study_name=="eas",]

# ## @knitr load_habc
# ds <- dsb[dsb$study_name=="habc",]
#
# ## @knitr load_ilse
# ds <- dsb[dsb$study_name=="ilse",]
#
# ## @knitr load_nas
# ds <- dsb[dsb$study_name=="nas",]
#
# ## @knitr load_nuage
# ds <- dsb[dsb$study_name=="nuage",]
#
# ## @knitr load_obas
# ds <- dsb[dsb$study_name=="obas",]
#
# ## @knitr load_octo
# ds <- dsb[dsb$study_name=="octo",]
#
# ## @knitr load_radc
# ds <- dsb[dsb$study_name=="radc",]
#
# ## @knitr load_satsa
# ds <- dsb[dsb$study_name=="satsa",]




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
# t1 <- table(ds$model_number, ds$physical_outcome )
t1 <- table(ds$physical_outcome )
t1[t1==0] <- "."
ftable(t1)
}
list.constructs("u")
list.constructs("b")

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



## @knitr inspect_bivariate
list.constructs("u")

head(ds)

ds %>% filter(uni_bi=="u", cognitive_outcome=="memory") %>% select(output_file)

## @knitr constructs_bivariate
cross.constructs("b")

## @knitr measures_bivariate
cross.measures("b")
