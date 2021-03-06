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
dsb <- readRDS('../../data/shared/ds2.rds')
source("../../shiny/dashboard/scripts/multiplot_function.R")
}else{
dsb <- readRDS('./data/shared/ds2.rds')
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


domain_map <- function(ds, labels){
  # define the data

  d <- ds %>%
  dplyr::count_(c("cognitive_measure", "cognitive_construct","study_name"))
  d$dummy <- factor("dummy")
  d$cog_meas <- stringr::str_sub(d$cognitive_measure,1,3)
  d$cog_measure_display <-paste0(stringr::str_sub(d$cognitive_measure,1,6),
                                 ", ",d$n)
  # d
  # str(d)
  #
  g <- ggplot2::ggplot(d, aes_string(x="dummy", y="cognitive_measure", label="cog_measure_display", fill="cognitive_construct"))
  g <- g + geom_tile()
  g <- g + geom_text(size = baseSize-7, hjust=.4)
  g <- g + facet_grid(. ~ study_name )
  # g <- g + coord_flip()
  g <- g + scale_y_discrete(name = "Cognitive measures", limits=rev(unique(d$cognitive_measure)))
  g <- g + scale_fill_discrete(name = "Domains")
  # g <- g + scale_fill_gradient(low="white", high="salmon", na.value = "white")
  g <- g + labs(title="Studies")
  g <- g + theme1
  g <- g + theme(axis.text.y =  element_text(size=baseSize-1),
                 axis.text.x =  element_blank(),
                 axis.title.x = element_blank(),
                 axis.title.y = element_text("Cognitive measure"),
                 # legend.title = element_blank(),
                 legend.text =  element_text(),
                 legend.position="left")
  return(g)
}


cog_x_name <- function(ds, x_name){
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


## @knitr domain_map_phys_counts
a <- domain_map(dsb)
b <- cog_x_name(dsb,"physical_measure")

# Define grid layout to locate plots and print each graph
grid::pushViewport(viewport(layout = grid.layout(1, 10)))
print(a, vp = viewport(layout.pos.row = 1, layout.pos.col = 1:7))
print(b, vp = viewport(layout.pos.row = 1, layout.pos.col = 8:10))



## @knitr  combine_with_otherDs
a <- domain_map(dsb)
b <- cog_x_name(dsb, "physical_measure")
b <- b + theme(axis.text.y = element_blank())
c <- cog_x_name(dsb, "study_name")
c <- c + theme(axis.text.y = element_blank())
d <- cog_x_name(dsb, "model_type")
d <- d + theme(axis.text.y = element_blank())
e <- cog_x_name(dsb, "subgroup")
e <- e + theme(axis.text.y = element_blank())
# e <- e + theme(strip.text.x = element_text(angle = 90))
e

# Define grid layout to locate plots and print each graph
pushViewport(viewport(layout = grid.layout(1,18 )))
print(a, vp = viewport(layout.pos.row = 1, layout.pos.col = 1:9))
print(b, vp = viewport(layout.pos.row = 1, layout.pos.col = 10:12))
print(c, vp = viewport(layout.pos.row = 1, layout.pos.col = 13:15))
print(d, vp = viewport(layout.pos.row = 1, layout.pos.col = 16:17))
print(e, vp = viewport(layout.pos.row = 1, layout.pos.col = 18))






############ NON-LIVE code beyong this line #################

################ Graph Evolution #####################

## @knitr study_by_cogdomain_map1
d <- ds %>%
# dplyr::filter(study_name ==  "eas") %>%
dplyr::count_(c("cognitive_construct","cognitive_measure", "study_name"))
d$dummy <- factor("dummy")
# d$cog_meas <- paste0(stringr::str_sub(d$cognitive_construct,1,3),".",stringr::str_sub(d$cognitive_measure,1,3))
d$cog_meas <- stringr::str_sub(d$cognitive_measure,1,3)
d
# str(d)
#
g <- ggplot2::ggplot(d, aes_string(x="dummy", y="cognitive_measure", label="cognitive_measure", fill="cognitive_construct"))
g <- g + geom_tile()
g <- g + geom_text(size = baseSize-6)
g <- g + facet_grid(study_name ~ cognitive_construct )
# g <- g + coord_flip()
# g <- g + scale_y_discrete(limits=(unique(d$cognitive_measure)))
# g <- g + scale_fill_gradient(low="white", high="salmon", na.value = "white")
# g <- g + labs(title="Title", x=NULL, y="Y")
g <- g + theme1
g <- g + theme(axis.text.y = element_blank(),
           axis.text.x = element_text(hjust=1, angle=0, size=9),
           axis.title = element_blank(),
           legend.position="top")
g




## @knitr domain_map_phys

domain_map <- function(ds){
  # define the data
  d <- ds %>%
  dplyr::count_(c("cognitive_measure", "cognitive_construct","study_name"))
  d$dummy <- factor("dummy")
  d$cog_meas <- stringr::str_sub(d$cognitive_measure,1,3)
  d$cog_measure_display <-paste0(d$cognitive_measure,", ",d$n)
  # d
  # str(d)
  #
  g <- ggplot2::ggplot(d, aes_string(x="dummy", y="cognitive_measure", label="cog_measure_display", fill="cognitive_construct"))
  g <- g + geom_tile()
  g <- g + geom_text(size = baseSize-7)
  g <- g + facet_grid(. ~ study_name )
  # g <- g + coord_flip()
  g <- g + scale_y_discrete(name = "Cognitive measures", limits=rev(unique(d$cognitive_measure)))
  g <- g + scale_fill_discrete(name = "Domains")
  # g <- g + scale_fill_gradient(low="white", high="salmon", na.value = "white")
  # g <- g + labs(title="Title", x=NULL, y="Y")
  g <- g + theme1
  g <- g + theme(axis.text.y =  element_text(size=baseSize-1),
                 axis.text.x =  element_blank(),
                 axis.title.x = element_blank(),
                 axis.title.y = element_text("Cognitive measure"),
                 # legend.title = element_blank(),
                 legend.text =  element_text(),
                 legend.position="right")
  return(g)
}


cog_x_name <- function(ds, x_name){
  d <- ds %>%
  dplyr::count_(c("cognitive_measure", x_name))
  d$dummy <- factor("dummy")
  d$cog_meas <- stringr::str_sub(d$cognitive_measure,1,3)
  d$cog_measure_display <-paste0(d$cognitive_measure,", ",d$n)
  # d
  g <- ggplot2::ggplot(d, aes_string(x="dummy", y="cognitive_measure", label="n", fill="n"))
  g <- g + geom_tile()
  g <- g + geom_text(size = baseSize-7)
  g <- g + facet_grid(reformulate(x_name))
  # g <- g + coord_flip()
  g <- g + scale_y_discrete(name = "Cognitive measures", limits=rev(unique(d$cognitive_measure)))
  # g <- g + scale_fill_discrete(name = "Domains")
  g <- g + scale_fill_gradient(low="white", high=x_name_colors[x_name], na.value = "white")
  # g <- g + labs(title="Title", x=NULL, y="Y")
  g <- g + theme1
  g <- g + theme(axis.text.y =  element_text(size=baseSize-1),
                 axis.text.x =  element_blank(),
                 axis.title.x = element_blank(),
                 axis.title.y = element_blank(),
                 # legend.title = element_blank(),
                 panel.grid.major.x = element_blank(),
                 legend.text =  element_text(),
                 legend.position="none")
  g

  return(g)
}


a <- domain_map(dsb)
b <- cog_x_name(dsb,"physical_measure")

# Define grid layout to locate plots and print each graph
pushViewport(viewport(layout = grid.layout(1, 10)))
print(a, vp = viewport(layout.pos.row = 1, layout.pos.col = 1:7))
print(b, vp = viewport(layout.pos.row = 1, layout.pos.col = 8:10))



