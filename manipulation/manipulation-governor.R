# This script executes all manipulation scripts and walks you through data provisioniing chain.

source("./manipulation/0-ellis-island.R")
# Ellis Island
knitr::stitch_rmd(
  script="./manipulation/0-ellis-island.R",
  output="./manipulation/stitched-output/0-ellis-island.md"
)

# Rename, classify, and organized model outputs
knitr::stitch_rmd(
  script="./manipulation/1-rename-classify.R",
  output="./manipulation/stitched-output/1-rename-classify.md"
)
#

# apply custom tranformations
source("./manipulation/2-transformations-compute-ci.R")

# Visualize the outcome space for cognitive measure
rmarkdown::render(input = "./reports/outcome-space/outcome-space.Rmd" ,
                  output_format="html_document", clean=TRUE)

# Inspect the model outputs after parsing and organizing
rmarkdown::render(input = "./sandbox/inspect-extracted-results/inspect-extracted-raw.Rmd" ,
                  output_format="html_document", clean=TRUE)

