rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.
cat("\f") # clear console



# @knitr load_packages
library(dplyr) # for data manipulation
library(ggplot2) # for graphing
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
proto_scatter <- function(dsL,x, y){
g <- ggplot2::ggplot(dsL,aes_string(x=x, y=y, fill="BAGE"))+
  geom_point(shape=21,size=5, alpha=.1)+
  geom_smooth(aes_string(y=y), method="loess",color="black", size=1, fill="gray80", alpha=.3, na.rm=T)+
  scale_fill_gradient2(low="#7fbf7b", mid="#f7f7f7", high="#af8dc3", space="Lab")+
  theme(legend.position="none")+
  main_theme
g

}
# proto_scatter(dsL,x="IP", y="IC")
# proto_scatter(dsL,x_name="SP", y_name="SC")
# proto_scatter(dsL,x_name="SP", y_name="IP")

#inspect data for one individual
dsL %>% dplyr::filter(id==1) %>% dplyr::select(id, BAGE, wave, time, outcome, observed, age, IP, SP, SC, IC )

# @knitr new_chunk ---------------------------------------

# @knitr basic_graph_1 ---------------------------------------
fscore_scatter <- function(data){
dsL <- data
dsL[dsL$id==1,]

for(i in 1:nrow(dsL))
if(is.na(dsL[i,"observed"])){
  dsL[i,"IP"] <- NA
  dsL[i,"SP"] <- NA
  dsL[i,"SC"] <- NA
  dsL[i,"IC"] <- NA
}

(min_IP <- min(dsL[,"IP"],na.rm = T))
(min_IC <- min(dsL[,"IC"],na.rm = T))
(min_SP <- min(dsL[,"SP"],na.rm = T))
(min_SC <- min(dsL[,"SC"],na.rm = T))

(max_IP <- max(dsL[,"IP"],na.rm = T))
(max_IC <- max(dsL[,"IC"],na.rm = T))
(max_SP <- max(dsL[,"SP"],na.rm = T))
(max_SC <- max(dsL[,"SC"],na.rm = T))


(R_IPIC_display <- paste0("R_ICIP: ", dsL$R_IPIC_est[1]," (",dsL$R_IPIC_se[1],"), p = ",dsL$R_IPIC_pval[1] ))
(R_SPSC_display <- paste0("R_SCSP: ", dsL$R_SPSC_est[1]," (",dsL$R_SPSC_se[1],"), p = ",dsL$R_SPSC_pval[1] ))


(a <- proto_scatter(dsL,x="IP", y="IC" ) + theme(legend.position="none") +
  annotate(geom="text", x=min_IP, y=min_IC, label=R_IPIC_display, hjust=0)+
  annotate(geom="text", x=min_IP, y=max_IC, label="Intercepts of", hjust=0)+
  labs(x=dsL$process1[1], y=dsL$process2[1]))
(b <- proto_scatter(dsL,x="IP", y="SP" ) + theme(legend.position="none")+
  annotate(geom="text", x=min_IP, y=max_SP, label=dsL$process1[1], hjust=0)+
  labs(x="intercept", y="slope"))
(c <- proto_scatter(dsL,x="SC", y="IC" ) + theme(legend.position="none")+
  annotate(geom="text", x=min_SC, y=max_IC, label=dsL$process2[1], hjust=0)+
  labs(x="intercept", y="slope"))
(d <- proto_scatter(dsL,x="SP", y="SC") +
  annotate(geom="text", x=min_SP, y=min_SC, label=R_SPSC_display, hjust=0)+
  annotate(geom="text", x=min_SP, y=max_SC, label="Slopes of", hjust=0)+
  labs(x=dsL$process1[1], y=dsL$process2[1])+
  theme(legend.justification=c(.8,0),
        legend.position=c(0,.96),
        legend.direction="horizontal",
        legend.background = element_rect(fill=NA,color=NA)))

vpLayout <- function(rowIndex, columnIndex) { return( viewport(layout.pos.row=rowIndex, layout.pos.col=columnIndex) ) }
grid::grid.newpage()
  #Defnie the relative proportions among the panels in the mosaic.
  layout <- grid::grid.layout(nrow=3, ncol=2,
                        widths=grid::unit(c(.5, .5) ,c("null","null")),
                        heights=grid::unit(c(.05, .5, .5), c("null", "null", "null"))
  )
  grid::pushViewport(grid::viewport(layout=layout))
  main_title <- paste0("Factor Scores: ",  toupper(dsL$study_name[1]),"  ", dsL$subgroup,"  ",  dsL$model_type,
                       " ( ", dsL$process1[1], " - ", dsL$process2[2], " ) " )[1]
  grid.text(main_title, vp = viewport(layout.pos.row = 1, layout.pos.col = 1:2))
  print(a, vp=grid::viewport(layout.pos.col=1, layout.pos.row=2))
  print(b, vp=grid::viewport(layout.pos.col=2, layout.pos.row=2))
  print(c, vp=grid::viewport(layout.pos.col=1, layout.pos.row=3))
  print(d, vp=grid::viewport(layout.pos.col=2, layout.pos.row=3))


  grid::popViewport(0)
}


