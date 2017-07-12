# the purpose of this script is to create a data transfer object (dto), which will hold all data and metadata from each candidate study of the exercise

# run the line below to stitch a basic html output. For elaborated report, run the corresponding .Rmd file
# knitr::stitch_rmd(script="./manipulation/0-ellis-island.R", output="./manipulation/stitched-output/0-ellis-island.md")
#These first few lines run only when the file is run in RStudio, !!NOT when an Rmd/Rnw file calls it!!
rm(list=ls(all=TRUE))  #Clear the variables from previous runs.
cat("\f") # clear console

# ---- load-sources ------------------------------------------------------------
# Call `base::source()` on any repo file that defines functions needed below.  Ideally, no real operations are performed.

# ---- load-packages -----------------------------------------------------------
# Attach these packages so their functions don't need to be qualified: http://r-pkgs.had.co.nz/namespace.html#search-path
library(magrittr) #Pipes
library(ggplot2)
library(MplusAutomation)
requireNamespace("readr")
requireNamespace("knitr")
requireNamespace("dplyr")
requireNamespace("tidyr")

# ---- declare-globals ---------------------------------------------------------
path_folder  <- "./output/studies/octo/dem-criteria/"
path_stencil <- "./data/shared/stencils/table-stencil-octo.csv"

path_output  <- "./data/shared/derived/dem-criteria/catalog-2.rds"

conditions <- c(
   "dem_ever_0"
  ,"dem_entry_0"
  ,"all"
)
model_id <- c(
   "study_name"
  ,"model_number"
  ,"subgroup"
  ,"model_type"
  ,"process_a"
  ,"process_b"
  ,"condition"
  ,"model_name"
)
model_info <- c(
   "subject_count"
  ,"wave_count"
  # ,"datapoint_count"
  ,"parameter_count"
  ,"ll"
  ,"aic"
  ,"bic"
  # ,"adj_bic"
  # ,"aaic"
  # ,"path"
)
model_spread <- c(
   "paramheader"
  ,"param"
  ,"effect"
  ,"name"
  ,"label"
  ,"est"
  ,"se"
  ,"wald"
  ,"pval"
  ,"est_pretty"
  ,"se_pretty"
  ,"pval_pretty"
  ,"dense"
)

# ---- load-data ---------------------------------------------------------------
# import manually structured table pairing variable names with labels
stencil <- readr::read_csv(path_stencil)

path_outputs <- list()
for(i in conditions){
  folder <- paste0(path_folder,i,"/")
  path_outputs[[i]] <- list.files(folder,pattern = ".out$",full.names = T, recursive = T)
}
# quick inspection
names(path_outputs)
lapply(path_outputs, head)
lapply(path_outputs, length)

(path <- path_outputs[["dem_ever_0"]][59])

# ---- define-utility-functions ---------------
# formatting functions to remove leading zero
numformat <- function(val) { sub("^(-?)0.", "\\1.", sprintf("%.2f", val)) }

#extract table of parameters from the output of  MplusAutomation::readModels()
get_estimate_table <- function(
  lst # list object, product of MplusAutomation::readModels()
  ,stencil # a stencil used for this parsing (might change with study)
){
  # lst <- model_result
  d1 <- lst[["parameters"]][["unstandardized"]]
  d2 <- stencil %>%
    dplyr::left_join(d1,by=c("paramHeader","param")) %>%
    dplyr::mutate(
      est_pretty  = numformat( est),
      se_pretty   = numformat( se),
      pval_pretty = ifelse(pval<.001,"<.001",numformat(pval)),
      dense = sprintf("%4s(%4s), %5s",est_pretty, se_pretty, pval_pretty),
      dense = ifelse(is.na(est),"",dense)
    )
  return(d2)
}

parse_outputs <- function(
   path     # a character vector with paths to the output file
  ,stencil  # a table pairing variable names with labels
){
  ls_catalog <- list()
  regex_1    <- "^(..)_(\\w+)_(\\w+)_(\\w+)_(\\w+)$"
  for(i in seq_along(path)){
    model_name   <- gsub(".out$","",basename(path[i]))
    model_result <- MplusAutomation::readModels(path[i])
    ls_temp <- list(
      "model_number" = as.character(gsub(regex_1, "\\1", model_name)),
      "subgroup"     = as.character(gsub(regex_1, "\\2", model_name)),
      "model_type"   = as.character(gsub(regex_1, "\\3", model_name)),
      "process_a"    = as.character(gsub(regex_1, "\\4", model_name)),
      "process_b"    = as.character(gsub(regex_1, "\\5", model_name))
    )
    ls_temp[["path"]]             = path[i]
    if(length(model_result$errors)==0L){
      ls_temp[["table"]]           = get_estimate_table(model_result, stencil)
      token <- strsplit(model_result$input$variable$tscores, split = " ") %>% unlist()
      ls_temp[["wave_count"]]      = length(grep("^time_\\d{2}$",token))
      ls_temp[["subject_count"]]   = model_result$summaries$Observations
      ls_temp[["parameter_count"]] = model_result$summaries$Parameters
      ls_temp[["ll"]]              = model_result$summaries$LL
      ls_temp[["aic"]]             = model_result$summaries$AIC
      ls_temp[["bic"]]             = model_result$summaries$BIC
      ls_temp[["error_count"]]     = 0L
      # ls_temp[["error_text"]]      = NA
    } else{
      ls_temp[["table"]]           = NA
      ls_temp[["wave_count"]]      = NA
      ls_temp[["subject_count"]]   = NA
      ls_temp[["parameter_count"]] = NA
      ls_temp[["ll"]]              = NA
      ls_temp[["aic"]]             = NA
      ls_temp[["bic"]]             = NA
      error_count <- length(model_result$errors)
      ls_temp[["error_count"]]     = error_count
      for(i in 1:error_count){
        ls_temp[[paste0("error_",i)]] <- as.character(paste0(model_result$errors[[i]],collapse=" "))
      }
    }
    ls_catalog[[model_name]] <- ls_temp
  }
  return(ls_catalog)
}

