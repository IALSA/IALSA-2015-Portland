library(shiny)
library(rpivotTable)

# Define UI for study viewer application
shinyUI(fluidPage(

  # Application title
  titlePanel("Table 2"),

  # Sidebar
  fluidRow(
    shiny::plotOutput(outputId = "table2", width='95%', height='400px')

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
