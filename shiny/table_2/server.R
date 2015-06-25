## ./shiny/pivotTable

# Article on pivot tables in R - http://www.magesblog.com/2015/03/pivot-tables-with-r.html

# rpivotTable Documentation - https://github.com/smartinsightsfromdata/rpivotTable

# GitHub Example - https://github.com/smartinsightsfromdata/rpivotTable/blob/master/inst/examples/canElections-shiny.R

rm(list=ls(all=TRUE))
cat("\f")

library(shiny)
library(dplyr)
library(ggplot2)
library(dplyr)
library(lattice)
library(grid)




if(basename(getwd())=="table_2"){
ds1a <- readRDS('../../data/shared/ds1a.rds')
dsb <- ds1a %>% dplyr::filter(model_number %in% c("u1","b1"))
}else{
ds1a <- readRDS('./data/shared/ds1a.rds')
dsb <- ds1a %>% dplyr::filter(model_number %in% c("u1","b1"))
}
##################################################

## @knitr tweak_data
## trim to make more managable
keepvar <- c("study_name", "subgroup", "model_type","physical_construct","physical_measure", "cognitive_construct","cognitive_measure", "converged", "output_file", "corr_int", "corr_slope", "corr_residual", "ciu_corr_int", "cil_corr_int", "ciu_corr_slope", "cil_corr_slope", "ciu_corr_residual", "cil_corr_residual", "p_cov_int", "p_cov_slope", "p_cov_res")

# keepvar <- c("model_number","study_name","subgroup", "model_type","physical_construct","cognitive_construct","physical_measure","cognitive_measure", "output_file", "converged")
ds <- dsb[ , keepvar]

ds$display_int <- paste0(
  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(ds$corr_int, 2)), " \n (",
  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(ds$cil_corr_int,2)), ",",
  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(ds$ciu_corr_int,2)), ")"
)

ds$display_slope <- paste0(
  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(ds$corr_slope, 2)), " \n (",
  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(ds$cil_corr_slope,2)), ",",
  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(ds$ciu_corr_slope,2)), ")")

ds$display_residual <- paste0(
  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(ds$corr_residual, 2)), " \n (",
  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(ds$cil_corr_residual,2)), ",",
  gsub("^([+-])?(0)?(\\.\\d+)$", "\\1\\3",  round(ds$ciu_corr_residual,2)), ")")


head(ds)

## rename for pretty display
# ds <- ds[ , c( "study_name", "subgroup","model_type","physical_construct","physical_measure","cognitive_measure","cognitive_construct",  "corr_int", "corr_slope", "corr_residual", "display_int","display_slope", "display_residual", "p_cov_int", "p_cov_slope", "p_cov_res","converged", "output_file") ]
#
# head(ds)

library(dplyr)
# ds <- ds %>%
#   dplyr::rename_("PhysDomain" = "physical_construct") %>%
#   dplyr::rename_("PhysMeasure" = "physical_measure") %>%
#   dplyr::rename_("CogDomain" = "cognitive_construct") %>%
#   dplyr::rename_("CogMeasure" = "cognitive_measure") %>%
#   dplyr::rename_("Study" = "study_name") %>%
#   dplyr::rename_("Covariates" = "model_type") %>%
#   dplyr::rename_("Sex" = "subgroup") %>%
#   dplyr::rename_("CorrIntersepts" = "corr_int") %>%
#   dplyr::rename_("CorrSlopes" = "corr_slope") %>%
#   dplyr::rename_("CorrResiduals" = "corr_residual") %>%
#   dplyr::rename_("Intercept" = "display_int") %>%
#   dplyr::rename_("Slope" = "display_slope") %>%
#   dplyr::rename_("Residual" = "display_residual") %>%
#   dplyr::rename_("p(i)" = "p_cov_int") %>%
#   dplyr::rename_("p(s)" = "p_cov_slope") %>%
#   dplyr::rename_("p(r)" = "p_cov_res")
# head(ds)


