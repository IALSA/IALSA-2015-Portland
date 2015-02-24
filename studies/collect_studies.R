
study <- c("octo")

for (i in study){

source(paste0("./studies/", i,"/collect_",i,".R"))
}
