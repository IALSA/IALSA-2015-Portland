# ----- dummy -----------------------------------------------------
############## Developing the tile graph #######################

# ---- load_sources -----------------------------------------------


# ---- load_packages -----------------------------------------------
library(shiny)
library(ggplot2)
library(dplyr)
library(lattice)
library(grid)
library(extrafont)

# ----- load_data --------------------------------------------------
## if-else conditions for Shiny production
## "b" in "dsb" is for BASIC

# if(basename(getwd())=="dashboard"){
#   dsb <- readRDS('../../data/shared/ds2.rds')
#   source("../../shiny/dashboard/scripts/multiplot_function.R")
# }else{
#   dsb <- readRDS('./data/shared/ds2.rds')
#   source("./shiny/dashboard/scripts/multiplot_function.R")
# }

dsb <- readRDS("./data/shared/ds2.rds")

ds <- dsb[ , c("study_name","model_number", "subgroup", "model_type",
            "physical_construct", "cognitive_construct",
            "physical_measure", "cognitive_measure", "converged","mistrust")]

cog_domain_order <- c("knowledge","language","fluency",
                      "memory","workmemory","executive",
                      "vsreasoning","speed","mental")

ds$cognitive_construct <- ordered(ds$cognitive_construct, levels=cog_domain_order)

str(ds$cognitive_construct)

a <- ds %>% dplyr::group_by_("cognitive_construct","cognitive_measure") %>% summarize(count=n())
a$cognitive_construct <- ordered(a$cognitive_construct, levels=cog_domain_order)
cog_measures_sorted_domain <- a$cognitive_measure

# ds[ds$physical_measure=="nophys"] <- NULL
# ds[ds$cognitive_measure=="nocog"] <- NULL
#

# ----- tweak_data --------------------------------------------------
## trim to make more managable
# keepvar <- c("model_number","study_name","subgroup", "model_type","physical_construct","cognitive_construct","physical_measure","cognitive_measure", "output_file", "converged")
# ds <- dsb[ , keepvar]
# dplyr::tbl_df(ds)


# ----- define_themes ------------------------------------------------
## define common graphical theme for all graphs
baseSize <- 10
theme1 <- ggplot2::theme_bw(base_size=baseSize) +
  ggplot2::theme(title=ggplot2::element_text(colour="gray20",size = baseSize+1)) +
  ggplot2::theme(axis.text=ggplot2::element_text(colour="gray40", size=baseSize-2)) +
  ggplot2::theme(axis.title=ggplot2::element_text(colour="gray40")) +
  ggplot2::theme(panel.border = ggplot2::element_rect(colour="gray80")) +
  ggplot2::theme(axis.ticks.length = grid::unit(0, "cm")) +
  ggplot2::theme(text = element_text(size =baseSize+7))
#   ggplot2::theme(panel.grid.major.x = element_blank())
#   ggplot2::theme(panel.grid.major.y = element_blank())
#   ggplot2::theme(panel.grid.minor.x = element_blank())
#   ggplot2::theme(panel.grid.minor.y = element_blank())
ggplot2::theme(strip.text.x = element_text(angle = 0, size=baseSize-3, color="black"))

## @knitr declare_globals
## Define color palette and display labels
x_name_colors <- c("physical_measure"="#e78ac3",
                   "study_name"="#8da0cb",
                   "model_type"="#fc8d62",
                   "subgroup"="#66c2a5")
x_name_labels <- c("physical_measure"="Physical Measure",
                   "study_name"="Study",
                   "model_type"="Covariates",
                   "subgroup"="Subgroup")

# domain_colors <- c("knowledge"='chartreuse3', # green
#                    "language"="aquamarine3", # blueish-green
#                    "fluency"="cadetblue", # greenish-blue # cyan4 , darkcyan
#                    "memory"="cornflowerblue", # blue
#                    "workmemory"="blueviolet", # reddish-blue
#                    "executive"="darkmagenta", # purple
#                    "vsreasoning"="brown2", # blueish-red
#                    "speed"="darkorange2", # organge
#                    "mental"="azure3" # grey
# )

domain_colors <- c("knowledge"='#a6cee3', # green
                   "language"="#1f78b4", # blueish-green
                   "fluency"="#b2df8a", # greenish-blue # cyan4 , darkcyan
                   "memory"="#33a02c", # blue
                   "workmemory"="#fb9a99", # reddish-blue
                   "executive"="#e31a1c", # purple
                   "vsreasoning"="#fdbf6f", # blueish-red
                   "speed"="#ff7f00", # organge
                   "mental"="#cab2d6" # grey
)


# ------ define_graph_functions ----------------------

head(dsb)

domain_map <- function(ds, labels){
  # define the data

  d <- ds %>%
    dplyr::count_(c("cognitive_measure", "cognitive_construct","study_name"))
  d$dummy <- factor("dummy")
  d$cog_meas <- stringr::str_sub(d$cognitive_measure,1,3)
  d$cog_measure_display <-paste0(stringr::str_sub(d$cognitive_measure,1,6),
                                 ", ",d$n)

  # d <- d[order(d$cognitive_construct), ]
  dd <- dplyr::select_(d, "cognitive_measure", "cognitive_construct") %>%
    group_by_("cognitive_construct") %>%
    dplyr::summarize(count=n())


  # d
  # str(d)
  #
  g <- ggplot2::ggplot(d, aes_string(x="dummy",
                                     y="cognitive_measure",
                                     label="cog_measure_display",
                                     fill="cognitive_construct"))
  g <- g + geom_tile()
  g <- g + geom_text(size = baseSize-7, hjust=.4)
  g <- g + facet_grid(. ~ study_name )
  # g <- g + coord_flip()
  # g <- g + scale_y_discrete(name = "Cognitive measures", limits=rev(unique(d$cognitive_measure)))
  g <- g + scale_y_discrete(name = "Cognitive measures", limits=rev(cog_measures_sorted_domain))
  g <- g + scale_fill_manual(name = "Domains", values=domain_colors)
  g <- g + labs(title="Studies")
  g <- g + theme1
  g <- g + theme(axis.text.y =  element_text(size=baseSize-1),
                 axis.text.x =  element_blank(),
                 axis.title.x = element_blank(),
                 axis.title.y = element_text("Cognitive measure"),
                 # legend.title = element_blank(),
                 legend.text =  element_text(),
                 legend.position="left")
  return(g)
}
domain_map(ds)
# a <- domain_map(dsb)

# @knitr reproduce ---------------------------------------
rmarkdown::render(input = "./reports/model_space/Cog-Domain-Map-2.Rmd" ,
                  output_format="html_document", clean=TRUE)
