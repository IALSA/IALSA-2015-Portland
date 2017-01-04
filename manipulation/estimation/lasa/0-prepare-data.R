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

# put test assert here to check the connection.
# generic_path <- "./sandbox/pipeline-demo-1/generic-data/"
generic_path <- "./data/unshared/derived/lasa-1/"


# ---- load-data ---------------------------------------------------------------
dto <- readRDS(path_input)
names(dto)
# 1st element - unit(person) level data
names(dto[["unitData"]])
# 2nd element - meta data, info about variables
names(dto[["metaData"]])


# ---- functions-to-examime-temporal-patterns -------------------
view_temporal_pattern <- function(ds, measure, seed_value = 42){
  set.seed(seed_value)
  ds_long <- ds
  (ids <- sample(unique(ds_long$id),1))
  d <-ds_long %>%
    dplyr::filter(id %in% ids ) %>%
    dplyr::select_("id","wave", measure)
  print(d)
}
# ds %>%  view_temporal_pattern("male", 2)
temporal_pattern <- function(ds, measure){
  # set.seed(seed_value)
  ds_long <- ds
  (ids <- sample(unique(ds_long$id),1))
  d <-ds_long %>%
    dplyr::filter(id %in% ids ) %>%
    dplyr::select_("id","wave", measure)
  print(d)
}


