options(width=160)
rm(list=ls())
cat("\f")

# @knitr load_packages ----------------------------------------------------------------------
library(MplusAutomation)
library(IalsaSynthesis)

# @knitr set_paths  ----------------------------------------------------------------------

pathDir <- getwd() # establish home directory
pathStudies <- file.path(pathDir,"studies")
list.files(pathStudies) # inspect participating studies

## @knitr setGlobals
# studies <- c("eas", "elsa")
# out_list_all_plus <- list.files(pathStudies, full.names=T, recursive=T, pattern="out$")

a <- list.files(file.path(pathStudies,"eas/physical"),full.names=T, recursive=T, pattern="out$")
b <- list.files(file.path(pathStudies,"elsa/physical"),full.names=T, recursive=T, pattern="out$")
# c <- list.files(file.path(pathStudies,"habc/physical"),full.names=T, recursive=T, pattern="out$")
d <- list.files(file.path(pathStudies,"hrs/physical"),full.names=T, recursive=T, pattern="out$")
e <- list.files(file.path(pathStudies,"ilse/physical"),full.names=T, recursive=T, pattern="out$")
f <- list.files(file.path(pathStudies,"lasa/physical"),full.names=T, recursive=T, pattern="out$")
# g <- list.files(file.path(pathStudies,"nas/physical"),full.names=T, recursive=T, pattern="out$")
h <- list.files(file.path(pathStudies,"nuage/physical"),full.names=T, recursive=T, pattern="out$")
i <- list.files(file.path(pathStudies,"octo/OUTPUT_files/physical"),full.names=T, recursive=T, pattern="out$")
j <- list.files(file.path(pathStudies,"radc/outputs/physical"),full.names=T, recursive=T, pattern="out$")
# k <- list.files(file.path(pathStudies,"satsa/physical"),full.names=T, recursive=T, pattern="out$")
model_path <- c(a,b, d, e, f, h, i, j)
# i <- length(out_list_all_plus)
# i

# @knitr list_paths_studies -------------------------------------------------------------------

study_name <- list()
for(i in 1:length(model_path)){
  a <- strsplit(model_path[i], split="/")
  selector <- a[[1]] %in% c("studies")
  element_number <- c(1:length(selector))[selector]
  study_name[i] <- a[[1]][element_number+1]
}

out_list_all_plus <- list()
out_list_all_plus[["path"]] <- model_path
out_list_all_plus[["study"]] <- study_name
names(out_list_all_plus)

# @knitr



