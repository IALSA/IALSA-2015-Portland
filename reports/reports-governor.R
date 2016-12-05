# This script procudes the reports that are ready to be shared


rmarkdown::render(input = "./reports/outcome-space/outcome-space.Rmd" ,
                  output_format="html_document", clean=TRUE)

# examine the parsed models
rmarkdown::render(input = "./reports/inspect-extracted-results/inspect-extracted-raw.Rmd" ,
                  output_format="html_document", clean=TRUE)

# produce the general tables of correlations
rmarkdown::render(input = "./reports/correlation-1/correlation-1.Rmd" ,
                  output_format="html_document", clean=TRUE)

# produce the general tables of growth curves
rmarkdown::render(input = "./reports/growth-cruve-1/growth-curve-1.Rmd" ,
                  output_format="html_document", clean=TRUE)


# The following scripts compile data objects described in other reports
# these scripts needs to be replaced by reports (at some time in the future)
source("./sandbox/word-tables/compile-correlation-tables.R")
source("./sandbox/word-tables/compile-growth-tables.R")


# germinate the seed of reports
rmarkdown::render(input = "./sandbox/word-tables/seed-meta.Rmd" ,
                  output_format="word_document", clean=TRUE)

rmarkdown::render(input = "./sandbox/word-tables/seed-elsa.Rmd" ,
                  output_format="word_document", clean=TRUE)


# publish seed reports
base::source('./reports/seeds-gait/publisher-gait.R')
base::source('./reports/seeds-grip/publisher-grip.R')
base::source('./reports/seeds-pulmonary/publisher-pulmonary.R')
