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
library(dplyr)
# library(TabularManifest)
# Verify these packages are available on the machine, but their functions need to be qualified: http://r-pkgs.had.co.nz/namespace.html#search-path
requireNamespace("ggplot2")
requireNamespace("tidyr")
requireNamespace("dplyr") #Avoid attaching dplyr, b/c its function names conflict with a lot of packages (esp base, stats, and plyr).
requireNamespace("testit")
requireNamespace("reshape2") # data transformations
requireNamespace("sas7bdat") # for inputing SAS files

# ---- declare-globals ---------------------------------------------------------

path_input  <- "./data/unshared/derived/octo-2/data-wide.rds"
testit::assert("File does not exist", file.exists(path_input))

# ---- load-data ---------------------------------------------------------------
ds_wide <- readRDS(path_input)

# ds_wide comes from "./manipulation/estimation/octo/annierobi/0-prepare-data.R"
ds_wide %>%
  dplyr::group_by(dementia_entry, dementia_ever) %>%
  dplyr::count() %>% kable()

# ----- object-glossary ------------------------------------
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

# ---- utility-functions ---------------------------
# funtion to view frequencies of measures
# at each time point
# for each cell of some cross-tabulation

get_freq <- function(d, varname){
  # d <- data_forest
  # varname <- c("domain","subgroup")
  d %>%
    dplyr::group_by_(.dots=varname) %>%
    dplyr::summarize(n=n()) %>%
    dplyr::arrange(n)
}
# Usage:
# ds_wide %>% get_freq("mirnaming_01")

grab_freq <- function(
  d,
  varname
){
  # Values for testing and development
  # d <- ds_wide
  # varname <- "mirnam1"
  # varname <- "mirnaming_01"

  # EVER - only those who did NOT have dementia ever in lifetime
  v_freq_ever <- d %>%
    dplyr::filter(dementia_ever==0) %>%
    # dplyr::filter(dementia_entry==0) %>%
    get_freq(varname) %>%
    t() %>%
    as.data.frame()
  leaf <- v_freq_ever %>%
    dplyr::slice(1) %>%
    as.character()
  stem <- "value_"
  new_names <- paste0(stem,leaf)
  names(v_freq_ever) <- new_names
  v_freq_ever <- v_freq_ever %>% dplyr::slice(2:2)

  # ENTRY - only those who did NOT have dementia at study's baseline
  v_freq_entry <- d %>%
    # dplyr::filter(dementia_ever==0) %>%
    dplyr::filter(dementia_entry==0) %>%
    get_freq(varname) %>%
    t() %>%
    as.data.frame()
  leaf <- v_freq_entry %>%
    dplyr::slice(1) %>%
    as.character()
  stem <- "value_"
  new_names <- paste0(stem,leaf)
  names(v_freq_entry) <- new_names
  v_freq_entry <- v_freq_entry %>% dplyr::slice(2:2)

  # ALL - Including those with dementia at baseline
  v_freq_all <- d %>%
    # dplyr::filter(dementia_ever==0) %>%
    dplyr::filter(dementia_entry & dementia_ever) %>%
    get_freq(varname) %>%
    t() %>%
    as.data.frame()
  leaf <- v_freq_all %>%
    dplyr::slice(1) %>%
    as.character()
  stem <- "value_"
  new_names <- paste0(stem,leaf)
  names(v_freq_all) <- new_names
  v_freq_all <- v_freq_all %>% dplyr::slice(2:2)

  # combine
  ls_freq <- list(
    "ever"  = v_freq_ever,
    "entry" = v_freq_entry,
    "all"   = v_freq_all
  )
  v_freq <- dplyr::bind_rows(ls_freq, .id = "subgroup") %>%
    as.data.frame()

  # v_freq[is.na(v_freq)] <- "."
  v_freq <- v_freq %>%
    dplyr::mutate( measure = varname) %>%
    dplyr::select(measure, dplyr::everything())

  return(v_freq)
}

# grab_freq(ds_wide, "mirnaming_01")
# grab_freq(ds_wide, "mirnaming_02")
# grab_freq(ds_wide, "mirnaming_03")
# grab_freq(ds_wide, "mirnaming_04")
# grab_freq(ds_wide, "mirnaming_05")


# ---- compile-data-object -----------------------

# view number of unique values for each variable
ds_wide %>% summarize_all(n_distinct) %>% t()
# create a list of variables to be avoided in frequency analysis
drop_these_variables <- c(
  paste0("pef","_",paste0("0",1:5))
  ,paste0("grip","_",paste0("0",1:5))
  ,paste0("gait","_",paste0("0",1:5))
)

# print frequency of each value
loop_of_variables <- varnames_cognitive_new %>% setdiff(drop_these_variables)
# loop_of_variables <- loop_of_variables[6:10]
# loop_of_variables <- varnames_cognitive
ls_temp <- list()

for(i in loop_of_variables ){
  ls_temp[[i]] <- grab_freq(ds_wide, i )
}

# create a wide data set from the list object
d_wide <- ls_temp %>%
  dplyr::bind_rows() %>%
  tibble::as_tibble() %>%
  dplyr::mutate(
    wave = as.integer(gsub("^(\\w+)_(\\d+)$", "\\2", measure))
    ,measure = gsub("^(\\w+)_(\\d+)$", "\\1", measure)
  ) %>%
  dplyr::select(measure, wave, subgroup, dplyr::everything())
# define variable grour with respect to their tidiness
dynamic_variables <- grep("value_",colnames(d_wide),value=T)
static_variables  <- colnames(d_wide) %>% setdiff(dynamic_variables)
# correct the variable names
d_wide <- d_wide %>%
  tidyr::gather_( "value", "n",dynamic_variables) %>%
  dplyr::mutate(
    value = gsub("^(value_)(\\d{1})$", paste0("value_0","\\2"),value )
  ) %>%
  dplyr::arrange(value) %>%
  tidyr::spread(key = value, value = n) %>%
  dplyr::arrange(measure, subgroup, wave) %>%
  dplyr::select(measure, subgroup,wave, value_NaN, dplyr::everything())
# update definition
dynamic_variables <- grep("value_",colnames(d_wide),value=T)
# transform into long with respect to possible measurement value
d_long <- d_wide %>%
  tidyr::gather_( "value", "n",dynamic_variables) %>%
  dplyr::mutate(
    value = as.integer(gsub("^value_","", value)),
    n = as.integer(n),
    subgroup = factor(subgroup, levels = c( "all", "entry","ever"))
  )
d_long

dto <- list(
  "wide" = d_wide,
  "long" = d_long
)


# ---- inspect-frequency ---------------------------
d_long %>%
  group_by(value,subgroup) %>%
  summarize(n =sum(n,na.rm=T)) %>%
  tidyr::spread(subgroup, n) %>%
  print(n=nrow(.))

d <- d_long %>%
  dplyr::filter(measure %in% c("block")) %>%
  dplyr::arrange(subgroup, value)

#
g1 <- d %>%
  dplyr::mutate(
    wave = factor(wave, levels = 5:1)
  ) %>%
  ggplot(aes(x=value, y = wave )) +
  geom_text(aes(label=n))+
  # geom_point()+
  facet_grid(subgroup~.)
g1

g2 <- d %>%
  ggplot(aes(x=value, y = subgroup )) +
  geom_text(aes(label=n))+
  # geom_point()+
  facet_grid(wave~.)
g2
