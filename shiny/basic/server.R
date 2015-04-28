
library(shiny)
library(datasets)
dsb <- readRDS('../../data/shared/dsb.rds')
ds <- dsb[ , c("model_number","study_name", "model_type","physical_outcome","cognitive_outcome","physical_specific","cognitive_specific")]

# Define server logic required to summarize and view the selected
# dataset
shinyServer(function(input, output) {

  # Return the requested dataset
  datasetInput <- reactive({
    switch(input$dataset,
           "eas" = ds[ds$study_name=="eas", ],
           "habc" = ds[ds$study_name=="habc", ],
           "ilse" = ds[ds$study_name=="ilse", ])
  })

  # Generate a summary of the dataset
  output$summary <- renderPrint({
    dataset <- datasetInput()
    # table(dataset$physical_outcome)
#     table(dataset$cognitive_outcome)
    table(dataset$physical_outcome, dataset$cognitive_outcome)

  })

  # Show the first "n" observations
  output$view <- renderTable({
    head(datasetInput(), n = input$obs)
    # getwd()
  })
})
