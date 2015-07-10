############ UI ############
library(shinydashboard)
library(shiny)

# ui <-
dashboardPage(
  dashboardHeader(),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Bivariate ISR", tabName = "isr", icon = icon("dashboard")),
      menuItem("Bivariate   ISR 2", tabName = "isr2", icon = icon("dashboard")),
      radioButtons("radioStudy", label = h3("Study"),
        choices = list("eas" = 'eas', "elsa" = "elsa", "habc" = "habc", "ilse" = "ilse",
                       "nas" = "nas", "nuage" = "nuage", "octo" = "octo", "radc" = "radc",
                       "satsa" = "satsa"), selected = "satsa"),
      radioButtons("radioPhysMeasure", label = h3(" Phys Measure"),
        choices = list("fev" = "fev", "fvc" = "fvc", "gait" = "gait", "grip" = "grip",
                       "pek" = "pek" ), selected = "grip"),
      radioButtons("radioModelType", label = h3("Model type"),
        choices = list("0" = "0","a" = "a", "ae" = "ae", "aeh" = "aeh",
                       "aehplus" = "aehplus", "full" = "full"), selected = "aeh"),
      radioButtons("radioDisplayMode", label = h3("Display Values"),
        choices = list("Correlations" = "corr","Correlations & CI" = "display",
                       "p-value" = "pvalue"), selected = "display")
    )
  ),
  dashboardBody(
    tabItems(
      tabItem(tabName = "isr",
        h2("Bivariate ISR"),
        box(plotOutput("bivariate_ISR", height = 800, width = 1200))

      ),

      tabItem(tabName = "isr2",
        h2("Bivariate ISR 2")
      )
    )
  )
)



