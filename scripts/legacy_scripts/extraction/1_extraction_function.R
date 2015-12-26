## This script
options(width=160)
rm(list=ls())
cat("\f")

## @knitr load_packages
library(dplyr)
library(ggplot2)

# ## @knitr load_data
# ds0 <- readRDS("./data/derived/unshared/ds0.rds") # raw MAP data
# ds <- ds0
# str(ds)


## @knitr get_results
pathDir <- getwd() # establish home directory
pathFolder <- file.path(pathDir,"scripts/extraction/example")


out_list_all <- list.files(pathFolder, full.names=T, recursive=T, pattern="out$")
out_list_all


# ## @knitr setGlobals
##############################################################################


##### Summary ###############################################################
# a dataset with model summaries
get_msum <- function(){
  # pathStudy <- file.path(pathStudies, study) # folder with output files
  # out_list <- list.files(pathStudy, full.names=T, recursive=T, pattern="out$")
  ## Model descriptors we would like to have:
  msum_names <- c("Mplus.version",
                  "Title",
                  "AnalysisType",
                  "Estimator",
                  "Observations",
                  "Parameters",
                  "LL","AIC","BIC","aBIC","AICC",
                  "Filename")

  # Create data frame to populated from model output files
  msum <- data.frame(matrix(ncol=length(msum_names)))
  names(msum) <- msum_names # columns is what we want
  msum

  # list paths to the models in a given study
#   study_selector <- out_list_all[["study"]] %in% study
  out_list <- out_list_all

  # cycle through all model output files in this study
  for(i in seq_along(out_list)){
    # get a single model summary
    ith_msum <- MplusAutomation::extractModelSummaries(target=out_list[i], recursive=T)
    # LOGICAL: is this descriptor present in the current model?
    (descriptor_exists <- names(ith_msum) %in% msum_names)
    # names of descriptors that exist in ith model
    (existing_descriptors <- names(ith_msum)[descriptor_exists])
    # populate existing fields
    msum[i, existing_descriptors] <- ith_msum[names(ith_msum) %in% msum_names]
    msum$filePath[i] <- out_list[i]

    a <- strsplit(msum$filePath[i], split="/")
    selector <- a[[1]] %in% c("studies")
    element_number <- c(1:length(selector))[selector]
    msum$study_name[i] <- a[[1]][element_number+1]
  }
  return(msum)
}
msum <- get_msum()

########## Parameters #######################################################
# a list of datasets containing estimated coefficients
get_mpar <- function(){
  out_list <- out_list_all
  # Create list object to populated from model output files
  mpar <- list()
  # cycle through all model output files
  for(i in seq_along(out_list)){
    # get a text output to work with
    out_file <-  tail(strsplit(out_list[i],"/")[[1]], n=1)
    message("Getting model ", i, ", ",out_file)
    mplus_output <- scan(out_list[i], what='character', sep='\n')
    # testing for specific errors
    no_observations <- length(grep("One or more variables in the data set have no non-missing values", mplus_output))
    variance_zero <- length(grep("One or more variables have a variance of zero", mplus_output))
    # If there are no specific error, then go get the parameter solution
    if(no_observations){
      mpar[i]  <- "No observations"
    }else{

        if(variance_zero){
          mpar[i]  <- "Zero variance"
        }else{
           mpar[i] <- MplusAutomation::extractModelParameters(target=out_list[i], recursive=T, dropDimensions=T)
        }
    }
  }
  return(mpar)
}
mpar <- get_mpar()


