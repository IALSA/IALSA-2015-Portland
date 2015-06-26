## ./shiny/bivariate_ISR

library(shiny)
library(rpivotTable)

# Define UI for study viewer application
shinyUI(fluidPage(

  ## Application title
  titlePanel("Correlations of Bivariate ISR"),



  ## Generate a row with a sidebar
  sidebarLayout(

    ### Sidebar panel
    sidebarPanel(
      radioButtons("radioStudy", label = h3("Study"),
      choices = list("octo" = "octo","habc" = "habc", "ilse" = "ilse", "nuage" = "nuage", "radc" = "radc", "satsa" = "satsa", "elsa" = "elsa", "nas" = "nas"), selected = "satsa"),

      radioButtons("radioPhysMeasure", label = h3(" Phys Measure"),
      choices = list("grip" = "grip","fev" = "fev", "fvc" = "fvc", "pek" = "pek" , "gait" = "gait"), selected = "grip"),

      radioButtons("radioModelType", label = h3("Model type"),
      choices = list("0" = "0","a" = "a", "ae" = "ae", "aeh" = "aeh", "aehplus" = "aehplus", "full" = "full"), selected = "aeh")
    ),

    ### Main panel
    mainPanel(
    fluidRow(
      shiny::plotOutput(outputId = "bivariate_ISR", width='95%', height='900px')))

  ) ## close sidebarLayout
)) # close fluidPage, shinyUI

# see for observe object for CheckboxGroupInput
# http://stackoverflow.com/questions/28829682/r-shiny-checkboxgroupinput-select-all-checkboxes-by-click

# ui = shinyUI(fluidPage(
#   fluidRow(
#     column(2,sliderInput("integer", "Multiplier:",
#                                   min=1, max=4, value=1)),
#     column(8,
#            rpivotTableOutput("pivot") )
#
# )))
