rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

# ---- load-sources ------------------------------------------------------------
#Load any source files that contain/define functions, but that don't load any other types of variables
#   into memory.  Avoid side effects and don't pollute the global environment.
source("./scripts/mplus/group-variables.R")
# source("./scripts/mplus/collect-results.R")
source("./scripts/common-functions.R")
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
# path_input <- "./data/shared/parsed-results.csv"
path_input <- "./data/shared/parsed-results-raw.csv"
# path_input <- "./data/shared/parsed-results-raw.rds"

# ---- load-data ---------------------------------------------------------------
ds <- read.csv(path_input, header=T, stringsAsFactors = F) # 'ds' stands for 'datasets'
# ds <- readRDS(path_input)
# ---- tweak-data --------------------------------------------------------------


# ---- load_varnames ---------------------------------------------------------
(nl <- names_labels(ds)) # nl for (n)ame and (l)ables


# ---- prep-for-basic-view --------------------------------------------------
# subset variables
stem_vars <- c("study_name","model_number","subgroup","model_type","process_a", "process_b")
core_vars <-  c(
  # covariance btw physical intercept and cognitive intercept
  ab_TAU_00,
  # covariance btw physical slope and cognitive slope
  ab_TAU_11,

  # physical intercept / average initial status of physical outcome
  a_GAMMA_00,
  # physical slope / average rate of change of physical outcome
  a_GAMMA_10 ,
  # cognitive slope / average rate of change of cognitive outcome
  b_GAMMA_10 ,
  # cognitive intercept /  average initial status of cognitive outcome
  b_GAMMA_00 ,

  # correlation b/w physical SLOPE  and cognitive SLOPE
  R_SASB ,
  # correlation b/w physical RESIDUAL and cogntive RESIDUAL
  R_RES_AB ,
  # correlation b/w physical INTERCEPT  and cognitive INTERCEPT
  R_IAIB,

  # variance of the physical intercept
  aa_TAU_00 ,
  # variance of the physical slope
  aa_TAU_11 ,
  # variance of the cognitive slope
  bb_TAU_11 ,
  # variance of the cognitive intercept
  bb_TAU_00,

  # variance of physical residual
  a_SIGMA ,
  # covariance btw physcial residual and cogntive residual
  ab_SIGMA,
  # variance of cognitive residual
  b_SIGMA

)
core_vars_heads <- c("ab_TAU_00", "ab_TAU_11",
                     "a_GAMMA_00", "a_GAMMA_10", "b_GAMMA_10", "b_GAMMA_00",
                     "R_SASB", "R_RES_AB", "R_IAIB",
                     "aa_TAU_00", "aa_TAU_11", "bb_TAU_11","bb_TAU_00",
                     "a_SIGMA", "ab_SIGMA", "b_SIGMA")
subset_variables <- c(stem_vars, core_vars)
d <- ds[,subset_variables]
# first melt with respect to the index type

dlong <- data.table::melt(data = d, id.vars = stem_vars,  measure.vars = core_vars)
dlong <- dlong %>% dplyr::arrange_("study_name","model_number","subgroup","model_type",
                                   "process_a", "process_b")
# head(dlong)
dlong$variable <- as.character(dlong$variable)
# dlong <- dlong %>% tidyr::separate(col = variable, into = c("process", "term", "components", "index"), sep ="_", remove = F)
# set.seed(42)
# (rs <- sample(seq_along(dlong$variable), 100))
# (dlong <- dlong[rs, ])
for(i in seq_along(dlong$variable)){
  (subject <- strsplit(dlong[i,"variable"], split = "_")[[1]])
  (last_element <- length(subject))
  dlong[i,"index"]  <- subject[last_element]
  # dlong[i,"variable"] <- gsub(pattern="_est$ | _se$ | _wald$ | _pval$", replacement = "", x = dw[i,"variable"])
  dlong[i,"variable"] <- gsub(pattern="_est|_se|_wald|_pval", replacement = "", x = dlong[i,"variable"])
}
# head(dlong)
str(dlong); table(dlong$index, useNA = "always")
# ds <- dlong[1:1000,]
dwide <- data.table::dcast(data.table::setDT(ds),
  study_name + model_number + subgroup + model_type +
    process_a + process_b + index ~ variable, value.var = "value")

# # modify data object for reports
# attr(dwide$p_GAMMA_00, "label") <- "intercept of (A) "
# attr(dwide$p_GAMMA_10, "label") <- "slope of (A)"
# attr(dwide$c_GAMMA_10, "label") <- "slope of (B)"
# attr(dwide$c_GAMMA_00, "label") <- "intercept of (B)"
# attr(dwide$R_SPSC, "label") <- "cor (SLOPEs)(AB)"
# attr(dwide$R_RES_PC, "label") <- "cor (RESID)(AB)"
# attr(dwide$R_IPIC, "label") <- "cor (INTs)(AB)"
# attr(dwide$pp_TAU_00, "label") <- "intercept of (A)"
# attr(dwide$pp_TAU_11, "label") <- "slope of (A)"
# attr(dwide$cc_TAU_11, "label") <- "slope of (B)"
# attr(dwide$cc_TAU_00, "label") <- "intercept of (B"
# attr(dwide$pc_TAU_00, "label") <- "cov (INTs)(AB)"
# attr(dwide$pc_TAU_11, "label") <- "cov (SLOPEs)(AB)"
#
dwide$study_name <- factor(dwide$study_name)
dwide$model_number <- factor(dwide$model_number)
dwide$subgroup <- factor(dwide$subgroup)
dwide$model_type <- factor(dwide$model_type)
dwide$process_a <- factor(dwide$process_a)
# dwide$process_b <- factor(dwide$process_b)
dwide$index <- factor(dwide$index)


# dww <- as.data.frame(dww)
# stem_vars
# names(dwide)

d <- dwide %>% dplyr::select_("study_name","model_number","subgroup","model_type",
                            "process_a", "process_b", "index",
                             "R_IAIB", "R_SASB",
                            "a_GAMMA_00", "a_GAMMA_10", "b_GAMMA_10", "b_GAMMA_00",
                            "ab_TAU_00","ab_TAU_11",
                            "aa_TAU_00", "aa_TAU_11", "bb_TAU_11","bb_TAU_00",
                            "R_RES_AB", "a_SIGMA", "ab_SIGMA", "b_SIGMA")



# d <- dww[ , c(stem_vars,"index", core_vars_heads)]

## NOTE: change "p_ | c_ " int "point estimate"
## NOTE: change "pp_ | cc_ | pc_" into "variance

# ---- basic-view --------------------------------------------------------------


d %>%  DT::datatable(class = 'cell-border stripe',
              caption = "spotting duplicates",
              filter = "top", options = list(pageLength = 20, autoWidth = TRUE))


# ---- reproduce ---------------------------------------
rmarkdown::render(input = "./sandbox/inspect-extracted-results/inspect-extracted-raw.Rmd" ,
                  output_format="html_document", clean=TRUE)
