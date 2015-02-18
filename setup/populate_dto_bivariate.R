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
gender <- c("Male", "Female")
model_type <- c("Age Conditional", "Full Conditional")
cognitive_outcome <- c("Knowledge",
                       "Reasoning Speed",
                      " Visuospatial Ability",
                      " Executive Functioning",
                      " Mental Status")

physical_outcome <- c("Pulmonary Function",
                      "Muscle Strength",
                      "Walking Speed Time",
                      "Chair Rise Rime",
                      "Flamingo Stand Time",
                      "Summary Measures")


ds_expanded <- expand.grid(gender=gender, model_type=model_type,
                           physical_outcome=physical_outcome,
                           cognitive_outcome=cognitive_outcome, stringsAsFactors=T)

ds <- dplyr::arrange(ds_expanded, model_type, physical_outcome)
# View(ds)
write.csv(ds,file="setup/populate_dto.csv")


#####################################
## @knitr save_to_csv
#TODO: one possibility is to save this to a CSV, which you cna copy & paste into Excel.
