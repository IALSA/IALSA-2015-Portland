# ## This script
# options(width=160)
# rm(list=ls())
# cat("\f")
#
# ## @knitr load_packages
# library(dplyr)
# library(ggplot2)
# library(tidyr)
# library(MplusAutomation)


  out_list_all <- list_object[["path"]]
  source("./scripts/mplus/group_variables.R")

# @knitr summary --------------------------------------------------------------
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

#       a <- strsplit(msum$filePath[i], split="/")
#       selector <- a[[1]] %in% c("studies")
#       element_number <- c(1:length(selector))[selector]
#       msum$study_name[i] <- a[[1]][element_number+1]
      msum$study_name[i] <- list_object[["study"]][[i]]
    }
    return(msum)
  }
  msum <- get_msum()

# @knitr paramters --------------------------------------------------------------
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


# @knitr empty_results --------------------------------------------------------------
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



    # Create data frame to populated from model output files
    results=data.frame(matrix(NA, ncol=length(selected_results), nrow=length(mpar)))
    names(results) <-  selected_results # from ./scripts/mplus/group_variables.R
    selected_results
    return(results)
  } # close results_to_populate
  results <- results_to_populate()


# @knitr basic_results --------------------------------------------------------------
  # extract the basic indicators about the model
  # results <- data.frame()
  # results=data.frame(matrix(NA, ncol=100, nrow=length(mpar)))
  get_results_basic <- function(study){
    out_list <- out_list_all
    selected_models <- seq_along(mpar)
    for(i in selected_models){
    # for(i in 1:10){
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
          }
        else{
#
#
      ## Populate with header info
      results[i, 'software'] <- mplus_output[1]
      results[i,"version"] <- "0.1" #msum[i,"Mplus.version"]
      results[i, c('date', 'time')] <- strsplit(mplus_output[3], '  ')[[1]]
      results[i,"data_file"] <- strsplit(mplus_output[grep("File", mplus_output, ignore.case=TRUE)], 'IS| is |=|;')[[1]][2]

      ## obtain location of 'studies' to then be able to select the following element, the study name.
      selector <- which(strsplit(out_list[i], '/')[[1]]=='GitHub')
      results[i,"study_name"] <- strsplit(out_list[i], '/')[[1]][selector+3]
      results[i,c("model_number", 'subgroup',  'model_type')] <- strsplit(msum$Filename[i], '_')[[1]][1:3]
      # results[i, c("physical_construct","cognitive_construct")] <- strsplit(msum$Filename[i], '_|.out')[[1]][4:5]
      results[i, "physical_measure"] <- strsplit(msum$Filename[i], '_|.out')[[1]][4]
      results[i, "cognitive_measure"] <- strsplit(msum$Filename[i], '_|.out')[[1]][5]

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
      results[i, 'converged'] <- conv
      results[i, 'has_converged'] <- has_converged
      results[i,"covar_covered"] <- length(grep("THE COVARIANCE COVERAGE FALLS BELOW THE SPECIFIED LIMIT", mplus_output))

      line_found <- grep("TRUSTWORTHY FOR SOME PARAMETERS DUE TO A NON-POSITIVE DEFINITE", mplus_output)
      results[i,"trust_all"] <- !length(line_found)==1L

      line_found <- grep("PROBLEM INVOLVING THE FOLLOWING PARAMETER:", mplus_output)
      # a <- paste(mplus_output, collapse ="\n")
      # mplus_output[615:620]
      snippet <- mplus_output[line_found+1]
      # a <- gsub("(?m).+Parameter (\\d{2}), (R_RES_PC).*", "\\1 - \\2", snippet, perl=TRUE)
      # gsub("(?m).+Parameter (\\d{2}), ([\\w_]+).*", "\\2", snippet, perl=TRUE)
      # mplus_output[807:812]
      # results[i,"trust_params"] <- as.character(" ")
      # results[i,"mistrust"] <- gsub("(?m).+Parameter (\\d{2}), ([\\w_]+).*", "\\2", snippet, perl=TRUE)
            if(length(snippet)>0){
              results[i,"mistrust"] <- snippet
            }

          }
      }
    }
    return(results)
  } # close get_results_basic
  results <- get_results_basic()
  get_results_basic()

  # i <- 1
# @knitr random_effects --------------------------------------------------------------
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

      # Correlation between random intercepts - R_IPIC
      (test <- model[grep("New.Additional.Parameters", model$paramHeader),])
      (test <- test[test$param=='R_IPIC', ])
      (test <- test[ ,c("est", "se","est_se", "pval")])
      if(dim(test)[1]!=0) {results[i, R_IPIC] <- test}

      # Correlation between random slopes - R_SPSC
      (test <- model[grep("New.Additional.Parameters", model$paramHeader),])
      (test <- test[test$param=='R_SPSC', ])
      (test <- test[ ,c("est", "se","est_se", "pval")])
      if(dim(test)[1]!=0) {results[i, R_SPSC] <- test}

      # Correlation between residuals - R_RES_PC
      (test <- model[grep("New.Additional.Parameters", model$paramHeader),])
      (test <- test[test$param=='R_RES_PC', ])
      (test <- test[ ,c("est", "se","est_se", "pval")])
      if(dim(test)[1]!=0) {results[i, R_RES_PC] <- test}


          }# close has_converged
        }
      }
    } # close for loop
    return(results)
  }# close get_results_random
  results <- get_results_random()

