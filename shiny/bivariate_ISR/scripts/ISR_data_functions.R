## IRS data functions
# keepvar <- c("study_name","model_number", "subgroup", "model_type","physical_construct","physical_measure", "cognitive_construct","cognitive_measure", "converged", "output_file", "pc_CORR_00", "pc_CORR_11", "pc_CORR_residual", "pc_CI95_00_high", "pc_CI95_00_low", "pc_CI95_11_high", "pc_CI95_11_low", "pc_CI95_residual_high", "pc_CI95_residual_low", "pp_TAU_00", "pp_TAU_11", "p_SIGMA")
# # keepvar <- c("study_name","model_number", "subgroup", "model_type","physical_construct","physical_measure", "cognitive_construct","cognitive_measure", "converged", "output_file", "corr_int", "corr_slope",  "corr_residual",    "ciu_corr_int",    "cil_corr_int",    "ciu_corr_slope",  "cil_corr_slope", "ciu_corr_residual",       "cil_corr_residual",       "p_cov_int", "p_cov_slope", "p_cov_res")
#

########### Select dataset  #######
#                      study = "satsa"
#                      physical_measure = "grip"
#                      covars = unique(ds$model_type) # model_type
#                      cognitive_construct = unique(ds$cognitive_construct)

filter_model <- function(ds
                    # select
                    , study = "ilse"
                    , pm = "grip"
                    , covars = unique(ds$model_type) # model_type
                    , cognitive_domain = unique(ds$cognitive_construct)
){

  ds <- ds[ds$study_name %in% study &
          ds$physical_measure %in% pm &
          ds$model_type %in% covars &
          ds$cognitive_construct %in% cognitive_domain , ]
  return(ds)
}

# ds <- filter_model(dsb, covars = c("a"))
# library(rpivotTable)
# rpivotTable(data = ds,
#                rows = c("study_name", "cognitive_measure"),
#                cols= c("physcial_measure", "subgroup", "model_type"))

################# data transform for the IRS tile #############

ISR_tile_data <- function(ds){
 ## three long gather
d <- ds %>% tidyr::gather_("parameter","value", c(
    # "pc_CORR_00", "pc_CORR_11", "pc_CORR_residual",
  "pc_TAU_00", "pc_TAU_11", "pc_SIGMA",
  # "pc_CI95_00_high", "pc_CI95_00_low", "pc_CI95_11_high", "pc_CI95_11_low", "pc_CI95_residual_high", "pc_CI95_residual_low",
  "display_int", "display_slope", "display_residual",
    "pc_TAU_00_pval", "pc_TAU_11_pval", "pc_SIGMA_pval"))
# d <- ds %>% tidyr::gather_("parameter","value", c("corr_int", "corr_slope", "corr_residual" ,    "display_int", "display_slope", "display_residual", "p_cov_int", "p_cov_slope", 'p_cov_res'))
  # d$parameter <- stringr::str_replace(d$parameter, "cov_res", "cov_residual")
  # d$parameter <- stringr::str_replace(d$parameter, "pc_SIGMA_pval", "pvalue")

for( i in seq_along(d$parameter)){

  x <- stringr::str_split(d$parameter, pattern = "_")[[i]]
  # d[i, "value_type"] <- ifelse("CORR" %in% x,  "corr",
  d[i, "value_type"] <- ifelse( ("TAU" %in% x) & (!"pval" %in% x) |
                                ("SIGMA" %in% x) & (!"pval" %in% x),  "corr",
                               ifelse("pval" %in% x, "pvalue",
                                      ifelse("display" %in% x, "display", NA)))

  d[i, "short"] <- ifelse( ("00" %in% x | "int" %in% x),  "intercept",
                             ifelse("11" %in% x | "slope" %in% x, "slope",
                                    ifelse("residual" %in% x | "SIGMA" %in% x, "residual", NA)))
  # d[i, "parameter"] <- stringr::str_split(d$parameter, pattern = "_")[[i]][2]
}
  d$parameter <-d$short
  d$short <- NULL

  d <- tidyr::spread_(d,"value_type","value")
  d$corr <- round(as.numeric(d$corr),4)
  d$pvalue <- round(as.numeric(d$pvalue),3)
  d$parameter <- factor(d$parameter, levels= c("intercept", "slope","residual"))
  head(as.data.frame(d),20)
  str(d)

  d$sign <- cut(
    x = d$pvalue,
    breaks = c(-Inf, .001, .01, .05, .10, Inf),
    labels = c("<=.001", "<=.01", "<=.05", "<=.10", "> .10"), #These need to coordinate with the color specs.
    right = TRUE, ordered_result = TRUE
  )

  head(as.data.frame(d))
  return(d)
}

# d <- ISR_tile_data(ds)
