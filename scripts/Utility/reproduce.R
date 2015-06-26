
source("./scripts/0_collect_studies.R")
# results in individual .csv for each study with raw model results

source("./scripts/1_combine_and_extend.R")
# combines individual .csvs into one dataset containing results of all models
# converts covariances into correlations and computes confidence intervals

source("./reports/rename_collapse/Track_renaming.R ")
# corrects typos, renames, reclassifies filename elements

## list all the reports
pathReports <- "./reports"
(rmd_list <- list.files(pathReports, full.names=T, recursive=T, pattern="Rmd$"))



## Rename and Collapse
(pathFilesToBuild <- base::file.path("./reports/rename_collapse/Track_renaming.Rmd"))
testit::assert("The knitr Rmd files should exist.", base::file.exists(pathFilesToBuild))
# Build the report
for( pathFile in pathFilesToBuild ) {
    rmarkdown::render(input = pathFile, output_format=c("html_document"), clean=TRUE)
}
# takes in ds1, produces ds1a (adjusted)
# renames model elements and collapses categories


## Basic
# Counts - basic model counts
# Essentials - basic model parameters
pathReports <- "./reports/basic"
(pathFilesToBuild <- list.files(pathReports, full.names=T, recursive=T, pattern="Rmd$"))
for( pathFile in pathFilesToBuild ) {
    rmarkdown::render(input = pathFile, output_format=c("html_document"), clean=TRUE)
}

## Individual quality check
# Each study gets an individualized report narrating its progress
pathReports <- "./reports/individual"
(pathFilesToBuild <- list.files(pathReports, full.names=T, recursive=T, pattern="Rmd$"))
for( pathFile in pathFilesToBuild ) {
    rmarkdown::render(input = pathFile, output_format=c("html_document"), clean=TRUE)
}


## Model Space
# Tile graphs and domain map.
pathReports <- "./reports/model_space"
(pathFilesToBuild <- list.files(pathReports, full.names=T, recursive=T, pattern="Rmd$"))
for( pathFile in pathFilesToBuild ) {
    rmarkdown::render(input = pathFile, output_format=c("html_document"), clean=TRUE)
}





#' Build the reports
# for( pathRmd in pathsReports ) {
#   pathMd <- base::gsub(pattern=".Rmd$", replacement=".md", x=pathRmd)
#   pathHtml <- base::gsub(pattern=".Rmd$", replacement=".html", x=pathRmd)
#   knitr::knit(input=pathRmd, output=pathMd)
#   markdown::markdownToHTML(file=pathMd, output=pathHtml)
# }
