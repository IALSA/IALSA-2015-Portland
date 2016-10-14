rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

# ---- load-sources ------------------------------------------------------------
#Load any source files that contain/define functions, but that don't load any other types of variables
#   into memory.  Avoid side effects and don't pollute the global environment.
source("./sandbox/graph-gh5/collect-gh5.R")# assemble the object with gh5 links
source("./scripts/mplus/get-gh5-v2.R") # function that extracts data from gh5 objects

# ---- load-packages -----------------------------------------------------------
library(ggplot2) #For graphing
library(magrittr) #Pipes
requireNamespace("knitr")
requireNamespace("scales") #For formating values in graphs
requireNamespace("dplyr")
# requireNamespace("DT")
# requireNamespace("RColorBrewer")
# requireNamespace("plyr")
# requireNamespace("reshape2") #For converting wide to long
# requireNamespace("mgcv, quietly=TRUE) #For the Generalized Additive Model that smooths the longitudinal graphs.

# ---- declare-globals ---------------------------------------------------------
options(show.signif.stars=F) #Turn off the annotations on p-values
path_input <- "./data-phi-free/derived/motor-trend-car-test.rds"
model_list <- readRDS("./data/shared/derived/graph-gh5.rds")


# ---- load-data ---------------------------------------------------------------
# ds <- readRDS(path_input) # 'ds' stands for 'datasets'
model_list <- readRDS("./projects/physical-physical/outputs/model_list.rds")

# ---- tweak-data --------------------------------------------------------------
#



# @knitr reproduce ---------------------------------------
#   rmarkdown::render(input = "./reports/report.Rmd" ,
#                     output_format="html_document", clean=TRUE)
