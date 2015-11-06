rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.
cat("\f") # clear console



# @knitr load_packages
library(dplyr) # for data manipulation
library(ggplot2) # for graphing
library(grid)

# @knitr load_sources ---------------------------------------
source("https://raw.githubusercontent.com/andkov/psy532/master/scripts/graphs/main_theme.R")
source("http://www.statmodel.com/mplus-R/mplus.R") # to work with mplus output
source("./scripts/mplus/group_variables.R") # to define objects with names of variables/columns
source("./scripts/mplus/get_gh5.R") # to extract data from .gh5
source("./reports/physical/scatter_matrix/graph_functions.R")

# @knitr declare_globals ---------------------------------------



# @knitr load_data ---------------------------------------
# load the data collected by ./scripts/mplus/collect_physical.R
results <- readRDS("./projects/physical/outputs/physical.rds")
model_list <- readRDS("./projects/physical/outputs/model_list.rds")
names(model_list) # how each model in the list is described
# model_list


# # @kntir new_chunk ---------------------------------------
# data for individual model
dsL <- get_gh5_data(
  file=model_list # list object containing paths to the gh5 files
  ,study = "radc"
  ,subgroup = "male"
  ,model_type = "aehplus"
  ,process1 = "fev"
  ,process2 = "gait"
  )

#
#
# # @knitr inspect_data ---------------------------------------
# head(dsL)
names(results)
model_id <- c("study_name","model_number","subgroup","model_type",
              "physical_measure", "cognitive_measure", "has_converged",
              "trust_all","mistrust", "covar_covered")

ds <- results[c("output_file", model_id,"subject_count",
                pc_TAU_00, pc_TAU_11,
                p_SIGMA, c_SIGMA, pc_SIGMA,
                R_IPIC, R_SPSC, R_RES_PC,

                "pp_TAU_00_est", "cc_TAU_00_est",
                "pp_TAU_11_est", "cc_TAU_11_est"
                )]


# @knitr compute_correlation
ds$pc_CORR_00 <- ds$pc_TAU_00_est / (sqrt(ds$pp_TAU_00_est)*sqrt(ds$cc_TAU_00_est))
ds$pc_CORR_11 <-  ds$pc_TAU_11_est / (sqrt(ds$pp_TAU_11_est)*sqrt(ds$cc_TAU_11_est))
ds$pc_CORR_residual <-  ds$pc_SIGMA_est / (sqrt(ds$p_SIGMA_est) * sqrt(ds$c_SIGMA_est))

## @knitr alpha_limit
alpha <- 0.05
z_alpha <- qnorm(1 - (alpha/2))

## @knitr FisherZ
ds$pc_CORR_00_z <- atanh(ds$pc_CORR_00)
ds$pc_CORR_11_z <- atanh(ds$pc_CORR_11)
ds$pc_CORR_residual_z <- atanh(ds$pc_CORR_residual)


# CI for the z test statistic
## @knitr confidence_limit
ds$pc_ZETA_00_low <- ds$pc_CORR_00_z - (z_alpha * sqrt( 1 / (ds$subject_count - 3)))
ds$pc_ZETA_00_high <- ds$pc_CORR_00_z + (z_alpha * sqrt( 1 / (ds$subject_count - 3)))
ds$pc_ZETA_11_low <- ds$pc_CORR_11_z - (z_alpha * sqrt( 1 / (ds$subject_count - 3)))
ds$pc_ZETA_11_high <- ds$pc_CORR_11_z + (z_alpha * sqrt( 1 / (ds$subject_count - 3)))
ds$pc_ZETA_residual_low <- ds$pc_CORR_residual_z - (z_alpha * sqrt( 1 / (ds$subject_count - 3)))
ds$pc_ZETA_residual_high <- ds$pc_CORR_residual_z + (z_alpha * sqrt( 1 / (ds$subject_count - 3)))



## @knitr ci_correlation
ds$pc_CI95_00_low <- tanh(ds$pc_ZETA_00_low)
ds$pc_CI95_00_high <-  tanh(ds$pc_ZETA_00_high)
ds$pc_CI95_11_low <- tanh(ds$pc_ZETA_11_low)
ds$pc_CI95_11_high <-   tanh(ds$pc_ZETA_11_high)
ds$pc_CI95_residual_low <- tanh(ds$pc_ZETA_residual_low)
ds$pc_CI95_residual_high <-   tanh(ds$pc_ZETA_residual_high)


ds_basic <- ds[c(
  model_id,
  "pc_TAU_00_est","pc_TAU_00_se", "pc_TAU_00_pval",
  "R_IPIC_est", "R_IPIC_se","R_IPIC_pval",
  "pc_CORR_00", "pc_CI95_00_low","pc_CI95_00_high",

  "pc_TAU_11_est","pc_TAU_11_se", "pc_TAU_11_pval",
  "R_SPSC_est", "R_SPSC_se","R_SPSC_pval",
  "pc_CORR_11", "pc_CI95_11_low","pc_CI95_11_high",

  "pc_SIGMA_est","pc_SIGMA_se", "pc_SIGMA_pval",
  "R_RES_PC_est", "R_RES_PC_se","R_RES_PC_pval",
  "pc_CORR_residual", "pc_CI95_residual_low","pc_CI95_residual_high"

)]

write.csv(ds_basic,"./reports/physical/fscores_testing/compare_estimates.csv")








