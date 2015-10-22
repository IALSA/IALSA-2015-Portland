options(width=160)
rm(list=ls())
cat("\f")

# @knitr load_packages ----------------------------------------------------------------------
library(dplyr) # for data manipulation
library(ggplot2) # for graphing
library(scales) #for formating values in graphs

# @knitr set_paths  ----------------------------------------------------------------------



# @knitr load_custom ---------------------------------------
source("./scripts/graphs/main_theme.R")


# @knitr declare_globals ---------------------------------------



# @knitr load_data ---------------------------------------
results <- readRDS("./projects/physical/outputs/physical.rds")


# @knitr tweak_data ---------------------------------------
ds <- results[results$model_type=="aehplus",]
ds <- ds[!(ds$study_name=="nuage"),]

table(ds$study_name, ds$subgroup)

# @kntir basic_table ---------------------------------------

d <- ds[ds$study_name=="radc",c("study_name","subgroup", "physical_measure", "cognitive_measure")]
d

# @knitr basic_graph ---------------------------------------


# @knitr reproduce ---------------------------------------
#   rmarkdown::render(input = "./reports/report.Rmd" ,
#                     output_format="html_document", clean=TRUE)
