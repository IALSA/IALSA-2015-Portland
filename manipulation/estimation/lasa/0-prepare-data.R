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
library(tidyverse)
# library(TabularManifest)
# Verify these packages are available on the machine, but their functions need to be qualified: http://r-pkgs.had.co.nz/namespace.html#search-path
requireNamespace("ggplot2")
requireNamespace("tidyr")
requireNamespace("dplyr") #Avoid attaching dplyr, b/c its function names conflict with a lot of packages (esp base, stats, and plyr).
requireNamespace("testit")
requireNamespace("reshape2") # data transformations

# ---- declare-globals ---------------------------------------------------------
# path_input  <- "./data/unshared/raw/map/ds0.rds"
# path_input  <- "../LASA/data-unshared/ialsa-old/lasa_mult_chi_2.sas7bdat"
# path_input  <- "../LASA/data-unshared/ialsa-old/lasa_stack_chi_2.sas7bdat"
# path_input  <- "../LASA/data-unshared/ialsa-old/lasast.sas7bdat"
# path_input  <- "../LASA/data-unshared/ialsa-old/lasast3.sas7bdat"
path_input  <- "../LASA/data-unshared/derived/dto_portland.rds"

# generic_path <- "./sandbox/pipeline-demo-1/generic-data/"
generic_path <- "./data/unshared/derived/lasa-1"


# put test assert here to check the connections
testit::assert("Path does not exist", file.exists(generic_path) )
testit::assert("File does not exist", file.exists(path_input) )

# ---- load-data ---------------------------------------------------------------
dto <- readRDS(path_input)
names(dto)
# 1st element - unit(person) level data
names(dto[["unitData"]])
# 2nd element - meta data, info about variables
names(dto[["metaData"]])

# each element of the unitData list is a dataset with specific measures
head(dto$unitData$recall)

# ---- define-utility-functions -------------------
# view a termporal pattern for one person
temporal_pattern <- function(
  d, 
  measure, 
  seed_value = 42
){
  if(!seed_value=="random"){
    set.seed(seed_value)
  }else{
    set.seed(NULL)
  }
  (ids <- sample(unique(d$id),1))
  d %>%
    dplyr::filter(id %in% ids ) %>%
    dplyr::select_("id","wave", measure)
  # print(d)
}

# examine the descriptives over waves
over_waves <- function(
  ds, 
  measure_name,
  print_table=T, 
  exclude_values=""
) {
  ds <- as.data.frame(ds)
  testit::assert("No such measure in the dataset", measure_name %in% unique(names(ds)))
  # measure_name = "htval"; wave_name = "wave"; exclude_values = c(-99999, -1)
  cat("Measure : ", measure_name,"\n", sep="")
  t <- table( ds[,measure_name], ds[,"wave"], useNA = "always"); t[t==0] <- "."
  if(print_table==T){
    print(t)
  }
  cat("\n")
  ds[,measure_name] <- as.numeric(ds[,measure_name])

  d <- ds[!(ds[,measure_name] %in% exclude_values), ]
  a <- lazyeval::interp(~ round(mean(var),2) , var = as.name(measure_name))
  b <- lazyeval::interp(~ round(sd(var),3),   var = as.name(measure_name))
  c <- lazyeval::interp(~ n())
  dots <- list(a,b,c)
  t <- d %>%
    dplyr::select_("id","wave", measure_name) %>%
    na.omit() %>%
    # dplyr::mutate_(measure_name = as.numeric(measure_name)) %>%
    dplyr::group_by_("wave") %>%
    dplyr::summarize_(.dots = setNames(dots, c("mean","sd","count")))
  return(as.data.frame(t))

}

# computing row means
# http://stackoverflow.com/questions/33401788/dplyr-using-mutate-like-rowmeans
my_rowmeans <- function(
  ..., 
  na.rm=TRUE
){
  x = if (na.rm)
    lapply(list(...), function(x) replace(x, is.na(x), as(0, class(x))))
   else
    list(...)
    d = Reduce(function(x,y) x+!is.na(y), list(...), init=0)
    Reduce(`+`, x)/d

}

# merging wave datasets
full_join_multi <- function(list_object){
  # list_object <- datas[["physical"]][["161"]]
  d <- list_object %>%
    Reduce(function(dtf1,dtf2) dplyr::full_join(dtf1,dtf2), .)
}
# computing row max
# http://stackoverflow.com/questions/32978458/dplyr-mutate-rowwise-max-of-range-of-columns


