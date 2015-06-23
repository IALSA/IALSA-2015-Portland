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
      selectInput("study","Select study:", choices=c("octo","habc", "ilse", "nuage", "radc", "satsa")),
      selectInput("physical_measure", "Physical measure:", choices = c("grip","fev", "fvc",  "pek",  "gait")),
      selectInput("display", "Display mode:",
                  choices = c("Correlation" = "corr",
                               "Correlation & CI" = "display",
                               "p-value" = "pvalue")),
      checkboxGroupInput("covars", "Covariate set:",
                   c("Empty" = "0",
                     "a" = "a",
                     "ae" = "ae",
                     "aeh" = "aeh",
                     "aeh+" = "aehplus",
                     "full" = "full"
                     ), selected = 1:5)),

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
