# rm(list=ls(all=TRUE))
cat("\f")

library(shiny)
library(shinydashboard)
library(dplyr)
library(ggplot2)
library(grid)
library(rpivotTable)
# library(lattice)

if(basename(getwd())=="dashboard"){
  ds2 <- readRDS('../../data/shared/ds2.rds')
  # source("../../shiny/bivariate_ISR/scripts/ISR_data_functions.R")
  # source("../../shiny/bivariate_ISR/scripts/ISR_graph_functions.R"
} else {
  ds2 <- readRDS('./data/shared/ds2.rds')
  # source("./shiny/bivariate_ISR/scripts/ISR_data_functions.R")
  # source("./shiny/bivariate_ISR/scripts/ISR_graph_functions.R")
}

############ PREP ############
## trim to make more managable
<<<<<<< HEAD
keepvar <- c("study_name","model_number", "subgroup", "model_type",
  "physical_construct","physical_measure", "cognitive_construct","cognitive_measure",
  "converged", "output_file",
  "pc_TAU_00",      "pc_TAU_11",         "pc_SIGMA",
  "pc_TAU_00_pval", "pc_TAU_11_pval",    "pc_SIGMA_pval",
  "pc_CORR_00",     "pc_CORR_11",        "pc_CORR_residual",
  "pc_CI95_00_high", "pc_CI95_00_low",
  "pc_CI95_11_high", "pc_CI95_11_low",
  "pc_CI95_residual_high", "pc_CI95_residual_low",
  "pp_TAU_00_pval", "pp_TAU_11_pval" )
=======
keepvar <- c(
  "study_name","model_number", "subgroup", "model_type","physical_construct","physical_measure", "cognitive_construct","cognitive_measure", "converged", "output_file",
  "pc_CORR_00", "pc_CORR_11", "pc_CORR_residual",
  "pc_CI95_00_high", "pc_CI95_00_low", "pc_CI95_11_high", "pc_CI95_11_low", "pc_CI95_residual_high", "pc_CI95_residual_low",
  "pp_TAU_00_pval", "pp_TAU_11_pval", "pc_SIGMA_pval"
)
>>>>>>> tidy indentions
# keepvar <- c("study_name","model_number", "subgroup", "model_type","physical_construct","physical_measure", "cognitive_construct","cognitive_measure", "converged", "output_file", "corr_int", "corr_slope",  "corr_residual",    "ciu_corr_int",    "cil_corr_int",    "ciu_corr_slope",  "cil_corr_slope", "ciu_corr_residual",       "cil_corr_residual", "p_cov_int", "p_cov_slope", "p_cov_res", )
# keepvar <- c("model_number","study_name","subgroup", "model_type","physical_construct","cognitive_construct","physical_measure","cognitive_measure", "output_file", "converged")

# reduce number of columns
dsb <- ds2[ , keepvar]
# reduce number of rows
dsb <- dsb %>% dplyr::filter(model_number %in% c("b1"))

table( dsb$cognitive_measure,dsb$cognitive_construct)

## @knitr extend_data
dsb$display_int <- paste0(
  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(dsb$pc_CORR_00, 2)), " \n (",
  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(dsb$pc_CI95_00_low,2)), ",",
  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(dsb$pc_CI95_00_high,2)), ")"
)

dsb$display_slope <- paste0(
  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(dsb$pc_CORR_1, 2)), " \n (",
  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(dsb$pc_CI95_11_low,2)), ",",
  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(dsb$pc_CI95_11_high,2)), ")"
)

dsb$display_residual <- paste0(
  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(dsb$pc_CORR_residual, 2)), " \n (",
  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(dsb$pc_CI95_residual_low,2)), ",",
  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(dsb$pc_CI95_residual_high,2)), ")"
)

dsb <- dsb %>% dplyr::select_("study_name","model_number", "subgroup", "model_type",
  "physical_construct","physical_measure", "cognitive_construct","cognitive_measure",
#   "pc_CORR_00", "pc_TAU_00_pval","display_int",
#   "pc_CORR_11", "pc_TAU_11_pval","display_slope",
#   "pc_CORR_residual", "pc_SIGMA_pval","display_residual"
  "pc_TAU_00", "pc_TAU_00_pval","display_int",
  "pc_TAU_11", "pc_TAU_11_pval","display_slope",
  "pc_SIGMA", "pc_SIGMA_pval","display_residual"
)

# setdiff(c( "physical_construct","physical_measure","cognitive_measure","cognitive_construct", "study_name", "model_type","subgroup", "converged", "output_file", "pc_CORR_00", "pc_CORR_11", "pc_CORR_residual", "model_number"),colnames(dsb))
############## Create a dadaset for use in pivot table.
dsT <- ds2[ , c(  "study_name", "model_number","subgroup" ,"model_type", "cognitive_construct",
  "physical_measure", "cognitive_measure",
  "converged", "output_file",
  "pc_TAU_00",      "pc_TAU_11",         "pc_SIGMA",
  "pc_TAU_00_pval", "pc_TAU_11_pval",    "pc_SIGMA_pval",
  "pc_CORR_00",     "pc_CORR_11",        "pc_CORR_residual"
)]

#
# dsT <- ds2[ , c(  "study_name", "model_number","subgroup" ,"model_type",
#
#
#
#                   "physical_construct","cognitive_construct","physical_measure","cognitive_measure",
#                  "converged", "output_file",
#                  "pc_TAU_00", "pc_TAU_00_pval", "pc_TAU_11", "pc_TAU_11_pval", "pc_TAU_residual", "pc_TAU_residual_pval",
#                  "pc_CORR_00", "pc_CORR_11", "pc_CORR_residual"
#                  )]

