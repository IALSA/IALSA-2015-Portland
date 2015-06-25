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
dsb <- readRDS('./data/shared/ds1a.rds')
keepvar <- c("model_number","study_name", "model_type","physical_construct","cognitive_construct","physical_measure","cognitive_measure", "output_file")

ds <- dsb[ , keepvar]

## @knitr dummy

unique(dsb$study_name)

names(dsb)

## @knitr number_studies
cat(paste0("**",length(dsb$study_name),"**"))

# @knitr missing_studies
pathDir <- getwd() # establish home directory
pathStudies <- file.path(pathDir,"studies")
misslong <- list.dirs(pathStudies, recursive = F)
missing <- basename(misslong)
present <- unique(dsb$study_name)
miss <- missing[!(missing %in% present)]
cat(miss)


## @knitr freq_studies
t1<-table(dsb$study_name)
t1[t1==0] <- "."
t1


## @knitr dummy
## PHYSICAL DOMAIN

## @knitr freq_phys_constructs_studies
t2a <- table(dsb$physical_construct,dsb$study_name)
t2a[t2a==0] <- "."
t2a

## @knitr freq_phys_measures_studies
t2b <- table(dsb$physical_measure,dsb$study_name)
t2b[t2b==0] <- "."
t2b

## @knitr freq_phys_measures_phys_construct
t2c <- table(dsb$physical_measure,dsb$physical_construct)
t2c[t2c==0] <- "."
t2c

## @knitr freq_phys_measures_phys_construct_studies
t2d <- table(dsb$study, dsb$physical_measure,dsb$physical_construct)
t2d[t2d==0] <- "."
ftable(t2d)


## @knitr dummy
## COGNITIVE DOMAIN

## @knitr freq_cog_constructs_studies
t3a <- table(dsb$cognitive_construct,dsb$study_name)
t3a[t3a==0] <- "."
t3a

## @knitr freq_cog_measures_studies
t3b <- table(dsb$cognitive_measure,dsb$study_name)
t3b[t3b==0] <- "."
t3b

## @knitr freq_cog_measures_cog_construct
t3c <- table(dsb$cognitive_measure,dsb$cognitive_construct)
t3c[t3c==0] <- "."
t3c

## @knitr freq_cog_measures_cog_construct_studies
t3d <- table(dsb$study, dsb$cognitive_measure,dsb$cognitive_construct)
t3d[t3d==0] <- "."
ftable(t3d)




## @knitr CROSSING DOMAINS

## @knitr freq_cog_construct_phys_construct
t4 <- table(dsb$cognitive_construct,dsb$physical_construct)
t4[t4==0] <- "."
t4


## @knitr freq_cog_measure_phys_measure
t5 <- table(dsb$cognitive_measure,dsb$physical_measure)
t5[t5==0] <- "."
t5

## @knitr freq_cog_measure_phys_measure_studies_allnames
t6 <- table(dsb$study, dsb$cognitive_measure,dsb$physical_measure)
t6[t6==0] <- "."
ftable(t6)





## @knitr freq_cog_measure_phys_measure_studies
  for( study in unique(dsb$study_name)){
    ds <- dsb[dsb$study_name==study,]
    t7 <- table( ds$cognitive_measure, ds$physical_measure)
    t7[t7==0] <- "."

  cat("") #Force a new line
  cat(paste0("### ", study))
  cat("\n")
  cat(paste0("Number of models in the **",study,"** study with the following combination of physical measures (columns) and cognitive measure (rows) "))
  cat("\n")
  cat("```")
  cat("\n")
    if( !is.na(t7[1])){
    # print(ftable(t7))
      print(t7)
    } else {
    cat(paste0("Error in file naming: specific measurement was not specified for physical construct **", cs, "**.*\n\n"))
    }
    cat("```")
    cat("\n\n")
  }




## @knitr freq_phys_measure
  for( cs in unique(dsb$physical_construct)){
    ds <- dsb[dsb$physical_construct==cs,]
    t7 <- table( ds$physical_measure, ds$study_name) # physical_measure
    t7[t7==0] <- "."

  cat("") #Force a new line
  cat(paste0("### ", cs))
  cat("\n")
  cat(paste0("Operationalizations of the physical construct **",cs,"**: "))
  cat("\n")
  cat("```")
  cat("\n")
    if( !is.na(t7[1])){
    # print(ftable(t7))
      print(t7)
    } else {
    cat(paste0("Error in file naming: specific measurement was not specified for physical construct **", cs, "**.*\n\n"))
    }
    cat("```")
    cat("\n\n")
  }


## @knitr freq_cog_measure
  for( cs in unique(dsb$cognitive_construct)){
    ds <- dsb[dsb$cognitive_construct==cs,]
    t7 <- table( ds$cognitive_measure, ds$study_name) # cognitive_measure
    t7[t7==0] <- "."

  cat("") #Force a new line
  cat(paste0("### ", cs))
  cat("\n")
  cat(paste0("Operationalizations of the cognitive construct **",cs,"**: "))
  cat("\n")
  cat("```")
  cat("\n")
    if( !is.na(t7[1])){
    # print(ftable(t7))
      print(t7)
    } else {
    cat(paste0("Error in file naming: specific measurement was not specified for cogntive construct **", cs, "**.*\n\n"))
    }
    cat("```")
    cat("\n\n")
  }



## @knitr dummy


## @knitr dummy
cogSpec <- as.data.frame(unique(dsb$cognitive_measure))
physSpec <- as.data.frame(unique(dsb$physical_measure))
names(cogSpec) <- "name"
names(physSpec) <- "name"
# class(cogSpec); str(cogSpec)
# names(cogSpec)
dplyr::arrange(cogSpec,name)
dplyr::arrange(physSpec, name)

## @knitr prepare_pretty
# names(dsb)

ds <- dsb %>%
  dplyr::arrange(physical_construct, cognitive_construct, physical_measure, cognitive_measure, subgroup, model_type)


source("./reports/basic/2a_make_pretty_small.R")



## @knitr study_tables

for( i in seq_along(present) ) {

  study_name <- present[i]


  d_bivariate_study <- ds_bivariate_pretty[ds_bivariate_pretty$study==study_name, ]
  # d_bivariate_study <- d_bivariate_study[ , -(1:2)]
  cat("") #Force a new line
  cat(paste0("## ", study_name))
  cat("\n") #Force a new line

#   for(gender in unique(d_bivariate_study$subgroup)){
#   cat("") #Force a new line
#   cat(paste0("### ", gender))
#   cat("\n") #Force a new line
  d <- d_bivariate_study

    if( nrow(d_bivariate_study) > 0L) {
      print(knitr::kable(d[ , -(1)], caption="Bivariate Results", row.names= F))
    } else {
      cat("*No bivariate models were supplied from the study.*\n\n")
    }
    cat("\n")
  }

# }


