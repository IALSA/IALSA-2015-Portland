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

#####################################
## @knitr tweak_data

#####################################
## @knitr create_values
gender <- c("male", "female")
model_type <- c("age conditional", "full conditional")
cognitive_outcome <- c("chair rise time", "walking speed time")
ds_expanded <- expand.grid(gender=gender, model_type=model_type, cognitive_outcome=cognitive_outcome, stringsAsFactors=F)

#####################################
## @knitr save_to_csv
#TODO: one possibility is to save this to a CSV, which you cna copy & paste into Excel.
