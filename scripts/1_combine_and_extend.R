## This script takes the individual dtos (data transfer objects) from each study
## and combines it into a single dataset
## Executed after 0_collect_studies creates these separate dtos

# rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

####### load sources ##############################
## @knitr load_sources
#Load any source files that contain/define functions, but that don't load any other types of variables
#   into memory.  Avoid side effects and don't pollute the global environment.

## Collect studies with:
# source("./Scripts/0_collect_studies.R")

####### load packages #############################
## @knitr load_packages
# library(xtable)
library(knitr)
library(scales) #For formating values in graphs
library(RColorBrewer)
# library(reshape2) #For converting wide to long
library(grid) #For graphing
library(ggplot2) #For graphing
library(testit, quietly=TRUE) #For asserts


#####################################
## @knitr declare_globals
options(show.signif.stars=F) #Turn off the annotations on p-values

path_input <- "."

no_variable_labels <- c("nocog", "noCog", "cocogn", "nophys", "noPhys","nophysspec","nophyscog")
######## load data #############################
## @knitr load_data
pattern <- "study_automation_result.csv$"
dto_paths <- list.files(path=path_input, pattern=pattern, recursive=TRUE)
# dto_paths; #paste(dto_paths, collapse = ",")
directories <- gsub(pattern, "\\1", dto_paths, perl=T)
# directories
study_names <- basename(directories)
# study_names
dtos <- list()

# combine dtos into a list object
for( i in seq_along(dto_paths) ) {
  dto_path <- dto_paths[i]
  study_name <- study_names[i]
  dto <- read.csv(dto_path, stringsAsFactors=F)
#   dto$date <- as.Date(dto$date)
  dtos[[i]] <- dto
#   print(study_name)
}
rm(dto_path, study_name, dto)

######## tweak data #############################
## @knitr tweak_data

# convert dtos into a dataframe
# http://stackoverflow.com/questions/2851327/converting-a-list-of-data-frames-into-one-data-frame-in-r
ds <- plyr::ldply(dtos, data.frame)
# table(ds$study_name)
# table(ds$model_number)
# table( ds$model_number, ds$study_name)

# sort for proper tabeling
ds <- ds[order(ds$study_name, ds$physical_construct, ds$cognitive_construct, ds$subgroup, ds$model_type), ]
# #Exclude the univariate models, by remove the variables like `nocog` and `nophys`
# ds <- ds[!(ds$cognitive_construct %in% no_variable_labels), ]
# ds <- ds[!(ds$physical_construct %in% no_variable_labels), ]
# ds <- ds[!(ds$physical_measure %in% no_variable_labels), ]
# ds <- ds[!(ds$cognitive_measure %in% no_variable_labels), ]

# Exclude junk models
ds <- ds[!(ds$model_number) %in% c("test"),]

# sort(unique(ds$physical_construct))
# table(ds$physical_construct)
# ds[ds$physical_construct=="memory",c("output_file","study_name")]


## @knitr standardize_coefficients

ds$corr_int <- ds$cov_int/ (sqrt(ds$var_int_physical)*sqrt(ds$var_int_cog))
ds$corr_slope <- ds$cov_slope/ (sqrt(ds$var_slope_physical)*sqrt(ds$var_slope_cog))
ds$corr_residual <- ds$cov_residual/ (sqrt(ds$var_residual_physical)*sqrt(ds$var_residual_cog))

is_univariate <- grepl(pattern="^u\\d$", x=ds$model_number)
is_bivariate <- grepl(pattern="^b\\d$", x=ds$model_number)
testit::assert("The model number should match the univariate or bivariate pattern.", is_univariate | is_bivariate)
ds$outcome_count <- ifelse(is_univariate, 1L, 2L)

alpha <- 0.05
limit <- ((1 - (alpha/2)))

# CI for the intercept
ds$int_zetau <- ds$corr_int + (limit * sqrt( 1 / (ds$subject_count - 3) ) )
ds$int_zetal <- ds$corr_int - (limit * sqrt( 1 / (ds$subject_count - 3) ) )
ds$ciu_corr_int <- tanh(ds$int_zetau)
ds$cil_corr_int <- tanh(ds$int_zetal)

# CI for the slope
ds$slope_zetau <- ds$corr_slope + (limit * sqrt( 1 / (ds$subject_count - 3) ) )
ds$slope_zetal <- ds$corr_slope - (limit * sqrt( 1 / (ds$subject_count - 3) ) )
ds$ciu_corr_slope <- tanh(ds$slope_zetau)
ds$cil_corr_slope <- tanh(ds$slope_zetal)

# CI for the residual
ds$residual_zetau <- ds$corr_residual + (limit * sqrt( 1 / (ds$subject_count - 3) ) )
ds$residual_zetal <- ds$corr_residual - (limit * sqrt( 1 / (ds$subject_count - 3) ) )
ds$ciu_corr_residual <- tanh(ds$residual_zetau)
ds$cil_corr_residual <- tanh(ds$residual_zetal)


## add uni/bi indicator
# table(ds$model_number)
ds$uni_bi <- stringr::str_sub(ds$model_number,1,1)

## @knitr export_dataset

saveRDS(ds,"./data/shared/ds1.rds")
#
# source("./scripts/make_pretty.r")




