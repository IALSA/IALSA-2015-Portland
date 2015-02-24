## Project title: Automate Mplus out read-in
##    Created at: Feb 17 2015
##        Author: Philippe Rast
##          Data: Mplus output files
##       Summary: Collects output from Mplus files according to DTO and
##                generates a csv file for further use.
## ---------------------------------------------------------------------- ##

options(width=160)
rm(list=ls())

library(MplusAutomation)
pathDir <- getwd() # establish home directory
studyName <- "nas"

pathStudy <- paste0("./studies/",studyName) # temp
pathDto <- "./data/shared/dto_bivariate.csv" # derivative from Google sheets
## obtain variable list from DTO - Relative path
dto.vars <- names(read.csv(pathDto,skip=1))
dto.vars
list.files(pathStudy, pattern="\\.out$") # list all the output files (ending with ".out")


####  Read in Mplus ####

# Uncomment in case output files need to be generated and
# change "never" to "always" to overwrite existing out files
#runModels(replaceOutfile="never")

# Read in Model Summaries
msum <- MplusAutomation::extractModelSummaries(target=pathStudy)
colnames(msum)

# Extract Estimates
mpar <- MplusAutomation::extractModelParameters(target=pathStudy, recursive=F)
# names(mpar)
# mpar[[3]]

# count number of models
nmodels <- length(mpar)
nmodels

#### DTO: basics ####

## Generate empty data frame to be populated by Mplus values. The columns should match the manual back-up from Google sheet
results <- data.frame(matrix(NA, ncol=length(dto.vars), nrow=nmodels))
names(results) <-  dto.vars

for(i in seq_along(mpar)){
#  i <-5   # for testing and debugging
  mplus_output <- scan(file=file.path(pathStudy, msum$Filename[i]), what='character', sep='\n')
  mplus_model <- strsplit(msum$Filename[i], split="_|.out") # split file name to extract model specs

  mplus_model[[1]][[2]] # returns group identifier: male, female
  mplus_model[[1]][[3]] # returns covariates identifier: empty, age, full
  mplus_model[[1]][[4]] # returns physical outcome: noPhys, pulmonary, muscle, walking, chair, flamingo, summary
  mplus_model[[1]][[5]] # returns cognitive outcome: noCOg, knowledge, reasoning, speed, visuospatial, executive, mental


## Populate with header info
  results[i,c("model_number", 'subgroup',  'model_type', 'physical_outcome', 'cognitive_outcome')] <- mplus_model[[1]][1:5] # extract model specs from output filename
  results[i,"version"] <- "0.1" #msum[i,"Mplus.version"]
  results[i,"active"] <- NA
  results[i, c('date', 'time')] <- strsplit(mplus_output[3], '  ')[[1]]
results[i,"study_name"] <- studyName
  # Extract the file path, which exists after 'File = ', but before the semicolon.
  results[i, "data_file"] <- gsub(pattern="DATA:  File = (.+);", replacement="\\1", mplus_output[6], perl=T)


## Check for model conversion
  has_converged <- (grep("THE MODEL ESTIMATION TERMINATED NORMALLY", mplus_output) >= 1)
  results[i, 'converged'] <- has_converged
  if(has_converged) {
      ## obtain model for current loop
      model <- mpar[[i]]$unstandardized; model

#### DTO: Covariances  ####
## Look for at least 4 WITH statements - otherwise fall back to 'Means' and 'Variances' (Baseline Models)
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
      fc <- x[grep("I|S", x$param),] # I - intercept, S - slope
      fc


      ## Covariance among intercepts
      ## reduce to I in paramHeader.Use "^" to avoid the I in  WITHIN
      IpH <- fc[grep("^I", fc$paramHeader),]
      ## get IP or IC in param (IP - intercept physical, IC - intercept cognitive)
      results[i, c("cov_int", "p_cov_int")] <-  IpH[grep("^(IP|IC)$", IpH$param),c('est', 'pval')]


      ## Covariance among slopes
      ## reduce to S in paramHeader. Play it save, use ^
      SpH <- fc[grep("^S", fc$paramHeader),]
      ## get SP or SC in param (SP - slope physical, SC - slope cognitive)
      results[i, c("cov_slope", "p_cov_slope")] <- SpH[grep("^(SP|SC)$", SpH$param),c('est', 'pval')]


      ## Covariance among residuals
      ## Obtain resid cov
      rc <- x[-grep("I|S", x$param),]
      ## Check whether only one cov has been estimated
      if(length(unique(rc$est))==1) {
          results[i, c("cov_residual", "p_cov_res")] <- rc[1,c('est', 'pval')]
      } else {
        results[i, 'notes'] <- paste(results[i, 'notes'], "_Heterogeneous Res Covs")
      }
    }

#### DTO: Variances   ####

    ## Subset model
    vrs <- model[grep("Variances", model$paramHeader),]
    ## test whether we actually have values that are returned
    test <- vrs[vrs$param=='IP',c('est', 'se')]
    if(dim(test)[1]!=0) {results[i, c("var_int_physical", "se_int_physical")] <- test}
    ##
    test <- vrs[vrs$param=='SP',c('est', 'se')]
    if(dim(test)[1]!=0) {results[i, c("var_slope_physical", "se_slope_physical")] <- test}
    ##
    test <- vrs[vrs$param=='IC',c('est', 'se')]
    if(dim(test)[1]!=0) {results[i, c("var_int_cog", "se_int_cog")] <- test}
    ##
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
}

#### DTO: performance  ####

    results[i, 'subject_count'] <- msum[i, 'Observations']
    results[i, 'wave_count'] <- 'to_do'
    results[i, 'parameter_count'] <- msum[i, 'Parameters']
    results[i, 'output_file'] <- msum[i, 'Filename']
    results[i, 'software'] <- mplus_output[1]
    results[i, 'model_description'] <- '??'
    results[i, c('LL')] <-  msum[i,c('LL')]
    results[i, c('aic')] <-  msum[i,c('AIC')]
    results[i, c('bic')] <-  msum[i,c('BIC')]
    results[i, c('adj_bic')] <-  msum[i,c('aBIC')]
    results[i, c('aaic')] <-  msum[i,c('AICC')]
}

results <- dplyr::arrange(results, physical_outcome,  )

#### DTO: output ####

View(results)
## Write populated dto for further use
write.csv(results, file=file.path(pathStudy,'collected_params.csv'), row.names = F)


