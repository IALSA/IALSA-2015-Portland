rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

# ---- load-sources ------------------------------------------------------------
#Load any source files that contain/define functions, but that don't load any other types of variables
#   into memory.  Avoid side effects and don't pollute the global environment.
source("./scripts/mplus/model-components.R") # organizes variable names
source("./reports/correlation-3/support-functions.R")
# ---- load-packages -----------------------------------------------------------
library(magrittr) #Pipes
library(ggplot2)
requireNamespace("knitr")
requireNamespace("dplyr")
requireNamespace("tidyr")
requireNamespace("DT")
requireNamespace("scales")

# ---- declare-globals ---------------------------------------------------------
options(show.signif.stars=F) #Turn off the annotations on p-values
# print_format <- "html"
print_format <- "pandoc"

# ----- input-phys-cog -----------------
path_input <- "./data/shared/pc-2-catalog-augmented.csv"

# ---- load-data ---------------------------------------------------------------
catalog <- readr::read_csv(path_input)
rm(path_input)

# ---- tweak-data --------------------




