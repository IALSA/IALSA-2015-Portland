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

# define the location of the folders in each contributing study
eas <- list.files(file.path("./studies/eas/physical"),full.names=T, recursive=T, pattern="gh5$")
elsa <- list.files(file.path("./studies/elsa/physical"),full.names=T, recursive=T, pattern="gh5$")
# habc <- list.files(file.path("./studies/habc/physical"),full.names=T, recursive=T, pattern="gh5$")
hrs <- list.files(file.path("./studies/hrs/physical"),full.names=T, recursive=T, pattern="gh5$")
ilse <- list.files(file.path("./studies/ilse/physical"),full.names=T, recursive=T, pattern="gh5$")
lasa <- list.files(file.path("./studies/lasa/physical"),full.names=T, recursive=T, pattern="gh5$")
# nas <- list.files(file.path("./studies/nas/physical"),full.names=T, recursive=T, pattern="gh5$")
nuage <- list.files(file.path("./studies/nuage/physical"),full.names=T, recursive=T, pattern="gh5$")
octo <- list.files(file.path("./studies/octo/physical"),full.names=T, recursive=T, pattern="gh5$")
radc <- list.files(file.path("./studies/radc/physical"),full.names=T, recursive=T, pattern="gh5$")
satsa <- list.files(file.path("./studies/satsa/physical"),full.names=T, recursive=T, pattern="gh5$")
# see what studies have provided .gh5 files
gh5_paths <- c(eas,   hrs, lasa, nuage, octo, radc, satsa)

# select a .gh5 file for processing

gh5_paths

# ls_gh5 <- list(c("paths","study","subgroup","model_type","process1", "process2"))
ls_gh5 <- list()
ls_gh5[["paths"]] <- gh5_paths

get_model_def <- function(file=gh5_file){

  ## Add descriptive info
  selector <- which(strsplit(gh5_file, '/')[[1]]=='studies')
  (study_name <- strsplit(gh5_file, '/')[[1]][selector+1])
  (model_name <- strsplit(gh5_file, '/')[[1]][5])
  (subgroup <- strsplit(model_name, '_|.gh5')[[1]][2])
  (model_type <- strsplit(model_name, '_|.gh5')[[1]][3])
  (process1 <- strsplit(model_name, '_|.gh5')[[1]][4])
  (process2 <- strsplit(model_name, '_|.gh5')[[1]][5])
  md <- c(study_name, subgroup, model_type, process1, process2, model_name)
  return(md)
}
# (model_def <- get_model_def(file=gh5_file))

for(i in 1:length(ls_gh5[["paths"]])){
  gh5_file <- gh5_paths[i]
  (model_def <- get_model_def(file=gh5_file))
  ls_gh5[["study"]][i] <- strsplit(gh5_paths[i], "/")[[1]][3]
  model_name <- strsplit(gh5_paths[i], "/")[[1]][5]
  ls_gh5[["model_name"]][i] <- model_name
  ls_gh5[["subgroup"]][i] <- strsplit(model_name, '_|.gh5')[[1]][2]
  ls_gh5[["model_type"]][i] <- strsplit(model_name, '_|.gh5')[[1]][3]
  ls_gh5[["process1"]][i] <- strsplit(model_name, '_|.gh5')[[1]][4]
  ls_gh5[["process2"]][i] <- strsplit(model_name, '_|.gh5')[[1]][5]
}

names(ls_gh5)
source("./scripts/mplus/get_gh5.R") # load custom script to extract data from a .gh5 file

# when selecting from the list object with model outputs
# (all_gh5 <- gsub(".out",".gh5", out_list_all_plus[["path"]]) )
# gh5_file <- all_gh5[34]

# @knitr load_data ---------------------------------------
dsL <- get_gh5_data(
  file=ls_gh5 # list object containing paths to the gh5 files
  ,study = "eas"
  ,subgroup = "female"
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
  scale_fill_gradient2(low="#7fbf7b", mid="#f7f7f7", high="#af8dc3", space="Lab")+
  main_theme
g
}
proto_scatter(dsL,x="SP", y="SC")


