## ./shiny/bivariate_ISR

# Article on pivot tables in R - http://www.magesblog.com/2015/03/pivot-tables-with-r.html

# rpivotTable Documentation - https://github.com/smartinsightsfromdata/rpivotTable

# GitHub Example - https://github.com/smartinsightsfromdata/rpivotTable/blob/master/inst/examples/canElections-shiny.R

rm(list=ls(all=TRUE))
cat("\f")

library(shiny)
library(dplyr)
library(ggplot2)
library(dplyr)
library(lattice)
library(grid)




if(basename(getwd())=="bivariate_ISR"){
ds1a <- readRDS('../../data/shared/ds1a.rds')
}else{
ds1a <- readRDS('./data/shared/ds1a.rds')
}
##################################################

## @knitr tweak_data


## @knitr subset_data
## trim to make more managable
keepvar <- c("study_name","model_number", "subgroup", "model_type","physical_construct","physical_measure", "cognitive_construct","cognitive_measure", "converged", "output_file", "corr_int", "corr_slope", "corr_residual", "ciu_corr_int", "cil_corr_int", "ciu_corr_slope", "cil_corr_slope", "ciu_corr_residual", "cil_corr_residual", "p_cov_int", "p_cov_slope", "p_cov_res")
# keepvar <- c("model_number","study_name","subgroup", "model_type","physical_construct","cognitive_construct","physical_measure","cognitive_measure", "output_file", "converged")

# reduce number of columns
dsb <- ds1a[ , keepvar]
# reduce number of rows
dsb <- dsb %>% dplyr::filter(model_number %in% c("u1","b1"))

## @knitr extend_data
dsb$display_int <- paste0(
  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(dsb$corr_int, 2)), " \n (",
  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(dsb$cil_corr_int,2)), ",",
  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(dsb$ciu_corr_int,2)), ")"
)

dsb$display_slope <- paste0(
  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(dsb$corr_slope, 2)), " \n (",
  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(dsb$cil_corr_slope,2)), ",",
  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(dsb$ciu_corr_slope,2)), ")")

dsb$display_residual <- paste0(
  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(dsb$corr_residual, 2)), " \n (",
  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(dsb$cil_corr_residual,2)), ",",
  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(dsb$ciu_corr_residual,2)), ")")


## Data functions
source("./shiny/bivariate_ISR/scripts/ISR_data_functions.R")
# filter_model()   # subsets data
# IRS_tile_data()  # shapes data for ISR tile plot

# subsets data
ds <- filter_model(ds = dsb, study = "satsa" , pm = "grip", covars = "aeh")
# shapes data for ISR tile plot
d <- as.data.frame(IRS_tile_data(ds=ds))

## Graph functions
source("./shiny/bivariate_ISR/scripts/ISR_graph_functions.R")
# basic_tile() - simple tile with cog measures on y-axis
# names_tile()
# ISR_plot
# multiplot()

a <- basic_tile(ds = d, x_name = "physical_measure")
b <- names_tile(d,"physical_measure")
c <- ISR_plot(ds = d, "satsa", "grip", display_value="corr")
## @knitr
# load multi_plot function

g <- multiplot(a,c,  cols=2)




###################################################
# Define server logic required to summarize and view the selected
# study
shinyServer(function(input, output) {

# browser()
  output$table2 <- renderPlot({
     # browser()
    d <- filter_model(ds = ds
                     , study = input$study
                     , physical_measure = input$physical_measure
                     , covars = input$covars
    )
    ISR_plot(ds = d
            , study = input$study
            , physical_measure = input$physical_measure
            , display = input$display
            , covars = input$covars
    )
  })
})



