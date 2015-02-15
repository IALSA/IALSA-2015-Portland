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
pattern <- "dto_bivariate.csv$"
dto_paths <- list.files(path=path_input, pattern=pattern, recursive=TRUE)
# dto_paths; #paste(dto_paths, collapse = ",")
directories <- gsub(pattern, "\\1", dto_paths, perl=T)
# directories
study_names <- basename(directories)
# study_names

dtos <- list()

for( i in seq_along(dto_paths) ) {
  dto_path <- dto_paths[i]
  study_name <- study_names[i]
  dto <- read.csv(dto_path, stringsAsFactors=F)
  dto$date <- as.Date(dto$date)

  dtos[[i]] <- dto
#   print(study_name)
}
rm(dto_path, study_name, dto)

#####################################
## @knitr tweak_data

# http://stackoverflow.com/questions/2851327/converting-a-list-of-data-frames-into-one-data-frame-in-r
ds <- plyr::ldply(dtos, data.frame)


#####################################
## @knitr calculate_forest
#TODO: Andrey, calcalulate the graph coordinates, using Philipe's equations that start with
#  the SEM output.


#####################################
## @knitr study_tables

for( i in seq_along(dtos) ) {
  dto <- dtos[[i]]
  study_name <- study_names[i]
  cat("")
  cat(paste0("## ", study_name))
  cat("")
  print(knitr::kable(dto))
  cat("\n")
}

#####################################
## @knitr forest_static

#####################################
## @knitr forest_animated
# Use this as a starting point: https://github.com/OuhscBbmc/OsctrAstonWeber