# sample_size <- 100 # activate for testing and development
(sample_size <- length(unique(dsL$id)))


#### EAS ####

# @knitr eas_female_aehplus_grip_pef ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "eas",
                    subgroup = "female",
                    model_type = "aehplus",
                    process1 = "grip",
                    process2 = "pef")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(data=dsL) # create scatterplot


# @knitr eas_female_aehplus_grip_gait ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "eas",
                    subgroup = "female",
                    model_type = "aehplus",
                    process1 = "grip",
                    process2 = "gait")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(d) # create scatterplot


# @knitr eas_female_aehplus_pef_gait ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "eas",
                    subgroup = "female",
                    model_type = "aehplus",
                    process1 = "pef",
                    process2 = "gait")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(d) # create scatterplot

#### ELSA ####

# @knitr elsa_female_aehplus_grip_fev ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "elsa",
                    subgroup = "female",
                    model_type = "aehplus",
                    process1 = "grip",
                    process2 = "fev")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(data=dsL) # create scatterplot

# @knitr elsa_female_aehplus_grip_gait ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "elsa",
                    subgroup = "female",
                    model_type = "aehplus",
                    process1 = "grip",
                    process2 = "gait")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(data=dsL) # create scatterplot

# @knitr elsa_female_aehplus_fev_gait ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "elsa",
                    subgroup = "female",
                    model_type = "aehplus",
                    process1 = "fev",
                    process2 = "gait")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(data=dsL) # create scatterplot


#### HRS ####

# @knitr hrs_female_aehplus_grip_pef ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "hrs",
                    subgroup = "female",
                    model_type = "aehplus",
                    process1 = "grip",
                    process2 = "pef")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(d) # create scatterplot

# @knitr hrs_female_aehplus_grip_gait ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "hrs",
                    subgroup = "female",
                    model_type = "aehplus",
                    process1 = "grip",
                    process2 = "gait")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(d) # create scatterplot


# @knitr hrs_female_aehplus_pef_gait ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "hrs",
                    subgroup = "female",
                    model_type = "aehplus",
                    process1 = "pef",
                    process2 = "gait")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(d) # create scatterplot



##### LASA ####

# @knitr lasa_female_aehplus_grip_pef ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "lasa",
                    subgroup = "female",
                    model_type = "aehplus",
                    process1 = "grip",
                    process2 = "pef")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(d) # create scatterplot


# @knitr lasa_female_aehplus_grip_gait ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "lasa",
                    subgroup = "female",
                    model_type = "aehplus",
                    process1 = "grip",
                    process2 = "gait")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(d) # create scatterplot

# @knitr lasa_female_aehplus_pef_gait ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "lasa",
                    subgroup = "female",
                    model_type = "aehplus",
                    process1 = "pef",
                    process2 = "gait")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(d) # create scatterplot


#### OCTO ####

# @knitr octo_female_aehplus_grip_pef ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "octo",
                    subgroup = "female",
                    model_type = "aehplus",
                    process1 = "grip",
                    process2 = "pef")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(d) # create scatterplot


# @knitr octo_female_aehplus_grip_gait ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "octo",
                    subgroup = "female",
                    model_type = "aehplus",
                    process1 = "grip",
                    process2 = "gait")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(d) # create scatterplot

# @knitr octo_female_aehplus_pef_gait ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "octo",
                    subgroup = "female",
                    model_type = "aehplus",
                    process1 = "pef",
                    process2 = "gait")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(d) # create scatterplot


#### RADC ####
# @knitr radc_female_aehplus_grip_fev ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "radc",
                    subgroup = "female",
                    model_type = "aehplus",
                    process1 = "fev",
                    process2 = "grip")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(d) # create scatterplot

# @knitr radc_female_aehplus_grip_gait ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "radc",
                    subgroup = "female",
                    model_type = "aehplus",
                    process1 = "gait",
                    process2 = "grip")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(d) # create scatterplot

# @knitr radc_female_aehplus_fev_gait ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "radc",
                    subgroup = "female",
                    model_type = "aehplus",
                    process1 = "fev",
                    process2 = "gait")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(d) # create scatterplot


#### SATSA ####

# @knitr satsa_female_aehplus_grip_fev ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "satsa",
                    subgroup = "female",
                    model_type = "aehplus",
                    process1 = "grip",
                    process2 = "fev")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(d) # create scatterplot


# @knitr satsa_female_aehplus_grip_gait ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "satsa",
                    subgroup = "female",
                    model_type = "aehplus",
                    process1 = "gait",
                    process2 = "grip")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(d) # create scatterplot

# @knitr satsa_female_aehplus_fev_gait ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "satsa",
                    subgroup = "female",
                    model_type = "aehplus",
                    process1 = "gait",
                    process2 = "fev")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(d) # create scatterplot




# @knitr reproduce ---------------------------------------
  rmarkdown::render(input = "./reports/physical/fscores_scatter/fscores_scatter.Rmd" ,
                    output_format="html_document", clean=TRUE)
