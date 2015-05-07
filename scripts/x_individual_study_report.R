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
keepvar <- c("model_number","study_name", "model_type","physical_outcome","cognitive_outcome","physical_specific","cognitive_specific", "output_file")

# ds <- dsb[ , keepvar]

## @knitr dummy
# key columns/variables
keycol <- c("model_number"="Alpha numeric ","study_name","converged", )
keycolF <- factor(dsb$keycol, values

unique(dsb$study_name)

names(dsb)

## @knitr number_studies
length(dsb$study_name)

# @knitr missing_studies
pathDir <- getwd() # establish home directory
pathStudies <- file.path(pathDir,"studies")
misslong <- list.dirs(pathStudies, recursive = F)
missing <- basename(misslong)
present <- unique(dsb$study_name)
miss <- missing[!(missing %in% present)]
miss


## @knitr freq_studies
t1<-table(dsb$study_name)
t1[t1==0] <- "."
t1

## @knitr freq_phys_studies
t2 <- table(dsb$physical_outcome,dsb$study_name)
t2[t2==0] <- "."
t2

## @knitr freq_cog_studies
t3 <- table(dsb$cognitive_outcome,dsb$study_name)
t3[t3==0] <- "."
t3

## @knitr freq_cog_phys
t4 <- table(dsb$cognitive_outcome,dsb$physical_outcome)
t4[t4==0] <- "."
t4

## @knitr freq_cog_phys_studies

t5 <- table(dsb$study,dsb$cognitive_outcome,dsb$physical_outcome)
t5[t5==0] <- "."
ftable(t5)


## @knitr freq_phys_specific
t6 <- table(dsb$study, dsb$physical_specific, dsb$physical_outcome)
t6[t6==0] <- "."
ftable(t6)


## @knitr freq_phys_specific

  for( cs in unique(dsb$physical_outcome)){
    ds <- dsb[dsb$physical_outcome==cs,]
    t7 <- table( ds$physical_specific, ds$study_name)
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

## @knitr freq_cog_specific

  for( cs in unique(dsb$cognitive_outcome)){
    ds <- dsb[dsb$cognitive_outcome==cs,]
    t7 <- table( ds$cognitive_specific, ds$study_name)
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
cogSpec <- as.data.frame(unique(dsb$cognitive_specific))
physSpec <- as.data.frame(unique(dsb$physical_specific))
names(cogSpec) <- "name"
names(physSpec) <- "name"
# class(cogSpec); str(cogSpec)
# names(cogSpec)
dplyr::arrange(cogSpec,name)
dplyr::arrange(physSpec, name)

## @knitr prepare_pretty
# names(dsb)

ds <- dsb %>%
  dplyr::arrange(physical_outcome, cognitive_outcome, physical_specific, cognitive_specific, subgroup, model_type)


source("./scripts/1a_make_pretty_small.R")



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

#
# for( i in seq_along(present) ) {
#
#   study_name <- present[i]
#
#
#   d_bivariate_study <- ds_bivariate_pretty[ds_bivariate_pretty$study==study_name, ]
#   # d_bivariate_study <- d_bivariate_study[ , -(1:2)]
#   cat("") #Force a new line
#   cat(paste0("## ", study_name))
#   cat("\n") #Force a new line
#
#   for(gender in unique(d_bivariate_study$subgroup)){
#   cat("") #Force a new line
#   cat(paste0("### ", gender))
#   cat("\n") #Force a new line
#   d <- d_bivariate_study[d_bivariate_study$subgroup==gender, ]
#
#     if( nrow(d_bivariate_study) > 0L) {
#       print(knitr::kable(d[ , -(1:2)], caption="Bivariate Results", row.names= F))
#     } else {
#       cat("*No bivariate models were supplied from the study.*\n\n")
#     }
#     cat("\n")
#   }
#
# }

