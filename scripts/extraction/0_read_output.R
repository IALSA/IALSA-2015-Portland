## This script
options(width=160)
rm(list=ls())
cat("\f")

## @knitr load_packages
library(dplyr)
library(ggplot2)

## @knitr load_data
ds0 <- readRDS("./data/derived/unshared/ds0.rds") # raw MAP data
ds <- ds0
str(ds)


## @knitr get_results
pathDir <- getwd() # establish home directory
# pathFolder <- file.path(pathDir,"data/raw/extending_waves/")
pathFolder <- file.path(pathDir,"reports/extending_waves_andrey/")
# pathData <- file.path(pathDir,"data/raw/extending_waves/radcMAP_wide.dat")

out_list_all <- list.files(pathFolder, full.names=T, recursive=T, pattern="out$")
out_list_all

# extract all models in the out_list_all object
source("./scripts/extract/0_extraction_functions.R")


## @knitr load_results
ds <- readRDS("data/derived/ds_ext_waves.rds")
