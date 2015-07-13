# # These functions work with processing
# # models .out files
# options(width=160)
# rm(list=ls())
# cat("\f")
#
# library(MplusAutomation)
#
# ## @knitr setPaths
# pathDir <- getwd() # establish home directory
# pathStudies <- file.path(pathDir,"studies")
# list.files(pathStudies) # inspect participating studies
#
# ## @knitr setGlobals
# studies <- c("eas", "elsa")
# out_list_all <- list.files(pathStudies, full.names=T, recursive=T, pattern="out$")
#
#
# # for debugging functions
# # study <- "radc"
# study <- "ilse"
# i <- 97
# comment out the code above when referenciing from 0_collect_studies.R

find.Conflicts <- function(study){
  # obtain list of out files with github sync issues.
  # study <- "eas" # for manual
  pathStudy <- paste0(pathStudies,"/",study)
  # point to the folder of the particular study
  out_list <- list.files(pathStudy, full.names=T, recursive=T, pattern="out$")

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


# extractModelParameters() sometimes breakes down when encounters confidence intervals in out file.
# Temporary Solution: Identify output files with CI and delete that section before reading them in
find.CI <- function(study){
  # study <- "eas" # for manual
  pathStudy <- paste0(pathStudies,"/",study)
  out_list <- list.files(pathStudy, full.names=T, recursive=T, pattern="out$")
  length(out_list)

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


# a dataset with model summaries
get_msum <- function(study){
  pathStudy <- file.path(pathStudies, study) # folder with output files
  out_list <- list.files(pathStudy, full.names=T, recursive=T, pattern="out$")
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
  }
  return(msum)
}
msum <- get_msum(study)
# msum[190,"Filename"]

# a list of datasets containing estimated coefficients
get_mpar <- function(study){
  pathStudy <- file.path(pathStudies, study) # folder with output files
  out_list <- list.files(pathStudy, full.names=T, recursive=T, pattern="out$")
  ## Create list object to populated from model output files
  mpar <- list()

  # cycle through all model output files in this study
  for(i in seq_along(out_list)){
    mpar[i] <- MplusAutomation::extractModelParameters(target=out_list[i], recursive=T, dropDimensions=T)
  }
  return(mpar)
}
mpar <- get_mpar(study)
# mpar[[190]]

# create empty dataset "results"
results_to_populate <- function(study){
  # populate a dataset with data from msum and mpar
  pathStudy <- file.path(pathStudies, study) # folder with output files
  out_list <- list.files(pathStudy, full.names=T, recursive=T, pattern="out$")
  # mpar <- get_mpar(study)

  # What model estimation results we should keep?
  selected_results <- c("software",  "version", "date", "time",
  "study_name", "model_number", "subgroup", "model_type",
  "physical_construct","cognitive_construct", "physical_measure", "cognitive_measure",
  "converged",

  "subject_count", "wave_count", "datapoint_count", "parameter_count",
  "LL", "aic", "bic", "adj_bic", "aaic",
  "output_file", "data_file",

  # variance of the physical intercept
  "pp_TAU_00", "pp_TAU_00_se", "pp_TAU_00_pval",
  # variance of the cognitive slope
  "pp_TAU_11", "pp_TAU_11_se", "pp_TAU_11_pval",
  # variance of the cognitive intercept
  "cc_TAU_00", "cc_TAU_00_se", "cc_TAU_00_pval",
# variance of the cognitive slope
  "cc_TAU_11", "cc_TAU_11_se", "cc_TAU_11_pval",
# variance of physical residual
  "p_SIGMA", "p_SIGMA_se", "p_SIGMA_pval",
# variance of cognitive residual
  "c_SIGMA", "c_SIGMA_se", "c_SIGMA_pval",

# covariance of physical intercept and physical slope
  "pp_TAU_01", "pp_TAU_01_se", "pp_TAU_01_pval",
# pc_TAU_01 - covariance btw physical intercept and cognitive slope
  "pc_TAU_01", "pc_TAU_01_se", "pc_TAU_01_pval",
# pc_TAU_00 - covariance btw physical intercept and cognitive intercept
  "pc_TAU_00", "pc_TAU_00_se", "pc_TAU_00_pval",
# pc_TAU_11 - covariance btw physical slope and cognitive slope
  "pc_TAU_11", "pc_TAU_11_se", "pc_TAU_11_pval",
# pc_TAU_10 - covariance btw physical slope and cognitive intercept
  "pc_TAU_10", "pc_TAU_10_se", "pc_TAU_10_pval",
# cc_TAU_10 - covariance btw cognitive slope and cognitive intercept
  "cc_TAU_10", "cc_TAU_10_se", "cc_TAU_10_pval",
# pc_SIGMA - covariance btw physcial residual and cogntive residual
  "pc_SIGMA", "pc_SIGMA_se", "pc_SIGMA_pval",

# average initial status of physical outcome
  "p_GAMMA_00", "p_GAMMA_00_se", "p_GAMMA_00_pval",
# average rate of change of physical outcome
  "p_GAMMA_10", "p_GAMMA_10_se", "p_GAMMA_10_pval",
# average initial status of cognitive outcome
  "c_GAMMA_00", "c_GAMMA_00_se", "c_GAMMA_00_pval",
# average rate of change of cognitive outcome
  "c_GAMMA_10", "c_GAMMA_10_se", "c_GAMMA_10_pval"
 )
  # Create data frame to populated from model output files
  results=data.frame(matrix(NA, ncol=length(selected_results), nrow=length(mpar)))
  names(results) <-  selected_results
  selected_results
  return(results)
}
results <- results_to_populate(study)

# in dev
load_study<- function(){
  pathStudy <- file.path(pathStudies, study) # folder with output files
  out_list <- list.files(pathStudy, full.names=T, recursive=T, pattern="out$")

  models_in_a_study <- seq_along(mpar)
  # models_in_a_study <- 1
  for(i in models_in_a_study){
    out_file <-  tail(strsplit(out_list[i],"/")[[1]], n=1)
    message("Getting ", study, ", model ", i, ", ",out_file)
    mplus_output <- scan(out_list[i], what='character', sep='\n')
    model <- mpar[[i]]
  }
} # close load_study

get_results_basic <- function(study){
  # populate a dataset with data from msum and mpar
  pathStudy <- file.path(pathStudies, study) # folder with output files
  out_list <- list.files(pathStudy, full.names=T, recursive=T, pattern="out$")
  # msum <- get_msum(study)
  # mpar <- get_mpar(study)
  # results <- results_to_populate(study)

  models_in_a_study <- seq_along(mpar)
  # models_in_a_study <- 1
  for(i in models_in_a_study){
    out_file <-  tail(strsplit(out_list[i],"/")[[1]], n=1)
    message("Getting ", study, ", model ", i, ", ",out_file)
    mplus_output <- scan(out_list[i], what='character', sep='\n')
    model <- mpar[[i]]

    ## Populate with header info
    results[i, 'software'] <- mplus_output[1]
    results[i,"version"] <- "0.1" #msum[i,"Mplus.version"]
    results[i, c('date', 'time')] <- strsplit(mplus_output[3], '  ')[[1]]
    results[i,"data_file"] <- strsplit(mplus_output[grep("File", mplus_output, ignore.case=TRUE)], 'IS| is |=|;')[[1]][2]

    ## obtain location of 'studies' to then be able to select the following element, the study name.
    selector <- which(strsplit(out_list[i], '/')[[1]]=='studies')
    results[i,"study_name"] <- strsplit(out_list[i], '/')[[1]][selector+1]
    results[i,c("model_number", 'subgroup',  'model_type')] <- strsplit(msum$Filename[i], '_')[[1]][1:3]
    results[i, c("physical_construct","cognitive_construct")] <- strsplit(msum$Filename[i], '_|.out')[[1]][4:5]
    results[i, "physical_measure"] <- strsplit(msum$Filename[i], '_|.out')[[1]][6]
    results[i, "cognitive_measure"] <- strsplit(msum$Filename[i], '_|.out')[[1]][7]

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
  return(results)
} # close get_results_basic
results <- get_results_basic(study)

get_results_offdiag <- function(study){
  # populate a dataset with data from msum and mpar
  pathStudy <- file.path(pathStudies, study) # folder with output files
  out_list <- list.files(pathStudy, full.names=T, recursive=T, pattern="out$")
  # msum <- get_msum(study)
  # mpar <- get_mpar(study)
  # results <- get_results_basic(study)

  models_in_a_study <- seq_along(mpar)
  # models_in_a_study <- 1
  for(i in models_in_a_study){
    out_file <-  tail(strsplit(out_list[i],"/")[[1]], n=1)
    message("Getting ", study, ", model ", i, ", ",out_file)
    mplus_output <- scan(out_list[i], what='character', sep='\n')
    model <- mpar[[i]]
    has_converged <- results[i,"converged"]
    if(has_converged) {

      ## covariante btw phys and cog intercepts - pc_TAU_00
      (test <- model[grep(".WITH", model$paramHeader),]) # paramHeader containing .WITH
      (test <- test[grep("^I|S", test$param),]) # param starting with I or S
      (test <- test[grep("^I", test$paramHeader),]) # paramHeader starting with I
      (test <- test[grep("^I", test$param),]) # pram starting with I
      (test <- test[ ,c("est", "se", "pval")])
      if(dim(test)[1]!=0){results[i, c("pc_TAU_00", "pc_TAU_00_se", "pc_TAU_00_pval")] <- test}

      ## covariance btw phys and cog slopes - pc_TAU_11
      (test <- model[grep(".WITH", model$paramHeader),]) # paramHeader containing .WITH
      (test <- test[grep("^I|S", test$param),]) # param starting with I or S
      (test <- test[grep("^S", test$paramHeader),]) # paramHeader starting with S
      (test <- test[grep("^S", test$param),]) # pram starting with S
      (test <- test[ ,c("est", "se", "pval")])
      if(dim(test)[1]!=0) {results[i, c("pc_TAU_00", "pc_TAU_00_se", "pc_TAU_00_pval")] <- test}

      ## covariance btw physical and cognitive residuals - pc_SIGMA
      (test <- model[grep(".WITH", model$paramHeader),]) # paramHeader containing .WITH
      (test <- test[-grep("I|S", test$param),]) # param starting NOT with I or S
      ## Check whether only one cov has been estimated
      if(length(unique(test$est))==1){
        (test <- test[ ,c("est", "se", "pval")][1,]) # only the first line, they should be same
        if(dim(test)[1]!=0){results[i, c("pc_SIGMA","pc_SIGMA_se", "pc_SIGMA_pval")] <- test}
      } # close if
      else{results[i, 'notes'] <- paste(results[i, 'notes'], "Heterogeneous Res Covs", sep='_')
      } # close else

    } # closes has_convered
  } # close study loop
  return(results)
} # close get_results_covariance
results <- get_results_offdiag(study)

get_results_diag <- function(study){
  # populate a dataset with data from msum and mpar
  pathStudy <- file.path(pathStudies, study) # folder with output files
  out_list <- list.files(pathStudy, full.names=T, recursive=T, pattern="out$")
#   msum <- get_msum(study)
#   mpar <- get_mpar(study)
#   results <- get_results_offdiag(study)

  models_in_a_study <- seq_along(mpar)
  # models_in_a_study <- 1
  for(i in models_in_a_study){
    out_file <-  tail(strsplit(out_list[i],"/")[[1]], n=1)
    message("Getting ", study, ", model ", i, ", ",out_file)
    mplus_output <- scan(out_list[i], what='character', sep='\n')
    model <- mpar[[i]]
    has_converged <- results[i,"converged"]
    if(has_converged) {
      ## subset
      vrs <- model[grep("Residual.Variances", model$paramHeader),]
      vrs
      ## test whether we actually have values that are returned

      ## Variance of random Physical Intercept - pp_TAU_00
      test <- vrs[vrs$param=='IP',c('est', 'se', 'pval')]
      if(dim(test)[1]!=0) {results[i, c("pp_TAU_00", "pp_TAU_00_se","pp_TAU_00_pval")] <- test}

      ## Variance of random Physical Slope - pp_TAU_11
      test <- vrs[vrs$param=='SP',c('est', 'se', 'pval')]
      if(dim(test)[1]!=0) {results[i, c("pp_TAU_11", "pp_TAU_11_se", "pp_TAU_11_pval")] <- test}

      ## Variance of random Cognitive Intercept - cc_TAU_00
      test <- vrs[vrs$param=='IC',c('est', 'se', 'pval')]
      if(dim(test)[1]!=0) {results[i, c("cc_TAU_00", "cc_TAU_00_se", "cc_TAU_00_pval")] <- test}

      ## Variance of random Cognitive Slope - cc_TAU_11
      test <- vrs[vrs$param=='SC',c('est', 'se', 'pval')]
      if(dim(test)[1]!=0) {results[i, c("cc_TAU_11", "cc_TAU_11_se", "cc_TAU_11_pval")] <- test}

      ## Variance of Physical Residual - p_SIGMA
      resP <- unique(vrs[grep("^P", vrs$param), c('est', 'se', 'pval')] ) # match only first letter with "^"
      ## Write residual covariance and add warning if ResCov unconstrained
      if(length(resP[,1])==1) {results[i, c("p_SIGMA", "p_SIGMA_se", "p_SIGMA_pval")] <- resP}
      ## Test of unconstrained variances: needs development
      #else {
      #    results[i,'notes'] <- paste(results[i,'notes'], 'Phys ResCov unconstrained', sep='_')}

      ## Variance of Cognitive Residual - c_SIGMA
      resC <- unique(vrs[grep("^C", vrs$param), c('est', 'se', 'pval')] )

      ## Write residual covariance and add warning if ResCov unconstrained
      if(length(resC[, 1])==1) {results[i, c("c_SIGMA", "c_SIGMA_se", "c_SIGMA_pval")] <- resC}
      ## Test of unconstrained variances: needs development
      #else {
       #    results[i,'notes'] <- paste(results[i,'notes'], 'Cog ResCov unconstrained', sep='_')}
    }# close has_converged
  } # close study loop
    return(results)
}# close get_results_diag
results <- get_results_diag(study)

get_results_intercepts <- function(study){
  # populate a dataset with data from msum and mpar
  pathStudy <- file.path(pathStudies, study) # folder with output files
  out_list <- list.files(pathStudy, full.names=T, recursive=T, pattern="out$")
#   msum <- get_msum(study)
#   mpar <- get_mpar(study)
#   results <- get_results_offdiag(study)

  models_in_a_study <- seq_along(mpar)
  # models_in_a_study <- 1
  for(i in models_in_a_study){
    out_file <-  tail(strsplit(out_list[i],"/")[[1]], n=1)
    message("Getting ", study, ", model ", i, ", ",out_file)
    mplus_output <- scan(out_list[i], what='character', sep='\n')
    model <- mpar[[i]]
    has_converged <- results[i,"converged"]
    if(has_converged) {
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
    }
  }
  return(results)
}# close get_results_intercepts
results <- get_results_intercepts(study)

# meta function
# get_models <- function(study){
  pathStudy <- paste0(pathStudies,"/",study)

#   results <- results_to_populate(study)
#
  destination <- file.path(pathStudy, "study_automation_result.csv")
  write.csv(results[results$study_name==study,], destination, row.names=F)
# }
# get_models("ilse")


# # meta function
# get_models <- function(study){
#   msum <- get_msum(study)
#   mpar <- get_mpar(study)
#   results <- results_to_populate(study)
#   results <- get_results_basic(study)
#   results <- get_results_offdiag(study)
#   results <- get_results_diag(study)
#   results <- get_results_intercepts(study)
#   browser()
#   pathStudy <- paste0(pathStudies,"/",study)
#   destination <- file.path(pathStudy, "study_automation_result.csv")
#   write.csv(results[results$study_name==study,], destination, row.names=F)
#   return(results)
# }
# get_models("ilse")


