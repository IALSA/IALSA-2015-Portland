rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

# ---- load-sources ------------------------------------------------------------
#Load any source files that contain/define functions, but that don't load any other types of variables
#   into memory.  Avoid side effects and don't pollute the global environment.

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
path_input <- "./data/shared/parsed-results-computed_ci.rds"

# ---- load-data ---------------------------------------------------------------
ds_full <- readRDS(path_input)

# ---- tweak-data --------------------------------------------------------------

# simplify ----
variables_part_1 <- c(
  "study_name",
  "process_a",
  "process_b",
  "subgroup",           # male & female
  "model_type"          # 0 , a, ae, aeh, aeh+, & full
)

# variables_part_4 <- grep(regex_r, colnames(ds_full), perl=T, value=T)
regex_r <- "^r_(i|s|r)_(est|se|wald|pval|ci95_lower|ci95_upper)$"

ds_order_r <- expand.grid(#tidyr::crossing(
  stat      = c("est", "se", "wald", "pval", "ci95_lower", "ci95_upper"),
  term      = c("i", "s", "r"),
  stringsAsFactors = FALSE
)

variables_part_4a <- c(
  "subject_count"
)

variables_part_4b <- sprintf(
  "r_%s_%s",
  ds_order_r$term,
  ds_order_r$stat
)

# elongate ----
ds_long <- ds_full %>%
  dplyr::rename_(
       "r_i_est"           = "`R_IAIB_est`"        # alternate as needed
       # "r_i_est"           = "`ab_CORR_00`"      # alternate as needed
     , "r_i_se"            = "`R_IAIB_se`"
     , "r_i_wald"          = "`R_IAIB_wald`"
     , "r_i_pval"          = "`R_IAIB_pval`"
     , "r_s_est"           = "`R_SASB_est`"        # alternate as needed
     # , "r_s_est"           = "`ab_CORR_11`"      # alternate as needed
     , "r_s_se"            = "`R_SASB_se`"
     , "r_s_wald"          = "`R_SASB_wald`"
     , "r_s_pval"          = "`R_SASB_pval`"
     , "r_r_est"           = "`R_RES_AB_est`"      # alternate as needed
     # , "r_r_est"           = "`ab_CORR_residual`"# alternate as needed
     , "r_r_se"            = "`R_RES_AB_se`"
     , "r_r_wald"          = "`R_RES_AB_wald`"
     , "r_r_pval"          = "`R_RES_AB_pval`"
     , "r_i_ci95_lower"    = "ab_CI95_00_low"
     , "r_i_ci95_upper"    = "ab_CI95_00_high"
     , "r_s_ci95_lower"    = "ab_CI95_11_low"
     , "r_s_ci95_upper"    = "ab_CI95_11_high"
     , "r_r_ci95_lower"    = "ab_CI95_residual_low"
     , "r_r_ci95_upper"    = "ab_CI95_residual_high"
  ) %>%
  dplyr::select_(.dots=c(variables_part_1, variables_part_4a, variables_part_4b)) %>%
  dplyr::filter( !is.na(process_a) & !is.na(process_b) ) %>%
  dplyr::filter( process_a!="nophys" & process_b!="nocog" ) %>%
  tidyr::gather_("r", "value", variables_part_4b) %>%
  dplyr::mutate(
    stem      = gsub(regex_r, "\\1", r, perl=T),
    stat      = gsub(regex_r, "\\2", r, perl=T)
  )

rm(ds_order_r, ds_full, variables_part_4b) #variables_part_1

# remove-duplicates ----
ds_no_duplicates <- ds_long %>%
  dplyr::group_by_(
    .dots=c(variables_part_1, variables_part_4a, "r", "stem", "stat") #Lacks "value"
  ) %>%
  dplyr::summarize(
    # value  = dplyr::first(value, na.rm=T)
    value  = mean(value, na.rm=T)
  ) %>%
  dplyr::ungroup()


