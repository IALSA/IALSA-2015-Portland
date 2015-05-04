
library(shiny)

dsb <- readRDS('../../data/shared/dsb.rds')
ds <- dsb[ , c("study_name", "model_type","physical_outcome","cognitive_outcome","physical_specific","cognitive_specific","sd_int","p_cov_int","sd_slope","p_cov_slope")]
head(ds)


unique(ds$study_name)
unique(ds$physical_outcome)


# Define server logic required to summarize and view the selected
# study
shinyServer(function(input, output,clientData,session) {

# Develope handler for when study variables is empty # use handlers / if()
  observe({
    # browser()
# ds_study <- ds[ds$study_name==input$study, ]
study_variables <- sort(unique(ds_study()$physical_outcome))
updateSelectInput(session, "physical",
                     choices = study_variables,
                     selected=study_variables[1])
})

ds_study <- reactive({
  ds[ds$study_name==input$study, ]
  })

  # Generate frequency count for the study
  output$freqs <- renderPrint({

    table(ds_study()$physical_outcome,ds_study()$cognitive_outcome)
#
  })
#
#   # Show the first "n" observations
  output$view <- renderDataTable({
    ds_study_physical <- ds_study()[ds_study()$physical_outcome==input$physical, ]
    head(ds_study_physical, n=input$obs)
  },
  options = list(
    searching = F,
    paging = FALSE,
    sort = FALSE,
    language= list(emptyTable="--<em>This table has no entries</em>--"))
  )
})
