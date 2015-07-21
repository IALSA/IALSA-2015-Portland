rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.
# @knitr load_sources ==============================
#Load any source files that contain/define functions, but that don't load any other types of variables
#   into memory.  Avoid side effects and don't pollute the global environment.
# source("./scripts/prepare_for_reporting.R")

# @knitr load_packages ==============================
# library(xtable)
library(knitr)
library(scales) #For formating values in graphs
library(RColorBrewer)
# library(reshape2) #For converting wide to long
library(grid) #For graphing
library(ggplot2) #For graphing
library(testit, quietly=TRUE) #For asserts

# @knitr declare_globals ==============================

# @knitr load_data ==============================

# @knitr tweak_data ==============================

#Determine the ranges for each quantity to be graphed.
range_int <- range(ds$sd_int, ds$cil_sd_int, ds$ciu_sd_int, na.rm=T)
range_slope <- range(ds$sd_slope, ds$cil_sd_slope, ds$ciu_sd_slope, na.rm=T)
range_residual <- range(ds$sd_residual, ds$cil_sd_residual, ds$ciu_sd_residual, na.rm=T)

# @knitr studyfreqs
table(ds$physical_outcome, ds$study_name)
table(ds$cognitive_outcome, ds$study_name)
table(ds$cognitive_outcome, ds$physical_outcome)


# @knitr calculate_forest ==============================
#TODO: Andrey, calcalulate the graph coordinates, using Philipe's equations that start with
#  the SEM output.

# @knitr study_tables ==============================

for( i in seq_along(dtos) ) {
  dto <- dtos[[i]]
  study_name <- study_names[i]

  d_univariate_study <- ds_univariate_pretty[ds_univariate_pretty$study==study_name, ]
  d_bivariate_study <- ds_bivariate_pretty[ds_bivariate_pretty$study==study_name, ]

  cat("") #Force a new line
  cat(paste0("## ", study_name))

  cat("\n") #Force a new line
  # cat("#### Univariate results")
  # cat("\n") #Force a new line
  if( nrow(d_univariate_study) > 0L) {
    print(knitr::kable(d_univariate_study, caption="Univariate Results",row.names = F))
  } else {
    cat("*No univariate models were supplied from the study.*")
  }

  cat("\n") #Force a new line
  # cat("#### Bivariate results")
  # cat("\n") #Force a new line

  if( nrow(d_bivariate_study) > 0L) {
    print(knitr::kable(d_bivariate_study, caption="Bivariate Results", row.names= F))
  } else {
    cat("*No bivariate models were supplied from the study.*\n\n")
  }

  cat("\n")
}

# @knitr forest_static ==============================
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

#Enumerate the possible variables
cog_names <- sort(unique(ds$cognitive_outcome))
physical_names <- sort(unique(ds$physical_outcome))

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
  cat("Studies with this physical variable listed in the model output:", paste(sort(unique(ds[ds$physical_outcome==physical_name, "study_name"])), collapse=", "), "\n\n")

  print(kable(ds[ds$physical_outcome==physical_name, c("study_name", "cognitive_outcome", "subgroup", "model_type", "subject_count", "wave_count", "converged")], row.names=F))

  cat("\n\n")
  for( cog_name in cog_names ) {
    title <- paste0(cog_name, " with ", physical_name)

    #d_forest <- ds[ds$cognitive_outcome==cog_name & ds$physical_outcome==physical_name & ds$model_type==model_type, ]
    d_forest <- ds[ds$cognitive_outcome==cog_name & ds$physical_outcome==physical_name, ]
    # d_forest <- ds[ds$cognitive_outcome==cog_name, ]
    # d_forest <- ds[ds$physical_outcome==physical_name, ]

    if( nrow(d_forest) > 0 ) { #Don't bother graphing the non-existant combinations
      if( any(!is.na(d_forest$sd_int))){
      #   g_int <- g_int_all_missing
      # } else {
        g_int <- ggplot(d_forest, aes(x=study_name, y=sd_int, ymin=cil_sd_int, ymax=ciu_sd_int, color=subgroup, fill=subgroup)) +
          geom_hline(x=0, color="gray70", size=1) +
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

# @knitr forest_animated ==============================
# Use this as a starting point: https://github.com/OuhscBbmc/OsctrAstonWeber