############### Empty Results ###############################################
# create empty dataset "results"
results_to_populate <- function(study){
  # populate a dataset with data from msum and mpar
#   pathStudy <- file.path(pathStudies, study) # folder with output files
#   out_list <- list.files(pathStudy, full.names=T, recursive=T, pattern="out$")
  # mpar <- get_mpar(study)

  # list paths to the models in a given study
  # study_selector <- out_list_all[["study"]] %in% study
  out_list <- out_list_all#[["path"]][study_selector]

  # What model estimation results we should keep?
  selected_results <- c("software",  "version", "date", "time",
  "study_name", "model_number", "subgroup", "model_type",
  "physical_construct","cognitive_construct", "physical_measure", "cognitive_measure",
  "converged",

  "subject_count", "wave_count", "datapoint_count", "parameter_count",
  "LL", "aic", "bic", "adj_bic", "aaic",
  "output_file", "data_file",

  # pc_TAU_00 - covariance btw physical intercept and cognitive intercept
  "pc_TAU_00", "pc_TAU_00_se", "pc_TAU_00_pval",
  # pc_TAU_11 - covariance btw physical slope and cognitive slope
  "pc_TAU_11", "pc_TAU_11_se", "pc_TAU_11_pval",
  # pc_TAU_01 - covariance btw physical intercept and cognitive slope
  "pc_TAU_01", "pc_TAU_01_se", "pc_TAU_01_pval",
  # pc_TAU_10 - covariance btw physical slope and cognitive intercept
  "pc_TAU_10", "pc_TAU_10_se", "pc_TAU_10_pval",
  # pc_SIGMA - covariance btw physcial residual and cogntive residual
  "pc_SIGMA", "pc_SIGMA_se", "pc_SIGMA_pval",


  # variance of the physical intercept
  "pp_TAU_00", "pp_TAU_00_se", "pp_TAU_00_pval",
  # variance of the cognitive slope
  "pp_TAU_11", "pp_TAU_11_se", "pp_TAU_11_pval",
  # covariance of physical intercept and physical slope
  "pp_TAU_01", "pp_TAU_01_se", "pp_TAU_01_pval",
  # variance of physical residual
  "p_SIGMA", "p_SIGMA_se", "p_SIGMA_pval",


  # variance of the cognitive intercept
  "cc_TAU_00", "cc_TAU_00_se", "cc_TAU_00_pval",
  # variance of the cognitive slope
  "cc_TAU_11", "cc_TAU_11_se", "cc_TAU_11_pval",
  # cc_TAU_10 - covariance btw cognitive slope and cognitive intercept
  "cc_TAU_10", "cc_TAU_10_se", "cc_TAU_10_pval",
  # variance of cognitive residual
  "c_SIGMA", "c_SIGMA_se", "c_SIGMA_pval",


  # average initial status of physical outcome
  "p_GAMMA_00", "p_GAMMA_00_se", "p_GAMMA_00_pval",
  # average rate of change of physical outcome
  "p_GAMMA_10", "p_GAMMA_10_se", "p_GAMMA_10_pval",
  # average initial status of cognitive outcome
  "c_GAMMA_00", "c_GAMMA_00_se", "c_GAMMA_00_pval",
  # average rate of change of cognitive outcome
  "c_GAMMA_10", "c_GAMMA_10_se", "c_GAMMA_10_pval",

  # correlation b/w physical INTERCEPT  and cognitive INTERCEPT
  "R_IPIC", "R_IPIC_se", "R_IPIC_pval",
  # correlation b/w physical SLOPE  and cognitive SLOPE
  "R_SPSC", "R_SPSC_se", "R_SPSC_pval",
  # correlation b/w physical RESIDUAL and cogntive RESIDUAL
  "R_RES_PC", "R_RES_PC_se", "R_RES_PC_pval",

  # covariance coverage value
  "covar_cover"

  # Proportion of data present

 )
  # Create data frame to populated from model output files
  results=data.frame(matrix(NA, ncol=length(selected_results), nrow=length(mpar)))
  names(results) <-  selected_results
  selected_results
  return(results)
} # close results_to_populate
results <- results_to_populate()


