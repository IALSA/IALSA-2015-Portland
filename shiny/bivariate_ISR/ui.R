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
      radioButtons("radioStudy", label = h3("Select study"),
      choices = list("octo" = 1,"habc" = 2, "ilse" = 3, "nuage" = 4, "radc" = 5, "satsa" = 6, elsa = 7, nas = 8), selected = 1),

      radioButtons("radioPhysMeasure", label = h3("Select Phys Measure"),
      choices = list("grip" = 1,"fev" = 2, "fvc" = 3, "pek" = 4, "gait" = 5), selected = 1),

      radioButtons("radioModelType", label = h3("Select Covariate Set"),
      choices = list("0" = 1,"a" = 2, "ae" = 3, "aeh" = 4, "aehplus" = 5, "full" = 6), selected = 4)
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
