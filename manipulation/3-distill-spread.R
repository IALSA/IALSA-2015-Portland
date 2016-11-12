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
# path_input <- "./data/shared/parsed-results.rds"
# path_input <- "./data/shared/pp-1-parsed-results.rds"
# path_input <- "./data/shared/pc-1-parsed-results.csv"
path_input <- "./data/shared/pc-2-parsed-results-computed_ci.csv"
# path_input <- "./data/shared/pp-2-parsed-results-computed_ci.csv"

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
# variables_part_4a <- c(
variables_part_2 <- c(
  "subject_count",
  "parameter_count",
  "wave_count",
  'll', "aic", "bic"
)

###########
# Part 4b : estimates of the covariates
# variables_part_4 <- grep(regex_r, colnames(ds_full), perl=T, value=T)
regex_gamma <- "^(a|b)_gamma_(\\d{2})_(est|se|wald|pval|ci95_lower|ci95_upper)$"
regex_general <- "^(a|b|aa|bb|ab|er|cr)_(\\w+)_(\\d{2})_(est|se|wald|pval|ci95_lower|ci95_upper)$"
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
# variables_part_4b <- sprintf(
variables_part_3 <- sprintf(
  "%s_gamma_%s_%s",
  ds_order_gamma$process,
  ds_order_gamma$ceofficient,
  ds_order_gamma$stat
)
###########
# PART 4 :  bivariate intercepts, slopes, and residuals (BISR)