############### Basic Results ###############################################
# extract the basic indicators about the model
get_results_basic <- function(study){
  out_list <- out_list_all
  selected_models <- seq_along(mpar)
  for(i in selected_models){
    # get a text output to work with
    out_file <-  tail(strsplit(out_list[i],"/")[[1]], n=1)
    message("Getting model ", i, ", ",out_file)
    mplus_output <- scan(out_list[i], what='character', sep='\n')
    model <- mpar[[i]]
    # testing for specific errors
    no_observations <- length(grep("One or more variables in the data set have no non-missing values", mplus_output))
    variance_zero <- length(grep("One or more variables have a variance of zero", mplus_output))
    # If there are no specific error, then go get the parameter solution
    if(no_observations){
      results[i, "Error"]  <- "No observations"
    }else{

        if(variance_zero){
          results[i,"Error"]  <- "Zero variance"
        }else{


    ## Populate with header info
    results[i, 'software'] <- mplus_output[1]
    results[i,"version"] <- "0.1" #msum[i,"Mplus.version"]
    results[i, c('date', 'time')] <- strsplit(mplus_output[3], '  ')[[1]]
    results[i,"data_file"] <- strsplit(mplus_output[grep("File", mplus_output, ignore.case=TRUE)], 'IS| is |=|;')[[1]][2]

    ## obtain location of 'studies' to then be able to select the following element, the study name.
    selector <- which(strsplit(out_list[i], '/')[[1]]=='GitHub')
    results[i,"study_name"] <- strsplit(out_list[i], '/')[[1]][selector+1]
    results[i,c("model_number", 'subgroup',  'model_type')] <- strsplit(msum$Filename[i], '_')[[1]][1:3]

    file_name <- strsplit(msum[i, 'Filename'],"_")[[1]]
    name_length <- length(file_name)
    if(name_length==6){
    results[i, "physical_measure"] <- strsplit(msum$Filename[i], '_|.out')[[1]][4]
    results[i, "cognitive_measure"] <- strsplit(msum$Filename[i], '_|.out')[[1]][5]
    }
    if(name_length==8){
    results[i, c("physical_construct","cognitive_construct")] <- strsplit(msum$Filename[i], '_|.out')[[1]][4:5]
    results[i, "physical_measure"] <- strsplit(msum$Filename[i], '_|.out')[[1]][6]
    results[i, "cognitive_measure"] <- strsplit(msum$Filename[i], '_|.out')[[1]][7]
    }

    ## #################### Basic info ######################
    results[i, 'subject_count'] <- msum[i, 'Observations']
    results[i, 'parameter_count'] <- msum[i, 'Parameters']
    wc <- model[model$paramHeader=='Intercepts', 'param']
    results[i, 'wave_count'] <- max(as.numeric(gsub("[^0-9]", '', wc)), na.rm=T)
    results[i, 'output_file'] <- msum[i, 'Filename']

    results[i, c('LL')] <-  msum[i,c('LL')]
    results[i, c('aic')] <-  msum[i,c('AIC')]
    results[i, c('bic')] <-  msum[i,c('BIC')]
    results[i, c('adj_bic')] <-  msum[i,c('aBIC')]
    results[i, c('aaic')] <-  msum[i,c('AICC')]
    ## Computed values
    ## Check for model convergence
    conv <-  length(grep("THE MODEL ESTIMATION TERMINATED NORMALLY", mplus_output))
    has_converged <- (conv==1L)
    results[i, 'converged'] <- has_converged
        }
    }
  }
  return(results)
} # close get_results_basic
results <- get_results_basic()

