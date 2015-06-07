
library(shiny)
library(ggplot2)
library(dplyr)

if(basename(getwd())=="dashboard"){
dsb <- readRDS('../../data/shared/ds1a.rds')
}else{
dsb <- readRDS('./data/shared/ds1a.rds')
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


basic_tile <- function(ds,x_name){
  d <- ds %>% dplyr::count_(c("cognitive_measure", x_name))
  g <- ggplot2::ggplot(d, aes_string(x=x_name, y="cognitive_measure", fill="n", label="n"))
  g <- g + geom_tile()
  # g <- g + geom_text(size = baseSize-6)
  # g <- g + scale_y_discrete(limits=rev(unique(d$cognitive_measure)))
  # g <- g + scale_fill_gradient(low="white", high="#8da0cb", na.value = "white")
  # g <- g + labs(title=paste0(x_name), x=NULL, y="Cognitive Measures")
  # g <- g + theme1
#   g <- g + theme(axis.text.y = element_text(hjust=1, angle=0),
#                  axis.text.x = element_text(hjust=1, angle=90, size=9),
#                  legend.position="top")
  return(g)
}
basic_tile(ds,"subgroup")





# Define  a server for shiny app
shinyServer(function(input, output) {

  d <- ds %>% dplyr::count(cognitive_measure, input$cogPair)

  # fill the spot for a plot
  output$dashboardPlot <- renderPlot({
      g <- ggplot2::ggplot(d, aes(x=input$cogPair, y=cognitive_measure, fill=n))
      g <- g + geom_tile()
      g <- g + geom_text(aes(label=n), size=baseSize-6)
      g <- g + scale_y_discrete(limits=rev(unique(d$cognitive_measure)))
      g <- g + scale_fill_gradient(low="white", high="#e78ac3", na.value = "white")
      g <- g + labs(title="Physical Measures ", x=element_blank(), y="Cognitive Measures")
      g <- g + theme1
      g <- g + theme(axis.text.y = element_text(hjust=1, angle=0),
                     axis.text.x = element_text(hjust=1, angle=90, size=9),
                     legend.position="top")
      g
  })

})




