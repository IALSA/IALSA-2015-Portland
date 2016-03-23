rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.
#####################################

## @knitr load_packages
library(knitr)
library(testit, quietly=TRUE) #For asserts
library(dplyr)

## @knitr load_data -----
# ds <- readRDS('./data/shared/ds1.rds')
ds <- readRDS('./data/shared/parsed-results.rds')

## @knitr basic_view -----
keepvar <-  c("output_file", "subject_count","ab_TAU_00_est", "ab_TAU_11_est","ab_SIGMA_est", "a_GAMMA_00_est" )
# ds <- ds[ds$study_name == "hrs", ]
# ds[1:10, keepvar]
dim(ds) # rows and columns

## @knitr standardize_coefficients -----
ds$ab_CORR_00 <- ds$ab_TAU_00_est / (sqrt(ds$aa_TAU_00_est)*sqrt(ds$bb_TAU_00_est))
ds$ab_CORR_11 <-  ds$ab_TAU_11_est / (sqrt(ds$aa_TAU_11_est)*sqrt(ds$bb_TAU_11_est))

# These next two lines inspect the source of the NaNs in tanh below.  Delete them once it's resolved: https://github.com/IALSA/IALSA-2015-Portland/commit/1fba0cfc63b6d7fd6b47ec699f84986c22041a5f.
summary(ds[, c("aa_TAU_11_est", "ab_CORR_11")])
head(ds[, c("aa_TAU_11_est", "ab_CORR_11")], 100)

ds$ab_CORR_residual <-  ds$ab_SIGMA_est / (sqrt(ds$a_SIGMA_est) * sqrt(ds$b_SIGMA_est))

# keepvar <- c("study_name","output_file", "ab_TAU_00", "aa_TAU_00", "bb_TAU_00",  "ab_CORR_00", "ab_CORR_11", "ab_CORR_residual")
keepvar <- c("study_name", "output_file","ab_SIGMA_est", "ab_SIGMA_pval", "ab_CORR_residual")
d <- ds[1:10, keepvar]
summary(d)
## @knitr dummy
# ds <- ds[ds$study_name=="satsa",c(
#   # "subgroup","model_type"
#   "output_file"
#   # , "aa_TAU_00", "bb_TAU_00",  "ab_CORR_00"
#   ,"ab_TAU_11", "aa_TAU_11", "bb_TAU_11",  "ab_CORR_11"
#   # , "ab_CORR_11","ab_CORR_residual"
#   )]
# ds[1:100, ]


## @knitr bivariate_test -----
is_univariate <- grepl(pattern="^u\\d$", x=ds$model_number)
is_bivariate <- grepl(pattern="^b\\d$", x=ds$model_number)
testit::assert("The model number should match the univariate or bivariate pattern.", is_univariate | is_bivariate)
ds$outcome_count <- ifelse(is_univariate, 1L, 2L)


## @knitr alpha_limit -----
alpha <- 0.05
z_alpha <- qnorm(1 - (alpha/2))

## @knitr FisherZ -----
(ds$ab_CORR_00_z <- atanh(ds$ab_CORR_00))
(ds$ab_CORR_11_z <- atanh(ds$ab_CORR_11))
(ds$ab_CORR_residual_z <- atanh(ds$ab_CORR_residual))
# ds[1:10,c("output_file","ab_TAU_00", "aa_TAU_00", "bb_TAU_00",  "ab_CORR_00", "ab_CORR_00_z" )]
d <-ds[1:100,c("output_file","ab_SIGMA_est", "ab_SIGMA_pval", "ab_CORR_residual",
              "ab_CORR_residual_z" )]
