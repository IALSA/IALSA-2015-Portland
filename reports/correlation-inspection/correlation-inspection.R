# knitr::stitch_rmd(script="./manipulation/car-ellis.R", output="./manipulation/stitched-output/car-ellis.md")
#These first few lines run only when the file is run in RStudio, !!NOT when an Rmd/Rnw file calls it!!
rm(list=ls(all=TRUE))  #Clear the variables from previous runs.

# ---- load-sources ------------------------------------------------------------
# Call `base::source()` on any repo file that defines functions needed below.  Ideally, no real operations are performed.

# ---- load-packages -----------------------------------------------------------
# Attach these packages so their functions don't need to be qualified: http://r-pkgs.had.co.nz/namespace.html#search-path
library(magrittr) #Pipes

# Verify these packages are available on the machine, but their functions need to be qualified: http://r-pkgs.had.co.nz/namespace.html#search-path
library("ggplot2")
requireNamespace("dplyr") #Avoid attaching dplyr, b/c its function names conflict with a lot of packages (esp base, stats, and plyr).
requireNamespace("testit")
requireNamespace("readr")

# ---- declare-globals ---------------------------------------------------------
path_input  <- "./data/shared/results-physical-cognitive.csv"

# ---- load-data ---------------------------------------------------------------
ds <- readr::read_csv(path_input)

# ---- tweak-data --------------------------------------------------------------
colnames(ds)


# ---- table --------------------------------------------------------------

# d_zz <-
ds %>%
  dplyr::group_by(study_name, physical_measure, cognitive_measure) %>%
  dplyr::summarize(
    model_count = n()
  ) %>%
  dplyr::ungroup() %>%
  dplyr::arrange(desc(model_count))

# ---- graph, fig.width=10, fig.height=6, fig.path=figure_path ---------------------------------------------------------

# ggplot(ds, aes(x=R_SPSC_est, y=R_SPSC_pval, label=study_name, color=study_name)) +
ggplot(ds, aes(x=R_SPSC_est, y=R_SPSC_pval, label=physical_measure, color=study_name)) +
# ggplot(ds, aes(x=R_SPSC_est, y=R_SPSC_pval, label=cognitive_measure, color=study_name)) +
  geom_text()


# ---- verify-values -----------------------------------------------------------
# testit::assert("`model_name` should be a unique value", sum(duplicated(ds$model_name))==0L)
# testit::assert("`miles_per_gallon` should be a positive value.", all(ds$miles_per_gallon>0))
# testit::assert("`weight_gear_z` should be a positive or missing value.", all(is.na(ds$miles_per_gallon) | (ds$miles_per_gallon>0)))

# ---- save-to-disk ------------------------------------------------------------
