rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.
cat("\f") # clear console



# @knitr load_packages
library(dplyr) # for data manipulation
library(ggplot2) # for graphing
library(MplusAutomation)

# @knitr load_sources ---------------------------------------
source("https://raw.githubusercontent.com/andkov/psy532/master/scripts/graphs/main_theme.R")
source("./scripts/mplus/group_variables.R") # define objects with names of variables/columns
source("http://www.statmodel.com/mplus-R/mplus.R") # load custom functions

# @knitr declare_globals ---------------------------------------


# @knitr get_gh5_files -----

# load the list object with file paths to the outputs and gh5
out_list_all_plus <- readRDS("./projects/physical/outputs/out_list.rds")

# define the location of the folders in each contributing study
eas <- list.files(file.path("./studies/eas/physical"),full.names=T, recursive=T, pattern="gh5$")
elsa <- list.files(file.path("./studies/elsa/physical"),full.names=T, recursive=T, pattern="gh5$")
# habc <- list.files(file.path("./studies/habc/physical"),full.names=T, recursive=T, pattern="gh5$")
hrs <- list.files(file.path("./studies/hrs/physical"),full.names=T, recursive=T, pattern="gh5$")
ilse <- list.files(file.path("./studies/ilse/physical"),full.names=T, recursive=T, pattern="gh5$")
lasa <- list.files(file.path("./studies/lasa/physical"),full.names=T, recursive=T, pattern="gh5$")
# nas <- list.files(file.path("./studies/nas/physical"),full.names=T, recursive=T, pattern="gh5$")
nuage <- list.files(file.path("./studies/nuage/physical"),full.names=T, recursive=T, pattern="gh5$")
octo <- list.files(file.path("./studies/octo/physical"),full.names=T, recursive=T, pattern="gh5$")
radc <- list.files(file.path("./studies/radc/physical"),full.names=T, recursive=T, pattern="gh5$")
satsa <- list.files(file.path("./studies/satsa/physical"),full.names=T, recursive=T, pattern="gh5$")
# see what studies have provided .gh5 files
gh5_paths <- c(eas,   hrs, lasa, nuage, octo, radc, satsa)

# select a .gh5 file for processing
# load custom script to extract data from a .gh5 file
source("./scripts/mplus/get_gh5.R")

# when selecting from the list object with model outputs
# (all_gh5 <- gsub(".out",".gh5", out_list_all_plus[["path"]]) )
# gh5_file <- all_gh5[34]

gh5_file <- gh5_paths[6]
# get graph-ready data
# dsL <- get_gh5_data(file=gh5_file)


# @knitr load_data ---------------------------------------
dsL <- get_gh5_data(file=gh5_file)

# @knitr inspect_data ---------------------------------------
dsL[dsL$id==1,]
# @knitr tweak_data ---------------------------------------


# @kntir basic_table ---------------------------------------

# @knitr basic_graph ---------------------------------------

# d <- dsL %>% tidyr::gather_("term","value",c("IP","SP","SC","IC"))
# d$age <- d[is.na(d$observed),"age"]
# d %>% dplyr::filter(id==1) %>% dplyr::select(id, BAGE, wave, time, outcome, observed, age, term, value )

dsL %>% dplyr::filter(id==1) %>% dplyr::select(id, BAGE, wave, time, outcome, observed, age, IP, SP, SC, IC )
g <- ggplot2::ggplot(dsL,aes(x=SP,y=SC))+
  geom_point()+
  main_theme
g
# @knitr new_chunk ---------------------------------------


# @knitr get_pair_data ---------------------------------------

# @knitr basic_graph_1 ---------------------------------------



# @knitr reproduce ---------------------------------------
  rmarkdown::render(input = "./reports/physical/basic_graphs/basic_graphs.Rmd" ,
                    output_format="html_document", clean=TRUE)