#################### Random Effects #########################################
get_results_random <- function(study){
  out_list <- out_list_all
  selected_models <- seq_along(mpar)
  for(i in selected_models){
    # get a text output to work with
    out_file <-  tail(strsplit(out_list[i],"/")[[1]], n=1)
    message("Getting model ", i, ", ",out_file)
    mplus_output <- scan(out_list[i], what='character', sep='\n')
    model <- mpar[[i]]
    # testing for specific errors
    no_observations <- length(grep("One or more variables in the data set have no non-missing values", mplus_output))
    variance_zero <- length(grep("One or more variables have a variance of zero", mplus_output))
    # If there are no specific error, then go get the parameter solution
    if(no_observations){
      results[i, "Error"]  <- "No observations"
    }else{

      if(variance_zero){
        results[i,"Error"]  <- "Zero variance"
      }else{
        has_converged <- results[i,"converged"]
        if(has_converged) {

    ## covariante btw phys intercept and cog intercept - pc_TAU_00
    (test <- model[grep(".WITH", model$paramHeader),]) # paramHeader containing .WITH
    (test <- test[grep("^I|S", test$param),]) # param starting with I or S
    (test <- test[grep("^I", test$paramHeader),]) # paramHeader starting with I
    (test <- test[grep("^I", test$param),]) # pram starting with I
    (test <- test[ ,c("est", "se", "pval")])
    if(dim(test)[1]!=0){results[i, c("pc_TAU_00", "pc_TAU_00_se", "pc_TAU_00_pval")] <- test}

    ## covariance btw phys slope and cog slope - pc_TAU_11
    (test <- model[grep(".WITH", model$paramHeader),]) # paramHeader containing .WITH
    (test <- test[grep("^I|S", test$param),]) # param starting with I or S
    (test <- test[grep("^S", test$paramHeader),]) # paramHeader starting with S
    (test <- test[grep("^S", test$param),]) # pram starting with S
    (test <- test[ ,c("est", "se", "pval")])
    if(dim(test)[1]!=0) {results[i, c("pc_TAU_11", "pc_TAU_11_se", "pc_TAU_11_pval")] <- test}

    ## covariance btw physical intercept and physical slope - pp_TAU_01
    (test <- model[grep(".WITH", model$paramHeader),]) # paramHeader containing .WITH
    (test <- test[grep("^IP|^SP", test$param),]) # param starting NOT with I or S
    (test <- test[grep("^IP|^SP", test$paramHeader),])
    (test <- test[ ,c("est", "se", "pval")])
     if(dim(test)[1]!=0){results[i, c("pp_TAU_01","pp_TAU_01_se", "pp_TAU_01_pval")] <- test}


    ## covariance btw physical intercept and cognitive slope - pc_TAU_01
    (test <- model[grep(".WITH", model$paramHeader),]) # paramHeader containing .WITH
    (test <- test[grep("^IP|^SC", test$param),]) # param starting NOT with I or S
    (test <- test[grep("^IP|^SC", test$paramHeader),])
    (test <- test[ ,c("est", "se", "pval")])
     if(dim(test)[1]!=0){results[i, c("pc_TAU_01","pc_TAU_01_se", "pc_TAU_01_pval")] <- test}


    ## covariance btw physical intercept and cognitive slope - pc_TAU_10
    (test <- model[grep(".WITH", model$paramHeader),]) # paramHeader containing .WITH
    (test <- test[grep("^IC|^SP", test$param),]) # param starting NOT with I or S
    (test <- test[grep("^IC|^SP", test$paramHeader),])
    (test <- test[ ,c("est", "se", "pval")])
     if(dim(test)[1]!=0){results[i, c("pc_TAU_10","pc_TAU_10_se", "pc_TAU_10_pval")] <- test}


    ## covariance btw cognitive slope and cognitive intercept - cc_TAU_10
    (test <- model[grep(".WITH", model$paramHeader),]) # paramHeader containing .WITH
    (test <- test[grep("^IC|^SC", test$param),]) # param starting NOT with I or S
    (test <- test[grep("^IC|^SC", test$paramHeader),])
    (test <- test[ ,c("est", "se", "pval")])
     if(dim(test)[1]!=0){results[i, c("cc_TAU_10","cc_TAU_10_se", "cc_TAU_10_pval")] <- test}

    ## Variance of random Physical Intercept - pp_TAU_00
    (test <- model[grep("Residual.Variances", model$paramHeader),])
    (test <- test[test$param=='IP', ])
    (test <- test[ , c('est', 'se', 'pval')])
    if(dim(test)[1]!=0) {results[i, c("pp_TAU_00", "pp_TAU_00_se","pp_TAU_00_pval")] <- test}

    ## Variance of random Physical Slope - pp_TAU_11
    (test <- model[grep("Residual.Variances", model$paramHeader),])
    (test <- test[test$param=='SP', ])
    (test <- test[ , c('est', 'se', 'pval')])
    if(dim(test)[1]!=0) {results[i, c("pp_TAU_11", "pp_TAU_11_se", "pp_TAU_11_pval")] <- test}

    ## Variance of random Cognitive Intercept - cc_TAU_00
    (test <- model[grep("Residual.Variances", model$paramHeader),])
    (test <- test[test$param=='IC', ])
    (test <- test[ , c('est', 'se', 'pval')])
    if(dim(test)[1]!=0) {results[i, c("cc_TAU_00", "cc_TAU_00_se", "cc_TAU_00_pval")] <- test}

    ## Variance of random Cognitive Slope - cc_TAU_11
    (test <- model[grep("Residual.Variances", model$paramHeader),])
    (test <- test[test$param=='SC', ])
    (test <- test[ , c('est', 'se', 'pval')])
    if(dim(test)[1]!=0) {results[i, c("cc_TAU_11", "cc_TAU_11_se", "cc_TAU_11_pval")] <- test}

  }# close has_converged
      }
    }
  } # close for loop
  return(results)
}# close get_results_random
results <- get_results_random()

