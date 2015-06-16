## @knitr dummy
############## Developing the renaming mechanism #######################

rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

## @knitr load_source


## @knitr load_packages
library(shiny)
library(ggplot2)
library(dplyr)
library(lattice)
library(grid)
library(devtools)
library(rpivotTable)
library(scales)


## @knitr load_data
## if-else conditions for Shiny production
## "b" in "dsb" is for BASIC

if(basename(getwd())=="dashboard"){
dsb <- readRDS('../../data/shared/ds1a.rds')
source("../../shiny/dashboard/scripts/multiplot_function.R")
}else{
dsb <- readRDS('./data/shared/ds1a.rds')
source("./shiny/dashboard/scripts/multiplot_function.R")
}
ds <- dsb
t <- table(ds$cognitive_measure, ds$study_name);t[t==0]<-".";t
## @knitr tweak_data
## trim to make more managable
# keepvar <- c("model_number","study_name","subgroup", "model_type","physical_construct","cognitive_construct","physical_measure","cognitive_measure", "output_file", "converged")
# ds <- dsb[ , keepvar]
# dplyr::tbl_df(ds)


## @knitr define_themes
## define common graphical theme for all graphs
baseSize <- 10
theme1 <- ggplot2::theme_bw(base_size=baseSize) +
  ggplot2::theme(title=ggplot2::element_text(colour="gray20",size = baseSize+1)) +
  ggplot2::theme(axis.text=ggplot2::element_text(colour="gray40", size=baseSize-2)) +
  ggplot2::theme(axis.title=ggplot2::element_text(colour="gray40")) +
  ggplot2::theme(panel.border = ggplot2::element_rect(colour="gray80")) +
  ggplot2::theme(axis.ticks.length = grid::unit(0, "cm")) +
  ggplot2::theme(text = element_text(size =baseSize+7))
#   ggplot2::theme(panel.grid.major.x = element_blank())
#   ggplot2::theme(panel.grid.major.y = element_blank())
#   ggplot2::theme(panel.grid.minor.x = element_blank())
#   ggplot2::theme(panel.grid.minor.y = element_blank())
 ggplot2::theme(strip.text.x = element_text(angle = 0, size=baseSize-3, color="black"))

## @knitr declare_globals
## Define color palette and display labels
  x_name_colors <- c("physical_measure"="#e78ac3",
                     "study_name"="#8da0cb",
                     "model_type"="#fc8d62",
                     "subgroup"="#66c2a5")
  x_name_labels <- c("physical_measure"="Physical Measure",
                     "study_name"="Study",
                     "model_type"="Covariates",
                     "subgroup"="Subgroup")

## @knitr dummy

#   # d$dummy <- factor("dummy")
#   d$cog_meas <- stringr::str_sub(d$cognitive_measure,1,3)
#   d$cog_measure_display <-paste0(stringr::str_sub(d$cognitive_measure,1,6),
#                                  ", ",d$n)



##### Interactive pivot tables ####
# source : http://www.magesblog.com/2015/03/pivot-tables-with-r.html
# source : https://github.com/smartinsightsfromdata/rpivotTable

# install.packages(c("devtools", "Rtools"))

library(devtools)
# install_github("ramnathv/htmlwidgets")
# install_github("smartinsightsfromdata/rpivotTable")
## Load rpivotTable
library(rpivotTable)

# ## ptable_1
#   d <- dsb %>%
#   dplyr::count_(c("cognitive_construct","cognitive_measure"))
# rpivotTable(d)
#
# ## ptable_2
#   d <- dsb %>%
#   dplyr::count_(c("cognitive_construct","cognitive_measure","physical_measure", "study_name", "model_type", "subgroup"))
# pt <- rpivotTable(d)
# print(pt)


## ptable_3
ds <- dsb[ , c( "physical_construct","physical_measure","cognitive_measure","cognitive_construct",
                "study_name", "model_type","subgroup", "converged", "output_file", "corr_int", "corr_slope", "corr_residual", "ciu_corr_int", "cil_corr_int", "ciu_corr_slope", "cil_corr_slope", "ciu_corr_residual", "cil_corr_residual", "p_cov_int", "p_cov_slope", "p_cov_res")]
ds$display_int <- paste0(
  round(ds$corr_int, 2), "(*",
  round(ds$cil_corr_int,2), ",",
  round(ds$ciu_corr_int,2), "*)")

head(ds)


  # rmarkdown::render(input = "./reports/rename_collapse/InDev.Rmd", output_format="html_document", clean=TRUE)










































