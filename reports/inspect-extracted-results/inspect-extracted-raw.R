rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

# ---- load-sources ------------------------------------------------------------
#Load any source files that contain/define functions, but that don't load any other types of variables
#   into memory.  Avoid side effects and don't pollute the global environment.
source("./scripts/mplus/group-variables.R")
# source("./scripts/mplus/collect-results.R")
source("./scripts/common-functions.R")
# ---- load-packages -----------------------------------------------------------
library(ggplot2) #For graphing
library(magrittr) #Pipes
requireNamespace("knitr")
requireNamespace("scales") #For formating values in graphs
requireNamespace("dplyr")
requireNamespace("DT")
# requireNamespace("RColorBrewer")
# requireNamespace("plyr")
# requireNamespace("reshape2") #For converting wide to long
# requireNamespace("mgcv, quietly=TRUE) #For the Generalized Additive Model that smooths the longitudinal graphs.

# ---- declare-globals ---------------------------------------------------------
options(show.signif.stars=F) #Turn off the annotations on p-values
# path_input <- "./data/shared/parsed-results.csv"
path_input <- "./data/shared/parsed-results-raw.csv"
# path_input <- "./data/shared/parsed-results-raw.rds"

# ---- load-data ---------------------------------------------------------------
ds <- read.csv(path_input, header=T, stringsAsFactors = F) # 'ds' stands for 'datasets'
# ds <- readRDS(path_input)
# ---- tweak-data --------------------------------------------------------------


# ---- load_varnames ---------------------------------------------------------
(nl <- names_labels(ds)) # nl for (n)ame and (l)ables


# ---- prep-for-basic-view --------------------------------------------------
# subset variables
# stem - what phase (I) writes to the catalog
stem_vars <- c("study_name","model_number","subgroup","model_type","process_a", "process_b")
core_vars <-  c(
  # covariance btw physical intercept and cognitive intercept
  ab_TAU_00,
  # covariance btw physical slope and cognitive slope
  ab_TAU_11,

  # physical intercept / average initial status of physical outcome
  a_GAMMA_00,
  # physical slope / average rate of change of physical outcome
  a_GAMMA_10 ,
  # cognitive slope / average rate of change of cognitive outcome
  b_GAMMA_10 ,
  # cognitive intercept /  average initial status of cognitive outcome
  b_GAMMA_00 ,


  # physical intercept regressed on AGE at baseline
  a_GAMMA_01,
  # physical slope regressed on AGE at baseline
  a_GAMMA_11,
  # cognitive slope regressed on AGE at baseline
  b_GAMMA_11,
  # cognitive intercept regressed on AGE at baseline
  b_GAMMA_01,


  # physical intercept regressed on EDUCATION
  a_GAMMA_02,
  # physical slope regressed on EDUCATION
  a_GAMMA_12,
  # cognitive slope regressed on EDUCATION
  b_GAMMA_12,
  # cognitive intercept regressed on EDUCATION
  b_GAMMA_02,
  # HEIGHT
  a_GAMMA_03, a_GAMMA_13, b_GAMMA_03, b_GAMMA_13,
  # SMOKING
  a_GAMMA_04, a_GAMMA_14, b_GAMMA_04, b_GAMMA_14,
  # CARDIO
  a_GAMMA_05, a_GAMMA_15, b_GAMMA_05, b_GAMMA_15,
  # DIABETES
  a_GAMMA_06, a_GAMMA_16, b_GAMMA_06, b_GAMMA_16,

  # correlation b/w physical SLOPE  and cognitive SLOPE
  R_SASB ,
  # correlation b/w physical RESIDUAL and cogntive RESIDUAL
  R_RES_AB ,
  # correlation b/w physical INTERCEPT  and cognitive INTERCEPT
  R_IAIB,

  # variance of the physical intercept
  aa_TAU_00 ,
  # variance of the physical slope
  aa_TAU_11 ,
  # variance of the cognitive slope
  bb_TAU_11 ,
  # variance of the cognitive intercept
  bb_TAU_00,

  # variance of physical residual
  a_SIGMA ,
  # covariance btw physcial residual and cogntive residual
  ab_SIGMA,
  # variance of cognitive residual
  b_SIGMA

)
# core_vars_heads <- c("ab_TAU_00", "ab_TAU_11",
#                      "a_GAMMA_00", "a_GAMMA_10", "b_GAMMA_10", "b_GAMMA_00",
#                      "a_GAMMA_02", "a_GAMMA_12", "b_GAMMA_12", "b_GAMMA_02",
#                      "R_SASB", "R_RES_AB", "R_IAIB",
#                      "aa_TAU_00", "aa_TAU_11", "bb_TAU_11","bb_TAU_00",
#                      "a_SIGMA", "ab_SIGMA", "b_SIGMA")
subset_variables <- c(stem_vars, core_vars)

