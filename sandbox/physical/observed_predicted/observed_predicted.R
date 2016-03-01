rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.
cat("\f") # clear console



# @knitr load_packages
library(dplyr) # for data manipulation
library(ggplot2) # for graphing
library(scales)
library(grid)

# @knitr load_sources ---------------------------------------
source("https://raw.githubusercontent.com/andkov/psy532/master/scripts/graphs/main_theme.R")
source("http://www.statmodel.com/mplus-R/mplus.R") # to work with mplus output
source("./scripts/mplus/group_variables.R") # to define objects with names of variables/columns
source("./scripts/mplus/get_gh5.R") # to extract data from .gh5

# @knitr declare_globals ---------------------------------------



# @knitr load_data ---------------------------------------
# load the data collected by ./scripts/mplus/collect_physical.R
model_list <- readRDS("./projects/physical/outputs/model_list.rds")
names(model_list) # how each model in the list is described
model_list



dsL <- get_gh5_data(
  file=model_list # list object containing paths to the gh5 files
  ,study = "eas"
  ,subgroup = "male"
  ,model_type = "aehplus"
  ,process1 = "grip"
  ,process2 = "pef"
  )


# @knitr inspect_data ---------------------------------------
head(dsL)

# @knitr tweak_data ---------------------------------------


# @kntir basic_table ---------------------------------------

# @knitr basic_graph ---------------------------------------
proto_line <- function(dsL,x, y, outcome_name, fill){
  # x="time"; y="observed"; outcome_name="physical"; fill="wave"
d <- dsL %>% dplyr::filter(outcome==outcome_name) #%>% dplyr::sample_n(500)
ymax <- ceiling( max( max(d$observed,na.rm = T)*1.05, max(d$fscores,na.rm = T)*1.05 )   )
ymin <- floor( min( min(d$observed,na.rm = T)*.95, min(d$fscores,na.rm = T)*.95 ) )

g <- ggplot2::ggplot(d,aes_string(x=x, y=y, fill=fill, group="id"))+
  geom_smooth(method="lm", color=alpha("grey70",.6), na.rm=T, se=F) +
  geom_point(shape=21,size=3, alpha=.4)+
  geom_smooth(aes(group=subgroup),method="loess", color="blue", size=1, fill="gray80", alpha=.3, na.rm=T) +
  scale_y_continuous(limits=c(ymin, ymax))+


  # geom_line()+
  # facet_grid(outcome~.)+
  # scale_fill_gradient2(low="#7fbf7b", mid="#f7f7f7", high="#af8dc3", space="Lab")+
  main_theme
g
}


library(ggplot2)
library(gridExtra)
library(cowplot)



#inspect data for one individual
dsL %>% dplyr::filter(id==1) %>% dplyr::select(id, BAGE, wave, time, outcome, observed, age, IP, SP, SC, IC )
# create plot



# @knitr new_chunk ---------------------------------------

sample_size <- 100 # activate for testing and development
# (sample_size <- length(unique(dsL$id)))

# @knitr basic_graph_1 ---------------------------------------