# @knitr residuals --------------------------------------------------------------
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
  #

          }# close has_converged
        }
      }
    } # close for loop
    return(results)
  }# close get_results_residual
  results <- get_results_residual()

# @knitr fixed_effects -------------------------------------------------------------
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
        (int <- model[grep("Intercepts", model$paramHeader),])
        ## average initial status of process 1 (P) - p_GAMMA_00
        (test <- int[int$param=='IP',c('est', 'se', "est_se", 'pval')])
        if(dim(test)[1]!=0) {results[i, p_GAMMA_00] <- test}
        ## average rate of change of process 1 (P) - p_GAMMA_10
        (test <- int[int$param=='SP',c('est', 'se', "est_se", 'pval')])
        if(dim(test)[1]!=0) {results[i, p_GAMMA_10] <- test}
        ## average rate of change of process 2 (C) - c_GAMMA_10
        (test <- int[int$param=='SC',c('est', 'se', "est_se", 'pval')])
        if(dim(test)[1]!=0) {results[i, c_GAMMA_10] <- test}
        ## average initial status of process 2 (C) - c_GAMMA_00
        (test <- int[int$param=='IC',c('est', 'se', "est_se", 'pval')])
        if(dim(test)[1]!=0) {results[i, c_GAMMA_00] <- test}


        ## Level-2 predictors / Covariates
        ## intercept of process 1 (P) regressed on AGE at baseline
        (test <- model[grep("IP.ON", model$paramHeader),])
        (test <- test[test$param=="BAGE",])
        (test <- test[c('est', 'se', "est_se", 'pval')])
        if(dim(test)[1]!=0) {results[i, p_GAMMA_01] <- test}

        ## intercept of process 1 (P) regressed on EDUCATION at baseline
        (test <- model[grep("IP.ON", model$paramHeader),])
        (test <- test[test$param %in% c("EDUC","EDUCATION"),])
        (test <- test[c('est', 'se', "est_se", 'pval')])
        if(dim(test)[1]!=0) {results[i, p_GAMMA_02] <- test}

        ## intercept of process 1 (P) regressed on HEIGHT at baseline
        (test <- model[grep("IP.ON", model$paramHeader),])
        (test <- test[test$param %in% c("HEIGHT","HEIGHTC"),])
        (test <- test[c('est', 'se', "est_se", 'pval')])
        if(dim(test)[1]!=0) {results[i, p_GAMMA_03] <- test}

        ## intercept of process 1 (P) regressed on SMOKING at baseline
        (test <- model[grep("IP.ON", model$paramHeader),])
        (test <- test[test$param %in% c("SMOKHIST","SMOKHIST"),])
        (test <- test[c('est', 'se', "est_se", 'pval')])
        if(dim(test)[1]!=0) {results[i, p_GAMMA_04] <- test}

        ## intercept of process 1 (P) regressed on SMOKING at baseline
        (test <- model[grep("IP.ON", model$paramHeader),])
        (test <- test[test$param %in% c("SMOKHIST","SMOKHIST"),])
        (test <- test[c('est', 'se', "est_se", 'pval')])
        if(dim(test)[1]!=0) {results[i, p_GAMMA_04] <- test}

        ## intercept of process 1 (P) regressed on DIABETES at baseline
        (test <- model[grep("IP.ON", model$paramHeader),])
        (test <- test[test$param %in% c("DIABETES","DIAB"),])
        (test <- test[c('est', 'se', "est_se", 'pval')])
        if(dim(test)[1]!=0) {results[i, p_GAMMA_04] <- test}

        ## intercept of process 1 (P) regressed on CARDIO at baseline
        (test <- model[grep("IP.ON", model$paramHeader),])
        (test <- test[test$param %in% c("CARDIO","CARDIO"),])
        (test <- test[c('est', 'se', "est_se", 'pval')])
        if(dim(test)[1]!=0) {results[i, p_GAMMA_04] <- test}





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


      }# close has_converged
        }
      }
    } # close for loop
    return(results)
  }# close get_results_fixed
  results <- get_results_fixed()



# @knitr define_collection_function --------------------------------------------------------------
collect_model_results <- function(list_object){
  out_list_all <- list_object[["path"]]
  #e.g pc_TAU_00 <- c("pc_TAU_00_est", "pc_TAU_00_se", "pc_TAU_00_wald","pc_TAU_00_pval")
  source("./scripts/mplus/group_variables.R")
  msum <- get_msum()
  mpar <- get_mpar()
  results <- results_to_populate()
  results <- get_results_basic()
  results <- get_results_random()
  results <- get_results_residual()
  results <- get_results_fixed()
  return(results)





# @knitr define_general_collection_function --------------------------------------------------------------
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

  # @knitr dummy --------------------------------------------------------------
  ######################## Export results dataset ############################
#   destination <- get_folder
#   write.csv(results, paste0(destination,".csv") , row.names=F)
#   saveRDS(results, paste0(destination,".rds") )
# }



# collect model results into a dataset stored in "./outputs/pairs/"
# the following function is defined in extraction_functions.R  script
# collect_model_results(folder = "outputs/pairs/grip_categories")
# ds <- readRDS(file.path(pathFolder,"grip_categories.rds")) # load the data for outcome pare
# kb_pr
