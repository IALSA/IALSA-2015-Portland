rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

# ---- load-sources ------------------------------------------------------------
#Load any source files that contain/define functions, but that don't load any other types of variables
#   into memory.  Avoid side effects and don't pollute the global environment.

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
path_input <- "./data/shared/parsed-results.rds"

# simplify ----
variables_part_1 <- c(
  "study_name",
  "process_a",
  "process_b",
  "subgroup",           # male & female
  "model_type"          # 0 , a, ae, aeh, aeh+, & full
)

# variables_part_4 <- grep(regex_r, colnames(ds_full), perl=T, value=T)
regex_gamma <- "^(a|b)_gamma_(\\d{2})_(est|se|wald|pval|ci95_lower|ci95_upper)$"

coefficients_possible <- c("00", "10", "01", "11", "02", "12", "03", "13", "04", "14", "05", "15", "06", "16")
stats_possible        <- c("est", "se", "wald", "pval")#, "ci95_lower", "ci95_upper")
ds_order_gamma <- tidyr::crossing(
  process       = c("a", "b"),
  ceofficient   = factor(coefficients_possible, levels=coefficients_possible),
  stat          = factor(stats_possible       , levels=stats_possible)
)

coefficient_key <- c(
  "0"  = "intercept",
  "1"  = "age",
  "2"  = "education",
  "3"  = "height",
  "4"  = "smoking",
  "5"  = "cardio",
  "6"  = "diabetes"
)

#, "ci95_lower", "ci95_upper"),

variables_part_4a <- c(
  "subject_count",
  "parameter_count"
)

# ---- load-data ---------------------------------------------------------------
ds_full <- readRDS(path_input)
rm(path_input)

# ---- tweak-data --------------------------------------------------------------
# OuhscMunge::column_rename_headstart(ds_full)
variables_part_4b <- sprintf(
  "%s_gamma_%s_%s",
  ds_order_gamma$process,
  ds_order_gamma$ceofficient,
  ds_order_gamma$stat
)

# elongate ----
ds_long <- ds_full %>%
  dplyr::rename_(
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
  ) %>%
  # dplyr::mutate(
  #   t_crit                = qt(subject_count - parameter_count, p=.975),
  #   a_gamma_00_radius     = t_crit * a_gamma_00_se,
  #   a_gamma_10_radius     = t_crit * a_gamma_10_se,
  #   b_gamma_00_radius     = t_crit * b_gamma_00_se,
  #   b_gamma_10_radius     = t_crit * b_gamma_10_se,
  #
  #   a_gamma_00_ci95_lower = a_gamma_00_est - a_gamma_00_radius,
  #   a_gamma_00_ci95_upper = a_gamma_00_est + a_gamma_00_radius,
  #   a_gamma_10_ci95_lower = a_gamma_10_est - a_gamma_10_radius,
  #   a_gamma_10_ci95_upper = a_gamma_10_est + a_gamma_10_radius,
  #
  #   b_gamma_00_ci95_lower = b_gamma_00_est - b_gamma_00_radius,
  #   b_gamma_00_ci95_upper = b_gamma_00_est + b_gamma_00_radius,
  #   b_gamma_10_ci95_lower = b_gamma_10_est - b_gamma_10_radius,
  #   b_gamma_10_ci95_upper = b_gamma_10_est + b_gamma_10_radius
  # ) %>%
  dplyr::select_(.dots=c(variables_part_1, variables_part_4a, variables_part_4b))  %>%
  dplyr::filter( !is.na(process_a) & !is.na(process_b) ) %>%
  dplyr::filter( process_a!="nophys" & process_b!="nocog" ) %>%
  tidyr::gather_("g", "value", variables_part_4b) %>%
  dplyr::mutate(
    process      = gsub(regex_gamma, "\\1", g, perl=T),
    coefficient  = gsub(regex_gamma, "\\2", g, perl=T),
    stat         = gsub(regex_gamma, "\\3", g, perl=T)
  )
rm(ds_order_gamma, ds_full, variables_part_4b) #variables_part_1

# ---- table-dynamic-long ----------------------------------------
ds_long %>%
  dplyr::filter(model_type=="aehplus" & subgroup=="female" & process_a=="gait") %>%
  dplyr::select(-g, -model_type, -subgroup, -process_a, -parameter_count) %>%
  DT::datatable(
    class     = 'cell-border stripe',
    caption   = "Growth Curve Model Solution --Long Format",
    filter    = "top",
    options   = list(pageLength = 6, autoWidth = TRUE)
  )