# ----- recode-missing-values -------------------
for(i in names(dto$unitData)){
  d <- dto$unitData[[i]]
  d[d==-1] <- NA
  d[d==-2] <- NA
  d[d==-3] <- NA
  d[d==-4] <- NA
  d[d==-5] <- NA
  dto$unitData[[i]] <- d
}


# ---- comment-on-data-cleaning ------------------------

# At this point we are faced with the decision:
# merge datasets from the list object into a single dataframe and
# then derive the measures that will be used in modeling OR
# treat each dataset separately and after having derived the measures 
# to be passed to estimation merge them into a single dataset

# In my view (AVK), the first approach is easier to track and correct
# Its implementaion is operationilized below

# ---- clean-data -------------------------------------------------------------
# using the dto, assemble the variables to be used in analysis
# create an list object to contained derived measures
ls_data <- list()

# ---- sex -----------------------
ds <- dto$unitData$sex # select a single dataframe from the list object
head(ds);lapply(ds,summary) # inspect it
ds %>% group_by_("male") %>% tally() # tally
ls_data[["sex"]] <- dto$unitData$sex

# ---- age ------------------------
ds <- dto$unitData$age
head(ds);lapply(ds,summary)
ds %>% temporal_pattern("age_at_visit", "random") # 21573
ds %>% over_waves("age_at_visit",print_table = F)
# compute age at baseline
for(i in unique(ds$id)){
  ds[ds$id==i,"age_at_bl"] <- ds[ds$id==i & ds$wave==1,"age_at_visit"]
}
head(ds, 20)
ls_data[["age"]] <- ds

# ---- edu ------------------------
ds <- dto$unitData$edu
head(ds);lapply(ds,summary)
ds %>% group_by_("edu") %>% tally()
ls_data[["edu"]] <- dto$unitData$edu

# ---- height --------------------
ds <- dto$unitData$height
head(ds);lapply(ds,summary)
ds %>% temporal_pattern("height_40_cm")
ds %>% over_waves("height_40_cm")
stem(ds$height_40_cm)
ls_data[["height"]] <- dto$unitData$height

# ----- smoking ------------------
# http://www.lasa-vu.nl/themes/physical/rookgedrag.html
ds <- dto$unitData$smoking
head(ds);lapply(ds,summary)
str(ds)
table(ds$smoked_ever)
ds %>% group_by(smoked_ever) %>% tally()
ds <- ds %>%
  dplyr::mutate(
    smoke_hist  = ifelse(smoked_ever=="No",0,
                  ifelse(smoked_ever %in% c("No answer, asked","No valid data"),NA,1))
  )
table(ds$smoke_hist, useNA = "always")
ds %>% temporal_pattern("smoke_hist")
ls_data[["smoking"]] <- ds

# ---- cardio --------------------
# http://www.lasa-vu.nl/themes/physical/Cardiovascular_Diseases.htm
ds <- dto$unitData$cardio
head(ds);lapply(ds,table)
table(ds$cvd)
ds %>% group_by(cvd) %>% tally()
ds <- ds %>%
  dplyr::mutate(
    cardio_hist = ifelse(cvd %in% c("definite cardio vascular disease",
                               "possible cardiovascular disease"), 1,
             ifelse(cvd == "no cardio vascular disease",0,NA))
  )
table(ds$cardio, useNA = "always")
ls_data[["cardio"]] <- ds

# ---- diabetes ------------------
# http://www.lasa-vu.nl/themes/physical/Diabetes_Mellitus.htm
ds <- dto$unitData$diabetes
head(ds)
table(ds$diabetes)
ds %>% group_by(diabetes) %>% tally()
ds <- ds %>%
  dplyr::mutate(
    diabetes_hist = ifelse(diabetes %in% c("definite diabetes","possible diabetes"),1,
                    ifelse(diabetes %in% c("no diabetes"),0,NA))
  )
table(ds$diabetes_hist)
ls_data[["diabetes"]] <- ds

# ---- dementia -----------------
ds <- dto$unitData$dementia
head(ds)
table(ds$dementia)
ds %>% group_by(dementia,wave) %>% tally()
ds %>% group_by(dementia) %>% tally()
table(ds$dementia, ds$wave)
ds <- ds %>%
  dplyr::mutate(
    demented = ifelse(dementia %in% paste0("dementia at ",c("C","D","E","F")),1,
          ifelse(dementia %in% c("no dementia"),0,NA))
  )
