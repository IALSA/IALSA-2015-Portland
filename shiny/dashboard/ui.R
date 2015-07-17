library(shinydashboard)
library(shiny)

dashboardPage(
  dashboardHeader(),
  dashboardSidebar(
    sidebarMenu(
      # select icons here: http://fortawesome.github.io/Font-Awesome/icons/
      menuItem("Overview", tabName = "overviewTab", icon = icon("anchor")),
      menuItem("Specification", tabName = "spec", icon = icon("coffee")),
      menuItem("Descriptives", tabName = "table1", icon = icon("table")),
      menuItem("pivot Table", tabName = "pivotTab", icon = icon("th")),
      menuItem("Bivariate ISR", tabName = "isr", icon = icon("area-chart")),
      menuItem("About", tabName = "doc", icon = icon("book")),
      radioButtons("radioStudy", label = h3("Study"),
        choices = list("eas" = 'eas', "elsa" = "elsa", "hrs" = "hrs", "ilse" = "ilse",
                       "nas" = "nas", "nuage" = "nuage", "octo" = "octo", "radc" = "radc",
                       "satsa" = "satsa"), selected = "ilse"),
      radioButtons("radioPhysMeasure", label = h3(" Phys Measure"),
        choices = list("fev" = "fev", "pek" = "pek", "gait" = "gait", "tug" = "tug", "grip" = "grip"), selected = "grip"),
      radioButtons("radioModelType", label = h3("Model type"),
        choices = list("0" = "0","a" = "a", "ae" = "ae", "aeh" = "aeh",
                       "aehplus" = "aehplus", "full" = "full"), selected = "aeh"),
      radioButtons("radioDisplayMode", label = h3("Display Values"),
        choices = list("Variance" = "corr", "p-value" = "pvalue",
                       "Correlations & CI" = "display"), selected = "display")
    )
  ),
  dashboardBody(
    # tags$head(tags$style(
    #   type = 'text/css',
    #   '#test{ overflow-x: scroll; }'
    # )),
    tabItems(
      tabItem(
        tabName = "overviewTab",
        h2("Overview: the Collective of models in Portland project"),
        box(plotOutput("overview", height = 800, width = 1200))
      ),
      tabItem(
        tabName = "table1",
        h2("Description of the study's sample"),
        "(Select the desired study in the left panel.)",
        shiny::imageOutput(outputId ='table_descriptives')
      ),
      tabItem(
        tabName = "pivotTab",
        h2("Pivot Table"),
        box(title = "Pivot", height= 750, width = 1200,  status = "primary", solidHeader = TRUE,
          tags$head(tags$style( type = 'text/css',  '#pivotTable{ overflow-x: scroll; }')),
          rpivotTable::rpivotTableOutput("pivotTable")
        )
      ),
      tabItem(
        tabName = "spec",
        h2("Model Specification"),
        shiny::img(src = "images/specification.png"),
        shiny::img(src = "images/specification_covariance_structure.png", width=1400)
      ),
      tabItem(
        tabName = "isr",
        h2("Bivariate ISR"),
        box(plotOutput("bivariate_ISR", height = 800, width = 1200))
        # box(plotOutput("bivariate_ISR"))
      ),
      tabItem(
        tabName = "doc",
        h2("About"),
        HTML("<br/>
        <font color='#605CA8'>",
        "The current repository analyzes the results of the IALSA Analysis Workshop (pdf overview)
        that was held in Portland, Oregon from Monday February 23rd (8:30am) to Wednesday February 25th (12:30pm), 2015.
        <br/><br/>

        The primary aim of the workshop was to examine associations between changes in
        physical functioning (i.e., grip strength, pulmonary function, chair stands, walking speed)
        and cognitive functioning (i.e., measures of speed, memory, reasoning, executive functioning)
        in multiple-study comparative framework.
        <br/><br/>

        Bivariate growth processes were estimated to evaluate dynamic associations in change and variation
        within and across these domains and in relation to sample and individual differences in age, lifestyle, and health outcomes.

        The results from these analyses will extend recent systematic reviews and meta-analyses
        (e.g., Clouston et al., 2012, Epidemiological Reviews)
        and will be submitted for publication as a set of independent brief reports,
        capped by a literature review/overview of analysis and completed with a research synthesis summary.",
        "</font>")
      )
    )
  )
)
