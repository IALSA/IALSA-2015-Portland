## IRS data functions

########### Select dataset  #######
#                      study = "satsa"
#                      physical_measure = "grip"
#                      covars = unique(ds$model_type) # model_type
#                      cognitive_construct = unique(ds$cognitive_construct)

filter_model <- function(ds
                    # select
                    , study = "satsa"
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

# ds <- filter_model(dsb, covars = c("a","aeh"))

################# data transform for the IRS tile #############

IRS_tile_data <- function(ds){
 ## three long gather
d <- ds %>% tidyr::gather_("parameter","value", c("corr_int", "corr_slope", "corr_residual" , "display_int", "display_slope", "display_residual", "p_cov_int", "p_cov_slope", 'p_cov_res'))
  d$parameter <- stringr::str_replace(d$parameter, "cov_res", "cov_residual")
  d$parameter <- stringr::str_replace(d$parameter, "p_cov", "pvalue")
for( i in seq_along(d$parameter)){
  d[i, "value_type"] <- stringr::str_split(d$parameter, pattern = "_")[[i]][1]
  d[i, "parameter"] <- stringr::str_split(d$parameter, pattern = "_")[[i]][2]
}
  d <- tidyr::spread_(d,"value_type","value")
  d$corr <- round(as.numeric(d$corr),3)
  d$pvalue <- round(as.numeric(d$pvalue),3)
  d$parameter <- factor(d$parameter, levels= c("int", "slope","residual"))
  head(as.data.frame(d),20)
  str(d)

  d$unsign <- d$pvalue > .10
  d$sign10 <- d$pvalue <= .10 & d$pvalue > .05
  d$sign05 <- d$pvalue <= .05 & d$pvalue > .01
  d$sign01 <- d$pvalue <= .01 & d$pvalue > .001
  d$sign001 <- d$pvalue <= .001

  d$sign <- ifelse(d$pvalue >.10, ">.10",
              ifelse(d$pvalue <= .10 & d$pvalue > .05, "<=.10",
                ifelse(d$pvalue <= .05 & d$pvalue > .01, "<=.05",
                  ifelse(d$pvalue <= .01 & d$pvalue > .001, "<=.01",
                    ifelse(d$pvalue <= .001, "<=.001", NA)))))

  head(as.data.frame(d))
  return(d)
}

# d <- IRS_tile_data(ds)
