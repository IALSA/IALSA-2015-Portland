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
path_input <- "./data/shared/pc-2-parsed-results-computed_ci.csv"

# ---- load-data ---------------------------------------------------------------
ds_full <- readr::read_csv(path_input)
rm(path_input)

d <- ds_full %>%
  dplyr::select(dplyr::starts_with("er_"), dplyr::starts_with("cr_")) %>%
  dplyr::slice(1)
t(d)

select_vars <- c(
  model_components$id, "subject_count",
  "ab_tau_00_est", "ab_tau_00_se", "ab_tau_00_pval",
  "er_tau_00_est","er_tau_00_se","er_tau_00_pval",
  "cr_levels_est","cr_levels_ci95_lo","cr_levels_ci95_hi",

  "ab_tau_11_est", "ab_tau_11_se", "ab_tau_11_pval",
  "er_tau_11_est","er_tau_11_se","er_tau_11_pval",
  "cr_slopes_est","cr_slopes_ci95_lo","cr_slopes_ci95_hi",

  "ab_sigma_00_est", "ab_sigma_00_se", "ab_sigma_00_pval",
  "er_sigma_00_est","er_sigma_00_se","er_sigma_00_pval",
  "cr_resid_est","cr_resid_ci95_lo","cr_resid_ci95_hi"
)


d <- ds_full %>%
  dplyr::select_(.dots = select_vars) %>%
  dplyr::filter(process_a %in% c("fev","fev100", "pef", "pek")) %>%
  dplyr::filter(model_type == "aehplus") %>%
  dplyr::slice(1)
t(d)

# ---- formatting-functions ---------------------------------------
numformat <- function(val) { sub("^(-?)0.", "\\1.", sprintf("%.2f", val)) }

dense_v1 <- function(est,se,pval){
  signif <- ifelse(
    pval > .1, " ", ifelse(
      (pval <=.1 & pval >.05),".",ifelse(
        (pval<=.05 & pval>.01),"*",ifelse(
          (pval<=.01 & pval>.001),"**",ifelse(
            pval<=.001,"***",NA)
        )
      )
    )
  )

  # est_pretty  <- sprintf("%0.2f", est)
  # se_pretty   <- sprintf("%0.2f", se)
  # pval_pretty <- sprintf("%0.2f",pval)
  est_pretty  <- numformat( est)
  se_pretty   <- numformat( se)
  pval_pretty <- numformat(pval)
  pval_pretty <- ifelse(pval>.99, ".99", sub("^0(.\\d+)$", "\\1", pval_pretty)) #Cap p-value at .99
  # pval_pretty <- sprintf("%.2f", pval) #Remove leading zero from p-value.
  # pval_pretty <- numformat( pval) #Remove leading zero from p-value.
  pval_pretty <- sprintf("$p$=%s", pval_pretty)
  pval_pretty <- ifelse(pval_pretty=="$p$=.00", "$p$<.01", pval_pretty)       #Cap p-value at .01
  pval_pretty <- ifelse(pval_pretty=="$p$=NA" , "$p$= NA", pval_pretty)       #Pad NA with space
  dense       <- sprintf("%4s(%4s), %7s", est_pretty, se_pretty, pval_pretty)
  dense       <- ifelse((is.nan(est)|is.na(est)|is.infinite(est)), "---", dense)
  return(dense)

}

dense_v2 <- function(est, lo, hi){
  est_pretty <- numformat(est)
  lo_pretty  <- numformat(lo)
  hi_pretty  <- numformat(hi)

  dense <- sprintf("%4s(%4s,%4s)", est_pretty, lo_pretty, hi_pretty)
  dense <- ifelse(is.nan(est), "---", dense)
  return(dense)
}


# dd <- d %>%
ds <- ds_full %>%
  dplyr::mutate(
    tau_levels = dense_v1(ab_tau_00_est,ab_tau_00_se, ab_tau_00_pval),
    tau_slopes = dense_v1(ab_tau_11_est,ab_tau_11_se, ab_tau_11_pval),
    tau_resid = dense_v1(ab_sigma_00_est,ab_sigma_00_se, ab_sigma_00_pval),

    er_levels  = dense_v1(er_tau_00_est,er_tau_00_se, er_tau_00_pval),
    er_slopes  = dense_v1(er_tau_11_est,er_tau_11_se, er_tau_11_pval),
    er_resid  = dense_v1(er_sigma_00_est,er_sigma_00_se, er_sigma_00_pval),

    cr_levels  = dense_v2(cr_levels_est, cr_levels_ci95_lo,cr_levels_ci95_hi),
    cr_slopes  = dense_v2(cr_slopes_est, cr_slopes_ci95_lo,cr_slopes_ci95_hi),
    cr_resid  = dense_v2(cr_resid_est, cr_resid_ci95_lo,cr_resid_ci95_hi)

  ) %>%
  dplyr::select_(.dots = c(model_components$id,
                          "tau_levels", "tau_slopes","tau_resid",
                           "er_levels",  "er_slopes", "er_resid",
                           "cr_levels",  "cr_slopes", "cr_resid"
                           ))

