rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.
# ---- load_sources ----
#Load any source files that contain/define functions, but that don't load any other types of variables
#   into memory.  Avoid side effects and don't pollute the global environment.
# source("./scripts/prepare_for_reporting.R")

# ---- load_packages ----
# library(xtable)
library(knitr)
library(scales) #For formating values in graphs
library(RColorBrewer)
# library(reshape2) #For converting wide to long
library(grid) #For graphing
library(ggplot2) #For graphing
library(testit, quietly=TRUE) #For asserts

# ---- declare_globals ----
path_input <- "./data/shared/ds2.rds"

report_theme <- theme_bw() + #Adapted from https://github.com/OuhscBbmc/DeSheaToothakerIntroStats/blob/master/CommonCode/BookTheme.R
  theme(axis.text = element_text(colour="gray40")) +
  theme(axis.title = element_text(colour="gray40")) +
  theme(panel.border = element_rect(colour="gray80")) +
  theme(axis.ticks = element_line(colour="gray80")) +
  theme(panel.grid.major.y = element_blank()) +
  theme(axis.ticks.length = grid::unit(0, "cm"))

no_grid_or_y_labels_theme <- report_theme + #Adapted from https://github.com/OuhscBbmc/DeSheaToothakerIntroStats/blob/master/CommonCode/BookTheme.R
  theme(axis.ticks = element_blank()) +
  theme(panel.grid = element_blank()) +
  theme(plot.margin = unit(c(.1,.2,.2,0), "lines"))

palette_gender_dark <- adjustcolor(brewer.pal(5, "Dark2")[c(2,3)])
palette_gender_light <- adjustcolor(palette_gender_dark, alpha.f = .2)
names(palette_gender_dark) <- c("female", "male")
names(palette_gender_light) <- names(palette_gender_dark)



# ---- load_data ----
ds <- readRDS(path_input)

# ---- tweak_data ----


#Andrey, should this remapping be moved upstream?  Would other steps benefit?
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

#Enumerate the possible studies and variables
study_names <- sort(unique(ds$study_name))
cog_names <- sort(unique(ds$cognitive_measure))
physical_names <- sort(unique(ds$physical_measure))

#Determine the ranges for each quantity to be graphed.
clean_for_range <- function( x ) {
  x[-Inf<x & x<Inf]
}

range_int <- range(clean_for_range(c(ds$pc_CORR_00, ds$pc_CI95_00_low, ds$pc_CI95_00_high)), na.rm=T)
range_slope <- range(clean_for_range(c(ds$pc_CORR_11, ds$pc_CI95_11_low, ds$pc_CI95_11_high)), na.rm=T)
range_residual <- range(clean_for_range(c(ds$pc_CORR_residual, ds$pc_CI95_residual_low, ds$pc_CI95_residual_high)), na.rm=T)

# ---- studyfreqs
table(ds$physical_measure, ds$study_name)
table(ds$cognitive_measure, ds$study_name)
table(ds$cognitive_measure, ds$physical_measure)

# ---- calculate_forest ----
#TODO: Andrey, calcalulate the graph coordinates, using Philipe's equations that start with
#  the SEM output.

# ---- study_tables ----

# ds_univariate_pretty <- ds_pretty[ds_pretty$outcome_count==1L, desired_columns_univariate]
# ds_bivariate_pretty <- ds_pretty[ds_pretty$outcome_count==2L, desired_columns_bivariate]

# for( study_name in study_names ) {
#
#   d_univariate_study <- ds_univariate_pretty[ds_univariate_pretty$study==study_name, ]
#   d_bivariate_study <- ds_bivariate_pretty[ds_bivariate_pretty$study==study_name, ]
#
#   cat("") #Force a new line
#   cat(paste0("## ", study_name))
#
#   cat("\n") #Force a new line
#   # cat("#### Univariate results")
#   # cat("\n") #Force a new line
#   if( nrow(d_univariate_study) > 0L) {
#     print(knitr::kable(d_univariate_study, caption="Univariate Results",row.names = F))
#   } else {
#     cat("*No univariate models were supplied from the study.*")
#   }
#
#   cat("\n") #Force a new line
#   # cat("#### Bivariate results")
#   # cat("\n") #Force a new line
#
#   if( nrow(d_bivariate_study) > 0L) {
#     print(knitr::kable(d_bivariate_study, caption="Bivariate Results", row.names= F))
#   } else {
#     cat("*No bivariate models were supplied from the study.*\n\n")
#   }
#
#   cat("\n")
# }

