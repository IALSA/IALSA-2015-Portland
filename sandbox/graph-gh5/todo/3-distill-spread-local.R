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
pathStudies <- file.path("./data/shared/covariance-issue/studies")
path_input      <- paste0(pathStudies,"/2-parsed-results-ci.csv")

coefficient_of_variation <- function(x)( sd(x)/mean(x) )

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
  "wave_count",
  'll', "aic", "bic"
)

###########
# Part 4b : estimates of the covariates
# variables_part_4 <- grep(regex_r, colnames(ds_full), perl=T, value=T)
regex_gamma <- "^(a|b)_gamma_(\\d{2})_(est|se|wald|pval|ci95_lower|ci95_upper)$"
regex_general <- "^(a|b|aa|bb|ab|r|cr)_(\\w+)_(\\d{2})_(est|se|wald|pval|ci95_lower|ci95_upper)$"
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

  , "aa_tau_01_est"
  , "aa_tau_01_se"
  , "aa_tau_01_wald"
  , "aa_tau_01_pval"
  , "bb_tau_10_est"
  , "bb_tau_10_se"
  , "bb_tau_10_wald"
  , "bb_tau_10_pval"

  # residuals
  , "a_sigma_00_est"
  , "a_sigma_00_se"
  , "a_sigma_00_wald"
  , "a_sigma_00_pval"
  , "b_sigma_00_est"
  , "b_sigma_00_se"
  , "b_sigma_00_wald"
  , "b_sigma_00_pval"
  ,"ab_sigma_00_est"
  ,"ab_sigma_00_se"
  ,"ab_sigma_00_wald"
  ,"ab_sigma_00_pval"
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
  # ESTIMATED correlations of intercepts, slopes, and residuals
  , "r_tau_00_est"
  , "r_tau_00_se"
  , "r_tau_00_wald"
  , "r_tau_00_pval"
  , "r_tau_11_est"
  , "r_tau_11_se"
  , "r_tau_11_wald"
  , "r_tau_11_pval"
  , "r_sigma_00_est"
  , "r_sigma_00_se"
  , "r_sigma_00_wald"
  , "r_sigma_00_pval"
)

# variables_part_4d <- c(
#   # COMPUTED  correlations of intercepts, slopes, and residuals
#     "cr_tau_00_est"
#   , "cr_tau_00_se"
#   , "cr_tau_00_pval"
#   , "cr_tau_11_est"
#   , "cr_tau_11_se"
#   , "cr_tau_11_pval"
#   , "cr_sigma_00_est"
#   , "cr_sigma_00_se"
#   , "cr_sigma_00_pval"
# )

variables_part_4d <- c(
    "cr_tau_00_est"
  , "cr_tau_00_se"
  , "cr_tau_00_wald"
  , "cr_tau_00_pval"
  , "cr_tau_11_est"
  , "cr_tau_11_se"
  , "cr_tau_11_wald"
  , "cr_tau_11_pval"
  , "cr_sigma_00_est"
  , "cr_sigma_00_se"
  , "cr_sigma_00_wald"
  , "cr_sigma_00_pval"
)
variables_part_4c <- c(variables_part_4c, variables_part_4d)
# ---- load-data ---------------------------------------------------------------
# ds_full <- readRDS(path_input) # catalog
ds_full <- read.csv(path_input, header = T,  stringsAsFactors=FALSE)
rm(path_input)
# create a small ds for testing
ds_small <- ds_full %>%
  dplyr::filter(
     study_name == "octo"
    ,process_a  == "gait"
    ,process_b  == "block"
    ,subgroup   == "female"
    ,model_type == "aehplus"
  )

# ---- tweak-data --------------------------------------------------------------

