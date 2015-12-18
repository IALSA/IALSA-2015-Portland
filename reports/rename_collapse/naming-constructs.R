## This script corrects irregularities in the naming of the output files
cat("\f") # clear console
rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

# @knitr load_packages
library(dplyr) # for data manipulation
library(ggplot2) # for graphing


# @knitr load_sources ---------------------------------------
source("./scripts/graphs/main_theme.R")

# @knitr declare_globals ---------------------------------------

# @knitr load_data ---------------------------------------
ds <- readRDS("./data/shared/ds2.rds")

dplyr::group_by_(ds,"physical_measure","cognitive_measure") %>%
  dplyr::summarise(n())

dplyr::group_by_(ds,"cognitive_construct") %>%
  dplyr::summarise(n())

d <- dplyr::group_by_(ds,"physical_construct","cognitive_construct","physical_measure","cognitive_measure") %>%
  dplyr::summarise(n())

d <- dplyr::group_by_(ds,"cognitive_measure") %>%
  dplyr::summarise(count=n())  %>% dplyr::arrange(-count)

dplyr::group_by_(ds,"physical_measure") %>%
  dplyr::summarise(count=n())

# @knitr inspect_data ---------------------------------------

# @knitr tweak_data ---------------------------------------

# @kntir basic_table ---------------------------------------

# @knitr basic_graph ---------------------------------------

# @knitr new_chunk ---------------------------------------



