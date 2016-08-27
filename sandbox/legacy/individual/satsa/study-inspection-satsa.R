#These first few lines run only when the file is run in RStudio, !!NOT when an Rmd/Rnw file calls it!!
rm(list=ls(all=TRUE))  #Clear the variables from previous runs.

# ---- load_sources ------------------------------------------------------------
# Call `base::source()` on any repo file that defines functions needed below.  Ideally, no real operations are performed.

# ---- load_packages -----------------------------------------------------------
# Attach these packages so their functions don't need to be qualified: http://r-pkgs.had.co.nz/namespace.html#search-path
library(magrittr) #Pipes

# Verify these packages are available on the machine, but their functions need to be qualified: http://r-pkgs.had.co.nz/namespace.html#search-path
requireNamespace("ggplot2")
requireNamespace("dplyr") #Avoid attaching dplyr, b/c its function names conflict with a lot of packages (esp base, stats, and plyr).
requireNamespace("testit")
# requireNamespace("plyr")

# ---- declare_globals ---------------------------------------------------------
# path_input  <- "./data-phi-free/raw/results-physical-cognitive.csv"
path_input  <- "./data/shared/results-satsa.csv"
path_output <- "./data/shared/results-satsa.rds"
# figure_path <- 'manipulation/stitched-output/rename-classify/'


# ---- load_data ---------------------------------------------------------------
ds0 <- read.csv(path_input, stringsAsFactors=FALSE)

# ---- tweak_data --------------------------------------------------------------
colnames(ds0)

ds <- ds0 %>% dplyr::arrange_("cognitive_measure")


# ---- spell_model_number ------------------------------------------------------
t <- table(ds$model_number, ds$study_name);t[t==0]<-".";t


# ---- spell_subgroup ---------------------------------------------------------
t <- table(ds$subgroup, ds$study_name);t[t==0]<-".";t



# ---- spell_model_type -------------------------------------------------------
t <- table(ds$model_type, ds$study_name);t[t==0]<-".";t

## @knitr correct_model_type
ds[ds$model_type %in% c("aheplus", "aeplus") ,"model_type"] <- "aehplus"
ds[ds$model_type=="age","model_type"] <- "a" # rename for sorting/consistency purposes
ds[ds$model_type=="empty","model_type"] <- "0"
t <- table(ds$model_type, ds$study_name);t[t==0]<-".";t

# ---- spell_physical_measure -------------------------------------------------
t <- table(ds$physical_measure, ds$study_name);t[t==0]<-".";t


# ---- correct_physical_measure ------------------------------------------------
# rename obvious typos
ds[ds$physical_measure %in% c("fevc", "fev1", "fvc", "fev100") ,"physical_measure"] <- "fev"
## iN ILSE, look up philipp about tug
ds[(ds$physical_measure == "nophysspec" | ds$physical_measure == "nophyscog")  & ds$physical_construct == "tug","physical_measure"] <- "tug"
t <- table(ds$physical_measure, ds$study_name);t[t==0]<-".";t

# rename the absense of physical measure
ds[ds$physical_measure %in% c("nophysspec","nophsyspec","nophyscog", "nophyspec", "nophyssec" ), "physical_measure"] <- "univar"
# collapse a category
ds[ds$physical_measure == "hand","physical_measure"] <- "grip"
# rename suspected misspelling
ds[ds$physical_measure %in% c("peak"),"physical_measure"] <- "pef"
ds[ds$physical_measure %in% c("pumonary","pulomnary"),"physical_measure"] <- "pulmonary"

# inspect new names
t <- table(ds$physical_measure, ds$study_name);t[t==0]<-".";t



## @knitr spell_cognitive_measure
t <- table(ds$cognitive_measure, ds$study_name);t[t==0]<-".";t
d <- ds %>% dplyr::group_by_("cognitive_measure") %>% summarize(count=n())
kable(d)






