table(ds$demented, useNA = "always")
for(i in unique(ds$id)){
  # i <- 11499
  values <- ds[ds$id ==i,"demented"]
  # values <- c(1,0,NA)
  # values <- c(0,0,NA)
  # values <- c(NA,NA,NA)
  ds[ds$id==i,"dementia_ever"] <- ifelse(any(values==1,na.rm = T),1,0)
}

ls_data[["dementia"]] <- ds

lapply(dto, names)

# ---- grip ---------------------
# http://www.lasa-vu.nl/themes/physical/gripstrength.htm
ds <- dto$unitData$grip
head(ds)
lapply(ds,summary)

ds <- ds %>%
  dplyr::mutate(
    grip_right_max  = pmax(       grip_right_1,    grip_right_2,na.rm=T),
    grip_right_mean = my_rowmeans(grip_right_1,    grip_right_2),
    grip_left_max   = pmax(       grip_left_1,     grip_left_2,na.rm=T),
    grip_left_mean  = my_rowmeans(grip_left_1,     grip_left_2),
    grip_max        = pmax(       grip_right_max,  grip_left_max,na.rm=T),
    grip_mean       = my_rowmeans(grip_right_mean, grip_left_mean)
  )
ls_data[["grip"]] <- ds

d <- ds[,c("grip_right_max","grip_right_mean","grip_left_max","grip_left_mean","grip_max","grip_mean")]
d %>% lapply(summary)

d <- ds[,c("grip_max","grip_right_mean","grip_left_max","grip_left_mean")]
d %>% lapply(summary)

ds %>% temporal_pattern("grip_max", "random")
ds %>% over_waves("grip_max", print_table = F)
stem(ds$grip_max)
stem(ds$grip_mean)
summary(ds$grip_max)

# ---- pef ------------------------
# http://www.lasa-vu.nl/themes/physical/peakflow.htm
ds <- dto$unitData$pef
head(ds)
ds <- ds %>%
  dplyr::mutate(
    pef_mean = my_rowmeans(pef_1, pef_2, pef_3)
  )
head(ds)
ds %>% temporal_pattern("pef_max","random")
ds %>% temporal_pattern("pef_mean","random")
ds %>% over_waves("pef_max", print_table = F)
ds %>% over_waves("pef_mean", print_table = F)

ls_data[["pef"]] <- ds

# ---- coding-task ------------------
# http://www.lasa-vu.nl/themes/cognitive/informatieverwerkingssnelheid.html
ds <- dto$unitData$coding
head(ds)
ds <- ds %>%
  dplyr::mutate(
    coding_max = pmax(coding1, coding2, coding3, na.rm=T),
    coding_mean = my_rowmeans(coding1, coding2, coding3)
  )
ds %>% temporal_pattern("coding_max","random")
ds %>% temporal_pattern("coding_mean","random")
ds %>% over_waves("coding_max", print_table = F)
ds %>% over_waves("coding_mean", print_table = F)
stem(ds$coding_max)
stem(ds$coding_mean)
ls_data[["coding"]] <- ds

# ---- word-recall -----------------------
# http://www.lasa-vu.nl/themes/cognitive/geheugen.html
ds <- dto$unitData$recall
head(ds)
ds %>% temporal_pattern("recall_immed","random")
ds %>% temporal_pattern("retention_1","random")
ds %>% temporal_pattern("retention_2","random")

ds %>% over_waves("recall_immed",print_table=T)
ds %>% over_waves("retention_1",print_table=T)
ds %>% over_waves("retention_2",print_table=T)
ls_data[["recall"]] <- ds

# ---- mmse ---------------------
# http://www.lasa-vu.nl/themes/cognitive/cognitief_algemeen.html
ds <- dto$unitData$mmse
head(ds)
ls_data[["mmse"]] <- ds

# ---- raven ---------------------
# http://www.lasa-vu.nl/themes/cognitive/fluide_intelligentie.html
ds <- dto$unitData$raven
head(ds)
ls_data[["raven"]] <- ds






# ---- combine-processed ---------------------------------
ds <- ls_data %>% full_join_multi()
head(ds)
names_labels(ds)




