# This R script is used by
#
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
path_input <- "./data/shared/parsed-results.rds"
coefficient_of_variation <- function(x)( sd(x)/mean(x) )

# simplify ----
##########
# PART 1 : model identifiers
variables_part_1 <- c(
  "study_name",
  "process_a",
  "process_b",
  "subgroup",           # male & female
  "model_type"          # 0 , a, ae, aeh, aeh+, & full
)

###########
# PART 4a : model information indices
variables_part_4a <- c(
  "subject_count",
  "parameter_count",
  'll', "aic", "bic"
)

###########
# Part 4b : estimates of the covariates
# variables_part_4 <- grep(regex_r, colnames(ds_full), perl=T, value=T)
regex_gamma <- "^(a|b)_gamma_(\\d{2})_(est|se|wald|pval|ci95_lower|ci95_upper)$"
regex_general <- "^(a|b|aa|bb|ab)_(\\w+)_(\\d{2})_(est|se|wald|pval|ci95_lower|ci95_upper)$"
# regex_gamma <- "^(a|b|aa|bb|ab)_gamma_(\\d{2})_(est|se|wald|pval|ci95_lower|ci95_upper)$"

coefficients_possible <- c("00", "10", "01", "11", "02", "12", "03", "13", "04", "14", "05", "15", "06", "16")
stats_possible        <- c("est", "se", "wald", "pval")#, "ci95_lower", "ci95_upper")
ds_order_gamma <- tidyr::crossing(
  process       = c("a", "b"),
  ceofficient   = factor(coefficients_possible, levels=coefficients_possible),
  stat          = factor(stats_possible       , levels=stats_possible)
)

coefficient_key <- c(
  "0"  = "intercept",
  "1"  = "age",
  "2"  = "education",
  "3"  = "height",
  "4"  = "smoking",
  "5"  = "cardio",
  "6"  = "diabetes"
)
#, "ci95_lower", "ci95_upper"),

# OuhscMunge::column_rename_headstart(ds_full)
variables_part_4b <- sprintf(
  "%s_gamma_%s_%s",
  ds_order_gamma$process,
  ds_order_gamma$ceofficient,
  ds_order_gamma$stat
)
###########
# PART 4c :  bivariate intercepts, slopes, and residuals (BISR)
variables_part_4c <- c(
  # estimates of intercepts and slopes
    "aa_tau_00_est"
  , "aa_tau_00_se"
  , "aa_tau_00_wald"
  , "aa_tau_00_pval"
  , "aa_tau_11_est"
  , "aa_tau_11_se"
  , "aa_tau_11_wald"
  , "aa_tau_11_pval"
  , "bb_tau_00_est"
  , "bb_tau_00_se"
  , "bb_tau_00_wald"
  , "bb_tau_00_pval"
  , "bb_tau_11_est"
  , "bb_tau_11_se"
  , "bb_tau_11_wald"
  , "bb_tau_11_pval"
  # residuals
  , "a_sigma_00_est"
  , "a_sigma_00_se"
  , "a_sigma_00_wald"
  , "a_sigma_00_pval"
  , "b_sigma_00_est"
  , "b_sigma_00_se"
  , "b_sigma_00_wald"
  , "b_sigma_00_pval"
  # covariances of intecepts and slopes
  , "ab_tau_00_est"
  , "ab_tau_00_se"
  , "ab_tau_00_wald"
  , "ab_tau_00_pval"
  , "ab_tau_11_est"
  , "ab_tau_11_se"
  , "ab_tau_11_wald"
  , "ab_tau_11_pval"
  , "ab_tau_01_est"
  , "ab_tau_01_se"
  , "ab_tau_01_wald"
  , "ab_tau_01_pval"
  , "ab_tau_10_est"
  , "ab_tau_10_se"
  , "ab_tau_10_wald"
  , "ab_tau_10_pval"
)
# ---- load-data ---------------------------------------------------------------
ds_full <- readRDS(path_input) # catalog
rm(path_input)


# ---- tweak-data --------------------------------------------------------------