#  melt with respect to the index type
ds_long <- data.table::melt(data =ds[,subset_variables], id.vars = stem_vars,  measure.vars = core_vars)

regex <- "^(\\w+?)_(est|se|wald|pval)$"
ds_long <- ds_long %>%
  dplyr::arrange_(.dots=stem_vars) %>%
  dplyr::mutate(
    variable = as.character(variable),
    stem = sub(regex, "\\1", variable), # favor sub over gsub, b/c you do only one replacement
    index = sub(regex, "\\2", variable)
  )
# head(ds_long)

# dput(colnames(ds_long))
ds_distinct <- ds_long %>%
  dplyr::distinct()

ds_no_duplicates <- ds_long %>%
  dplyr::group_by(
    study_name, model_number, subgroup, model_type, process_a, process_b, variable, stem, index
  ) %>%  #Lacks "value"
  dplyr::summarize(
    # value  = dplyr::first(value, na.rm=T)
    value  = mean(value, na.rm=T)
  ) %>%
  dplyr::ungroup()

coefficient_of_variation <- function(x)( sd(x)/mean(x) )

ds_find_duplicates <- ds_long %>%
  dplyr::distinct() %>% #Drops it from 256 rows to 56 rows.
  dplyr::group_by(
    study_name, model_number, subgroup, model_type, process_a, process_b, variable, stem, index
  ) %>%  #Lacks "value"
  dplyr::filter(!is.na(value)) %>% #Drops from 56 rows to 8 rows.  !!Careful that you don't remove legit NAs (esp, in nonduplicated rows).
  dplyr::summarize(
    count      = n(),
    values     = paste(value, collapse=";"),
    value_cv   = coefficient_of_variation(value)
  ) %>%
  dplyr::ungroup() %>%
  dplyr::filter(1<count) %>%
  dplyr::filter(.001 < value_cv) #Drops from 8 to 0 rows.

testit::assert("No meaningful duplicate rows should exist.", nrow(ds_find_duplicates)==0L)


# ds <- ds_long[1:1000,]

# dw <- ds_distinct %>%
ds_wide <- ds_no_duplicates %>%
  dplyr::select(-variable) %>%
  tidyr::spread(key=stem, value=value) %>%
  dplyr::mutate(
    study_name = factor(study_name),
    model_number = factor(model_number),
    subgroup = factor(subgroup),
    model_type = factor(model_type),
    process_a = factor(process_a),
    process_b = factor(process_b),
    index = factor(index)
  )
# head(ds_wide)
# ds_wide %>% dplyr::glimpse()



## NOTE: change "p_ | c_ " int "point estimate"
## NOTE: change "pp_ | cc_ | pc_" into "variance

# ---- basic-view --------------------------------------------------------------
d <- ds_wide %>% dplyr::mutate(p_a = process_a, p_b = process_b)

d <- d  %>% dplyr::select_("study_name","model_number","subgroup","model_type",
                            "process_a", "process_b", "index",
                             "R_IAIB", "R_SASB",
                           "a_GAMMA_00", "a_GAMMA_10", "b_GAMMA_10", "b_GAMMA_00",
                           "a_GAMMA_01", "a_GAMMA_11", "b_GAMMA_11", "b_GAMMA_01",
                           "a_GAMMA_02", "a_GAMMA_12", "b_GAMMA_12", "b_GAMMA_02",
                           "a_GAMMA_03", "a_GAMMA_13", "b_GAMMA_13", "b_GAMMA_03",
                           "a_GAMMA_04", "a_GAMMA_14", "b_GAMMA_14", "b_GAMMA_04",
                           "a_GAMMA_05", "a_GAMMA_15", "b_GAMMA_15", "b_GAMMA_05",
                           "a_GAMMA_06", "a_GAMMA_16", "b_GAMMA_16", "b_GAMMA_06"
                            "ab_TAU_00","ab_TAU_11", "p_a", "p_b",
                            "aa_TAU_00", "aa_TAU_11", "bb_TAU_11","bb_TAU_00",
                            "R_RES_AB", "a_SIGMA", "ab_SIGMA", "b_SIGMA"
                           )

d %>%  DT::datatable(class = 'cell-border stripe',
              caption = "spotting duplicates",
              filter = "top", options = list(pageLength = 20, autoWidth = TRUE))


# ---- reproduce ---------------------------------------
rmarkdown::render(input = "./sandbox/inspect-extracted-results/inspect-extracted-raw.Rmd" ,
                  output_format="html_document", clean=TRUE)
