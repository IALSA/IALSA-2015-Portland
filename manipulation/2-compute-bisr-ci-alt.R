# This R script is used by
#
rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

# ---- load-sources ------------------------------------------------------------
#Load any source files that contain/define functions, but that don't load any other types of variables
#   into memory.  Avoid side effects and don't pollute the global environment.
source("./scripts/mplus/group-variables.R")

# ---- load-packages -----------------------------------------------------------
library(magrittr) #Pipes
library(ggplot2)
requireNamespace("knitr")
requireNamespace("dplyr")
requireNamespace("tidyr")
requireNamespace("DT")
requireNamespace("scales")

# ---- load-globals ---------------------
path_input <- './data/shared/pc-1-parsed-results.csv'
# path_input <- './data/shared/pp-1-parsed-results.csv'

##########
# PART 1 : model identifiers
variables_part_1 <- c(
  "model_number"
  ,"study_name"  # eas, elsa ...
  ,"subgroup"    # male & female
  ,"model_type"  # 0 , a, ae, aeh, aeh+, & full
  ,"process_a"   # fev, pef, grip
  ,"process_b"   # block, digits_f
)

###########
# PART 2 : model information indices
variables_part_2 <- c(
  "subject_count"
  ,"parameter_count"
  ,"wave_count"
  ,'ll'
  ,"aic"
  ,"bic"
)

##########
# PART 3: target variables
variables_part_3a <- c(
# levels
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

# ---- load-data ---------------------------------------------------------------
# ds_full <- readRDS(path_input) # catalog
ds_full <- read.csv(path_input, header = T,  stringsAsFactors=FALSE)
# rm(path_input)
# ----- bivariate_test -----_________________________________________________
is_univariate <- grepl(pattern="^u\\d$", x=ds_full$model_number)
is_bivariate <- grepl(pattern="^b\\d$", x=ds_full$model_number)
testit::assert("The model number should match the univariate or bivariate pattern.", is_univariate | is_bivariate)
ds_full$outcome_count <- ifelse(is_univariate, 1L, 2L)



# create a small ds for testing
ds_small <- ds_full %>%
  dplyr::filter(
    # study_name == "octo"
    # ,process_a  == "gait"
    # ,process_b  == "block"
    # ,subgroup   == "female"
    # ,model_type == "aehplus"
  ) %>%
  dplyr::select_(
    .dots=c(
      variables_part_1
      ,variables_part_2
      ,variables_part_3a
    )
  )
temp <- ds_small

# ---- computational-functions ------------------------------------------
compute_r_se <- function( r , n_pairs ){
  r <- ifelse(
    (is.na(r)) |  is.nan(r) | is.infinite(abs(r)) |abs(r)<.00001 | abs(r)>.99999,
    NA_real_,
    r
  )

  # ifelse(
  #  (is.na(r)) |  is.nan(r) | is.infinite(abs(r)) |abs(r)<.00001 | abs(r)>.99999,
  #  NA_real_, # TODO: examine this test
  sqrt((1 - r^2)/(n_pairs-2))
  # )
}


# ------ conduct-computation ----------------------
alpha <- 0.05
z_alpha <- qnorm(1 - (alpha/2))

# ds <- ds_small %>%
ds <- ds_full %>%
  dplyr::mutate(

     cr_levels_est      = ab_tau_00_est  / ( sqrt(aa_tau_00_est) * sqrt(bb_tau_00_est) )
    ,cr_levels_z        = atanh(cr_levels_est)
    ,cr_levels_ztest    = cr_levels_z * sqrt(subject_count - 3)
    ,cr_levels_zpval    = pnorm(-abs(cr_levels_z))*2
    ,cr_levels_zeta_lo  = cr_levels_z -  (z_alpha * sqrt( 1 / (subject_count - 3)))
    ,cr_levels_zeta_hi  = cr_levels_z +  (z_alpha * sqrt( 1 / (subject_count - 3)))
    ,cr_levels_ci95_lo  = tanh(cr_levels_zeta_lo)
    ,cr_levels_ci95_hi  = tanh(cr_levels_zeta_hi)

    ,cr_slopes_est      = ab_tau_11_est  / ( sqrt(aa_tau_11_est) * sqrt(bb_tau_11_est) )
    ,cr_slopes_z        = atanh(cr_slopes_est)
    ,cr_slopes_ztest    = cr_slopes_z * sqrt(subject_count - 3)
    ,cr_slopes_zpval    = pnorm(-abs(cr_slopes_ztest))*2
    ,cr_slopes_zeta_lo  = cr_slopes_z -  (z_alpha * sqrt( 1 / (subject_count - 3)))
    ,cr_slopes_zeta_hi  = cr_slopes_z +  (z_alpha * sqrt( 1 / (subject_count - 3)))
    ,cr_slopes_ci95_lo  = tanh(cr_slopes_zeta_lo)
    ,cr_slopes_ci95_hi  = tanh(cr_slopes_zeta_hi)

    ,cr_resid_est       = ab_sigma_00_est/ ( sqrt(a_sigma_00_est) * sqrt(b_sigma_00_est) )
    ,cr_resid_z         = atanh(cr_resid_est)
    ,cr_resid_ztest     = cr_resid_z * sqrt(subject_count - 3)
    ,cr_resid_zpval     = pnorm(-abs(cr_resid_ztest))*2
    ,cr_resid_zeta_lo   = cr_resid_z -  (z_alpha * sqrt( 1 / (subject_count - 3)))
    ,cr_resid_zeta_hi   = cr_resid_z +  (z_alpha * sqrt( 1 / (subject_count - 3)))
    ,cr_resid_ci95_lo   = tanh(cr_resid_zeta_lo)
    ,cr_resid_ci95_hi   = tanh(cr_resid_zeta_hi)

  ) #%>%
  # t() %>%
  # print()

table(ds_full$model_number)


## @knitr export_dataset -----
readr::write_csv(ds,"./data/shared/pc-2-parsed-results-computed_ci.csv")
# readr::write_csv(ds,"./data/shared/pp-2-parsed-results-computed_ci.csv")

#
# source("./scripts/make_pretty.r")

##### DEV code beyond this point #############


compute_r_se <- function( r , n_pairs ){
 r <- ifelse(
   (is.na(r)) |  is.nan(r) | is.infinite(abs(r)) |abs(r)<.00001 | abs(r)>.99999,
   NA_real_,
   r
   )

   # ifelse(
   #  (is.na(r)) |  is.nan(r) | is.infinite(abs(r)) |abs(r)<.00001 | abs(r)>.99999,
   #  NA_real_, # TODO: examine this test
    sqrt((1 - r^2)/(n_pairs-2))
  # )
}

# table(round(ds$ab_CORR_11_se,1), useNA = "always")
# table(round(ds$ab_CORR_11,1), useNA = "always")
# table(round(ds$subject_count,1), useNA = "always")

ds$ab_CORR_00_se <- compute_r_se(ds$ab_CORR_00, ds$subject_count)
ds$ab_CORR_11_se <- compute_r_se(ds$ab_CORR_11, ds$subject_count)
ds$ab_CORR_residual_se <- compute_r_se(ds$ab_CORR_residual, ds$subject_count)