# dsT <- dsb[ , c( "physical_construct","physical_measure","cognitive_measure","cognitive_construct", "study_name", "model_type","subgroup", "converged", "output_file", "corr_int", "corr_slope", "corr_residual", "model_number")]
head(dsT)

unique(dsT$study_name)
unique(dsT$physical_construct)

# dsT <- dsT %>%
#   dplyr::rename_("Phys.Domain" = "physical_construct") %>%
#   dplyr::rename_("Phys.Measure" = "physical_measure") %>%
#   dplyr::rename_("Cog.Domain" = "cognitive_construct") %>%
#   dplyr::rename_("Cog.Measure" = "cognitive_measure") %>%
#   dplyr::rename_("Study" = "study_name") %>%
#   dplyr::rename_("Covariates" = "model_type") %>%
#   dplyr::rename_("Sex" = "subgroup") %>%
#   dplyr::rename_("Corr.Intersepts" = "pc_CORR_00") %>%
#   dplyr::rename_("Corr.Slopes" = "pc_CORR_11") %>%
#   dplyr::rename_("Corr.Residuals" = "pc_CORR_residual")
# head(dsT)
#
# dsT[,"Corr.Intersepts"] <- round(dsT[ ,"Corr.Intersepts"], 3)
# dsT[,"Corr.Slopes"] <- round(dsT[ ,"Corr.Intersepts"], 3)
# dsT[,"Corr.Residuals"] <- round(dsT[ ,"Corr.Intersepts"], 3)
# dsT <- dsT # for the use in the pivotTable function

<<<<<<< HEAD
=======
dsT[, "Corr.Intersepts"] <- round(dsT[ ,"Corr.Intersepts"], 3)
dsT[, "Corr.Slopes"]     <- round(dsT[ ,"Corr.Intersepts"], 3)
dsT[, "Corr.Residuals"]  <- round(dsT[ ,"Corr.Intersepts"], 3)
dsT <- dsT # for the use in the pivotTable function
>>>>>>> tidy indentions

#############

if(basename(getwd())=="dashboard"){
  source("../../shiny/bivariate_ISR/scripts/ISR_data_functions.R")
  source("../../shiny/bivariate_ISR/scripts/ISR_graph_functions.R")
  source("../../reports/model_space/scripts/tile_model_5D.R") # quadrotile

} else {
  source("./shiny/bivariate_ISR/scripts/ISR_data_functions.R")
  source("./shiny/bivariate_ISR/scripts/ISR_graph_functions.R")
  source("./reports/model_space/scripts/tile_model_5D.R") # quadrotile
}

############ SERVER ############
# server <-
function(input, output, session) {

  selectedData <- reactive({
    filter_model(ds = dsb, study = input$radioStudy ,
    pm = input$radioPhysMeasure, covars = input$radioModelType)
  })

  output$overview <- renderPlot({
    quadrotile_graph(ds=dsMS)
  })  # close overview

  output$table_descriptives <- renderImage({
    # TODO: create a graphic/placeholder for the studies without an image
    #   Call it: Table1_Unready_Descriptives_IALSA_Portland.png
    file_name_part <- plyr::revalue(input$radioStudy, warn_missing=F, replace=c(
      "eas"   = 'EAS',
      "elsa"  = "Unready",
      "hrs"   = "Unready",
      "ilse"  = "ILSE",
      "nas"   = "NAS",
      "nuage" = "NuAge",
      "octo"  = "Unready",
      "radc"  = "RADC",
      "satsa" = "SATSA")
    )
    # Notice that when the path is specified from server.R (instead of ui.R), the `www` directory is NOT implied.
    # path_file_name <- "www/images/table1/Table1_EAS_Descriptives_IALSA_Portland.png"
    path_file_name <- sprintf("www/images/table1/Table1_%s_Descriptives_IALSA_Portland.png", file_name_part)
    list(src = path_file_name, height = 800)
  }, deleteFile = FALSE)  # close descriptive image

  output$bivariate_ISR <- renderPlot({
    TilePlot <- basic_tile_ISR(ds = selectedData(), x_name = "physical_measure")
    dsISR <- as.data.frame(ISR_tile_data(ds=selectedData()))
    ISRPlot <- ISR_plot(ds = dsISR,  display_value=input$radioDisplayMode)

    allPlots <- 11
    firstPlot <- 3
    secondPlot <- 8

    pushViewport(viewport(layout = grid.layout(1, allPlots )))
    print(TilePlot, vp = viewport(layout.pos.row = 1, layout.pos.col = 1:firstPlot))
    print(ISRPlot,  vp = viewport(layout.pos.row = 1, layout.pos.col = firstPlot+1:secondPlot))
  }) #close renderPlot

<<<<<<< HEAD
   output$pivotTable <- rpivotTable::renderRpivotTable({
     rpivotTable::rpivotTable(data = dsT,
#                  rows = c("Study", "Cog.Measure"),
#                  cols= c("Phys.Measure", "Sex", "Covariates"), height = 730
                 rows = c("study_name", "cognitive_measure"),
                 cols= c("physical_measure", "subgroup", "model_type"), height = 730

                 )

#      output$pivotTable <- rpivotTable::renderRpivotTable({
#      rpivotTable::rpivotTable(data = dsb,
#                  rows = c("study_name"),
#                  cols= c("model_number")
#                  )
   })
=======
  output$pivotTable <- rpivotTable::renderRpivotTable({
    rpivotTable::rpivotTable(
      data = dsT,
      rows = c("Study", "Cog.Measure"),
      cols = c("Phys.Measure", "Sex", "Covariates")
    )
  })

  # rpivotTable::rpivotTable(
  #   data = dsb,
  #   rows = c("study_name"),
  #   cols= c("model_number")
  # )
>>>>>>> tidy indentions
} # close server