ds %>%
  dplyr::filter(process_a %in% c("fev","fev100", "pef", "pek")) %>%
  dplyr::filter(model_type == "aehplus") %>%
  dplyr::mutate(
    tau_levels = sub("\\$p\\$", "p", tau_levels),
    tau_slopes = sub("\\$p\\$", "p", tau_slopes),
    tau_resid  = sub("\\$p\\$", "p", tau_resid),
    er_levels  = sub("\\$p\\$", "p", er_levels),
    er_slopes  = sub("\\$p\\$", "p", er_slopes),
    er_resid   = sub("\\$p\\$", "p", er_resid)
  ) %>%
  DT::datatable(
    class     = 'cell-border stripe',
    # caption   = "Table of Correlations",
    filter    = "top",
    options   = list(pageLength = 6, autoWidth = TRUE)
  )

t(dd)


# ---- tweak-data --------------------------------------------------------------

# simplify ----
variables_part_1 <- c(
  "study_name",
  "process_a",
  "process_b",
  "subgroup",           # male & female
  "model_type"          # 0 , a, ae, aeh, aeh+, & full
)

# variables_part_4 <- grep(regex_r, colnames(ds_full), perl=T, value=T)
# regex_r <- "^r_(i|s|r)_(est|se|wald|pval|ci95_lower|ci95_upper)$"
regex_r <- "^r_(i|s|r)_(est|se|wald|pval|ci95_lower|ci95_upper)$"

ds_order_r <- expand.grid(#tidyr::crossing(
  stat      = c("est", "se", "wald", "pval", "ci95_lower", "ci95_upper"),
  term      = c("i", "s", "r"),
  stringsAsFactors = FALSE
)

variables_part_4a <- c(
  "subject_count"
)

variables_part_4b <- sprintf(
  "r_%s_%s",
  ds_order_r$term,
  ds_order_r$stat
)

# elongate ----
ds_long <- ds_full %>%
  dplyr::rename_(
       "r_i_est"           = "`R_IAIB_est`"
     , "r_i_se"            = "`R_IAIB_se`"
     , "r_i_wald"          = "`R_IAIB_wald`"
     , "r_i_pval"          = "`R_IAIB_pval`"
     , "r_s_est"           = "`R_SASB_est`"
     , "r_s_se"            = "`R_SASB_se`"
     , "r_s_wald"          = "`R_SASB_wald`"
     , "r_s_pval"          = "`R_SASB_pval`"
     , "r_r_est"           = "`R_RES_AB_est`"
     , "r_r_se"            = "`R_RES_AB_se`"
     , "r_r_wald"          = "`R_RES_AB_wald`"
     , "r_r_pval"          = "`R_RES_AB_pval`"
     , "r_i_ci95_lower"    = "ab_CI95_00_low"
     , "r_i_ci95_upper"    = "ab_CI95_00_high"
     , "r_s_ci95_lower"    = "ab_CI95_11_low"
     , "r_s_ci95_upper"    = "ab_CI95_11_high"
     , "r_r_ci95_lower"    = "ab_CI95_residual_low"
     , "r_r_ci95_upper"    = "ab_CI95_residual_high"
  ) %>%
  dplyr::select_(.dots=c(variables_part_1, variables_part_4a, variables_part_4b)) %>%
  dplyr::filter( !is.na(process_a) & !is.na(process_b) ) %>%
  dplyr::filter( process_a!="nophys" & process_b!="nocog" ) %>%
  tidyr::gather_("r", "value", variables_part_4b) %>%
  dplyr::mutate(
    stem      = gsub(regex_r, "\\1", r, perl=T),
    stat      = gsub(regex_r, "\\2", r, perl=T)
  )

rm(ds_order_r, ds_full, variables_part_4b) #variables_part_1

