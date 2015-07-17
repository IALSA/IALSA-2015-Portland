rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.
#####################################

## @knitr load_packages
library(knitr)
library(testit, quietly=TRUE) #For asserts
library(dplyr)

## @knitr load_data
ds <- readRDS('./data/shared/ds1.rds')

## @knitr basic_view
keepvar <-  c("output_file", "subject_count","pc_TAU_00", "pc_TAU_11","pc_SIGMA", "p_GAMMA_00" )
ds[1:10, keepvar]
dim(ds) # rows and columns

## @knitr standardize_coefficients
ds$pc_CORR_00 <- ds$pc_TAU_00 / (sqrt(ds$pp_TAU_00)*sqrt(ds$cc_TAU_00))
ds$pc_CORR_11 <-  ds$pc_TAU_11 / (sqrt(ds$pp_TAU_11)*sqrt(ds$cc_TAU_11))
ds$pc_CORR_residual <-  ds$pc_SIGMA / (sqrt(ds$p_SIGMA) * sqrt(ds$c_SIGMA))

keepvar <- c("study_name","output_file", "pc_TAU_00", "pp_TAU_00", "cc_TAU_00",  "pc_CORR_00", "pc_CORR_11", "pc_CORR_residual")
d <- ds[1:10, keepvar]
summary(d)
## @knitr dummy
# ds <- ds[ds$study_name=="satsa",c(
#   # "subgroup","model_type"
#   "output_file"
#   # , "pp_TAU_00", "cc_TAU_00",  "pc_CORR_00"
#   ,"pc_TAU_11", "pp_TAU_11", "cc_TAU_11",  "pc_CORR_11"
#   # , "pc_CORR_11","pc_CORR_residual"
#   )]
# ds[1:100, ]


## @knitr bivariate_test
is_univariate <- grepl(pattern="^u\\d$", x=ds$model_number)
is_bivariate <- grepl(pattern="^b\\d$", x=ds$model_number)
testit::assert("The model number should match the univariate or bivariate pattern.", is_univariate | is_bivariate)
ds$outcome_count <- ifelse(is_univariate, 1L, 2L)


## @knitr alpha_limit
alpha <- 0.05
z_alpha <- qnorm(1 - (alpha/2))

## @knitr FisherZ
ds$pc_CORR_00_z <- atanh(ds$pc_CORR_00)
ds$pc_CORR_11_z <- atanh(ds$pc_CORR_11)
ds$pc_CORR_residual_z <- atanh(ds$pc_CORR_residual)
ds[1:10,c("output_file","pc_TAU_00", "pp_TAU_00", "cc_TAU_00",  "pc_CORR_00", "pc_CORR_00_z" )]

# # compute z test statistic
# ds$pc_CORR_00_z_test <- ds$pc_CORR_00_z / sqrt((ds$subject_count - 3))
# ds$pc_CORR_11_z_test <- ds$pc_CORR_11_z / sqrt((ds$subject_count - 3))
# ds$pc_CORR_residual_z_test <- ds$pc_CORR_residual_z / sqrt((ds$subject_count - 3))
# ds[1:10,c("output_file","pc_TAU_00", "pc_TAU_00_pval", "pc_CORR_00", "pc_CORR_00_z", "pc_CORR_00_z_test" )]
#









# CI for the z test statistic
## @knitr confidence_limit
ds$pc_ZETA_00_low <- ds$pc_CORR_00_z - (z_alpha * sqrt( 1 / (ds$subject_count - 3)))
ds$pc_ZETA_00_high <- ds$pc_CORR_00_z + (z_alpha * sqrt( 1 / (ds$subject_count - 3)))
ds$pc_ZETA_11_low <- ds$pc_CORR_11_z - (z_alpha * sqrt( 1 / (ds$subject_count - 3)))
ds$pc_ZETA_11_high <- ds$pc_CORR_11_z + (z_alpha * sqrt( 1 / (ds$subject_count - 3)))
ds$pc_ZETA_residual_low <- ds$pc_CORR_residual_z - (z_alpha * sqrt( 1 / (ds$subject_count - 3)))
ds$pc_ZETA_residual_high <- ds$pc_CORR_residual_z + (z_alpha * sqrt( 1 / (ds$subject_count - 3)))
# ds$pc_ZETA_00_low <- ds$pc_CORR_00 - (limit * sqrt( 1 / (ds$subject_count - 3)))
# ds$pc_ZETA_00_high <- ds$pc_CORR_00 + (limit * sqrt( 1 / (ds$subject_count - 3)))
# ds$pc_ZETA_11_low <- ds$pc_CORR_11 - (limit * sqrt( 1 / (ds$subject_count - 3)))
# ds$pc_ZETA_11_high <- ds$pc_CORR_11 + (limit * sqrt( 1 / (ds$subject_count - 3)))
# ds$pc_ZETA_residual_low <- ds$pc_CORR_residual - (limit * sqrt( 1 / (ds$subject_count - 3)))
# ds$pc_ZETA_residual_high <- ds$pc_CORR_residual + (limit * sqrt( 1 / (ds$subject_count - 3)))
d <-ds[1:10,c("output_file","pc_TAU_00", "pc_TAU_00_pval", "pc_CORR_00", "pc_CORR_00_z",  "pc_ZETA_00_low","pc_ZETA_00_high")]




