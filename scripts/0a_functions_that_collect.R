# These functions work with processing
# models .out files
options(width=160)
rm(list=ls())
cat("\f")

library(MplusAutomation)

## @knitr setPaths
pathDir <- getwd() # establish home directory
pathStudies <- file.path(pathDir,"studies")
list.files(pathStudies) # inspect participating studies

## @knitr setGlobals
studies <- c("eas", "elsa")
out_list_all <- list.files(pathStudies, full.names=T, recursive=T, pattern="out$")


# for debugging functions
# study <- "radc"
study <- "ilse"
i <- 1
# comment out the code above when referenciing from 0_collect_studies.R
###########################################################################

################# GitHub sync issues ################################
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


################ Confidence Intervals issue #########################
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


############### Extract Model Summaries ################################



##### get_msum & get_mpar #####

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
##### get_msum & get_mpar ####


# create empty dataset "results"
results_to_populate <- function(study){
  # populate a dataset with data from msum and mpar
  pathStudy <- file.path(pathStudies, study) # folder with output files
  out_list <- list.files(pathStudy, full.names=T, recursive=T, pattern="out$")

  # What model estimation results we should keep?
  selected_results <- c("software",  "version", "date", "time",
  "study_name", "model_number", "subgroup", "model_type",
  "physical_construct","cognitive_construct", "physical_measure", "cognitive_measure",
  "converged",

  "subject_count", "wave_count", "datapoint_count", "parameter_count",
  "LL", "aic", "bic", "adj_bic", "aaic",
  "output_file", "data_file",

       "var_int_physical",      "se_int_physical",
     "var_slope_physical",    "se_slope_physical",
  "var_residual_physical", "se_residual_physical",

       "var_int_cog",      "se_int_cog",
     "var_slope_cog",    "se_slope_cog",
  "var_residual_cog", "se_residual_cog",

    "cov_int",   "cov_slope", "cov_residual", "se_cov_residual",
  "p_cov_int", "p_cov_slope","p_cov_res"

 )
  # Create data frame to populated from model output files
  results=data.frame(matrix(NA, ncol=length(selected_results), nrow=length(mpar)))
  names(results) <-  selected_results
  selected_results
  return(results)
}
results <- results_to_populate(study)


