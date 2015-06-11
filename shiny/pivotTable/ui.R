library(shiny)

# Define UI for study viewer application
shinyUI(fluidPage(

  # Application title
  titlePanel("Shiny Text"),

  # Sidebar
  sidebarLayout(
    sidebarPanel(
      selectInput("study", "Choose a study:",
                  choices = unique(ds$study_name))
    ),

    # Main panel
    mainPanel(
      rpivotTableOutput("pivot")

    )
  ) # close sidebarLayout
)) # close fluidPage, shinyUI