# examine the descriptives over waves
over_waves <- function(ds, measure_name, exclude_values="") {
  ds <- as.data.frame(ds)
  testit::assert("No such measure in the dataset", measure_name %in% unique(names(ds)))
  # measure_name = "htval"; wave_name = "wave"; exclude_values = c(-99999, -1)
  cat("Measure : ", measure_name,"\n", sep="")
  t <- table( ds[,measure_name], ds[,"wave"], useNA = "always"); t[t==0] <- ".";t
  print(t)
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
my_rowmeans = function(..., na.rm=TRUE){
  x = if (na.rm)
    lapply(list(...), function(x) replace(x, is.na(x), as(0, class(x))))
   else
    list(...)
    d = Reduce(function(x,y) x+!is.na(y), list(...), init=0)
    Reduce(`+`, x)/d

}

# computing row max
# http://stackoverflow.com/questions/32978458/dplyr-mutate-rowwise-max-of-range-of-columns


# ---- clean-data -------------------------------------------------------------
# using the dto, assemble the variables to be used in analysis
ls_data <- list()

# ---- sex -----------------------
ds <- dto$unitData$sex
head(ds)
ls_data[["sex"]] <- dto$unitData$sex

# ---- age ------------------------
ds <- dto$unitData$age
head(ds)
ls_data[["age"]] <- dto$unitData$age

# ---- edu ------------------------
ds <- dto$unitData$edu
head(ds)
ls_data[["edu"]] <- dto$unitData$edu

# ---- height --------------------
ds <- dto$unitData$height
head(ds); table(ds$wave)
ds[ds==-1] <- NA
ds[ds==-2] <- NA
ds[ds==-3] <- NA
table(ds$height_40_cm)
ls_data[["height"]] <- dto$unitData$height


# ----- smoking ------------------
ds <- dto$unitData$smoking
head(ds)
str(ds)
table(ds$smoke_ever)
ds <- ds %>%
  dplyr::mutate(
    smoke_hist  = ifelse(smoke_ever=="No",0,
                  ifelse(smoke_ever %in% c("No answer, asked","No valid data"),NA,1))
  )
table(ds$smoke_hist, useNA = "always")


# ---- cardio --------------------
ds <- dto$unitData$cardio
head(ds)
table(ds$cvd)
ds <- ds %>%
  dplyr::mutate(
    cardio_hist = ifelse(cvd %in% c("definite cardio vascular disease",
                               "possible cardiovascular disease"), 1,
             ifelse(cvd == "no cardio vascular disease",0,NA))
  )
table(ds$cardio, useNA = "always")

# ---- diabetes ------------------
ds <- dto$unitData$diabetes
head(ds)
table(ds$diabetes)
ds <- ds %>%
  dplyr::mutate(
    diabetes_hist = ifelse(diabetes %in% c("definite diabetes","possible diabetes"),1,
                    ifelse(diabetes %in% c("no diabetes"),0,NA))
  )
table(ds$diabetes_hist)


# ---- dementia -----------------
ds <- dto$unitData$dementia
head(ds)
table(ds$dementia)
ds <- ds %>%
  dplyr::mutate(
    demented = ifelse(dementia %in% paste0("dementia at ",c("C","D","E","F")),1,
          ifelse(dementia %in% c("no dementia"),0,NA))
  )
table(ds$demented)

lapply(dto, names)

# ---- grip ---------------------
ds <- dto$unitData$grip
ds[ds==-1] <- NA
ds[ds==-2] <- NA
ds[ds==-3] <- NA
head(ds)
ds <- ds %>%
  dplyr::mutate(
    grip_right_max  = pmax(       grip_right_1,    grip_right_2,na.rm=T),
    grip_right_mean = my_rowmeans(grip_right_1,    grip_right_2),
    grip_left_max   = pmax(       grip_left_1,     grip_left_2,na.rm=T),
    grip_left_mean  = my_rowmeans(grip_left_1,     grip_left_2),
    grip_max        = pmax(       grip_right_max,  grip_left_max,na.rm=T),
    grip_mean       = my_rowmeans(grip_right_mean, grip_left_mean)
  )

# ---- pef ------------------------
ds <- dto$unitData$pef
head(ds)
ds <- ds %>%
  dplyr::mutate(
    pef_mean = my_rowmeans(pef_1, pef_2, pef_3)
  )
head(ds)


# ---- coding-task ------------------
# http://www.lasa-vu.nl/themes/cognitive/informatieverwerkingssnelheid.html
ds <- dto$unitData$coding
ds[ds==-1] <- NA
ds[ds==-2] <- NA
ds[ds==-3] <- NA
head(ds)
ds <- ds %>%
  dplyr::mutate(
    coding_max = pmax(coding1, coding2, coding3, na.rm=T),
    coding_mean = my_rowmeans(coding1, coding2, coding3)
  )

# ---- word-recall -----------------------
# http://www.lasa-vu.nl/themes/cognitive/geheugen.html
ds <- dto$unitData$recall
ds[ds==-1] <- NA
ds[ds==-2] <- NA
ds[ds==-3] <- NA
ds[ds==-4] <- NA
head(ds)

# ---- mmse ---------------------
# http://www.lasa-vu.nl/themes/cognitive/cognitief_algemeen.html
ds <- dto$unitData$mmse
ds[ds==-1] <- NA
ds[ds==-2] <- NA
ds[ds==-3] <- NA
ds[ds==-4] <- NA
head(ds)


# ---- raven ---------------------
# http://www.lasa-vu.nl/themes/cognitive/fluide_intelligentie.html
ds <- dto$unitData$raven
ds[ds==-1] <- NA
ds[ds==-2] <- NA
ds[ds==-3] <- NA
ds[ds==-4] <- NA
head(ds)

# ----- subset-variables ------------------------------------
varnames_design <- c(
  "id",              # subject identifier
  "birth_year",
  "fu_year",         # Follow-up year
  "age_at_bl",       # Age at baseline
  "age_at_visit",    # age at visit
  "date_at_bl",
  "date_at_visit",
  "age_death",       # age of death
  "died",            # death indicatro, derivative of age_death
  "firstobs"         # first observatio for that person?
)
varnames_context <- c(
  "msex",            # Gender
  "race",            # Participant's race
  "educ",            # Years of education
  "htm",             # Height in meters
  "smoking",         # 0 - never, 1 - former, 2 - current
  "stroke_cum",      # Clinical Diagnoses - Stroke - cumulative
  "heart_cum",       # Heart disease, cumulative
  "dm_cum",          # Medical history - diabetes - cumulative
  "dementia"         # Dementia diagnosis
)
varnames_physical <- c(
  "fev",             # forced expiratory volume
  "gait",      # Gait Speed - MAP
  "grip"          # Extremity strength
)
varnames_cognitive <- c(
  "bnt"              # Boston naming
  ,"bostordel"       # East Boston story - delayed recall
  ,"bostorim"        # East Boston story - immediate
  ,"catfluency"      # Category fluency
  ,"complexideas"    # Complex ideas
  ,"digitbackward"   # Digits backwards
  ,"digitforward"    # Digits forwards
  ,"digitorder"      # Digit ordering
  ,"lineorientation" # Line orientation -
  ,"logimemdel"      # Logical memory IIa
  ,"logimemim"       # Logical memory Ia - immediate
  ,"matrices"        # Progressive Matrices -
  ,"mmse"            # Mini Mental State Examination
  ,"nart"            # Reading test-NART
  ,"numbercomparison"# Number comparison
  ,"symbol"          # Symbol digit modalitities
  ,"wordlistdel"     # Word list II - delayed
  ,"wordlistim"      # Word list I- immediate-
  ,"wordlistrecog"   # Word list III - recognition
)
# d <- as.data.frame(ds[ , varnames_cognitive])
# select variables you will need for modeling, be conservative
selected_items <- c(
   varnames_design
  ,varnames_context
  ,varnames_physical
  ,varnames_cognitive
)
ds <- as.data.frame(ds0[ , selected_items])

# ----- remove-cases ----------------------------------
# remove cases which do not have recorded date at baseline
# ds %>% dplyr::distinct(id) %>% dplyr::count()
# ids_without_date_at_bl <- ds %>%
#   dplyr::filter(is.na(date_at_bl)) %>%
#   dplyr::distinct(id) %>%
#   as.data.frame()
# ids_without_date_at_bl <- ids_without_date_at_bl[,"id"]
# ds <- ds %>%
#   dplyr::filter(!id %in% ids_without_date_at_bl)
# ds %>% dplyr::distinct(id) %>% dplyr::count()

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


# remove observations with missing values on the time variable
table(ds$fu_year, useNA = "always")
ds <- ds %>% dplyr::filter(!is.na(fu_year))
table(ds$fu_year, useNA = "always")


# ---- tweak-data -------------------
ds <- ds %>%
  dplyr::mutate(
    wave = fu_year,
    male = as.logical(ifelse(!is.na(msex),msex==1, NA_integer_)),
    # years_since_bl = as.double((date_at_visit - date_at_bl)/365)
    years_since_bl = as.double((age_at_visit - age_at_bl))
  )

table(ds$years_since_bl, useNA="always")

# ---- compute-history-measures ---------------------
# view_temporal_pattern(ds,"dementia",seed_value = 42)
# temporal_pattern(ds,"dementia")
ds <- ds %>%
  dplyr::group_by(id) %>%
  dplyr::mutate(
    dementia_ever = any(dementia==1),
    smoke_ever    = any(smoking %in% c(1,2)),
    # stroke_ever   = any(stroke_cum==1),
    heart_ever    = any(heart_cum ==1),
    diab_ever     = any(dm_cum == 1)
    ) %>%
  dplyr::ungroup() #%>%


# ---- force-to-static-sex ---------------------------
ds %>% view_temporal_pattern("male", 42) # sex
ds %>% over_waves("male") # 1, 2, 3, 4, 5, 6
# check that values are the same across waves
ds %>%
  dplyr::group_by(id) %>%
  dplyr::summarize(unique = length(unique(male))) %>%
  dplyr::arrange(desc(unique)) # unique > 1 indicates change over wave
# grab the value for the first wave and forces it to all waves
ds <- ds %>%
  dplyr::group_by(id) %>%
  dplyr::mutate(
    male   = dplyr::first(male) # grabs the value for the first wave and forces it to all waves
  ) %>%
  dplyr::ungroup()
# examine the difference
ds %>% over_waves("male")
ds %>% view_temporal_pattern("male", 2) # sex

# ---- force-to-static-education ---------------------------
ds %>% view_temporal_pattern("educ", 42) # sex
ds %>% over_waves("educ") # 1, 2, 3, 4, 5, 6
# check that values are the same across waves
ds %>%
  dplyr::group_by(id) %>%
  dplyr::summarize(unique = length(unique(educ))) %>%
  dplyr::arrange(desc(unique)) # unique > 1 indicates change over wave
# edu is truely time-invariant
ds <- ds %>% dplyr::mutate( edu_bl = educ)
ds %>% over_waves("edu_bl")

# ---- force-to-static-height ---------------------------
ds %>% view_temporal_pattern("htm", 2)
ds %>% temporal_pattern("htm")
ds %>% over_waves("htm"); # 2, 4, 6
# check that values are the same across waves
ds %>%
  dplyr::group_by(id) %>%
  dplyr::summarize(unique = length(unique(htm))) %>%
  dplyr::arrange(desc(unique)) # unique > 1 indicates change over wave
# grab the value for the first wave and forces it to all waves
ds <- ds %>%
  dplyr::group_by(id) %>%
  # compute median height across lifespan
  dplyr::mutate(
    htm_med   = median(htm, na.rm =T) # grabs the value for the first wave and forces it to all waves
  ) %>%
  dplyr::ungroup()
# examine the difference
ds %>% view_temporal_pattern("htm_med", 2)



# ---- force-to-static-smoke ---------------------------
ds %>% temporal_pattern("smoke_ever")
ds %>% over_waves("smoke_ever") # 1, 2, 3, 4, 5, 6
# check that values are the same across waves
ds %>%
  dplyr::group_by(id) %>%
  dplyr::summarize(unique = length(unique(smoke_ever))) %>%
  dplyr::arrange(desc(unique)) # unique > 1 indicates change over wave

# ---- force-to-static-cardio ---------------------------
ds %>% temporal_pattern("heart_ever")
# ds %>% over_waves("heart_cum ")
ds %>% over_waves("heart_ever")
# check that values are the same across waves
ds %>%
  dplyr::group_by(id) %>%
  dplyr::summarize(unique = length(unique(heart_ever))) %>%
  dplyr::arrange(desc(unique)) # unique > 1 indicates change over wave


# ---- force-to-static-diabetes ---------------------------
ds %>% temporal_pattern("diab_ever")
ds %>% over_waves("diab_ever") # 1, 2
# check that values are the same across waves
ds %>%
  dplyr::group_by(id) %>%
  dplyr::summarize(unique = length(unique(diab_ever))) %>%
  dplyr::arrange(desc(unique)) # unique > 1 indicates change over wave

# ---- center-covariates ---------------------------------
ds <- ds %>%
  dplyr::mutate(
    fev100  = fev*100, # rescale for estimation purpose
    age_c70 = age_at_bl - 70,
    edu_c7  = educ - 7,
    htm_c   = ifelse(     male==0, htm_med - 1.6,
                   ifelse(male==1, htm_med - 1.72,NA)),
    #rename to keep names 8 characters of less
    smoke    = smoke_ever,
    # stroke   = stroke_ever,
    cardio   = heart_ever,
    diabetes = diab_ever
  )

# ds %>% dplyr::glimpse()


# ---- prepare-for-mplus ---------------------
varnames_transformed <- c(
  "id","wave","years_since_bl", "male",
  "age_c70","edu_c7", "htm_c", "smoke","cardio", "diabetes","dementia_ever"
)
ds_long <- ds %>%
  dplyr::select_(.dots = c(varnames_transformed,"fev100", varnames_physical, varnames_cognitive))


# define variable properties for long-to-wide conversion
variables_static <- c(
  "id", "male",
  "age_c70","edu_c7", "htm_c", "smoke","cardio", "diabetes", "dementia_ever"
  )
variables_longitudinal <- setdiff(colnames(ds_long),variables_static)  # not static
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




# ---- save-r-data -------------------
# tranformed data with supplementary variables
saveRDS(ds,paste0(generic_path,"data-long-plus.rds"))
# only variables used in analysis
saveRDS(ds_long,paste0(generic_path,"data-long.rds"))
saveRDS(ds_wide,paste0(generic_path,"data-wide.rds"))
# prepared for Mplus
write.table(ds_mplus, paste0(generic_path,"/wide-dataset.dat"), row.names=F, col.names=F)
write(names(ds_mplus), paste0(generic_path,"/wide-variable-names.txt"), sep=" ")
