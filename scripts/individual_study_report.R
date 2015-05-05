rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.
#####################################
## @knitr load_sources



#####################################
## @knitr load_packages
# library(xtable)
# library(printr)
library(knitr)
library(scales) #For formating values in graphs
library(RColorBrewer)
# library(reshape2) #For converting wide to long
library(grid) #For graphing
library(ggplot2) #For graphing
library(testit, quietly=TRUE) #For asserts
library(dplyr)

## @knitr load_data
dsb <- readRDS('./data/shared/dsb.rds')
ds <- dsb[ , c("model_number","study_name", "model_type","physical_outcome","cognitive_outcome","physical_specific","cognitive_specific", "output_file")]

## @knitr dummy
# key columns/variables
keycol <- c("model_number"="Alpha numeric ","study_name","converged", )
keycolF <- factor(ds$keycol, values

unique(dsb$study_name)

names(dsb)

## @knitr number_studies
length(dsb$study_name)


## @knitr missing_studies
pathDir <- getwd() # establish home directory
pathStudies <- file.path(pathDir,"studies")
misslong <- list.dirs(pathStudies, recursive = F)
missing <- gsub("C:/Users/andkov/Documents/GitHub/IALSA-2015-Portland/studies/","",misslong)
present <- unique(dsb$study_name)
miss <- missing[!(missing %in% present)]
miss


## @knitr freq_studies
t1<-table(dsb$study_name)
t1[t1==0] <- "."
t1

## @knitr freq_phys_studies
t2 <- table(dsb$physical_outcome,dsb$study_name)
t2[t2==0] <- "."
t2

## @knitr freq_cog_studies
t3 <- table(dsb$cognitive_outcome,dsb$study_name)
t3[t3==0] <- "."
t3

## @knitr freq_cog_phys
t4 <- table(dsb$cognitive_outcome,dsb$physical_outcome)
t4[t4==0] <- "."
t4

## @knitr freq_cog_phys_studies

# for(study in present){
#   ds <- dsb[dsb$study==study,]
#   t5 <- table(ds$cognitive_outcome,ds$physical_outcome)
#   t5[t5==0] <- "."
#
# #   cat("\n")
#   cat(paste0("Study: ",study))
#   t5
# }

t5 <- table(dsb$study,dsb$cognitive_outcome,dsb$physical_outcome)
t5[t5==0] <- "."
ftable(t5)


## @knitr prepare_pretty
# names(dsb)

ds <- dsb
ds[ds$model_type=="age","model_type"] <- "a"

ds <- ds %>%

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

ds <- ds_bivariate_pretty

dtos <- list()
present <- unique(dsb$study_name)
for( i in present ) {
  dtos[[i]] <- ds_bivariate_pretty[ds_bivariate_pretty$study_name==i, ]
}

## @knitr study_tables

for( i in seq_along(present) ) {

  study_name <- present[i]


  d_bivariate_study <- ds_bivariate_pretty[ds_bivariate_pretty$study==study_name, ]

  cat("") #Force a new line
  cat(paste0("## ", study_name))

    cat("\n") #Force a new line
  # cat("#### Bivariate results")
  # cat("\n") #Force a new line

  if( nrow(d_bivariate_study) > 0L) {
    print(knitr::kable(d_bivariate_study, caption="Bivariate Results", row.names= F))
  } else {
    cat("*No bivariate models were supplied from the study.*\n\n")
  }

  cat("\n")
}