observed_predicted <- function(dsL){
# function for stripping legends from plots
  g_legend<-function(a.gplot){
    tmp <- ggplot_gtable(ggplot_build(a.gplot))
    leg <- which(sapply(tmp$grobs, function(x) x$name) == "guide-box")
    legend <- tmp$grobs[[leg]]
    legend
  }

  (sample_N <- length(unique(dsL$id)))
  (min_IP <- min(dsL[,"IP"],na.rm = T))
  (min_IC <- min(dsL[,"IC"],na.rm = T))
  (min_SP <- min(dsL[,"SP"],na.rm = T))
  (min_SC <- min(dsL[,"SC"],na.rm = T))

  (max_IP <- max(dsL[,"IP"],na.rm = T))
  (max_IC <- max(dsL[,"IC"],na.rm = T))
  (max_SP <- max(dsL[,"SP"],na.rm = T))
  (max_SC <- max(dsL[,"SC"],na.rm = T))

a1 <- proto_line(dsL,x="time", y="observed", outcome_name="physical", fill="wave")+
  theme(legend.position="bottom")
legend_wave <- g_legend(a1)
a1 <- a1 + labs(title=dsL$process1[1])+ theme(legend.position="none")

b1 <- proto_line(dsL,x="time", y="fscores", outcome_name="physical", fill="wave") +
  labs(title=dsL$process1[1])+ theme(legend.position="none") +
  theme(legend.position="none")

c1 <- proto_line(dsL,x="age", y="observed", outcome_name="physical", fill="BAGE")+
  theme(legend.position="bottom")+
  scale_fill_gradient2(low="#7fbf7b", mid="#f7f7f7", high="#af8dc3", space="Lab")
legend_age <- g_legend(c1)
c1 <- c1 + scale_fill_gradient2(low="#7fbf7b", mid="#f7f7f7", high="#af8dc3", space="Lab")+
  labs(title=dsL$process1[1])+ theme(legend.position="none")

d1 <- proto_line(dsL,x="age", y="fscores", outcome_name="physical", fill="BAGE")+
  scale_fill_gradient2(low="#7fbf7b", mid="#f7f7f7", high="#af8dc3", space="Lab")+
  labs(title=dsL$process1[1])+ theme(legend.position="none")

a2 <- proto_line(dsL,x="time", y="observed", outcome_name="cognitive", fill="wave")+
  labs(title=dsL$process2[1]) +
  theme(legend.position="none")

b2 <- proto_line(dsL,x="time", y="fscores", outcome_name="cognitive", fill="wave")+
  labs(title=dsL$process2[1]) +
  guides(shape=guide_legend(override.aes=list(size=5)))+
  theme(legend.justification=c(.6,-.1),
        legend.position=c(0,1),
        legend.direction="horizontal",
        legend.background = element_rect(fill=NA,color=NA))
# b2

c2 <- proto_line(dsL,x="age", y="observed", outcome_name="cognitive", fill="BAGE")+
  scale_fill_gradient2(low="#7fbf7b", mid="#f7f7f7", high="#af8dc3", space="Lab")+
  labs(title=dsL$process2[1])+ theme(legend.position="none")#+
  # annotate(geom="text", x=1, y=1,label=paste0("N: ",sample_N))
c2

d2 <- proto_line(dsL,x="age", y="fscores", outcome_name="cognitive", fill="BAGE")+
  scale_fill_gradient2(low="#7fbf7b", mid="#f7f7f7", high="#af8dc3", space="Lab")+
  labs(title=paste0("N: ", sample_N,"--",dsL$process2[1]))+
  theme(legend.justification=c(.8,0),
        legend.position=c(0,1),
        legend.direction="horizontal",
        legend.background = element_rect(fill=NA,color=NA))
d2

blankPlot <- ggplot()+geom_blank(aes(1,1)) +
  cowplot::theme_nothing()

vpLayout <- function(rowIndex, columnIndex) { return( viewport(layout.pos.row=rowIndex, layout.pos.col=columnIndex) ) }
grid::grid.newpage()
  #Defnie the relative proportions among the panels in the mosaic.
  layout <- grid::grid.layout(nrow=3, ncol=4,
                        widths=grid::unit(c(.25, .25, .25, .25) ,c("null","null","null","null")),
                        heights=grid::unit(c(.05, .5,.5), c("null", "null", "null"))
  )
  grid::pushViewport(grid::viewport(layout=layout))
  main_title <- paste0(toupper(dsL$study_name[1]),"  ", dsL$subgroup,"  ",  dsL$model_type,
                       " ( ", dsL$process1[1], " - ", dsL$process2[2], " ) " )[1]
  grid.text(main_title, vp = viewport(layout.pos.row = 1, layout.pos.col = 1:4))
  print(a1, vp=grid::viewport(layout.pos.col=1, layout.pos.row=2))
  print(b1, vp=grid::viewport(layout.pos.col=2, layout.pos.row=2))
  print(c1, vp=grid::viewport(layout.pos.col=3, layout.pos.row=2))
  print(d1, vp=grid::viewport(layout.pos.col=4, layout.pos.row=2))
  print(a2, vp=grid::viewport(layout.pos.col=1, layout.pos.row=3))
  print(b2, vp=grid::viewport(layout.pos.col=2, layout.pos.row=3))
  print(c2, vp=grid::viewport(layout.pos.col=3, layout.pos.row=3))
  print(d2, vp=grid::viewport(layout.pos.col=4, layout.pos.row=3))
  # grid.draw(legend_wave, vp=grid::viewport(layout.pos.col=1:2, layout.pos.row=4) )

  grid::popViewport(0)

} # close function
observed_predicted(dsL)





#### EAS ####
#
# @knitr eas_female_aehplus_grip_pef ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "eas",
                    subgroup = "female",
                    model_type = "aehplus",
                    process1 = "grip",
                    process2 = "pef")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
