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

# @knitr load_sources



## @knitr setGlobals



# @knitr list_paths_studies -------------------------------------------------------------------
eas <- list.files(file.path(pathStudies,"eas/submitted_outputs"),full.names=T, recursive=T, pattern="out$")
elsa <- list.files(file.path(pathStudies,"elsa"),full.names=T, recursive=T, pattern="out$")
hrs <- list.files(file.path(pathStudies,"hrs"),full.names=T, recursive=T, pattern="out$")
ilse <- list.files(file.path(pathStudies,"ilse"),full.names=T, recursive=T, pattern="out$")
lasa <- list.files(file.path(pathStudies,"lasa"),full.names=T, recursive=T, pattern="out$")
nuage <- list.files(file.path(pathStudies,"nuage"),full.names=T, recursive=T, pattern="out$")
octo <- list.files(file.path(pathStudies,"octo/submitted_outputs"),full.names=T, recursive=T, pattern="out$")
radc <- list.files(file.path(pathStudies,"radc/outputs"),full.names=T, recursive=T, pattern="out$")
satsa <- list.files(file.path(pathStudies,"satsa"),full.names=T, recursive=T, pattern="out$")
# collect a vector with .out file paths

# (model_path_out <- c(eas))
(model_path_out <- c(elsa))
# (model_path_out <- c(hrs))
# (model_path_out <- c(ilse))
# (model_path_out <- c(lasa))
# (model_path_out <- c(nuage))
# (model_path_out <- c(octo))
# (model_path_out <- c(radc))
# (model_path_out <- c(satsa))

# (model_path_out <- c(eas, elsa, hrs, ilse, lasa, nuage, octo, radc, satsa))
# (model_path_out <- c(satsa))
# # replace ".out" by ".gh5" and get a vector with .gh5 file paths
(model_path_gh5 <-gsub(".out",".gh5", model_path_out) )


# @knitr list_out_gh5_study_number_subgroup_type_p1_p2

model_list <- list()
model_list[["path_out"]] <- model_path_out
model_list[["path_gh5"]] <- model_path_gh5

study_name <- list()
for(i in 1:length(model_list[["path_out"]])){
  # locate a common root for studies: "~GitHub/IALSA-2015-Portland"
  (a <- strsplit(model_path_out[i], split="/"))
  (selector <- a[[1]] %in% c("studies"))
  (element_number <- c(1:length(selector))[selector])
  (model_list[["study_name"]][[i]] <- a[[1]][element_number+1])
  # given a study, get and split the 5-element model name
  (b <- a[[1]][length(selector)])
  (b <- strsplit(b, split="_|.out")[[1]])
  (model_list[["model_number"]][[i]] <- b[1])
  (model_list[["subgroup"]][[i]] <- b[2])
  (model_list[["model_type"]][[i]] <- b[3])
  (model_list[["process1"]][[i]] <- b[4])
  (model_list[["process2"]][[i]] <- b[5])
}
names(model_list)
str(model_list)
rm(list=setdiff(ls(), c("model_list")))

# @knitr pass_outputs_through_extraction
source("./scripts/mplus/extraction_functions.R") # produces object "results"
ds <- results

# write.csv(results,  "./data/shared/results_all_eas.csv", row.names=F)
write.csv(results,  "./data/shared/results_all_elsa.csv", row.names=F)
# write.csv(results,  "./data/shared/results_all_hrs.csv", row.names=F)
# write.csv(results,  "./data/shared/results_all_ilse.csv", row.names=F)
# write.csv(results,  "./data/shared/results_all_lasa.csv", row.names=F)
# write.csv(results,  "./data/shared/results_all_nuage.csv", row.names=F)
# write.csv(results,  "./data/shared/results_all_octo.csv", row.names=F)
# write.csv(results,  "./data/shared/results_all_radc.csv", row.names=F)
# write.csv(results,  "./data/shared/results_all_satsa.csv", row.names=F)

# write.csv(results,  "./data/shared/results_all.csv", row.names=F)

# @knitr alternative_assembly -----



ra_eas <- read.csv("./data/shared/results_all_eas.csv")
ra_elsa <- read.csv("./data/shared/results_all_elsa.csv")
ra_hrs <- read.csv("./data/shared/results_all_hrs.csv")
ra_ilse <- read.csv("./data/shared/results_all_ilse.csv")
ra_lasa <- read.csv("./data/shared/results_all_lasa.csv")
ra_nuage <- read.csv("./data/shared/results_all_nuage.csv")
ra_octo <- read.csv("./data/shared/results_all_octo.csv")
ra_radc <- read.csv("./data/shared/results_all_radc.csv")
ra_satsa <- read.csv("./data/shared/results_all_satsa.csv")


ra <- rbind.data.frame(ra_elsa, ra_eas, ra_hrs, ra_ilse, ra_lasa, ra_nuage, ra_octo, ra_radc, ra_satsa)

write.csv(ra,  "./data/shared/results_all.csv", row.names=F)



























