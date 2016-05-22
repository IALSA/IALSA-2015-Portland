rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

# ---- load-sources ------------------------------------------------------------
#Load any source files that contain/define functions, but that don't load any other types of variables
#   into memory.  Avoid side effects and don't pollute the global environment.

# ---- load-packages -----------------------------------------------------------
library(magrittr) #Pipes
requireNamespace("knitr")
requireNamespace("dplyr")
requireNamespace("tidyr")
requireNamespace("DT")

# ---- declare-globals ---------------------------------------------------------
options(show.signif.stars=F) #Turn off the annotations on p-values
path_input <- "./data/shared/parsed-results.rds"

# ---- load-data ---------------------------------------------------------------
ds_full <- readRDS(path_input)

rm(path_input)
# ---- tweak-data --------------------------------------------------------------

# ---- simplify --------------------------------------------------------------
variables_part_1 <- c(
  "study_name",
  "process_a",
  "process_b",
  "subgroup",           # male & female
  "model_type"          # 0 , a, ae, aeh, aeh+, & full
)

# variables_part_4 <- grep(regex_gamma, colnames(ds_full), perl=T, value=T)
regex_gamma <- "^([ab])_GAMMA_([01]{2})_(est|se|wald|pval)$"
# regex_gamma <- "^([ab])_GAMMA_([0]{2})_(est)$"

ds_order_gamma <- expand.grid(#tidyr::crossing(
  stat      = c("est", "se", "wald", "pval"),
  term      = c("00", "01", "10", "11"),
  process   = c("a", "b"),
  stringsAsFactors = FALSE
)

variables_part_4 <- sprintf(
  "%s_GAMMA_%s_%s",
  ds_order_gamma$process,
  ds_order_gamma$term,
  ds_order_gamma$stat
)

ds <- ds_full %>%
  dplyr::select_(.dots=c(variables_part_1, variables_part_4))

rm(ds_order_gamma, ds_full, variables_part_1, variables_part_4)

# ---- prettify ----------------------------------------------------------------
ds_dynamic_pretty <- ds
colnames(ds_dynamic_pretty) <- gsub("_", " ", colnames(ds_dynamic_pretty))


# ---- verify-values -----------------------------------------------------------


# ---- table-dynamic -----------------------------------------------------------

ds_dynamic_pretty %>%
  DT::datatable(
    class     = 'cell-border stripe',
    caption   = "Growth Curve Model Sollution -by Study",
    filter    = "top",
    options   = list(pageLength = 6, autoWidth = TRUE)
  )


# ---- table-static ------------------------------------------------------------
