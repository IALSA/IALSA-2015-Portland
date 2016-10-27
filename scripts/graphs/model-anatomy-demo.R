rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

# ---- load-sources ------------------------------------------------------------
#Load any source files that contain/define functions, but that don't load any other types of variables
#   into memory.  Avoid side effects and don't pollute the global environment.
# load functions to assemble the tables
source("./scripts/table-assembly-functions.R")
source("./scripts/mplus/group-variables.R")
source("./scripts/mplus/extraction-functions.R")
source("./scripts/mplus/mplus.R")
source("./scripts/graphs/main_theme.R") # pre-sets and options for graphing


source("./scripts/graphs/model-anatomy-functions.R")

# ---- load-packages -----------------------------------------------------------
library(magrittr) #Pipes
library(ggplot2)
requireNamespace("readr")
requireNamespace("knitr")
requireNamespace("dplyr")
requireNamespace("tidyr")


# ---- declare-globals ---------------------------------------------------------
options(show.signif.stars=T) #Turn off the annotations on p-values


# ---- load-data ---------------------------------------------------------------
catalog <- read.csv("./data/shared/pp-2-parsed-results-computed_ci.csv", header = T,  stringsAsFactors=FALSE)
catalog_spread <- readRDS("./data/shared/derived/pp-spread.rds")
# template for structuring tables for reporting individual models
stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil-v8.csv")


# ----  ---------------------------
# define the folder where your models are stored
folder <- "./data/shared/covariance-issue/annie/studies/octo/physical"
model_name <- "b1_female_aehplus_grip_pef.out"
(path_out <- file.path(folder,model_name))
# extract the data for a single model
ls_model <- get_model_data(
   path_out = path_out
  ,center_age = 70
)
names(ls_model)
head(ls_model$data) # data recovered from .gh5 file
t(ls_model$coefs)   # estimated parameters parsed from the .out file


# simple scatter
g <- proto_scatter(ls_model$data, "fs_level_a", "fs_level_b");g
# combined into a complex scatter
factor_score_scatter(ls_model)


# simple line
proto_line(
  ls           = ls_model,    # list object with extracted data and parsed coefficients
  x            = "time",       # mapped to x-axis. Options: age, time
  outcome_name = "process_b", # mapped to y-axis. Options: process_a, process_b
  source_name  = "observed",   # observed or reconstructed from factor scrores: observed or fscrores
  fill         = "wave"       # color of dots.    Options:  wave, BAGE
)
# combine into a complex line graph
observed_predicted(ls_model)





















