
rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

# ---- load-sources ------------------------------------------------------------
#Load any source files that contain/define functions, but that don't load any other types of variables
#   into memory.  Avoid side effects and don't pollute the global environment.
# basic lookup function
source("./scripts/model-lookup-function.R")
# load lookup function
source("./scripts/functions-table-assembly.R")

# ---- load-packages -----------------------------------------------------------
library(magrittr) #Pipes
library(ggplot2)
requireNamespace("readr")
requireNamespace("knitr")
requireNamespace("dplyr")
requireNamespace("tidyr")
requireNamespace("DT")
requireNamespace("scales")

# ---- declare-globals ---------------------------------------------------------
options(show.signif.stars=F) #Turn off the annotations on p-values
print_format <- "pandoc"
# print_format <- "html"

# ---- load-data ---------------------------------------------------------------
catalog <- read.csv("./data/shared/pc-2-parsed-results-computed_ci.csv", header = T,  stringsAsFactors=FALSE)
catalog_spread <- readRDS("./data/shared/derived/pc-spread.rds")# physical-cognitive track
# template for structuring tables for reporting individual models
# stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil-v7.csv")
stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil-v6.csv")


# ---- content --------------------


catalog %>% # includes univariate models
  dplyr::distinct(study_name, subgroup, model_type, process_a, process_b) %>%
  nrow()

cat("After cleaning and processing the following number of bivariate models
    constitute the Portland model pool:")
catalog_spread %>% # contains only bivariate models
  dplyr::distinct(study_name, subgroup, model_type, process_a, process_b) %>%
  nrow()

cat("Number of submitted models (bivariate only) in each study")
catalog_spread %>%
  dplyr::distinct(study_name, subgroup, model_type, process_a, process_b) %>%
  dplyr::group_by(study_name) %>%
  dplyr::summarize(n_models = n())



cat("ILSE and NuAge do not have a measure of pulmonary function and
     thus were not included into the meta-analysis ")
catalog_spread %>%
  dplyr::filter(!study_name %in% c("ilse","nuage")) %>%
  dplyr::distinct(study_name, subgroup, model_type, process_a, process_b) %>%
  dplyr::group_by(study_name) %>%
  dplyr::summarize(n_models = n())

cat("Breaking down by the physical process in the outcome pair of bivariate model")
catalog_spread %>%
  dplyr::filter(!study_name %in% c("ilse","nuage")) %>%
  dplyr::distinct(study_name, subgroup, model_type, process_a, process_b) %>%
  dplyr::group_by(study_name, process_a) %>%
  dplyr::summarize(n_models = n())


cat("Focusing on the pulmonary measure")
catalog_spread %>%
  dplyr::filter(!study_name %in% c("ilse","nuage")) %>%
  dplyr::filter(process_a %in% c("pef","fev","fev100")) %>%
  dplyr::distinct(study_name, subgroup, model_type, process_a, process_b) %>%
  dplyr::group_by(study_name, process_a) %>%
  dplyr::summarize(n_models = n())


cat("Two of the studies (ELSA and LASA) submitted only `aehplus` type of models.
    The current scripts require at least two model types and stumble on this assymetry.
    Will be corrected soon.
    ")

catalog_spread %>% view_options(
  study_name="elsa"
  # ,model_types = c("a","aehplus")
  ,processes_a = c("pef","fev", "fev100")
  # ,process_b = "mmse"
  ,full_id  = T
)

catalog_spread %>% view_options(
  study_name="lasa"
  # ,model_types = c("a","aehplus")
  ,processes_a = c("pef","fev", "fev100")
  # ,process_b = "mmse"
  ,full_id  = T
)

cat("Focusing on the pulmonary measure")
a <- catalog_spread %>%
  dplyr::filter(!study_name %in% c("ilse","nuage")) %>%
  dplyr::filter(process_a %in% c("pef","fev","fev100")) %>%
  dplyr::distinct(study_name, subgroup, model_type, process_a, process_b) %>%
  dplyr::group_by(study_name, process_a) %>%
  dplyr::summarize(n_models = n())
print(a)
sum(a$n_models)


# eas --------
catalog_spread %>% view_options(
  study_name="elsa"
  # ,model_types = c("a","aehplus")
  ,processes_a = c("pef","fev", "fev100")
  # ,process_b = "mmse"
  ,full_id  = T
)




