# This script defines a general function for graphing outcome space
# The graphing function relies on the data object of the form "catalog",
# produced by the primary data analysis ending with "Compute-CI" script
baseSize <- 10
domain_map_theme <- ggplot2::theme_light(base_size=baseSize) +
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


# define custom order of cognitive domains
cog_domain_order <- c(
  "visual discrimination",

  "perceptual speed",
  "fluency",
  "attention",
  "fluid reasoning",

  "mental status",

  "executive function",
  "working memory",
  "short-term memory",
  "semantic memory",
  "episodic memory",

  "verbal comprehension"
)

# define custom color of cognitive domains
domain_colors_fill <- c(
  "visual discrimination" = "#4d9221", # olive
  "perceptual speed"      = "#e66101", # dark brown
  "fluency"               = "#fdb863", # light brown
  "attention"             = "#ca0020", # dark red
  "mental status"         = "#525252", # grey
  "fluid reasoning"       = "#f4a582", # light red,
  "mental status"         = "#525252", # grey
  "executive function"    = "#018571", # aqua green
  "working memory"        = "#8c6bb1", # mystic purple
  "short-term memory"     = "#92c5de", # light blue
  "semantic memory"       = "#5e3c99", # dart violet
  "episodic memory"       = "#0571b0", # dark blue
  "verbal comprehension"  =  "#b2abd2" # light violet
)

# domain_colors_fill <- c(
#   "visual discrimination" = "#ffffff", # olive
#   "perceptual speed"      = "#ffffff", # dark brown
#   "fluency"               = "#ffffff", # light brown
#   "attention"             = "#ffffff", # dark red
#   "mental status"         = "#ffffff", # grey
#   "fluid reasoning"       = "#ffffff", # light red,
#   "mental status"         = "#ffffff", # grey
#   "executive function"    = "#ffffff", # aqua green
#   "working memory"        = "#8c6bb1", # mystic purple
#   "short-term memory"     = "#92c5de", # light blue
#   "semantic memory"       = "#5e3c99", # dart violet
#   "episodic memory"       = "#0571b0", # dark blue
#   "verbal comprehension"  =  "#b2abd2" # light violet
# )

# Define color palette and display labels
x_name_colors <- c("process_a"="#e78ac3",
                   "study_name"="#8da0cb",
                   "model_type"="#fc8d62",
                   "subgroup"="#66c2a5")
# define labels
x_name_labels <- c("process_a"="Physical Measure",
                   "study_name"="Study",
                   "model_type"="Covariates",
                   "subgroup"="Subgroup")

# define color of the text elements
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


# ------ define-graphing-function ----------------------
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

  g <- ggplot2::ggplot(
    d,
    aes_string(
      x     = "dummy",
      y     = "process_b_row",
      label = "cog_measure_display",
      fill  = "cognitive_domain",
      color = "cognitive_domain"
    )
  )
  g <- g + geom_tile(color="gray70")
  g <- g + geom_text(size = baseSize-7, hjust=.4)
  g <- g + facet_grid(. ~ study_name )
  # g <- g + coord_flip()
  # g <- g + scale_y_discrete(name = "Cognitive measures", limits=rev(unique(d$process_b)))
  g <- g + scale_y_discrete(limits=rev(cog_measures_sorted_domain))
  g <- g + scale_color_manual(values=domain_colors_text)
  g <- g + scale_fill_manual(values=domain_colors_fill)
  g <- g + domain_map_theme
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
# a <- domain_map(ds)

