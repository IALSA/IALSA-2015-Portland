# knitr::stitch_rmd(script="./manipulation/rename-classify.R", output="./manipulation/rename-classify.md")
#These first few lines run only when the file is run in RStudio, !!NOT when an Rmd/Rnw file calls it!!
# rm(list=ls(all=TRUE))  #Clear the variables from previous runs.

# ---- load_sources ------------------------------------------------------------
# Call `base::source()` on any repo file that defines functions needed below.  Ideally, no real operations are performed.

# ---- load_packages -----------------------------------------------------------
# Attach these packages so their functions don't need to be qualified: http://r-pkgs.had.co.nz/namespace.html#search-path
library(magrittr) #Pipes

# Verify these packages are available on the machine, but their functions need to be qualified: http://r-pkgs.had.co.nz/namespace.html#search-path
requireNamespace("ggplot2", quietly=TRUE)
requireNamespace("dplyr", quietly=TRUE) #Avoid attaching dplyr, b/c its function names conflict with a lot of packages (esp base, stats, and plyr).
requireNamespace("testit", quietly=TRUE)
# requireNamespace("plyr", quietly=TRUE)

# ---- declare_globals ---------------------------------------------------------
# path_input  <- "./data-phi-free/raw/results-physical-cognitive.csv"
# path_input <- paste0("./data/shared/parsed-results-pc-",study,".csv")
# path_input  <- "./data/shared/parsed-results.csv"
path_input <- "./data/shared/parsed-results-raw.csv"
path_output <- "./data/shared/parsed-results.rds"
figure_path <- './manipulation/stitched_output/'


# ---- load_data ---------------------------------------------------------------
ds0 <- read.csv(path_input, header = T,  stringsAsFactors=FALSE)
# ds0 <- ds0[ds0$study_name==study,]

# ---- tweak_data --------------------------------------------------------------
colnames(ds0)

ds <- ds0 %>% dplyr::arrange_("process_a")


# ---- spell_model_number ------------------------------------------------------
t <- table(ds$model_number, ds$study_name);t[t==0]<-".";t


# ---- spell_subgroup ---------------------------------------------------------
t <- table(ds$subgroup, ds$study_name);t[t==0]<-".";t



# ---- spell_model_type
t <- table(ds$model_type, ds$study_name);t[t==0]<-".";t


# ---- correct_model_type ------------------------------------------------------
# Read in the conversion table, and drop the `notes` variable.
ds_model_type_key <- read.csv("./manipulation/model-type-entry-table.csv", stringsAsFactors = F) %>%
  dplyr::select(-notes)
# Join the model data frame to the conversion data frame.
ds <- ds %>%
  dplyr::left_join(ds_model_type_key, by=c("model_type"="entry"))

t <- table(ds$category_short, ds$study_name);t[t==0]<-".";t
t <- table(ds$model_type, ds$category_short);t[t==0]<-".";t # raw rows, new columns

# Remove the old variable, and rename the cleaned/condensed variable.
ds <- ds %>%
  dplyr::select(-model_type) %>% # remove original entries
  dplyr::rename_("model_type"="category_short") # replace by corrected entries

t <- table(ds$model_type, ds$study_name); t[t==0]<-"."; t


# ---- spell_process_a -------------------------------------------------
t <- table(ds$process_a, ds$study_name); t[t==0]<-"."; t

# ---- correct_process_a ------------------------------------------------
# Read in the conversion table, and drop the `notes` variable.
ds_process_a_key <- read.csv("./manipulation/physical-measure-entry-table.csv", stringsAsFactors = F) %>%
  dplyr::select(-notes)

# Join the model data frame to the conversion data frame.
ds <- ds %>%
  dplyr::left_join(ds_process_a_key, by=c("process_a"="entry"))

# review what has been added by the map
t <- table(ds[ ,"cell_label"], ds[,"study_name"]);t[t==0]<-".";t
t <- table(ds[ ,"row_label"],  ds[,"study_name"]);t[t==0]<-".";t
t <- table(ds[ ,"domain"],     ds[,"study_name"]);t[t==0]<-".";t

t <- table(ds[ ,"process_a"], ds$cell_label);t[t==0]<-".";t # raw rows, new columns

# Remove the old variable, and rename the cleaned/condensed variable.
ds <- ds %>%
  dplyr::select(-process_a) %>%
  dplyr::rename_("process_a"="cell_label") %>%
  dplyr::rename_("process_a_pretty"="row_label") %>%
  dplyr::rename_("process_a_domain"="domain")


t <- table(ds$process_a, ds$study_name); t[t==0]<-"."; t




## @knitr spell_process_b
t <- table(ds$process_b, ds$study_name);t[t==0]<-".";t
d <- ds %>% dplyr::group_by_("process_b","study_name") %>% dplyr::summarize(count=n())
d <- d %>% dplyr::ungroup() %>% dplyr::arrange_("study_name")
knitr::kable(d)

# ---- correct_process_b ------------------------------------------------
# Read in the conversion table, and drop the `notes` variable.
ds_process_b_key <- read.csv("./manipulation/cognitive-measure-entry-table.csv", stringsAsFactors = F) %>%
  dplyr::select(-notes, -mplus_name, -study_name)

# Join the model data frame to the conversion data frame.
# ds <- ds %>%
ds <- ds %>%
  dplyr::left_join(ds_process_b_key, by=c("process_b"="entry"))

t <- table(ds[ ,"cell_label"], ds[,"study_name"]);t[t==0]<-".";t
t <- table(ds[ ,"row_label"],  ds[,"study_name"]);t[t==0]<-".";t
t <- table(ds[ ,"domain"],     ds[,"study_name"]);t[t==0]<-".";t

# the table below may be impractical
t <- table(ds[,"process_b"], ds[,"cell_label"]);t[t==0]<-".";t # raw rows, new columns

# Remove the old variable, and rename the cleaned/condensed variable.
ds <- ds %>%
  dplyr::select(-process_b) %>%
  dplyr::rename_("process_b"="cell_label") %>% # cell_label in metadata become the name of process b
  dplyr::rename_("process_b_pretty"="row_label") %>%
  dplyr::rename_("process_b_domain"="domain")


# t <- table(ds$process_b, ds$study_name); t[t==0]<-"."; t

# d <- ds %>% dplyr::filter(is.na(process_b)) # remove unidentified measures
# show unidentified measures only
# t <- table(d$process_b, d$study_name); t[t==0]<-"."; t

# ---- test_cog_measures ---------------------------------------
t <- table(ds$process_b, ds$study_name);t[t==0]<-".";t
d <- ds %>% dplyr::group_by_("process_b","study_name") %>% dplyr::summarize(count=n())
d <- d %>% dplyr::ungroup() %>% dplyr::arrange_("study_name")
knitr::kable(d)

# ---- test_cog_domain -----------------------------------------
t <- table(ds$process_b, ds$process_b_domain);t[t==0]<-".";t


# ---- export_ready_data ---------------------------------------
saveRDS(ds, path_output)