coefficient_of_variation <- function(x)( sd(x)/mean(x) )
ds_find_duplicates <- ds_long %>%
  dplyr::distinct() %>% #Drops it from 256 rows to 56 rows.
  dplyr::group_by_(
    .dots=c(variables_part_1, variables_part_4a,  "r", "stem", "stat")
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

# testit::assert("No meaningful duplicate rows should exist.", nrow(ds_find_duplicates)==0L)
rm(variables_part_1, variables_part_4a, ds_find_duplicates)


pattern_est <- c(
  "i"    = "%0.2f",
  "s"    = "%0.2f",
  "r"    = "%0.2f"
)
pattern_se <- c(
  "i"    = "%0.2f",
  "s"    = "%0.2f",
  "r"    = "%0.2f"
)
pattern_dense <- c(
  "i"    = "%6s(%4s),%7s",
  "s"    = "%6s(%4s),%7s",
  "r"    = "%6s(%4s),%7s"
)
# pattern_dense[[ds_spread_1$stem[1]]]

# spread-to-stem ----
ds_spread <- ds_no_duplicates %>%
  dplyr::select(-r) %>%
  tidyr::spread(stat, value)

# create a csv manhole
readr::write_csv(ds_spread, "./data/shared/tables/seed/correlations-spread.csv")

ds_spread_pretty <- ds_spread %>%
  dplyr::mutate(
    subject_count = scales::comma(subject_count),
    est_pretty    = sprintf(pattern_est[stem], est),
    se_pretty     = sprintf(pattern_se[stem], se),
    pval_pretty   = sprintf("%0.2f", pval), #Remove leading zero from p-value.
    pval_pretty   = ifelse(pval>.99, ".99", sub("^0(.\\d+)$", "\\1", pval_pretty)), #Cap p-value at .99
    pval_pretty   = sprintf("*p*=%s", pval_pretty),
    pval_pretty   = ifelse(pval_pretty=="*p*=.00", "*p*<.01", pval_pretty),       #Cap p-value at .01
    pval_pretty   = ifelse(pval_pretty=="*p*=NA" , "*p*= NA", pval_pretty),       #Pad NA with space
    pattern       = pattern_dense[stem],
    dense         = sprintf(pattern, est_pretty, se_pretty, pval_pretty),
    dense         = ifelse(is.nan(est), "--,*p*=  ----", dense)
  ) %>%
  dplyr::select(-est, -se, -wald, -est_pretty, -se_pretty, -pval, -pval_pretty, -pattern, -ci95_lower, -ci95_upper)

# widen ----
ds_wide_pretty <- ds_spread_pretty %>%
  dplyr::mutate(
    #stem  = gsub("^(\\w)_(\\d{2})$", "r_\\1_\\2", stem)
    stem   = paste0("r_", stem)
  ) %>%
  tidyr::spread(stem, dense) %>%
  dplyr::select(study_name, process_a, process_b, subgroup, model_type, subject_count, r_i, r_s, r_r) %>%
  dplyr::arrange(study_name, process_a, process_b, subgroup, model_type) %>%
  dplyr::rename_(
    "n"               = "subject_count",
    "r_intercept"     = "r_i",
    "r_slope"         = "r_s",
    "r_residual"      = "r_r"
  )

# ---- prettify ----------------------------------------------------------------
ds_dynamic_pretty <- ds_wide_pretty %>%
  dplyr::mutate(
    study_name    = factor(study_name),
    process_a     = factor(process_a),
    process_b     = factor(process_b),
    subgroup      = factor(subgroup),
    model_type    = factor(model_type),
    r_intercept   = sub("*p*", "p", r_intercept),
    r_slope       = sub("*p*", "p", r_slope),
    r_residual    = sub("*p*", "p", r_residual)
  )
colnames(ds_dynamic_pretty) <- gsub("_", " ", colnames(ds_dynamic_pretty))

# create a csv manhole
readr::write_csv(ds_dynamic_pretty, "./data/shared/tables/seed/correlations-dynamic.csv")


ds_static_pretty <- ds_wide_pretty %>%
  dplyr::filter(model_type=="aehplus") %>%
  dplyr::mutate(
    process       = sprintf("%*s vs %s", max(nchar(process_a)), process_a, process_b)
    # table_header  = paste0(study_name, ": ", process)
  ) %>%
  dplyr::select(-model_type, -process_a, -process_b)
# ds_static_pretty$process

ds_static_pretty <- ds_static_pretty %>%
  dplyr::select_(.dots=c("study_name", "process", "subgroup", setdiff(colnames(ds_static_pretty), c("study_name", "process", "subgroup")))) %>%
  dplyr::rename_(
    "Processes"        = "process",
    "Gender"           = "subgroup",
    "$n$"              = "n",
    "$r_{intercepts}$" = "r_intercept",
    "$r_{slopes}$"     = "r_slope",
    "$r_{residuals}$"  = "r_residual"
  )

# creat a csv manhole
readr::write_csv(ds_static_pretty, "./data/shared/tables/seed/correlations-static.csv")

# ---- save-to-disk ----------------------------