observed_predicted(d) # create scatterplot
#
# # @knitr eas_female_aehplus_pef_gait ---------------------------------------
# dsL <- get_gh5_data(file=ls_gh5,
#                     study = "eas",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "pef",
#                     process2 = "gait")
# observed_predicted(dsL) # create scatterplot
#
# # @knitr eas_female_aehplus_grip_gait ---------------------------------------
# dsL <- get_gh5_data(file=ls_gh5,
#                     study = "eas",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "grip",
#                     process2 = "gait")
# observed_predicted(dsL) # create scatterplot
#
# #### HRS ####
# # @knitr hrs_female_aehplus_grip_gait ---------------------------------------
# dsL <- get_gh5_data(file=ls_gh5,
#                     study = "hrs",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "grip",
#                     process2 = "gait")
# observed_predicted(dsL) # create scatterplot
#
# # @knitr hrs_female_aehplus_grip_pef ---------------------------------------
# dsL <- get_gh5_data(file=ls_gh5,
#                     study = "hrs",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "grip",
#                     process2 = "pef")
# observed_predicted(dsL) # create scatterplot
#
# # @knitr hrs_female_aehplus_pef_gait ---------------------------------------
# dsL <- get_gh5_data(file=ls_gh5,
#                     study = "hrs",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "pef",
#                     process2 = "gait")
# observed_predicted(dsL) # create scatterplot
#
# ##### LASA ####
# # @knitr lasa_female_aehplus_gait_grip ---------------------------------------
# dsL <- get_gh5_data(file=ls_gh5,
#                     study = "lasa",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "gait",
#                     process2 = "grip")
# observed_predicted(dsL) # create scatterplot
#
# # @knitr lasa_female_aehplus_pek_gait ---------------------------------------
# dsL <- get_gh5_data(file=ls_gh5,
#                     study = "lasa",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "pek",
#                     process2 = "gait")
# observed_predicted(dsL) # create scatterplot
#
# # @knitr lasa_female_aehplus_pek_grip ---------------------------------------
# dsL <- get_gh5_data(file=ls_gh5,
#                     study = "lasa",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "pek",
#                     process2 = "grip")
# observed_predicted(dsL) # create scatterplot
#
# #### OCTO ####
# # @knitr octo_female_aehplus_gait_grip ---------------------------------------
# dsL <- get_gh5_data(file=ls_gh5,
#                     study = "octo",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "gait",
#                     process2 = "grip")
# observed_predicted(dsL) # create scatterplot
#
# # @knitr octo_female_aehplus_pek_gait ---------------------------------------
# dsL <- get_gh5_data(file=ls_gh5,
#                     study = "octo",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "pek",
#                     process2 = "gait")
# observed_predicted(dsL) # create scatterplot
#
# # @knitr octo_female_aehplus_pek_grip ---------------------------------------
# dsL <- get_gh5_data(file=ls_gh5,
#                     study = "octo",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "pek",
#                     process2 = "grip")
# observed_predicted(dsL) # create scatterplot
#
# #### RADC ####
# # @knitr radc_female_aehplus_fev_gait ---------------------------------------
# dsL <- get_gh5_data(file=ls_gh5,
#                     study = "radc",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "fev",
#                     process2 = "gait")
# observed_predicted(dsL) # create scatterplot
#
# # @knitr radc_female_aehplus_fev_grip ---------------------------------------
# dsL <- get_gh5_data(file=ls_gh5,
#                     study = "radc",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "fev",
#                     process2 = "grip")
# observed_predicted(dsL) # create scatterplot
#
# # @knitr radc_female_aehplus_gait_grip ---------------------------------------
# dsL <- get_gh5_data(file=ls_gh5,
#                     study = "radc",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "gait",
#                     process2 = "grip")
# observed_predicted(dsL) # create scatterplot
# gh5_paths
#
# #### SATSA ####
#
# # @knitr satsa_female_aehplus_gait_fev ---------------------------------------
# dsL <- get_gh5_data(file=ls_gh5,
#                     study = "satsa",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "gait",
#                     process2 = "fev")
# observed_predicted(dsL) # create scatterplot
#
# # @knitr satsa_female_aehplus_gait_grip ---------------------------------------
# dsL <- get_gh5_data(file=ls_gh5,
#                     study = "satsa",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "gait",
#                     process2 = "grip")
# observed_predicted(dsL) # create scatterplot
#
# # @knitr satsa_female_aehplus_grip_fev ---------------------------------------
# dsL <- get_gh5_data(file=ls_gh5,
#                     study = "satsa",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "grip",
#                     process2 = "fev")
# observed_predicted(dsL) # create scatterplot
#
#
# #### MALES ####
# #### EAS ####
#
# # @knitr eas_male_aehplus_grip_pef ---------------------------------------
# dsL <- get_gh5_data(file=ls_gh5,
#                     study = "eas",
#                     subgroup = "male",
#                     model_type = "aehplus",
#                     process1 = "grip",
#                     process2 = "pef")
# observed_predicted(dsL) # create scatterplot
#
# # @knitr eas_male_aehplus_pef_gait ---------------------------------------
# dsL <- get_gh5_data(file=ls_gh5,
#                     study = "eas",
#                     subgroup = "male",
#                     model_type = "aehplus",
#                     process1 = "pef",
#                     process2 = "gait")
# observed_predicted(dsL) # create scatterplot
#
# # @knitr eas_male_aehplus_grip_gait ---------------------------------------
# dsL <- get_gh5_data(file=ls_gh5,
#                     study = "eas",
#                     subgroup = "male",
#                     model_type = "aehplus",
#                     process1 = "grip",
#                     process2 = "gait")
# observed_predicted(dsL) # create scatterplot