# ---- add-firstobs-flag -----------------------------
(N  <- length(unique(ds$id)))
subjects <- as.numeric(unique(ds$id))
# Add first observation indicator
# this creates a new dummy variable "firstobs" with 1 for the first wave
cat("\nFirst observation indicator is added.\n")
offset <- rep(NA,N)
for(i in 1:N){offset[i] <- min(which(ds$id==subjects[i]))}
firstobs <- rep(0,nrow(ds))
firstobs[offset] <- 1
ds <- cbind(ds ,firstobs=firstobs)
print(head(ds))


# ---- tweek-data -------------------
# d <- ds %>%
#   # dplyr::filter(firstobs==1) %>%
#   dplyr::select(id,wave, age_at_visit, age_at_bl)
#
#
# d$age_at_bl <- d[d$wave==1,"age_at_visit"]
#
# d <- ds %>%
#   dplyr::group_by(id) %>%
#   dplyr::mutate(
#     age_at_bl =
#   )
#
# names_labels(ds)
# ----- subset-variables ------------------------------------
varnames_design <- c(
  "id",              # subject identifier
  # "birth_year",
  "wave",            # Follow-up year
  "age_at_bl",       # Age at baseline
  "age_at_visit",    # age at visit
  # "date_at_bl",
  # "date_at_visit",
  # "age_death",       # age of death
  # "died",            # death indicatro, derivative of age_death
  "firstobs"         # first observatio for that person?
)
varnames_context <- c(
  "male",            # Gender
  "edu",             # Years of education
  "height_40_cm",    # Height in cantimeters at age 40
  "smoke_hist",      # Did you ever smoked?
  "cardio_hist",     # Definite or possible cardivascular disease at baseline
  "diabetes_hist",   # Definite or possible diabetes at baseline
  "dementia_ever"         # Diagnosed with demenetia at any time point
)
varnames_physical <- c(
  "pef_max",         # peak experiatory flox; max of 3 tries
  "pef_mean",        # peak experiatory flox; mean of 3 tries
  "grip_max",        # Extremity strength, max of 2 tries in each hand
  "grip_mean"        # Extremity strength, mean of 2 tries in each hand
)
varnames_cognitive <- c(
   "coding_max"      # letter substitution
  ,"coding_mean"     # letter substitution
  ,"recall_immed"    # 15 Word test, episodic memory: The total number of words the respondent has learned during the three presentations
  ,"retention_1"     # 15 Word test, episodic memory: delayed recall score/score of trial 3
  ,"retention_2"     # 15 Word test, episodic memory: delayed recall score/highest score of one of the 3 trials
  ,"mmse"            # Mini Mental State Examination
  ,"raven_a"         #
  ,"raven_b"         #
  ,"raven_total"    #
)
# d <- as.data.frame(ds[ , varnames_cognitive])
# select variables you will need for modeling, be conservative
selected_items <- c(
   varnames_design
  ,varnames_context
  ,varnames_physical
  ,varnames_cognitive
)
ds <- as.data.frame(ds[ , selected_items])
head(ds)

# ----- remove-cases ----------------------------------
# remove cases which do not have recorded age at baseline
ds %>% dplyr::distinct(id) %>% dplyr::count()
ids_without_age_at_bl <- ds %>%
  dplyr::filter(is.na(age_at_bl)) %>%
  dplyr::distinct(id) %>%
  as.data.frame()
ids_without_age_at_bl <- ids_without_age_at_bl[,"id"]
ds <- ds %>%
  dplyr::filter(!id %in% ids_without_age_at_bl)
ds %>% dplyr::distinct(id) %>% dplyr::count()
# no removals are done

# ---- tweak-data -------------------
ds <- ds %>%
  dplyr::mutate(
    years_since_bl = as.double((age_at_visit - age_at_bl))
  )
stem(ds$years_since_bl)
summary(ds$years_since_bl, useNA="always")






# ---- force-to-static-smoke ---------------------------
ds %>% temporal_pattern("smoke_hist","random")
ds %>% over_waves("smoke_hist") # 1, 2, 3, 4, 5, 6
# check that values are the same across waves
ds %>%
  dplyr::group_by(id) %>%
  dplyr::summarize(unique = length(unique(smoke_hist))) %>%
  dplyr::arrange(desc(unique)) # unique > 1 indicates change over wave

# ---- force-to-static-cardio ---------------------------
ds %>% temporal_pattern("cardio_hist","random")
ds %>% over_waves("cardio_hist")