# d <- dsL %>% tidyr::gather_("term","value",c("IP","SP","SC","IC"))
# d$age <- d[is.na(d$observed),"age"]
# d %>% dplyr::filter(id==1) %>% dplyr::select(id, BAGE, wave, time, outcome, observed, age, term, value )

#inspect data for one individual
dsL %>% dplyr::filter(id==1) %>% dplyr::select(id, BAGE, wave, time, outcome, observed, age, IP, SP, SC, IC )
# create plot



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

a <- proto_scatter(dsL,x="IP", y="IC" )
b <- proto_scatter(dsL,x="IP", y="SP" )
c <- proto_scatter(dsL,x="SC", y="IP" )
d <- proto_scatter(dsL,x="SC", y="SP" )

vpLayout <- function(rowIndex, columnIndex) { return( viewport(layout.pos.row=rowIndex, layout.pos.col=columnIndex) ) }
grid::grid.newpage()
  #Defnie the relative proportions among the panels in the mosaic.
  layout <- grid::grid.layout(nrow=3, ncol=2,
                        widths=grid::unit(c(.5, .5) ,c("null","null")),
                        heights=grid::unit(c(.05, .5, .5), c("null", "null", "null"))
  )
  grid::pushViewport(grid::viewport(layout=layout))
  main_title <- paste0(toupper(dsL$study_name[1]),"  ", dsL$subgroup,"  ",  dsL$model_type,
                       " ( ", dsL$process1[1], " - ", dsL$process2[2], " ) " )[1]
  grid.text(main_title, vp = viewport(layout.pos.row = 1, layout.pos.col = 1:2))
  print(a, vp=grid::viewport(layout.pos.col=1, layout.pos.row=2))
  print(b, vp=grid::viewport(layout.pos.col=2, layout.pos.row=2))
  print(c, vp=grid::viewport(layout.pos.col=1, layout.pos.row=3))
  print(d, vp=grid::viewport(layout.pos.col=2, layout.pos.row=3))


  grid::popViewport(0)
}
# fscore_scatter(file=gh5_file)


# @knitr satsa_1 ---------------------------------------
dsL <- get_gh5_data(file=ls_gh5, study = "eas", subgroup = "female", model_type = "aehplus",
                    process1 = "grip", process2 = "pef")
fscore_scatter(dsL) # create scatterplot

# @knitr satsa_2 ---------------------------------------
(gh5_file <- gh5_paths[2])
# dsL <- get_gh5_data(file=gh5_file) # get graph-ready data
fscore_scatter(file=gh5_file) # create scatterplot

# @knitr satsa_3 ---------------------------------------
(gh5_file <- gh5_paths[3])
# dsL <- get_gh5_data(file=gh5_file) # get graph-ready data
fscore_scatter(file=gh5_file) # create scatterplot

# @knitr satsa_4 ---------------------------------------
(gh5_file <- gh5_paths[4])
# dsL <- get_gh5_data(file=gh5_file) # get graph-ready data
fscore_scatter(file=gh5_file) # create scatterplot

# @knitr satsa_5 ---------------------------------------
(gh5_file <- gh5_paths[5])
# dsL <- get_gh5_data(file=gh5_file) # get graph-ready data
fscore_scatter(file=gh5_file) # create scatterplot

# @knitr satsa_6 ---------------------------------------
(gh5_file <- gh5_paths[6])
# dsL <- get_gh5_data(file=gh5_file) # get graph-ready data
fscore_scatter(file=gh5_file) # create scatterplot



# @knitr reproduce ---------------------------------------
  rmarkdown::render(input = "./reports/physical/fscores_scatter/fscores_scatter.Rmd" ,
                    output_format="html_document", clean=TRUE)
