# These object definitions are used throughout the repository
# All of these are stored in the object `model_components`

# model_components <- list(
#   "id"          = variables_part_1,
#   "info"        = variables_part_2,
#   "fixed"       = variables_part_3,
#   "fixed_key"   = coefficient_key,
#   "random"      = c(variables_part_4a, variables_part_4b),
#   "residual"    = c(variables_part_4c, variables_part_4d),
#   "estimated_r" = variables_part_4e,
#   "computed_r"  = variables_part_5,
#   "compute_corr"= variables_part_6,
#   "process_id"  = variables_part_7
# )

#### Model identifiers

variables_part_1 <- c(
  "study_name",
  "model_number",       # u|b - uni|bi-variate; 0|1|2 - highest curve component
  "subgroup",           # male & female
  "model_type",          # 0 , a, ae, aeh, aeh+, & full
  "process_a",
  "process_b"
)
#### Model information
variables_part_2 <- c(
  "subject_count",
  "parameter_count",
  "wave_count",
  'll', "aic", "bic"
)

#######################################################################################
# Estimates of the covariates

#### Fixed effects (gamma)
# identify the possible numeric combinations (in this case linear model)
coefficients_possible <- c(
  "00", "10",
  "01", "11",
  "02", "12",
  "03", "13",
  "04", "14",
  "05", "15",
  "06", "16"
)
# the standard set of values describing estimated parameters
stats_possible        <- c("est", "se", "wald", "pval")#, "ci95_lower", "ci95_upper")
# combine the two into a data frame
ds_order_gamma <- tidyr::crossing(
  process       = c("a", "b"),
  ceofficient   = factor(coefficients_possible, levels=coefficients_possible),
  stat          = factor(stats_possible       , levels=stats_possible)
)
# assembled the population of the fixed effects loadings
variables_part_3 <- sprintf(
  "%s_gamma_%s_%s",
  ds_order_gamma$process,
  ds_order_gamma$ceofficient,
  ds_order_gamma$stat
)
##### The order in which predictors enter the equation
coefficient_key <- c(
  "0"  = "intercept",
  "1"  = "age",
  "2"  = "education",
  "3"  = "height",
  "4"  = "smoking",
  "5"  = "cardio",
  "6"  = "diabetes"
)

#######################################################################################
# Bivariate intercepts, slopes, and residuals (BISR)

##### Random effects (tau)
# on-diagonal elements in the matrix of random effects
variables_part_4a <- c(
   "aa_tau_00_est"
  ,"aa_tau_00_se"
  ,"aa_tau_00_wald"
  ,"aa_tau_00_pval"
  ,"aa_tau_11_est"
  ,"aa_tau_11_se"
  ,"aa_tau_11_wald"
  ,"aa_tau_11_pval"
  ,"bb_tau_00_est"
  ,"bb_tau_00_se"
  ,"bb_tau_00_wald"
  ,"bb_tau_00_pval"
  ,"bb_tau_11_est"
  ,"bb_tau_11_se"
  ,"bb_tau_11_wald"
  ,"bb_tau_11_pval"
)
# on-diagonal elements in the matrix of random effects
variables_part_4b <- c(
   "aa_tau_01_est"
  ,"aa_tau_01_se"
  ,"aa_tau_01_wald"
  ,"aa_tau_01_pval"
  ,"bb_tau_10_est"
  ,"bb_tau_10_se"
  ,"bb_tau_10_wald"
  ,"bb_tau_10_pval"
  ,"ab_tau_00_est"
  ,"ab_tau_00_se"
  ,"ab_tau_00_wald"
  ,"ab_tau_00_pval"
  ,"ab_tau_11_est"
  ,"ab_tau_11_se"
  ,"ab_tau_11_wald"
  ,"ab_tau_11_pval"
  ,"ab_tau_01_est"
  ,"ab_tau_01_se"
  ,"ab_tau_01_wald"
  ,"ab_tau_01_pval"
  ,"ab_tau_10_est"
  ,"ab_tau_10_se"
  ,"ab_tau_10_wald"
  ,"ab_tau_10_pval"
)
#### Residuals (sigma)
# on-diagonal elements in the matrix of residuals
variables_part_4c <- c(
   "a_sigma_00_est"
  ,"a_sigma_00_se"
  ,"a_sigma_00_wald"
  ,"a_sigma_00_pval"
  ,"b_sigma_00_est"
  ,"b_sigma_00_se"
  ,"b_sigma_00_wald"
  ,"b_sigma_00_pval"
)
# off-diagonal elements in the matrix of residuals
variables_part_4d <- c(
   "ab_sigma_00_est"
  ,"ab_sigma_00_se"
  ,"ab_sigma_00_wald"
  ,"ab_sigma_00_pval"
)
# additional sets of parameters
# (e)stimated co(r)relations of intercepts, slopes, and residuals
variables_part_4e <- c(
   "er_tau_00_est"
  ,"er_tau_00_se"
  ,"er_tau_00_wald"
  ,"er_tau_00_pval"
  ,"er_tau_11_est"
  ,"er_tau_11_se"
  ,"er_tau_11_wald"
  ,"er_tau_11_pval"
  ,"er_sigma_00_est"
  ,"er_sigma_00_se"
  ,"er_sigma_00_wald"
  ,"er_sigma_00_pval"
)
# (c)omputed  co(r)relations of intercepts, slopes, and residuals
variables_part_5 <- c(
   "cr_levels_est"
  ,"cr_tau_00_se"
  ,"cr_tau_00_wald"
  ,"cr_tau_00_pval"
  ,"cr_tau_11_est"
  ,"cr_tau_11_se"
  ,"cr_tau_11_wald"
  ,"cr_tau_11_pval"
  ,"cr_sigma_00_est"
  ,"cr_sigma_00_se"
  ,"cr_sigma_00_wald"
  ,"cr_sigma_00_pval"
)
#######################################################################################
# Other useful sets

# components in correlation computation
variables_part_6 <- c(
   "ab_tau_00_est"       # covar bw (a) - (b)
  ,"aa_tau_00_est"       # var (a)
  ,"bb_tau_00_est"       # var (b)

  ,"ab_tau_11_est"       # covar bw (a) - (b)
  ,"aa_tau_11_est"       # var (a)
  ,"bb_tau_11_est"       # var (b)

  ,"ab_sigma_00_est"     # covar bw (a) - (b)
  ,"a_sigma_00_est"      # var (a)
  ,"b_sigma_00_est"      # var (b)
)
# domain structure and labels for process names
variables_part_7 <- c(
   "process_a"           # inique id of process A
  ,"process_b"           # unique id of process B
  ,"process_b_cell"      # custom label of process_b for the cell
  ,"process_b_row"       # A measure, that may have different specific tests
  ,"process_b_domain"    # Domain os the process B (the long process)
)
# Now putting it all together
model_components <- list(
  "id"          = variables_part_1,
  "info"        = variables_part_2,
  "fixed"       = variables_part_3,
  "fixed_key"   = coefficient_key,
  "random"      = c(variables_part_4a, variables_part_4b),
  "residual"    = c(variables_part_4c, variables_part_4d),
  "estimated_r" = variables_part_4e,
  "computed_r"  = variables_part_5,
  "compute_corr"= variables_part_6,
  "process_id"  = variables_part_7
)
# rm(list=setdiff(ls(), "model_components"))
