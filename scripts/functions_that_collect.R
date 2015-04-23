# These functions work with processing
# models .out files


findConflicts <- function(study){
# obtain list of out files with github sync issues.
# study <- "eas" # for manual
pathStudy <- paste0(pathStudies,"/",study)
# point to the folder of the particular study
out_list <- list.files(pathStudy, full.names=T, recursive=F, pattern="out$")
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
conflict <- conf_file[!is.na(conf_file)]
# conflict
## Rename conflicting files with append .coflict
if(length(conflict)>=1){
    for(i in 1:length(conflict)){
        file.rename(conflict[i], paste0(conflict[i], '.conflict'))
    }
}
return(conflict)
} #close function