#### HRS ####
# @knitr hrs_male_aehplus_grip_gait ---------------------------------------
dsL <- get_gh5_data(file=ls_gh5,
                    study = "hrs",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "grip",
                    process2 = "gait")
observed_predicted(dsL) # create scatterplot

# @knitr hrs_male_aehplus_grip_pef ---------------------------------------
dsL <- get_gh5_data(file=ls_gh5,
                    study = "hrs",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "grip",
                    process2 = "pef")
observed_predicted(dsL) # create scatterplot

# @knitr hrs_male_aehplus_pef_gait ---------------------------------------
dsL <- get_gh5_data(file=ls_gh5,
                    study = "hrs",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "pef",
                    process2 = "gait")
observed_predicted(dsL) # create scatterplot

##### LASA ####
# @knitr lasa_male_aehplus_gait_grip ---------------------------------------
dsL <- get_gh5_data(file=ls_gh5,
                    study = "lasa",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "gait",
                    process2 = "grip")
observed_predicted(dsL) # create scatterplot

# @knitr lasa_male_aehplus_pek_gait ---------------------------------------
dsL <- get_gh5_data(file=ls_gh5,
                    study = "lasa",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "pek",
                    process2 = "gait")
observed_predicted(dsL) # create scatterplot

# @knitr lasa_male_aehplus_pek_grip ---------------------------------------
dsL <- get_gh5_data(file=ls_gh5,
                    study = "lasa",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "pek",
                    process2 = "grip")
observed_predicted(dsL) # create scatterplot

#### OCTO ####
# @knitr octo_male_aehplus_gait_grip ---------------------------------------
dsL <- get_gh5_data(file=ls_gh5,
                    study = "octo",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "gait",
                    process2 = "grip")
observed_predicted(dsL) # create scatterplot

# @knitr octo_male_aehplus_pek_gait ---------------------------------------
dsL <- get_gh5_data(file=ls_gh5,
                    study = "octo",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "pek",
                    process2 = "gait")
observed_predicted(dsL) # create scatterplot

# @knitr octo_male_aehplus_pek_grip ---------------------------------------
dsL <- get_gh5_data(file=ls_gh5,
                    study = "octo",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "pek",
                    process2 = "grip")
observed_predicted(dsL) # create scatterplot

#### RADC ####
# @knitr radc_male_aehplus_fev_gait ---------------------------------------
dsL <- get_gh5_data(file=ls_gh5,
                    study = "radc",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "fev",
                    process2 = "gait")
observed_predicted(dsL) # create scatterplot

# @knitr radc_male_aehplus_fev_grip ---------------------------------------
dsL <- get_gh5_data(file=ls_gh5,
                    study = "radc",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "fev",
                    process2 = "grip")
observed_predicted(dsL) # create scatterplot

# @knitr radc_male_aehplus_gait_grip ---------------------------------------
dsL <- get_gh5_data(file=ls_gh5,
                    study = "radc",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "gait",
                    process2 = "grip")
observed_predicted(dsL) # create scatterplot
gh5_paths

#### SATSA ####

# @knitr satsa_male_aehplus_gait_fev ---------------------------------------
dsL <- get_gh5_data(file=ls_gh5,
                    study = "satsa",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "gait",
                    process2 = "fev")
observed_predicted(dsL) # create scatterplot

# @knitr satsa_male_aehplus_gait_grip ---------------------------------------
dsL <- get_gh5_data(file=ls_gh5,
                    study = "satsa",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "gait",
                    process2 = "grip")
observed_predicted(dsL) # create scatterplot

# @knitr satsa_male_aehplus_grip_fev ---------------------------------------
dsL <- get_gh5_data(file=ls_gh5,
                    study = "satsa",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "grip",
                    process2 = "fev")
observed_predicted(dsL) # create scatterplot

# @knitr reproduce ---------------------------------------
  rmarkdown::render(input = "./reports/physical/observed_predicted/observed_predicted.Rmd" ,
                    output_format="html_document", clean=TRUE)
