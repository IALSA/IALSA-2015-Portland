rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

# ---- load-sources ------------------------------------------------------------
#Load any source files that contain/define functions, but that don't load any other types of variables
#   into memory.  Avoid side effects and don't pollute the global environment.
# load functions to assemble the tables


source("./scripts/mplus/extraction-functions.R")   # parsing functions
source("./scripts/mplus/mplus.R")                  # working with Mplus object

source("./scripts/graphs/model-anatomy-functions.R")# treating single outputs
source("./scripts/table-assembly-functions.R")      # working with compound catalogs

source("./scripts/graphs/main_theme.R") # pre-sets and options for graphing
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
# template for structuring tables for reporting individual models
stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil-v9.csv")


# ---- get-path ---------------------------
# define the folder where your models are stored
folder <- "./data/shared/covariance-issue/annie/studies/octo/physical"
model_name <- "b1_female_aehplus_grip_pef.out"
(path_out <- file.path(folder,model_name)) # path to the output file (.out)

# ---- make-catalog ----------------------------
model_parsed <- collect_result(path_out)
model_parsed <- rename_columns_in_catalog(model_parsed) # see group-variables.R
t(model_parsed)
model_parsed_spread <- distill_one_spread(model_parsed, model_components)


# ---- make-table ----------------------------
proto_table(model_parsed,model_components,pretty=T)


# extract the data for a single model
ls_model <- get_model_data(
   path_out = path_out
  ,center_age = 70 # location at which baseline age was centered
)
names(ls_model)
head(ls_model$data) # data recovered from .gh5 file
t(ls_model$coefs)   # estimated parameters parsed from the .out file


# simple scatter
g <- proto_scatter(ls_model, "fs_level_a", "fs_level_b");g
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





















