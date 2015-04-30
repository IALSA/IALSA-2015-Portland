
library(shiny)

dsb <- readRDS('../../data/shared/dsb.rds')
ds <- dsb[ , c("model_number","study_name", "model_type","physical_outcome","cognitive_outcome","physical_specific","cognitive_specific","sd_int","p_cov_int","sd_slope","p_cov_slope")]
head(ds)
unique(ds$study_name)
unique(ds$physical_outcome)


# Define server logic required to summarize and view the selected
# study
shinyServer(function(input, output) {

  # Generate frequency count for the study
  output$freqs <- renderPrint({
    data <- switch(input$study,
     "eas" = ds[ds$study_name=="eas", ]
    )
    PO <- switch(input$physical,

    )

    table(data$cognitive_outcome,data$physicalO)

  })

  # Show the first "n" observations
  output$view <- renderTable({
    head(studyInput(), n = input$obs)
    # getwd()
  })
})