# dplyr::tbl_df(ds)


## @knitr define_themes
## define common graphical theme for all graphs
baseSize <- 10
theme1 <- ggplot2::theme_bw(base_size=baseSize) +
  ggplot2::theme(title=ggplot2::element_text(colour="gray20",size = baseSize+1)) +
  ggplot2::theme(axis.text=ggplot2::element_text(colour="gray40", size=baseSize-2)) +
  ggplot2::theme(axis.title=ggplot2::element_text(colour="gray40")) +
  ggplot2::theme(panel.border = ggplot2::element_rect(colour="gray80")) +
  ggplot2::theme(axis.ticks.length = grid::unit(0, "cm")) +
  ggplot2::theme(text = ggplot2::element_text(size =baseSize+7))
#   ggplot2::theme(panel.grid.major.x = element_blank())
#   ggplot2::theme(panel.grid.major.y = element_blank())
#   ggplot2::theme(panel.grid.minor.x = element_blank())
#   ggplot2::theme(panel.grid.minor.y = element_blank())
 # ggplot2::theme(strip.text.x = element_text(angle = 0, size=baseSize-3, color="black"))

## @knitr declare_globals
## Define color palette and display labels
  x_name_colors <- c("physical_measure"="#e78ac3",
                     "study_name"="#8da0cb",
                     "model_type"="#fc8d62",
                     "subgroup"="#66c2a5")
  x_name_labels <- c("physical_measure"="Physical Measure",
                     "study_name"="Study",
                     "model_type"="Covariates",
                     "subgroup"="Subgroup")

# 8th multi-hue at colorbrewer2.org, 5 categories, first 4
  pvalueColors <- c(">.10" = "white",
                    "<=.10" = "#feebe2",
                    "<=.05" = "#fbb4b9",
                    "<=.01" = "#f768a1",
                    "<=.001" = "#c51b8a")

  ## @knitr


# study = "octo"
# x_name = "parameter"
# physical_measure = "grip"
# display_value = "pvalue"
# cognitive_construct = "memory"
# x_facet = "model_type"
# y_facet = "subgroup"
# covars = unique(ds$model_type)
# #

########### Select dataset  #######
#                      study = "satsa"
#                      physical_measure = "grip"
#                      covars = unique(ds$model_type) # model_type
#                      cognitive_construct = unique(ds$cognitive_construct)

filter_model <- function(ds = ds
                    # select
                    , study = "satsa"
                    , physical_measure = "grip"
                    , covars = unique(ds$model_type) # model_type
                    , cognitive_construct = unique(ds$cognitive_construct)
){

  ds <- ds[ds$study_name %in% study &
          ds$physical_measure %in% physical_measure &
          ds$model_type %in% covars &
          ds$cognitive_construct %in% cognitive_construct , ]


#   d <- ds %>%
#   dplyr::filter(!cognitive_construct %in% c("Univar")) %>% #, !physical_construct %in% c("Univar")) %>%
#   dplyr::count_(c("study_name", "subgroup", "model_type","physical_construct","physical_measure", "cognitive_construct","cognitive_measure","corr_int", "corr_slope", "corr_residual" , "display_int", "display_slope", "display_residual", "p_cov_int", "p_cov_slope", 'p_cov_res')) %>%




## three long gather
d <- ds %>% tidyr::gather_("parameter","value", c("corr_int", "corr_slope", "corr_residual" , "display_int", "display_slope", "display_residual", "p_cov_int", "p_cov_slope", 'p_cov_res'))
  d$parameter <- stringr::str_replace(d$parameter, "cov_res", "cov_residual")
  d$parameter <- stringr::str_replace(d$parameter, "p_cov", "pvalue")
for( i in seq_along(d$parameter)){
  d[i, "value_type"] <- stringr::str_split(d$parameter, pattern = "_")[[i]][1]
  d[i, "parameter"] <- stringr::str_split(d$parameter, pattern = "_")[[i]][2]
}
  d <- tidyr::spread_(d,"value_type","value")
  d$corr <- round(as.numeric(d$corr),3)
  d$pvalue <- round(as.numeric(d$pvalue),3)
  d$parameter <- factor(d$parameter, levels= c("int", "slope","residual"))
  head(as.data.frame(d),20)
  str(d)

  d$unsign <- d$pvalue > .10
  d$sign10 <- d$pvalue <= .10 & d$pvalue > .05
  d$sign05 <- d$pvalue <= .05 & d$pvalue > .01
  d$sign01 <- d$pvalue <= .01 & d$pvalue > .001
  d$sign001 <- d$pvalue <= .001

  d$sign <- ifelse(d$pvalue >.10, ">.10",
              ifelse(d$pvalue <= .10 & d$pvalue > .05, "<=.10",
                ifelse(d$pvalue <= .05 & d$pvalue > .01, "<=.05",
                  ifelse(d$pvalue <= .01 & d$pvalue > .001, "<=.01",
                    ifelse(d$pvalue <= .001, "<=.001", NA)))))

  head(as.data.frame(d))
  return(d)
}

