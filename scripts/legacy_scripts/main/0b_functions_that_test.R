# These functions work with processing
# models .out files
options(width=160)
rm(list=ls())
cat("\f")

## @knitr setPaths

pathDir <- getwd() # establish home directory
pathStudies <- file.path(pathDir,"studies")
list.files(pathStudies) # inspect participating studies


## @knitr setGlobals
# collect paths to all existing output files
# out_list_all <- list.files(pathStudies, full.names=T, recursive=T, pattern="out$")
#
# class(out_list_all)
# # get only the name of the file, without the address
# files <- basename(out_list_all)
# str(files) # inspect
# # split the character string naming each output file
# sfiles <- strsplit(files,split = "_|.out")
# class(sfiles) # inspect
# length(sfiles)
# head(sfiles) # inspect
#
# ds <- as.data.frame(plyr::rbind.fill.matrix(lapply(sfiles,t)))
#


inspect.naming <- function(study){
# study <- "eas" # for manual
require(dplyr)
pathStudy <- paste0(pathStudies,"/",study)
out_list <- list.files(pathStudy, full.names=T, recursive=T, pattern="out$")
files <- basename(out_list)
sfiles <- strsplit(files,split = "_|.out")
ds <- as.data.frame(plyr::rbind.fill.matrix(lapply(sfiles,t)))
names(ds) <- c("number","sex", "predictors", "phys.construct","cog.construct","phys.measure","cog.measure")
# ds <- ds[ds$number=="b1",]
ds <- ds[ds$number %in% c("u0","u1","u2","b1") ,]
return(ds)
}


inspect.study <- function(study){
ds <- inspect.naming(study)
a <- dplyr::count(ds, number); print(a, n=nrow(a))
a <- dplyr::count(ds, sex); print(a, n=nrow(a))
a <- dplyr::count(ds, predictors); print(a, n=nrow(a))
a <- dplyr::count(ds, phys.construct); print(a, n=nrow(a))
a <- dplyr::count(ds, cog.construct); print(a, n=nrow(a))
a <- dplyr::count(ds, phys.measure); print(a, n=nrow(a))
a <- dplyr::count(ds, cog.measure); print(a, n=nrow(a))
}

inspect.study("eas")
cat("\f")
inspect.study("elsa")
cat("\f")
inspect.study("habc")
cat("\f")
inspect.study("ilse")
cat("\f")
inspect.study("nas")
cat("\f")
inspect.study("nuage")
cat("\f")
# inspect.study("obas")
# cat("\f")
inspect.study("octo")
cat("\f")
inspect.study("radc")
cat("\f")
inspect.study("satsa")
cat("\f")