######################### Residuals #########################################
get_results_residual <- function(study){
  out_list <- out_list_all
  selected_models <- seq_along(mpar)
  for(i in selected_models){
    # get a text output to work with
    out_file <-  tail(strsplit(out_list[i],"/")[[1]], n=1)
    message("Getting model ", i, ", ",out_file)
    mplus_output <- scan(out_list[i], what='character', sep='\n')
    model <- mpar[[i]]
    # testing for specific errors
    no_observations <- length(grep("One or more variables in the data set have no non-missing values", mplus_output))
    variance_zero <- length(grep("One or more variables have a variance of zero", mplus_output))
    # If there are no specific error, then go get the parameter solution
    if(no_observations){
      results[i, "Error"]  <- "No observations"
    }else{

      if(variance_zero){
        results[i,"Error"]  <- "Zero variance"
      }else{
        has_converged <- results[i,"converged"]
        if(has_converged) {

      ## variance physical residual- p_SIGMA
      (test <- model[grep("^P", model$param), ])
      (test <- test[grep("^Residual.Variances", test$paramHeader), ])
      (test <- test[ ,c("est", "se", "pval")][1,]) # only the first line, they should be same
        if(dim(test)[1]!=0) {results[i, c("p_SIGMA", "p_SIGMA_se", "p_SIGMA_pval")] <- test}

      ## variance of cognitive residual - c_SIGMA
      (test <- model[grep("^C", model$param), ])
      (test <- test[grep("^Residual.Variances", test$paramHeader), ])
      (test <- test[ ,c("est", "se", "pval")][1,]) # only the first line, they should be same
        if(dim(test)[1]!=0) {results[i, c("c_SIGMA", "c_SIGMA_se", "c_SIGMA_pval")] <- test}

      ## covariance btw physical and cognitive residuals - pc_SIGMA
      (test <- model[grep(".WITH", model$paramHeader),]) # paramHeader containing .WITH
      (test <- test[-grep("^I|S", test$param),]) # param starting NOT with I or S
      (test <- test[ ,c("est", "se", "pval")][1,]) # only the first line, they should be same
      if(dim(test)[1]!=0){results[i, c("pc_SIGMA","pc_SIGMA_se", "pc_SIGMA_pval")] <- test}

        }# close has_converged
      }
    }
  } # close for loop
  return(results)
}# close get_results_residual
results <- get_results_residual()

######################### Fixed Effects ####################################
get_results_fixed <- function(study){
  out_list <- out_list_all
  selected_models <- seq_along(mpar)
  for(i in selected_models){
    # get a text output to work with
    out_file <-  tail(strsplit(out_list[i],"/")[[1]], n=1)
    message("Getting model ", i, ", ",out_file)
    mplus_output <- scan(out_list[i], what='character', sep='\n')
    model <- mpar[[i]]
    # testing for specific errors
    no_observations <- length(grep("One or more variables in the data set have no non-missing values", mplus_output))
    variance_zero <- length(grep("One or more variables have a variance of zero", mplus_output))
    # If there are no specific error, then go get the parameter solution
    if(no_observations){
      results[i, "Error"]  <- "No observations"
    }else{

      if(variance_zero){
        results[i,"Error"]  <- "Zero variance"
      }else{
        has_converged <- results[i,"converged"]

      if(has_converged) {

      ## intercept
      int <- model[grep("Intercepts", model$paramHeader),]

      ## average initial status of physical - p_GAMMA_00
      test <- int[int$param=='IP',c('est', 'se', 'pval')]
      if(dim(test)[1]!=0) {results[i, c("p_GAMMA_00", "p_GAMMA_00_se","p_GAMMA_00_pval")] <- test}

      ## average rate of change of physical - p_GAMMA_10
      test <- int[int$param=='SP',c('est', 'se', 'pval')]
      if(dim(test)[1]!=0) {results[i, c("p_GAMMA_10", "p_GAMMA_10_se","p_GAMMA_10_pval")] <- test}

      ## average initial status of cognitive - c_GAMMA_00
      test <- int[int$param=='IC',c('est', 'se', 'pval')]
      if(dim(test)[1]!=0) {results[i, c("c_GAMMA_00", "c_GAMMA_00_se","c_GAMMA_00_pval")] <- test}

      ## average rate of change of cognitive - c_GAMMA_10
      test <- int[int$param=='SC',c('est', 'se', 'pval')]
      if(dim(test)[1]!=0) {results[i, c("c_GAMMA_10", "c_GAMMA_10_se","c_GAMMA_10_pval")] <- test}

    }# close has_converged
      }
    }
  } # close for loop
  return(results)
}# close get_results_fixed
results <- get_results_fixed()


