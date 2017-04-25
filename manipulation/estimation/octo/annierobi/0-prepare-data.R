# knitr::stitch_rmd(script="./manipulation/car-ellis.R", output="./manipulation/stitched-output/car-ellis.md")
#These first few lines run only when the file is run in RStudio, !!NOT when an Rmd/Rnw file calls it!!
rm(list=ls(all=TRUE))  #Clear the variables from previous runs.
cat("\f") # cleans console

# ---- load-sources ------------------------------------------------------------
# Call `base::source()` on any repo file that defines functions needed below.  Ideally, no real operations are performed.
base::source("./scripts/functions-common.R")
# ---- load-packages -----------------------------------------------------------
# Attach these packages so their functions don't need to be qualified: http://r-pkgs.had.co.nz/namespace.html#search-path
library(magrittr) #Pipes
library(knitr)
# library(TabularManifest)
# Verify these packages are available on the machine, but their functions need to be qualified: http://r-pkgs.had.co.nz/namespace.html#search-path
requireNamespace("ggplot2")
requireNamespace("tidyr")
requireNamespace("dplyr") #Avoid attaching dplyr, b/c its function names conflict with a lot of packages (esp base, stats, and plyr).
requireNamespace("testit")
requireNamespace("reshape2") # data transformations
requireNamespace("sas7bdat") # for inputing SAS files

# ---- declare-globals ---------------------------------------------------------
# path_input  <- "./data/unshared/raw/map/ds0.rds"
# path_input  <- "../OCTO-Twin/data/unshared/raw/annierobi/OCTO_cambridge.sav"
# path_input  <- "../OCTO-Twin/data/unshared/raw/annierobi/octomultnew.sav"
path_input  <- "../OCTO-Twin/data/unshared/raw/annierobi/octomultnew_portland.sav"

# put test assert here to check the connection.
# generic_path <- "./sandbox/pipeline-demo-1/generic-data/"
generic_path <- "./data/unshared/derived/octo-2/" # this is where you save the prepared file

testit::assert("File does not exist", file.exists(path_input))

# ---- load-data ---------------------------------------------------------------
# ds0 <- sas7bdat::read.sas7bdat(path_input)
ds0 <- haven::read_sav(file = path_input)

# names_new <- names(ds0)
# setdiff(names_cambridge, names_new)
# setdiff(names_new, names_cambridge)

# ---- inspect-data -------------------------------------------------------------
ds0 %>% dplyr::glimpse()
ds0 %>% names_labels()

ds0 %>%
  dplyr::select(
    Case, PairID, CompAge1,YTDead
  ) %>%
  dplyr::slice(1:20)

# ----- object-glossary ------------------------------------
varnames_design <- c(
  "Case"   ,              # subject identifier
  "PairID" ,
  "TwinID" ,
  paste0("time",1:5)
)

varnames_context <- c(
   "Female"    # Gender
  ,"CompAge1"
  ,"Educyrs"   # Years of education
  ,"height1"   # Height in cantimeters
  ,"Smoke"     # Smoking
  ,"CVD1"      # cardio vascular disease at wave 0
  ,"diabYN1"   # diabetes at wave 0
  ,"DemEver"   # dementia every
  ,"YTDem"
)

varnames_physical <- c(
  paste0("pek",1:5),    # pulmonary
  paste0("gripp",1:5),  # extremity strength
  paste0("gait3m",1:5)  # gait speed
)
varnames_cognitive <- c(
  paste0("block" ,1:5),  # block design
  paste0("digspb",1:5), # digit span backward
  paste0("digspf",1:5), # digit span forward
  paste0("digsym",1:5), # digit symbol
  paste0("prose" ,1:5),  # prose recall
  paste0("info"  ,1:5),   # information
  paste0("synnum",1:5), # synonims
  paste0("psif"  ,1:5),   # psif
  paste0("figure",1:5), # figure logic
  paste0("mirrcl",1:5), # mir recall
  paste0("mmse"  ,1:5),   # mmse
  paste0("mirnam",1:5),   #
  paste0("mirrcg",1:5),   #
  paste0("clock" ,1:5)   #
)

# ---- tweak-data --------------------------

ds0 %>%
  dplyr::select_(.dots = varnames_cognitive ) %>%
  dplyr::slice(1:20)

selected_items <- c(
   varnames_design
  ,varnames_context
  ,varnames_physical
  ,varnames_cognitive
)

ds <- as.data.frame(ds0[ , selected_items])

ds %>% dplyr::glimpse()

# ---- rename-variables -------------------------------

# these names were chosen to be consistent across studies
names(ds) <- gsub("time" , "years_since_bl_0", names(ds))