# elongate ----
# ds_long <- ds_full %>%
ds_long <- ds_small %>%
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

    , "aa_tau_01_est"               = "`aa_TAU_01_est`"
    , "aa_tau_01_se"                = "`aa_TAU_01_se`"
    , "aa_tau_01_wald"              = "`aa_TAU_01_wald`"
    , "aa_tau_01_pval"              = "`aa_TAU_01_pval`"
    , "bb_tau_10_est"               = "`bb_TAU_10_est`"
    , "bb_tau_10_se"                = "`bb_TAU_10_se`"
    , "bb_tau_10_wald"              = "`bb_TAU_10_wald`"
    , "bb_tau_10_pval"              = "`bb_TAU_10_pval`"

    # we arbitraraly assing residual to 00, to keep names consistent, no implications
    , "a_sigma_00_est"              = "`a_SIGMA_est`"
    , "a_sigma_00_se"               = "`a_SIGMA_se`"
    , "a_sigma_00_wald"             = "`a_SIGMA_wald`"
    , "a_sigma_00_pval"             = "`a_SIGMA_pval`"
    , "b_sigma_00_est"              = "`b_SIGMA_est`"
    , "b_sigma_00_se"               = "`b_SIGMA_se`"
    , "b_sigma_00_wald"             = "`b_SIGMA_wald`"
    , "b_sigma_00_pval"             = "`b_SIGMA_pval`"
    ,"ab_sigma_00_est"              = "ab_SIGMA_est"
    ,"ab_sigma_00_se"               = "ab_SIGMA_se"
    ,"ab_sigma_00_wald"             = "ab_SIGMA_wald"
    ,"ab_sigma_00_pval"             = "ab_SIGMA_pval"
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
    # ESTIMATED correlations of intercepts, slopes, and residuals
    , "r_tau_00_est"                 = "R_IAIB_est"
    , "r_tau_00_se"                  = "R_IAIB_se"
    , "r_tau_00_wald"                = "R_IAIB_wald"
    , "r_tau_00_pval"                = "R_IAIB_pval"
    , "r_tau_11_est"                 = "R_SASB_est"
    , "r_tau_11_se"                  = "R_SASB_se"
    , "r_tau_11_wald"                = "R_SASB_wald"
    , "r_tau_11_pval"                = "R_SASB_pval"
    , "r_sigma_00_est"               = "R_RES_AB_est"
    , "r_sigma_00_se"                = "R_RES_AB_se"
    , "r_sigma_00_wald"              = "R_RES_AB_wald"
    , "r_sigma_00_pval"              = "R_RES_AB_pval"
    # COMPUTED  correlations of intercepts, slopes, and residuals
    # use of the slots:est = CORR, se = low, pval = high
    # , "cr_tau_00_est"                = "ab_CORR_00"
    # , "cr_tau_00_se"                 = "ab_CORR_00_se"
    # , "cr_tau_00_wald"               = "ab_ZTEST_00"
    # , "cr_tau_00_pval"               = "ab_ZPVAL_00"
    #
    # , "cr_tau_11_est"                = "ab_CORR_11"
    # , "cr_tau_11_se"                 = "ab_CORR_11_se"
    # , "cr_tau_11_wald"               = "ab_ZTEST_11"
    # , "cr_tau_11_pval"               = "ab_ZPVAL_11"
    #
    # , "cr_sigma_00_est"              = "ab_CORR_residual"
    # , "cr_sigma_00_se"               = "ab_CORR_residual_se"
    # , "cr_sigma_00_wald"             = "ab_ZTEST_residual"
    # , "cr_sigma_00_pval"             = "ab_ZPVAL_residual"

    # , "cr_tau_00_se"                 = "ab_CI95_00_low"
    # , "cr_tau_00_pval"               = "ab_CI95_00_high"
    # , "cr_tau_11_se"                 = "ab_CI95_11_low"
    # , "cr_tau_11_pval"               = "ab_CI95_11_high"
    # , "cr_sigma_00_se"               = "ab_CI95_residual_low"
    # , "cr_sigma_00_pval"             = "ab_CI95_residual_high"

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
  dplyr::mutate(
      cr_tau_00_est   = as.numeric(round(cr_tau_00_est    ,3))
    , cr_tau_00_se    = as.numeric(round(cr_tau_00_se     ,3))
    , cr_tau_00_pval  = as.numeric(round(cr_tau_00_pval   ,3))
    , cr_tau_11_est   = as.numeric(round(cr_tau_11_est    ,3))
    , cr_tau_11_se    = as.numeric(round(cr_tau_11_se     ,3))
    , cr_tau_11_pval  = as.numeric(round(cr_tau_11_pval   ,3))
    , cr_sigma_00_est = as.numeric(round(cr_sigma_00_est  ,3))
    , cr_sigma_00_se  = as.numeric(round(cr_sigma_00_se   ,3))
    , cr_sigma_00_pval= as.numeric(round(cr_sigma_00_pval ,2))
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
# dtmp <- ds_long %>%
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
# temp <- ds_long
# ---- table-dynamic-long ----------------------------------------
# inspect the created object via dynamic table
# ds_long %>%
#   dplyr::mutate(
#     # study_name    = factor(study_name),
#     process_a      = factor(process_a),
#     process_b      = factor(process_b),
#     process        = factor(process),
#     subgroup       = factor(subgroup),
#     coefficient    = factor(coefficient),
#     stat           = factor(stat)
#   ) %>%
#   # dplyr::filter(model_type=="aehplus" & subgroup=="female" & process_a=="grip") %>%
#   dplyr::filter(model_type=="aehplus" & subgroup=="female" & process_a=="grip" & study_name =="map") %>%
#   dplyr::select(-g, -model_type, -subgroup, -process_a, -parameter_count) %>%
#   DT::datatable(
#     class     = 'cell-border stripe',
#     caption   = "Growth Curve Model Solution --Long Format",
#     filter    = "top",
#     options   = list(pageLength = 6, autoWidth = TRUE)
#   )

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

# ---- distill-spread ------------------------------------------------------------------
ds_spread <- ds_no_duplicates %>%
  # dplyr::select(-spread_lower, -spread_upper, -cv) %>%
  tidyr::spread(key=stat, value=value)# %>%
temp <- ds_spread
# create a csv manhole
readr::write_csv(ds_spread, paste0(pathStudies,"4-spread.csv"))
saveRDS(         ds_spread, paste0(pathStudies,"4-spread.rds"))