# # compute z test statistic
# ds$ab_CORR_00_z_test <- ds$ab_CORR_00_z / sqrt((ds$subject_count - 3))
# ds$ab_CORR_11_z_test <- ds$ab_CORR_11_z / sqrt((ds$subject_count - 3))
# ds$ab_CORR_residual_z_test <- ds$ab_CORR_residual_z / sqrt((ds$subject_count - 3))
# ds[1:10,c("output_file","ab_TAU_00", "ab_TAU_00_pval", "ab_CORR_00", "ab_CORR_00_z", "ab_CORR_00_z_test" )]
#









# CI for the z test statistic
## @knitr confidence_limit -----
ds$ab_ZETA_00_low <- ds$ab_CORR_00_z - (z_alpha * sqrt( 1 / (ds$subject_count - 3)))
ds$ab_ZETA_00_high <- ds$ab_CORR_00_z + (z_alpha * sqrt( 1 / (ds$subject_count - 3)))
ds$ab_ZETA_11_low <- ds$ab_CORR_11_z - (z_alpha * sqrt( 1 / (ds$subject_count - 3)))
ds$ab_ZETA_11_high <- ds$ab_CORR_11_z + (z_alpha * sqrt( 1 / (ds$subject_count - 3)))
ds$ab_ZETA_residual_low <- ds$ab_CORR_residual_z - (z_alpha * sqrt( 1 / (ds$subject_count - 3)))
ds$ab_ZETA_residual_high <- ds$ab_CORR_residual_z + (z_alpha * sqrt( 1 / (ds$subject_count - 3)))
# ds$ab_ZETA_00_low <- ds$ab_CORR_00 - (limit * sqrt( 1 / (ds$subject_count - 3)))
# ds$ab_ZETA_00_high <- ds$ab_CORR_00 + (limit * sqrt( 1 / (ds$subject_count - 3)))
# ds$ab_ZETA_11_low <- ds$ab_CORR_11 - (limit * sqrt( 1 / (ds$subject_count - 3)))
# ds$ab_ZETA_11_high <- ds$ab_CORR_11 + (limit * sqrt( 1 / (ds$subject_count - 3)))
# ds$ab_ZETA_residual_low <- ds$ab_CORR_residual - (limit * sqrt( 1 / (ds$subject_count - 3)))
# ds$ab_ZETA_residual_high <- ds$ab_CORR_residual + (limit * sqrt( 1 / (ds$subject_count - 3)))
# d <-ds[1:10,c("output_file","ab_TAU_00", "ab_TAU_00_pval", "ab_CORR_00", "ab_CORR_00_z",  "ab_ZETA_00_low","ab_ZETA_00_high")]
d <-ds[1:10,c("output_file","ab_SIGMA_est", "ab_SIGMA_pval", "ab_CORR_residual",
              "ab_CORR_residual_z",  "ab_ZETA_residual_low","ab_ZETA_residual_high" )]



## @knitr ci_correlation -----
ds$ab_CI95_00_low <- tanh(ds$ab_ZETA_00_low)
ds$ab_CI95_00_high <-  tanh(ds$ab_ZETA_00_high)
ds$ab_CI95_11_low <- tanh(ds$ab_ZETA_11_low)
ds$ab_CI95_11_high <-   tanh(ds$ab_ZETA_11_high)
ds$ab_CI95_residual_low <- tanh(ds$ab_ZETA_residual_low)
ds$ab_CI95_residual_high <-   tanh(ds$ab_ZETA_residual_high)
# ds$ab_CI95_00_low <- tanh(ds$ab_ZETA_00_low)
# ds$ab_CI95_00_high <-  tanh(ds$ab_ZETA_00_high)
# ds$ab_CI95_11_low <- tanh(ds$ab_ZETA_11_low)
# ds$ab_CI95_11_high <-   tanh(ds$ab_ZETA_11_high)
# ds$ab_CI95_residual_low <- tanh(ds$ab_ZETA_residual_low)
# ds$ab_CI95_residual_high <-   tanh(ds$ab_ZETA_residual_high)
# d <-ds[1:10,c("output_file","ab_TAU_00", "ab_TAU_00_pval", "ab_CORR_00",
#               "ab_CORR_00_z",  "ab_ZETA_00_low","ab_ZETA_00_high", "ab_CI95_00_low", "ab_CI95_00_high"
#               )]


