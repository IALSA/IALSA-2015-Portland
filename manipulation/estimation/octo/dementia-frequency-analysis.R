# ds_wide comes from "./manipulation/estimation/octo/annierobi/0-prepare-data.R"
ds_wide %>%
  dplyr::group_by(dementia_entry, dementia_ever) %>%
  dplyr::count() %>% kable()

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

  v_freq[is.na(v_freq)] <- "."
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

# print frequency of each value
loop_of_variables <- varnames_cognitive_new
# loop_of_variables <- varnames_cognitive
for(i in loop_of_variables ){
  cat("\n")
  # cat("\n", toupper(i))
  # cat("\n")
  grab_freq(ds_wide, i ) %>% print()
  # cat("\n")
}



#### Dev code after here
# ---- dev --------------
# grab_freq(ds_wide, "mirnaming_03") %>% t()


# Development code after here ###############

# v_freq_ever <- ds_wide %>%
#   dplyr::filter(dementia_ever==0) %>%
#   # dplyr::filter(dementia_entry==0) %>%
#   get_freq("mirnaming_01") %>%
#   t() %>%
#   as.data.frame()
#
# leaf <- v_freq_ever %>%
#   dplyr::slice(1) %>%
#   as.character()
# stem <- "value_"
# new_names <- paste0(stem,leaf)
# names(v_freq_ever) <- new_names
# v_freq_ever <- v_freq_ever %>% dplyr::slice(2:2)
#
#
# # names(v_freq_ever) <- gsub(pattern = "V",replacement="ever_", x = names(v_freq_ever) )
#
# v_freq_entry <- ds_wide %>%
#   # dplyr::filter(dementia_ever==0) %>%
#   dplyr::filter(dementia_entry==0) %>%
#   get_freq("mirnaming_01") %>%
#   t() %>%
#   as.data.frame()
#
# leaf <- v_freq_entry %>%
#   dplyr::slice(1) %>%
#   as.character()
# stem <- "value_"
# new_names <- paste0(stem,leaf)
# names(v_freq_entry) <- new_names
# v_freq_entry <- v_freq_entry %>% dplyr::slice(2:2)
#
#
#
# # combine
# ls_freq <- list(
#   "ever" = v_freq_ever,
#   "entry" = v_freq_entry
# )
# v_freq <- dplyr::bind_rows(ls_freq, .id = "subgroup") %>%
#   as.data.frame()
#
# v_freq[is.na(v_freq)] <- "."


# grab_freq(ds_wide, "mirnaming_03") %>% t()


# Development code after here ###############

# v_freq_ever <- ds_wide %>%
#   dplyr::filter(dementia_ever==0) %>%
#   # dplyr::filter(dementia_entry==0) %>%
#   get_freq("mirnaming_01") %>%
#   t() %>%
#   as.data.frame()
#
# leaf <- v_freq_ever %>%
#   dplyr::slice(1) %>%
#   as.character()
# stem <- "value_"
# new_names <- paste0(stem,leaf)
# names(v_freq_ever) <- new_names
# v_freq_ever <- v_freq_ever %>% dplyr::slice(2:2)
#
#
# # names(v_freq_ever) <- gsub(pattern = "V",replacement="ever_", x = names(v_freq_ever) )
#
# v_freq_entry <- ds_wide %>%
#   # dplyr::filter(dementia_ever==0) %>%
#   dplyr::filter(dementia_entry==0) %>%
#   get_freq("mirnaming_01") %>%
#   t() %>%
#   as.data.frame()
#
# leaf <- v_freq_entry %>%
#   dplyr::slice(1) %>%
#   as.character()
# stem <- "value_"
# new_names <- paste0(stem,leaf)
# names(v_freq_entry) <- new_names
# v_freq_entry <- v_freq_entry %>% dplyr::slice(2:2)
#
#
#
# # combine
# ls_freq <- list(
#   "ever" = v_freq_ever,
#   "entry" = v_freq_entry
# )
# v_freq <- dplyr::bind_rows(ls_freq, .id = "subgroup") %>%
#   as.data.frame()
#
# v_freq[is.na(v_freq)] <- "."

# get_freq <- function(d, varname){
#   # d <- data_forest
#   # varname <- c("domain","subgroup")
#   d %>%
#     dplyr::group_by_(.dots=varname) %>%
#     dplyr::summarize(n=n()) %>%
#     dplyr::arrange(n)
# }


# names(v_freq_entry) <- gsub(pattern = "V",replacement="at_entry_", x = names(v_freq_entry) )

v_freq <- dplyr::bind_cols(v_freq_ever, v_freq_entry) %>%
  dplyr::mutate(indicator = c("value","frequency")) %>%
  dplyr::select(indicator, dplyr::everything())
v_freq


ds_wide %>%
  dplyr::group_by(dementia_ever, dementia_entry) %>%
  dplyr::summarize(variance = var(mirnaming_01,na.rm=T))



ds_wide %>%
  dplyr::filter(male == 0) %>%
  dplyr::filter( dementia_ever==0 ) %>%
  dplyr::select(Case,mirnaming_01) %>%
  dplyr::summarize(var = var(mirnaming_01,na.rm=T))
var(ds_wide$mirnaming_01,na.rm=T)
ds_wide$dementia_ever

d <- ds_wide %>%
  dplyr::filter(dementia_ever == 0) %>%
  dplyr::select(Case, mirnaming_01)
#View(d)
# names(v_freq_entry) <- gsub(pattern = "V",replacement="at_entry_", x = names(v_freq_entry) )

v_freq <- dplyr::bind_cols(v_freq_ever, v_freq_entry) %>%
  dplyr::mutate(indicator = c("value","frequency")) %>%
  dplyr::select(indicator, dplyr::everything())
v_freq


ds_wide %>%
  dplyr::group_by(dementia_ever, dementia_entry) %>%
  dplyr::summarize(variance = var(mirnaming_01,na.rm=T))



ds_wide %>%
  dplyr::filter(male == 0) %>%
  dplyr::filter( dementia_ever==0 ) %>%
  dplyr::select(Case,mirnaming_01) %>%
  dplyr::summarize(var = var(mirnaming_01,na.rm=T))
var(ds_wide$mirnaming_01,na.rm=T)
ds_wide$dementia_ever

d <- ds_wide %>%
  dplyr::filter(dementia_ever == 0) %>%
  dplyr::select(Case, mirnaming_01)
#View(d)
