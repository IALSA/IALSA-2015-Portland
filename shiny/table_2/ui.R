library(shiny)
library(rpivotTable)

# Define UI for study viewer application
shinyUI(fluidPage(

  ## Application title
  titlePanel("Table 2: Correlations among ISR"),



  ## Generate a row with a sidebar
  sidebarLayout(

    ### Sidebar panel
    sidebarPanel(
      selectInput("study","Select study:", choices=c("octo","satsa"))),

    ### Main panel
    mainPanel(
    fluidRow(
      shiny::plotOutput(outputId = "table2", width='95%', height='900px')))

  ) ## close sidebarLayout
)) # close fluidPage, shinyUI


# ui = shinyUI(fluidPage(
#   fluidRow(
#     column(2,sliderInput("integer", "Multiplier:",
#                                   min=1, max=4, value=1)),
#     column(8,
#            rpivotTableOutput("pivot") )
#
# )))