ds$test_00 <- ifelse(

  (ds$ab_CI95_00_low < 0) &
    (ds$ab_CI95_00_high > 0), "-", "ERROR" )


ds$test_11 <- ifelse(
  (ds$ab_CI95_11_low < 0) &
    (ds$ab_CI95_11_high > 0), "-", "ERROR" )
# ds$test_Res <- ifelse(
#   (ds$ab_CI95_residual_low < 0) &
#     (ds$ab_CI95_residual_high > ds$ab_SIGMA), "-", "ERROR" )
ds$test_Res <- (ds$ab_SIGMA_pval >.05) ==
  (ds$ab_CI95_residual_low < 0) & (0 < ds$ab_CI95_residual_high)

# d <-ds[1:100,c("ab_SIGMA", "ab_SIGMA_pval", "ab_CORR_residual",
#  "ab_CORR_residual_z",  "ab_ZETA_residual_low","ab_ZETA_residual_high",
#  "ab_CI95_residual_low", "ab_CI95_residual_high", "study_name",
#  "output_file", "test_00", "test_11", "test_Res"
#               )]

d <-ds[1:100,c("output_file","ab_SIGMA_est", "ab_SIGMA_pval", "ab_CORR_residual",
 "ab_CI95_residual_low", "ab_CI95_residual_high", "study_name",
  "test_00", "test_11", "test_Res"
              )]
# d <- dplyr::arrange(d, output_file) %>%
#   # dplyr::filter(model_number =="b1") %>%
#   dplyr::select(output_file, ab_SIGMA)

table( ds$test_00,ds$study_name)
table( ds$test_11,ds$study_name)
table( ds$test_Res,ds$study_name)
# View(d)
## @knitr dummy -----
# ## @knitr ci_intercept
# ds$ab_ZETA_00_high <- ds$ab_CORR_00 + (limit * sqrt( 1 / (ds$subject_count - 3) ) )
# ds$ab_ZETA_00_low <- ds$ab_CORR_00 - (limit * sqrt( 1 / (ds$subject_count - 3) ) )
# ds$ab_CI95_00_high <- tanh(ds$ab_ZETA_00_high)
# ds$ab_CI95_00_low <- tanh(ds$ab_ZETA_00_low)
#
#
#
# ## @knit ci_slope -----
# ds$ab_ZETA_11_high <- ds$ab_CORR_11 + (limit * sqrt( 1 / (ds$subject_count - 3) ) )
# ds$ab_ZETA_11_low <- ds$ab_CORR_11 - (limit * sqrt( 1 / (ds$subject_count - 3) ) )
# ds$ab_CI95_11_high <- tanh(ds$ab_ZETA_11_high)
# ds$ab_CI95_11_low <- tanh(ds$ab_ZETA_11_low)
#
# ## @knit ci_residual -----
#
# ds$ab_ZETA_residual_high <- ds$ab_CORR_residual + (limit * sqrt( 1 / (ds$subject_count - 3) ) )
# ds$ab_ZETA_residual_low <- ds$ab_CORR_residual - (limit * sqrt( 1 / (ds$subject_count - 3) ) )
# ds$ab_CI95_residual_high <- tanh(ds$ab_ZETA_residual_high)
# ds$ab_CI95_residual_low <- tanh(ds$ab_ZETA_residual_low)


## @knitr dummy -----
## add uni/bi indicator
# table(ds$model_number)
ds$uni_bi <- stringr::str_sub(ds$model_number,1,1)


## @knitr export_dataset -----
# saveRDS(ds,"./data/shared/ds2.rds")
saveRDS(ds,"./data/shared/parsed-results.rds")
#
# source("./scripts/make_pretty.r")