# elongate ----
ds_long <- ds_full %>%
  dplyr::rename_(
    # general model information
      "study_name"                  = "`study_name`"
    , "model_number"                = "`model_number`"
    , "subgroup"                    = "`subgroup`"
    , "model_type"                  = "`model_type`"
    , "subject_count"               = "`subject_count`"
    , "wave_count"                  = "`wave_count`"
    , "datapoint_count"             = "`datapoint_count`"
    , "parameter_count"             = "`parameter_count`"
    , "ll"                          = "`LL`"
    , "aic"                         = "`aic`"
    , "bic"                         = "`bic`"
    , "adj_bic"                     = "`adj_bic`"
    , "aaic"                        = "`aaic`"
    , "has_converged"               = "`has_converged`"
    , "trust_all"                   = "`trust_all`"
    , "mistrust"                    = "`mistrust`"
    , "covar_covered"               = "`covar_covered`"
    # estimates of intercepts and slopes
    , "aa_tau_00_est"               = "`aa_TAU_00_est`"
    , "aa_tau_00_se"                = "`aa_TAU_00_se`"
    , "aa_tau_00_wald"              = "`aa_TAU_00_wald`"
    , "aa_tau_00_pval"              = "`aa_TAU_00_pval`"
    , "aa_tau_11_est"               = "`aa_TAU_11_est`"
    , "aa_tau_11_se"                = "`aa_TAU_11_se`"
    , "aa_tau_11_wald"              = "`aa_TAU_11_wald`"
    , "aa_tau_11_pval"              = "`aa_TAU_11_pval`"
    , "bb_tau_00_est"               = "`bb_TAU_00_est`"
    , "bb_tau_00_se"                = "`bb_TAU_00_se`"
    , "bb_tau_00_wald"              = "`bb_TAU_00_wald`"
    , "bb_tau_00_pval"              = "`bb_TAU_00_pval`"
    , "bb_tau_11_est"               = "`bb_TAU_11_est`"
    , "bb_tau_11_se"                = "`bb_TAU_11_se`"
    , "bb_tau_11_wald"              = "`bb_TAU_11_wald`"
    , "bb_tau_11_pval"              = "`bb_TAU_11_pval`"
    # we arbitraraly assing residual to 00, to keep names consistent, no implications
    , "a_sigma_00_est"              = "`a_SIGMA_est`"
    , "a_sigma_00_se"               = "`a_SIGMA_se`"
    , "a_sigma_00_wald"             = "`a_SIGMA_wald`"
    , "a_sigma_00_pval"             = "`a_SIGMA_pval`"
    , "b_sigma_00_est"              = "`b_SIGMA_est`"
    , "b_sigma_00_se"               = "`b_SIGMA_se`"
    , "b_sigma_00_wald"             = "`b_SIGMA_wald`"
    , "b_sigma_00_pval"             = "`b_SIGMA_pval`"
    # covariances of intecepts and slopes
    , "ab_tau_00_est"               = "`ab_TAU_00_est`"
    , "ab_tau_00_se"                = "`ab_TAU_00_se`"
    , "ab_tau_00_wald"              = "`ab_TAU_00_wald`"
    , "ab_tau_00_pval"              = "`ab_TAU_00_pval`"
    , "ab_tau_11_est"               = "`ab_TAU_11_est`"
    , "ab_tau_11_se"                = "`ab_TAU_11_se`"
    , "ab_tau_11_wald"              = "`ab_TAU_11_wald`"
    , "ab_tau_11_pval"              = "`ab_TAU_11_pval`"
    , "ab_tau_01_est"               = "`ab_TAU_01_est`"
    , "ab_tau_01_se"                = "`ab_TAU_01_se`"
    , "ab_tau_01_wald"              = "`ab_TAU_01_wald`"
    , "ab_tau_01_pval"              = "`ab_TAU_01_pval`"
    , "ab_tau_10_est"               = "`ab_TAU_10_est`"
    , "ab_tau_10_se"                = "`ab_TAU_10_se`"
    , "ab_tau_10_wald"              = "`ab_TAU_10_wald`"
    , "ab_tau_10_pval"              = "`ab_TAU_10_pval`"
    # estimates of covariates
    , "a_gamma_00_est"              = "`a_GAMMA_00_est`"
    , "a_gamma_00_se"               = "`a_GAMMA_00_se`"
    , "a_gamma_00_wald"             = "`a_GAMMA_00_wald`"
    , "a_gamma_00_pval"             = "`a_GAMMA_00_pval`"
    , "a_gamma_10_est"              = "`a_GAMMA_10_est`"
    , "a_gamma_10_se"               = "`a_GAMMA_10_se`"
    , "a_gamma_10_wald"             = "`a_GAMMA_10_wald`"
    , "a_gamma_10_pval"             = "`a_GAMMA_10_pval`"
    , "a_gamma_01_est"              = "`a_GAMMA_01_est`"
    , "a_gamma_01_se"               = "`a_GAMMA_01_se`"
    , "a_gamma_01_wald"             = "`a_GAMMA_01_wald`"
    , "a_gamma_01_pval"             = "`a_GAMMA_01_pval`"
    , "b_gamma_00_est"              = "`b_GAMMA_00_est`"
    , "b_gamma_00_se"               = "`b_GAMMA_00_se`"
    , "b_gamma_00_wald"             = "`b_GAMMA_00_wald`"
    , "b_gamma_00_pval"             = "`b_GAMMA_00_pval`"
    , "b_gamma_10_est"              = "`b_GAMMA_10_est`"
    , "b_gamma_10_se"               = "`b_GAMMA_10_se`"
    , "b_gamma_10_wald"             = "`b_GAMMA_10_wald`"
    , "b_gamma_10_pval"             = "`b_GAMMA_10_pval`"
    , "a_gamma_01_est"              = "`a_GAMMA_01_est`"
    , "a_gamma_01_se"               = "`a_GAMMA_01_se`"
    , "a_gamma_01_wald"             = "`a_GAMMA_01_wald`"
    , "a_gamma_01_pval"             = "`a_GAMMA_01_pval`"
    , "a_gamma_11_est"              = "`a_GAMMA_11_est`"
    , "a_gamma_11_se"               = "`a_GAMMA_11_se`"
    , "a_gamma_11_wald"             = "`a_GAMMA_11_wald`"
    , "a_gamma_11_pval"             = "`a_GAMMA_11_pval`"
    , "b_gamma_01_est"              = "`b_GAMMA_01_est`"
    , "b_gamma_01_se"               = "`b_GAMMA_01_se`"
    , "b_gamma_01_wald"             = "`b_GAMMA_01_wald`"
    , "b_gamma_01_pval"             = "`b_GAMMA_01_pval`"
    , "b_gamma_11_est"              = "`b_GAMMA_11_est`"
    , "b_gamma_11_se"               = "`b_GAMMA_11_se`"
    , "b_gamma_11_wald"             = "`b_GAMMA_11_wald`"
    , "b_gamma_11_pval"             = "`b_GAMMA_11_pval`"
    , "a_gamma_02_est"              = "`a_GAMMA_02_est`"
    , "a_gamma_02_se"               = "`a_GAMMA_02_se`"
    , "a_gamma_02_wald"             = "`a_GAMMA_02_wald`"
    , "a_gamma_02_pval"             = "`a_GAMMA_02_pval`"
    , "a_gamma_12_est"              = "`a_GAMMA_12_est`"
    , "a_gamma_12_se"               = "`a_GAMMA_12_se`"
    , "a_gamma_12_wald"             = "`a_GAMMA_12_wald`"
    , "a_gamma_12_pval"             = "`a_GAMMA_12_pval`"
    , "b_gamma_02_est"              = "`b_GAMMA_02_est`"
    , "b_gamma_02_se"               = "`b_GAMMA_02_se`"
    , "b_gamma_02_wald"             = "`b_GAMMA_02_wald`"
    , "b_gamma_02_pval"             = "`b_GAMMA_02_pval`"
    , "b_gamma_12_est"              = "`b_GAMMA_12_est`"
    , "b_gamma_12_se"               = "`b_GAMMA_12_se`"
    , "b_gamma_12_wald"             = "`b_GAMMA_12_wald`"
    , "b_gamma_12_pval"             = "`b_GAMMA_12_pval`"
    , "a_gamma_03_est"              = "`a_GAMMA_03_est`"
    , "a_gamma_03_se"               = "`a_GAMMA_03_se`"
    , "a_gamma_03_wald"             = "`a_GAMMA_03_wald`"
    , "a_gamma_03_pval"             = "`a_GAMMA_03_pval`"
    , "a_gamma_13_est"              = "`a_GAMMA_13_est`"
    , "a_gamma_13_se"               = "`a_GAMMA_13_se`"
    , "a_gamma_13_wald"             = "`a_GAMMA_13_wald`"
    , "a_gamma_13_pval"             = "`a_GAMMA_13_pval`"
    , "b_gamma_03_est"              = "`b_GAMMA_03_est`"
    , "b_gamma_03_se"               = "`b_GAMMA_03_se`"
    , "b_gamma_03_wald"             = "`b_GAMMA_03_wald`"
    , "b_gamma_03_pval"             = "`b_GAMMA_03_pval`"
    , "b_gamma_13_est"              = "`b_GAMMA_13_est`"
    , "b_gamma_13_se"               = "`b_GAMMA_13_se`"
    , "b_gamma_13_wald"             = "`b_GAMMA_13_wald`"
    , "b_gamma_13_pval"             = "`b_GAMMA_13_pval`"
    , "a_gamma_04_est"              = "`a_GAMMA_04_est`"
    , "a_gamma_04_se"               = "`a_GAMMA_04_se`"
    , "a_gamma_04_wald"             = "`a_GAMMA_04_wald`"
    , "a_gamma_04_pval"             = "`a_GAMMA_04_pval`"
    , "a_gamma_14_est"              = "`a_GAMMA_14_est`"
    , "a_gamma_14_se"               = "`a_GAMMA_14_se`"
    , "a_gamma_14_wald"             = "`a_GAMMA_14_wald`"
    , "a_gamma_14_pval"             = "`a_GAMMA_14_pval`"
    , "b_gamma_04_est"              = "`b_GAMMA_04_est`"
    , "b_gamma_04_se"               = "`b_GAMMA_04_se`"
    , "b_gamma_04_wald"             = "`b_GAMMA_04_wald`"
    , "b_gamma_04_pval"             = "`b_GAMMA_04_pval`"
    , "b_gamma_14_est"              = "`b_GAMMA_14_est`"
    , "b_gamma_14_se"               = "`b_GAMMA_14_se`"
    , "b_gamma_14_wald"             = "`b_GAMMA_14_wald`"
    , "b_gamma_14_pval"             = "`b_GAMMA_14_pval`"
    , "a_gamma_05_est"              = "`a_GAMMA_05_est`"
    , "a_gamma_05_se"               = "`a_GAMMA_05_se`"
    , "a_gamma_05_wald"             = "`a_GAMMA_05_wald`"
    , "a_gamma_05_pval"             = "`a_GAMMA_05_pval`"
    , "a_gamma_15_est"              = "`a_GAMMA_15_est`"
    , "a_gamma_15_se"               = "`a_GAMMA_15_se`"
    , "a_gamma_15_wald"             = "`a_GAMMA_15_wald`"
    , "a_gamma_15_pval"             = "`a_GAMMA_15_pval`"
    , "b_gamma_05_est"              = "`b_GAMMA_05_est`"
    , "b_gamma_05_se"               = "`b_GAMMA_05_se`"
    , "b_gamma_05_wald"             = "`b_GAMMA_05_wald`"
    , "b_gamma_05_pval"             = "`b_GAMMA_05_pval`"
    , "b_gamma_15_est"              = "`b_GAMMA_15_est`"
    , "b_gamma_15_se"               = "`b_GAMMA_15_se`"
    , "b_gamma_15_wald"             = "`b_GAMMA_15_wald`"
    , "b_gamma_15_pval"             = "`b_GAMMA_15_pval`"
    , "a_gamma_06_est"              = "`a_GAMMA_06_est`"
    , "a_gamma_06_se"               = "`a_GAMMA_06_se`"
    , "a_gamma_06_wald"             = "`a_GAMMA_06_wald`"
    , "a_gamma_06_pval"             = "`a_GAMMA_06_pval`"
    , "a_gamma_16_est"              = "`a_GAMMA_16_est`"
    , "a_gamma_16_se"               = "`a_GAMMA_16_se`"
    , "a_gamma_16_wald"             = "`a_GAMMA_16_wald`"
    , "a_gamma_16_pval"             = "`a_GAMMA_16_pval`"
    , "b_gamma_06_est"              = "`b_GAMMA_06_est`"
    , "b_gamma_06_se"               = "`b_GAMMA_06_se`"
    , "b_gamma_06_wald"             = "`b_GAMMA_06_wald`"
    , "b_gamma_06_pval"             = "`b_GAMMA_06_pval`"
    , "b_gamma_16_est"              = "`b_GAMMA_16_est`"
    , "b_gamma_16_se"               = "`b_GAMMA_16_se`"
    , "b_gamma_16_wald"             = "`b_GAMMA_16_wald`"
    , "b_gamma_16_pval"             = "`b_GAMMA_16_pval`"
  ) %>%
  # dplyr::mutate(
  #   t_crit                = qt(subject_count - parameter_count, p=.975),
  #   a_gamma_00_radius     = t_crit * a_gamma_00_se,
  #   a_gamma_10_radius     = t_crit * a_gamma_10_se,
  #   b_gamma_00_radius     = t_crit * b_gamma_00_se,
  #   b_gamma_10_radius     = t_crit * b_gamma_10_se,
  #
  #   a_gamma_00_ci95_lower = a_gamma_00_est - a_gamma_00_radius,
  #   a_gamma_00_ci95_upper = a_gamma_00_est + a_gamma_00_radius,
  #   a_gamma_10_ci95_lower = a_gamma_10_est - a_gamma_10_radius,
  #   a_gamma_10_ci95_upper = a_gamma_10_est + a_gamma_10_radius,
  #
  #   b_gamma_00_ci95_lower = b_gamma_00_est - b_gamma_00_radius,
  #   b_gamma_00_ci95_upper = b_gamma_00_est + b_gamma_00_radius,
  #   b_gamma_10_ci95_lower = b_gamma_10_est - b_gamma_10_radius,
  #   b_gamma_10_ci95_upper = b_gamma_10_est + b_gamma_10_radius
  # ) %>%
  dplyr::select_(.dots=c(variables_part_1, variables_part_4a, variables_part_4b, variables_part_4c))  %>%
  dplyr::filter( !is.na(process_a) & !is.na(process_b) ) %>%  # remove univariate models
  dplyr::filter( process_a!="nophys" & process_b!="nocog" ) %>% # remove univariate models
  tidyr::gather_("g", "value", c(variables_part_4b,variables_part_4c)) %>% # BISR + covariates
  dplyr::mutate(
    process      = gsub(regex_general, "\\1", g, perl=T),
    coefficient  = gsub(regex_general, "\\2", g, perl=T),
    subindex     = gsub(regex_general, "\\3", g, perl=T),
    stat         = gsub(regex_general, "\\4", g, perl=T)
  )
