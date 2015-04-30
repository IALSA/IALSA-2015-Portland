library(shiny)

# Define UI for study viewer application
shinyUI(fluidPage(

  # Application title
  titlePanel("Shiny Text"),

  # Sidebar with controls to select a study and specify the
  # number of observations to view
  sidebarLayout(
    sidebarPanel(
      selectInput("study", "Choose a study:",
                  choices = unique(ds$study_name)),

      selectInput("physical", "Choose physical outcome:",
                  choices = unique(ds$physical_outcome)),

      numericInput("obs", "Number of observations to view:", value=10)
    ),

    # Show a summary of the study and an HTML table with the
	 # requested number of observations
    mainPanel(
      verbatimTextOutput("freqs"),

      dataTableOutput("view")
    )
  )
))