# check that values are the same across waves
ds %>%
  dplyr::group_by(id) %>%
  dplyr::summarize(unique = length(unique(cardio_hist))) %>%
  dplyr::arrange(desc(unique)) # unique > 1 indicates change over wave


# ---- force-to-static-diabetes ---------------------------
ds %>% temporal_pattern("diabetes_hist","random")
ds %>% over_waves("diabetes_hist") # 1, 2
# check that values are the same across waves
ds %>%
  dplyr::group_by(id) %>%
  dplyr::summarize(unique = length(unique(diabetes_hist))) %>%
  dplyr::arrange(desc(unique)) # unique > 1 indicates change over wave

# ---- center-covariates ---------------------------------
ds <- ds %>%
  dplyr::mutate(
    age_c70 = age_at_bl - 70,
    edu_c7  = edu - 7,
    htcm_c  = ifelse(     male==0, height_40_cm - 160,
                   ifelse(male==1, height_40_cm - 172,NA)),
    htm_c   = htcm_c/100,
    #rename to keep names 8 characters of less
    smoke    = smoke_hist,
    # stroke   = stroke_ever,
    cardio   = cardio_hist,
    diabetes = diabetes_hist
  )
d <- ds
# ds %>% dplyr::glimpse()


# ---- prepare-for-mplus ---------------------
varnames_transformed <- c(
  "id","wave","years_since_bl", "male",
  "age_c70","edu_c7", "htm_c", "smoke","cardio", "diabetes","dementia_ever"
)
ds_long <- ds %>%
  dplyr::select_(.dots = c(varnames_transformed, varnames_physical, varnames_cognitive))
# ds_longs keeps only variables we need for estimation

# define variable properties for long-to-wide conversion
variables_static <- c(
  "id", "male",
  "age_c70","edu_c7", "htm_c", "smoke","cardio", "diabetes", "dementia_ever"
  ) # these are the variables that do no change with time
variables_longitudinal <- setdiff(colnames(ds_long),variables_static)  # not static, change with time
(variables_longitudinal <- variables_longitudinal[!variables_longitudinal=="wave"]) # all except wave
# establish a wide format
ds_wide <- ds_long %>%
  # dplyr::select(id, wave, animals, word_recall_de ) %>%
  # gather(variable, value, -(id:wave)) %>%
  dplyr::select_(.dots=c(variables_static, "wave", variables_longitudinal)) %>%
  tidyr::gather_(key="variable", value="value", variables_longitudinal) %>%
  dplyr::mutate(wave = as.character(wave)) %>%
  dplyr::mutate(wave = ifelse( wave %in% paste0(0:9), paste0("0",wave),wave)) %>%
  # dplyr::mutate(wave = paste0("t", wave)) %>%
  tidyr::unite(temp, variable, wave) %>%
  tidyr::spread(temp, value)
ds_wide %>% dplyr::glimpse()
# prepare data to be read by MPlus
ds_mplus <- sapply(ds_wide,as.numeric) %>% as.data.frame()
ds_mplus[is.na(ds_mplus)] <- -9999 # replace NA with a numerical code
ds_mplus %>% dplyr::glimpse()

#--- final-inspection ----------------
ds_long %>% temporal_pattern("pef_max","random")
ds_long %>% temporal_pattern("pef_mean","random")

ds_long %>% over_waves("pef_max")
ds_long %>% over_waves("grip_max")

ds_long %>% over_waves("mmse")

d <- ds_long %>%
  filter(male==TRUE) %>%
  filter(dementia_ever==0)

ds_long %>% over_waves("grip_max")


ds_long %>%
  # filter(!dementia_ever==1) %>%
  filter(male==TRUE) %>%
  over_waves("pef_max")

# ---- save-r-data -------------------
# tranformed data with supplementary variables
saveRDS(ds,paste0(generic_path,"data-long-plus.rds"))
# only variables used in analysis
saveRDS(ds_long,paste0(generic_path,"data-long.rds"))
saveRDS(ds_wide,paste0(generic_path,"data-wide.rds"))
# prepared for Mplus
write.table(ds_mplus, paste0(generic_path,"/wide-dataset.dat"), row.names=F, col.names=F)
write(names(ds_mplus), paste0(generic_path,"/wide-variable-names.txt"), sep=" ")
