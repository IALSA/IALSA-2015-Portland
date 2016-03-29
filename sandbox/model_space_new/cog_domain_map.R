## @knitr dummy
############## Developing the tile graph #######################

# ---- load_sources -----------------------------------------------


# ---- load_packages -----------------------------------------------
library(shiny)
library(ggplot2)
library(dplyr)
library(lattice)
library(grid)
# ---- declare-globals -------------------------------------------------
# cog_domain_order <- c("knowledge","language","fluency",
#                       "memory","workmemory","executive f",
#                       "speed","mental status",
#                       "perception", "verbal reasoning")

cog_domain_order <- c("memory","workmemory","fluency",
                      "knowledge","language","perception",
                      "mental status", "fluid reasoning",
                      "speed", "executive f")

# ----- load_data --------------------------------------------------
## if-else conditions for Shiny production
## "b" in "dsb" is for BASIC

dsb <- readRDS("./data/shared/parsed-results.rds")

# ds <- dsb[ , c("study_name","model_number", "subgroup", "model_type",
               # "physical_construct", "cognitive_domain",
               # "process_a", "process_b", "converged","mistrust")]

dsb %>% dplyr::glimpse()
# ----- tweak_data --------------------------------------------------

ds <- dsb %>%
  dplyr::select_("study_name","model_number", "subgroup", "model_type",
                 "process_a_domain", "process_b_domain",
                 "process_a", "process_b","mistrust") %>%
  dplyr::mutate(
    cognitive_domain = ordered(process_b_domain, levels=cog_domain_order)
  )
ds %>% dplyr::glimpse()

# str(ds$cognitive_domain)

a <- ds %>%
  dplyr::group_by_("cognitive_domain","process_b") %>%
  dplyr::summarize(count=n()) %>%
  dplyr::ungroup()

cog_measures_sorted_domain <- a$process_b

# ds[ds$process_a=="nophys"] <- NULL
# ds[ds$process_b=="nocog"] <- NULL
## trim to make more managable
# keepvar <- c("model_number","study_name","subgroup", "model_type","physical_construct","cognitive_domain","process_a","process_b", "output_file", "converged")
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


## Define color palette and display labels
x_name_colors <- c("process_a"="#e78ac3",
                   "study_name"="#8da0cb",
                   "model_type"="#fc8d62",
                   "subgroup"="#66c2a5")
x_name_labels <- c("process_a"="Physical Measure",
                   "study_name"="Study",
                   "model_type"="Covariates",
                   "subgroup"="Subgroup")

# domain_colors <- c("knowledge"='coral3', # green
#                    "language"="aquamarine3", # blueish-green
#                    "fluency"="cadetblue", # greenish-blue # cyan4 , darkcyan
#                    "memory"="cornflowerblue", # blue
#                    "workmemory"="blueviolet", # reddish-blue
#                    "executive"="darkmagenta", # purple
#                    "vsreasoning"="darkred", # blueish-red
#                    "speed"="darkorange2", # organge
#                    "mental"="azure3" # grey
# )

domain_colors <- c("knowledge"='coral3', # green
                   "language"="aquamarine3", # blueish-green
                   "fluency"="cadetblue", # greenish-blue # cyan4 , darkcyan
                   "memory"="cornflowerblue", # blue
                   "workmemory"="blueviolet", # reddish-blue
                   "executive f"="darkmagenta", # purple
                   "fluid reasoning"="darkred", # blueish-red
                   "speed"="darkorange2", # organge
                   "mental status"="azure3", # grey
                   "perception" = "white"

)




# ------ define_graph_functions ----------------------

# head(dsb)

domain_map <- function(ds, labels){
  # define the data

  d <- ds %>%
    dplyr::count_(c("process_b", "cognitive_domain","study_name"))
  d$dummy <- factor("dummy")
  d$cog_meas <- stringr::str_sub(d$process_b,1,3)
  d$cog_measure_display <-paste0(stringr::str_sub(d$process_b,1,6),
                                 ", ",d$n)

  # d <- d[order(d$cognitive_domain), ]
  dd <- dplyr::select_(d, "process_b", "cognitive_domain") %>%
    group_by_("cognitive_domain") %>%
    dplyr::summarize(count=n())


  # d
  # str(d)
  #
  g <- ggplot2::ggplot(d, aes_string(x="dummy",
                                     y="process_b",
                                     label="cog_measure_display",
                                     fill="cognitive_domain"))
  g <- g + geom_tile()
  g <- g + geom_text(size = baseSize-7, hjust=.4)
  g <- g + facet_grid(. ~ study_name )
  # g <- g + coord_flip()
  # g <- g + scale_y_discrete(name = "Cognitive measures", limits=rev(unique(d$process_b)))
  g <- g + scale_y_discrete(name = "Cognitive measures", limits=rev(cog_measures_sorted_domain))
  # g <- g + scale_fill_discrete(name = "Domains")
  g <- g + scale_fill_manual(values=domain_colors, name = "Domains")
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
# domain_map(ds)
# a <- domain_map(dsb)

#---- reproduce ---------------------------------------
rmarkdown::render(input = "./sandbox/model_space_new/Cog-Domain-Map.Rmd" ,
                  output_format="html_document", clean=TRUE)
