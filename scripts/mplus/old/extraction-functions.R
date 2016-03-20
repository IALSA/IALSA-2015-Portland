# this script contains the definitions of the functions that extract the results of model estimation

collect_model_results <- function(folder){

  # create an object containing all output file paths
  out_list_all <- model_list$path_out
  out_list <- out_list_all # temp. remove when function functions
  # the script `group-variables.R` creates objects with names of standard variables for easier handling
  #e.g pc_TAU_00 <- c("pc_TAU_00_est", "pc_TAU_00_se", "pc_TAU_00_wald","pc_TAU_00_pval")
  source("./scripts/mplus/group-variables.R")

  # I. EXTRACTION
  #
  # I.A. Extract Model Summaries
  # create a dataset with model summaries
  get_msum <- function(){
    ## Declare the model descriptors we wish to record:
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
      msum$filePath[i] <- out_list[i] # attach the file path directly from the observed list

      # add the filename for identification
      (a <- strsplit(msum$filePath[i], split="/")) # each subfolder into a char value
      selector <- a[[1]] %in% c("studies") # find which one says "studies"
      element_number <- c(1:length(selector))[selector] # get its number
      msum$study_name[i] <- a[[1]][element_number+1] # move one step to the right

      # add the file path to locate for debugging
      (a <- strsplit(msum$filePath[i], split="/studies/")) # common folder
      msum$file_path[i] <- a # move one step to the right


    } # close loop
  return(msum)
  } # close function
  msum <- get_msum()

  # I.B. Extract Model Parameters
  # create a list which elements are datasets containing estimated coefficients
  get_mpar <- function(){
    mpar <- list()  # Create list object to populated from model output files
    # cycle through all model output files
    for(i in seq_along(out_list)){
      out_file <-  tail(strsplit(out_list[i],"/")[[1]], n=1)  # grab an output file to work with
      message("Getting model ", i, ", ",out_file) # view the file name
      mplus_output <- scan(out_list[i], what='character', sep='\n') # each line of output as a char value
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

  # II.ASSEMBLY
  # using (msum, mpar)  and custom parsing, populate the result mold (catalog-4)
  #
  # create empty dataset "results" that will be later populated with extracted values
  # selected_results is declared in group-variables.R script
  results <- data.frame(matrix(NA, ncol=length(selected_results), nrow=length(mpar))) # length(mpar) = number of output files
  names(results) <-  selected_results

  # II.A. Basic Results
  # extract the basic indicators about the model
  get_results_basic <- function(){
    selected_models <- seq_along(mpar)
    for(i in selected_models){
      out_file <-  tail(strsplit(out_list[i],"/")[[1]], n=1)# grab an output file to work with
      message("Getting model ", i, ", ",out_file)# view the file name
      mplus_output <- scan(out_list[i], what='character', sep='\n') # each line of output as a char value
      model <- mpar[[i]] # load the extract of this model's estimates
      # testing for specific errors
      no_observations <- length(grep("One or more variables in the data set have no non-missing values", mplus_output))
      variance_zero <- length(grep("One or more variables have a variance of zero", mplus_output))
      # If there are no specific error, then go get the parameter solution
      if(no_observations){
        results[i, "Error"]  <- "No observations"
      }else{
        if(variance_zero){
          results[i,"Error"]  <- "Zero variance"
        } else {

        ## Populate admin variables
        results[i, 'software'] <- mplus_output[1]
        results[i,"version"] <- "0.1"
        results[i, c('date', 'time')] <- strsplit(mplus_output[3], '  ')[[1]]
        results[i,"data_file"] <- strsplit(mplus_output[grep("File", mplus_output, ignore.case=TRUE)], 'IS| is |=|;')[[1]][2]
        results[i, 'output_file'] <- msum[i, 'Filename']
        results[i, "file_path"] <- msum[i,"file_path"]

        ## Populate model_id variables
        results[i,"study_name"] <- msum$study_name[i]
        results[i,c("model_number", 'subgroup',  'model_type')] <- strsplit(msum$Filename[i], '_')[[1]][1:3]

        subject_b <- strsplit(msum$Filename[i], '_|.out')[[1]]
        if(length(subject_b)==7L){
          results[i, "physical_measure"] <- subject_b[6]
          results[i, "cognitive_measure"] <-subject_b[7]
        } else if(length(subject_b)==5L){
          results[i, "physical_measure"] <-subject_b[4]
          results[i, "cognitive_measure"] <- subject_b[5]
        }

        ## Populate model_info variables
        results[i, 'subject_count'] <- msum[i, 'Observations'] # verify this, maybe datapoints, not subjects
        results[i, 'parameter_count'] <- msum[i, 'Parameters']

        (subject <- model[model$paramHeader=='Intercepts', 'param'])
        results[i, 'wave_count'] <- max(as.numeric(gsub("[^0-9]", '', subject)), na.rm=T) # MUST CHANGE. COUNTS THE HIGHEST NUMBER, BUT RATHER MUST COUNT THE COUNT OF WAVES
        results[i, c('LL')] <-  msum[i,c('LL')]
        results[i, c('aic')] <-  msum[i,c('AIC')]
        results[i, c('bic')] <-  msum[i,c('BIC')]
        results[i, c('adj_bic')] <-  msum[i,c('aBIC')]
        results[i, c('aaic')] <-  msum[i,c('AICC')]
        ## Computed values

          } # close else
      } # close else
    } # close loop for selected models
    return(results)
  } # close get_results_basic
  results <- get_results_basic()
  # results[i, p_GAMMA_00]

  # II.B. Catching Errors
  # records all relevant errors and warnings about model estimation produced by Mplus
  get_results_errors <- function(){
    selected_models <- seq_along(mpar)
    for(i in selected_models){
      out_file <-  tail(strsplit(out_list[i],"/")[[1]], n=1)# grab an output file to work with
      message("Getting model ", i, ", ",out_file)# view the file name
      mplus_output <- scan(out_list[i], what='character', sep='\n') # each line of output as a char value
      # testing for specific errors
      no_observations <- length(grep("One or more variables in the data set have no non-missing values", mplus_output))
      variance_zero <- length(grep("One or more variables have a variance of zero", mplus_output))
      # If there are no specific error, then go get the parameter solution
      if(no_observations){
        results[i, "Error"]  <- "No observations"
      }else{
        if(variance_zero){
          results[i,"Error"]  <- "Zero variance"
        }
        else{

          ## Check for model convergence
          conv <-  length(grep("THE MODEL ESTIMATION TERMINATED NORMALLY", mplus_output))
          has_converged <- (conv==1L)
          results[i, 'converged'] <- conv
          results[i, 'has_converged'] <- has_converged
          results[i,"covar_covered"] <- length(grep("THE COVARIANCE COVERAGE FALLS BELOW THE SPECIFIED LIMIT", mplus_output))

          line_found <- grep("TRUSTWORTHY FOR SOME PARAMETERS DUE TO A NON-POSITIVE DEFINITE", mplus_output)
          results[i,"trust_all"] <- !length(line_found)==1L

          line_found <- grep("PROBLEM INVOLVING THE FOLLOWING PARAMETER:", mplus_output)
          snippet <- mplus_output[line_found+1]
          if(length(snippet)>0){
            results[i,"mistrust"] <- snippet
          }
        } # close else
      } # close else
      } # close loop for selected_models
    return(results)
  } # close get_results_errors
  results <- get_results_errors()

  # III.A. Random Effects
  # record the extracted values of the estimated random effects
  get_results_random <- function(){
    selected_models <- seq_along(mpar)
    for(i in selected_models){
      model <- mpar[[i]] # load the extract of this model's estimates

      ## covariante btw phys intercept and cog intercept - pc_TAU_00
      (test <- model[grep(".WITH", model$paramHeader),]) # paramHeader containing .WITH
      (test <- test[grep("^I|S", test$param),]) # param starting with I or S
      (test <- test[grep("^I", test$paramHeader),]) # paramHeader starting with I
      (test <- test[grep("^I", test$param),]) # pram starting with I
      (test <- test[ ,c("est", "se","est_se", "pval")])
      if(dim(test)[1]!=0){results[i, pc_TAU_00] <- test}

      ## covariance btw phys slope and cog slope - pc_TAU_11
      (test <- model[grep(".WITH", model$paramHeader),]) # paramHeader containing .WITH
      (test <- test[grep("^I|S", test$param),]) # param starting with I or S
      (test <- test[grep("^S", test$paramHeader),]) # paramHeader starting with S
      (test <- test[grep("^S", test$param),]) # pram starting with S
      (test <- test[ ,c("est", "se","est_se", "pval")])
      if(dim(test)[1]!=0) {results[i, pc_TAU_11] <- test}

      ## covariance btw physical intercept and physical slope - pp_TAU_01
      (test <- model[grep(".WITH", model$paramHeader),]) # paramHeader containing .WITH
      (test <- test[grep("^IP|^SP", test$param),]) # param starting NOT with I or S
      (test <- test[grep("^IP|^SP", test$paramHeader),])
      (test <- test[ ,c("est", "se","est_se", "pval")])
       if(dim(test)[1]!=0){results[i, pp_TAU_01] <- test}

      ## covariance btw physical intercept and cognitive slope - pc_TAU_01
      (test <- model[grep(".WITH", model$paramHeader),]) # paramHeader containing .WITH
      (test <- test[grep("^IP|^SC", test$param),]) # param starting NOT with I or S
      (test <- test[grep("^IP|^SC", test$paramHeader),])
      (test <- test[ ,c("est", "se","est_se", "pval")])
       if(dim(test)[1]!=0){results[i, pc_TAU_01] <- test}

      ## covariance btw physical intercept and cognitive slope - pc_TAU_10
      (test <- model[grep(".WITH", model$paramHeader),]) # paramHeader containing .WITH
      (test <- test[grep("^IC|^SP", test$param),]) # param starting NOT with I or S
      (test <- test[grep("^IC|^SP", test$paramHeader),])
      (test <- test[ ,c("est", "se","est_se", "pval")])
       if(dim(test)[1]!=0){results[i, pc_TAU_10] <- test}

      ## covariance btw cognitive slope and cognitive intercept - cc_TAU_10
      (test <- model[grep(".WITH", model$paramHeader),]) # paramHeader containing .WITH
      (test <- test[grep("^IC|^SC", test$param),]) # param starting NOT with I or S
      (test <- test[grep("^IC|^SC", test$paramHeader),])
      (test <- test[ ,c("est", "se","est_se", "pval")])
       if(dim(test)[1]!=0){results[i, cc_TAU_10] <- test}

      ## Variance of random Physical Intercept - pp_TAU_00
      (test <- model[grep("Residual.Variances", model$paramHeader),])
      (test <- test[test$param=='IP', ])
      (test <- test[ ,c("est", "se","est_se", "pval")])
      if(dim(test)[1]!=0) {results[i, pp_TAU_00] <- test}

      ## Variance of random Physical Slope - pp_TAU_11
      (test <- model[grep("Residual.Variances", model$paramHeader),])
      (test <- test[test$param=='SP', ])
      (test <- test[ ,c("est", "se","est_se", "pval")])
      if(dim(test)[1]!=0) {results[i, pp_TAU_11] <- test}

      ## Variance of random Cognitive Intercept - cc_TAU_00
      (test <- model[grep("Residual.Variances", model$paramHeader),])
      (test <- test[test$param=='IC', ])
      (test <- test[ ,c("est", "se","est_se", "pval")])
      if(dim(test)[1]!=0) {results[i,cc_TAU_00] <- test}

      ## Variance of random Cognitive Slope - cc_TAU_11
      (test <- model[grep("Residual.Variances", model$paramHeader),])
      (test <- test[test$param=='SC', ])
      (test <- test[ ,c("est", "se","est_se", "pval")])
      if(dim(test)[1]!=0) {results[i, cc_TAU_11] <- test}

    } # close for loop
    return(results)
  }# close get_results_random
  results <- get_results_random()

  # III.B. Residuals
  # record the extracted values of the estimated random effects
  get_results_residual <- function(){
    selected_models <- seq_along(mpar)
    for(i in selected_models){
      model <- mpar[[i]] # load the extract of this model's estimates

      ## variance physical residual- p_SIGMA
      (test <- model[grep("^P", model$param), ])
      (test <- test[grep("^Residual.Variances", test$paramHeader), ])
      (test <- test[ ,c("est", "se","est_se", "pval")][1,]) # only the first line, they should be same
      if(dim(test)[1]!=0) {results[i, p_SIGMA] <- test}

      ## variance of cognitive residual - c_SIGMA
      (test <- model[grep("^C", model$param), ])
      (test <- test[grep("^Residual.Variances", test$paramHeader), ])
      (test <- test[ ,c("est", "se","est_se", "pval")][1,]) # only the first line, they should be same
      if(dim(test)[1]!=0) {results[i, c_SIGMA] <- test}

      ## covariance btw physical and cognitive residuals - pc_SIGMA
      (test <- model[grep(".WITH", model$paramHeader),]) # paramHeader containing .WITH
      (test <- test[-grep("^I|S", test$param),]) # param starting NOT with I or S
      (test <- test[ ,c("est", "se","est_se", "pval")][1,]) # only the first line, they should be same
      if(dim(test)[1]!=0){results[i, pc_SIGMA] <- test}

      #       ## Correlations b/w SLOPE physical and SLOPE cognitive
      #       results[i,R_SPSC] <- IalsaSynthesis::extract_named_wald("R_SPSC",mplus_output)
      #       ## Correlations b/w INTERCEPT physical and INTERCEPT cognitive
      #       results[i,R_IPIC] <- IalsaSynthesis::extract_named_wald("R_IPIC",mplus_output)
      #       ## Correlations b/w RESIDUAL physical and RESIDUAL cognitive
      #       results[i,R_RES_PC] <- IalsaSynthesis::extract_named_wald("R_RES_PC",mplus_output)

    } # close for loop
    return(results)
  }# close get_results_residual
  results <- get_results_residual()


  # III.C. Fixed Effects
  # record the extracted values of the estimated random effects
  get_results_fixed <- function(){
    selected_models <- seq_along(mpar)
    for(i in selected_models){
      model <- mpar[[i]] # load the extract of this model's estimates
      ## intercept
      (int <- model[grep("Intercepts", model$paramHeader),])

      ## average initial status of physical - p_GAMMA_00
      (test <- int[int$param=='IP',c('est', 'se', "est_se", 'pval')])
      if(dim(test)[1]!=0) {results[i, p_GAMMA_00] <- test}

      ## average rate of change of physical - p_GAMMA_10
      (test <- int[int$param=='SP',c('est', 'se', "est_se", 'pval')])
      if(dim(test)[1]!=0) {results[i, p_GAMMA_10] <- test}

      ## average initial status of cognitive - c_GAMMA_00
      test <- int[int$param=='IC',c('est', 'se', "est_se", 'pval')]
      if(dim(test)[1]!=0) {results[i, c_GAMMA_00] <- test}

      ## average rate of change of cognitive - c_GAMMA_10
      test <- int[int$param=='SC',c('est', 'se', "est_se", 'pval')]
      if(dim(test)[1]!=0) {results[i, c_GAMMA_10] <- test}

      ## intercept of process 1 (P) regressed on Age at baseline
      (test <- model[grep("IP.ON", model$paramHeader),])
      (test <- test[test$param=="BAGE",])
      (test <- test[c('est', 'se', "est_se", 'pval')])
      if(dim(test)[1]!=0) {results[i, p_GAMMA_01] <- test}

      ## slope of process 1 (P) regressed on Age at baseline
      (test <- model[grep("SP.ON", model$paramHeader),])
      (test <- test[test$param=="BAGE",])
      (test <- test[c('est', 'se', "est_se", 'pval')])
      if(dim(test)[1]!=0) {results[i, p_GAMMA_11] <- test}

      ## intercept of process 2 (C) regressed on Age at baseline
      (test <- model[grep("IC.ON", model$paramHeader),])
      (test <- test[test$param=="BAGE",])
      (test <- test[c('est', 'se', "est_se", 'pval')])
      if(dim(test)[1]!=0) {results[i, c_GAMMA_01] <- test}

      ## slope of process 1 (P) regressed on Age at baseline
      (test <- model[grep("SC.ON", model$paramHeader),])
      (test <- test[test$param=="BAGE",])
      (test <- test[c('est', 'se', "est_se", 'pval')])
      if(dim(test)[1]!=0) {results[i, c_GAMMA_11] <- test}


    } # close for loop
    return(results)
  }# close get_results_fixed
  results <- get_results_fixed()

  # IV.A. Export results
  destination <- folder # pass in the main function, show where to save
  write.csv(results, paste0(destination,".csv") , row.names=F)
  # saveRDS(results, paste0(destination,".rds") )
}



collect_all_results <- function(allFolder){
## make scripts from the prototype and run it (run_models=TRUE)
# pathFolder <- allFolder # where outputs are
out_list_all <- list.files(pathFolder, full.names=T, recursive=T, pattern="out$")

directories <- gsub(pattern, "\\1", dto_paths, perl=T)

pair_names <- basename(directories)



  for(i in allFolder){
    collect_model_results(folder=allFolder)
  }

}



# collect model results into a dataset stored in "./outputs/pairs/"
# the following function is defined in extraction_functions.R  script
# collect_model_results(folder = "outputs/pairs/grip_categories")
# ds <- readRDS(file.path(pathFolder,"grip_categories.rds")) # load the data for outcome pare
# kb_pr
