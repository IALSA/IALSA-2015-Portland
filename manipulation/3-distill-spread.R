# This R script is used by
#
rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

# ---- load-sources ------------------------------------------------------------
#Load any source files that contain/define functions, but that don't load any other types of variables
#   into memory.  Avoid side effects and don't pollute the global environment.
source("./scripts/mplus/model-components.R") # organizes variable names

# ---- load-packages -----------------------------------------------------------
library(magrittr) #Pipes
library(ggplot2)
requireNamespace("knitr")
requireNamespace("dplyr")
requireNamespace("tidyr")
requireNamespace("DT")
requireNamespace("scales")

# ---- declare-globals ---------------------------------------------------------
options(show.signif.stars=F) #Turn off the annotations on p-values
path_input  <- "./data/shared/pc-2-catalog-augmented.csv"
path_output_csv <- "./data/shared/derived/pc-spread.csv"
path_output_rds <- "./data/shared/derived/pc-spread.rds"

# custom function
coefficient_of_variation <- function(x)( sd(x)/mean(x) )
# the structure of coefficient suffixes
regex_general <- "^(a|b|aa|bb|ab|er|cr)_(\\w+)_(\\d{2})_(est|se|wald|pval|ci95_lower|ci95_upper)$"

# ---- load-data ---------------------------------------------------------------
# ds_full <- readRDS(path_input) # catalog
ds_full <- read.csv(path_input, header = T,  stringsAsFactors=FALSE)
# rm(path_input)
# create a small ds for testing
ds_small <- ds_full %>%
  dplyr::filter(
     study_name == "octo"
    ,process_a  == "grip"
    ,process_b  == "gait"
    ,subgroup   == "female"
    ,model_type == "aehplus"
  )
ds_full %>% dplyr::glimpse()

domain_renaming_stencil <- readr::read_csv("./reports/correlation-3/pulmonary-domain-structure-dead.csv")
domain_renaming_stencil %>% dplyr::glimpse()
# ---- tweak-data --------------------------------------------------------------

# ---- elongate-raw-outcomes -------------------------------------------------
ds_long <- ds_full %>%
  dplyr::select_(
    .dots=c(
       model_components[["id"]]
      ,model_components[["process_id"]]
      ,model_components[["info"]]
      ,model_components[["fixed"]]
      ,model_components[["random"]]
      ,model_components[["estimated_r"]]
      # ,model_components[["computed_r"]]
      # ,model_components[["compute_corr"]]
    )
  )  %>%
  dplyr::filter( !is.na(process_a) & !is.na(process_b) ) %>%  # remove univariate models
  # dplyr::filter( model_number %in% c("b1"))    # same as above, remove univariate models, but more restrictive
  dplyr::filter( process_a!="nophys" & process_b!="nocog" ) %>% # remove univariate models
  tidyr::gather_("g", "value", c(
       model_components[["fixed"]]
      ,model_components[["random"]]
      ,model_components[["estimated_r"]]
    )
  ) %>% # BISR + covariates
  dplyr::mutate(
    process      = gsub(regex_general, "\\1", g, perl=T),
    coefficient  = gsub(regex_general, "\\2", g, perl=T),
    subindex     = gsub(regex_general, "\\3", g, perl=T),
    stat         = gsub(regex_general, "\\4", g, perl=T)
  )
ds_long %>% dplyr::glimpse()

# impose specific domain structure
ds_long <- ds_long %>%
  dplyr::left_join(domain_renaming_stencil, by = c("study_name", "process_b","process_b_domain")) %>%
  dplyr::mutate(process_b_domain = domain_new) %>% # overwrite with new values
  dplyr::select(-domain_new)   # remove dublicated columns
ds_long %>% dplyr::glimpse()
temp <- ds_long
# rm(ds_order_gamma, ds_full, variables_part_3) #variables_part_1
rm(ds_order_gamma)
# temp <- ds_long





# ---- table-dynamic-long ----------------------------------------
# inspect the created object via dynamic table
# ds_long %>%
#   dplyr::mutate(
#     # study_name    = factor(study_name),
#     process_a      = factor(process_a),
#     process_b      = factor(process_b),
#     process        = factor(process),
#     subgroup       = factor(subgroup),
#     coefficient    = factor(coefficient),
#     stat           = factor(stat)
#   ) %>%
#   # dplyr::filter(model_type=="aehplus" & subgroup=="female" & process_a=="grip") %>%
#   dplyr::filter(model_type=="aehplus" & subgroup=="female" & process_a=="grip" & study_name =="map") %>%
#   dplyr::select(-g, -model_type, -subgroup, -process_a, -parameter_count) %>%
#   DT::datatable(
#     class     = 'cell-border stripe',
#     caption   = "Growth Curve Model Solution --Long Format",
#     filter    = "top",
#     options   = list(pageLength = 6, autoWidth = TRUE)
#   )

# ---- remove-duplicates ----------------------------------------
define_duplicates <- c(  model_components[["id"]]
                        ,model_components[["process_id"]]
                        ,model_components[["info"]]
                        ,"process", "coefficient","subindex", "stat"
                        ) # all, but "value"
ds_no_duplicates <- ds_long %>%
  dplyr::group_by_( .dots  = define_duplicates ) %>%
  dplyr::summarize( value  = mean(value, na.rm=T) ) %>%
  dplyr::ungroup()
# compile dataframe of dublicate rows, should have 0
ds_find_duplicates <- ds_long %>%
  dplyr::distinct() %>% #Drops it from 256 rows to 56 rows.
  dplyr::group_by_( .dots  = define_duplicates ) %>%
  dplyr::filter(!is.na(value)) %>% #Drops from 56 rows to 8 rows.  !!Careful that you don't remove legit NAs (esp, in nonduplicated rows).
  dplyr::summarize(
    count      = n(),
    values     = paste(value, collapse=";"),
    value_cv   = coefficient_of_variation(value)
  ) %>%
  dplyr::ungroup() %>%
  dplyr::filter(1<count) %>%
  dplyr::filter(.001 < value_cv) #Drops from 8 to 0 rows.

testit::assert("Pool contains duplicates", !nrow(ds_find_duplicates)>0L)

# testit::assert("No meaningful duplicate rows should exist.", nrow(ds_find_duplicates)==0L)
# rm(variables_part_1, variables_part_2, ds_find_duplicates)

# ---- distill-spread ------------------------------------------------------------------
ds_spread <- ds_no_duplicates %>%
  # dplyr::select(-spread_lower, -spread_upper, -cv) %>%
  tidyr::spread(key=stat, value=value)# %>%
# temp <- ds_spread
# create a csv manhole
readr::write_csv(ds_spread, path_output_csv)
saveRDS(         ds_spread, path_output_rds)

# readr::write_csv(ds_spread, "./data/shared/derived/pp-spread.csv")
# saveRDS(         ds_spread, "./data/shared/derived/pp-spread.rds")
