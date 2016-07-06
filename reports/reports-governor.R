# This script executes all manipulation scripts and walks you through data provisioniing chain.

# rmarkdown::render(input = "./sandbox/inspect-extracted-results/inspect-extracted-raw.Rmd" ,
#                   output_format="html_document", clean=TRUE)

source("./manipulation/1-rename-classify.R")

source("./manipulation/2-transformations-compute-ci.R")
rmarkdown::render(input = "./sandbox/inspect-extracted-results/inspect-extracted-raw.Rmd" ,
                  output_format="html_document", clean=TRUE)
#
#
rmarkdown::render(input = "./reports/outcome-space/outcome-space.Rmd" ,
                  output_format="html_document", clean=TRUE)

# examine the parsed models
rmarkdown::render(input = "./reports/inspect-extracted-results/inspect-extracted-raw.Rmd" ,
                  output_format="html_document", clean=TRUE)
