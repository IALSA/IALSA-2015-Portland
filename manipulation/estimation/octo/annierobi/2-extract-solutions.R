rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

# ---- load-sources ------------------------------------------------------------
# source("./scripts/functions-graphs.R")
# source("./scripts/functions-tables.R")
source("./scripts/common-functions.R")
# source("./scripts/graph-presets.R") # pre-sets and options for graphing

# ---- load-packages -----------------------------------------------------------
library(magrittr) #Pipes
library(ggplot2)
library(MplusAutomation)
requireNamespace("readr")
requireNamespace("knitr")
requireNamespace("dplyr")
requireNamespace("tidyr")


# ---- declare-globals ---------------------------------------------------------
path_folder <- "./output/studies/octo/dem-criteria/"
path_stencil      <- "./data/shared/stencils/table-stencil-octo.csv"

# path_newc_out   <- "./manipulation/estimation/newcastle/newcastle-mmse-k-2.out"
# path_octo_out <- "./manipulation/estimation/octo/octo-mmse-k-2.out"

baseSize <- 12


# ---- load-data ---------------------------------------------------------------
path_outputs <- list.files(path_folder,pattern = ".out$",full.names = T, recursive = T)
stencil <- readr::read_csv(path_stencil)

path <- path_outputs#[639]
# grep("./output/studies/octo/info/u2_145_aef_info.out",path,value=F)

# ---- assemble-catalog -------------------------------
# create catalog list
ls_catalog <- list()
regex_1 <- "^(..)_(\\w+)_(\\w+)_(\\w+)_(\\w+)$"
for(i in seq_along(path)){
  # i <- 1
  model_name <- gsub(".out$","",basename(path[i]))
  model_result <- MplusAutomation::readModels(path[i])
  ls_temp <- list(
    "model_number" =  gsub(regex_1, "\\1", model_name),
    "subgroup"     =  gsub(regex_1, "\\2", model_name),
    "model_type"   =  gsub(regex_1, "\\3", model_name),
    "process_a"      =  gsub(regex_1, "\\4", model_name),
    "process_b"      =  gsub(regex_1, "\\5", model_name)
  )
  if(length(model_result$errors)==0L){
      ls_temp[["table"]]      = get_estimate_table(model_result, stencil)
      ls_temp[["N"]]          = model_result$summaries$Observations
      ls_temp[["parameters"]] = model_result$summaries$Parameters
      ls_temp[["AIC"]]        = model_result$summaries$AIC
      ls_temp[["BIC"]]        = model_result$summaries$BIC
      ls_temp[["path"]]       = path[i]
  } else{
    ls_temp[["table"]]        = NA
    ls_temp[["N"]]            = NA
    ls_temp[["parameters"]]   = NA
    ls_temp[["AIC"]]          = NA
    ls_temp[["BIC"]]          = NA
    ls_temp[["path"]]         = NA
  }
   ls_catalog[[model_name]] <- ls_temp
}

names(ls_catalog)
ls_catalog$b1_female_a_pef_block
ls_catalog$b1_female_a_pef_block$table
saveRDS(ls_catalog,"./data/shared/derived/ls_catalog_dem_criteria.rds")
# ls_catalog <- readRDS("./data/shared/derived/ls_catalog.rds")
# At this point the  ls_catalog, which is a list with each element
# containing the indices of model solution. One element = one model.
names(ls_catalog)
