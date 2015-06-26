## ./shiny/bivariate_ISR

library(shiny)
library(rpivotTable)

# Define UI for study viewer application
shinyUI(fluidPage(
  # theme = "custom.css",

  ## Application title
  titlePanel("Bivariate ISR (v.1.0"),



  ## Generate a row with a sidebar
  sidebarLayout(

    ### Sidebar panel
    sidebarPanel(
      radioButtons("radioStudy", label = h3("Study"),
      choices = list("eas" = 'eas', "elsa" = "elsa", "habc" = "habc", "ilse" = "ilse", "nas" = "nas", "nuage" = "nuage", "octo" = "octo", "radc" = "radc", "satsa" = "satsa"), selected = "satsa"),

      radioButtons("radioPhysMeasure", label = h3(" Phys Measure"),
      choices = list("fev" = "fev", "fvc" = "fvc", "gait" = "gait", "grip" = "grip", "pek" = "pek" ), selected = "grip"),

      radioButtons("radioModelType", label = h3("Model type"),
      choices = list("0" = "0","a" = "a", "ae" = "ae", "aeh" = "aeh", "aehplus" = "aehplus", "full" = "full"), selected = "aeh"),
      radioButtons("radioDisplayMode", label = h3("Display Values"),
      choices = list("Correlations" = "corr","Correlations & CI" = "display", "p-value" = "pvalue"), selected = "display")
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
