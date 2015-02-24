rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.
#####################################
## @knitr load_sources
#Load any source files that contain/define functions, but that don't load any other types of variables
#   into memory.  Avoid side effects and don't pollute the global environment.
# source("./SomethingSomething.R")

#####################################
## @knitr load_packages
# library(xtable)
library(knitr)
library(scales) #For formating values in graphs
library(RColorBrewer)
# library(reshape2) #For converting wide to long
library(ggplot2) #For graphing
library(testit, quietly=TRUE) #For asserts


#####################################
## @knitr declare_globals
options(show.signif.stars=F) #Turn off the annotations on p-values

path_input <- "."

#####################################
## @knitr load_data
# pattern <- "dto_bivariate.csv$"
pattern <- "automation_result__.csv$"
dto_paths <- list.files(path=path_input, pattern=pattern, recursive=TRUE)
# dto_paths; #paste(dto_paths, collapse = ",")
directories <- gsub(pattern, "\\1", dto_paths, perl=T)
# directories
study_names <- basename(directories)
# study_names

dtos <- list()

for( i in seq_along(dto_paths) ) {
  dto_path <- dto_paths[i]
  study_name <- study_names[i]
  dto <- read.csv(dto_path, stringsAsFactors=F)
#   dto$date <- as.Date(dto$date)

  dtos[[i]] <- dto
#   print(study_name)
}
rm(dto_path, study_name, dto)

#####################################
## @knitr tweak_data

# http://stackoverflow.com/questions/2851327/converting-a-list-of-data-frames-into-one-data-frame-in-r
ds <- plyr::ldply(dtos, data.frame)

is_univariate <- grepl(pattern="^u\\d$", x=ds$model_number)
is_bivariate <- grepl(pattern="^b\\d$", x=ds$model_number)
testit::assert("The model number should match the univariate or bivariate pattern.", is_univariate | is_bivariate)
ds$outcome_count <- ifelse(is_univariate, 1L, 2L)

ds_pretty <- ds
# ds$var_int_cog <- round(ds$var_int_cog, 2)
ds_pretty$var_int_cog <- sprintf("%.2f", ds_pretty$var_int_cog) #Force it to have one decimal, even if it's a zero.
ds_pretty$var_int_cog <- ifelse(ds_pretty$var_int_cog=="NA", "--", ds_pretty$var_int_cog)

desired_columns_univariate <- c("model_number", "study_name", "subgroup", "model_type", "physical_outcome", "var_int_cog")
desired_columns_bivariate <- c("model_number", "study_name", "subgroup", "model_type", "physical_outcome")

# desired_columns_univariate <- c("model_number",
#                                 "study_name",
#                                 "subgroup",
#                                 "model_type",
#                                 "physical_outcome",
#                                 "var_int_physical",
#                                 "se_int_physical",
#                                 "var_slope_physical",
#                                 "se_slope_physical",
#                                 "var_residual_physical",
#                                 "se_residual_physical",
#                                 "cognitive_outcome",
#                                 "var_int_cog",
#                                 "se_int_cog",
#                                 "var_slope_cog",
#                                 "se_slope_cog",
#                                 "var_residual_cog",
#                                 "se_residual_cog",
#                                 "cov_int",
#                                 "cov_slope",
#                                 "cov_residual",
#                                 "p_cov_int",
#                                 "p_cov_slope",
#                                 "p_cov_res",
#                                 "subject_count",
#                                 "wave_count",
#                                 "datapoint_count",
#                                 "parameter_count",
#                                 "deviance",
#                                 "LL",
#                                 "aic",
#                                 "bic",
#                                 "adj_bic",
#                                 "aaic")
# desired_columns_bivariate <- desired_columns_univariate
#
ds_univariate_pretty <- ds_pretty[ds_pretty$outcome_count==1L, desired_columns_univariate]
ds_bivariate_pretty <- ds_pretty[ds_pretty$outcome_count==2L, desired_columns_bivariate]
#
# ds_univariate_pretty <- plyr::rename(ds_univariate_pretty, replace=c(
#   "model_number" = "model",
#   "study_name" = "study",
#   "subgroup" = "subgroup",
#   "model_type" = "model<br/>type",
#   "physical_outcome" = "outcome<br/>physical",
#   "var_int_physical" =   "new",
#   "se_int_physical" =  "se_int_physical" ,
#   "var_slope_physical" =  "var_slope_physical" ,
#   "se_slope_physical"=  "se_slope_physical",
#   "var_residual_physical"=  "var_residual_physical",
#   "se_residual_physical"=  "se_residual_physical",
#   "cognitive_outcome"=  "cognitive_outcome",
#   "var_int_cog"=  "var_int_cog",
#   "se_int_cog"=  "se_int_cog",
#   "var_slope_cog"=  "var_slope_cog",
#   "se_slope_cog"=  "se_slope_cog",
#   "var_residual_cog"=  "var_residual_cog",
#   "se_residual_cog"= "se_residual_cog" ,
#   "cov_int"=  "cov_int",
#   "cov_slope"= "cov_slope" ,
#   "cov_residual"=  "cov_residual",
#   "p_cov_int"=  "p_cov_int",
#   "p_cov_slope"=  "p_cov_slope",
#   "p_cov_res"= "p_cov_res" ,
#   "subject_count"=  "subject_count",
#   "wave_count"=  "wave_count",
#   "datapoint_count"= "datapoint_count" ,
#   "parameter_count"=  "parameter_count",
#   "deviance"=  "deviance",
#   "LL"=  "LL",
#   "aic"=  "aic",
#   "bic"=  "bic",
#   "adj_bic"= "adj_bic" ,
#   "aaic"= 'aaic' ,
#   "output_file"= "output_file"
#
# ))
#####################################
## @knitr calculate_forest
#TODO: Andrey, calcalulate the graph coordinates, using Philipe's equations that start with
#  the SEM output.


#####################################
## @knitr study_tables


for( i in seq_along(dtos) ) {
  dto <- dtos[[i]]
  study_name <- study_names[i]

  d_univariate_study <- ds_univariate_pretty[ds_univariate_pretty$study==study_name, ]
  d_bivariate_study <- ds_bivariate_pretty[ds_bivariate_pretty$study==study_name, ]

  cat("") #Force a new line
  cat(paste0("## ", study_name))

  cat("\n") #Force a new line
  # cat("#### Univariate results")
  # cat("\n") #Force a new line
  print(knitr::kable(d_univariate_study, caption="Univariate Results",row.names = F))

  cat("\n") #Force a new line
  # cat("#### Bivariate results")
  # cat("\n") #Force a new line
  print(knitr::kable(d_bivariate_study, caption="Bivariate Results", row.names= F))
  cat("\n")
}

#####################################
## @knitr forest_static

#####################################
## @knitr forest_animated
# Use this as a starting point: https://github.com/OuhscBbmc/OsctrAstonWeber
