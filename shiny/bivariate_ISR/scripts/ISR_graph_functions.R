##  Fou4 tile graphs of model counts:
##    Rows                  Columns
##  Cognitive measure     Physical Measure
##  Cognitive measure     Study
##  Cognitive measure     Subgroup
##  Cognitive measure     Model type


################################################## uncomment when used in server.R ####
## @knitr prep_for_tile
# library(shiny)
# library(ggplot2)
# library(dplyr)
#
# if(basename(getwd())=="bivariate_ISR"){
# ds1a <- readRDS('../../data/shared/ds1a.rds')
# }else{
# ds1a <- readRDS('./data/shared/ds1a.rds')
# }
#
#
# ## @knitr tweak_data
#
#
# ## @knitr subset_data
# ## trim to make more managable
# keepvar <- c("study_name","model_number", "subgroup", "model_type","physical_construct","physical_measure", "cognitive_construct","cognitive_measure", "converged", "output_file", "corr_int", "corr_slope", "corr_residual", "ciu_corr_int", "cil_corr_int", "ciu_corr_slope", "cil_corr_slope", "ciu_corr_residual", "cil_corr_residual", "p_cov_int", "p_cov_slope", "p_cov_res")
# # keepvar <- c("model_number","study_name","subgroup", "model_type","physical_construct","cognitive_construct","physical_measure","cognitive_measure", "output_file", "converged")
#
# # reduce number of columns
# dsb <- ds1a[ , keepvar]
# # reduce number of rows
# dsb <- dsb %>% dplyr::filter(model_number %in% c("u1","b1"))



################################################## Globals set #####
## @knitr define_themes
baseSize <- 10
theme1 <- ggplot2::theme_bw(base_size=baseSize) +
  ggplot2::theme(title=ggplot2::element_text(colour="gray20",size = baseSize+1)) +
  ggplot2::theme(axis.text=ggplot2::element_text(colour="gray40", size=baseSize-2)) +
  ggplot2::theme(axis.title=ggplot2::element_text(colour="gray40")) +
  ggplot2::theme(panel.border = ggplot2::element_rect(colour="gray80")) +
  ggplot2::theme(axis.ticks.length = grid::unit(0, "cm")) +
  ggplot2::theme(text = element_text(size =baseSize+7))

  # Define color palette and display labels
  x_name_colors <- c("physical_measure"="#e78ac3",
                     "study_name"="#8da0cb",
                     "model_type"="#fc8d62",
                     "subgroup"="#66c2a5")
  x_name_labels <- c("physical_measure"="Physical Measure",
                     "study_name"="Study",
                     "model_type"="Predictor Set",
                     "subgroup"="Sex Subgroup")
  # 8th multi-hue at colorbrewer2.org, 5 categories, first 4
  pvalueColors <- c(">.10" = "white",
                    "<=.10" = "#feebe2",
                    "<=.05" = "#fbb4b9",
                    "<=.01" = "#f768a1",
                    "<=.001" = "#c51b8a")

  facetFontSize <- baseSize+7
  legendTitleSize <- baseSize + 7
  legendTextSize <- baseSize + 5



######################  BASIC TILE ############
## @knitr define_basic_tile_function
basic_tile_ISR <- function(ds,x_name){

  ds$cognitive_measure <- plyr::revalue(ds$cognitive_measure, warn_missing=F, replace  = c(
    "3ms"                      = "3ms"
    , "analogies"                = "analogies"
    , "block"                    = "block"
    , "bnt"                      = "bnt"
    , "bostonstorydelay"         = "boston_story_delay"
    , "bostonstoryimmediate"     = "boston_story_immediate"
    , "categories"               = "categories"
    , "clock"                    = "clock"
    , "complexideas"             = "complex_ideas"
    , "delayedrecall"            = "delayed_recall"
    , "digitbackwardspan"        = "digit_backward_span"
    , "digitbackwardtotal"       = "digit_backward_total"
    , "digitordering"            = "digit_ordering"
    , "digitsback"               = "digits_back"
    , "digitsforward"            = "digits_forward"
    , "digitspan"                = "digit_span"
    , "digitsymbolsubstitution"  = "digit_symbol_substitution"
    , "figurecopy"               = "figure_copy"
    , "figureid"                 = "figure_id"
    , "figurelogic"              = "figure_logic"
    , "figurememory"             = "figure_memory"
    , "info"                     = "info"
    , "lineorientation"          = "line_orientation"
    , "logicalmemory"            = "logical_memory"
    , "logicalmemorydelay"       = "logical_memory_delay"
    , "logicalmemoryimmed"       = "logical_memory_immed"
    , "lpsspacialability"        = "lps_spacial_ability"
    , "lpsspatialability"        = "lps_spatial_ability"
    , "matrices"                 = "matrices"
    , "mirrecall"                = "mir_recall"
    , "mmse"                     = "mmse"
    , "nart"                     = "nart"
    , "nocogm"                   = "nocogm"
    , "numbercomparison"         = "number_comparison"
    , "patterncomparison"        = "pattern_comparison"
    , "proserecall"              = "prose_recall"
    , "psif"                     = "psif"
    , "rotations"                = "rotations"
    , "serial7"                  = "serial7"
    , "symbol"                   = "symbol"
    , "synonyms"                 = "synonyms"
    , "tics"                     = "tics"
    , "trailsb"                  = "trailsb"
    , "univar"                   = "univar"
    , "verbalfluency"            = "verbal_fluency"
    , "waisgeneralknowledge"     = "wais_general_knowledge"
    , "waispicturecompletion"    = "wais_picture_completion"
    , "waisvocab"                = "wais_vocab"
    , "wmslmdel"                 = "wmslmdel"
    , "wmslmimmed"               = "wmslmimmed"
    , "wordlistdelay"            = "word_list_delay"
    , "wordlistimmed"            = "word_list_immed"
    , "wordlistrecog"            = "word_list_recog"
  ))


  # define the data
  d <- ds %>% dplyr::count_(c("cognitive_construct", "cognitive_measure", x_name))
  d$cognitive_construct <- toupper(d$cognitive_construct)

  d$cognitive_measure <- gsub("_", "\n", d$cognitive_measure)

  g <- ggplot2::ggplot(d, aes_string(x=x_name, y="cognitive_measure", fill="cognitive_construct", label="cognitive_measure"))
  g <- g + geom_tile()
  g <- g + geom_text(size = baseSize-3, lineheight=.7)
  g <- g + facet_grid(. ~  physical_measure)
  g <- g + scale_y_discrete(name = "Cognitive measures", limits=rev(unique(d$cognitive_measure)))
  g <- g + scale_fill_brewer(palette = "Set2", name = "Cog Domains")
  g <- g + labs(title=x_name_labels[x_name], x=NULL, y=NULL)
  g <- g + theme1
  g <- g + theme(axis.text.y = ggplot2::element_blank(),
                 axis.text.x = element_text(hjust=.5, angle=0, size=baseSize+10),
                 axis.title = element_blank(),
                 legend.title = ggplot2::element_text(size=legendTitleSize, vjust =.2),
                 legend.text =  ggplot2::element_text(size=legendTextSize),
                 # axis.text.position = "right",
                 legend.position="left")
    g <- g + theme(strip.text.x = ggplot2::element_text(angle = 0, size=facetFontSize, color="black"))
  return(g)
}

