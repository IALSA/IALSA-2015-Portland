# rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

#####################################
## @knitr load_sources
#Load any source files that contain/define functions, but that don't load any other types of variables
#   into memory.  Avoid side effects and don't pollute the global environment.

## Collect studies with:
# source("./Scripts/0_collect_studies.R")

#####################################
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
#####################################
## @knitr load_data
# pattern <- "dto_bivariate.csv$"
# pattern <- "collected_params.csv$" # Andrey
pattern <- "study_automation_result.csv$" # Philippe
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
# table(ds$study_name)
# table(ds$model_number)
# table( ds$model_number, ds$study_name)


ds <- ds[order(ds$study_name, ds$physical_outcome, ds$cognitive_outcome, ds$subgroup, ds$model_type), ]
#Exclude the univariate models, by remove the variables like `nocog` and `nophys`
ds <- ds[!(ds$cognitive_outcome %in% no_variable_labels), ]
ds <- ds[!(ds$physical_outcome %in% no_variable_labels), ]
ds <- ds[!(ds$physical_specific %in% no_variable_labels), ]
ds <- ds[!(ds$cognitive_specific %in% no_variable_labels), ]
# Exclude junk models
ds <- ds[!(ds$model_number) %in% c("test"),]

# sort(unique(ds$physical_outcome))
# table(ds$physical_outcome)
# ds[ds$physical_outcome=="memory",c("output_file","study_name")]

#### Corrections to PHYSICAL outcome ####
ds[ds$physical_outcome==" pulmonary","physical_outcome"] <- "pulmonary"

table(ds$physical_outcome, ds$study_name)

ds$physical_outcome <- tolower(stringr::str_trim(ds$physical_outcome))

#### corrections to CovSet in model_type ####
ds[ds$model_type=="age","model_type"] <- "a"

#### Correction to PHYSICAL SPECIFIC ####

table(ds$physical_specific, ds$study_name)
ds$physical_specific <- tolower(stringr::str_trim(ds$physical_specific))


#### Corrections to the COGNITIVE outcome ####
# sort(unique(ds$cognitive_outcome))
# table(ds$cognitive_outcome)
ds[ds$cognitive_outcome==" knowledge","cognitive_outcome"] <- "knowledge"
table(ds$cognitive_outcome, ds$study_name)

ds$cognitive_outcome <- tolower(stringr::str_trim(ds$cognitive_outcome))

# tbl <- table(ds$physical_outcome, ds$cognitive_outcome, ds$study_name)
# ftable(tbl)

#### Correction to PHYSICAL SPECIFIC ####
ds$cognitive_specific <- tolower(stringr::str_trim(ds$cognitive_specific))


ds[!is.na(ds$cognitive_specific) & ds$cognitive_specific=="bostonmaning", c("study_name", "cognitive_specific")][,2] <- "bostonnaming"


ds[!is.na(ds$cognitive_specific) & ds$cognitive_specific=="digitsback", c("study_name", "cognitive_specific")][,2] <-
  "digitbackward"


# tcs <- table(ds$cognitive_specific, ds$study_name)
# tcs[tcs==0] <- "."
# tcs



### Standardize coefficients

ds$sd_int <- ds$cov_int/ (sqrt(ds$var_int_physical)*sqrt(ds$var_int_cog))
ds$sd_slope <- ds$cov_slope/ (sqrt(ds$var_slope_physical)*sqrt(ds$var_slope_cog))
ds$sd_residual <- ds$cov_residual/ (sqrt(ds$var_residual_physical)*sqrt(ds$var_residual_cog))

is_univariate <- grepl(pattern="^u\\d$", x=ds$model_number)
is_bivariate <- grepl(pattern="^b\\d$", x=ds$model_number)
testit::assert("The model number should match the univariate or bivariate pattern.", is_univariate | is_bivariate)
ds$outcome_count <- ifelse(is_univariate, 1L, 2L)

alpha <- 0.05
limit <- ((1 - (alpha/2)))

# CI for the intercept
ds$int_zetau <- ds$sd_int + (limit * sqrt( 1 / (ds$subject_count - 3) ) )
ds$int_zetal <- ds$sd_int - (limit * sqrt( 1 / (ds$subject_count - 3) ) )
ds$ciu_sd_int <- tanh(ds$int_zetau)
ds$cil_sd_int <- tanh(ds$int_zetal)

# CI for the slope
ds$slope_zetau <- ds$sd_slope + (limit * sqrt( 1 / (ds$subject_count - 3) ) )
ds$slope_zetal <- ds$sd_slope - (limit * sqrt( 1 / (ds$subject_count - 3) ) )
ds$ciu_sd_slope <- tanh(ds$slope_zetau)
ds$cil_sd_slope <- tanh(ds$slope_zetal)

# CI for the residual
ds$residual_zetau <- ds$sd_residual + (limit * sqrt( 1 / (ds$subject_count - 3) ) )
ds$residual_zetal <- ds$sd_residual - (limit * sqrt( 1 / (ds$subject_count - 3) ) )
ds$ciu_sd_residual <- tanh(ds$residual_zetau)
ds$cil_sd_residual <- tanh(ds$residual_zetal)


saveRDS(ds,"./data/shared/dsb.rds")
#
source("./scripts/make_pretty.r")




