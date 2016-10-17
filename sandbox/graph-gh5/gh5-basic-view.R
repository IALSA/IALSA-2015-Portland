
# library("MplusAutomation")
# library("IalsaSynthesis")
library(magrittr)

source("./scripts/mplus/mplus.R") # downloaded from http://www.statmodel.com/mplus-R/mplus.R
source("./scripts/graphs/main_theme.R") # pre-sets and options for graphing
source("./sandbox/graph-gh5/gh5-graphing-functions.R")

path_gh5 <- "./data/shared/covariance-issue/annie/studies/octo/physical/b1_female_aehplus_grip_gait.gh5"

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

# ---- level-slope-scatter ------------------

dsL <- get_gh5_data(
  path_gh5 = "./data/shared/covariance-issue/annie/studies/octo/physical/b1_female_aehplus_grip_gait.gh5"
  ,study_name = "octo"
  ,subgroup = "female"
  ,model_type = "aehplus"
  ,process_a = "grip"
  ,process_b = "gait"
)

proto_scatter(dsL, "s_grip", "s_gait")
proto_scatter(dsL, "i_grip", "i_gait")

int_slope(dsL)

