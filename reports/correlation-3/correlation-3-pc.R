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
  ) %>%
  dplyr::filter(
  ! process_b == "trailsb"
  )

# d <- catalog %>%
#   dplyr::filter(process_b == "trailsb")

# ---- save-data-for-tables --------------------------
# for(track in c("gait","grip","pulmonary")){
#   for(gender in c("male","female")){
#     for(format in c("full","brief"))
#       catalog %>%
#       dplyr::filter(model_type == "aehplus",model_number=="b1") %>%
#       prettify_catalog() %>%
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

# ---- table-dynamic, eval=FALSE, echo=F -----------------------------------------------------------
# track = "pulmonary"

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




# ----- custom-save-forest --------------------------------
track = "pulmonary"
path_graph_jpeg = "./reports/correlation-3/forest-plot-pulmonary/jpeg/"
for(i in c("slope","residual")){
  # i <- "residual"
  data_forest <- get_forest_data(catalog,track = track,index = i) %>%
    rename_domains(track) %>%
    dplyr::filter(
      model_number == "b1"
      ,model_type   == "aehplus"
    ) %>%
    dplyr::mutate(
      domain = gsub("delayed/working","delayed or working", domain)
    )
  domain_cycle <- setdiff(unique(data_forest$domain),NA)
  subgroup_cycle <- unique(data_forest$subgroup)
  for(dom in domain_cycle){
    # cat("\n##",dom,"\n")
    for(gender in subgroup_cycle){
      # dom = domain_cycle[3]
      # gender = subgroup_cycle[1]
      # n_lines = 13
      n_lines <- data_forest %>%
        dplyr::filter(domain==dom,subgroup==gender) %>%
        nrow()
      # save graphic
      # make sure it conforms to `track-domain-gender-index` formula
      path_save = paste0(path_graph_jpeg,track,"-",dom,"-",gender,"-",i,".jpg")
      jpeg(
        filename  =  path_save,
        width     = 900,
        height    = 140 + 20*n_lines,
        units     = "px",
        pointsize = 12,
        quality   = 100
      )
      data_forest %>% print_forest_plot(dom,gender,i)
      dev.off()
    }
  }
}

# first attemp at automatic assembly into the complext plot:
# index = "slope"
# gender = "male"
# pattern = paste0("-",gender,"-",index,".jpg$")
#
# path_jpeg <- list.files(path_graph_jpeg,pattern = pattern,full.names = T )
#
# # setup plot
# par(mar=rep(0,4)) # no margins
# # layout the plots into a matrix w/ 12 columns, by row
# layout(matrix(1:length(path_jpeg), ncol=1, byrow=TRUE))
#
# for(i in seq_along(path_jpeg)){
#     img <- jpeg::readJPEG(path_jpeg[[i]])
#     plot(NA,xlim=0:1,ylim=0:1,xaxt="n",yaxt="n",bty="n")
#     rasterImage(img,0,0,1,1)
# }
# dev.print(
#   device = jpeg,
#   "./reports/correlation-3/forest-plot-pulmonary.jpeg",
#   width = 700, height = 2100, quality=100
# )


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
# data_forest %>% print_forest_plot("memory","male")
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

# ---- place-forest --------------------------------------
# places previously printed plot onto a single canvas
jpegs <- list.files("./reports/correlation-3/forest-plot-pulmonary/jpeg/", full.names = T)

regex_pattern <- "(\\w+)-(.+)-(\\w+)-(\\w+).jpg$"
# for(i in seq_along(jpegs)){
  i <- 1
  (path <- sub("[./]","../..",jpegs[i]))
  (track    = sub(regex_pattern,"\\1", basename(jpegs[i]) ) )
  (domain   = sub(regex_pattern,"\\2", basename(jpegs[i]) ) )
  (subgroup = sub(regex_pattern,"\\3", basename(jpegs[i]) ) )
  (index    = sub(regex_pattern,"\\4", basename(jpegs[i]) ) )
# }

cat('<img src="', path, '" alt="', basename(path),'">\n', sep="") #Don't specify width.  This maintains the aspect ratio.



# ----- custom-save-forest --------------------------------


# ---- table-static-full ------------------------------------------------------------
cat("\n#Group by domain\n")
for(gender in c("male","female")){
  # gender = "male"
  cat("\n##",gender)
  d <- catalog %>%
    dplyr::filter(
      model_type == "aehplus",
      model_number == "b1"
    ) %>%
    prettify_catalog() %>%
    select_for_table(track,gender = gender,format = "full")
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
      model_type == "aehplus",
      model_number == "b1"
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
      model_type == "aehplus",
      model_number == "b1"
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
      model_type == "aehplus",
      model_number == "b1"
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
path_pulmonary_gait <- "./reports/correlation-3/correlation-3-gait-summary.Rmd"

path_grip_full      <- "./reports/correlation-3/correlation-3-grip-full.Rmd"
path_grip_focus     <- "./reports/correlation-3/correlation-3-grip-focus.Rmd"
path_grip_summary <- "./reports/correlation-3/correlation-3-grip-summary.Rmd"


# allReports <- c(path_pulmonary_full,path_pulmonary_focus)
# allReports <- c(path_pulmonary_summary)
# allReports <- c(path_gait_full,path_gait_focus)
# allReports <- c(path_gait_summary)
# allReports <- c(path_grip_full,path_grip_focus)
allReports <- c(path_grip_summary)

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