## @knitr ci_correlation
ds$pc_CI95_00_low <- tanh(ds$pc_ZETA_00_low)
ds$pc_CI95_00_high <-  tanh(ds$pc_ZETA_00_high)
ds$pc_CI95_11_low <- tanh(ds$pc_ZETA_11_low)
ds$pc_CI95_11_high <-   tanh(ds$pc_ZETA_11_high)
ds$pc_CI95_residual_low <- tanh(ds$pc_ZETA_residual_low)
ds$pc_CI95_residual_high <-   tanh(ds$pc_ZETA_residual_high)
# ds$pc_CI95_00_low <- tanh(ds$pc_ZETA_00_low)
# ds$pc_CI95_00_high <-  tanh(ds$pc_ZETA_00_high)
# ds$pc_CI95_11_low <- tanh(ds$pc_ZETA_11_low)
# ds$pc_CI95_11_high <-   tanh(ds$pc_ZETA_11_high)
# ds$pc_CI95_residual_low <- tanh(ds$pc_ZETA_residual_low)
# ds$pc_CI95_residual_high <-   tanh(ds$pc_ZETA_residual_high)
d <-ds[1:10,c("output_file","pc_TAU_00", "pc_TAU_00_pval", "pc_CORR_00",
              "pc_CORR_00_z",  "pc_ZETA_00_low","pc_ZETA_00_high", "pc_CI95_00_low", "pc_CI95_00_high"
              )]


## @knitr dummy
# ## @knitr ci_intercept
# ds$pc_ZETA_00_high <- ds$pc_CORR_00 + (limit * sqrt( 1 / (ds$subject_count - 3) ) )
# ds$pc_ZETA_00_low <- ds$pc_CORR_00 - (limit * sqrt( 1 / (ds$subject_count - 3) ) )
# ds$pc_CI95_00_high <- tanh(ds$pc_ZETA_00_high)
# ds$pc_CI95_00_low <- tanh(ds$pc_ZETA_00_low)
#
#
#
# ## @knit ci_slope
# ds$pc_ZETA_11_high <- ds$pc_CORR_11 + (limit * sqrt( 1 / (ds$subject_count - 3) ) )
# ds$pc_ZETA_11_low <- ds$pc_CORR_11 - (limit * sqrt( 1 / (ds$subject_count - 3) ) )
# ds$pc_CI95_11_high <- tanh(ds$pc_ZETA_11_high)
# ds$pc_CI95_11_low <- tanh(ds$pc_ZETA_11_low)
#
# ## @knit ci_residual
#
# ds$pc_ZETA_residual_high <- ds$pc_CORR_residual + (limit * sqrt( 1 / (ds$subject_count - 3) ) )
# ds$pc_ZETA_residual_low <- ds$pc_CORR_residual - (limit * sqrt( 1 / (ds$subject_count - 3) ) )
# ds$pc_CI95_residual_high <- tanh(ds$pc_ZETA_residual_high)
# ds$pc_CI95_residual_low <- tanh(ds$pc_ZETA_residual_low)


## @knitr dummy
## add uni/bi indicator
# table(ds$model_number)
ds$uni_bi <- stringr::str_sub(ds$model_number,1,1)


## @knitr export_dataset
saveRDS(ds,"./data/shared/ds2.rds")
#
# source("./scripts/make_pretty.r")
