library(shiny)

# Define UI for study viewer application
shinyUI(fluidPage(

  # Application title
  titlePanel("Portland workshop aid: renaming, collapsing, subsetting"),

  # Sidebar
  fluidRow(
  column(1, rpivotTableOutput("pivot"))


  ) # close fluidRow
)) # close fluidPage, shinyUI



