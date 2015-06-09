## @knitr dummy
############## Developing the tile graph #######################

## @knitr load_source


## @knitr load_packages
library(shiny)
library(ggplot2)
library(dplyr)


## @knitr load_data
if(basename(getwd())=="dashboard"){
dsb <- readRDS('../../data/shared/ds1a.rds')
source("../../shiny/dashboard/scripts/multiplot_function.R")
}else{
dsb <- readRDS('./data/shared/ds1a.rds')
source("./shiny/dashboard/scripts/multiplot_function.R")
}


## @knitr tweak_data
keepvar <- c("model_number","study_name","subgroup", "model_type","physical_construct","cognitive_construct","physical_measure","cognitive_measure", "output_file", "converged")

ds <- dsb[ , keepvar]

# dplyr::tbl_df(ds)


# @knitr define_themes
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

## @knitr declare_globals
  # Define color palette and display labels
  x_name_colors <- c("physical_measure"="#e78ac3",
                     "study_name"="#8da0cb",
                     "model_type"="#fc8d62",
                     "subgroup"="#66c2a5")
  x_name_labels <- c("physical_measure"="Physical Measure",
                     "study_name"="Study",
                     "model_type"="Predictor Set",
                     "subgroup"="Sex Subgroup")


## @knitr cog_domain_map_v1
# domain_tile <- function(ds){

  # define the data

  d <- ds %>%
  dplyr::count_(c("cognitive_measure", "cognitive_construct","study_name"))
  d$dummy <- factor("dummy")
  d$cog_meas <- stringr::str_sub(d$cognitive_measure,1,3)
  # d
  # str(d)
  #
  g <- ggplot2::ggplot(d, aes_string(x="dummy", y="cognitive_measure", label="cognitive_measure", fill="cognitive_construct"))
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
  g


 # rmarkdown::render(input = "./reports/overlap_search_graphs/Cog_Domain_Map.Rmd", output_format="html_document", clean=TRUE)

#   return(g)
# }
# domain_tile(dsb)

###################### COPIED FROM overlap_tile_graph.R ######################
## @knitr define_names_tile_function
names_tile <- function(ds,x_name){
  #  # define the data
  d <- ds %>% dplyr::count_(c("cognitive_measure", x_name))
  d <-d %>% dplyr::mutate(cog_meas = "cogmeas")
  head(d)
  #
  g <- ggplot2::ggplot(d, aes_string(x="cog_meas", y="cognitive_measure", label="cognitive_measure", fill=0))
  g <- g + geom_tile()
  g <- g + geom_hline(yintercept=seq(0,60,1), alpha=.05)
  g <- g + geom_text(size = baseSize-7)
  g <- g + scale_y_discrete(limits=rev(unique(d$cognitive_measure)))
  g <- g + scale_fill_gradient(low="white", high="white", na.value = "white")
  g <- g + labs(title=" ", x=NULL, y="Cognitive Measures")
  g <- g + theme1
  g <- g + theme(axis.text.y = element_blank(),
                 axis.text.x = element_text(hjust=1, angle=90, size=9),
                 axis.title = element_blank(),

                 legend.position="top")
  return(g)
}

names_tile(ds,"physical_measure")



## @knitr define_multi_plot_function

# Multiple plot function
#
## http://www.cookbook-r.com/Graphs/Multiple_graphs_on_one_page_(ggplot2)/
# ALTERNATIVELY: sources this function
# ggplot objects can be passed in ..., or to plotlist (as a list of ggplot objects)
# - cols:   Number of columns in layout
# - layout: A matrix specifying the layout. If present, 'cols' is ignored.
#
# If the layout is something like matrix(c(1,2,3,3), nrow=2, byrow=TRUE),
# then plot 1 will go in the upper left, 2 will go in the upper right, and
# 3 will go all the way across the bottom.
#
multiplot <- function(..., plotlist=NULL, file, cols=1, layout=NULL) {
  library(grid)

  # Make a list from the ... arguments and plotlist
  plots <- c(list(...), plotlist)

  numPlots = length(plots)

  # If layout is NULL, then use 'cols' to determine layout
  if (is.null(layout)) {
    # Make the panel
    # ncol: Number of columns of plots
    # nrow: Number of rows needed, calculated from # of cols
    layout <- matrix(seq(1, cols * ceiling(numPlots/cols)),
                    ncol = cols, nrow = ceiling(numPlots/cols))
  }

 if (numPlots==1) {
    print(plots[[1]])

  } else {
    # Set up the page
    grid.newpage()
    pushViewport(viewport(layout = grid.layout(nrow(layout), ncol(layout))))

    # Make each plot, in the correct location
    for (i in 1:numPlots) {
      # Get the i,j matrix positions of the regions that contain this subplot
      matchidx <- as.data.frame(which(layout == i, arr.ind = TRUE))

      print(plots[[i]], vp = viewport(layout.pos.row = matchidx$row,
                                      layout.pos.col = matchidx$col))
    }
  }
}





    a <- basic_tile(ds,"study_name")
    b <- basic_tile(ds,"physical_measure")
    c <- basic_tile(ds,"model_type")
    d <- basic_tile(ds,"subgroup")
    d <- d + theme(axis.text.y = element_text(vjust=1, angle=0, hjust=0))
    # names <- names_tile(ds,"physical_measure")
    g <- multiplot(a, b, d, c, cols=4)

###################### end COPIED FROM overlap_tile_graph.R ######################

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


