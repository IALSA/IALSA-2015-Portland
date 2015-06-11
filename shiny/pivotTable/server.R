## pivot tables in Shiny

# Article on pivot tables in R - http://www.magesblog.com/2015/03/pivot-tables-with-r.html

# rpivotTable Documentation - https://github.com/smartinsightsfromdata/rpivotTable

# GitHub Example - https://github.com/smartinsightsfromdata/rpivotTable/blob/master/inst/examples/canElections-shiny.R

library(dplyr)
library(shiny)
library(rpivotTable)




if(basename(getwd())=="pivotTable"){
dsb <- readRDS('../../data/shared/ds1a.rds')
}else{
dsb <- readRDS('./data/shared/ds1a.rds')
}



ds <- dsb[ , c( "physical_construct","physical_measure","cognitive_measure","cognitive_construct",
                "study_name", "model_type","subgroup", "converged", "output_file", "sd_int", "sd_slope", "sd_residual")]
head(ds)


unique(ds$study_name)
unique(ds$physical_construct)

ds <- ds %>%
  dplyr::rename_("Phys.Domain" = "physical_construct") %>%
  dplyr::rename_("Phys.Measure" = "physical_measure") %>%
  dplyr::rename_("Cog.Domain" = "cognitive_construct") %>%
  dplyr::rename_("Cog.Measure" = "cognitive_measure") %>%
  dplyr::rename_("Study" = "study_name") %>%
  dplyr::rename_("Covariates" = "model_type") %>%
  dplyr::rename_("Sex" = "subgroup") %>%
  dplyr::rename_("Corr.Intersepts" = "sd_int") %>%
  dplyr::rename_("Corr.Slopes" = "sd_slope") %>%
  dplyr::rename_("Corr.Residuals" = "sd_residual")
head(ds)
# Define server logic required to summarize and view the selected
# study
shinyServer(function(input, output) {

 output$pivot <- rpivotTable::renderRpivotTable({
   rpivotTable(data = ds )
 })

})


