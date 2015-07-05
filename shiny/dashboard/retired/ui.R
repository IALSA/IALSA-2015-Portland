library(shiny)

# Define UI for study viewer application
shinyUI(fluidPage(

  # Application title
  titlePanel("Prototyping control grid graph"),

  # Sidebar
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "x_name",
                  label = "Pair cognitive meausre with:",
                  choices = c("physical_measure","study_name", "model_type","subgroup"))
    ), # close selectInput

    # Show a summary of the study and an HTML table with the
	  mainPanel(
      plotOutput("dashboardPlot")
    ) # close mainPanel

  ) # close sidebarLayout
)) # close fluidPage, shinyUI

