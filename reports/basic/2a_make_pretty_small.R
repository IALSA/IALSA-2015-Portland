## called  from x_individual_study_report.R, closer to the end

# makes the data ready for reporting look pretty
ds$p_cov_int_pretty <- gsub("0.(\\d{1,})", ".\\1", ds$p_cov_int) #Drop the leading zero, to match APA guidelines
ds$p_cov_slope_pretty <- gsub("0.(\\d{1,})", ".\\1", ds$p_cov_slope) #Drop the leading zero, to match APA guidelines
ds$p_cov_res_pretty <- gsub("0.(\\d{1,})", ".\\1", ds$p_cov_res) #Drop the leading zero, to match APA guidelines

### Make pretty

ds_pretty <- ds
# ds$var_int_cog <- round(ds$var_int_cog, 2)

prettify_coefficients <- function( coefficient, digit_rounded_count=2 ) {
  pattern <- paste0("%.", digit_rounded_count, "f") # eg, "%.2f"
  prettified <- sprintf(pattern, coefficient)
  prettified <- ifelse(prettified=="NA", "--", prettified)
  return( prettified )
}

ds_pretty$var_int_cog <- prettify_coefficients(ds_pretty$var_int_cog)
ds_pretty$corr_int <- prettify_coefficients(ds_pretty$corr_int)
ds_pretty$corr_slope <- prettify_coefficients(ds_pretty$corr_slope)
ds_pretty$corr_residual <- prettify_coefficients(ds_pretty$corr_residual)

ds_pretty$cil_corr_int <- prettify_coefficients(ds_pretty$cil_corr_int)
ds_pretty$ciu_corr_int <- prettify_coefficients(ds_pretty$ciu_corr_int)
ds_pretty$cil_corr_slope <- prettify_coefficients(ds_pretty$cil_corr_slope)
ds_pretty$ciu_corr_slope <- prettify_coefficients(ds_pretty$ciu_corr_slope)
ds_pretty$cil_corr_residual <- prettify_coefficients(ds_pretty$cil_corr_residual)
ds_pretty$ciu_corr_residual <- prettify_coefficients(ds_pretty$ciu_corr_residual)

desired_columns_bivariate<- c(
  "study_name",



  "physical_construct",
  "cognitive_construct",

  "physical_measure",
  "cognitive_measure",

  "subgroup",
  "model_type",


  "corr_int",
  "corr_slope",
  "corr_residual",

  "p_cov_int",
  "p_cov_slope",
  "p_cov_res"


#   "cil_corr_int",
#   "ciu_corr_int",
#   "cil_corr_slope",
#   "ciu_corr_slope",
#   "cil_corr_residual",
#   "ciu_corr_residual",


)

ds_bivariate_pretty <- ds_pretty[ds_pretty$outcome_count==2L, desired_columns_bivariate]

ds_bivariate_pretty <- plyr::rename(ds_bivariate_pretty, replace=c(

  "subgroup" = "subgroup",
  "model_type" = "predictor<br/>set",

  "physical_construct" = "physical<br/>construct",
  "cognitive_construct"=  "cognitive<br/>construct",

  "physical_measure" = "physical<br/>measure",
  "cognitive_measure" = "cognitive<br/>measure",

  "corr_int" = "correlation<br/>between<br/>intercepts",
  "corr_slope" = "correlation<br/>between<br/>slopes",
  "corr_residual" ="correlation<br/>between<br/>residuals",

  "p_cov_int"=  "p<br/>value<br/>int",
  "p_cov_slope"=  "p<br/>value<br/>slope",
  "p_cov_res"= "p<br/>value<br/>res"


#   "cil_corr_int" = "CIL<br/>cor<br/>int",
#   "ciu_corr_int" = "CIU<br/>cor<br/>int",
#   "cil_corr_slope" = "CIL<br/>cor<br/>slope",
#   "ciu_corr_slope" = "CIU<br/>cor<br/>slope",
#   "cil_corr_residual" = "CIL<br/>cor<br/>residual",
#   "ciu_corr_residual" = "CIU<br/>cor<br/>residual"
))

# ds <- ds_bivariate_pretty
#
# dtos <- list()
# present <- unique(dsb$study_name)
# for( i in present ) {
#   dtos[[i]] <- ds_bivariate_pretty[ds_bivariate_pretty$study_name==i, ]
# }

