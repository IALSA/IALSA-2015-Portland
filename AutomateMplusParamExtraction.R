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

## obtain variable list from DTO
dto.vars <- names(read.csv('~/UVic/Git/IALSA-2015-Portland/studies/dto_bivariate.csv'))
dto.vars

## Fallback DTO as per Feb 17 2015
## dto.vars <- c("model_number", "version", "active", "valid", "best_in_gender", "date",
##               "time", "study_name", "converged",
##               "subgroup", "model_type", "physical_outcome",
##               "var_int_physical", "se_int_physical", "var_slope_physical",
##               "se_slope_physical", "var_residual_physical" "se_residual_physical",
##               "cognitive_outcome", "var_int_cog", "se_int_cog",
##               "var_slope_cog", "se_slope_cog", "var_residual_cog",
##               "se_residual_cog", "cov_int", "cov_slope", 
##               "cov_residual", "p_cov_int", "p_cov_slope",
##               "p_cov_res", "subject_count", "wave_count",
##               "n", "parameter_count", "deviance",   
##               "output_file", "software", "model_description",
##               "results_descriptions", "notes")

list.files("/home/philippe/Dropbox/IALSAworkshop2015/OCTOTwin_Example")

setwd("/home/philippe/Dropbox/IALSAworkshop2015/OCTOTwin_Example")

## Read in Model Summaries
msum <- extractModelSummaries()
names(msum) 

## File names 
msum$Filename

msum[15,]

msum$Title
msum$Parameters


## Extract Estimates
mpar <- extractModelParameters(target=getwd(), recursive=F)
names(mpar)
mpar[[11]]

str(mpar)

# count number of models
nmodels <- length(mpar)
nmodels


scan(msum$Filename[14], what='character', sep='\n')[3]


dto.vars

results=data.frame(matrix(NA, ncol=length(dto.vars), nrow=nmodels))

names(results) <-  dto.vars
dto.vars

results

for(i in 1:nmodels){
    ## Populate with header info
    results[i,"model_number"] <-  strsplit(msum$Filename[i], '_')[[1]][1]
    results[i,"version"] <- "0.1" #msum[i,"Mplus.version"]
    results[i,"active"] <- "??"
    results[i,"best_in_gender"] <- "??"    
    results[i, c('date', 'time')] <- strsplit(scan(msum$Filename[i], what='character', sep='\n')[3], '  ')[[1]]
    results[i,"study_name"] <- strsplit(scan(msum$Filename[i], what='character',
                 sep='\n')[grep("File =", scan(msum$Filename[i], what='character', sep='\n'))], "=|;")[[1]][2]
    results[i, 'subgroup'] <- if(length(grep('emale', msum$Title[i]))) 'Female' else 'Male'  
    ## Check for model conversion
    conv <- length(grep("THE MODEL ESTIMATION TERMINATED NORMALLY",
                        scan(msum$Filename[i], what='character', sep='\n')))
    conv
    if(conv==1) {
        results[i,'converged'] <- 'yes'
        ## obtain model for current loop
        model <- mpar[[i]]$unstandardized
        model
        ## Variances
        #################
        ## Covariances ##
        #################
        ## Look for at least 4 WITH statements - otherwise fall back to 'Means' and 'Variances' (Baseline Models)
        modtype <- ifelse(length(grep("WITH", model$paramHeader))>=4, 1, 0)
        modtype
        if(modtype==1) { # if modtype==1 we have WITH statements
            x <- model[grep("WITH", model$paramHeader),]
            ## find factor coavariances IP wiht IC and SP with SC
            ## CovSS: Loook for S in paramHeader and S in param # only works as long as there is no S2 etc.
            ## CovII: Loook for I in paramHeader and I in param        
            x$param
            x
            ## Focus on factor covariances
            fc <- x[grep("I|S", x$param),]
            fc
            ## ###############################
            ## Covariance among intercepts  ##
            ## ###############################
            ## reduce to I in paramHeader. Note. Use "^" to avoid the I in  WITHIN
            IpH <- fc[grep("^I", fc$paramHeader),]
            ## get I in param
            results[i, c("cov_int", "p_cov_int")] <-  IpH[grep("^I", IpH$param),c('est', 'pval')]
            ## ###############################
            ## Covariance among slopes      ##
            ## ###############################
            ## reduce to S in paramHeader. Play it save, use ^
            SpH <- fc[grep("^S", fc$paramHeader),]
            ## get S in param
            results[i, c("cov_slope", "p_cov_slope")] <- SpH[grep("S", SpH$param),c('est', 'pval')]
            ## ###############################
            ## Covariance among residuals   ##
            ## ###############################
            ## Obtain resid cov
            rc <- x[-grep("I|S", x$param),]
            ## Check whether only one cov has been estimated
            if(length(unique(rc$est))==1) {
                results[i, c("cov_residual", "p_cov_res")] <- rc[1,c('est', 'pval')]
            } else {results[i, 'notes'] <- paste(results[i, 'notes'], "Heterogeneous Res Covs", sep='_')}   
        } # else {leave empty?}
        ##
        ## ################
        ##  Variances   ##
        ## ################
        ## Subset model
        x <- model[grep("Variances", model$paramHeader),]
        ## test whether we actually have values that are returned
        test <- x[x$param=='IP',c('est', 'se')]
        if(dim(test)[1]!=0) {results[i, c("var_int_physical", "se_int_physical")] <- test}
        ##
        test <- x[x$param=='SP',c('est', 'se')]
        if(dim(test)[1]!=0) {results[i, c("var_slope_physical", "se_slope_physical")] <- test}
        ##
        test <- x[x$param=='IC',c('est', 'se')]
        if(dim(test)[1]!=0) {results[i, c("var_int_cog", "se_int_cog")] <- test}
        ##
        test <- x[x$param=='SC',c('est', 'se')]
        if(dim(test)[1]!=0) {results[i, c("var_slope_cog", "se_slope_cog")] <- test}
        ## Residuals
                                        # match only first letter with "^"
        resP <- unique(x[grep("^P", x$param), c('est', 'se')] )
        ## Write residual covariance and add warning if ResCov unconstrained
        if(length(resP[,1])<=1) {results[i, c("var_residual_physical", "se_residual_physical")] <- resP} else {
            results[i,'notes'] <- paste(results[i,'notes'], 'Phys ResCov unconstrained', sep='_')}
        resC <- unique(x[grep("^C", x$param), c('est', 'se')] )
        ## Write residual covariance and add warning if ResCov unconstrained
        if(length(resC[,1])<=1) {results[i, c("var_residual_cog", "se_residual_cog")] <- resP} else {
            results[i,'notes'] <- paste(results[i,'notes'], 'Cog ResCov unconstrained', sep='_')}
    } else { results[i,'converged'] <- 'no'}
    ## ####################
    ##  Additional info ##
    ## ####################
    results[i, 'subject_count'] <- msum[i, 'Observations']
    results[i, 'wave_count'] <- 'to_do'
    results[i, 'n'] <- 'number of observations?'    
    results[i, 'parameter_count'] <- msum[i, 'Parameters']    
    results[i, 'output_file'] <- msum[i, 'Filename']
    results[i, 'software'] <- scan(msum$Filename[i], what='character', sep='\n')[1]
    results[i, 'model_description'] <- '??'
    results[i, 'results_description'] <- '??'    
}


results


#results$CFI=msum$CFI
#results$RMSEA=msum$RMSEA_Estimate



#write.csv(results, file='Outcome.csv', row.names = F)