###################################  OPTIONAL FUNCTION #####
# Optional functions
find.Conflicts <- function(){
  # obtain list of out files with github sync issues.
  # study <- "eas" # for manual
  # pathStudy <- paste0(pathStudies,"/",study)
  # point to the folder of the particular study
  # out_list <- list.files(pathStudy, full.names=T, recursive=T, pattern="out$")
  out_list <- out_list_all

  # locate conflicts
  conf_file <- array(NA, dim=length(out_list)) # set up empty object
  ## scan for github insert symbols <<<<
  for(i in 1:length(out_list)){
    fileContent <- scan(out_list[i], what='character', sep='\n')

    ## Check whether there is a sync conflict
    is_conflict <- (length(grep("<<<<", fileContent))>=1)

     if(is_conflict) {
      ## record file location
      conf_file[i] <- out_list[i]
    }
  }
  ## collect conflicting files
  (conflict <- conf_file[!is.na(conf_file)])


  # Solve conflicts
  ## Rename conflicting files with append .conflict
  if(length(conflict)>=1){
    for(i in 1:length(conflict)){
     file.rename(conflict[i], paste0(conflict[i], '.conflict'))
    }
  }
  return(conflict)
} #close function
# find.Conflicts()

# extractModelParameters() sometimes breakes down when encounters confidence intervals in out file.
# Temporary Solution: Identify output files with CI and delete that section before reading them in
find.CI <- function(){
  # study <- "eas" # for manual
#   pathStudy <- paste0(pathStudies,"/",study)
#   out_list <- list.files(pathStudy, full.names=T, recursive=T, pattern="out$")
#   length(out_list)

  # list paths to the models in a given study
  # study_selector <- out_list_all[["study"]] %in% study
  out_list <- out_list_all# [["path"]][study_selector]

  # locate conflicts
  conf_file <- array(NA, dim=length(out_list)) # set up empty object
  ## scan for CONFIDENCE INTERVALS
  for(i in 1:length(out_list)){
    fileContent <- scan(out_list[i], what='character', sep='\n')
    ## Check whether there is a sync conflict
    is_conflict <- (length(grep("CONFIDENCE INTERVALS OF MODEL", fileContent))>=1)

    if(is_conflict) {
      ## record file location
      conf_file[i] <- out_list[i]
      # Find line where CI block begins
      CI.line <- grep("CONFIDENCE INTERVALS OF MODEL", fileContent)
      ## Remove anything below CI.Line and save out file again.
      amended <- fileContent[1:(CI.line-1)]
      writeLines(amended, out_list[i])
    }
  }
  ## collect conflicting files
  (conflict <- conf_file[!is.na(conf_file)])
  return(conflict)
} # close function
# find.CI()

########## Black list option #####


# ### Black list some models before they are corrected
# black_list <- function( blacklist) {
#   results <- results[!(results$study_name == study & results$output_file %in% blacklist), ]
#   return(results)
# }
# results <- black_list(study, blacklist = blacklist)

# Export aggregated model results

##### Export clean data ###########################################
destination <- "./scripts/extraction/example/ds"
write.csv(results, paste0(destination,".csv") , row.names=F)
saveRDS(results, paste0(destination,".rds") )
