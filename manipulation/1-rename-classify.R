# knitr::stitch_rmd(script="./manipulation/rename-classify.R", output="./manipulation/rename-classify.md")
#These first few lines run only when the file is run in RStudio, !!NOT when an Rmd/Rnw file calls it!!
rm(list=ls(all=TRUE))  #Clear the variables from previous runs.

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
path_input      <- "./data/shared/pc-0-parsed-results-raw.csv"
path_output     <- "./data/shared/pc-1-parsed-results.rds"
path_output_csv <- "./data/shared/pc-1-parsed-results.csv"
figure_path     <- './manipulation/stitched_output/'


# ---- load_data ---------------------------------------------------------------
ds0 <- read.csv(path_input, header = T,  stringsAsFactors=FALSE)
# ds0 <- ds0[ds0$study_name==study,]

# ---- tweak_data --------------------------------------------------------------
colnames(ds0)
# ds <- ds0 %>% dplyr::arrange_("model_type", "process_a") %>%
  # dplyr::select_("study_name", "model_number","subgroup","model_type","process_a", "process_b")
ds <- ds0

# ----- load-rename-classify-mapping -------------------------------------
ds_rules <- read.csv("./manipulation/rename-classify-rules.csv", stringsAsFactors = F) %>%
  dplyr::select(-notes,-mplus_name)

# ---- spell_model_number ------------------------------------------------------
t <- table(ds$model_number, ds$study_name);t[t==0]<-".";t


# ---- spell_subgroup ---------------------------------------------------------
t <- table(ds$subgroup, ds$study_name);t[t==0]<-".";t



# ---- spell_model_type -------------------------------------------
t <- table(ds$model_type, ds$study_name);t[t==0]<-".";t


# ---- correct_model_type ------------------------------------------------------
# extract the specific renaming rule
d_rule <- ds_rules %>%
  dplyr::filter(category == "model_type") %>%
  dplyr::select(entry_raw, entry_new)
d_rule
# join the model data frame to the conversion data frame.
ds <- ds %>%
  dplyr::left_join(d_rule, by=c("model_type"="entry_raw"))
# verify
t <- table(ds$entry_new, ds$study_name);t[t==0]<-".";t
t <- table(ds$model_type, ds$entry_new);t[t==0]<-".";t # raw rows, new columns

# # Remove the old variable, and rename the cleaned/condensed variable.
# ds <- ds %>%
#   dplyr::select(-model_type) %>% # remove original entries
#   dplyr::rename("model_type"="category_short") # replace by corrected entries
head(ds)
# Replace raw entries with new entries
ds <- ds %>%
  dplyr::mutate_("model_type"="entry_new") %>%
  dplyr::select(-entry_new)
t <- table(ds$model_type, ds$study_name); t[t==0]<-"."; t


# ---- spell_process_a -------------------------------------------------
t <- table(ds$process_a, ds$study_name); t[t==0]<-"."; t

# ---- correct_process_a ------------------------------------------------
# extract the specific renaming rule
d_rule <- ds_rules %>%
  dplyr::filter(category == "physical") %>%
  dplyr::select(entry_raw, entry_new)
d_rule
# join the model data frame to the conversion data frame.
ds <- ds %>%
  dplyr::left_join(d_rule, by=c("process_a"="entry_raw"))
# verify
t <- table(ds$entry_new, ds$study_name);t[t==0]<-".";t
head(ds)
t <- table(ds[ ,"entry_new"],  ds[,"study_name"]);t[t==0]<-".";t
# Remove the old variable, and rename the cleaned/condensed variable.
ds <- ds %>%
  dplyr::select(-process_a) %>% #dplyr::filter(model_number == "b1") %>%
  dplyr::rename_("process_a"="entry_new") # name correction
# verify
t <- table(ds$process_a, ds$study_name); t[t==0]<-"."; t



# ---- spell_process_b -------------------------------------------------
t <- table(ds$process_b, ds$study_name); t[t==0]<-"."; t
d <- ds %>%
  dplyr::group_by_("study_name","process_b") %>%
  dplyr::summarize(count=n()) %>%
  dplyr::ungroup() %>%
  dplyr::arrange_("study_name")
knitr::kable(d)

# ---- correct_process_b ------------------------------------------------
# extract the specific renaming rule
d_rule <- ds_rules %>%
  dplyr::filter(category == "cognitive") %>%
  dplyr::select(entry_raw,entry_new,label_cell,label_row, domain )
d_rule
# join the model data frame to the conversion data frame.
ds <- ds %>%
  dplyr::left_join(d_rule, by=c("process_b"="entry_raw"))
# verify
t <- table(ds$entry_new, ds$study_name);t[t==0]<-".";t
head(ds)
t <- table(ds[ ,"entry_new"], ds[,"study_name"]);t[t==0]<-".";t
t <- table(ds[ ,"label_cell"],  ds[,"study_name"]);t[t==0]<-".";t
t <- table(ds[ ,"label_row"],  ds[,"study_name"]);t[t==0]<-".";t
t <- table(ds[ ,"domain"],     ds[,"study_name"]);t[t==0]<-".";t
# Remove the old variable, and rename the cleaned/condensed variable.
ds <- ds %>%
  dplyr::select(-process_b) %>%
  dplyr::rename_("process_b"="entry_new") %>% # name correction
  dplyr::rename_("process_b_cell"="label_cell") %>%
  dplyr::rename_("process_b_row"="label_row") %>%
  dplyr::rename_("process_b_domain"="domain")
# verify
t <- table(ds$process_b_row, ds$study_name); t[t==0]<-"."; t

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
readr::write_csv(ds,path_output_csv)




