## pivot tables in Shiny
# Article on pivot tables in R - http://www.magesblog.com/2015/03/pivot-tables-with-r.html
# rpivotTable Documentation - https://github.com/smartinsightsfromdata/rpivotTable
# GitHub Example - https://github.com/smartinsightsfromdata/rpivotTable/blob/master/inst/examples/canElections-shiny.R

library(dplyr)
library(shiny)
library(rpivotTable)




if(basename(getwd())=="pivot_physical"){
# ds2 <- readRDS('../../data/shared/ds0_physical.rds')
ds2 <- readRDS('../../projects/physical/outputs/physical.rds')
# dsb <- ds2 %>% dplyr::filter(model_number %in% c("u1","b1"))
ds <- ds2 %>% dplyr::filter(model_number %in% c("u0","u2", "u1","b1"))
}else{
ds2 <- readRDS('projects/physical/outputs/physical.rds')
# dsb <- ds2 %>% dplyr::filter(model_number %in% c("u1","b1"))
ds <- ds2 %>% dplyr::filter(model_number %in% c("u0","u2", "u1","b1"))
}

# ds[,"pc_CORR_00"] <- round(ds[ ,"pc_CORR_00"], 3)
# ds[,"pc_CORR_11"] <- round(ds[ ,"pc_CORR_11"], 3)
# ds[,"pc_CORR_residual"] <- round(ds[ ,"pc_CORR_residual"], 3)

# dsT <- ds[ , c("pc_TAU_00")]

dsT <- ds[ , c(  "study_name", "model_number","subgroup" ,"model_type", "cognitive_construct",
  "physical_measure", "cognitive_measure",
"pc_TAU_00_est", "pc_TAU_00_se", "pc_TAU_00_pval",
"pc_TAU_11_est", "pc_TAU_11_se", "pc_TAU_11_pval",
"pc_TAU_01_est", "pc_TAU_01_se", "pc_TAU_01_pval",
"pc_TAU_10_est", "pc_TAU_10_se", "pc_TAU_10_pval",
"pc_SIGMA_est",  "pc_SIGMA_se",  "pc_SIGMA_pval",
"pp_TAU_00_est", "pp_TAU_00_se", "pp_TAU_00_pval",
"pp_TAU_11_est", "pp_TAU_11_se", "pp_TAU_11_pval",
"pp_TAU_01_est", "pp_TAU_01_se", "pp_TAU_01_pval",
"p_SIGMA_est",   "p_SIGMA_se",   "p_SIGMA_pval",
"cc_TAU_00_est", "cc_TAU_00_se", "cc_TAU_00_pval",
"cc_TAU_11_est", "cc_TAU_11_se", "cc_TAU_11_pval",
"cc_TAU_10_est", "cc_TAU_10_se", "cc_TAU_10_pval",
"c_SIGMA_est",   "c_SIGMA_se",    "c_SIGMA_pval",
"p_GAMMA_00_est", "p_GAMMA_00_se", "p_GAMMA_00_pval",
"p_GAMMA_10_est", "p_GAMMA_10_se", "p_GAMMA_10_pval",
"c_GAMMA_00_est", "c_GAMMA_00_se", "c_GAMMA_00_pval",
"c_GAMMA_10_est", "c_GAMMA_10_se", "c_GAMMA_10_pval"
)]



# ds <- dsb[ , c( "physical_construct","physical_measure","cognitive_measure","cognitive_construct", "study_name", "model_type","subgroup", "converged", "output_file", "pc_CORR_00", "pc_CORR_11", "pc_CORR_residual", "model_number")]
# # ds <- dsb[ , c( "physical_construct","physical_measure","cognitive_measure","cognitive_construct", "study_name", "model_type","subgroup", "converged", "output_file", "corr_int", "corr_slope", "corr_residual", "model_number")]
# head(ds)
#
#
# unique(ds$study_name)
# unique(ds$physical_construct)
#
# ds <- ds %>%
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
# head(ds)
#
# ds[,"Corr.Intersepts"] <- round(ds[ ,"Corr.Intersepts"], 3)
# ds[,"Corr.Slopes"] <- round(ds[ ,"Corr.Intersepts"], 3)
# ds[,"Corr.Residuals"] <- round(ds[ ,"Corr.Intersepts"], 3)

# Define server logic required to summarize and view the selected
# study
shinyServer(function(input, output) {

 output$pivot <- rpivotTable::renderRpivotTable({
   rpivotTable(data = dsT,
#                rows = c("Study", "Cog.Measure"),
#                cols= c("Phys.Measure", "Sex", "Covariates")
               rows = c("study_name", "cognitive_construct", "cognitive_measure"),
               cols= c("physical_measure", "subgroup", "model_type"), height = 730
               )
 })

})