rm(ds_order_gamma, ds_full, variables_part_4b) #variables_part_1

# ---- table-dynamic-long ----------------------------------------
# inspect the created object via dynamic table
ds_long %>%
  dplyr::mutate(
    # study_name    = factor(study_name),
    process_a      = factor(process_a),
    process_b      = factor(process_b),
    process        = factor(process),
    subgroup       = factor(subgroup),
    coefficient    = factor(coefficient),
    stat           = factor(stat)
  ) %>%
  # dplyr::filter(model_type=="aehplus" & subgroup=="female" & process_a=="grip") %>%
  dplyr::filter(model_type=="aehplus" & subgroup=="female" & process_a=="grip" & study_name =="map") %>%
  dplyr::select(-g, -model_type, -subgroup, -process_a, -parameter_count) %>%
  DT::datatable(
    class     = 'cell-border stripe',
    caption   = "Growth Curve Model Solution --Long Format",
    filter    = "top",
    options   = list(pageLength = 6, autoWidth = TRUE)
  )

# ---- remove-duplicates ----------------------------------------
define_duplicates <- c(variables_part_1, variables_part_4a, "process", "coefficient","subindex", "stat") #Lacks "value"

ds_no_duplicates <- ds_long %>%
  dplyr::group_by_(
    # .dots=c(variables_part_1, variables_part_4a, "process", "process_a", "process_b", "coefficient", "stat") #Lacks "value"
    # .dots=c(variables_part_1, variables_part_4a, "process", "breed", "species", "stat") #Lacks "value"
    .dots=define_duplicates #Lacks "value"
  ) %>%
  dplyr::summarize(
    # value  = dplyr::first(value, na.rm=T)
    value  = mean(value, na.rm=T)
  ) %>%
  dplyr::ungroup()

