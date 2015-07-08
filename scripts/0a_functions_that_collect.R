# These functions work with processing
# models .out files

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
get.Models <- function(study){
  # study <- "eas" # for manual
  # study <- "nas" # for manual
  pathStudy <- file.path(pathStudies, study)
  # point to the folder of the particular study
  out_list <- list.files(pathStudy, full.names=T, recursive=T, pattern="out$")

  ## Define variable names needed for our tables
  msum_names <- c("Mplus.version","Title","AnalysisType","Estimator","Observations","Parameters","LL","AIC","BIC","aBIC","AICC","Filename")

  ## init msum object
  msum <- data.frame(matrix(ncol=length(msum_names)))
  msum
  names(msum) <- msum_names
  ## init mpar object
  mpar <- list()

  for(i in seq_along(out_list)){
    indmsum <- MplusAutomation::extractModelSummaries(target=out_list[i], recursive=T)
    ## obtain variable names and write only those of interest and those from mplus out file into msum
    msum[i,names(indmsum)[names(indmsum) %in% msum_names]] <-indmsum[names(indmsum) %in% msum_names]
    ## sorting issue also arises for extractModelParameters(), which is a list
    mpar[i] <- MplusAutomation::extractModelParameters(target=out_list[i], recursive=T, dropDimensions=T)
  }

  i

  length(out_list)
  msum

  ## count number of models
  nmodels <- length(mpar)
  nmodels

  ## Sanity check
  nmodels==length(out_list)

  # Declare what will be collected in DTO (data transfer object)
  dto.vars <- c(
    "model_number", "version", "active","valid", "best_in_gender",
    "study_name", "date", "time", "converged", "subgroup", "model_type",
    "physical_construct",
         "var_int_physical",      "se_int_physical",
       "var_slope_physical",    "se_slope_physical",
    "var_residual_physical", "se_residual_physical",

    "cognitive_construct",
         "var_int_cog",      "se_int_cog",
       "var_slope_cog",    "se_slope_cog",
    "var_residual_cog", "se_residual_cog",

      "cov_int",   "cov_slope", "cov_residual",
    "p_cov_int", "p_cov_slope","p_cov_res",

      "subject_count",
         "wave_count",
    "datapoint_count",
    "parameter_count",
    "deviance", "software", "output_file", "model_description", "results_descriptions", "notes" )
  # Generate empty data frame to be populated by Mplus values
  results=data.frame(matrix(NA, ncol=length(dto.vars), nrow=nmodels))
  names(results) <-  dto.vars



  ## Results LOOP BEGINS
  # study <- "nas"
  models_in_a_study <- seq_along(mpar)
  # models_in_a_study <- 1
  for(i in models_in_a_study){
    # models_in_a_study <- 243
    out_file <-  tail(strsplit(target,"/")[[1]], n=1)
    message("Getting ", study, ", model ", i, ",",out_file)
    mplus_output <- scan(out_list[i], what='character', sep='\n')
    # browser()
    ## Populate with header info
    results[i,c("model_number", 'subgroup',  'model_type')] <- strsplit(msum$Filename[i], '_')[[1]][1:3]
    results[i,"version"] <- "0.1" #msum[i,"Mplus.version"]
    results[i,"active"] <- NA
    results[i, c('date', 'time')] <- strsplit(mplus_output[3], '  ')[[1]]
    ## obtain location of 'studies' to then be able to select the following element, the study name.
    selector <- which(strsplit(out_list[i], '/')[[1]]=='studies')
    results[i,"study_name"] <- strsplit(out_list[i], '/')[[1]][selector+1]
    results[i,"data_file"] <-
    strsplit(mplus_output[grep("File", mplus_output, ignore.case=TRUE)], 'IS| is |=|;')[[1]][2]
    results[i, c("physical_construct","cognitive_construct")] <- strsplit(msum$Filename[i], '_|.out')[[1]][4:5]
    results[i, "physical_measure"] <- strsplit(msum$Filename[i], '_|.out')[[1]][6]
    results[i, "cognitive_measure"] <- strsplit(msum$Filename[i], '_|.out')[[1]][7]

    ## #################### Basic info ######################
    results[i, 'subject_count'] <- msum[i, 'Observations']
    results[i, 'parameter_count'] <- msum[i, 'Parameters']
    results[i, 'output_file'] <- msum[i, 'Filename']
    results[i, 'software'] <- mplus_output[1]
    results[i, 'model_description'] <- '??'
    results[i, c('LL')] <-  msum[i,c('LL')]
    results[i, c('aic')] <-  msum[i,c('AIC')]
    results[i, c('bic')] <-  msum[i,c('BIC')]
    results[i, c('adj_bic')] <-  msum[i,c('aBIC')]
    results[i, c('aaic')] <-  msum[i,c('AICC')]

    ## Check for model convergence
    conv <-  length(grep("THE MODEL ESTIMATION TERMINATED NORMALLY", mplus_output))
    has_converged <- (conv==1L)
    results[i, 'converged'] <- has_converged
    ## has_converged LOOP BEGINS
    if(has_converged) {
      ## obtain model for current loop
      model <- mpar[[i]]
      ## model
      wc <- model[model$paramHeader=='Intercepts', 'param']
      results[i, 'wave_count'] <- max(as.numeric(gsub("[^0-9]", '', wc)), na.rm=T)

      ################# Covariances #################
      ## Look for at least 4 WITH statements
      ## otherwise fall back to 'Means' and 'Variances' (Baseline Models)
      modtype <- (length(grep("WITH", model$paramHeader))>=4)
      modtype
      ## modtype LOOP BEGINS
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
        ## reduce to I in paramHeader. Note. Use "^" to avoid the I in  WITHIN
        IpH <- fc[grep("^I", fc$paramHeader),]
        ## get I in param
        results[i, c("cov_int", "p_cov_int")] <-  IpH[grep("^I", IpH$param),c('est', 'pval')]
        results[i, c("se_cov_int")] <-  IpH[grep("^I", IpH$param),c('se')]

        ############ Covariance among slopes  ####################
        ## reduce to S in paramHeader. Play it save, use ^
        SpH <- fc[grep("^S", fc$paramHeader),]
        ## get S in param
        results[i, c("cov_slope", "p_cov_slope")] <- SpH[grep("S", SpH$param),c('est', 'pval')]
        results[i, c("se_cov_slope")] <- SpH[grep("S", SpH$param),c('se')]

        ############# Covariance among residuals  ##################
        ## Obtain resid cov
        rc <- x[-grep("I|S", x$param),]
        ## Check whether only one cov has been estimated
        if(length(unique(rc$est))==1) {
          results[i, c("cov_residual", "p_cov_res")] <- rc[1,c('est', 'pval')]
          results[i, c("se_cov_residual")] <- rc[1,c('se')]
        } else {
          results[i, 'notes'] <- paste(results[i, 'notes'], "Heterogeneous Res Covs", sep='_')
        }
      }
      ## modtype LOOP ENDS

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
    }# has_converged LOOP ENDS
  } # Results LOOP ENDS
  destination <- file.path(pathStudy, "study_automation_result.csv")
  write.csv(results[results$study_name==study,], destination, row.names=F)

} # function ENDS
