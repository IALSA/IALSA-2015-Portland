rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.
#####################################
## @knitr load_sources



#####################################
## @knitr load_packages
# library(xtable)
# library(printr)
library(knitr)
library(scales) #For formating values in graphs
library(RColorBrewer)
# library(reshape2) #For converting wide to long
library(grid) #For graphing
library(ggplot2) #For graphing
library(testit, quietly=TRUE) #For asserts
library(dplyr)

## @knitr load_data
ds2 <- readRDS('./data/shared/ds2.rds')
dsb <- ds2 %>% dplyr::filter(model_number %in% c("u1","b1")) %>%
  dplyr::select_("study_name","model_number","subgroup","model_type","physical_construct","cognitive_construct","physical_measure","cognitive_measure", "output_file")

keepvar <- c("study_name","model_number","subgroup","model_type","physical_construct","cognitive_construct","physical_measure","cognitive_measure", "output_file", "converged")

dsDemo <- ds2[ , keepvar]
# head(dsDemo)
## @knitr dummy

unique(dsb$study_name)

names(dsb)

## @knitr number_studies
cat(paste0("**",length(dsb$study_name),"**"))

# @knitr missing_studies
pathDir <- getwd() # establish home directory
pathStudies <- file.path(pathDir,"studies")
misslong <- list.dirs(pathStudies, recursive = F)
missing <- basename(misslong)
present <- unique(dsb$study_name)
miss <- missing[!(missing %in% present)]
cat(miss)


## @knitr freq_studies
t1<-table(dsb$study_name)
t1[t1==0] <- "."
t1

## @knitr cross_table_data_dplyr
ds <- dsb
# dplyr::tbl_df(ds)
# dplyr::glimpse(ds)
# utils::View(ds)
# ds %>% dplyr::count(converged)
t2<-table(dsb$model_number, dsb$study_name)
t2[t2==0] <- "."
t2

## @knitr define_themes
baseSize <- 10
theme1 <- ggplot2::theme_bw(base_size=baseSize) +
  ggplot2::theme(title=ggplot2::element_text(colour="gray20",size = baseSize+1)) +
  ggplot2::theme(axis.text=ggplot2::element_text(colour="gray40", size=baseSize-2)) +
  ggplot2::theme(axis.title=ggplot2::element_text(colour="gray40")) +
  ggplot2::theme(panel.border = ggplot2::element_rect(colour="gray80")) +
  ggplot2::theme(axis.ticks.length = grid::unit(0, "cm")) +
  ggplot2::theme(text = element_text(size =baseSize+7))





## @knitr 0_graph_phys_measure
d <- ds %>% dplyr::count(cognitive_measure, physical_measure)

g <- ggplot2::ggplot(d, aes(x=physical_measure, y=cognitive_measure, fill=n))
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

## @knitr 1_graph_study_name
d <- ds %>% dplyr::count(cognitive_measure, study_name)
g <- ggplot2::ggplot(d, aes(x=study_name, y=cognitive_measure, fill=n))
g <- g + geom_tile()
g <- g + geom_text(aes(label=n), size=baseSize-6)
g <- g + scale_y_discrete(limits=rev(unique(d$cognitive_measure)))
g <- g + scale_fill_gradient(low="white", high="#8da0cb", na.value = "white")
g <- g + labs(title="Studies ", x=element_blank(), y="Cognitive Measures")
g <- g + theme1
g <- g + theme(axis.text.y = element_text(hjust=1, angle=0),
               axis.text.x = element_text(hjust=1, angle=90, size=9),
               legend.position="top")
g

## @knitr 2_graph_model_type
d <- ds %>% dplyr::count(cognitive_measure, model_type)
g <- ggplot2::ggplot(d, aes(x=model_type, y=cognitive_measure, fill=n))
g <- g + geom_tile()
g <- g + geom_text(aes(label=n), size=baseSize-6)
g <- g + scale_y_discrete(limits=rev(unique(d$cognitive_measure)))
g <- g + scale_fill_gradient(low="white", high="#fc8d62", na.value = "white")
g <- g + labs(title="Covariate Sets ", x=element_blank(), y="Cognitive Measures")
g <- g + theme1
g <- g + theme(axis.text.y = element_text(hjust=1, angle=0),
               axis.text.x = element_text(hjust=1, angle=90, size=9),
               legend.position="top")
g


## @knitr 3_graph_subgroup
d <- ds %>% dplyr::count(cognitive_measure, subgroup)
g <- ggplot2::ggplot(d, aes(x=subgroup, y=cognitive_measure, fill=n))
g <- g + geom_tile()
g <- g + geom_text(aes(label=n), size=baseSize-6)
g <- g + scale_y_discrete(limits=rev(unique(d$cognitive_measure)))
g <- g + scale_fill_gradient(low="white", high="#66c2a5", na.value = "white")
g <- g + labs(title="Sex ", x=element_blank(), y="Cognitive Measures")
g <- g + theme1
g <- g + theme(axis.text.y = element_text(hjust=1, angle=0),
               axis.text.x = element_text(hjust=1, angle=90, size=9),
               legend.position="top")
g


## @knitr dummy

#
ds %>% dplyr::count(cognitive_measure, physical_measure, study_name, model_type, subgroup)


## @knitr dashboard_tile_graph
source("./reports/model_space/scripts/tile_model_5D.R")
quadrotile_graph(ds)


