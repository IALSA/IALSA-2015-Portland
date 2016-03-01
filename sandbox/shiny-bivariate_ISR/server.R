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
ds2 <- readRDS('../../data/shared/ds2.rds')
source("../../shiny/bivariate_ISR/scripts/ISR_data_functions.R")
source("../../shiny/bivariate_ISR/scripts/ISR_graph_functions.R")

}else{
ds2 <- readRDS('./data/shared/ds2.rds')
source("./shiny/bivariate_ISR/scripts/ISR_data_functions.R")
source("./shiny/bivariate_ISR/scripts/ISR_graph_functions.R")

}
##################################################

## @knitr tweak_data


## @knitr subset_data
## trim to make more managable
keepvar <- c("study_name","model_number", "subgroup", "model_type","physical_construct","physical_measure", "cognitive_construct","cognitive_measure", "converged", "output_file", "pc_CORR_00", "pc_CORR_11", "pc_CORR_residual", "pc_CI95_00_high", "pc_CI95_00_low", "pc_CI95_11_high", "pc_CI95_11_low", "pc_CI95_residual_high", "pc_CI95_residual_low", "pp_TAU_00_pval", "pp_TAU_11_pval", "pc_SIGMA_pval")
# keepvar <- c("study_name","model_number", "subgroup", "model_type","physical_construct","physical_measure", "cognitive_construct","cognitive_measure", "converged", "output_file", "corr_int", "corr_slope", "corr_residual", "ciu_corr_int", "cil_corr_int", "ciu_corr_slope", "cil_corr_slope", "ciu_corr_residual", "cil_corr_residual", "p_cov_int", "p_cov_slope", "p_cov_res")
# keepvar <- c("model_number","study_name","subgroup", "model_type","physical_construct","cognitive_construct","physical_measure","cognitive_measure", "output_file", "converged")

# reduce number of columns
dsb <- ds2[ , keepvar]
# reduce number of rows
dsb <- dsb %>% dplyr::filter(model_number %in% c("u1","b1"))

table( dsb$cognitive_measure,dsb$cognitive_construct)

## @knitr extend_data
dsb$display_int_center <-  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(dsb$pc_CORR_00, 2))
dsb$display_int_ci <-  paste0("(",
  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(dsb$pc_CI95_00_low,2)), ",",
  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(dsb$pc_CI95_00_high,2)), ")"
)
dsb$display_int <- paste0(display_int_center, "\n", display_int_ci)

dsb$display_slope <- paste0(
  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(dsb$pc_CORR_1, 2)), " \n (",
  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(dsb$pc_CI95_11_low,2)), ",",
  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(dsb$pc_CI95_11_high,2)), ")")

dsb$display_residual <- paste0(
  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(dsb$pc_CORR_residual, 2)), " \n (",
  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(dsb$pc_CI95_residual_low,2)), ",",
  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(dsb$pc_CI95_residual_high,2)), ")")


## Data functions
# source("./shiny/bivariate_ISR/scripts/ISR_data_functions.R")
# filter_model()   # subsets data
# IRS_tile_data()  # shapes data for ISR tile plot

## Graph functions
# source("./shiny/bivariate_ISR/scripts/ISR_graph_functions.R")
# basic_tile() - simple tile with cog measures on y-axis
# names_tile()
# ISR_plot
# multiplot()


#
# dsTile <- filter_model(ds = dsb, study = "octo" , pm = "grip", covars = "aeh")
# dsISR <- as.data.frame(ISR_tile_data(ds=dsTile))
#
# TilePlot <- basic_tile(ds = dsTile, x_name = "physical_measure")
# ISRPlot <- ISR_plot(ds = dsISR,  display_value="display")
#
# allPlots <- 10
# firstPlot <- 2
# secondPlot <- 8
#
# pushViewport(viewport(layout = grid.layout(1, allPlots )))
# print(TilePlot, vp = viewport(layout.pos.row = 1, layout.pos.col = 1:firstPlot))
# print(ISRPlot, vp = viewport(layout.pos.row = 1, layout.pos.col = firstPlot+1:secondPlot))

###################################################
# Define server logic required to summarize and view the selected
# study
shinyServer(function(input, output, session){
# browser()
  selectedData <- reactive({
  filter_model(ds = dsb,study = input$radioStudy ,
    pm = input$radioPhysMeasure, covars = input$radioModelType)
  })

  # shapes data for ISR tile plot


# browser()
  output$bivariate_ISR <- renderPlot({
    TilePlot <- basic_tile(ds = selectedData(), x_name = "physical_measure")
    dsISR <- as.data.frame(ISR_tile_data(ds=selectedData()))
    ISRPlot <- ISR_plot(ds = dsISR,  display_value=input$radioDisplayMode)

    allPlots <- 11
    firstPlot <- 3
    secondPlot <- 8

    pushViewport(viewport(layout = grid.layout(1, allPlots )))
    print(TilePlot, vp = viewport(layout.pos.row = 1, layout.pos.col = 1:firstPlot))
    print(ISRPlot, vp = viewport(layout.pos.row = 1, layout.pos.col = firstPlot+1:secondPlot))
  }) #close renderPlot


}) # close shinyServer



