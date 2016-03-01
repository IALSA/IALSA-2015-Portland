# after prepare_for_reporting.R is executed
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

desired_columns_univariate<- c(
  "model_number",
  "study_name",
  "subgroup",
  "model_type",
  "physical_construct",
  "cognitive_construct",

  "sd_int",
  "sd_slope",
  "sd_residual",

  "cil_sd_int",
  "ciu_sd_int",
  "cil_sd_slope",
  "ciu_sd_slope",
  "cil_sd_residual",
  "ciu_sd_residual",

  "p_cov_int",
  "p_cov_slope",
  "p_cov_res",

  "aic",
  "bic",

  "subject_count",
  "wave_count",
  "parameter_count",
  "converged",

  "var_int_physical",
  "se_int_physical",
  "var_slope_physical",
  "se_slope_physical",
  "var_residual_physical",
  "se_residual_physical",

  "var_int_cog",
  "se_int_cog",
  "var_slope_cog",
  "se_slope_cog",
  "var_residual_cog",
  "se_residual_cog",

  "cov_int",
  "cov_slope",
  "cov_residual",
  "p_cov_int",
  "p_cov_slope",
  "p_cov_res",

  "LL",
  "aic",
  "bic",
  "adj_bic",
  "aaic",
  "output_file",

  "datapoint_count",
  "deviance",
  "data_file"
)
desired_columns_bivariate <- desired_columns_univariate


ds_univariate_pretty <- ds_pretty[ds_pretty$outcome_count==1L, desired_columns_univariate]
ds_bivariate_pretty <- ds_pretty[ds_pretty$outcome_count==2L, desired_columns_bivariate]

ds_univariate_pretty <- plyr::rename(ds_univariate_pretty, replace=c(
  "model_number" = "model",
  "study_name" = "study",
  "subgroup" = "subgroup",
  "model_type" = "model<br/>type",
  "physical_construct" = "outcome<br/>physical",
  "var_int_physical" =   "var<br/>int<br/>physical",
  "se_int_physical" =  "se<br/>int<br/>physical" ,
  "var_slope_physical" =  "var<br/>slope<br/>physical" ,
  "se_slope_physical"=  "se<br/>slope<br/>physical",
  "var_residual_physical"=  "var<br/>residual<br/>physical",
  "se_residual_physical"=  "se<br/>residual<br/>physical",
  "cognitive_construct"=  "cognitive<br/>outcome",
  "var_int_cog"=  "var<br/>int<br/>cognitive",
  "se_int_cog"=  "se<br/>int<br/>cognitive",
  "var_slope_cog"=  "var<br/>slope<br/>cognitive",
  "se_slope_cog"=  "se<br/>slope<br/>cog",
  "var_residual_cog"=  "var<br/>residual<br/>cognitive",
  "se_residual_cog"= "se<br/>residual<br/>cognitive",
  "cov_int"=  "cov<br/>int",
  "cov_slope"= "cov<br/>slope" ,
  "cov_residual"=  "cov<br/>residual",
  "p_cov_int"=  "p<br/>cov<br/>int",
  "p_cov_slope"=  "p<br/>cov<br/>slope",
  "p_cov_res"= "p<br/>cov<br/>res" ,
  "subject_count"=  "subject<br/>count",
  "wave_count"=  "wave<br/>count",
  "datapoint_count"= "datapoint<br/>count" ,
  "parameter_count"=  "parameter<br/>count",
  "deviance"=  "deviance",
  "LL"=  "LL",
  "aic"=  "aic",
  "bic"=  "bic",
  "adj_bic"= "adj<br/>bic" ,
  "aaic"= 'aaic' ,
  "output_file"= "output<br/>file" ,
  "data_file"= "data<br/>file",
  "sd_int" = "sd<br/>intercept",
  "sd_slope" = "sd<br/>slope",
  "sd_residual" ="sd<br/>residual",
  "cil_sd_int" = "CIL<br/>cor<br/>int",
  "ciu_sd_int" = "CIU<br/>cor<br/>int",
  "cil_sd_slope" = "CIL<br/>cor<br/>slope",
  "ciu_sd_slope" = "CIU<br/>cor<br/>slope",
  "cil_sd_residual" = "CIL<br/>cor<br/>residual",
  "ciu_sd_residual" = "CIU<br/>cor<br/>residual"

))



ds_bivariate_pretty <- plyr::rename(ds_bivariate_pretty, replace=c(
  "model_number" = "model",
  "study_name" = "study",
  "subgroup" = "subgroup",
  "model_type" = "model<br/>type",
  "physical_construct" = "outcome<br/>physical",
  "var_int_physical" =   "var<br/>int<br/>physical",
  "se_int_physical" =  "se<br/>int<br/>physical" ,
  "var_slope_physical" =  "var<br/>slope<br/>physical" ,
  "se_slope_physical"=  "se<br/>slope<br/>physical",
  "var_residual_physical"=  "var<br/>residual<br/>physical",
  "se_residual_physical"=  "se<br/>residual<br/>physical",
  "cognitive_construct"=  "cognitive<br/>outcome",
  "var_int_cog"=  "var<br/>int<br/>cognitive",
  "se_int_cog"=  "se<br/>int<br/>cognitive",
  "var_slope_cog"=  "var<br/>slope<br/>cognitive",
  "se_slope_cog"=  "se<br/>slope<br/>cog",
  "var_residual_cog"=  "var<br/>residual<br/>cognitive",
  "se_residual_cog"= "se<br/>residual<br/>cognitive",
  "cov_int"=  "cov<br/>int",
  "cov_slope"= "cov<br/>slope" ,
  "cov_residual"=  "cov<br/>residual",
  "p_cov_int"=  "p<br/>cov<br/>int",
  "p_cov_slope"=  "p<br/>cov<br/>slope",
  "p_cov_res"= "p<br/>cov<br/>res" ,
  "subject_count"=  "subject<br/>count",
  "wave_count"=  "wave<br/>count",
  "datapoint_count"= "datapoint<br/>count" ,
  "parameter_count"=  "parameter<br/>count",
  "deviance"=  "deviance",
  "LL"=  "LL",
  "aic"=  "aic",
  "bic"=  "bic",
  "adj_bic"= "adj<br/>bic" ,
  "aaic"= 'aaic' ,
  "output_file"= "output<br/>file" ,
  "data_file"= "data<br/>file",
  "sd_int" = "sd<br/>intercept",
  "sd_slope" = "sd<br/>slope",
  "sd_residual" ="sd<br/>residual",
  "cil_sd_int" = "CIL<br/>cor<br/>int",
  "ciu_sd_int" = "CIU<br/>cor<br/>int",
  "cil_sd_slope" = "CIL<br/>cor<br/>slope",
  "ciu_sd_slope" = "CIU<br/>cor<br/>slope",
  "cil_sd_residual" = "CIL<br/>cor<br/>residual",
  "ciu_sd_residual" = "CIU<br/>cor<br/>residual"
))