# ---- assemble-list-catalog -------------------------------
# # assemble three list catalogs, one for each condition
# # DISABLE THIS CHUNK DURING RUTING WORK : COMPUTATIONALY EXPENSIVE
# for(i in conditions){
#   file_name  <- paste0("./data/shared/derived/ls_catalog_",i,".rds")
#   ls_catalog <- parse_outputs(path = path_outputs[[i]], stencil)
#   saveRDS(ls_catalog, file_name)
# }
# # ls_outputs contains three list objects ls_catalog, one for each condition
# # after parsing all outputs, you might want to save the catalog for faster access later
# # saveRDS(ls_catalog,"./data/shared/derived/ls_catalog.rds")
# ls_catalog <- readRDS("./data/shared/derived/ls_catalog_dem_ever_0.rds")
# # Explore catalog
# names(ls_catalog)
# # View the names of the components in the first element of the list
# names(ls_catalog[[1]])
# # print the contents of the first element
# # ls_catalog[["b1_female_a_pef_block"]]

# ---- flatten-catalog -------------------------
# do not combing parsing step with anything else
# we want to extract and save to disk, extraction is time-costly
ls_conditions <- list(
   "dem_ever_0"  = readRDS("./data/shared/derived/dem-criteria/ls_catalog_dem_ever_0.rds")
  ,"dem_entry_0" = readRDS("./data/shared/derived/dem-criteria/ls_catalog_dem_entry_0.rds")
  ,"all"         = readRDS("./data/shared/derived/dem-criteria/ls_catalog_all.rds")
)
ls_catalog <- list()
for(i in conditions){
  file_name  <- paste0("./data/shared/derived/dem-criteria/ds_catalog_",i,".rds")
  # convert list object into a single flat dataframe
  d_catalog <- plyr::ldply(ls_conditions[[i]], data.frame, .id = "model_name")
  names(d_catalog) <- gsub("^table.","",names(d_catalog))
  d_catalog <- d_catalog %>% dplyr::select(-table)
  ls_catalog[[i]] <- d_catalog
}


# combine data from three conditions into a single ds
ds_catalog <- plyr::ldply(ls_catalog, data.frame, .id = "condition")
colnames(ds_catalog) <- tolower(colnames(ds_catalog))
ds_catalog %>% glimpse()

error_vars <- grep("error_", unique(colnames(ds_catalog)), value =T)
# tweak data
ds_catalog <- ds_catalog %>%
  dplyr::mutate(
    study_name = "octo",
    condition = as.character(condition),
    wald      = est_se,
    path   = as.character(path)
  ) %>%
  dplyr::select_(.dots = c(
    model_id,
    model_info,
    error_vars,
    model_spread,
    "path"
  )
  )

ds_catalog %>% glimpse()

ds_catalog <- ds_catalog %>%
  dplyr::mutate(
     condition  = as.character(condition)
    ,model_name = as.character(model_name)
    ,error_1    = as.character(error_1)
    ,error_2    = as.character(error_2)
    ,error_3    = as.character(error_3)
    , model_name = as.character(model_name)
    ,model_number = as.character(model_number)
    ,subgroup = as.character(subgroup)
    ,model_type = as.character(model_type)
    ,process_a = as.character(process_a)
    ,process_b = as.character(process_b)
)
# d %>% group_by(condition) %>% count()

# head(ds_catalog)

ds_catalog %>% glimpse()
# ---- catalog-original-form -------------------------------------


# ---- save-to-disk ----------------------------
# save for faster recall later
saveRDS(ds_catalog, path_output)
# ds_catalog <- readRDS(path_out)


# --- view-dynamic-tabel --------
ds_catalog %>%
  dplyr::select(
    subgroup, model_type, process_a, process_b, paramHeader
  ) %>%
    DT::datatable(
      class     = 'cell-border stripe',
      caption   = "Solution of Bivariate Growth Curve models",
      filter    = "top",
      options   = list(pageLength = 6, autoWidth = TRUE)
    )
