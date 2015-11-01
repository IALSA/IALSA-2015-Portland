rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.
cat("\f") # clear console



# @knitr load_packages
library(dplyr) # for data manipulation
library(ggplot2) # for graphing
library(grid)

# @knitr load_sources ---------------------------------------
source("https://raw.githubusercontent.com/andkov/psy532/master/scripts/graphs/main_theme.R")
source("http://www.statmodel.com/mplus-R/mplus.R") # to work with mplus output
source("./scripts/mplus/group_variables.R") # to define objects with names of variables/columns
source("./scripts/mplus/get_gh5.R") # to extract data from .gh5
source("./reports/physical/scatter_matrix/graph_functions.R")
# @knitr declare_globals ---------------------------------------



# @knitr load_data ---------------------------------------
# load the data collected by ./scripts/mplus/collect_physical.R
model_list <- readRDS("./projects/physical/outputs/model_list.rds")
names(model_list) # how each model in the list is described
model_list



# dsL <- get_gh5_data(
#   file=model_list # list object containing paths to the gh5 files
#   ,study = "eas"
#   ,subgroup = "male"
#   ,model_type = "aehplus"
#   ,process1 = "grip"
#   ,process2 = "pef"
#   )
#
#
# # @knitr inspect_data ---------------------------------------
# head(dsL)

# sample_size <- 10000 # activate for testing and development
# # (sample_size <- length(unique(dsL$id)))
# #
dsL <- get_gh5_data(file=model_list,
                    study = "radc",
                    subgroup = "female",
                    model_type = "aehplus",
                    process1 = "fev",
                    process2 = "grip",
                    age_center = 70)
# dsL <- dsL[dsL$id %in% sample(unique(dsL$id), 100), ]
int_slope(dsL) # create scatterplot
#
#





# # @knitr reproduce ---------------------------------------
rmarkdown::render(input = "./reports/physical/scatter_matrix/scatter_matrix_male.Rmd" ,output_format="html_document", clean=TRUE)

# # @knitr reproduce ---------------------------------------
  rmarkdown::render(input = "./reports/physical/scatter_matrix/scatter_matrix_female.Rmd" ,
                    output_format="html_document", clean=TRUE)
