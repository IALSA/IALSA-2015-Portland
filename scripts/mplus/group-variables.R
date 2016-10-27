# load the objects that will subset columns from the results tables

# @knitr setGlobals --------------------------------------------------------------

admin <- c("software","version", "date", "time", "output_file", "data_file", "file_path")


model_id <- c("study_name","model_number","subgroup","model_type",
              "process_a", "process_b")

model_info <- c("subject_count", "wave_count", "datapoint_count", "parameter_count",
  "LL", "aic", "bic", "adj_bic", "aaic" )

errors <- c("has_converged","trust_all","mistrust", "covar_covered")


# covariance btw intercept of process (A) and intercept of process (B)
ab_TAU_00 <- c("ab_TAU_00_est", "ab_TAU_00_se", "ab_TAU_00_wald","ab_TAU_00_pval")
# covariance btw slope of process (A) and slope of process (B)
ab_TAU_11 <- c("ab_TAU_11_est", "ab_TAU_11_se", "ab_TAU_11_wald", "ab_TAU_11_pval")
# covariance btw intercept of process (A) and slope of process (B)
ab_TAU_01 <- c("ab_TAU_01_est", "ab_TAU_01_se", "ab_TAU_01_wald","ab_TAU_01_pval")
# covariance btw slope of process (A) and intercept of process (B)
ab_TAU_10 <- c("ab_TAU_10_est", "ab_TAU_10_se", "ab_TAU_10_wald", "ab_TAU_10_pval")
# covariance btw residual of process (A) and residual of process (B)
ab_SIGMA <- c("ab_SIGMA_est", "ab_SIGMA_se", "ab_SIGMA_wald", "ab_SIGMA_pval")


# variance of the intercept of process (A)
aa_TAU_00 <- c("aa_TAU_00_est", "aa_TAU_00_se","aa_TAU_00_wald", "aa_TAU_00_pval")
# variance of the slope of process (A)
aa_TAU_11 <- c("aa_TAU_11_est", "aa_TAU_11_se","aa_TAU_11_wald", "aa_TAU_11_pval")
# covariance of intercept of process (A) and slope of process (A)
aa_TAU_01 <- c("aa_TAU_01_est", "aa_TAU_01_se","aa_TAU_01_wald", "aa_TAU_01_pval")
# variance of residual of process (A)
a_SIGMA <- c("a_SIGMA_est", "a_SIGMA_se","a_SIGMA_wald",  "a_SIGMA_pval")


# variance of the intercept of process (B)
bb_TAU_00 <- c("bb_TAU_00_est", "bb_TAU_00_se", "bb_TAU_00_wald", "bb_TAU_00_pval")
# variance of the slope of process (B)
bb_TAU_11 <- c("bb_TAU_11_est", "bb_TAU_11_se", "bb_TAU_11_wald",  "bb_TAU_11_pval")
#  covariance btw slope of process (B) and intercept of process (B)
bb_TAU_10 <- c("bb_TAU_10_est", "bb_TAU_10_se", "bb_TAU_10_wald", "bb_TAU_10_pval")
# variance of residual of process (B)
b_SIGMA <- c("b_SIGMA_est", "b_SIGMA_se", "b_SIGMA_wald",  "b_SIGMA_pval")


# intercept of process (A) / average initial status of process (A)
a_GAMMA_00 <- c("a_GAMMA_00_est", "a_GAMMA_00_se", "a_GAMMA_00_wald","a_GAMMA_00_pval")
# slope of process (A) / average rate of change of process (A)
a_GAMMA_10 <- c("a_GAMMA_10_est", "a_GAMMA_10_se", "a_GAMMA_10_wald","a_GAMMA_10_pval")
# slope of process (B) / average rate of change of process (B)
b_GAMMA_10 <- c("b_GAMMA_10_est", "b_GAMMA_10_se","b_GAMMA_10_wald", "b_GAMMA_10_pval")
# intercept of process (B) /  average initial status of process (B)
b_GAMMA_00 <- c("b_GAMMA_00_est", "b_GAMMA_00_se", "b_GAMMA_00_wald", "b_GAMMA_00_pval")


