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


# ----- input-phys-cog -----------------
path_input <- "./data/shared/pc-2-parsed-results-computed_ci.csv"

# ---- load-data ---------------------------------------------------------------
ds_full <- readr::read_csv(path_input)
rm(path_input)





# ---- formatting-functions ---------------------------------------
compute_significance <- function(est, se, pval){
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
  return(signif)
}

compute_in_out <- function(est, lo, hi){
  in_out <- ifelse(
    est >= lo & est <= hi, "+", ifelse(
      est < lo & est > hi, "-",NA
    )
  )
}



numformat <- function(val) { sub("^(-?)0.", "\\1.", sprintf("%.2f", val)) }

dense_v1 <- function(est,se,pval, star=FALSE){
  signif <- ifelse(
    pval > .1, " ", ifelse(
      (pval <=.1 & pval >.05),".",ifelse(
        (pval<=.05 & pval>.01),"*",ifelse(
          (pval<=.01 & pval>.001),"**",ifelse(
            pval<=.001,"***"," ")
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
  if(star=="TRUE"){
    dense <- sprintf("%4s(%4s), %7s %s",est_pretty, se_pretty, pval_pretty, signif )
  }
  dense       <- ifelse((is.nan(est)|is.na(est)|is.infinite(est)), "---", dense)
  return(dense)

}

dense_v2 <- function(est, lo, hi){
  est_pretty <- numformat(est)
  lo_pretty  <- numformat(lo)
  hi_pretty  <- numformat(hi)


  # if(star){
  #   dense <- sprintf("%4s(%4s,%4s)%s", est_pretty, lo_pretty, hi_pretty, signif)
  # }else{
    dense <- sprintf("%4s(%4s,%4s)", est_pretty, lo_pretty, hi_pretty)
  # }
  dense <- ifelse((is.nan(est)|is.na(est)|is.infinite(est)), "---", dense)
  return(dense)
}

dense_v3 <- function(est, lo, hi,star=F, signif){
  est_pretty <- numformat(est)
  lo_pretty  <- numformat(lo)
  hi_pretty  <- numformat(hi)

  if(star){
    dense <- sprintf("%4s(%4s,%4s)%s", est_pretty, lo_pretty, hi_pretty, signif)
  }else{
    dense <- sprintf("%4s(%4s,%4s)", est_pretty, lo_pretty, hi_pretty)
  }
  dense <- ifelse((is.nan(est)|is.na(est)|is.infinite(est)), "---", dense)
  return(dense)
}

# ---- tweak-data ---------------
select_vars <- c(
  model_components$id,"process_b_domain", "subject_count",
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


# d <- ds_full %>%
#   dplyr::select_(.dots = select_vars) %>%
#   dplyr::filter(process_a %in% c("fev","fev100", "pef", "pek")) %>%
#   dplyr::filter(model_type == "aehplus") %>%
#   dplyr::slice(1)
# t(d)
# dd <- d %>%
ds <- ds_full %>%
  # dplyr::filter(process_a %in% c("fev","fev100", "pef", "pek")) %>%
  dplyr::filter(model_type == "aehplus") %>%
  dplyr::filter(model_number == "b1") %>%
  dplyr::mutate(



    tau_levels = dense_v1(ab_tau_00_est,  ab_tau_00_se,     ab_tau_00_pval,   star = T),
    tau_slopes = dense_v1(ab_tau_11_est,  ab_tau_11_se,     ab_tau_11_pval,   star = T),
    tau_resid  = dense_v1(ab_sigma_00_est,ab_sigma_00_se,   ab_sigma_00_pval, star = T),
    er_levels  = dense_v1(er_tau_00_est,  er_tau_00_se,     er_tau_00_pval,   star = T),
    er_slopes  = dense_v1(er_tau_11_est,  er_tau_11_se,     er_tau_11_pval,   star = T),
    er_resid   = dense_v1(er_sigma_00_est,er_sigma_00_se,   er_sigma_00_pval, star = T),

    signif_levels = compute_significance(ab_tau_00_est,  ab_tau_00_se,   ab_tau_00_pval),
    singif_slopes = compute_significance(ab_tau_11_est,  ab_tau_11_se,   ab_tau_11_pval),
    signif_resid  = compute_significance(ab_sigma_00_est,ab_sigma_00_se, ab_sigma_00_pval),

    cr_levels  = dense_v3(cr_levels_est, cr_levels_ci95_lo, cr_levels_ci95_hi,star = T, signif_levels),
    cr_slopes  = dense_v3(cr_slopes_est, cr_slopes_ci95_lo, cr_slopes_ci95_hi,star = T, singif_slopes),
    cr_resid   = dense_v3(cr_resid_est,  cr_resid_ci95_lo,  cr_resid_ci95_hi, star = T, signif_resid)
  # )
  ) %>%
  dplyr::select_(.dots = c(model_components$id,"process_b_domain", "subject_count",
                          "tau_levels", "tau_slopes","tau_resid",
                           "er_levels",  "er_slopes", "er_resid",
                           "cr_levels",  "cr_slopes", "cr_resid"#,
                           # "cr_levels_2",  "cr_slopes_2", "cr_resid_2"
                           ))

# ---- select-pulmonary ------------------------------------
ds <- ds %>%
  dplyr::filter(process_a %in% c("fev","fev100", "pef", "pek"))

# ---- select-gait ------------------------------------
ds <- ds %>%
  dplyr::filter(process_a %in% c("gait","tug"))

# ---- select-grip ------------------------------------
ds <- ds %>%
  dplyr::filter(process_a %in% c("grip"))




# ---- select-phys-cog --------------------------
d <- ds %>%
  dplyr::select(
    process_b_domain, study_name,
    model_number, subgroup, model_type, process_a, process_b, subject_count,
    tau_levels, cr_levels,
    tau_slopes, cr_slopes,
    tau_resid,  cr_resid
  ) %>%
  dplyr::arrange(process_b_domain,process_b) %>%
  dplyr::rename_(
    "domain"    = "process_b_domain",
    "study"     = "study_name",
    "$n$"       = "subject_count",
    "physical"  = "process_a",
    "cognitive" = "process_b",

    "Cov(Levels)"    = "tau_levels",
    "Cov(Slopes)"    = "tau_slopes",
    "Cov(Residuals)" = "tau_resid",

    "Corr(Levels)"    = "cr_levels",
    "Corr(Slopes)"    = "cr_slopes",
    "Corr(Residuals)" = "cr_resid"

  )

# ---- select-phys-cog-short --------------------
d <- ds %>%
  dplyr::select(
    process_b_domain, study_name,
    model_number, subgroup, model_type, process_a, process_b, subject_count,
    er_levels,
    er_slopes,
    er_resid
  ) %>%
  dplyr::arrange(process_b_domain,process_b) %>%
  dplyr::rename_(
    "domain"    = "process_b_domain",
    "study"     = "study_name",
    "$n$"       = "subject_count",
    "physical"  = "process_a",
    "cognitive" = "process_b",

    "Corr(Levels)"    = "er_levels",
    "Corr(Slopes)"    = "er_slopes",
    "Corr(Residuals)" = "er_resid"

  )



# ---- table-dynamic -----------------------------------------------------------

d %>%
  # dplyr::filter(process_a %in% c("fev","fev100", "pef", "pek")) %>%
  dplyr::filter(model_type == "aehplus") %>%
  dplyr::mutate(
    tau_levels = sub("\\$p\\$", "p", tau_levels),
    tau_slopes = sub("\\$p\\$", "p", tau_slopes),
    tau_resid  = sub("\\$p\\$", "p", tau_resid),
    er_levels  = sub("\\$p\\$", "p", er_levels),
    er_slopes  = sub("\\$p\\$", "p", er_slopes),
    er_resid   = sub("\\$p\\$", "p", er_resid)
  ) %>%
  # dplyr::select(-er_levels, -er_slopes, -er_resid) %>%
  dplyr::select_(.dots = c(model_components$id,"process_b_domain", "subject_count",
                          "tau_levels", "tau_slopes","tau_resid",
                           # "er_levels",  "er_slopes", "er_resid",
                            "cr_levels",  "cr_slopes", "cr_resid"
                           )) %>%
  DT::datatable(
    class     = 'cell-border stripe',
    # caption   = "Table of Correlations",
    filter    = "top",
    options   = list(pageLength = 6, autoWidth = TRUE)
  )



# ---- table-static ------------------------------------------------------------

for(gender in c("male","female")){
  cat("\n##",gender)
  d %>%
    dplyr::filter(subgroup %in% gender) %>%
    # dplyr::select(-model_number, -subgroup, -model_type) %>%
    knitr::kable(
      format     = "pandoc",
      align      = c("l", "r", "l", "r", "c", "r","r","r","r","r")
    ) %>%
    print()
}

# ---- table-static-2 ------------------------------------------------------------

for(gender in c("male","female")){
  cat("\n#",gender)
  d %>%
    dplyr::filter(subgroup %in% gender) %>%
    dplyr::select(-model_number, -subgroup, -model_type) %>%
    knitr::kable(
      format     = "pandoc",
      align      = c("l", "l", "r", "l", "c", "r","l","r","l","r","l") # cognitive
      # align      = c(     "l", "r", "l", "c", "r","l","r","l","r","l") # physical
    ) %>%
    print()
}

# ---- table-static-3 ------------------------------------------------------------

for(gender in c("male","female")){
  cat("\n#",gender)
  d %>%
    dplyr::filter(subgroup %in% gender) %>%
    dplyr::select(-model_number, -subgroup, -model_type) %>%
    knitr::kable(
      format     = "pandoc",
      # align      = c("l", "r", "c", "c", "c", "r","l","r","l","r","l") # cognitive
      align      = c(     "l", "r", "l", "c", "l","l","l") # physical
    ) %>%
    print()
}


# ---- publish --------------
# path_pulmonary <- "./reports/correlation-2/correlation-2-pulmonary.Rmd"
# path_gait <- "./reports/correlation-2/correlation-2-gait.Rmd"
path_grip <- "./reports/correlation-2/correlation-2-grip.Rmd"

# allReports <- c(path_pulmonary, path_grip, path_gait)
allReports <- path_grip
pathFilesToBuild <- c(allReports) ##########
testit::assert("The knitr Rmd files should exist.", base::file.exists(pathFilesToBuild))
# Build the reports
for( pathFile in pathFilesToBuild ) {

rmarkdown::render(input = pathFile,
                    output_format=c(
                      # "html_document" # set print_format <- "html" in seed-study.R
                      # "pdf_document"
                      # ,"md_document"
                      "word_document" # set print_format <- "pandoc" in seed-study.R
                    ),
                    clean=TRUE)
}





