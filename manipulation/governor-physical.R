# This script executes all manipulation scripts and walks you through data provisioniing chain.

# source("./manipulation/0-ellis-island.R")
# Ellis Island
# knitr::stitch_rmd(
#   script="./manipulation/0-ellis-island-phys-phys.R",
#   output="./manipulation/stitched-output/0-ellis-island-phys-phys.md"
# )
base::source("./manipulation/0-ellis-island-phys-phys.R")
base::source("./manipulation/1-rename-classify-pp.R")
base::source("./manipulation/2-compute-bisr-ci-pp.R")



# # Rename, classify, correct the spelling of processes, organize them into domains
# knitr::stitch_rmd(
#   script="./manipulation/1-rename-classify-pp.R",
#   output="./manipulation/stitched-output/1-rename-classify-pp.md"
# )
# #
#
# # Compute CI for the correlations using Fisher's transform
# knitr::stitch_rmd(
#   script="./manipulation/2-compute-bisr-ci-pp.R",
#   output="./manipulation/stitched-output/2-compute-bisr-ci-pp.md"
# )


