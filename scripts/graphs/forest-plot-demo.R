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
d <- catalog %>%
  prettify_catalog(model_type_ = c("aehplus"),model_number_ = "b1") %>%
  dplyr::select(
    process_b_domain, study_name,
    model_number, subgroup, model_type, process_a, process_b, subject_count,
    er_tau_11_est, er_tau_11_ci95lo, er_tau_11_ci95hi, er_slopes
  ) %>%
  plyr::rename( c(
    "process_b_domain" ="domain",
    "study_name"       ="study",
    "process_a"        ="physical",
    "process_b"        ="cognitive",
    "subject_count"    ="n",
    "er_tau_11_est"    ="mean",
    "er_tau_11_ci95lo" ="lower",
    "er_tau_11_ci95hi" ="upper",
    "er_slopes"        ="dense"
  )) %>%
  dplyr::filter(physical %in% c("pef","pek","fev"))# %>%
d <- d %>% rename_domains("pulmonary")

d_forest <- d %>%
  dplyr::select(domain,study, physical, cognitive,n,mean,lower, upper,dense ) %>%
  dplyr::filter(domain == "memory")

d <- d_forest
# ---- prep-data ---------------------
d_text <- d %>%
  dplyr::select(domain,study, physical, cognitive, n, dense) %>%
  as.data.frame()

d_value <- data.frame(
  "mean" = d$mean,
  "lower"= d$lower,
  "upper"= d$upper
)

add_forest_top <- function(d_text){




}

add_forest_bottom <- function(d_value)

forestplot::forestplot(
  d_text,
  d_value,
  # mean       = d$mean,
  # lower      = d$lower,
  # upper      = d$upper,
  align      = c("r","r","l","l","l","l"),
  new_page   = TRUE,
  # is.summary = c(TRUE,TRUE,rep(FALSE,8),TRUE),
  clip       = c(-2,2),
  # xlog       = TRUE,
  col        = fpColors(box     = "royalblue",
                        line    = "darkblue",
                        summary = "royalblue")
)





