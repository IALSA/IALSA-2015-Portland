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
ds_pretty$sd_int <- prettify_coefficients(ds_pretty$sd_int)
ds_pretty$sd_slope <- prettify_coefficients(ds_pretty$sd_slope)
ds_pretty$sd_residual <- prettify_coefficients(ds_pretty$sd_residual)

ds_pretty$cil_sd_int <- prettify_coefficients(ds_pretty$cil_sd_int)
ds_pretty$ciu_sd_int <- prettify_coefficients(ds_pretty$ciu_sd_int)
ds_pretty$cil_sd_slope <- prettify_coefficients(ds_pretty$cil_sd_slope)
ds_pretty$ciu_sd_slope <- prettify_coefficients(ds_pretty$ciu_sd_slope)
ds_pretty$cil_sd_residual <- prettify_coefficients(ds_pretty$cil_sd_residual)
ds_pretty$ciu_sd_residual <- prettify_coefficients(ds_pretty$ciu_sd_residual)

desired_columns_bivariate<- c(
  "study_name",
  "subgroup",
  "model_type",

  "physical_outcome",
  "cognitive_outcome",

  "physical_specific",
  "cognitive_specific",

  "sd_int",
  "sd_slope",
  "sd_residual",

  "p_cov_int",
  "p_cov_slope",
  "p_cov_res"

#   "cil_sd_int",
#   "ciu_sd_int",
#   "cil_sd_slope",
#   "ciu_sd_slope",
#   "cil_sd_residual",
#   "ciu_sd_residual",


)

ds_bivariate_pretty <- ds_pretty[ds_pretty$outcome_count==2L, desired_columns_bivariate]

ds_bivariate_pretty <- plyr::rename(ds_bivariate_pretty, replace=c(

  "subgroup" = "subgroup",
  "model_type" = "model<br/>type",

  "physical_outcome" = "outcome<br/>physical",
  "cognitive_outcome"=  "cognitive<br/>outcome",

  "physical_specific" = "physical<br/>specific",
  "cognitive_specific" = "cognitive<br/>specific",

  "sd_int" = "sd<br/>intercept",
  "sd_slope" = "sd<br/>slope",
  "sd_residual" ="sd<br/>residual",

  "p_cov_int"=  "p<br/>cov<br/>int",
  "p_cov_slope"=  "p<br/>cov<br/>slope",
  "p_cov_res"= "p<br/>cov<br/>res"


#   "cil_sd_int" = "CIL<br/>cor<br/>int",
#   "ciu_sd_int" = "CIU<br/>cor<br/>int",
#   "cil_sd_slope" = "CIL<br/>cor<br/>slope",
#   "ciu_sd_slope" = "CIU<br/>cor<br/>slope",
#   "cil_sd_residual" = "CIL<br/>cor<br/>residual",
#   "ciu_sd_residual" = "CIU<br/>cor<br/>residual"
))

# ds <- ds_bivariate_pretty
#
# dtos <- list()
# present <- unique(dsb$study_name)
# for( i in present ) {
#   dtos[[i]] <- ds_bivariate_pretty[ds_bivariate_pretty$study_name==i, ]
# }