# remove-duplicates ----
ds_no_duplicates <- ds_long %>%
  dplyr::group_by_(
    .dots=c(variables_part_1, variables_part_4a, "r", "stem", "stat") #Lacks "value"
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
    .dots=c(variables_part_1, variables_part_4a,  "r", "stem", "stat")
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
rm(variables_part_1, variables_part_4a, ds_find_duplicates)


pattern_est <- c(
  "i"    = "%0.2f",
  "s"    = "%0.2f",
  "r"    = "%0.2f"
)
pattern_se <- c(
  "i"    = "%0.2f",
  "s"    = "%0.2f",
  "r"    = "%0.2f"
)
pattern_dense <- c(
  "i"    = "%6s(%4s),%7s",
  "s"    = "%6s(%4s),%7s",
  "r"    = "%6s(%4s),%7s"
)
# pattern_dense[[ds_spread_1$stem[1]]]

# spread-to-stem ----
ds_spread <- ds_no_duplicates %>%
  dplyr::select(-r) %>%
  tidyr::spread(stat, value)

# create a csv manhole
readr::write_csv(ds_spread, "./data/shared/tables/effects-random.csv")

ds_spread_pretty <- ds_spread %>%
  dplyr::mutate(
    subject_count = scales::comma(subject_count),
    est_pretty    = sprintf(pattern_est[stem], est),
    se_pretty     = sprintf(pattern_se[stem], se),
    pval_pretty   = sprintf("%0.2f", pval), #Remove leading zero from p-value.
    pval_pretty   = ifelse(pval>.99, ".99", sub("^0(.\\d+)$", "\\1", pval_pretty)), #Cap p-value at .99
    pval_pretty   = sprintf("$p$=%s", pval_pretty),
    pval_pretty   = ifelse(pval_pretty=="$p$=.00", "$p$<.01", pval_pretty),       #Cap p-value at .01
    pval_pretty   = ifelse(pval_pretty=="$p$=NA" , "$p$= NA", pval_pretty),       #Pad NA with space
    pattern       = pattern_dense[stem],
    dense         = sprintf(pattern, est_pretty, se_pretty, pval_pretty),
    dense         = ifelse(is.nan(est), "--,$p$=  ----", dense)
  ) %>%
  dplyr::select(-est, -se, -wald, -est_pretty, -se_pretty, -pval, -pval_pretty, -pattern, -ci95_lower, -ci95_upper)

# ds_spread_1$dense

# widen ----
ds_wide_pretty <- ds_spread_pretty %>%
  dplyr::mutate(
    #stem  = gsub("^(\\w)_(\\d{2})$", "r_\\1_\\2", stem)
    stem   = paste0("r_", stem)
  ) %>%
  tidyr::spread(stem, dense) %>%
  dplyr::select(study_name, process_a, process_b, subgroup, model_type, subject_count, r_i, r_s, r_r) %>%
  dplyr::arrange(study_name, process_a, process_b, subgroup, model_type) %>%
  dplyr::rename_(
    "n"               = "subject_count",
    "r_intercept"     = "r_i",
    "r_slope"         = "r_s",
    "r_residual"      = "r_r"
  )

# ---- prettify ----------------------------------------------------------------
ds_dynamic_pretty <- ds_wide_pretty %>%
  dplyr::mutate(
    study_name    = factor(study_name),
    process_a     = factor(process_a),
    process_b     = factor(process_b),
    subgroup      = factor(subgroup),
    model_type    = factor(model_type),
    r_intercept   = sub("\\$p\\$", "p", r_intercept),
    r_slope       = sub("\\$p\\$", "p", r_slope),
    r_residual    = sub("\\$p\\$", "p", r_residual)
  )
colnames(ds_dynamic_pretty) <- gsub("_", " ", colnames(ds_dynamic_pretty))

ds_static_pretty <- ds_wide_pretty %>%
  dplyr::filter(model_type=="aehplus") %>%
  dplyr::mutate(
    process       = sprintf("%*s vs %s", max(nchar(process_a)), process_a, process_b)
    # table_header  = paste0(study_name, ": ", process)
  ) %>%
  dplyr::select(-model_type, -process_a, -process_b)
# ds_static_pretty$process

# creat a csv manhole
readr::write_csv(ds_dynamic_pretty, "./data/shared/tables/effects-random-pretty.csv")

ds_static_pretty <- ds_static_pretty %>%
  dplyr::select_(.dots=c("study_name", "process", "subgroup", setdiff(colnames(ds_static_pretty), c("study_name", "process", "subgroup")))) %>%
  dplyr::rename_(
    "Processes"        = "process",
    "Gender"           = "subgroup",
    "$n$"              = "n",
    "$r_{intercepts}$" = "r_intercept",
    "$r_{slopes}$"     = "r_slope",
    "$r_{residuals}$"  = "r_residual"
  )


# ---- verify-values -----------------------------------------------------------


# ---- table-dynamic -----------------------------------------------------------
ds_dynamic_pretty %>%
  DT::datatable(
    class     = 'cell-border stripe',
    caption   = "Correlations of Bivariate ISR",
    filter    = "top",
    options   = list(pageLength = 6, autoWidth = TRUE)
  )

# ---- table-static ------------------------------------------------------------
for( study in unique(ds_wide_pretty$study_name) ) {
  cat("\n\n## ", study, "\n\n")
  ds_static_pretty %>%
    dplyr::filter(study_name==study) %>%
    dplyr::select(-study_name) %>%
    dplyr::arrange(Gender) %>%
    knitr::kable(
      format     = "html",
      align      = c("l", "l", "r", "r", "r", "r")
    ) %>%
    print()
}

# ---- forest ------------------------------------------------------------------
ds_graph <- ds_spread %>%
  dplyr::filter(model_type=="aehplus") %>%
  dplyr::filter(!is.na(est) & !is.na(se) & !is.na(subject_count)) %>%
  dplyr::select(study_name, process_a, process_b, subgroup, subject_count, stem, est, se, ci95_lower, ci95_upper) %>%
  dplyr::mutate(
    study_name = factor(study_name, levels=rev(unique(ds_spread$study_name))),
    stem    = factor(stem, levels=c("i", "s", "r"), labels=c("italic(r)[intercepts]", "italic(r)[slopes]", "italic(r)[residuals]"))
    #stem    = factor(stem, levels=c("i", "s", "r"), labels=c("intercepts", "slopes", "residuals"))
  )



# table(ds_graph[, c("process_a", "process_b")])

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

ds_graph_index <- tidyr::crossing(
  process_a     = sort(unique(ds_graph$process_a)),
  process_b     = sort(unique(ds_graph$process_b))
)
forest <- function( d ) {
  ggplot(d, aes(y=study_name, x=est, xmin=ci95_lower, xmax=ci95_upper, color=subgroup, fill=subgroup, shape=subgroup)) +
    geom_vline(aes(xintercept=0), color="gray85", size=1, na.rm=T, linetype="42") +
    geom_errorbarh(aes(height=0), size=2, alpha=.4, na.rm=T) + # , position=position_dodge(width=.2)
    geom_point(size=3) +
    scale_color_manual(values=palette_gender_dark) +
    scale_fill_manual(values=palette_gender_light) +
    scale_shape_manual(values=shape_gender) +
    coord_cartesian(xlim=c(-.5,1)) +
    facet_grid(process_b~stem, scales="free", labeller = label_parsed) +
    # facet_grid(process_b~stem, scales="free", labeller = label_bquote(cols = r[.(stem)])) +
    # facet_grid(process_b~stem, scales="free") +
    theme_report +
    theme(legend.position="none") +
    theme(strip.text.y = element_text(angle=0)) +
    labs(x=expression(italic(r)), y=NULL, title=paste0(unique(d$process_a), ": Random Effects Correlations by Study and Gender"))
    # labs(x=NULL, y="Correlation", title=paste("Correlation of random effects"))
    # labs(x=NULL, y="Correlation", title=paste("Correlation of", process_a, "&", process_b, "effects"))

}
forest(ds_graph[ds_graph$process_a=="grip", ])
# forest(ds_graph[ds_graph$process_a=="gait" & ds_graph$process_b=="block", ])
# forest(ds_graph[ds_graph$process_a=="gait" & ds_graph$process_b=="symbol", ])
# forest(ds_graph[ds_graph$process_a=="grip" & ds_graph$process_b=="symbol", ])
# forest(ds_graph[ds_graph$process_a=="grip" & ds_graph$process_b=="letter", ])

for( process_a in sort(unique(ds_graph$process_a)) ) {
  d_graph <- ds_graph[ds_graph$process_a==process_a, ]
  if( nrow(d_graph)==0L) next; # Halt the processing of the current iteration and advances the looping index

  cat("\n\n## Physical Variable: ", process_a, "\n")
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
