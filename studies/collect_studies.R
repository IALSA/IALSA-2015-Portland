
study <- c("eas", "esla", "habc", "hrs", "ilse", "lasa", "nas", "nshd", "nuage", "obas",   "octo", "radc", "satsa" )

# execute collect_STUDY.R code only for studies, which folders contain "collected_params.csv" file
# from each .cvs file, draw only the rows for which $model_number is not NA
# or lalternatively don't run studies which $model_number has any NA

for (i in study){

source(paste0("./studies/", i,"/collect_",i,".R"))
}
