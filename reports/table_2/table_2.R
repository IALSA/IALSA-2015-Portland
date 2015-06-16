## @knitr dummy
############## Developing the tile graph #######################

## @knitr load_source


## @knitr load_packages
library(shiny)
library(ggplot2)
library(dplyr)
library(lattice)
library(grid)


## @knitr load_data
## if-else conditions for Shiny production
## "b" in "dsb" is for BASIC

if(basename(getwd())=="dashboard"){
dsb <- readRDS('../../data/shared/ds1a.rds')
source("../../shiny/dashboard/scripts/multiplot_function.R")
}else{
dsb <- readRDS('./data/shared/ds1a.rds')
source("./shiny/dashboard/scripts/multiplot_function.R")
}


## @knitr tweak_data
## trim to make more managable
# keepvar <- c("model_number","study_name","subgroup", "model_type","physical_construct","cognitive_construct","physical_measure","cognitive_measure", "output_file", "converged")
# ds <- dsb[ , keepvar]
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
  ggplot2::theme(text = element_text(size =baseSize+7))
#   ggplot2::theme(panel.grid.major.x = element_blank())
#   ggplot2::theme(panel.grid.major.y = element_blank())
#   ggplot2::theme(panel.grid.minor.x = element_blank())
#   ggplot2::theme(panel.grid.minor.y = element_blank())
 ggplot2::theme(strip.text.x = element_text(angle = 0, size=baseSize-3, color="black"))

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

## @knitr define_graph_functions




table_2 <- function(ds, x_name){
  d <- ds %>%
  dplyr::count_(c("cognitive_measure", x_name))
  d$dummy <- factor("dummy")
  d$cog_meas <- stringr::str_sub(d$cognitive_measure,1,3)

  # d
  g <- ggplot2::ggplot(d, aes_string(x="dummy", y="cognitive_measure", label="n", fill="n"))
  g <- g + geom_tile()
  g <- g + geom_text(size = baseSize-8)
  g <- g + facet_grid(reformulate(x_name))
  # g <- g + coord_flip()
  g <- g + scale_y_discrete(name = "Cognitive measures", limits=rev(unique(d$cognitive_measure)))
  # g <- g + scale_fill_discrete(name = "Domains")
  g <- g + scale_fill_gradient(low="white", high=x_name_colors[x_name], na.value = "white")
  g <- g + labs(title=x_name_labels[x_name])
  g <- g + theme1
  g <- g + theme(axis.text.y =  element_text(size=baseSize-1),
                 axis.text.x =  element_blank(),
                 axis.title.x = element_blank(),
                 axis.title.y = element_blank(),
                 legend.title = element_text(),
                 panel.grid.major.x = element_blank(),
                 # legend.text =  element_text(),
                 legend.position="none")
  # g <- g + theme(strip.text.x = element_text(angle = 0, size=baseSize-3, color="black"))
  g

  return(g)
}


## @knitr combine_map_and_cross

b <- table_2(dsb,"physical_measure")




