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

cog_domain_order <- c(
                      "knowledge",
                      "language",
                      "fluency",
                      "memory",
                      "workmemory",
                      "executive f",
                      "fluid reasoning",
                      "speed",
                      "mental status",
                       "perception"
                       )

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
                 "process_a", "process_b", "process_b_cell", "process_b_row", "process_b_domain") %>%
  dplyr::mutate(
    cognitive_domain = ordered(process_b_domain, levels=cog_domain_order)
  )
ds %>% dplyr::glimpse()

# str(ds$cognitive_domain)



# ds[ds$process_a=="nophys"] <- NULL
# ds[ds$process_b=="nocog"] <- NULL
## trim to make more managable
# keepvar <- c("model_number","study_name","subgroup", "model_type","physical_construct","cognitive_domain","process_a","process_b", "output_file", "converged")
# ds <- dsb[ , keepvar]
# dplyr::tbl_df(ds)


# ----- define_themes ------------------------------------------------
## define common graphical theme for all graphs
baseSize <- 10
theme1 <- ggplot2::theme_light(base_size=baseSize) +
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

# domain_colors_fill <- c("knowledge"='coral3', # green
#                    "language"="aquamarine3", # blueish-green
#                    "fluency"="cadetblue", # greenish-blue # cyan4 , darkcyan
#                    "memory"="cornflowerblue", # blue
#                    "workmemory"="blueviolet", # reddish-blue
#                    "executive"="darkmagenta", # purple
#                    "vsreasoning"="darkred", # blueish-red
#                    "speed"="darkorange2", # organge
#                    "mental"="azure3" # grey
# )

domain_colors_fill <- c(
  "knowledge"        = 'coral3', # green
  "language"         = "aquamarine3", # blueish-green
  "fluency"          = "cadetblue", # greenish-blue # cyan4 , darkcyan
  "memory"           = "cornflowerblue", # blue
  "workmemory"       = "blueviolet", # reddish-blue
  "executive f"      = "darkmagenta", # purple
  "fluid reasoning"  = "darkred", # blueish-red
  "speed"            = "darkorange2", # organge
  "mental status"    = "azure3", # grey
  "perception"       = "pink"
)


# sqrt(red*red*.241 + green*green*.691 + blue*blue*.068)
#http://www.nbdtech.com/Blog/archive/2008/04/27/Calculating-the-Perceived-Brightness-of-a-Color.aspx
domain_colors_text <- as.data.frame(t(col2rgb(domain_colors_fill))) %>%
  dplyr::mutate(
    brightness = sqrt(red*red*.241 + green*green*.691 + blue*blue*.068),
    color      = ifelse(brightness>130, "gray2", "gray98")
  ) %>%
  dplyr::select(color) %>%
  unlist()
names(domain_colors_text) <- names(domain_colors_fill)


# ------ define_graph_functions ----------------------


domain_map <- function(ds){
  a <- ds %>%
    dplyr::group_by_("cognitive_domain","process_b_row") %>%
    dplyr::summarize(count=n()) %>%
    dplyr::ungroup()

  cog_measures_sorted_domain <- a$process_b_row
  cog_measures_sorted_domain <- cog_measures_sorted_domain[!is.na(cog_measures_sorted_domain)]

  d <- ds %>%
    # dplyr::count_(c("process_b", "cognitive_domain","study_name"))
  dplyr::count_(c("process_b_cell","process_b_row", "cognitive_domain","study_name"))
  # dplyr::count_(c("process_b_row", "cognitive_domain","study_name"))
    # dplyr::count_(c("process_b_cell", "cognitive_domain","study_name"))

  d$dummy <- factor("dummy")
  # d$cog_measure_display <-paste0(stringr::str_sub(d$process_b,1,6), ", ",d$n)
  # d$cog_measure_display <-paste0(stringr::str_sub(d$process_b_row,1,6), ", ",d$n)
  d$cog_measure_display <-paste0(d$process_b_cell,", ",d$n)
  # d$cog_measure_display <-d$process_b_cell

  # d <- d[order(d$cognitive_domain), ]
  # dd <- dplyr::select_(d, "process_b_cell","process_b_row", "cognitive_domain") %>%
  #   group_by_("cognitive_domain") %>%
  #   dplyr::summarize(count=n()) %>%
  #   dplyr::ungroup()

  g <- ggplot2::ggplot(d, aes_string(x="dummy",
                                     y="process_b_row",
                                     label="cog_measure_display",
                                     fill="cognitive_domain",
                          color="cognitive_domain"))
  g <- g + geom_tile(color="gray70")
  g <- g + geom_text(size = baseSize-7, hjust=.4)
  g <- g + facet_grid(. ~ study_name )
  # g <- g + coord_flip()
  # g <- g + scale_y_discrete(name = "Cognitive measures", limits=rev(unique(d$process_b)))
  g <- g + scale_y_discrete(limits=rev(cog_measures_sorted_domain))
  g <- g + scale_color_manual(values=domain_colors_text)
  g <- g + scale_fill_manual(values=domain_colors_fill)
  g <- g + theme1
  g <- g + theme(
    axis.text.x =  element_blank(),
    panel.grid.major.x  =  element_blank(),
    # panel.grid.major.y  =  element_blank(),
    legend.position="left"
  )
  g <- g + guides(color=FALSE)
  g <- g + labs(title=NULL, x=NULL, y="Cognitive measures", fill="Domains")
  return(g)
}
# domain_map(ds)
# a <- domain_map(dsb)

#---- reproduce ---------------------------------------
rmarkdown::render(input = "./reports/outcome-space/outcome-space.Rmd" ,
                  output_format="html_document", clean=TRUE)