# organize basic model descriptors
get_results_basic <- function(study){
  # populate a dataset with data from msum and mpar
  pathStudy <- file.path(pathStudies, study) # folder with output files
  out_list <- list.files(pathStudy, full.names=T, recursive=T, pattern="out$")

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


get_results_covariance <- function(study){
  # populate a dataset with data from msum and mpar
  pathStudy <- file.path(pathStudies, study) # folder with output files
  out_list <- list.files(pathStudy, full.names=T, recursive=T, pattern="out$")

  models_in_a_study <- seq_along(mpar)
  # models_in_a_study <- 1
  for(i in models_in_a_study){
    out_file <-  tail(strsplit(out_list[i],"/")[[1]], n=1)
    message("Getting ", study, ", model ", i, ", ",out_file)
    mplus_output <- scan(out_list[i], what='character', sep='\n')
    model <- mpar[[i]]
    has_converged <- results[i,"converged"]
    if(has_converged) {
      ################# Covariances #################
      ## Look for at least 4 WITH statements
      ## otherwise fall back to 'Means' and 'Variances' (Baseline Models)
      ## this test seems wrong. The will be as many "WITH" as there are timepoints.
      modtype <- (length(grep("WITH", model$paramHeader))>=4)
      modtype
      if(modtype) { # if modtype==1 we have WITH statements
        x <- model[grep("WITH", model$paramHeader),]
        ## find factor coavariances IP wiht IC and SP with SC
        ## CovSS: Loook for S in paramHeader and S in param # only works as long as there is no S2 etc.
        ## CovII: Loook for I in paramHeader and I in param
        x$param
        x
        ## Focus on factor covariances
        fc <- x[grep("I|S", x$param),]
        fc

        ############# Covariance among intercepts  #################
        ## reduce to starting "I" in paramHeader. Note. Use "^" to avoid the I in  WITHIN
        IpH <- fc[grep("^I", fc$paramHeader),]
        ## get I in param
        ## cov_int - covariante btw phys and cog intercepts - pc_TAU_00
        results[i, c("cov_int")] <-  IpH[grep("^I", IpH$param),c('est')]
        ## se_cov_int - standard error of cov_int
        results[i, c("se_cov_int")] <-  IpH[grep("^I", IpH$param),c('se')]
        ## p_cov_int - p-value associated with cov_int
        results[i, c("p_cov_int")] <-  IpH[grep("^I", IpH$param),c('pval')]

        ############ Covariance among slopes  ####################
        ## reduce to starting "I" in paramHeader. Play it save, use ^
        SpH <- fc[grep("^S", fc$paramHeader),]
        ## get S in param
        ## cov_slope - covariance btw phys and cog slopes - pc_TAU_11
        results[i, c("cov_slope")] <- SpH[grep("S", SpH$param),c('est')]
        ## se_cov_slope - standard error of cov_slope
        results[i, c("se_cov_slope")] <- SpH[grep("S", SpH$param),c('se')]
         ## p_cov_slope - p-value associated with cov_slope
        results[i, c("p_cov_slope")] <- SpH[grep("S", SpH$param),c('pval')]

        ############# Covariance among residuals  ##################
        ## Obtain resid cov
        rc <- x[-grep("I|S", x$param),]
        ## Check whether only one cov has been estimated
        if(length(unique(rc$est))==1){
          results[i, c("cov_residual","se_cov_residual", "p_cov_res")] <- rc[1,c('est','se', 'pval')]
          # results[i, c("se_cov_residual")] <- rc[1,c('se')]
        } else {
          results[i, 'notes'] <- paste(results[i, 'notes'], "Heterogeneous Res Covs", sep='_')
        }
      }

  } # closes has_convered
  } # close study loop
  return(results)
} # close get_results_covariance
results <- get_results_covariance(study)

## not working past this line
#################################################################


get_results_variance <- function(study){
  # populate a dataset with data from msum and mpar
  pathStudy <- file.path(pathStudies, study) # folder with output files
  out_list <- list.files(pathStudy, full.names=T, recursive=T, pattern="out$")

  models_in_a_study <- seq_along(mpar)
  # models_in_a_study <- 1
  for(i in models_in_a_study){
    out_file <-  tail(strsplit(out_list[i],"/")[[1]], n=1)
    message("Getting ", study, ", model ", i, ", ",out_file)
    mplus_output <- scan(out_list[i], what='character', sep='\n')
    model <- mpar[[i]]
    has_converged <- results[i,"converged"]
    if(has_converged) {


      ################# Variances #################
      ## Subset model
      vrs <- model[grep("Variances", model$paramHeader),]
      ## test whether we actually have values that are returned

      ## Intercept of Physical
      test <- vrs[vrs$param=='IP',c('est', 'se')]
      if(dim(test)[1]!=0) {results[i, c("var_int_physical", "se_int_physical")] <- test}

      ## Slope of Physical
      test <- vrs[vrs$param=='SP',c('est', 'se')]
      if(dim(test)[1]!=0) {results[i, c("var_slope_physical", "se_slope_physical")] <- test}

      ## Intercept of Cogntivie
      test <- vrs[vrs$param=='IC',c('est', 'se')]
      if(dim(test)[1]!=0) {results[i, c("var_int_cog", "se_int_cog")] <- test}

      ## Slope of Cognitive
      test <- vrs[vrs$param=='SC',c('est', 'se')]
      if(dim(test)[1]!=0) {results[i, c("var_slope_cog", "se_slope_cog")] <- test}

      ## Residuals
      ## match only first letter with "^"
      resP <- unique(vrs[grep("^P", vrs$param), c('est', 'se')] )

      ## Write residual covariance and add warning if ResCov unconstrained
      if(length(resP[,1])==1) {results[i, c("var_residual_physical", "se_residual_physical")] <- resP}
      ## Test of unconstrained variances: needs development
      #else {
      #    results[i,'notes'] <- paste(results[i,'notes'], 'Phys ResCov unconstrained', sep='_')}
      resC <- unique(vrs[grep("^C", vrs$param), c('est', 'se')] )

      ## Write residual covariance and add warning if ResCov unconstrained
      if(length(resC[, 1])==1) {results[i, c("var_residual_cog", "se_residual_cog")] <- resC}
      ## Test of unconstrained variances: needs development
      #else {
       #    results[i,'notes'] <- paste(results[i,'notes'], 'Cog ResCov unconstrained', sep='_')}
    }# close has_converged
  } # close study loop
}# close get_results_variance
get_results_variance(study)

# get_models <- function(study){
#   msum <- get_msum(study)
#   mpar <- get_mpar(study)
#   results <- results_to_populate(study)
#   results <- get_results_basic(study)
#   results <- get_results_covariance(study)
#   results <- get_results_variance(study)
#   return(results)
# }
# get_models("ilse")



