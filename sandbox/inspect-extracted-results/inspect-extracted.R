rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

# ---- load-sources ------------------------------------------------------------
#Load any source files that contain/define functions, but that don't load any other types of variables
#   into memory.  Avoid side effects and don't pollute the global environment.
# source("./SomethingSomething.R")

# ---- load-packages -----------------------------------------------------------
library(ggplot2) #For graphing
library(magrittr) #Pipes
requireNamespace("knitr")
requireNamespace("scales") #For formating values in graphs
requireNamespace("dplyr")
requireNamespace("DT")
# requireNamespace("RColorBrewer")
# requireNamespace("plyr")
# requireNamespace("reshape2") #For converting wide to long
# requireNamespace("mgcv, quietly=TRUE) #For the Generalized Additive Model that smooths the longitudinal graphs.

# ---- declare-globals ---------------------------------------------------------
options(show.signif.stars=F) #Turn off the annotations on p-values
path_input <- "./data/shared/results-physical-cognitive.csv"



# ---- load-data ---------------------------------------------------------------
ds <- read.csv(path_input, header=T, stringsAsFactors = F) # 'ds' stands for 'datasets'

# ---- tweak-data --------------------------------------------------------------
#

# ---- nl_function -----------------------------------------------------------
# Create function that inspects names and labels
names.labels <- function(ds){
  # ds <- dsDemo
  nl <- data.frame(matrix(NA, nrow=ncol(ds), ncol=2))
  names(nl) <- c("name","label")
  for (i in seq_along(names(ds))){
    nl[i,"name"] <- names(ds[i])
    if(is.null(attr(ds[[i]], "label")) ){
      nl[i,"label"] <- NA}else{
        nl[i,"label"] <- attr(ds[[i]], "label")
      }
  }
  return(nl)
}
#(nl <- names.labels(ds))

# ---- load_varnames ---------------------------------------------------------
(nl <- names.labels(ds)) # nl for (n)ame and (l)ables

write.csv(nl, file="./data-unshared/raw/map/nl_raw.csv")


# ---- basic-view --------------------------------------------------------------
ds %>% dplyr::group_by_("study_name","model_number","subgroup","model_type","physical_measure", "cognitive_measure") %>%
  dplyr::mutate(counts = n()) %>% dplyr::ungroup() %>%
  dplyr::select_("study_name","model_number","subgroup","model_type",
                      "physical_measure", "cognitive_measure", "counts", "output_file") %>%
  DT::datatable(class = 'cell-border stripe',
              caption = "spotting duplicates",
              filter = "top", options = list(pageLength = 6, autoWidth = TRUE))


# ---- reproduce ---------------------------------------
rmarkdown::render(input = "./sandbox/inspect-extracted-results/inspect-extracted.Rmd" ,
                  output_format="html_document", clean=TRUE)