# variances : estimates of intercepts(levels), slopes and residuals (est/se/pval)
variables_part_4a <- c(
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
  ,"ab_sigma_00_est"
  ,"ab_sigma_00_se"
  ,"ab_sigma_00_wald"
  ,"ab_sigma_00_pval"
)
# covariance :  between levels and slopes within each process
variables_part_4b <- c(
    "aa_tau_01_est"
  , "aa_tau_01_se"
  , "aa_tau_01_wald"
  , "aa_tau_01_pval"
  , "bb_tau_10_est"
  , "bb_tau_10_se"
  , "bb_tau_10_wald"
  , "bb_tau_10_pval"
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
# (e)stimated co(r)relations of intercepts, slopes, and residuals
variables_part_4c <- c(
    "er_tau_00_est"
  , "er_tau_00_se"
  , "er_tau_00_wald"
  , "er_tau_00_pval"
  , "er_tau_11_est"
  , "er_tau_11_se"
  , "er_tau_11_wald"
  , "er_tau_11_pval"
  , "er_sigma_00_est"
  , "er_sigma_00_se"
  , "er_sigma_00_wald"
  , "er_sigma_00_pval"
)


# (c)omputed  co(r)relations of intercepts, slopes, and residuals
variables_part_5 <- c(
    "cr_levels_est"
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

# components in correlation computation
# levels
variables_part_6 <- c(
  "ab_tau_00_est"   # covar bw (a) - (b)
  ,"aa_tau_00_est"   # var (a)
  ,"bb_tau_00_est"   # var (b)

  ,"ab_tau_11_est"   # covar bw (a) - (b)
  ,"aa_tau_11_est"   # var (a)
  ,"bb_tau_11_est"   # var (b)

  ,"ab_sigma_00_est" # covar bw (a) - (b)
  ,"a_sigma_00_est"  # var (a)
  ,"b_sigma_00_est"  # var (b)

)
# variables_part_4 <- c(variables_part_4, variables_part_5)
# ---- load-data ---------------------------------------------------------------
# ds_full <- readRDS(path_input) # catalog
ds_full <- read.csv(path_input, header = T,  stringsAsFactors=FALSE)
# rm(path_input)
# create a small ds for testing
ds_small <- ds_full %>%
  dplyr::filter(
     study_name == "octo"
    ,process_a  == "grip"
    ,process_b  == "gait"
    ,subgroup   == "female"
    ,model_type == "aehplus"
  )
temp <- ds_small
# ---- tweak-data --------------------------------------------------------------

# ----- consider-later --------
# ds_long <- ds_full %>%
# ds_long <- ds_small %>%
  # dplyr::mutate(
  #     cr_tau_00_est   = as.numeric(round(cr_tau_00_est    ,3))
  #   , cr_tau_00_se    = as.numeric(round(cr_tau_00_se     ,3))
  #   , cr_tau_00_pval  = as.numeric(round(cr_tau_00_pval   ,3))
  #   , cr_tau_11_est   = as.numeric(round(cr_tau_11_est    ,3))
  #   , cr_tau_11_se    = as.numeric(round(cr_tau_11_se     ,3))
  #   , cr_tau_11_pval  = as.numeric(round(cr_tau_11_pval   ,3))
  #   , cr_sigma_00_est = as.numeric(round(cr_sigma_00_est  ,3))
  #   , cr_sigma_00_se  = as.numeric(round(cr_sigma_00_se   ,3))
  #   , cr_sigma_00_pval= as.numeric(round(cr_sigma_00_pval ,2))
  # ) %>%
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



# ---- elongate-raw-outcomes ----

ds_long <- ds_full %>%
  dplyr::select_(
    .dots=c(
       variables_part_1  # id
      ,variables_part_2  # info
      ,variables_part_3  # gammas
      ,variables_part_4a # variances
      ,variables_part_4b # covariances
      ,variables_part_4c # estimated correlations
      # ,variables_part_5  # computed correlations
      # ,variables_part_6 # used in computing cor

    )
  )  %>%
  dplyr::filter( !is.na(process_a) & !is.na(process_b) ) %>%  # remove univariate models
  # dplyr::filter( model_number %in% c("b1"))    # same as above, remove univariate models, but more restrictive
  dplyr::filter( process_a!="nophys" & process_b!="nocog" ) %>% # remove univariate models
  tidyr::gather_("g", "value", c(
      variables_part_3
      ,variables_part_4a
      ,variables_part_4b
      ,variables_part_4c
    )
  ) %>% # BISR + covariates
  dplyr::mutate(
    process      = gsub(regex_general, "\\1", g, perl=T),
    coefficient  = gsub(regex_general, "\\2", g, perl=T),
    subindex     = gsub(regex_general, "\\3", g, perl=T),
    stat         = gsub(regex_general, "\\4", g, perl=T)
  )
temp <- ds_long
# rm(ds_order_gamma, ds_full, variables_part_3) #variables_part_1
rm(ds_order_gamma)
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
define_duplicates <- c(variables_part_1, variables_part_2, "process", "coefficient","subindex", "stat") #Lacks "value"

ds_no_duplicates <- ds_long %>%
  dplyr::group_by_(
    # .dots=c(variables_part_1, variables_part_2, "process", "process_a", "process_b", "coefficient", "stat") #Lacks "value"
    # .dots=c(variables_part_1, variables_part_2, "process", "breed", "species", "stat") #Lacks "value"
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
    # .dots=c(variables_part_1, variables_part_2, "process", "process_a", "process_b", "coefficient", "stat")
    # .dots=c(variables_part_1, variables_part_2,  "process", "breed", "species", "stat")
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
# rm(variables_part_1, variables_part_2, ds_find_duplicates)

# ---- distill-spread ------------------------------------------------------------------
ds_spread <- ds_no_duplicates %>%
  # dplyr::select(-spread_lower, -spread_upper, -cv) %>%
  tidyr::spread(key=stat, value=value)# %>%
temp <- ds_spread
# create a csv manhole
readr::write_csv(ds_spread, "./data/shared/derived/pc-spread.csv")
saveRDS(         ds_spread, "./data/shared/derived/pc-spread.rds")

# readr::write_csv(ds_spread, "./data/shared/derived/pp-spread.csv")
# saveRDS(         ds_spread, "./data/shared/derived/pp-spread.rds")