# ---- remove-duplicates ----------------------------------------
ds_no_duplicates <- ds_long %>%
  dplyr::group_by_(
    .dots=c(variables_part_1, variables_part_4a, "process", "process_a", "process_b", "coefficient", "stat") #Lacks "value"
    # .dots=c(variables_part_1, variables_part_4a, "process", "breed", "species", "stat") #Lacks "value"
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
    .dots=c(variables_part_1, variables_part_4a, "process", "process_a", "process_b", "coefficient", "stat")
    # .dots=c(variables_part_1, variables_part_4a,  "process", "breed", "species", "stat")
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
# rm(variables_part_1, variables_part_4a, ds_find_duplicates)

# ---- collapse-within-process ----------------------------------------
ds_collapsed_physical <- ds_no_duplicates %>%
  dplyr::filter(process=="a") %>%
  dplyr::select(-process) %>%
  dplyr::group_by_(.dots=c("study_name", "process_a", "subgroup", "model_type", "coefficient", "stat")) %>%
  dplyr::summarize(
    subject_count   = as.integer(median(subject_count, na.rm=T)),
    spread_lower    = min(value, na.rm=T),
    spread_upper    = max(value, na.rm=T),
    value           = median(value, na.rm=T)
  ) %>%
  dplyr::ungroup() %>%
  dplyr::rename_("process" = "process_a")

ds_collapsed_cognitive <- ds_no_duplicates %>%
  dplyr::filter(process=="b") %>%
  dplyr::select(-process) %>%
  dplyr::group_by_(.dots=c("study_name", "process_b", "subgroup", "model_type", "coefficient", "stat")) %>%
  dplyr::summarize(
    subject_count   = as.integer(median(subject_count, na.rm=T)),
    spread_lower    = min(value, na.rm=T),
    spread_upper    = max(value, na.rm=T),
    value           = median(value, na.rm=T)
  ) %>%
  dplyr::ungroup() %>%
  dplyr::rename_("process" = "process_b")

ds_collapsed <- ds_collapsed_physical %>%
  dplyr::union(ds_collapsed_cognitive) %>%
  dplyr::arrange(study_name, process, subgroup, model_type, coefficient, stat)

rm(ds_collapsed_physical, ds_collapsed_cognitive)


# ---- spread ------------------------------------------------------------------
pattern_est <- c(
  "intercept"    = "%0.2f",
  "slope"        = "%0.2f"
)
pattern_se <- c(
  "intercept"    = "%0.2f",
  "slope"        = "%0.2f"
)
pattern_dense <- c(
  "intercept"    = "%6s(%4s),%7s",
  "slope"        = "%6s(%4s),%7s"
)

# spread-to-stem ----
ds_spread <- ds_collapsed %>%
  dplyr::select(-spread_lower, -spread_upper) %>%
  tidyr::spread(key=stat, value=value) %>%
  dplyr::mutate(
    breed        = as.integer(gsub("^([01])(\\d)$", "\\1", coefficient)),
    species      = as.integer(gsub("^([01])(\\d)$", "\\2", coefficient)),
    breed        = ifelse(breed==0L, "intercept", ifelse(breed==1L, "slope", NA_character_))
    # is_intercept = grepl("^0\\d$", coefficient),
    # is_slope     = grepl("^1\\d$", coefficient),
    # breed        = ifelse(is_intercept, "intercept", ifelse(is_slope, "slope", NA_character_))
  ) #%>%
# dplyr::select(-is_intercept, -is_slope)
# testit::assert("A value should be from only an intercept or a slope, but not both.", all(xor(ds_long$is_intercept, ds_long$is_slope)))
testit::assert("A value should be from only an intercept or a slope.", all(!is.na(ds_spread$breed)))

# create a csv manhole
readr::write_csv(ds_spread, "./data/shared/tables/growth-curve-1-spread.csv")

ds_spread_pretty <- ds_spread %>%
  dplyr::mutate(
    subject_count = scales::comma(subject_count),
    est_pretty    = sprintf(pattern_est[1], est),
    se_pretty     = sprintf(pattern_se[1], se),
    pval_pretty   = sprintf("%0.2f", pval), #Remove leading zero from p-value.
    pval_pretty   = ifelse(pval>.99, ".99", sub("^0(.\\d+)$", "\\1", pval_pretty)), #Cap p-value at .99
    pval_pretty   = sprintf("$p$=%s", pval_pretty),
    pval_pretty   = ifelse(pval_pretty=="$p$=.00", "$p$<.01", pval_pretty),       #Cap p-value at .01
    pval_pretty   = ifelse(pval_pretty=="$p$=NA" , "$p$= NA", pval_pretty),       #Pad NA with space
    pattern       = pattern_dense[1],
    dense         = sprintf(pattern, est_pretty, se_pretty, pval_pretty),
    dense         = ifelse(is.na(est), "--,$p$=  ----", dense)                    #If the cell is bogus, don't bother displaying `NA` in the manuscript table.
  ) %>%
  dplyr::select(-est, -se, -wald, -est_pretty, -se_pretty, -pval, -pval_pretty, -pattern) %>% #, -ci95_lower, -ci95_upper
  dplyr::mutate(
    species       = factor(species, levels=names(coefficient_key), labels=coefficient_key)
  )


# widen ----
ds_wide_pretty <- ds_spread_pretty %>%  #Puts the dense columns for `intercept` and `slope` side-by-side
  dplyr::select(-coefficient) %>%
  tidyr::spread(key=breed, value=dense) %>%
  dplyr::select(study_name, process, subgroup, model_type, subject_count, species, intercept, slope) %>%
  dplyr::arrange(study_name, process, subgroup, model_type) %>%
  dplyr::rename_(
    "n"               = "subject_count"
  )

# ---- prettify ----------------------------------------------------------------
ds_dynamic_pretty <- ds_wide_pretty %>%
  dplyr::mutate(
    study_name    = factor(study_name),
    process       = factor(process),
    subgroup      = factor(subgroup),
    model_type    = factor(model_type),
    intercept     = sub("\\$p\\$", "p", intercept),
    slope         = sub("\\$p\\$", "p", slope)
  )
colnames(ds_dynamic_pretty) <- gsub("_", " ", colnames(ds_dynamic_pretty))

ds_static_pretty <- ds_wide_pretty %>%
  dplyr::filter(model_type=="aehplus") %>%
  dplyr::select(-model_type)
# create a csv manhole
readr::write_csv(ds_dynamic_pretty, "./data/shared/tables/growth-curve-1-dynamic.csv")

ds_static_pretty <- ds_static_pretty %>%
  dplyr::select_(.dots=c("study_name", "process", "subgroup", setdiff(colnames(ds_static_pretty), c("study_name", "process", "subgroup")))) %>%
  dplyr::mutate(                        #These three variables are just so we can create blanks
    process_group      = process,
    subgroup_group     = subgroup,
    n_group            = n
  )

# ---- verify-values -----------------------------------------------------------


# ---- table-dynamic-wide -----------------------------------------------------------
ds_dynamic_pretty %>%
  DT::datatable(
    class     = 'cell-border stripe',
    caption   = "Growth Curve Model Solution --Wide Format",
    filter    = "top",
    options   = list(pageLength = 6, autoWidth = TRUE)
  )

# ---- table-static ------------------------------------------------------------
for( study in unique(ds_wide_pretty$study_name) ) {
  cat("\n\n## ", study, "\n\n")
  ds_static_pretty %>%
    dplyr::filter(study_name==study) %>%
    dplyr::select(-study_name) %>%
    dplyr::group_by(process_group, subgroup_group, n_group) %>%
    dplyr::mutate(
      k            = seq_len(n()),
      process      = ifelse(k==1, process , ""),
      subgroup     = ifelse(k==1, subgroup, ""),
      n            = ifelse(k==1, n       , "")
    ) %>%
    dplyr::ungroup() %>%
    dplyr::select(-process_group, -subgroup_group, -n_group, -k) %>%
    dplyr::rename_(
      "Process"          = "process",
      "Gender"           = "subgroup",
      "$n$"              = "n"
    ) %>%
    knitr::kable(
      format     = "html",
      # format     = "markdown",
      align      = c("l", "l", "r", "c", "r", "r")
    ) %>%
    print()
}

# ---- forest ------------------------------------------------------------------
ds_graph <- ds_spread %>%
  dplyr::filter(model_type=="aehplus") %>%
  dplyr::filter(!is.na(est) & !is.na(se) & !is.na(subject_count)) %>%
  dplyr::select(study_name, process, subgroup, subject_count, breed, species, est, se) %>% #, ci95_lower, ci95_upper
  dplyr::mutate(
    study_name = factor(study_name, levels=rev(unique(ds_spread$study_name))),
    species    = factor(species, levels=names(coefficient_key), labels=coefficient_key),
    breed      = paste(breed, "(level 1)")
    # stem    = factor(stem, levels=c("i", "s", "r"), labels=c("italic(r)[intercepts]", "italic(r)[slopes]", "italic(r)[residuals]"))
    #stem    = factor(stem, levels=c("i", "s", "r"), labels=c("intercepts", "slopes", "residuals"))
  )

palette_gender_dark          <- c("#af6ca8", "#5a8fc1") #duller than below. http://colrd.com/image-dna/42282/ & http://colrd.com/image-dna/42275/
# palette_gender_dark        <- c("#f25091", "#6718f4") #brighter than above. http://colrd.com/palette/42278/
palette_gender_light         <- adjustcolor(palette_gender_dark, alpha.f = .2)
names(palette_gender_dark)   <- c("female", "male")
names(palette_gender_light)  <- names(palette_gender_dark)
shape_gender                 <- c("male"=24, "female"=25)

theme_report <- theme_light() + #Adapted from https://github.com/OuhscBbmc/DeSheaToothakerIntroStats/blob/master/CommonCode/BookTheme.R
  theme(axis.text            = element_text(colour="gray40")) +
  theme(axis.title           = element_text(colour="gray40")) +
  theme(panel.border         = element_rect(colour="gray80")) +
  theme(panel.grid.major.y   = element_blank()) +
  theme(axis.ticks           = element_blank()) +
  theme(strip.text.x         = element_text(size = 14))

# ds_graph_index <- tidyr::crossing(
#   process_a     = sort(unique(ds_graph$process_a)),
#   process_b     = sort(unique(ds_graph$process_b))
# )
forest <- function( d ) {
  ggplot(d, aes(y=study_name, x=est, color=subgroup, fill=subgroup, shape=subgroup)) + #, xmin=ci95_lower, xmax=ci95_upper
    geom_vline(aes(xintercept=0), color="gray85", size=1, na.rm=T, linetype="42") +
    # geom_errorbarh(aes(height=0), size=2, alpha=.4, na.rm=T) + # , position=position_dodge(width=.2)
    geom_point(size=3) +
    scale_color_manual(values=palette_gender_dark) +
    scale_fill_manual(values=palette_gender_light) +
    scale_shape_manual(values=shape_gender) +
    # coord_cartesian(xlim=c(-.5,1)) +
    facet_grid(species~breed, scales="free") + # labeller = label_parsed) +
    # facet_grid(process_b~stem, scales="free", labeller = label_bquote(cols = r[.(stem)])) +
    # facet_grid(process_b~stem, scales="free") +
    theme_report +
    theme(legend.position="none") +
    theme(strip.text.y = element_text(angle=0)) +
    labs(x=expression(italic(gamma)), y=NULL, title=paste0(unique(d$process), ": Growth Model Coefficients by Study and Gender"))
    # labs(x=NULL, y="Correlation", title=paste("Correlation of random effects"))
    # labs(x=NULL, y="Correlation", title=paste("Correlation of", process_a, "&", process_b, "effects"))

}
# forest(ds_graph[ds_graph$process=="grip", ])
# forest(ds_graph[ds_graph$process_a=="gait" & ds_graph$process_b=="block", ])
# forest(ds_graph[ds_graph$process_a=="gait" & ds_graph$process_b=="symbol", ])
# forest(ds_graph[ds_graph$process_a=="grip" & ds_graph$process_b=="symbol", ])
# forest(ds_graph[ds_graph$process_a=="grip" & ds_graph$process_b=="letter", ])

for( process in sort(unique(ds_graph$process)) ) {
  d_graph <- ds_graph[ds_graph$process==process, ]
  if( nrow(d_graph)==0L) next; # Halt the processing of the current iteration and advances the looping index

  cat("\n\n## Process Variable: ", process, "\n")
  forest(d_graph) %>%
    print()
  # for( process_b in sort(unique(ds_graph$process_b)) ) {
  #   d_graph <- ds_graph[ds_graph$process_a==process_a & ds_graph$process_b==process_b, ]
  #
  #   if( nrow(d_graph)==0L) next; # Halt the processing of the current iteration and advances the looping index
  #   # cat("\n\n### Cognitive Variable: ", process_b, "\n")
  #
  #   forest(d_graph) %>%
  #      print()
  # }
}
