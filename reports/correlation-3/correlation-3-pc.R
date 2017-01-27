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
# print_format <- "html"
print_format <- "pandoc"

# ----- input-phys-cog -----------------
path_input <- "./data/shared/pc-2-catalog-augmented.csv"

# ---- load-data ---------------------------------------------------------------
catalog <- readr::read_csv(path_input)
rm(path_input)

# ds <- ds_full %>%
#   dplyr::filter(process_a %in% c("fev","fev100", "pef", "pek")) %>%
#   dplyr::filter(study_name == "eas") %>%
#   dplyr::filter(model_number == "b1") %>%
#   dplyr::filter(is.na(process_b)) %>%
#   dplyr::select_(.dots=c("output_file",model_components$id))
#


# ---- formatting-functions ---------------------------------------
compute_significance <- function(
  est,
  se,
  pval
){
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

numformat <- function(val) { sub("^(-?)0.", "\\1.", sprintf("%.2f", val)) }

dense_v1 <- function(
  est,
  se,
  pval,
  star=FALSE
){
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

dense_v2 <- function(
  est,
  lo,
  hi
){
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

dense_v3 <- function(
  est,
  lo,
  hi,
  star=F,
  signif
){
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

dense_v4 <- function(
  lo,
  hi,
  star=F,
  signif
){
  lo_pretty  <- numformat(lo)
  hi_pretty  <- numformat(hi)

  if(star){
    dense <- sprintf("(%4s,%4s)%s", lo_pretty, hi_pretty, signif)
  }else{
    dense <- sprintf("(%4s,%4s)", lo_pretty, hi_pretty)
  }
  dense <- ifelse((is.nan(lo)|is.na(lo)|is.infinite(lo)), "---", dense)
  return(dense)
}


prettify_catalog <- function(
  catalog,
  model_type_   = "aehplus",
  model_number_ = "b1"
){
  catalog_pretty <- catalog %>%
  # dplyr::filter(process_a %in% c("fev","fev100", "pef", "pek")) %>%
  dplyr::filter(model_type %in% model_type_) %>%
  dplyr::filter(model_number %in% model_number_) %>%
  dplyr::mutate(
    # compute CI of the estimated correlations
    er_tau_00_ci95lo    = er_tau_00_est -  er_tau_00_se*1.96,
    er_tau_00_ci95hi    = er_tau_00_est +  er_tau_00_se*1.96,
    er_tau_11_ci95lo    = er_tau_11_est -  er_tau_11_se*1.96,
    er_tau_11_ci95hi    = er_tau_11_est +  er_tau_11_se*1.96,
    er_sigma_00_ci95lo  = er_sigma_00_est -  er_sigma_00_se*1.96,
    er_sigma_00_ci95hi  = er_sigma_00_est +  er_sigma_00_se*1.96,
    # simplify significance of raw covariances
    signif_levels = compute_significance(ab_tau_00_est,  ab_tau_00_se,   ab_tau_00_pval),
    singif_slopes = compute_significance(ab_tau_11_est,  ab_tau_11_se,   ab_tau_11_pval),
    signif_resid  = compute_significance(ab_sigma_00_est,ab_sigma_00_se, ab_sigma_00_pval),

    # assemble the desnse of raw covariances
    tau_levels = dense_v1(ab_tau_00_est,  ab_tau_00_se,     ab_tau_00_pval,   star = T),
    tau_slopes = dense_v1(ab_tau_11_est,  ab_tau_11_se,     ab_tau_11_pval,   star = T),
    tau_resid  = dense_v1(ab_sigma_00_est,ab_sigma_00_se,   ab_sigma_00_pval, star = T),
    # assemble the dense of estimated correlations
    er_levels  = dense_v1(er_tau_00_est,  er_tau_00_se,     er_tau_00_pval,   star = T),
    er_slopes  = dense_v1(er_tau_11_est,  er_tau_11_se,     er_tau_11_pval,   star = T),
    er_resid   = dense_v1(er_sigma_00_est,er_sigma_00_se,   er_sigma_00_pval, star = T),
    # assemble the dens of CI for estimated correlations
    # er_levels_ci      = sprintf("(%.2f,%.2f)",er_tau_00_ci95lo,er_tau_00_ci95hi ),
    # er_slopes_ci     = sprintf("(%.2f,%.2f)",er_tau_11_ci95lo,er_tau_11_ci95hi ),
    # er_resid_ci      = sprintf("(%.2f,%.2f)",er_sigma_00_ci95lo,er_sigma_00_ci95hi ),
    # er_levels_ci   = dense_v3(er_tau_00_est, er_tau_00_ci95lo, er_tau_00_ci95hi, star=F),
    # er_slopes_ci   = dense_v3(er_tau_11_est, er_tau_11_ci95lo, er_tau_11_ci95hi, star=F),
    # er_resid_ci    = dense_v3(er_sigma_00_est, er_sigma_00_ci95lo, er_sigma_00_ci95hi, star=F ),
    er_levels_ci   = dense_v4(er_tau_00_ci95lo, er_tau_00_ci95hi, star=F),
    er_slopes_ci   = dense_v4(er_tau_11_ci95lo, er_tau_11_ci95hi, star=F),
    er_resid_ci    = dense_v4(er_sigma_00_ci95lo, er_sigma_00_ci95hi, star=F ),
    # assemble the dense of computed correlations
    cr_levels  = dense_v3(cr_levels_est, cr_levels_ci95_lo, cr_levels_ci95_hi,star = F, signif_levels),
    cr_slopes  = dense_v3(cr_slopes_est, cr_slopes_ci95_lo, cr_slopes_ci95_hi,star = F, singif_slopes),
    cr_resid   = dense_v3(cr_resid_est,  cr_resid_ci95_lo,  cr_resid_ci95_hi, star = F, signif_resid)
    # )
  ) %>%
    dplyr::select(
      process_b_domain, study_name,
      model_number, subgroup, model_type, process_a, process_b, subject_count,
      # dense       point estimate   st.error/lower ci   p-value/upper ci
      tau_levels,   ab_tau_00_est,   ab_tau_00_se,       ab_tau_00_pval,
      er_levels,    er_tau_00_est,   er_tau_00_se,       er_tau_00_pval,
      er_levels_ci,                  er_tau_00_ci95lo,   er_tau_00_ci95hi,
      cr_levels,    cr_levels_est,   cr_levels_ci95_lo,  cr_levels_ci95_hi,
      # dense       point estimate   st.error/lower ci   p-value/upper ci
      tau_slopes,   ab_tau_00_est,   ab_tau_00_se,       ab_tau_00_pval,
      er_slopes,    er_tau_11_est,   er_tau_11_se,       er_tau_11_pval,
      er_slopes_ci,                  er_tau_11_ci95lo,   er_tau_11_ci95hi,
      cr_slopes,    cr_slopes_est,   cr_slopes_ci95_lo,  cr_slopes_ci95_hi,
      # dense       point estimate   st.error/lower ci   p-value/upper ci
      tau_resid,    ab_sigma_00_est, ab_sigma_00_se,     ab_sigma_00_pval,
      er_resid,     er_sigma_00_est, er_sigma_00_se,     er_sigma_00_pval,
      er_resid_ci,                   er_sigma_00_ci95lo, er_sigma_00_ci95hi,
      cr_resid,     cr_resid_est,    cr_resid_ci95_lo,   cr_resid_ci95_hi
  ) %>%
    dplyr::arrange(process_b_domain,process_b)
  return(catalog_pretty)
}

select_for_table <- function(
  catalog_pretty,
  outcome,          # gait, grip, pulmonary : selects process a / PHYSICAL MEASURE
  gender = "andro", # andro, male, female : selects subgroup
  format = "full",   # full, focus, brief : selects columns to display
  pretty_name = TRUE
){
  # browser()
  d1 <- catalog_pretty
  # select relevant PROCESS A / PHYSICAL MEASURE
  if(!outcome=="all"){
    if(outcome=="gait"){
      d2 <- d1 %>% dplyr::filter(process_a %in% c("gait","tug"))
    }
    if(outcome=="grip"){
      d2 <- d1 %>% dplyr::filter(process_a %in% c("grip"))
    }
    if(outcome=="pulmonary"){
      d2 <- d1 %>% dplyr::filter(process_a %in% c("fev","pef", "pek"))
    }
  }else{
    d2 <- d1
  }

  # select relevant SUBGROUP
  if(!gender=="andro"){
    d3 <- d2 %>% dplyr::filter(subgroup == gender )
  }else{
    d3 <- d2
  }

  if(format=="full"){
    d4 <- d3 %>%
      dplyr::select(
        process_b_domain, study_name,
        model_number, subgroup, model_type, process_a, process_b, subject_count,
        tau_levels, er_levels, er_levels_ci, cr_levels,
        tau_slopes, er_slopes, er_slopes_ci, cr_slopes,
        tau_resid,  er_resid,  er_resid_ci,  cr_resid
      )
    if(pretty_name){
    d4 <- d4 %>%
      dplyr::rename_(
        "domain"              = "process_b_domain", # ID
        "study"               = "study_name",
        "$n$"                 = "subject_count",
        "physical"            = "process_a",
        "cognitive"           = "process_b",
        "Cov(Levels)"         = "tau_levels",       # Covariance             est(se)pval
        "Cov(Slopes)"         = "tau_slopes",
        "Cov(Residuals)"      = "tau_resid",
        "Corr(Levels)Est"     = "er_levels",        # Correlation Estimated  est(se)pval
        "Corr(Slopes)Est"     = "er_slopes",
        "Corr(Residuals)Est"  = "er_resid",
        "CI(Levels)Est"       = "er_levels_ci",     # Correlation Estimated  (lo,hi)
        "CI(Slopes)Est"       = "er_slopes_ci",
        "CI(Residuals)Est"    = "er_resid_ci",
        "Corr(Levels)Comp"    = "cr_levels",        # Correlation Computed   est(lo,hi)
        "Corr(Slopes)Comp"    = "cr_slopes",
        "Corr(Residuals)Comp" = "cr_resid"
      )
    }
  }
  if(format=="focus"){
    d4 <- d3 %>%
      dplyr::select(
        process_b_domain, study_name,
        model_number, subgroup, model_type, process_a, process_b, subject_count,
        er_levels, er_slopes, er_resid
      ) %>%
      dplyr::rename_(
        "domain"              = "process_b_domain", # ID
        "study"               = "study_name",
        "$n$"                 = "subject_count",
        "physical"            = "process_a",
        "cognitive"           = "process_b",
        "Corr(Levels)Est"     = "er_levels",        # Correlation Estimated  est(se)pval
        "Corr(Slopes)Est"     = "er_slopes",
        "Corr(Residuals)Est"  = "er_resid"
      )
  }
  if(format=="brief"){
    d4 <- d3 %>%
      dplyr::select(
        process_b_domain, study_name,
        model_number, subgroup, model_type, process_a, process_b, subject_count,
        er_tau_00_est,   er_tau_00_se,   er_tau_00_pval,   er_tau_00_ci95lo,   er_tau_00_ci95hi,
        er_tau_11_est,   er_tau_11_se,   er_tau_11_pval,   er_tau_11_ci95lo,   er_tau_11_ci95hi,
        er_sigma_00_est, er_sigma_00_se, er_sigma_00_pval, er_sigma_00_ci95lo, er_sigma_00_ci95hi
      )
  }
  return(d4)

}
# Usage:
# output_table <- prettify_catalog(catalog) %>%
#   select_for_table("gait","male","full")
#

save_corr_table <- function(
  catalog_pretty,
  outcome,
  gender,
  format,
  folder
){
  d <- catalog_pretty %>%
    select_for_table(outcome=outcome, gender=gender, format=format)
  # folder <- "./reports/correlation-3/summary-data/"
  path <- paste0(folder,outcome,"-",gender,"-",format,".csv")
  readr::write_csv(d,path)
}

# ---- tweak-data --------------------
catalog_pretty <- catalog %>% prettify_catalog(model_type_ = "aehplus",model_number_ = "b1")
# d <
# ---- save-data-for-tables --------------------------
for(outcome in c("gait","grip","pulmonary")){
  for(gender in c("male","female")){
    for(format in c("full","brief"))
      catalog %>%
      prettify_catalog("aehplus","b1") %>%
      save_corr_table(
        outcome,
        gender,
        format,
        "./reports/correlation-3/table-data/")
  }
}

# ---- tweak-data ---------------

# ---- table-dynamic -----------------------------------------------------------

d <- catalog %>%
  prettify_catalog(model_type = c("a","ae","aeh","aehplus","full"),model_number = c("b1")) %>%
  select_for_table(outcome = "all", gender = "andro",format = "full", pretty_name=F)

selected_columns <- colnames(d)
replace_italics <- function(x,  pattern="p"){
  xx <- sub( paste0("\\$",pattern,"\\$"), pattern, x)
  return(xx)
}
d[,selected_columns] <- lapply(d[,selected_columns], replace_italics, pattern="p")

static_variables <- c(
  "process_b_domain", "study_name",       "model_number",     "subgroup",
  "model_type",       "process_a",        "process_b",        "subject_count"
)
dynamic_variables <- setdiff(colnames(d), static_variables)
d <- d %>%
  tidyr::gather_("index","dense",dynamic_variables) %>%
  dplyr::mutate(
    covariance = ifelse(grepl("_ci$",index),"Correlation CI",
                 ifelse(grepl("^tau_",index),"Covariance",
                 ifelse(grepl("^er_",index),"Correlation",
                 ifelse(grepl("^cr_",index),"Fisher's R",NA)))),
    parameter = ifelse( grepl("levels",index),"Levels",
                        ifelse(grepl("slopes",index),"Slopes",
                               ifelse(grepl("resid", index),"Residuals",NA))),
    value = dense
  ) %>%
  dplyr::select(-index,-dense, -model_number) %>%
  tidyr::spread(parameter,value) %>%
  dplyr::mutate(
    subject_count = as.numeric(subject_count)
  ) %>%
  dplyr::rename(
    N = subject_count,
    study = study_name,
    domain = process_b_domain,
    physical = process_a,
    cognitive = process_b
  ) %>%
  dplyr::select(
    domain, study, subgroup, model_type, physical, cognitive, N, covariance, Levels, Slopes, Residuals
  )

change_to_factors <- setdiff(colnames(d),"N" )
d[,change_to_factors] <- lapply(d[,change_to_factors], factor)

d %>%
  DT::datatable(
    class     = 'cell-border stripe',
    # caption   = "Table of Correlations",
    filter    = "top",
    options   = list(pageLength = 6, autoWidth = TRUE)
  )


# ---- table-static-full ------------------------------------------------------------
# outcome <- "pulmonary"

cat("\n#Group by domain\n")
for(gender in c("male","female")){
  cat("\n##",gender)
  catalog %>%
    prettify_catalog(model_type_ = "aehplus",model_number_ = "b1") %>%
    select_for_table(outcome,gender = gender,format = "full") %>%
    dplyr::filter(subgroup %in% gender) %>%
    dplyr::select(-model_number, -subgroup, -model_type) %>%
    dplyr::arrange(domain,study,cognitive ) %>%
    knitr::kable(
      format     = print_format,
      align      = c("l","l","r","l","c",  "r","l","r","l",  "r","l","r","l",  "r","l","r","l") # cognitive full
      # align      = c(     "l", "r", "l", "c", "r","l","r","l","r","l") # physical
    ) %>%
    print()
}
cat("\n#Grouped by study\n")
for(gender in c("male","female")){
  cat("\n##",gender)
  catalog %>%
    prettify_catalog(model_type_ = "aehplus",model_number_ = "b1") %>%
    select_for_table(outcome,gender = gender,format = "full") %>%
    dplyr::filter(subgroup %in% gender) %>%
    dplyr::select(-model_number, -subgroup, -model_type) %>%
    dplyr::arrange(study,domain,cognitive) %>%
    knitr::kable(
      format     = print_format,
      align      = c("l","l","r","l","c",  "r","l","r","l",  "r","l","r","l", "r","l","r","l") # cognitive full
      # align      = c(     "l", "r", "l", "c", "r","l","r","l","r","l") # physical
    ) %>%
    print()
}


# ---- table-static-focus ------------------------------------------------------------
cat("\n#Group by domain\n")
for(gender in c("male","female")){
  cat("\n##",gender)
  catalog %>%
    prettify_catalog(model_type_ = "aehplus",model_number_ = "b1") %>%
    select_for_table(outcome,gender = gender,format = "focus") %>%
    dplyr::filter(subgroup %in% gender) %>%
    dplyr::select(-model_number, -subgroup, -model_type) %>%
    dplyr::arrange(domain,study,cognitive ) %>%
    knitr::kable(
      format     = print_format,
      align      = c("l","l","r","l","c", "l","l","l") # cognitive
      # align      = c(     "l", "r", "l", "c", "l","l","l") # physical
    ) %>%
    print()
}
cat("\n#Grouped by study\n")
for(gender in c("male","female")){
  cat("\n##",gender)
  catalog %>%
    prettify_catalog(model_type_ = "aehplus",model_number_ = "b1") %>%
    select_for_table(outcome,gender = gender,format = "focus") %>%
    dplyr::filter(subgroup %in% gender) %>%
    dplyr::select(-model_number, -subgroup, -model_type) %>%
    dplyr::arrange(study,domain,cognitive) %>%
    knitr::kable(
      format     = print_format,
      align      = c("l","l","r","l","c", "l","l","l") # cognitive
      # align      = c(     "l", "r", "l", "c", "l","l","l") # physical
    ) %>%
    print()
}
# ---- publish --------------
path_pulmonary_full <- "./reports/correlation-3/correlation-3-pulmonary-full.Rmd"
path_pulmonary_focus <- "./reports/correlation-3/correlation-3-pulmonary-focus.Rmd"
path_gait_full      <- "./reports/correlation-3/correlation-3-gait-full.Rmd"
path_gait_focus     <- "./reports/correlation-3/correlation-3-gait-focus.Rmd"
path_grip_full      <- "./reports/correlation-3/correlation-3-grip-full.Rmd"
path_grip_focus     <- "./reports/correlation-3/correlation-3-grip-focus.Rmd"


# allReports <- path_pulmonary_full
# allReports <- path_pulmonary_short
# allReports <- c(path_pulmonary_full,path_pulmonary_focus)
# allReports <- path_gait_full
# allReports <- path_gait_short
# allReports <- path_grip_full
# allReports <- path_grip_short
allReports <- c(path_pulmonary_focus, path_pulmonary_full,
                path_gait_focus, path_gait_full,
                path_grip_focus, path_grip_full)
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


rmarkdown::render(input="./reports/correlation-3/physical-cognitive-dynamic.Rmd",
                  output_format = "html_document", clean = TRUE)



