rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.
cat("\f") # clear console



# @knitr load_packages
library(dplyr) # for data manipulation
library(ggplot2) # for graphing
# library(MplusAutomation)
library(grid)

# @knitr load_sources ---------------------------------------
source("https://raw.githubusercontent.com/andkov/psy532/master/scripts/graphs/main_theme.R")
source("./scripts/mplus/group_variables.R") # define objects with names of variables/columns
source("http://www.statmodel.com/mplus-R/mplus.R") # load custom functions

# @knitr declare_globals ---------------------------------------


# @knitr get_gh5_files -------------------------------------------

# load the list object with file paths to the outputs and gh5
# out_list_all_plus <- readRDS("./projects/physical/outputs/out_list.rds")

# # define the location of the folders in each contributing study
# eas <- list.files(file.path("./studies/eas/physical"),full.names=T, recursive=T, pattern="gh5$")
# elsa <- list.files(file.path("./studies/elsa/physical"),full.names=T, recursive=T, pattern="gh5$")
# # habc <- list.files(file.path("./studies/habc/physical"),full.names=T, recursive=T, pattern="gh5$")
# hrs <- list.files(file.path("./studies/hrs/physical"),full.names=T, recursive=T, pattern="gh5$")
# ilse <- list.files(file.path("./studies/ilse/physical"),full.names=T, recursive=T, pattern="gh5$")
# lasa <- list.files(file.path("./studies/lasa/physical"),full.names=T, recursive=T, pattern="gh5$")
# # nas <- list.files(file.path("./studies/nas/physical"),full.names=T, recursive=T, pattern="gh5$")
# nuage <- list.files(file.path("./studies/nuage/physical"),full.names=T, recursive=T, pattern="gh5$")
# octo <- list.files(file.path("./studies/octo/physical"),full.names=T, recursive=T, pattern="gh5$")
# radc <- list.files(file.path("./studies/radc/physical"),full.names=T, recursive=T, pattern="gh5$")
# satsa <- list.files(file.path("./studies/satsa/physical"),full.names=T, recursive=T, pattern="gh5$")
# # see what studies have provided .gh5 files
# gh5_paths <- c(eas,   hrs, lasa, nuage, octo, radc, satsa)

# select a .gh5 file for processing

# gh5_paths
model_list <- readRDS("./projects/physical/outputs/model_list.rds")
# ls_gh5 <- list(c("paths","study","subgroup","model_type","process1", "process2"))
# ls_gh5 <- list()
# gh5_paths <-  model_list[["path_gh5"]]
# ls_gh5[["paths"]] <- gh5_paths
# # ls_gh5[["paths"]] <- model_list
#
# #load custom script to extract data from a .gh5 file
source("./scripts/mplus/get_gh5.R")
# #get_model_def <- function(file=gh5_file)
# #get_gh5_data <- function(file, study, subgroup, model_type, process1, process2,age_center=70)
# for(i in 1:length(ls_gh5[["paths"]])){
#   gh5_file <- gh5_paths[i]
#
#   (model_def <- get_model_def(file=gh5_file))
#   ls_gh5[["study"]][i] <- strsplit(gh5_paths[i], "/")[[1]][3]
#   model_name <- strsplit(gh5_paths[i], "/")[[1]][5]
#   ls_gh5[["model_name"]][i] <- model_name
#   ls_gh5[["subgroup"]][i] <- strsplit(model_name, '_|.gh5')[[1]][2]
#   ls_gh5[["model_type"]][i] <- strsplit(model_name, '_|.gh5')[[1]][3]
#   ls_gh5[["process1"]][i] <- strsplit(model_name, '_|.gh5')[[1]][4]
#   ls_gh5[["process2"]][i] <- strsplit(model_name, '_|.gh5')[[1]][5]
# }
#
# names(ls_gh5)
names(model_list)
# when selecting from the list object with model outputs
# (all_gh5 <- gsub(".out",".gh5", out_list_all_plus[["path"]]) )
# gh5_file <- all_gh5[34]

