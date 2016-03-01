#These first few lines run only when the file is run in RStudio, !!NOT when an Rmd/Rnw file calls it!!
rm(list=ls(all=TRUE))  #Clear the variables from previous runs.

# ---- load_sources ------------------------------------------------------------
# Call `base::source()` on any repo file that defines functions needed below.  Ideally, no real operations are performed.

# ---- load_packages -----------------------------------------------------------
# Attach these packages so their functions don't need to be qualified: http://r-pkgs.had.co.nz/namespace.html#search-path
library(magrittr) #Pipes

# Verify these packages are available on the machine, but their functions need to be qualified: http://r-pkgs.had.co.nz/namespace.html#search-path
requireNamespace("ggplot2")
requireNamespace("dplyr") #Avoid attaching dplyr, b/c its function names conflict with a lot of packages (esp base, stats, and plyr).
requireNamespace("testit")
# requireNamespace("plyr")

# ---- declare_globals ---------------------------------------------------------
# path_input  <- "./data-phi-free/raw/results-physical-cognitive.csv"
path_input  <- "./data/shared/results-satsa.csv"
path_output <- "./data/shared/results-satsa.rds"
# figure_path <- 'manipulation/stitched-output/rename-classify/'


# ---- load_data ---------------------------------------------------------------
ds1 <- read.csv(path_input, stringsAsFactors=FALSE)

# ---- tweak_data --------------------------------------------------------------


# ---- load_eas --------------------------------------------------------------
selected_study <- "eas"
ds <- ds1[ds1$study_name==selected_study,]
dsa <- ds2[ds2$study_name==selected_study,] # filtered and corrected

# ---- load_elsa --------------------------------------------------------------
selected_study <- "elsa"
ds <- ds1[ds1$study_name==selected_study,]
dsa <- ds2[ds2$study_name==selected_study,] # filtered and corrected

# ---- load_habc --------------------------------------------------------------
selected_study <- "habc"
ds <- ds1[ds1$study_name==selected_study,]
dsa <- ds2[ds2$study_name==selected_study,] # filtered and corrected

# ---- load_ilse  --------------------------------------------------------------
selected_study <- "ilse"
ds <- ds1[ds1$study_name==selected_study,]
dsa <- ds2[ds2$study_name==selected_study,] # filtered and corrected

# ---- load_nas --------------------------------------------------------------
selected_study <- "nas"
ds <- ds1[ds1$study_name==selected_study,]
dsa <- ds2[ds2$study_name==selected_study,] # filtered and corrected

# ---- load_nuage --------------------------------------------------------------
selected_study <- "nuage"
ds <- ds1[ds1$study_name==selected_study,]
dsa <- ds2[ds2$study_name==selected_study,] # filtered and corrected

# ---- load_obas --------------------------------------------------------------
selected_study <- "obas"
ds <- ds1[ds1$study_name==selected_study,]
dsa <- ds2[ds2$study_name==selected_study,] # filtered and corrected

# ---- load_octo
selected_study <- "octo"
ds <- ds1[ds1$study_name==selected_study,]
dsa <- ds2[ds2$study_name==selected_study,] # filtered and corrected

# ---- load_radc --------------------------------------------------------------
selected_study <- "radc"
ds <- ds1[ds1$study_name==selected_study,]
dsa <- ds2[ds2$study_name==selected_study,] # filtered and corrected

# ---- load_satsa --------------------------------------------------------------
selected_study <- "satsa"
ds <- ds1[ds1$study_name==selected_study,]
dsa <- ds2[ds2$study_name==selected_study,] # filtered and corrected



# ---- id.study --------------------------------------------------------------
selected_study

# ---- count_total --------------------------------------------------------------
cat(nrow(ds))

# ---- count_unibi --------------------------------------------------------------
t1 <- table(ds$model_number)
t1[t1==0] <- "."
t1


# ---- list.omissions --------------------------------------------------------------
desired_subpart_count <- 7L
ds$model_name <- gsub(pattern=".out",replacement="",ds$output_file) # remove .out ending
subparts <- strsplit(ds$model_name,"_") # break up each  model_name, store in a list
subpart_count <- sapply(subparts, length) # count compents in each element of the list
is_valid <- (subpart_count==desired_subpart_count) # create logical vector


if(sum(!is_valid)>0){print(as.data.frame(ds$output_file[!is_valid]))}else{
  cat("All your models were named properly")
}


# ds <- ds[is_valid,] # keep only the legal names
ds <- dsa # same as above, filter in 1a_correct_model_names

# ---- list.full.number  --------------------------------------------------------------
cat(nrow(ds))

# ---- list.phys.constructs  --------------------------------------------------------------
if(nrow(ds)>0){
t1 <- table(ds$physical_construct, ds$model_number)
t1[t1==0] <- "."
t1
}else{cat("Empty category")}

