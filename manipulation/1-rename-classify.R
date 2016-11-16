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
# d <- ds %>%
  # dplyr::filter(
  #   study_name == "elsa"
  # )
  dplyr::left_join(d_rule, by=c("process_b"="entry_raw"))
  # dplyr::inner_join(d_rule, by=c("process_b"="entry_raw"))
# verify
t <- table(ds$entry_new, ds$study_name);t[t==0]<-".";t
head(ds)
# temp <- ds %>%
#   dplyr::filter(
#     study_name == "elsa"
#   ) %>%
#   dplyr::select(variables_part_)

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


# ---- rename-indices ------------------------------------------


ds <- ds %>%
  # ds_long <- ds_small %>%
  dplyr::rename_(
    # general model information
      "study_name"                  = "`study_name`"
    , "model_number"                = "`model_number`"
    , "subgroup"                    = "`subgroup`"
    , "model_type"                  = "`model_type`"
    , "subject_count"               = "`subject_count`"
    , "wave_count"                  = "`wave_count`"
    , "datapoint_count"             = "`datapoint_count`"
    , "parameter_count"             = "`parameter_count`"
    , "ll"                          = "`LL`"
    , "aic"                         = "`aic`"
    , "bic"                         = "`bic`"
    , "adj_bic"                     = "`adj_bic`"
    , "aaic"                        = "`aaic`"
    , "has_converged"               = "`has_converged`"
    , "trust_all"                   = "`trust_all`"
    , "mistrust"                    = "`mistrust`"
    , "covar_covered"               = "`covar_covered`"
    # estimates of intercepts and slopes
    , "aa_tau_00_est"               = "`aa_TAU_00_est`"
    , "aa_tau_00_se"                = "`aa_TAU_00_se`"
    , "aa_tau_00_wald"              = "`aa_TAU_00_wald`"
    , "aa_tau_00_pval"              = "`aa_TAU_00_pval`"
    , "aa_tau_11_est"               = "`aa_TAU_11_est`"
    , "aa_tau_11_se"                = "`aa_TAU_11_se`"
    , "aa_tau_11_wald"              = "`aa_TAU_11_wald`"
    , "aa_tau_11_pval"              = "`aa_TAU_11_pval`"
    , "bb_tau_00_est"               = "`bb_TAU_00_est`"
    , "bb_tau_00_se"                = "`bb_TAU_00_se`"
    , "bb_tau_00_wald"              = "`bb_TAU_00_wald`"
    , "bb_tau_00_pval"              = "`bb_TAU_00_pval`"
    , "bb_tau_11_est"               = "`bb_TAU_11_est`"
    , "bb_tau_11_se"                = "`bb_TAU_11_se`"
    , "bb_tau_11_wald"              = "`bb_TAU_11_wald`"
    , "bb_tau_11_pval"              = "`bb_TAU_11_pval`"

    , "aa_tau_01_est"               = "`aa_TAU_01_est`"
    , "aa_tau_01_se"                = "`aa_TAU_01_se`"
    , "aa_tau_01_wald"              = "`aa_TAU_01_wald`"
    , "aa_tau_01_pval"              = "`aa_TAU_01_pval`"
    , "bb_tau_10_est"               = "`bb_TAU_10_est`"
    , "bb_tau_10_se"                = "`bb_TAU_10_se`"
    , "bb_tau_10_wald"              = "`bb_TAU_10_wald`"
    , "bb_tau_10_pval"              = "`bb_TAU_10_pval`"

    # we arbitraraly assing residual to 00, to keep names consistent, no implications
    , "a_sigma_00_est"              = "`a_SIGMA_est`"
    , "a_sigma_00_se"               = "`a_SIGMA_se`"
    , "a_sigma_00_wald"             = "`a_SIGMA_wald`"
    , "a_sigma_00_pval"             = "`a_SIGMA_pval`"
    , "b_sigma_00_est"              = "`b_SIGMA_est`"
    , "b_sigma_00_se"               = "`b_SIGMA_se`"
    , "b_sigma_00_wald"             = "`b_SIGMA_wald`"
    , "b_sigma_00_pval"             = "`b_SIGMA_pval`"
    ,"ab_sigma_00_est"              = "ab_SIGMA_est"
    ,"ab_sigma_00_se"               = "ab_SIGMA_se"
    ,"ab_sigma_00_wald"             = "ab_SIGMA_wald"
    ,"ab_sigma_00_pval"             = "ab_SIGMA_pval"
    # covariances of intecepts and slopes
    , "ab_tau_00_est"               = "`ab_TAU_00_est`"
    , "ab_tau_00_se"                = "`ab_TAU_00_se`"
    , "ab_tau_00_wald"              = "`ab_TAU_00_wald`"
    , "ab_tau_00_pval"              = "`ab_TAU_00_pval`"
    , "ab_tau_11_est"               = "`ab_TAU_11_est`"
    , "ab_tau_11_se"                = "`ab_TAU_11_se`"
    , "ab_tau_11_wald"              = "`ab_TAU_11_wald`"
    , "ab_tau_11_pval"              = "`ab_TAU_11_pval`"
    , "ab_tau_01_est"               = "`ab_TAU_01_est`"
    , "ab_tau_01_se"                = "`ab_TAU_01_se`"
    , "ab_tau_01_wald"              = "`ab_TAU_01_wald`"
    , "ab_tau_01_pval"              = "`ab_TAU_01_pval`"
    , "ab_tau_10_est"               = "`ab_TAU_10_est`"
    , "ab_tau_10_se"                = "`ab_TAU_10_se`"
    , "ab_tau_10_wald"              = "`ab_TAU_10_wald`"
    , "ab_tau_10_pval"              = "`ab_TAU_10_pval`"
    # (e)stimated co(r)relations of intercepts, slopes, and residuals
    , "er_tau_00_est"                 = "R_IAIB_est"
    , "er_tau_00_se"                  = "R_IAIB_se"
    , "er_tau_00_wald"                = "R_IAIB_wald"
    , "er_tau_00_pval"                = "R_IAIB_pval"
    , "er_tau_11_est"                 = "R_SASB_est"
    , "er_tau_11_se"                  = "R_SASB_se"
    , "er_tau_11_wald"                = "R_SASB_wald"
    , "er_tau_11_pval"                = "R_SASB_pval"
    , "er_sigma_00_est"               = "R_RES_AB_est"
    , "er_sigma_00_se"                = "R_RES_AB_se"
    , "er_sigma_00_wald"              = "R_RES_AB_wald"
    , "er_sigma_00_pval"              = "R_RES_AB_pval"

    # estimates of covariates
    , "a_gamma_00_est"              = "`a_GAMMA_00_est`"
    , "a_gamma_00_se"               = "`a_GAMMA_00_se`"
    , "a_gamma_00_wald"             = "`a_GAMMA_00_wald`"
    , "a_gamma_00_pval"             = "`a_GAMMA_00_pval`"
    , "a_gamma_10_est"              = "`a_GAMMA_10_est`"
    , "a_gamma_10_se"               = "`a_GAMMA_10_se`"
    , "a_gamma_10_wald"             = "`a_GAMMA_10_wald`"
    , "a_gamma_10_pval"             = "`a_GAMMA_10_pval`"
    , "a_gamma_01_est"              = "`a_GAMMA_01_est`"
    , "a_gamma_01_se"               = "`a_GAMMA_01_se`"
    , "a_gamma_01_wald"             = "`a_GAMMA_01_wald`"
    , "a_gamma_01_pval"             = "`a_GAMMA_01_pval`"
    , "b_gamma_00_est"              = "`b_GAMMA_00_est`"
    , "b_gamma_00_se"               = "`b_GAMMA_00_se`"
    , "b_gamma_00_wald"             = "`b_GAMMA_00_wald`"
    , "b_gamma_00_pval"             = "`b_GAMMA_00_pval`"
    , "b_gamma_10_est"              = "`b_GAMMA_10_est`"
    , "b_gamma_10_se"               = "`b_GAMMA_10_se`"
    , "b_gamma_10_wald"             = "`b_GAMMA_10_wald`"
    , "b_gamma_10_pval"             = "`b_GAMMA_10_pval`"
    , "a_gamma_01_est"              = "`a_GAMMA_01_est`"
    , "a_gamma_01_se"               = "`a_GAMMA_01_se`"
    , "a_gamma_01_wald"             = "`a_GAMMA_01_wald`"
    , "a_gamma_01_pval"             = "`a_GAMMA_01_pval`"
    , "a_gamma_11_est"              = "`a_GAMMA_11_est`"
    , "a_gamma_11_se"               = "`a_GAMMA_11_se`"
    , "a_gamma_11_wald"             = "`a_GAMMA_11_wald`"
    , "a_gamma_11_pval"             = "`a_GAMMA_11_pval`"
    , "b_gamma_01_est"              = "`b_GAMMA_01_est`"
    , "b_gamma_01_se"               = "`b_GAMMA_01_se`"
    , "b_gamma_01_wald"             = "`b_GAMMA_01_wald`"
    , "b_gamma_01_pval"             = "`b_GAMMA_01_pval`"
    , "b_gamma_11_est"              = "`b_GAMMA_11_est`"
    , "b_gamma_11_se"               = "`b_GAMMA_11_se`"
    , "b_gamma_11_wald"             = "`b_GAMMA_11_wald`"
    , "b_gamma_11_pval"             = "`b_GAMMA_11_pval`"
    , "a_gamma_02_est"              = "`a_GAMMA_02_est`"
    , "a_gamma_02_se"               = "`a_GAMMA_02_se`"
    , "a_gamma_02_wald"             = "`a_GAMMA_02_wald`"
    , "a_gamma_02_pval"             = "`a_GAMMA_02_pval`"
    , "a_gamma_12_est"              = "`a_GAMMA_12_est`"
    , "a_gamma_12_se"               = "`a_GAMMA_12_se`"
    , "a_gamma_12_wald"             = "`a_GAMMA_12_wald`"
    , "a_gamma_12_pval"             = "`a_GAMMA_12_pval`"
    , "b_gamma_02_est"              = "`b_GAMMA_02_est`"
    , "b_gamma_02_se"               = "`b_GAMMA_02_se`"
    , "b_gamma_02_wald"             = "`b_GAMMA_02_wald`"
    , "b_gamma_02_pval"             = "`b_GAMMA_02_pval`"
    , "b_gamma_12_est"              = "`b_GAMMA_12_est`"
    , "b_gamma_12_se"               = "`b_GAMMA_12_se`"
    , "b_gamma_12_wald"             = "`b_GAMMA_12_wald`"
    , "b_gamma_12_pval"             = "`b_GAMMA_12_pval`"
    , "a_gamma_03_est"              = "`a_GAMMA_03_est`"
    , "a_gamma_03_se"               = "`a_GAMMA_03_se`"
    , "a_gamma_03_wald"             = "`a_GAMMA_03_wald`"
    , "a_gamma_03_pval"             = "`a_GAMMA_03_pval`"
    , "a_gamma_13_est"              = "`a_GAMMA_13_est`"
    , "a_gamma_13_se"               = "`a_GAMMA_13_se`"
    , "a_gamma_13_wald"             = "`a_GAMMA_13_wald`"
    , "a_gamma_13_pval"             = "`a_GAMMA_13_pval`"
    , "b_gamma_03_est"              = "`b_GAMMA_03_est`"
    , "b_gamma_03_se"               = "`b_GAMMA_03_se`"
    , "b_gamma_03_wald"             = "`b_GAMMA_03_wald`"
    , "b_gamma_03_pval"             = "`b_GAMMA_03_pval`"
    , "b_gamma_13_est"              = "`b_GAMMA_13_est`"
    , "b_gamma_13_se"               = "`b_GAMMA_13_se`"
    , "b_gamma_13_wald"             = "`b_GAMMA_13_wald`"
    , "b_gamma_13_pval"             = "`b_GAMMA_13_pval`"
    , "a_gamma_04_est"              = "`a_GAMMA_04_est`"
    , "a_gamma_04_se"               = "`a_GAMMA_04_se`"
    , "a_gamma_04_wald"             = "`a_GAMMA_04_wald`"
    , "a_gamma_04_pval"             = "`a_GAMMA_04_pval`"
    , "a_gamma_14_est"              = "`a_GAMMA_14_est`"
    , "a_gamma_14_se"               = "`a_GAMMA_14_se`"
    , "a_gamma_14_wald"             = "`a_GAMMA_14_wald`"
    , "a_gamma_14_pval"             = "`a_GAMMA_14_pval`"
    , "b_gamma_04_est"              = "`b_GAMMA_04_est`"
    , "b_gamma_04_se"               = "`b_GAMMA_04_se`"
    , "b_gamma_04_wald"             = "`b_GAMMA_04_wald`"
    , "b_gamma_04_pval"             = "`b_GAMMA_04_pval`"
    , "b_gamma_14_est"              = "`b_GAMMA_14_est`"
    , "b_gamma_14_se"               = "`b_GAMMA_14_se`"
    , "b_gamma_14_wald"             = "`b_GAMMA_14_wald`"
    , "b_gamma_14_pval"             = "`b_GAMMA_14_pval`"
    , "a_gamma_05_est"              = "`a_GAMMA_05_est`"
    , "a_gamma_05_se"               = "`a_GAMMA_05_se`"
    , "a_gamma_05_wald"             = "`a_GAMMA_05_wald`"
    , "a_gamma_05_pval"             = "`a_GAMMA_05_pval`"
    , "a_gamma_15_est"              = "`a_GAMMA_15_est`"
    , "a_gamma_15_se"               = "`a_GAMMA_15_se`"
    , "a_gamma_15_wald"             = "`a_GAMMA_15_wald`"
    , "a_gamma_15_pval"             = "`a_GAMMA_15_pval`"
    , "b_gamma_05_est"              = "`b_GAMMA_05_est`"
    , "b_gamma_05_se"               = "`b_GAMMA_05_se`"
    , "b_gamma_05_wald"             = "`b_GAMMA_05_wald`"
    , "b_gamma_05_pval"             = "`b_GAMMA_05_pval`"
    , "b_gamma_15_est"              = "`b_GAMMA_15_est`"
    , "b_gamma_15_se"               = "`b_GAMMA_15_se`"
    , "b_gamma_15_wald"             = "`b_GAMMA_15_wald`"
    , "b_gamma_15_pval"             = "`b_GAMMA_15_pval`"
    , "a_gamma_06_est"              = "`a_GAMMA_06_est`"
    , "a_gamma_06_se"               = "`a_GAMMA_06_se`"
    , "a_gamma_06_wald"             = "`a_GAMMA_06_wald`"
    , "a_gamma_06_pval"             = "`a_GAMMA_06_pval`"
    , "a_gamma_16_est"              = "`a_GAMMA_16_est`"
    , "a_gamma_16_se"               = "`a_GAMMA_16_se`"
    , "a_gamma_16_wald"             = "`a_GAMMA_16_wald`"
    , "a_gamma_16_pval"             = "`a_GAMMA_16_pval`"
    , "b_gamma_06_est"              = "`b_GAMMA_06_est`"
    , "b_gamma_06_se"               = "`b_GAMMA_06_se`"
    , "b_gamma_06_wald"             = "`b_GAMMA_06_wald`"
    , "b_gamma_06_pval"             = "`b_GAMMA_06_pval`"
    , "b_gamma_16_est"              = "`b_GAMMA_16_est`"
    , "b_gamma_16_se"               = "`b_GAMMA_16_se`"
    , "b_gamma_16_wald"             = "`b_GAMMA_16_wald`"
    , "b_gamma_16_pval"             = "`b_GAMMA_16_pval`"
  )
# ---- export_ready_data ---------------------------------------
saveRDS(ds, path_output)
readr::write_csv(ds,path_output_csv)




