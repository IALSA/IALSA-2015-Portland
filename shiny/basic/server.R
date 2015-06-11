## pivot tables in Shiny

# Article on pivot tables in R - http://www.magesblog.com/2015/03/pivot-tables-with-r.html

# rpivotTable Documentation - https://github.com/smartinsightsfromdata/rpivotTable

# GitHub Example - https://github.com/smartinsightsfromdata/rpivotTable/blob/master/inst/examples/canElections-shiny.R

library(shiny)
library(rpivotTable)

if(basename(getwd())=="pivotTable"){
dsb <- readRDS('../../data/shared/ds1a.rds')
}else{
dsb <- readRDS('./data/shared/ds1a.rds')
}



ds <- dsb[ , c( "physical_construct","physical_measure","cognitive_measure","cognitive_construct",
                "study_name", "model_type","subgroup")]
head(ds)


unique(ds$study_name)
unique(ds$physical_construct)


# Define server logic required to summarize and view the selected
# study
shinyServer(function(input, output) {
 output$pivot <- renderRpivotTable({
   rpivotTable(data = ds)
 })

})
