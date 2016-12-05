# This script executes all manipulation scripts and walks you through data provisioniing chain.

#
base::source("./manipulation/0-ellis-island-phys-cog.R")
base::source("./manipulation/1-rename-classify-phys-cog.R")
base::source("./manipulation/2-augment-phys-cog.R")
base::source("./manipulation/3-distill-spread.R")



# source("./manipulation/0-ellis-island.R")
# Ellis Island
knitr::stitch_rmd(
  script="./manipulation/0-ellis-island.R",
  output="./manipulation/stitched-output/0-ellis-island.md"
)

# Rename, classify, correct the spelling of processes, organize them into domains
knitr::stitch_rmd(
  script="./manipulation/1-rename-classify.R",
  output="./manipulation/stitched-output/1-rename-classify.md"
)
#

# Compute CI for the correlations using Fisher's transform
knitr::stitch_rmd(
  script="./manipulation/2-compute-bisr-ci.R",
  output="./manipulation/stitched-output/2-compute-bisr-ci.md"
)


