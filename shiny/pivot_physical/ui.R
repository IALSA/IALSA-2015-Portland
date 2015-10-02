library(shiny)
library(rpivotTable)

# Define UI for study viewer application
shinyUI(fluidPage(

  # Application title
  titlePanel("Portland workshop aid: renaming, collapsing, subsetting"),

  # Sidebar
  fluidRow(
  column(1, rpivotTable::rpivotTableOutput("pivot"))


  ) # close fluidRow
)) # close fluidPage, shinyUI


# ui = shinyUI(fluidPage(
#   fluidRow(
#     column(2,sliderInput("integer", "Multiplier:",
#                                   min=1, max=4, value=1)),
#     column(8,
#            rpivotTableOutput("pivot") )
#
# )))
