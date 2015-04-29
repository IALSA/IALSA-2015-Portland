
library(shiny)

dsb <- readRDS('../../data/shared/dsb.rds')
ds <- dsb[ , c("model_number","study_name", "model_type","physical_outcome","cognitive_outcome","physical_specific","cognitive_specific","sd_int","p_cov_int","sd_slope","p_cov_slope")]

# Define server logic required to summarize and view the selected
# study
shinyServer(function(input, output) {

  # Return the requested study
  studyInput <- reactive({
    switch(input$study,
           "eas" = ds[ds$study_name=="eas", ],
           "habc" = ds[ds$study_name=="habc", ],
           "ilse" = ds[ds$study_name=="ilse", ])
  })
    # Select physical outcome
  physicalInput <- reactive({
    switch(input$physical,unique(study$physical_outcome))
  })

  # Generate a summary of the study
  output$summary <- renderPrint({
    study <- studyInput()
    # table(study$physical_outcome)
#     table(study$cognitive_outcome)
    table(study$physical_outcome, study$cognitive_outcome)

  })

  # Show the first "n" observations
  output$view <- renderTable({
    head(studyInput(), n = input$obs)
    # getwd()
  })
})
