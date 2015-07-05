## app.R ##
rm(list=ls(all=TRUE))
cat("\f")

library(shiny)
library(shinydashboard)
library(shiny)
library(dplyr)
library(ggplot2)
library(dplyr)
library(lattice)
library(grid)


if(basename(getwd())=="dashboard"){
ds1a <- readRDS('../../data/shared/ds1a.rds')
source("../../shiny/bivariate_ISR/scripts/ISR_data_functions.R")
source("../../shiny/bivariate_ISR/scripts/ISR_graph_functions.R")

}else{
ds1a <- readRDS('./data/shared/ds1a.rds')
source("./shiny/bivariate_ISR/scripts/ISR_data_functions.R")
source("./shiny/bivariate_ISR/scripts/ISR_graph_functions.R")

}
############ PREP ############
## trim to make more managable
keepvar <- c("study_name","model_number", "subgroup", "model_type","physical_construct","physical_measure", "cognitive_construct","cognitive_measure", "converged", "output_file", "corr_int", "corr_slope", "corr_residual", "ciu_corr_int", "cil_corr_int", "ciu_corr_slope", "cil_corr_slope", "ciu_corr_residual", "cil_corr_residual", "p_cov_int", "p_cov_slope", "p_cov_res")
# keepvar <- c("model_number","study_name","subgroup", "model_type","physical_construct","cognitive_construct","physical_measure","cognitive_measure", "output_file", "converged")

# reduce number of columns
dsb <- ds1a[ , keepvar]
# reduce number of rows
dsb <- dsb %>% dplyr::filter(model_number %in% c("u1","b1"))

table( dsb$cognitive_measure,dsb$cognitive_construct)

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


############ UI ############

ui <- dashboardPage(
  dashboardHeader(),
  dashboardSidebar(),
  dashboardBody(
    fluidRow(
      box(plotOutput("bivariate_ISR", height = 800, width = 1200))
    ) #close fluidRow
  )
)


############ SERVER ############
server <- function(input, output, session) {

# browser()
  selectedData <- reactive({
  filter_model(ds = dsb,study = "satsa" ,
    pm = "grip", covars = "aeh")
  })

# browser()
  output$bivariate_ISR <- renderPlot({
    TilePlot <- basic_tile(ds = selectedData(), x_name = "physical_measure")
    dsISR <- as.data.frame(ISR_tile_data(ds=selectedData()))
    ISRPlot <- ISR_plot(ds = dsISR,  display_value="display")

    allPlots <- 11
    firstPlot <- 3
    secondPlot <- 8

    pushViewport(viewport(layout = grid.layout(1, allPlots )))
    print(TilePlot, vp = viewport(layout.pos.row = 1, layout.pos.col = 1:firstPlot))
    print(ISRPlot, vp = viewport(layout.pos.row = 1, layout.pos.col = firstPlot+1:secondPlot))
  }) #close renderPlot


} # close server

shinyApp(ui, server)