# basic_tile_ISR(dsTile,"physical_measure")



######################  ISR  plot ############
ISR_plot <- function(ds = dsISR
                    # select
                    # , study = "satsa"
                    # , physical_measure = "grip"
                    # , covars = unique(ds$model_type) # model_type
                    # , cognitive_construct = unique(ds$cognitive_construct)
                    # map
                    , x_name = "parameter" # x-axis
                    , display_value = "pvalue" # number that prints
                    # arrange
                    , x_facet = "subgroup" # grouped horizontally
                    , y_facet = "." # grouped vertically
){
  ds$cognitive_construct <- toupper(ds$cognitive_construct)
  # ds$pretty_number <- paste0(ds$cognitive_construct," - ",ds$cognitive_measure)

  if( display_value == "display" ) {
    #ds$display_line_1 <- gsub("(\\.02)", "\\1", ds$display)
    ds$display_line_1 <- sapply(strsplit(ds$display, "\n"), function(l) l[1])
    ds$display_line_2 <- sapply(strsplit(ds$display, "\n"), function(l) l[2])
    ds[, c("display", "display_line_1", "display_line_2")]
  } else {
    ds$display_line_1 <- ds$display
    ds$display_line_2 <- ""
  }

  g <- ggplot2::ggplot(ds, aes_string(x=x_name, y="cognitive_measure", label="display_line_1", fill="sign"))
  g <- g + geom_tile()
  g <- g + geom_text(size = baseSize, vjust=-.1)
  g <- g + geom_text(aes(label=display_line_2), size = baseSize-3, vjust=1.1, color="gray40")
  # g <- g + facet_grid(subgroup ~ model_type)
  g <- g + facet_grid(as.formula(paste0(y_facet," ~ ", x_facet)))
  # g <- g + scale_x_discrete(labels = c("int"="INT", "slope"="SLP" , "res"="RES"))
  g <- g + scale_y_discrete(limits=rev(unique(ds$cognitive_measure)))
  g <- g + scale_fill_manual(name = "p-value", values = pvalueColors)
  # g <- g + scale_fill_gradient(low="white", high=x_name_colors["subgroup"], na.value = "grey")
  g <- g + labs(title=paste0("STUDY: ", unique(ds$study_name),"     PHYSICAL MEASURE: ", unique(ds$physical_measure), "     DISPLAY: ", display_value), x = NULL, y = NULL)
  g <- g + theme1
  g <- g + theme(axis.text.y =  element_blank(), #ggplot2::element_text(size=baseSize, hjust=0),
                 axis.text.x =  ggplot2::element_text(hjust=.5, size=baseSize+10),
                 # axis.title.x = element_blank(),
                 # axis.title.y = element_blank(),
                 legend.title = ggplot2::element_text(size=legendTitleSize, vjust =-2),
                 legend.text =  ggplot2::element_text(size=legendTextSize),
                 panel.grid.major.x = element_blank(),

                 legend.position="right")
  g <- g + theme(strip.text.x = ggplot2::element_text(angle = 0, size=facetFontSize, color="black"))
  # g

  return(g)
}
# ISR_plot(ds = dsISR, display_value="corr")