d <- filter_model(ds = ds, "satsa", "grip")




#   # @knitr define_graph_functions


ISR_plot <- function(ds = d
                    # select
                    , study = "satsa"
                    , physical_measure = "grip"
                    , covars = unique(ds$model_type) # model_type
                    , cognitive_construct = unique(ds$cognitive_construct)
                    # map
                    , x_name = "parameter" # x-axis
                    , display_value = "pvalue" # number that prints
                    # arrange
                    , x_facet = "model_type" # grouped horizontally
                    , y_facet = "subgroup" # grouped vertically
){
  g <- ggplot2::ggplot(d, aes_string(x=x_name, y="cognitive_measure", label="corr", fill="sign"))
  g <- g + geom_tile()
  g <- g + geom_text(size = baseSize-5)
  # g <- g + facet_grid(subgroup ~ model_type)
  g <- g + facet_grid(as.formula(paste0(y_facet," ~ ", x_facet)))
  # g <- g + scale_x_discrete(labels = c("int"="INT", "slope"="SLP" , "res"="RES"))
  g <- g + scale_y_discrete(name = "Cognitive measures", limits=rev(unique(d$cognitive_measure)))
  g <- g + scale_fill_manual(name = "p-value", values = pvalueColors)
  # g <- g + scale_fill_gradient(low="white", high=x_name_colors["subgroup"], na.value = "grey")
  g <- g + labs(title=paste0("STUDY: ",study,"     PHYSICAL MEASURE: ", physical_measure, "     DISPLAY: ", display_value))
  g <- g + theme1
  g <- g + theme(axis.text.y =  ggplot2::element_text(size=baseSize-1),
                 # axis.text.x =  element_blank(),
                 # axis.title.x = element_blank(),
                 # axis.title.y = element_blank(),
                 legend.title = ggplot2::element_text(),
                 panel.grid.major.x = element_blank(),
                 legend.text =  ggplot2::element_text(),
                 legend.position="right")
  g <- g + theme(strip.text.x = ggplot2::element_text(angle = 0, size=baseSize-3, color="black"))
  # g

  return(g)
}


d <- filter_model(ds = ds, "satsa", "grip")
ISR_plot(ds = d, "satsa", "grip", display_value="display")



###################################################
# Define server logic required to summarize and view the selected
# study
shinyServer(function(input, output) {

# browser()
  output$table2 <- renderPlot({
     # browser()
    d <- filter_model(ds = ds
                     , study = input$study
                     , physical_measure = input$physical_measure
                     , covars = input$covars
    )
    ISR_plot(ds = d
            , study = input$study
            , physical_measure = input$physical_measure
            , display = input$display
            , covars = input$covars
    )
  })
})



