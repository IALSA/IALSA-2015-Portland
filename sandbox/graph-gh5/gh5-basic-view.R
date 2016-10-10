
library("MplusAutomation")
library("IalsaSynthesis")
library(magrittr)
# load functions to process mplus objects
source("http://www.statmodel.com/mplus-R/mplus.R") # load

catalog <- readr::read_csv("./data/shared/covariance-issue/studies/2-parsed-results-ci.csv")

# ---- function-to-collect-gh5-paths -----------------------------------
get_gh5_path <- function(catalog,study_name,subgroup,model_type,process_a,process_b){
  path_out <- catalog %>%
    # dplyr::filter(   study_name == "elsa" &
    #                    subgroup   == "female" &
    #                    model_type == "aehplus" &
    #                    process_a  == "fev" &
    #                    process_b  == "gait") %>%
    dplyr::filter( study_name == study_name &
                   subgroup   == subgroup &
                   model_type == model_type &
                   process_a  == process_a &
                   process_b  == process_b) %>%
    dplyr::select(file_path) %>% as.data.frame()
  testit::assert("ERROR: more than one model present", sum(duplicated(path_out$file_path))==0L)
  path_out <- as.character(path_out[1,"file_path"])
  (path_gh5 <- gsub(".out",".gh5", path_out))
  return(path_gh5)
}

path_gh5 <- get_gh5_path(catalog, "octo", "female", "aehplus", "grip", "gait")

# view options: https://www.statmodel.com/mplus-R/GH5_R.shtml

  mplus.list.variables(path_gh5) # variables in the gh5 file
  mplus.view.plots(path_gh5)  # available graphs for this type of gh5 file
  # histograms
  mplus.plot.histogram(path_gh5, "SP") # slope physical
  mplus.plot.histogram(path_gh5, "SC") # slope cognitive
  # scatterplots
  mplus.plot.scatterplot(path_gh5, "IP", "IC") # intercepts
  mplus.plot.scatterplot(path_gh5, "SP", "SC") # slopes
  mplus.plot.scatterplot(path_gh5, "IP", "SP") # physical
  mplus.plot.scatterplot(path_gh5, "IC", "SC") # cognitive

  ds <- mplus.get.data(path_gh5, "SP")

  summary(ds)