# ---- list.phys.measures  --------------------------------------------------------------
if(nrow(ds)>0){
t1 <- table(ds$physical_measure, ds$model_number)
t1[t1==0] <- "."
t1
}else{cat("Empty category")}

# ---- list.cog.constructs  --------------------------------------------------------------
if(nrow(ds)>0){
t1 <- table(ds$cognitive_construct, ds$model_number)
t1[t1==0] <- "."
t1
}else{cat("Empty category")}

# ---- list.cog.measures  --------------------------------------------------------------
if(nrow(ds)>0){
t1 <- table(ds$cognitive_measure, ds$model_number)
t1[t1==0] <- "."
t1
}else{cat("Empty category")}


# ---- cross.phys.uni  --------------------------------------------------------------
d <- ds %>% dplyr::filter(model_number %in% c("u0","u1","u2"))
if(nrow(d)>0){
t1 <- table(d$model_number, d$physical_measure, d$physical_construct)
t1[t1==0] <- "."
ftable(t1)
}else{cat("Empty category")}

# ---- cross.cog.uni  --------------------------------------------------------------
d <- ds %>% dplyr::filter(model_number %in% c("u0","u1","u2"))
if(nrow(d)>0){
t1 <- table(d$model_number, d$cognitive_measure, d$cognitive_construct)
t1[t1==0] <- "."
ftable(t1)
}else{cat("Empty category")}

# ---- cross.phys.bi  --------------------------------------------------------------
d <- ds %>% dplyr::filter(model_number %in% c("b0","b1","b2"))
if(nrow(d)>0){
t1 <- table(d$physical_measure, d$physical_construct)
t1[t1==0] <- "."
t1
}else{cat("Empty category")}

# ---- cross.cog.bi  --------------------------------------------------------------
d <- ds %>% dplyr::filter(model_number %in% c("b0","b1","b2"))
if(nrow(d)>0){
t1 <- table(d$cognitive_measure, d$cognitive_construct)
t1[t1==0] <- "."
t1
}else{cat("Empty category")}



# ---- cog.construct.phys.construct  --------------------------------------------------------------
d <- ds %>% dplyr::filter(model_number %in% c("b0","b1","b2"))
if(nrow(d)>0){
t1 <- table(d$cognitive_construct, d$physical_construct)
t1[t1==0] <- "."
t1
}else{cat("Empty category")}

# ---- cog.measures.phys.construct --------------------------------------------------------------
d <- ds %>% dplyr::filter(model_number %in% c("b0","b1","b2"))
if(nrow(d)>0){
t1 <- table(d$cognitive_measure, d$physical_construct)
t1[t1==0] <- "."
t1
}else{cat("Empty category")}

# ---- cog.construct.phys.measure --------------------------------------------------------------
d <- ds %>% dplyr::filter(model_number %in% c("b0","b1","b2"))
if(nrow(d)>0){
t1 <- table(d$cognitive_construct, d$physical_measure)
t1[t1==0] <- "."
t1
}else{cat("Empty category")}

# ---- cog.measure.phys.measure --------------------------------------------------------------
d <- ds %>% dplyr::filter(model_number %in% c("b0","b1","b2"))
if(nrow(d)>0){
t1 <- table(d$cognitive_measure, d$physical_measure)
t1[t1==0] <- "."
t1
}else{cat("Empty category")}




# ---- list.all.models --------------------------------------------------------------
ds <- ds1[order(ds$model_number, ds$physical_construct, ds$cognitive_construct, ds$physical_measure, ds$cognitive_measure, ds$subgroup, ds$model_type), ]
ds <- ds1[ds1$study_name==selected_study,]
desired_columns <- c(
  "study_name",
  "model_number",
  "subgroup",
  "model_type",
  "physical_construct",
  "cognitive_construct",
  "physical_measure",
  "cognitive_measure",
  "output_file"
)
ds_pretty <- ds[,desired_columns]
# head(ds_pretty,20)
ds_pretty <- plyr::rename(ds_pretty, replace=c(
  "model_number"="model<br/>tag",
  "subgroup" = "sex",
  "model_type" = "predictor<br/>set",
  "physical_construct" = "physical<br/>construct",
  "cognitive_construct"=  "cognitive<br/>construct",
  "physical_measure" = "physical<br/>measure",
  "cognitive_measure" = "cognitive<br/>measure",
  "output_file"= "file name"
))

# print(knitr::kable(ds_pretty[ , -(1)], caption="All your models", row.names= F))
#

tags2 <- unique(ds_pretty$`model<br/>tag`)
for( i in 1:length(tags2) ){
  d <- ds_pretty[ds_pretty$`model<br/>tag`==tags2[i], ]
  cat("") #Force a new line
  cat(paste0("## ", tags2[i]))
  cat("\n") #Force a new line
    if( nrow(d) > 0L) {
      print(knitr::kable(d[ , -(1)], row.names= F))
    } else {
      cat("*No models of this specification were supplied from the study.*\n\n")
    }
    cat("\n")
}












