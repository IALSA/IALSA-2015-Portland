############ UI ############
library(shinydashboard)
library(shiny)

# ui <-
dashboardPage(
  dashboardHeader(),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Specification", tabName = "spec", icon = icon("coffee")),
      menuItem("Descriptives", tabName = "table1", icon = icon("table")),
      menuItem("Bivariate ISR", tabName = "isr", icon = icon("area-chart")),
      menuItem("About", tabName = "doc", icon = icon("book")),
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
      tabItem(tabName = "table1",
        h2("Description of the study's sample"),
        h2("EAS"),
        shiny::img(src =  "images/table1/Table1_EAS_Descriptives_IALSA_Portland.png", height = 800),
        h2("ILSE"),
        shiny::img(src =  "images/table1/Table1_ILSE_Descriptives_IALSA_Portland.png", height = 800),
        h2("NAS"),
        shiny::img(src =  "images/table1/Table1_NAS_Descriptives_IALSA_Portland.png", height = 800),
                h2("NuAge"),
        shiny::img(src =  "images/table1/Table1_NuAge_Descriptives_IALSA_Portland.png", height = 800),
                h2("RADC"),
        shiny::img(src =  "images/table1/Table1_RADC_Descriptives_IALSA_Portland.png", height = 800),
                h2("SATSA"),
        shiny::img(src =  "images/table1/Table1_SATSA_Descriptives_IALSA_Portland.png", height = 800)
      ),
      tabItem(tabName = "spec",
        h2("Model Specification"),
        shiny::img(src =  "images/specification.png"),
        shiny::img(src =  "images/specification_covariance_structure.png", width=1400)
      ),
      tabItem(tabName = "isr",
        h2("Bivariate ISR"),
        box(plotOutput("bivariate_ISR", height = 800, width = 1200))
        # box(plotOutput("bivariate_ISR"))
      ),
      tabItem(tabName = "doc",
        h2("About"),
        HTML("<br/>
             <font color='#605CA8'>",
             "
The current repository analyzes the results of the IALSA Analysis Workshop (pdf overview) that was held in Portland, Oregon from Monday February 23rd (8:30am) to Wednesday February 25th (12:30pm), 2015.

The primary aim of the workshop was to examine associations between changes in physical functioning (i.e., grip strength, pulmonary function, chair stands, walking speed) and cognitive functioning (i.e., measures of speed, memory, reasoning, executive functioning) in multiple-study comparative framework. Bivariate growth processes were estimated to evaluate dynamic associations in change and variation within and across these domains and in relation to sample and individual differences in age, lifestyle, and health outcomes. The results from these analyses will extend recent systematic reviews and meta-analyses (e.g., Clouston et al., 2012, Epidemiological Reviews and will be submitted for publication as a set of independent brief reports, capped by a literature review/overview of analysis and completed with a research synthesis summary.
",
             "</font>")
      )
    )
  )
)



