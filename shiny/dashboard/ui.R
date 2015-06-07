library(shiny)

# Define UI for study viewer application
shinyUI(fluidPage(

  # Application title
  titlePanel("Prototyping control grid graph"),

  # Sidebar with controls to select a study and specify the
  # number of observations to view
  sidebarLayout(
    sidebarPanel(
      selectInput("cogPair", "Pair cognitive meausre with:",
                  choices = c("physical_measure","study_name", "model_type","subgroup"))
    ),

    # Show a summary of the study and an HTML table with the
	 # requested number of observations
    mainPanel(
      plotOutput("dashboardPlot")
    )
  )
))
