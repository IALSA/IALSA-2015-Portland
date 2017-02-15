rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

# ---- load-sources ------------------------------------------------------------
#Load any source files that contain/define functions, but that don't load any other types of variables
#   into memory.  Avoid side effects and don't pollute the global environment.
source("./scripts/mplus/model-components.R") # organizes variable names
source("./reports/correlation-3/support-functions.R")
# ---- load-packages -----------------------------------------------------------
library(magrittr) #Pipes
library(ggplot2)
library(forestplot)
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

# ---- tweak-data --------------------
# catalog_pretty <- catalog %>% prettify_catalog(model_type_ = "aehplus",model_number_ = "b1")

catalog <- catalog %>%
  dplyr::mutate(
    process_b = ifelse(study_name == "map"  & process_b == "matrices", "raven_standard", process_b),
    process_b = ifelse(study_name == "lasa" & process_b == "raven",    "raven_color_ab", process_b)
  )




# ---- save-data-for-tables --------------------------
# for(track in c("gait","grip","pulmonary")){
#   for(gender in c("male","female")){
#     for(format in c("full","brief"))
#       catalog %>%
#       prettify_catalog("aehplus","b1") %>%
#       save_corr_table(
#         track,
#         gender,
#         format,
#         "./reports/correlation-3/table-data/")
#   }
# }

# ---- dummy -------------
# track values is defined in Rmd
# track = "pulmonary"
# gender = "male"

# ---- table-dynamic -----------------------------------------------------------

d <- catalog %>%
  dplyr::filter(
    model_type  %in%  c("a","ae","aeh","aehplus","full"),
    model_number %in% c("b1")
  ) %>%
  prettify_catalog() %>%
  select_for_table(track = track, gender = "andro",format = "full", pretty_name=F)

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
    N         = subject_count,
    study     = study_name,
    domain    = process_b_domain,
    physical  = process_a,
    cognitive = process_b
  ) %>%
  dplyr::select(
    domain, study, subgroup, model_type, physical, cognitive, N, covariance, Levels, Slopes, Residuals
  ) %>%
  rename_domains(track)

change_to_factors <- setdiff(colnames(d),"N" )
d[,change_to_factors] <- lapply(d[,change_to_factors], factor)

d %>%
  DT::datatable(
    class     = 'cell-border stripe',
    # caption   = "Table of Correlations",
    filter    = "top",
    options   = list(pageLength = 6, autoWidth = TRUE)
  )

# ---- print-forest -----------------

# track = "pulmonary"
data_forest <- get_forest_data(catalog,track = track) %>%
  rename_domains(track) %>%
  dplyr::filter(
     model_number == "b1"
    ,model_type   == "aehplus"
  )

# print single
# data_forest %>% print_forest_plot("verbal knowledge","male")
data_forest %>% print_forest_plot("memory","male")
# print all

domain_cycle <- setdiff(unique(data_forest$domain),NA)
subgroup_cycle <- unique(data_forest$subgroup)
for(dom in domain_cycle){
  cat("\n##",dom,"\n")
  for(gender in subgroup_cycle){
    # cat("\n#",toupper(gender),"\n")
    data_forest %>% print_forest_plot(dom,gender)
    cat("\n")
  }
}

# ---- table-static-full ------------------------------------------------------------
cat("\n#Group by domain\n")
for(gender in c("male","female")){
  cat("\n##",gender)
  d <- catalog %>%
    dplyr::filter(
      model_type = "aehplus",
      model_numer = "b1"
    ) %>%
    prettify_catalog() %>%
    select_for_table(outcome,gender = gender,format = "full")
  if(track=="pulmonary"){d <- d %>% rename_domains(track)}
  d <- d %>%
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
  d <- catalog %>%
    dplyr::filter(
      model_type = "aehplus",
      model_numer = "b1"
    ) %>%
    prettify_catalog() %>%
    select_for_table(track,gender = gender,format = "full")
  if(track=="pulmonary"){d <- d %>% rename_domains(track)}
  d <- d %>%
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
  d <- catalog %>%
    dplyr::filter(
      model_type = "aehplus",
      model_numer = "b1"
    ) %>%
    prettify_catalog() %>%
    select_for_table(track,gender = gender,format = "focus")
  if(track=="pulmonary"){d <- d %>% rename_domains(track)}
  d <- d %>%
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
  d <- catalog %>%
    dplyr::filter(
      model_type = "aehplus",
      model_numer = "b1"
    ) %>%
    prettify_catalog() %>%
    select_for_table(track,gender = gender,format = "focus")
  if(track=="pulmonary"){d <- d %>% rename_domains(track)}
  d <- d %>%
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







# d %>% print_forest_plot("memory")

# ---- publish --------------
path_pulmonary_full <- "./reports/correlation-3/correlation-3-pulmonary-full.Rmd"
path_pulmonary_focus <- "./reports/correlation-3/correlation-3-pulmonary-focus.Rmd"
path_pulmonary_summary <- "./reports/correlation-3/correlation-3-pulmonary-summary.Rmd"


path_gait_full      <- "./reports/correlation-3/correlation-3-gait-full.Rmd"
path_gait_focus     <- "./reports/correlation-3/correlation-3-gait-focus.Rmd"
path_grip_full      <- "./reports/correlation-3/correlation-3-grip-full.Rmd"
path_grip_focus     <- "./reports/correlation-3/correlation-3-grip-focus.Rmd"


# allReports <- path_pulmonary_full
# allReports <- path_pulmonary_short
# allReports <- c(path_pulmonary_full,path_pulmonary_focus,path_pulmonary_summary)
allReports <- c(path_pulmonary_summary)
# allReports <- path_gait_full
# allReports <- path_gait_short
# allReports <- path_grip_full
# allReports <- path_grip_short
# allReports <- c(path_pulmonary_focus, path_pulmonary_full,
#                 path_gait_focus, path_gait_full,
#                 path_grip_focus, path_grip_full)
pathFilesToBuild <- c(allReports)
testit::assert("The knitr Rmd files should exist.", base::file.exists(pathFilesToBuild))
# Build the reports
for( pathFile in pathFilesToBuild ) {

  rmarkdown::render(input = pathFile,
                    output_format=c(
                      "html_document" # set print_format <- "html" in seed-study.R
                      # "pdf_document"
                      # ,"md_document"
                      # "word_document" # set print_format <- "pandoc" in seed-study.R
                    ),
                    clean=TRUE)
}


rmarkdown::render(input="./reports/correlation-3/physical-cognitive-dynamic.Rmd",
                  output_format = "html_document", clean = TRUE)


