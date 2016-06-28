# this script contains the definitions of the functions that extract the results of model estimation

# collect_model_results <- function(folder){

  # create an object containing all output file paths
  # out_list_all <- model_list$path_out
  # out_list <- out_list_all # temp. remove when function functions
  # the script `group-variables.R` creates objects with names of standard variables for easier handling
  #e.g ab_TAU_00 <- c("ab_TAU_00_est", "ab_TAU_00_se", "ab_TAU_00_wald","ab_TAU_00_pval")
  # source("./scripts/mplus/group-variables.R")

  # I. EXTRACTION
  #
  # I.A. Extrac model identification variables
  get_id <- function(path){
    id_names <- model_id
    mid <- data.frame(matrix(ncol=length(id_names)))
    names(mid) <- id_names

    # extract study name from the file path
    (subject <- strsplit(path, split="/")) # each subfolder into a char value
    (selector <- subject[[1]] %in% c("studies")) # find which one says "studies"
    (element_number <- c(1:length(selector))[selector]) # get its number
    mid$study_name <- subject[[1]][element_number+1] # move one step to the right

    # extract model_number from the file path
    (b <- subject[[1]][length(selector)])
    (b <- strsplit(b, split="_|.out")[[1]])
    (mid$model_number <- b[1])

    # extract subgroup from the file path
    (mid$subgroup <- b[2])

    # extract model_type from the file path
    (mid$model_type  <- b[3])

    # extract physical_measure and cognitive_measure from the file path
    if(length(b)==7L){ # if
      (mid$process_a <- b[6])
      (mid$process_b <- b[7])
    }
    if(length(b)==5L){
      (mid$process_a <- b[4])
      (mid$process_b <- b[5])
    }

    # save the file path for accounting
    mid$file_path <- path
    return(mid)

  } # close get_id
  # mid <- get_id(path)

  # I.B. Extract Model Summaries
  # create a dataset with model summaries
  get_msum <- function(path){
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

    # get a single model summary
    ith_msum <- MplusAutomation::extractModelSummaries(target=path)
    # LOGICAL: is this descriptor present in the current model?
    (descriptor_exists <- names(ith_msum) %in% msum_names)
    # names of descriptors that exist in ith model
    (existing_descriptors <- names(ith_msum)[descriptor_exists])
    # populate existing fields
    msum[existing_descriptors] <- ith_msum[names(ith_msum) %in% msum_names]
    return(msum)
  } # close function
  # msum <- get_msum()

  # I.B. Extract Model Parameters
  # create a list which elements are datasets containing estimated coefficients
  get_mpar <- function(path){
      mplus_output <- scan(path, what='character', sep='\n') # each line of output as a char value
      # testing for specific errors
      (no_observations <- length(grep("One or more variables in the data set have no non-missing values", mplus_output)))
      (variance_zero <- length(grep("One or more variables have a variance of zero", mplus_output)))
      # If there are no specific error, then go get the parameter solution
      if(no_observations){
        message("One or more variables in the data set have no non-missing values")
        mpar <- "One or more variables in the data set have no non-missing values"
      }else{

          if(variance_zero){
            message("One or more variables have a variance of zero")
            mpar <- "One or more variables have a variance of zero"
          }else{
             mpar <- MplusAutomation::extractModelParameters(target=path, dropDimensions=T)
          }
      }

    return(mpar)
  }
  # mpar <- get_mpar()

  # II.ASSEMBLY
  # using (msum, mpar)  and custom parsing, populate the result mold (catalog-4)

  # II.A. Basic Results
  # extract the basic indicators about the model
  get_results_basic <- function(path, mid, msum, mpar, result){
    mplus_output <- scan(path, what='character', sep='\n') # each line of output as a char value
    model <- mpar$unstandardized
    if(!is.na(mpar)){
      ## Populate admin variables
      (result['software'] <- mplus_output[1])
      (result["version"] <- "0.1")
      (result[ c('date', 'time')] <- strsplit(mplus_output[3], '  ')[[1]])
      (result["data_file"] <- strsplit(mplus_output[grep("File", mplus_output, ignore.case=TRUE)], 'IS| is |=|;')[[1]][2])
      (result['output_file'] <- msum['Filename'])
      (result["file_path"] <- mid["file_path"])

      ## Populate model_id variables
      (result["study_name"] <- mid["study_name"])
      (result["model_number"] <- mid["model_number"])
      (result["subgroup"] <- mid["subgroup"])
      (result["model_type"] <- mid["model_type"])
      (result["process_a"] <- mid["process_a"])
      (result["process_b"] <- mid["process_b"])


      ## Populate model_info variables
      (result['subject_count'] <- msum['Observations']) # verify this, maybe datapoints, not subjects
      (result['parameter_count'] <- msum['Parameters'])

      (subject <- model[model$paramHeader=='Intercepts', 'param'])
      (result['wave_count'] <- max(as.numeric(gsub("[^0-9]", '', subject)), na.rm=T)) # MUST CHANGE. COUNTS THE HIGHEST NUMBER, BUT RATHER MUST COUNT THE COUNT OF WAVES
      (result['LL'] <-  msum['LL'])
      (result['aic'] <-  msum['AIC'])
      (result['bic'] <-  msum['BIC'])
      (result['adj_bic'] <-  msum['aBIC'])
      (result['aaic'] <-  msum['AICC'])
      ## Computed values
    }
    return(result)
  }  # close get_results_basic
  # results <- get_results_basic()
  # results[i, a_GAMMA_00]

  # II.B. Catching Errors
  # records all relevant errors and warnings about model estimation produced by Mplus
  get_results_errors <- function(path, mpar, result){
    mplus_output <- scan(path, what='character', sep='\n') # each line of output as a char value
    model <- mpar$unstandardized
    if(!is.na(mpar)){

    conv <-  length(grep("THE MODEL ESTIMATION TERMINATED NORMALLY", mplus_output))
    has_converged <- (conv==1L)
    # result['converged'] <- conv
    result['has_converged'] <- has_converged
    result["covar_covered"] <- length(grep("THE COVARIANCE COVERAGE FALLS BELOW THE SPECIFIED LIMIT", mplus_output))

    line_found <- grep("TRUSTWORTHY FOR SOME PARAMETERS DUE TO A NON-POSITIVE DEFINITE", mplus_output)
    result["trust_all"] <- !length(line_found)==1L

    line_found <- grep("PROBLEM INVOLVING THE FOLLOWING PARAMETER:", mplus_output)
    snippet <- mplus_output[line_found+1]
    if(length(snippet)>0){ result["mistrust"] <- snippet}

    } # close if
    return(result)
  } # close get_results_errors
  # results <- get_results_errors()

  # III.A. Random Effects
  # record the extracted values of the estimated random effects
  get_results_random <- function(path,mpar, result){
    mplus_output <- scan(path, what='character', sep='\n') # each line of output as a char value
    model <- mpar$unstandardized
    if(!is.na(mpar)){

      ## covariante btw phys intercept and cog intercept - ab_TAU_00
      (test <- model[grep(".WITH", model$paramHeader),]) # paramHeader containing .WITH
      (test <- test[grep("^I|S", test$param),]) # param starting with I or S
      (test <- test[grep("^I", test$paramHeader),]) # paramHeader starting with I
      (test <- test[grep("^I", test$param),]) # pram starting with I
      (test <- test[ ,c("est", "se","est_se", "pval")])
      if(dim(test)[1]!=0){result[ab_TAU_00] <- test}

      ## covariance btw phys slope and cog slope - ab_TAU_11
      (test <- model[grep(".WITH", model$paramHeader),]) # paramHeader containing .WITH
      (test <- test[grep("^I|S", test$param),]) # param starting with I or S
      (test <- test[grep("^S", test$paramHeader),]) # paramHeader starting with S
      (test <- test[grep("^S", test$param),]) # pram starting with S
      (test <- test[ ,c("est", "se","est_se", "pval")])
      if(dim(test)[1]!=0) {result[ab_TAU_11] <- test}

      ## covariance btw physical intercept and physical slope - aa_TAU_01
      (test <- model[grep(".WITH", model$paramHeader),]) # paramHeader containing .WITH
      (test <- test[grep("^IP|^SP", test$param),]) # param starting NOT with I or S
      (test <- test[grep("^IP|^SP", test$paramHeader),])
      (test <- test[ ,c("est", "se","est_se", "pval")])
       if(dim(test)[1]!=0){result[aa_TAU_01] <- test}

      ## covariance btw physical intercept and cognitive slope - ab_TAU_01
      (test <- model[grep(".WITH", model$paramHeader),]) # paramHeader containing .WITH
      (test <- test[grep("^IP|^SC", test$param),]) # param starting NOT with I or S
      (test <- test[grep("^IP|^SC", test$paramHeader),])
      (test <- test[ ,c("est", "se","est_se", "pval")])
       if(dim(test)[1]!=0){result[ab_TAU_01] <- test}

      ## covariance btw physical intercept and cognitive slope - ab_TAU_10
      (test <- model[grep(".WITH", model$paramHeader),]) # paramHeader containing .WITH
      (test <- test[grep("^IC|^SP", test$param),]) # param starting NOT with I or S
      (test <- test[grep("^IC|^SP", test$paramHeader),])
      (test <- test[ ,c("est", "se","est_se", "pval")])
       if(dim(test)[1]!=0){result[ab_TAU_10] <- test}

      ## covariance btw cognitive slope and cognitive intercept - bb_TAU_10
      (test <- model[grep(".WITH", model$paramHeader),]) # paramHeader containing .WITH
      (test <- test[grep("^IC|^SC", test$param),]) # param starting NOT with I or S
      (test <- test[grep("^IC|^SC", test$paramHeader),])
      (test <- test[ ,c("est", "se","est_se", "pval")])
       if(dim(test)[1]!=0){result[bb_TAU_10] <- test}

      ## Variance of random Physical Intercept - aa_TAU_00
      (test <- model[grep("Residual.Variances", model$paramHeader),])
      (test <- test[test$param=='IP', ])
      (test <- test[ ,c("est", "se","est_se", "pval")])
      if(dim(test)[1]!=0) {result[aa_TAU_00] <- test}

      ## Variance of random Physical Slope - aa_TAU_11
      (test <- model[grep("Residual.Variances", model$paramHeader),])
      (test <- test[test$param=='SP', ])
      (test <- test[ ,c("est", "se","est_se", "pval")])
      if(dim(test)[1]!=0) {result[aa_TAU_11] <- test}

      ## Variance of random Cognitive Intercept - bb_TAU_00
      (test <- model[grep("Residual.Variances", model$paramHeader),])
      (test <- test[test$param=='IC', ])
      (test <- test[ ,c("est", "se","est_se", "pval")])
      if(dim(test)[1]!=0) {result[bb_TAU_00] <- test}

      ## Variance of random Cognitive Slope - bb_TAU_11
      (test <- model[grep("Residual.Variances", model$paramHeader),])
      (test <- test[test$param=='SC', ])
      (test <- test[ ,c("est", "se","est_se", "pval")])
      if(dim(test)[1]!=0) {result[bb_TAU_11] <- test}

    } # close for loop
    return(result)
  }# close get_results_random
  # results <- get_results_random()

  # III.B. Residuals
  # record the extracted values of the estimated random effects
  get_results_residual <- function(path, mpar, result){
    mplus_output <- scan(path, what='character', sep='\n') # each line of output as a char value
    model <- mpar$unstandardized
    if(!is.na(mpar)){

      ## variance physical residual- a_SIGMA
      (test <- model[grep("^P", model$param), ])
      (test <- test[grep("^Residual.Variances", test$paramHeader), ])
      (test <- test[ ,c("est", "se","est_se", "pval")][1,]) # only the first line, they should be same
      if(dim(test)[1]!=0) {result[a_SIGMA] <- test}

      ## variance of cognitive residual - b_SIGMA
      (test <- model[grep("^C", model$param), ])
      (test <- test[grep("^Residual.Variances", test$paramHeader), ])
      (test <- test[ ,c("est", "se","est_se", "pval")][1,]) # only the first line, they should be same
      if(dim(test)[1]!=0) {result[b_SIGMA] <- test}

      ## covariance btw physical and cognitive residuals - ab_SIGMA
      (test <- model[grep(".WITH", model$paramHeader),]) # paramHeader containing .WITH
      (test <- test[-grep("^I|S", test$param),]) # param starting NOT with I or S
      (test <- test[ ,c("est", "se","est_se", "pval")][1,]) # only the first line, they should be same
      if(dim(test)[1]!=0){result[ab_SIGMA] <- test}

      model_output_char <- readr::read_file(path)
      ## Correlations b/w SLOPE physical and SLOPE cognitive
      result[R_SASB] <- IalsaSynthesis::extract_named_wald("R_SPSC",model_output_char)
      ## Correlations b/w INTERCEPT physical and INTERCEPT cognitive
      result[R_IAIB] <- IalsaSynthesis::extract_named_wald("R_IPIC",model_output_char)
      ## Correlations b/w RESIDUAL physical and RESIDUAL cognitive
      result[R_RES_AB] <- IalsaSynthesis::extract_named_wald("R_RES_PC",model_output_char)

    } # close for loop
    return(result)
  }# close get_results_residual
  # results <- get_results_residual()


  # III.C. Fixed Effects
  # record the extracted values of the estimated random effects
  get_results_fixed <- function(path, mpar, result){
    mplus_output <- scan(path, what='character', sep='\n') # each line of output as a char value
    model <- mpar$unstandardized
    if(!is.na(mpar)){
      ## intercept
      (int <- model[grep("Intercepts", model$paramHeader),])

      ## average initial status of physical - a_GAMMA_00
      (test <- int[int$param=='IP',c('est', 'se', "est_se", 'pval')])
      if(dim(test)[1]!=0) {result[a_GAMMA_00] <- test}

      ## average rate of change of physical - a_GAMMA_10
      (test <- int[int$param=='SP',c('est', 'se', "est_se", 'pval')])
      if(dim(test)[1]!=0) {result[a_GAMMA_10] <- test}

      ## average initial status of cognitive - b_GAMMA_00
      test <- int[int$param=='IC',c('est', 'se', "est_se", 'pval')]
      if(dim(test)[1]!=0) {result[b_GAMMA_00] <- test}

      ## average rate of change of cognitive - b_GAMMA_10
      test <- int[int$param=='SC',c('est', 'se', "est_se", 'pval')]
      if(dim(test)[1]!=0) {result[b_GAMMA_10] <- test}

      ## GAMMA*1 = AGE

      ## intercept of process 1 (P) regressed on Age at baseline
      (test <- model[grep("IP.ON", model$paramHeader),])
      (test <- test[test$param=="BAGE",])
      (test <- test[c('est', 'se', "est_se", 'pval')])
      if(dim(test)[1]!=0) {result[a_GAMMA_01] <- test}

      ## slope of process 1 (P) regressed on Age at baseline
      (test <- model[grep("SP.ON", model$paramHeader),])
      (test <- test[test$param=="BAGE",])
      (test <- test[c('est', 'se', "est_se", 'pval')])
      if(dim(test)[1]!=0) {result[a_GAMMA_11] <- test}

      ## intercept of process 2 (C) regressed on Age at baseline
      (test <- model[grep("IC.ON", model$paramHeader),])
      (test <- test[test$param=="BAGE",])
      (test <- test[c('est', 'se', "est_se", 'pval')])
      if(dim(test)[1]!=0) {result[b_GAMMA_01] <- test}

      ## slope of process 1 (P) regressed on Age at baseline
      (test <- model[grep("SC.ON", model$paramHeader),])
      (test <- test[test$param=="BAGE",])
      (test <- test[c('est', 'se', "est_se", 'pval')])
      if(dim(test)[1]!=0) {result[b_GAMMA_11] <- test}

      ## GAMMA*2 = EDUCATION

      edu_eas <- c("EDUC")
      edu_elsa <- c("EDUC2")
      edu_hrs <- edu_eas
      edu_ilse <- c("EDUCNEW")
      edu_lasa <- edu_eas
      edu_map <- edu_eas
      edu_nuage <- edu_eas
      edu_octo <- edu_eas
      edu_satsa <- c("CEDUC")
      education_ <- unique(c(edu_eas, edu_elsa, edu_hrs, edu_ilse,
                      edu_lasa, edu_map, edu_nuage, edu_octo,edu_satsa))

      ## intercept of process 1 (P) regressed on EDUCATION at baseline
      (test <- model[grep("IP.ON", model$paramHeader),])
      (test <- test[test$param %in% education_,])
      (test <- test[c('est', 'se', "est_se", 'pval')])
      if(dim(test)[1]!=0) {result[a_GAMMA_02] <- test}

      ## slope of process 1 (P) regressed on EDUCATION at baseline
      (test <- model[grep("SP.ON", model$paramHeader),])
      (test <- test[test$param %in% education_,])
      (test <- test[c('est', 'se', "est_se", 'pval')])
      if(dim(test)[1]!=0) {result[a_GAMMA_12] <- test}

      ## intercept of process 2 (C) regressed on EDUCATION at baseline
      (test <- model[grep("IC.ON", model$paramHeader),])
      (test <- test[test$param %in% education_,])
      (test <- test[c('est', 'se', "est_se", 'pval')])
      if(dim(test)[1]!=0) {result[b_GAMMA_02] <- test}

      ## slope of process 1 (P) regressed on EDUCATION at baseline
      (test <- model[grep("SC.ON", model$paramHeader),])
      (test <- test[test$param %in% education_,])
      (test <- test[c('est', 'se', "est_se", 'pval')])
      if(dim(test)[1]!=0) {result[b_GAMMA_12] <- test}


    } # close if
    return(result)
  }# close get_results_fixed
  # results <- get_results_fixed()

  # IV.A. Export results
  # destination <- folder # pass in the main function, show where to save
  # write.csv(results, paste0(destination,".csv") , row.names=F)
  # saveRDS(results, paste0(destination,".rds") )

