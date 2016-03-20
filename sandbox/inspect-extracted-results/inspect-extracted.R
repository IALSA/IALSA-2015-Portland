rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

# ---- load-sources ------------------------------------------------------------
#Load any source files that contain/define functions, but that don't load any other types of variables
#   into memory.  Avoid side effects and don't pollute the global environment.
source("./scripts/mplus/group-variables.R")

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

# ---- prep-for-basic-view --------------------------------------------------
# subset variables
stem_vars <- c("study_name","model_number","subgroup","model_type","physical_measure", "cognitive_measure")
core_vars <-  c(
  # physical intercept / average initial status of physical outcome
  p_GAMMA_00,
  # physical slope / average rate of change of physical outcome
  p_GAMMA_10 ,
  # cognitive slope / average rate of change of cognitive outcome
  c_GAMMA_10 ,
  # cognitive intercept /  average initial status of cognitive outcome
  c_GAMMA_00 ,

  # correlation b/w physical SLOPE  and cognitive SLOPE
  R_SPSC ,
  # correlation b/w physical RESIDUAL and cogntive RESIDUAL
  R_RES_PC ,
  # correlation b/w physical INTERCEPT  and cognitive INTERCEPT
  R_IPIC,

  # variance of the physical intercept
  pp_TAU_00 ,
  # variance of the physical slope
  pp_TAU_11 ,
  # variance of the cognitive slope
  cc_TAU_11 ,
  # variance of the cognitive intercept
  cc_TAU_00
)
core_vars_heads <- c("p_GAMMA_00", "p_GAMMA_10", "c_GAMMA_10", "c_GAMMA_00",
                     "R_SPSC", "R_RES_PC", "R_IPIC",
                     "pp_TAU_00", "pp_TAU_11", "cc_TAU_11","cc_TAU_00")
subset_variables <- c(stem_vars, core_vars)
d <- ds[,subset_variables]
# first melt with respect to the index type

dlong <- data.table::melt(data = d, id.vars = stem_vars,  measure.vars = core_vars)
dlong <- dlong %>% dplyr::arrange_("study_name","model_number","subgroup","model_type",
                                   "physical_measure", "cognitive_measure")
head(dlong)
dlong$variable <- as.character(dlong$variable)
# dlong <- dlong %>% tidyr::separate(col = variable, into = c("process", "term", "components", "index"), sep ="_", remove = F)
set.seed(42)
(rs <- sample(seq_along(dlong$variable), 100))
(dlong <- dlong[rs, ])
for(i in seq_along(dlong$variable)){
  (subject <- strsplit(dlong[i,"variable"], split = "_")[[1]])
  (last_element <- length(subject))
  dlong[i,"index"]  <- subject[last_element]
  # dlong[i,"variable"] <- gsub(pattern="_est$ | _se$ | _wald$ | _pval$", replacement = "", x = dw[i,"variable"])
  dlong[i,"variable"] <- gsub(pattern="_est|_se|_wald|_pval", replacement = "", x = dlong[i,"variable"])
}
head(dlong)
dwide <- data.table::dcast(data.table::setDT(dlong),  study_name + model_number + subgroup +
                           model_type + physical_measure + cognitive_measure + index ~ variable,
                         value.var = "value")
# dww <- as.data.frame(dww)
# stem_vars
names(dwide)
d <- dwide %>% dplyr::select_("study_name","model_number","subgroup","model_type",
                            "physical_measure", "cognitive_measure", "index",
                            "p_GAMMA_00", "p_GAMMA_10", "c_GAMMA_10", "c_GAMMA_00",
                            "R_SPSC", "R_RES_PC", "R_IPIC",
                            "pp_TAU_00", "pp_TAU_11", "cc_TAU_11","cc_TAU_00")

# d <- dww[ , c(stem_vars,"index", core_vars_heads)]



# ---- basic-view --------------------------------------------------------------
# ds %>% dplyr::group_by_("study_name","model_number","subgroup","model_type","physical_measure", "cognitive_measure") %>%
#   dplyr::mutate(counts = n()) %>% dplyr::ungroup() %>%
#   dplyr::select_("study_name","model_number","subgroup","model_type",
#                       "physical_measure", "cognitive_measure", "counts") %>%
d %>%  DT::datatable(class = 'cell-border stripe',
              caption = "spotting duplicates",
              filter = "top", options = list(pageLength = 6, autoWidth = TRUE))


# ---- reproduce ---------------------------------------
rmarkdown::render(input = "./sandbox/inspect-extracted-results/inspect-extracted.Rmd" ,
                  output_format="html_document", clean=TRUE)
