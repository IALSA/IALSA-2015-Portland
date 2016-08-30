pathStudies <- file.path("./studies")

eas   <- list.files(file.path(pathStudies,"eas/physical"),full.names=T, recursive=T, pattern="out$")
elsa  <- list.files(file.path(pathStudies,"elsa/physical"),full.names=T, recursive=T, pattern="out$")
hrs   <- list.files(file.path(pathStudies,"hrs/physical"),full.names=T, recursive=T, pattern="out$")
ilse  <- list.files(file.path(pathStudies,"ilse/physical"),full.names=T, recursive=T, pattern="out$")
lasa  <- list.files(file.path(pathStudies,"lasa/physical"),full.names=T, recursive=T, pattern="out$")
nuage <- list.files(file.path(pathStudies,"nuage/physical"),full.names=T, recursive=T, pattern="out$")
octo  <- list.files(file.path(pathStudies,"octo/physical"),full.names=T, recursive=T, pattern="out$")
map   <- list.files(file.path(pathStudies,"map/physical"),full.names=T, recursive=T, pattern="out$")
satsa <- list.files(file.path(pathStudies,"satsa/physical"),full.names=T, recursive=T, pattern="out$")

(model_path_out <- c(eas, elsa, hrs, ilse, lasa, nuage, octo, map, satsa))
# replace ".out" by ".gh5" and get a vector with .gh5 file paths
(model_path_gh5 <-gsub(".out",".gh5", model_path_out) )


# @knitr list_out_gh5_study_number_subgroup_type_p1_p2

model_list <- list()
model_list[["path_out"]] <- model_path_out
model_list[["path_gh5"]] <- model_path_gh5

study_name <- list()
# i = 1
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
  (model_list[["process_a"]][[i]] <- b[4])
  (model_list[["process_b"]][[i]] <- b[5])
}
names(model_list)
str(model_list)
rm(list=setdiff(ls(), c("model_list")))
saveRDS(model_list, "./data/shared/derived/graph-gh5.rds")