ds_find_duplicates <- ds_long %>%
  dplyr::distinct() %>% #Drops it from 256 rows to 56 rows.
  dplyr::group_by_(
    # .dots=c(variables_part_1, variables_part_4a, "process", "process_a", "process_b", "coefficient", "stat")
    # .dots=c(variables_part_1, variables_part_4a,  "process", "breed", "species", "stat")
    .dots=define_duplicates #Lacks "value"
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
# rm(variables_part_1, variables_part_4a, ds_find_duplicates)

# ---- spread ------------------------------------------------------------------
pattern_est <- c(
  "intercept"    = "%0.2f",
  "slope"        = "%0.2f"
)
pattern_se <- c(
  "intercept"    = "%0.2f",
  "slope"        = "%0.2f"
)
pattern_dense <- c(
  "intercept"    = "%6s(%4s),%7s",
  "slope"        = "%6s(%4s),%7s"
)

# spread-to-stem ----
ds_spread <- ds_no_duplicates %>%
  # dplyr::select(-spread_lower, -spread_upper, -cv) %>%
  tidyr::spread(key=stat, value=value)# %>%
  # dplyr::mutate(
    # breed        = as.integer(gsub("^([01])(\\d)$", "\\1", coefficient)),
    # breed        = as.integer(subindex),
    # species      = as.integer(gsub("^([01])(\\d)$", "\\2", coefficient)),
    # species      = as.integer(gsub("^([01])(\\d)$", "\\2", coefficient)),
    # breed        = ifelse(breed==0L, "intercept", ifelse(breed==1L, "slope", NA_character_))
    # is_intercept = grepl("^0\\d$", coefficient),
    # is_slope     = grepl("^1\\d$", coefficient),
    # breed        = ifelse(is_intercept, "intercept", ifelse(is_slope, "slope", NA_character_))
  # ) %>%
# dplyr::select(-is_intercept, -is_slope)
# testit::assert("A value should be from only an intercept or a slope, but not both.", all(xor(ds_long$is_intercept, ds_long$is_slope)))
# testit::assert("A value should be from only an intercept or a slope.", all(!is.na(ds_spread$breed)))

# create a csv manhole
# readr::write_csv(ds_spread, "./data/shared/tables/seed/growth-curve-spread.csv")

# spread-pretty -----------------
ds_spread_pretty <- ds_spread %>%
  dplyr::mutate(
    subject_count = scales::comma(subject_count),
    est_pretty    = sprintf(pattern_est[1], est),
    se_pretty     = sprintf(pattern_se[1], se),
    pval_pretty   = sprintf("%0.2f", pval), #Remove leading zero from p-value.
    pval_pretty   = ifelse(pval>.99, ".99", sub("^0(.\\d+)$", "\\1", pval_pretty)), #Cap p-value at .99
    pval_pretty   = sprintf("*p*=%s", pval_pretty),
    pval_pretty   = ifelse(pval_pretty=="*p*=.00", "*p*<.01", pval_pretty),       #Cap p-value at .01
    pval_pretty   = ifelse(pval_pretty=="*p*=NA" , "*p*= NA", pval_pretty),       #Pad NA with space
    pattern       = pattern_dense[1],
    dense         = sprintf(pattern, est_pretty, se_pretty, pval_pretty),
    dense         = ifelse(is.na(est), "--,*p*=  ----", dense),                    #If the cell is bogus, don't bother displaying `NA` in the manuscript table.
    full_name     = paste0(process,"_",coefficient,"_",subindex)
  )# %>%
  # dplyr::select(-est, -se, -wald, -est_pretty, -se_pretty, -pval, -pval_pretty, -pattern) %>% #, -ci95_lower, -ci95_upper
  # dplyr::mutate(
  #   species       = factor(species, levels=names(coefficient_key), labels=coefficient_key)
  # )

# model_key <- c(
#   # fixed effects
#   "a_gamma_00", # intercept                          of process a
#   "a_gamma_10", # slope                              of process a
#   "a_gamma_01", # age        regressed on intercept  of process a
#   "a_gamma_02", # education  regressed on intercept  of process a
#   "a_gamma_03", # height     regressed on intercept  of process a
#   "a_gamma_04", # smoking    regressed on intercept  of process a
#   "a_gamma_05", # cardio     regressed on intercept  of process a
#   "a_gamma_06", # diabetes   regressed on intercept  of process a
#   "a_gamma_11", # age        regressed on slope      of process a
#   "a_gamma_12", # education  regressed on slope      of process a
#   "a_gamma_13", # height     regressed on slope      of process a
#   "a_gamma_14", # smoking    regressed on slope      of process a
#   "a_gamma_15", # cardio     regressed on slope      of process a
#   "a_gamma_16", # diabetes   regressed on slope      of process a
#
#   "b_gamma_00", # intercept                          of process b
#   "b_gamma_10", # slope                              of process b
#   "b_gamma_01", # age        regressed on intercept  of process a
#   "b_gamma_02", # education  regressed on intercept  of process a
#   "b_gamma_03", # height     regressed on intercept  of process a
#   "b_gamma_04", # smoking    regressed on intercept  of process a
#   "b_gamma_05", # cardio     regressed on intercept  of process a
#   "b_gamma_06", # diabetes   regressed on intercept  of process a
#   "b_gamma_11", # age        regressed on slope      of process a
#   "b_gamma_12", # education  regressed on slope      of process a
#   "b_gamma_13", # height     regressed on slope      of process a
#   "b_gamma_14", # smoking    regressed on slope      of process a
#   "b_gamma_15", # cardio     regressed on slope      of process a
#   "b_gamma_16", # diabetes   regressed on slope      of process a
#
#   # Variance components
#   "aa_tau_00" , # intercept  variance                of process a
#   "aa_tau_11" , # slope      variance                of process a
#   "a_sigma_00", # residual   variance                of porcess a
#
#   "bb_tau_00" , # intercept  variance                of process b
#   "bb_tau_11" , # slope      variance                of process b
#   "b_sigma_00", # residual   variance                of porcess b
#
#   # Covariance componets
#   "ab_tau_00",  #            covariance              of intercepts
#   "ab_tau_11",  #            covariance              of slopes
#   "ab_tau_01",  #            covariance b/w intercept a and slope b
#   "ab_tau_10"  #            covariance b/w intercept b and slope a
#   # "ab_tau_01"  # int-slope  covariance              of process a
#   # "ab_tau_10"  # int-slope  covariance              of porcess b
# )





# ----- function-to-pull-a-model --------------------------
# pull_one_model <- function(d, study_name, subgroup, process_a, process_b, model_type){
pull_one_model <- function(d){
  stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil.csv")
  stencil$label <- format(stencil$label, justify = "left")
  # model_key <- factor(stencil$full_name, levels = stencil$full_name, labels = stencil$label)
  model_key <- stencil$full_name
  model_key_labels <- stencil$label

  d <- ds_spread_pretty
  head(d)
  dd <- d %>% dplyr::filter(
    study_name == "map",
    subgroup   == "female",
    process_a  == "grip",
    process_b  == "line",
    model_type == "aehplus",
    full_name %in% model_key
  ) #%>%
  #   dplyr::mutate(
        # full_name       = factor(full_name, levels=model_key, labels=model_key_labels)
  #     full_name       = factor(full_name, levels=names(model_key), labels=model_key)
  #   )
  # d <- dd %>% dplyr::arrange(full_name)
  d <- dplyr::left_join(stencil, dd, by = "full_name") %>%
    # dplyr::rename(process = process.x) %>%
    dplyr::mutate( process = process.x) %>%
    dplyr::select(type,process, label,dense)

  return(d)
}
pull_one_model(ds_no_duplicates) %>% print(n=50)



# ---- look-up-easy ---------------
ds_no_duplicates %>%
# ds_spread %>%
  # dplyr::mutate(
  #   study_name     = factor(study_name),
  #   process        = factor(process),
  #   # stat           = factor(stat),
  #   coefficient    = factor(coefficient),
  #   subgroup       = factor(subgroup)
  # ) %>%
  dplyr::filter(model_type=="aehplus" & subgroup=="female" & study_name=="map" ) %>%
  dplyr::select(-model_type, -subgroup) %>%
  # dplyr::arrange(study_name, process, coefficient, stat) %>%
  dplyr::arrange(study_name, process, coefficient) %>%
  DT::datatable(
    class     = 'cell-border stripe',
    caption   = "Growth Curve Model Solution --Collapsed Format",
    filter    = "top",
    options   = list(pageLength = 20, autoWidth = TRUE)
  )

############################## The code below is from sandbox/word-tables/compile-growth-tables

# ---- collapse-within-process ----------------------------------------
ds_collapsed_physical <- ds_no_duplicates %>%
  dplyr::filter(process=="a") %>%
  dplyr::select(-process) %>%
  dplyr::group_by_(.dots=c("study_name", "process_a", "subgroup", "model_type", "coefficient", "stat")) %>%
  dplyr::summarize(
    subject_count   = as.integer(median(subject_count, na.rm=T)),
    spread_lower    = min(value, na.rm=T),
    spread_upper    = max(value, na.rm=T),
    cv              = round(coefficient_of_variation(value), 4),
    spread_lower    = ifelse(!is.nan(spread_lower), spread_lower, NA_real_),
    spread_upper    = ifelse(!is.nan(spread_upper), spread_upper, NA_real_),
    cv              = ifelse(!is.nan(cv)          , cv          , NA_real_),
    value           = median(value, na.rm=T)
  ) %>%
  dplyr::ungroup() %>%
  dplyr::rename_("process" = "process_a")

ds_collapsed_cognitive <- ds_no_duplicates %>%
  dplyr::filter(process=="b") %>%
  dplyr::select(-process) %>%
  dplyr::group_by_(.dots=c("study_name", "process_b", "subgroup", "model_type", "coefficient", "stat")) %>%
  dplyr::summarize(
    subject_count   = as.integer(median(subject_count, na.rm=T)),
    spread_lower    = min(value, na.rm=T),
    spread_upper    = max(value, na.rm=T),
    cv              = round(coefficient_of_variation(value), 4),
    spread_lower    = ifelse(!is.nan(spread_lower), spread_lower, NA_real_),
    spread_upper    = ifelse(!is.nan(spread_upper), spread_upper, NA_real_),
    cv              = ifelse(!is.nan(cv)          , cv          , NA_real_),
    value           = median(value, na.rm=T)
  ) %>%
  dplyr::ungroup() %>%
  dplyr::rename_("process" = "process_b")

ds_collapsed <- ds_collapsed_physical %>%
  dplyr::union(ds_collapsed_cognitive) %>%
  dplyr::arrange(study_name, process, subgroup, model_type, coefficient, stat)

rm(ds_collapsed_physical, ds_collapsed_cognitive)


# ---- table-dynamic-collapsed ----------------------------------------

ds_collapsed %>%
  dplyr::mutate(
    study_name     = factor(study_name),
    process        = factor(process),
    subgroup       = factor(subgroup),
    coefficient    = factor(coefficient),
    stat           = factor(stat)
  ) %>%
  dplyr::filter(model_type=="aehplus" & subgroup=="female" ) %>%
  dplyr::select(-model_type, -subgroup) %>%
  dplyr::arrange(study_name, process, coefficient, stat) %>%
  DT::datatable(
    class     = 'cell-border stripe',
    caption   = "Growth Curve Model Solution --Collapsed Format",
    filter    = "top",
    options   = list(pageLength = 8, autoWidth = TRUE)
  )

# ---- spread ------------------------------------------------------------------
pattern_est <- c(
  "intercept"    = "%0.2f",
  "slope"        = "%0.2f"
)
pattern_se <- c(
  "intercept"    = "%0.2f",
  "slope"        = "%0.2f"
)
pattern_dense <- c(
  "intercept"    = "%6s(%4s),%7s",
  "slope"        = "%6s(%4s),%7s"
)

# spread-to-stem ----
ds_spread <- ds_collapsed %>%
  dplyr::select(-spread_lower, -spread_upper, -cv) %>%
  tidyr::spread(key=stat, value=value) %>%
  dplyr::mutate(
    breed        = as.integer(gsub("^([01])(\\d)$", "\\1", coefficient)),
    species      = as.integer(gsub("^([01])(\\d)$", "\\2", coefficient)),
    breed        = ifelse(breed==0L, "intercept", ifelse(breed==1L, "slope", NA_character_))
    # is_intercept = grepl("^0\\d$", coefficient),
    # is_slope     = grepl("^1\\d$", coefficient),
    # breed        = ifelse(is_intercept, "intercept", ifelse(is_slope, "slope", NA_character_))
  ) #%>%
# dplyr::select(-is_intercept, -is_slope)
# testit::assert("A value should be from only an intercept or a slope, but not both.", all(xor(ds_long$is_intercept, ds_long$is_slope)))
testit::assert("A value should be from only an intercept or a slope.", all(!is.na(ds_spread$breed)))

# create a csv manhole
readr::write_csv(ds_spread, "./data/shared/tables/seed/growth-curve-spread.csv")



ds_spread_pretty <- ds_spread %>%
  dplyr::mutate(
    subject_count = scales::comma(subject_count),
    est_pretty    = sprintf(pattern_est[1], est),
    se_pretty     = sprintf(pattern_se[1], se),
    pval_pretty   = sprintf("%0.2f", pval), #Remove leading zero from p-value.
    pval_pretty   = ifelse(pval>.99, ".99", sub("^0(.\\d+)$", "\\1", pval_pretty)), #Cap p-value at .99
    pval_pretty   = sprintf("*p*=%s", pval_pretty),
    pval_pretty   = ifelse(pval_pretty=="*p*=.00", "*p*<.01", pval_pretty),       #Cap p-value at .01
    pval_pretty   = ifelse(pval_pretty=="*p*=NA" , "*p*= NA", pval_pretty),       #Pad NA with space
    pattern       = pattern_dense[1],
    dense         = sprintf(pattern, est_pretty, se_pretty, pval_pretty),
    dense         = ifelse(is.na(est), "--,*p*=  ----", dense)                    #If the cell is bogus, don't bother displaying `NA` in the manuscript table.
  ) %>%
  dplyr::select(-est, -se, -wald, -est_pretty, -se_pretty, -pval, -pval_pretty, -pattern) %>% #, -ci95_lower, -ci95_upper
  dplyr::mutate(
    species       = factor(species, levels=names(coefficient_key), labels=coefficient_key)
  )

# widen ----
ds_wide_pretty <- ds_spread_pretty %>%  #Puts the dense columns for `intercept` and `slope` side-by-side
  dplyr::select(-coefficient) %>%
  tidyr::spread(key=breed, value=dense) %>%
  dplyr::select(study_name, process, subgroup, model_type, subject_count, species, intercept, slope) %>%
  dplyr::arrange(study_name, process, subgroup, model_type) %>%
  dplyr::rename_(
    "n"               = "subject_count"
  )

# ---- prettify ----------------------------------------------------------------
ds_dynamic_pretty <- ds_wide_pretty %>%
  dplyr::mutate(
    study_name    = factor(study_name),
    process       = factor(process),
    subgroup      = factor(subgroup),
    model_type    = factor(model_type),
    intercept     = sub("*p*", "p", intercept),
    slope         = sub("*p*", "p", slope)
  )
colnames(ds_dynamic_pretty) <- gsub("_", " ", colnames(ds_dynamic_pretty))

# create a csv manhole
readr::write_csv(ds_dynamic_pretty, "./data/shared/tables/seed/growth-curve-dynamic.csv")

ds_static_pretty <- ds_wide_pretty %>%
  dplyr::filter(model_type=="aehplus") %>%
  dplyr::select(-model_type)

ds_static_pretty <- ds_static_pretty %>%
  dplyr::select_(.dots=c("study_name", "process", "subgroup", setdiff(colnames(ds_static_pretty), c("study_name", "process", "subgroup")))) %>%
  dplyr::mutate(                        #These three variables are just so we can create blanks
    process_group      = process,
    subgroup_group     = subgroup,
    n_group            = n
  )

# create a csv manhole
readr::write_csv(ds_static_pretty, "./data/shared/tables/seed/growth-curve-static.csv")
