
library(shiny)
library(ggplot2)
library(dplyr)

if(basename(getwd())=="dashboard"){
dsb <- readRDS('../../data/shared/ds1a.rds')
source("../../shiny/dashboard/scripts/multiplot_function.R")
}else{
dsb <- readRDS('./data/shared/ds1a.rds')
source("./shiny/dashboard/scripts/multiplot_function.R")
}

keepvar <- c("model_number","study_name","subgroup", "model_type","physical_construct","cognitive_construct","physical_measure","cognitive_measure", "output_file", "converged")

ds <- dsb[ , keepvar]

unique(ds$study_name)
unique(ds$physical_construct)


## @knitr define_themes
baseSize <- 10
theme1 <- ggplot2::theme_bw(base_size=baseSize) +
  ggplot2::theme(title=ggplot2::element_text(colour="gray20",size = baseSize+1)) +
  ggplot2::theme(axis.text=ggplot2::element_text(colour="gray40", size=baseSize-2)) +
  ggplot2::theme(axis.title=ggplot2::element_text(colour="gray40")) +
  ggplot2::theme(panel.border = ggplot2::element_rect(colour="gray80")) +
  ggplot2::theme(axis.ticks.length = grid::unit(0, "cm")) +
  ggplot2::theme(text = element_text(size =baseSize+7))




## @knitr define_basic_tile_function
basic_tile <- function(ds,x_name){
  # Define color palette and display labels
  x_name_colors <- c("physical_measure"="#e78ac3",
                     "study_name"="#8da0cb",
                     "model_type"="#fc8d62",
                     "subgroup"="#66c2a5")
  x_name_labels <- c("physical_measure"="Physical Measure",
                     "study_name"="Study",
                     "model_type"="Predictor Set",
                     "subgroup"="Sex Subgroup")
  # define the data
  d <- ds %>% dplyr::count_(c("cognitive_measure", x_name))
  #
  g <- ggplot2::ggplot(d, aes_string(x=x_name, y="cognitive_measure", fill="n", label="n"))
  g <- g + geom_tile()
  g <- g + geom_text(size = baseSize-6)
  g <- g + scale_y_discrete(limits=rev(unique(d$cognitive_measure)))
  g <- g + scale_fill_gradient(low="white", high=x_name_colors[x_name], na.value = "white")
  g <- g + labs(title=x_name_labels[x_name], x=NULL, y="Cognitive Measures")
  g <- g + theme1
  g <- g + theme(axis.text.y = element_blank(),
                 axis.text.x = element_text(hjust=1, angle=90, size=9),
                 axis.title = element_blank(),
                 legend.position="top")
  return(g)
}

## @knitr define_names_tile_function
names_tile <- function(ds,x_name){
  #  # define the data
  d <- ds %>% dplyr::count_(c("cognitive_measure", x_name))
  #
  g <- ggplot2::ggplot(d, aes_string(x=1, y="cognitive_measure", label="cognitive_measure", fill=0))
  g <- g + geom_tile()
  g <- g + geom_hline(yintercept=seq(0,60,1), alpha=.1)
  g <- g + geom_text(size = baseSize-6)
  g <- g + scale_y_discrete(limits=rev(unique(d$cognitive_measure)))
  g <- g + scale_fill_gradient(low="white", high="white", na.value = "white")
  g <- g + labs(title=" ", x=NULL, y="Cognitive Measures")
  g <- g + theme1
  g <- g + theme(axis.text.y = element_blank(),
                 axis.text.y = element_text(hjust=1, angle=90, size=9),
                 axis.title = element_blank(),
                 legend.position="top")
  return(g)
}

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




# Define  a server for shiny app
shinyServer(function(input, output) {

  d <- ds %>% dplyr::count(cognitive_measure, input$x_name)
  # fill the spot for a plot
  output$dashboardPlot <- renderPlot({
    a <- basic_tile(ds,"physical_measure")
    b <- basic_tile(ds,"study_name")
    c <- basic_tile(ds,"model_type")
    d <- basic_tile(ds,"subgroup")

    names <- names_tile(ds,"physical_measure")

    g <- multiplot(a,b,names,c,d, cols=5)

    return(g)
  })

})







