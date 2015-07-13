rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.
#####################################

## @knitr load_data
ds <- readRDS('./data/shared/ds1.rds')

## @knitr standardize_coefficients
ds$pc_CORR_00 <- ds$pc_TAU_00 / sqrt(ds$pp_TAU_00)*sqrt(ds$cc_TAU_00)
ds$pc_CORR_11 <-  ds$pc_TAU_11 / sqrt(ds$pp_TAU_11)*sqrt(ds$cc_TAU_11)
ds$pc_CORR_residual <-  ds$pc_SIGMA / (sqrt(ds$p_SIGMA) * sqrt(ds$c_SIGMA))


# ## @knitr standardize_coefficients
# ds$corr_int <- ds$cov_int/ (sqrt(ds$var_int_physical)*sqrt(ds$var_int_cog))
# ds$corr_slope <- ds$cov_slope/ (sqrt(ds$var_slope_physical)*sqrt(ds$var_slope_cog))
# ds$corr_residual <- ds$cov_residual/ (sqrt(ds$var_residual_physical)*sqrt(ds$var_residual_cog))

is_univariate <- grepl(pattern="^u\\d$", x=ds$model_number)
is_bivariate <- grepl(pattern="^b\\d$", x=ds$model_number)
testit::assert("The model number should match the univariate or bivariate pattern.", is_univariate | is_bivariate)
ds$outcome_count <- ifelse(is_univariate, 1L, 2L)

alpha <- 0.05
limit <- ((1 - (alpha/2)))

# CI for the intercept
ds$pc_ZETA_00_high <- ds$pc_CORR_00 + (limit * sqrt( 1 / (ds$subject_count - 3) ) )
ds$pc_ZETA_00_low <- ds$pc_CORR_00 - (limit * sqrt( 1 / (ds$subject_count - 3) ) )
ds$pc_CI95_00_high <- tanh(ds$pc_ZETA_00_high)
ds$pc_CI95_00_low <- tanh(ds$pc_ZETA_00_low)

# # CI for the intercept
# ds$int_zetau <- ds$corr_int + (limit * sqrt( 1 / (ds$subject_count - 3) ) )
# ds$int_zetal <- ds$corr_int - (limit * sqrt( 1 / (ds$subject_count - 3) ) )
# ds$ciu_corr_int <- tanh(ds$int_zetau)
# ds$cil_corr_int <- tanh(ds$int_zetal)

# CI for the slope
ds$pc_ZETA_11_high <- ds$pc_CORR_11 + (limit * sqrt( 1 / (ds$subject_count - 3) ) )
ds$pc_ZETA_11_low <- ds$pc_CORR_11 - (limit * sqrt( 1 / (ds$subject_count - 3) ) )
ds$pc_CI95_11_high <- tanh(ds$pc_ZETA_11_high)
ds$pc_CI95_11_low <- tanh(ds$pc_ZETA_11_low)

# # CI for the slope
# ds$slope_zetau <- ds$corr_slope + (limit * sqrt( 1 / (ds$subject_count - 3) ) )
# ds$slope_zetal <- ds$corr_slope - (limit * sqrt( 1 / (ds$subject_count - 3) ) )
# ds$ciu_corr_slope <- tanh(ds$slope_zetau)
# ds$cil_corr_slope <- tanh(ds$slope_zetal)

# CI for the residual
ds$pc_ZETA_residual_high <- ds$pc_CORR_residual + (limit * sqrt( 1 / (ds$subject_count - 3) ) )
ds$pc_ZETA_residual_low <- ds$pc_CORR_residual - (limit * sqrt( 1 / (ds$subject_count - 3) ) )
ds$pc_CI95_residual_high <- tanh(ds$pc_ZETA_residual_high)
ds$pc_CI95_residual_low <- tanh(ds$pc_ZETA_residual_low)

# # CI for the residual
# ds$residual_zetau <- ds$corr_residual + (limit * sqrt( 1 / (ds$subject_count - 3) ) )
# ds$residual_zetal <- ds$corr_residual - (limit * sqrt( 1 / (ds$subject_count - 3) ) )
# ds$ciu_corr_residual <- tanh(ds$residual_zetau)
# ds$cil_corr_residual <- tanh(ds$residual_zetal)


## add uni/bi indicator
# table(ds$model_number)
ds$uni_bi <- stringr::str_sub(ds$model_number,1,1)

## @knitr export_dataset

saveRDS(ds,"./data/shared/ds2.rds")
#
# source("./scripts/make_pretty.r")