# ---- forest_static_bisr_covariates_all ----
cog_name <- "symbol"
physical_name <- "grip"
d_forest <- ds[ds$cognitive_measure==cog_name & ds$physical_measure==physical_name, ]
g_slope <- ggplot(d_forest, aes(x=study_name, y=pc_CORR_11, ymin=pc_CI95_11_low, ymax=pc_CI95_11_high, color=subgroup, fill=subgroup)) +
  geom_hline(x=0, color="gray70", size=1, na.rm=T) +
  # geom_text(aes(label=p_cov_int_pretty), hjust=0, vjust=2) + #Uncomment when the datasets are cleaner.
  geom_linerange(size=4, alpha=.5, na.rm=T) +
  geom_point(size=6, shape=21, na.rm=T) +
  scale_colour_manual(values=palette_gender_dark) +
  scale_fill_manual(values=palette_gender_light) +
  coord_flip(ylim=range_slope) +
  facet_grid(model_type ~ .) +
  report_theme +
  # theme(legend.position="bottom") + #Below the x-axis title
  theme(legend.position=c(0, 0), legend.justification=c(0,0)) + #Inside bottom left corner
  # theme(legend.position="none") + #Remove legend entirely: http://www.cookbook-r.com/Graphs/Legends_(ggplot2)/
  theme(legend.title=element_blank()) + #Remove self-evident legend title: http://www.cookbook-r.com/Graphs/Legends_(ggplot2)/
  labs(x=NULL, y="Correlation", title=paste("Correlation of", physical_name, "&", cog_name, "slopes"))

g_slope


# ---- forest_static ----

# #Exclude the univariate models, by remove the variables like `nocog` and `nophys`
# cog_names <- cog_names[!(cog_names %in% no_variable_labels)]
# physical_names <- physical_names[!(physical_names %in% no_variable_labels)]

# cog_name <- "block"; physical_name <- "pulmonary"
# model_type <- "age"

# g_int_all_missing <- ggplot(data=data.frame()) + geom_text(aes(x=0, y=0, label="No valid `sd_int`\nvalues were found.")) + no_grid_or_y_labels_theme
# g_slope_all_missing <- ggplot(data=data.frame()) + geom_text(aes(x=0, y=0, label="No valid `sd_slope`\nvalues were found.")) + no_grid_or_y_labels_theme
# g_residual_all_missing <- ggplot(data=data.frame()) + geom_text(aes(x=0, y=0, label="No valid `sd_residual`\nvalues were found.")) + no_grid_or_y_labels_theme


for( physical_name in physical_names ) {
  cat("\n\n## `", physical_name, "` \n\n", sep="")
  cat("Studies with this physical variable listed in the model output:", paste(sort(unique(ds[ds$physical_measure==physical_name, "study_name"])), collapse=", "), "\n\n")

  print(kable(ds[ds$physical_measure==physical_name, c("study_name", "cognitive_measure", "subgroup", "model_type", "subject_count", "wave_count", "converged")], row.names=F))

  cat("\n\n")
  for( cog_name in cog_names ) {
    title <- paste0(cog_name, " with ", physical_name)

    #d_forest <- ds[ds$cognitive_measure==cog_name & ds$physical_measure==physical_name & ds$model_type==model_type, ]
    d_forest <- ds[ds$cognitive_measure==cog_name & ds$physical_measure==physical_name, ]
    # d_forest <- ds[ds$cognitive_outcome==cog_name, ]
    # d_forest <- ds[ds$physical_measure==physical_name, ]

    if( nrow(d_forest) > 0 ) { #Don't bother graphing the non-existant combinations
      if( any(!is.na(d_forest$pc_CORR_00))){
      #   g_int <- g_int_all_missing
      # } else {
        g_int <- ggplot(d_forest, aes(x=study_name, y=pc_CORR_00, ymin=pc_CI95_00_low, ymax=pc_CI95_00_high, color=subgroup, fill=subgroup)) +
          geom_hline(x=0, color="gray70", size=1, na.rm=T) +
          # geom_text(aes(label=p_cov_int_pretty), hjust=0, vjust=2) + #Uncomment when the datasets are cleaner.
          geom_linerange(size=4, alpha=.5, na.rm=T) +
          geom_point(size=6, shape=21, na.rm=T) +
          scale_colour_manual(values=palette_gender_dark) +
          scale_fill_manual(values=palette_gender_light) +
          facet_grid(model_type ~ .) +
          report_theme +
          theme(legend.position="bottom") + #Below the x-axis title
          # theme(legend.position=c(0, 1), legend.justification=c(0,1)) + #Inside top left corner
          # theme(legend.position="none") + #Remove legend entirely: http://www.cookbook-r.com/Graphs/Legends_(ggplot2)/
          theme(legend.title=element_blank()) + #Remove self-evident legend title: http://www.cookbook-r.com/Graphs/Legends_(ggplot2)/
          labs(x=NULL, y="Intercept SD", title=title)

        print(g_int + coord_flip(ylim=range_int))
      }
    }
  }
}

# ---- forest_animated ----
# Use this as a starting point: https://github.com/OuhscBbmc/OsctrAstonWeber
