rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.
#####################################
## @knitr load_sources
#Load any source files that contain/define functions, but that don't load any other types of variables
#   into memory.  Avoid side effects and don't pollute the global environment.
# source("./SomethingSomething.R")

#####################################
## @knitr load_packages
# library(xtable)
library(knitr)
library(scales) #For formating values in graphs
library(RColorBrewer)
# library(reshape2) #For converting wide to long
library(ggplot2) #For graphing
# library(mgcv, quietly=TRUE) #For the Generalized Additive Model that smooths the longitudinal graphs.

#####################################
## @knitr declare_globals
options(show.signif.stars=F) #Turn off the annotations on p-values

path_input <- "."

#####################################
## @knitr load_data
pattern <- "dto_bivariate_(\\w+).csv$"
pattern <- "s(\\S{1,})\\.md$"
pattern <- "(\\.*?)README\\.md$"
# pattern <- "s(\\.*?)README\\.md$"
# pattern <- "s(\\.*?)"
# pattern <- "\\.*?"
# pattern <- "studies/(\\S+)/(\\S+)\\.md"

dto_paths <- list.files(path=path_input, pattern=pattern, recursive=TRUE)
# dto_paths; #paste(dto_paths, collapse = ",")
study_names <- gsub(pattern, "\\1", dto_paths, perl=T)
# study_names



#####################################
## @knitr tweak_data


#####################################
## @knitr tables

for( dto_path in dto_paths ) {
  print(dto_path)
}
