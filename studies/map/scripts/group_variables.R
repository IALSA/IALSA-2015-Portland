# load the objects that will subset columns from the results tables

# @knitr setGlobals --------------------------------------------------------------

admin <- c("software",  "version", "date", "time",
  "study_name", "model_number", "subgroup", "model_type",
  "physical_construct","cognitive_construct", "physical_measure", "cognitive_measure",
  "converged")

model_fit <- c("subject_count", "wave_count", "datapoint_count", "parameter_count",
  "LL", "aic", "bic", "adj_bic", "aaic",
  "output_file", "data_file")

# covariance btw physical intercept and cognitive intercept
pc_TAU_00 <- c("pc_TAU_00_est", "pc_TAU_00_se", "pc_TAU_00_wald","pc_TAU_00_pval")
# covariance btw physical slope and cognitive slope
pc_TAU_11 <- c("pc_TAU_11_est", "pc_TAU_11_se", "pc_TAU_11_wald", "pc_TAU_11_pval")
# covariance btw physical intercept and cognitive slope
pc_TAU_01 <- c("pc_TAU_01_est", "pc_TAU_01_se", "pc_TAU_01_wald","pc_TAU_01_pval")
# covariance btw physical slope and cognitive intercept
pc_TAU_10 <- c("pc_TAU_10_est", "pc_TAU_10_se", "pc_TAU_10_wald", "pc_TAU_10_pval")
# covariance btw physcial residual and cogntive residual
pc_SIGMA <- c("pc_SIGMA_est", "pc_SIGMA_se", "pc_SIGMA_wald", "pc_SIGMA_pval")


# variance of the physical intercept
 pp_TAU_00 <- c("pp_TAU_00_est", "pp_TAU_00_se","pp_TAU_00_wald", "pp_TAU_00_pval")
# variance of the cognitive slope
 pp_TAU_11 <- c("pp_TAU_11_est", "pp_TAU_11_se","pp_TAU_11_wald", "pp_TAU_11_pval")
# covariance of physical intercept and physical slope
 pp_TAU_01 <- c("pp_TAU_01_est", "pp_TAU_01_se","pp_TAU_01_wald", "pp_TAU_01_pval") 
# variance of physical residual
 p_SIGMA <- c("p_SIGMA_est", "p_SIGMA_se","p_SIGMA_wald",  "p_SIGMA_pval") 


# variance of the cognitive intercept
 cc_TAU_00 <- c("cc_TAU_00_est", "cc_TAU_00_se", "cc_TAU_00_wald", "cc_TAU_00_pval") 
# variance of the cognitive slope
 cc_TAU_11 <- c("cc_TAU_11_est", "cc_TAU_11_se", "cc_TAU_11_wald",  "cc_TAU_11_pval") 
#  covariance btw cognitive slope and cognitive intercept
 cc_TAU_10 <- c("cc_TAU_10_est", "cc_TAU_10_se", "cc_TAU_10_wald", "cc_TAU_10_pval") 
# variance of cognitive residual
 c_SIGMA <- c("c_SIGMA_est", "c_SIGMA_se", "c_SIGMA_wald",  "c_SIGMA_pval") 


# physical intercept / average initial status of physical outcome
 p_GAMMA_00 <- c("p_GAMMA_00_est", "p_GAMMA_00_se", "p_GAMMA_00_wald","p_GAMMA_00_pval")
# physical slope / average rate of change of physical outcome
 p_GAMMA_10 <- c("p_GAMMA_10_est", "p_GAMMA_10_se", "p_GAMMA_10_wald","p_GAMMA_10_pval")
# cognitive intercept /  average initial status of cognitive outcome
 c_GAMMA_00 <- c("c_GAMMA_00_est", "c_GAMMA_00_se", "c_GAMMA_00_wald", "c_GAMMA_00_pval")
# cognitive slope / average rate of change of cognitive outcome
 c_GAMMA_10 <- c("c_GAMMA_10_est", "c_GAMMA_10_se","c_GAMMA_10_wald", "c_GAMMA_10_pval")

 # intercept of process 1 (P) regressed on Age at baseline
 p_GAMMA_01 <-  c("p_GAMMA_01_est", "p_GAMMA_01_se", "p_GAMMA_01_wald","p_GAMMA_01_pval")
 # slope of process 1 (P) regressed on Age at baseline
 p_GAMMA_11 <-  c("p_GAMMA_11_est", "p_GAMMA_11_se", "p_GAMMA_11_wald","p_GAMMA_11_pval")
    # slope of process 2 (C) regressed on Age at baseline
 c_GAMMA_11 <-  c("c_GAMMA_11_est", "c_GAMMA_11_se", "c_GAMMA_11_wald","c_GAMMA_11_pval")
 # intercept of process 2 (C) regressed on Age at baseline
 c_GAMMA_01 <-  c("c_GAMMA_01_est", "c_GAMMA_01_se", "c_GAMMA_01_wald","c_GAMMA_01_pval")    
  
# correlation b/w physical INTERCEPT  and cognitive INTERCEPT
 R_IPIC <- c("R_IPIC_est", "R_IPIC_se","R_IPIC_wald", "R_IPIC_pval")
# correlation b/w physical SLOPE  and cognitive SLOPE
 R_SPSC <- c("R_SPSC_est", "R_SPSC_se", "R_SPSC_wald", "R_SPSC_pval")
# correlation b/w physical RESIDUAL and cogntive RESIDUAL
 R_RES_PC <- c("R_RES_PC_est", "R_RES_PC_se","R_RES_PC_wald",  "R_RES_PC_pval")

selected_results <- c( admin, model_fit, 
   pc_TAU_00, pc_TAU_11, pc_TAU_01, pc_TAU_10, pc_SIGMA,
   pp_TAU_00, pp_TAU_11, pp_TAU_01, p_SIGMA,
   cc_TAU_00, cc_TAU_11, cc_TAU_10, c_SIGMA,
   p_GAMMA_00 ,p_GAMMA_10  ,c_GAMMA_00  ,c_GAMMA_10  ,R_IPIC  ,R_SPSC  ,R_RES_PC,
   p_GAMMA_01, p_GAMMA_11, c_GAMMA_01, c_GAMMA_11,
   # covariance coverage value
   "trust_all", "mistrust"
 )
# close setGlobals