# intercept of process (A) regressed on Age at baseline
a_GAMMA_01 <-  c("a_GAMMA_01_est", "a_GAMMA_01_se", "a_GAMMA_01_wald","a_GAMMA_01_pval")
# slope of process 1 (A) regressed on Age at baseline
a_GAMMA_11 <-  c("a_GAMMA_11_est", "a_GAMMA_11_se", "a_GAMMA_11_wald","a_GAMMA_11_pval")
# slope of process 2 (B) regressed on Age at baseline
b_GAMMA_11 <-  c("b_GAMMA_11_est", "b_GAMMA_11_se", "b_GAMMA_11_wald","b_GAMMA_11_pval")
# intercept of process (B) regressed on Age at baseline
b_GAMMA_01 <-  c("b_GAMMA_01_est", "b_GAMMA_01_se", "b_GAMMA_01_wald","b_GAMMA_01_pval")


# intercept of process (A) regressed on EDUCATION at baseline
a_GAMMA_02 <- c("a_GAMMA_02_est", "a_GAMMA_02_se", "a_GAMMA_02_wald","a_GAMMA_02_pval")
# slope of process 1 (A) regressed on EDUCATION at baseline
a_GAMMA_12 <-  c("a_GAMMA_12_est", "a_GAMMA_12_se", "a_GAMMA_12_wald","a_GAMMA_12_pval")
# slope of process 2 (B) regressed on EDUCATION at baseline
b_GAMMA_12 <- c("b_GAMMA_12_est", "b_GAMMA_12_se", "b_GAMMA_12_wald","b_GAMMA_12_pval")
# intercept of process (B) regressed on EDUCATION at baseline
b_GAMMA_02 <- c("b_GAMMA_02_est", "b_GAMMA_02_se", "b_GAMMA_02_wald","b_GAMMA_02_pval")


# intercept of process (A) regressed on HEIGHT at baseline
a_GAMMA_03 <-  c("a_GAMMA_03_est", "a_GAMMA_03_se", "a_GAMMA_03_wald","a_GAMMA_03_pval")
# slope of process 1 (A) regressed on HEIGHT at baseline
a_GAMMA_13 <-  c("a_GAMMA_13_est", "a_GAMMA_13_se", "a_GAMMA_13_wald","a_GAMMA_13_pval")
# slope of process 2 (B) regressed on HEIGHT at baseline
b_GAMMA_13 <-  c("b_GAMMA_13_est", "b_GAMMA_13_se", "b_GAMMA_13_wald","b_GAMMA_13_pval")
# intercept of process (B) regressed on HEIGHT at baseline
b_GAMMA_03 <-  c("b_GAMMA_03_est", "b_GAMMA_03_se", "b_GAMMA_03_wald","b_GAMMA_03_pval")


# intercept of process (A) regressed on SMOKING at baseline
a_GAMMA_04 <-  c("a_GAMMA_04_est", "a_GAMMA_04_se", "a_GAMMA_04_wald","a_GAMMA_04_pval")
# slope of process 1 (B) regressed on SMOKING at baseline
a_GAMMA_14 <-  c("a_GAMMA_14_est", "a_GAMMA_14_se", "a_GAMMA_14_wald","a_GAMMA_14_pval")
# slope of process 2 (A) regressed on SMOKING at baseline
b_GAMMA_14 <-  c("b_GAMMA_14_est", "b_GAMMA_14_se", "b_GAMMA_14_wald","b_GAMMA_14_pval")
# intercept of process (B) regressed on SMOKING at baseline
b_GAMMA_04 <-  c("b_GAMMA_04_est", "b_GAMMA_04_se", "b_GAMMA_04_wald","b_GAMMA_04_pval")


