rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

# ---- load-sources ------------------------------------------------------------
#Load any source files that contain/define functions, but that don't load any other types of variables
#   into memory.  Avoid side effects and don't pollute the global environment.

# ---- load-packages -----------------------------------------------------------
library(magrittr) #Pipes
requireNamespace("knitr")
requireNamespace("dplyr")
requireNamespace("tidyr")
requireNamespace("DT")

# ---- declare-globals ---------------------------------------------------------
options(show.signif.stars=F) #Turn off the annotations on p-values
path_input <- "./data/shared/parsed-results.rds"

# ---- load-data ---------------------------------------------------------------
ds_full <- readRDS(path_input)

rm(path_input)
# ---- tweak-data --------------------------------------------------------------

# simplify ----
variables_part_1 <- c(
  "study_name",
  "process_a",
  "process_b",
  "subgroup",           # male & female
  "model_type"          # 0 , a, ae, aeh, aeh+, & full
)

# variables_part_4 <- grep(regex_gamma, colnames(ds_full), perl=T, value=T)
regex_gamma <- "^([ab])_GAMMA_([01]{2})_(est|se|wald|pval)$"
# regex_gamma <- "^([ab])_GAMMA_([0]{2})_(est)$"

ds_order_gamma <- expand.grid(#tidyr::crossing(
  stat      = c("est", "se", "wald", "pval"),
  term      = c("00", "10"), #c("00", "01", "10", "11"),
  process   = c("a", "b"),
  stringsAsFactors = FALSE
)

variables_part_4 <- sprintf(
  "%s_GAMMA_%s_%s",
  ds_order_gamma$process,
  ds_order_gamma$term,
  ds_order_gamma$stat
)

# elongate ----
ds_long <- ds_full %>%
  dplyr::select_(.dots=c(variables_part_1, variables_part_4)) %>%
  dplyr::filter(
    !is.na(process_a) & !is.na(process_b)
  ) %>%
  tidyr::gather_("gamma", "value", variables_part_4) %>%
  dplyr::mutate(
    stem      = gsub(regex_gamma, "\\1_\\2", gamma, perl=T),
    stat      = gsub(regex_gamma, "\\3", gamma, perl=T)
    # value     = ifelse(stem=="pval")
  )



rm(ds_order_gamma, ds_full, variables_part_4) #variables_part_1

# remove-duplicates ----
ds_no_duplicates <- ds_long %>%
  dplyr::group_by_(
    .dots=c(variables_part_1, "gamma", "stem", "stat") #Lacks "value"
  ) %>%
  dplyr::summarize(
    # value  = dplyr::first(value, na.rm=T)
    value  = mean(value, na.rm=T)
  ) %>%
  dplyr::ungroup()


coefficient_of_variation <- function(x)( sd(x)/mean(x) )
ds_find_duplicates <- ds_long %>%
  dplyr::distinct() %>% #Drops it from 256 rows to 56 rows.
  dplyr::group_by_(
    .dots=c(variables_part_1, "gamma", "stem", "stat")
  ) %>%  #Lacks "value"
  dplyr::filter(!is.na(value)) %>% #Drops from 56 rows to 8 rows.  !!Careful that you don't remove legit NAs (esp, in nonduplicated rows).
  dplyr::summarize(
    count      = n(),
    values     = paste(value, collapse=";"),
    value_cv   = coefficient_of_variation(value)
  ) %>%
  dplyr::ungroup() %>%
  dplyr::filter(1<count) %>%
  dplyr::filter(.001 < value_cv) #Drops from 8 to 0 rows.

# testit::assert("No meaningful duplicate rows should exist.", nrow(ds_find_duplicates)==0L)
rm(ds_find_duplicates)

# spread-to-stem ----
ds_spread_1 <- ds_no_duplicates %>%
  dplyr::select(-gamma) %>%
  tidyr::spread(stat, value) %>%
  dplyr::mutate(
    pval_pretty   = sprintf("%0.2f", pval), #Remove leading zero from p-value.
    pval_pretty   = ifelse(pval>.99, ".99", sub("^0(.\\d+)$", "\\1", pval_pretty)), #Remove leading zero from p-value.
    dense         = sprintf("%+0.3f(%0.3f),$p$=%s", est, se, pval_pretty) #Force est & se to have three decimals (eg, .1 turns into .100).
  ) %>%
  dplyr::select(-est, -se, -wald, -pval, -pval_pretty)

# widen ----
ds <- ds_spread_1 %>%
  dplyr::mutate(
    stem  = gsub("^(\\w)_(\\d{2})$", "\\1_gamma_\\2", stem)
  ) %>%
  tidyr::spread(stem, dense) %>%
  dplyr::arrange(study_name, process_a, process_b, subgroup, model_type)


# ---- prettify ----------------------------------------------------------------
ds_dynamic_pretty <- ds %>%
  dplyr::mutate(
    a_gamma_00    = sub("\\$p\\$", "p", a_gamma_00),
    a_gamma_10    = sub("\\$p\\$", "p", a_gamma_10),
    b_gamma_00    = sub("\\$p\\$", "p", b_gamma_00),
    b_gamma_10    = sub("\\$p\\$", "p", b_gamma_10)
  )
colnames(ds_dynamic_pretty) <- gsub("_", " ", colnames(ds_dynamic_pretty))

ds_static_pretty <- ds %>%
  dplyr::filter(model_type=="aehplus") %>%
  dplyr::mutate(
    process       = paste0(process_a, "--", process_b)#,
    # table_header  = paste0(study_name, ": ", process)
  ) %>%
  dplyr::select(-model_type, -process_a, -process_b)

ds_static_pretty <- ds_static_pretty %>%
  dplyr::select_(.dots=c("study_name", "process", "subgroup", setdiff(colnames(ds_static_pretty), c("study_name", "process", "subgroup"))))

# ---- verify-values -----------------------------------------------------------


# ---- table-dynamic -----------------------------------------------------------
ds_dynamic_pretty %>%
  DT::datatable(
    class     = 'cell-border stripe',
    caption   = "Growth Curve Model Solution -by Study",
    filter    = "top",
    options   = list(pageLength = 6, autoWidth = TRUE)
  )


# ---- table-static ------------------------------------------------------------

for( study in unique(ds$study_name) ) {
  cat("\n\n## ", study, "\n\n")
  ds_static_pretty %>%
    dplyr::filter(study_name==study) %>%
    dplyr::select(-study_name) %>%
    knitr::kable(format="markdown") %>%
    print()

}