names(ds) <- gsub("pek"   ,"pef_0", names(ds))
names(ds) <- gsub("gripp" ,"grip_0", names(ds))
names(ds) <- gsub("gait3m","gait_0", names(ds))
names(ds) <- gsub("block" ,"block_0", names(ds))
names(ds) <- gsub("digspb","digitspanbackward_0", names(ds))
names(ds) <- gsub("digspf","digitspanforward_0", names(ds))
names(ds) <- gsub("digsym","symbol_0", names(ds))
names(ds) <- gsub("prose" ,"prose_0", names(ds))
names(ds) <- gsub("info"  ,"info_0", names(ds))
names(ds) <- gsub("synnum","synonyms_0", names(ds))
names(ds) <- gsub("psif"  ,"psif_0", names(ds))
names(ds) <- gsub("figure","figure_0", names(ds))
names(ds) <- gsub("mirrcl","mirrecall_0", names(ds))
names(ds) <- gsub("mmse"  ,"mmse_0", names(ds))
names(ds) <- gsub("mirnam","mirnaming_0", names(ds))
names(ds) <- gsub("mirrcg","mirrecog_0", names(ds))
names(ds) <- gsub("clock" ,"clock_0", names(ds))


varnames_cognitive_new <- c(
   paste0("pef","_",               paste0("0",1:5))
  ,paste0("grip","_",              paste0("0",1:5))
  ,paste0("gait","_",              paste0("0",1:5))
  ,paste0("block","_",             paste0("0",1:5))
  ,paste0("digitspanbackward","_", paste0("0",1:5))
  ,paste0("digitspanforward","_",  paste0("0",1:5))
  ,paste0("symbol","_",            paste0("0",1:5))
  ,paste0("prose","_",             paste0("0",1:5))
  ,paste0("info","_",              paste0("0",1:5))
  ,paste0("synonyms","_",          paste0("0",1:5))
  ,paste0("psif","_",              paste0("0",1:5))
  ,paste0("figure","_",            paste0("0",1:5))
  ,paste0("mirrecall","_",         paste0("0",1:5))
  ,paste0("mmse","_",              paste0("0",1:5))
  ,paste0("mirnaming","_",         paste0("0",1:5))
  ,paste0("mirrecog","_",          paste0("0",1:5))
  ,paste0("clock","_",             paste0("0",1:5))
)

# ---- center-covariates ---------------------------------
ds_wide <- ds %>%
  dplyr::mutate(
    male           = ifelse(Female==1,0,ifelse(Female==0,1,NA)),
    age_c80        = CompAge1 - 80,
    edu_c7         = Educyrs - 7,
    htm_c          = ifelse(            male==0, (height1 - 160)/100,
                                 ifelse(male==1, (height1 - 172)/100,NA)),
    smoke          = ifelse(Smoke %in% c(1,2,3),1,0),
    cardio         = CVD1,
    diabetes       = diabYN1,
    dementia_ever  = DemEver,
    # YTDem        = as.numeric(YTDem),
    # Notes on YTDem scale:
    # negative values = no dementia
    # positive values = yes dementia
    dementia_entry = ifelse( YTDem>=0,1,ifelse(YTDem<0,0,NA)),
    dementia_entry  = ifelse(DemEver==0,0,dementia_entry)#,
    # dementia_entry = factor(dementia_entry, levels = c(0,1), labels = c("Not at entry", "At entry")),
    # dementia_ever = factor(dementia_ever, levels = c(0,1), labels = c("Never", "Demented"))

  ) %>%
  dplyr::select(
    Case,PairID,
    male,
    age_c80, edu_c7, htm_c, smoke, cardio, diabetes,
    dementia_ever,dementia_entry, YTDem,
    dplyr::everything()
    )  %>%
  dplyr::select(
    -TwinID, -Female, -CompAge1,-Smoke, -height1,-DemEver, -Educyrs, -CVD1, -diabYN1
  )
# ds_wide %>% names_labels()
# table(ds_wide$dementia_entry, ds_wide$dementia_ever)
ds_wide %>%
  dplyr::group_by(dementia_entry, dementia_ever) %>%
  dplyr::count() %>% kable()

d <- ds_wide %>%
  # dplyr::select(Case, PairID, DemEver,YTDem)
  dplyr::select(Case, PairID, DemEver,YTDem, dementia_entry, dementia_ever)
View(d)

# ---- prepare-for-mplus ---------------------
ds_wide %>% dplyr::glimpse()
# prepare data to be read by MPlus
ds_mplus <- sapply(ds_wide,as.numeric) %>% as.data.frame()
ds_mplus %>% dplyr::glimpse()
ds_mplus[is.na(ds_mplus)] <- -9999 # replace NA with a numerical code
ds_mplus %>% dplyr::glimpse()


# ---- save-r-data -------------------
# tranformed data with supplementary variables
saveRDS(ds,paste0(generic_path,"data-long-plus.rds"))
# only variables used in analysis
saveRDS(ds_wide,paste0(generic_path,"data-wide.rds"))
# prepared for Mplus
write.table(ds_mplus, paste0(generic_path,"/wide-dataset.dat"), row.names=F, col.names=F)
write(names(ds_mplus), paste0(generic_path,"/wide-variable-names.txt"), sep=" ")