# intercept of process (A) regressed on CARDIO at baseline
a_GAMMA_05 <-  c("a_GAMMA_05_est", "a_GAMMA_05_se", "a_GAMMA_05_wald","a_GAMMA_05_pval")
# slope of process 1 (A) regressed on CARDIO at baseline
a_GAMMA_15 <-  c("a_GAMMA_15_est", "a_GAMMA_15_se", "a_GAMMA_15_wald","a_GAMMA_15_pval")
# slope of process 2 (B) regressed on CARDIO at baseline
b_GAMMA_15 <-  c("b_GAMMA_15_est", "b_GAMMA_15_se", "b_GAMMA_15_wald","b_GAMMA_15_pval")
# intercept of process (B) regressed on CARDIO at baseline
b_GAMMA_05 <-  c("b_GAMMA_05_est", "b_GAMMA_05_se", "b_GAMMA_05_wald","b_GAMMA_05_pval")


# intercept of process (A) regressed on DIABETES at baseline
a_GAMMA_06 <-  c("a_GAMMA_06_est", "a_GAMMA_06_se", "a_GAMMA_06_wald","a_GAMMA_06_pval")
# slope of process 1 (A) regressed on DIABETES at baseline
a_GAMMA_16 <-  c("a_GAMMA_16_est", "a_GAMMA_16_se", "a_GAMMA_16_wald","a_GAMMA_16_pval")
# slope of process 2 (B) regressed on DIABETES at baseline
b_GAMMA_16 <-  c("b_GAMMA_16_est", "b_GAMMA_16_se", "b_GAMMA_16_wald","b_GAMMA_16_pval")
# intercept of process (B) regressed on DIABETES at baseline
b_GAMMA_06 <-  c("b_GAMMA_06_est", "b_GAMMA_06_se", "b_GAMMA_06_wald","b_GAMMA_06_pval")

# estimated
# correlation b/w intercept of process (A)  and intercept of process (B)
R_IAIB <- c("R_IAIB_est", "R_IAIB_se","R_IAIB_wald", "R_IAIB_pval")
# correlation b/w slope of process (A)  and slope of process (B)
R_SASB <- c("R_SASB_est", "R_SASB_se", "R_SASB_wald", "R_SASB_pval")
# correlation b/w RESIDUAL of process (A) and RESIDUAL of process (B)
R_RES_AB <- c("R_RES_AB_est", "R_RES_AB_se","R_RES_AB_wald",  "R_RES_AB_pval")


# computed
ab_CORR_00 <- c("ab_CORR_00","ab_CI95_00_high", "ab_CI95_00_low", "test_00" )
ab_CORR_11 <- c("ab_CORR_11","ab_CI95_11_high", "ab_CI95_11_low", "test_11" )
ab_CORR_residual <- c("ab_CORR_residual","ab_CI95_residual_high", "ab_CI95_residual_low", "test_Res" )

selected_results <- c( admin, model_id, model_info, errors,
   ab_TAU_00, ab_TAU_11, ab_TAU_01, ab_TAU_10, ab_SIGMA,
   aa_TAU_00, aa_TAU_11, aa_TAU_01, a_SIGMA,
   bb_TAU_00, bb_TAU_11, bb_TAU_10, b_SIGMA,
   a_GAMMA_00 ,a_GAMMA_10, b_GAMMA_00, b_GAMMA_10,
   R_IAIB, R_SASB  ,R_RES_AB,
   a_GAMMA_01, a_GAMMA_11, b_GAMMA_01, b_GAMMA_11,
   a_GAMMA_02, a_GAMMA_12, b_GAMMA_02, b_GAMMA_12,
   a_GAMMA_03, a_GAMMA_13, b_GAMMA_03, b_GAMMA_13,
   a_GAMMA_04, a_GAMMA_14, b_GAMMA_04, b_GAMMA_14,
   a_GAMMA_05, a_GAMMA_15, b_GAMMA_05, b_GAMMA_15,
   a_GAMMA_06, a_GAMMA_16, b_GAMMA_06, b_GAMMA_16
   )