# @knitr load_data ---------------------------------------

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
# display the empirical regression equation on the graph
#http://stackoverflow.com/questions/7549694/ggplot2-adding-regression-line-equation-and-r2-on-graph
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


# sample_size <- 100
(sample_size <- length(unique(dsL$id)))


#### EAS ####

# @knitr eas_male_aehplus_grip_pef ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "eas",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "grip",
                    process2 = "pef")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(data=dsL) # create scatterplot


# @knitr eas_male_aehplus_grip_gait ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "eas",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "grip",
                    process2 = "gait")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(d) # create scatterplot


# @knitr eas_male_aehplus_pef_gait ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "eas",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "pef",
                    process2 = "gait")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(d) # create scatterplot

#### ELSA ####

# @knitr elsa_male_aehplus_grip_fev ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "elsa",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "grip",
                    process2 = "fev")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(data=dsL) # create scatterplot

# @knitr elsa_male_aehplus_grip_gait ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "elsa",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "grip",
                    process2 = "gait")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(data=dsL) # create scatterplot

# @knitr elsa_male_aehplus_fev_gait ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "elsa",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "fev",
                    process2 = "gait")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(data=dsL) # create scatterplot



#### HRS ####

# @knitr hrs_male_aehplus_grip_pef ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "hrs",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "grip",
                    process2 = "pef")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(d) # create scatterplot

# @knitr hrs_male_aehplus_grip_gait ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "hrs",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "grip",
                    process2 = "gait")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(d) # create scatterplot


# @knitr hrs_male_aehplus_pef_gait ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "hrs",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "pef",
                    process2 = "gait")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(d) # create scatterplot



##### LASA ####

# @knitr lasa_male_aehplus_grip_pef ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "lasa",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "grip",
                    process2 = "pef")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(d) # create scatterplot


# @knitr lasa_male_aehplus_grip_gait ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "lasa",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "grip",
                    process2 = "gait")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(d) # create scatterplot

# @knitr lasa_male_aehplus_pef_gait ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "lasa",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "pef",
                    process2 = "gait")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(d) # create scatterplot


#### OCTO ####

# @knitr octo_male_aehplus_grip_pef ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "octo",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "grip",
                    process2 = "pef")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(d) # create scatterplot


# @knitr octo_male_aehplus_grip_gait ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "octo",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "grip",
                    process2 = "gait")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(d) # create scatterplot

# @knitr octo_male_aehplus_pef_gait ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "octo",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "pef",
                    process2 = "gait")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(d) # create scatterplot


#### RADC ####
# @knitr radc_male_aehplus_grip_fev ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "radc",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "fev",
                    process2 = "grip")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(d) # create scatterplot

# @knitr radc_male_aehplus_grip_gait ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "radc",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "gait",
                    process2 = "grip")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(d) # create scatterplot

# @knitr radc_male_aehplus_fev_gait ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "radc",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "fev",
                    process2 = "gait")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(d) # create scatterplot


#### SATSA ####

# @knitr satsa_male_aehplus_grip_fev ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "satsa",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "grip",
                    process2 = "fev")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(d) # create scatterplot


# @knitr satsa_male_aehplus_grip_gait ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "satsa",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "gait",
                    process2 = "grip")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(d) # create scatterplot

# @knitr satsa_male_aehplus_fev_gait ---------------------------------------
dsL <- get_gh5_data(file=model_list,
                    study = "satsa",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "gait",
                    process2 = "fev")
d <- dsL[dsL$id %in% sample(unique(dsL$id), sample_size), ]
fscore_scatter(d) # create scatterplot




# @knitr reproduce ---------------------------------------
  rmarkdown::render(input = "./reports/physical/fscores_scatter/fscores_scatter_male.Rmd" ,
                    output_format="html_document", clean=TRUE)
