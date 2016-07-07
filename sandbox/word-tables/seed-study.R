rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

# ---- load-sources ------------------------------------------------------------
#Load any source files that contain/define functions, but that don't load any other types of variables
#   into memory.  Avoid side effects and don't pollute the global environment.

# ---- load-packages -----------------------------------------------------------
library(magrittr) #Pipes
library(ggplot2)
requireNamespace("readr")
requireNamespace("knitr")
requireNamespace("dplyr")
requireNamespace("tidyr")
requireNamespace("DT")
requireNamespace("scales")

# ---- declare-globals ---------------------------------------------------------
options(show.signif.stars=F) #Turn off the annotations on p-values
paths <- c(
  "cor_spread"      = "./data/shared/tables/seed/correlations-spread.csv",
  "cor_dynamic"    = "./data/shared/tables/seed/correlations-dynamic.csv",
  "cor_static"     = "./data/shared/tables/seed/correlations-static.csv",
  "growth_spread"   = "./data/shared/tables/seed/growth-curve-spread.csv",
  "growth_dynamic" ="./data/shared/tables/seed/growth-curve-dynamic.csv",
  "growth_static"  = "./data/shared/tables/seed/growth-curve-static.csv"
       )
# ---- load-data ---------------------------------------------------------------
dto <- list()

dto[["correlation"]][["spread"]] <- readr::read_csv(paths["cor_spread"][1])
dto[["correlation"]][["dynamic"]] <-readr::read_csv(paths["cor_dynamic"][1])
dto[["correlation"]][["static"]] <- readr::read_csv(paths["cor_static"][1])
dto[["growth"]][["spread"]] <- readr::read_csv(paths["growth_spread"][1])
dto[["growth"]][["dynamic"]] <- readr::read_csv(paths["growth_dynamic"][1])
dto[["growth"]][["static"]] <- readr::read_csv(paths["growth_static"][1])

rm(paths)

# ---- select-study-eas ---------------------------------------------------------


# ---- correlation-table-dynamic -----------------------------------------------------------

# ds_dynamic_pretty %>%
dto[["correlation"]][["dynamic"]]  %>%
  DT::datatable(
    class     = 'cell-border stripe',
    caption   = "Bivariate ISR Correlations",
    filter    = "top",
    options   = list(pageLength = 6, autoWidth = TRUE)
  )

# ---- growth-table-dynamic -----------------------------------------------------------
dto[["growth"]][["dynamic"]]  %>%
  DT::datatable(
    class     = 'cell-border stripe',
    caption   = "Growth Curve Model Solution ",
    filter    = "top",
    options   = list(pageLength = 6, autoWidth = TRUE)
  )


# ---- correlation-table-static ------------------------------------------------------------
correlation_static_pretty <- dto[["correlation"]][["static"]]
growth_static_pretty <- dto[["growth"]][["static"]]

for( study in unique(correlation_static_pretty$study_name) ) {
  cat("\n\n## ", study, "\n\n")
  correlation_static_pretty %>%
    dplyr::filter(study_name==study) %>%
    dplyr::select(-study_name) %>%
    knitr::kable(
      format     = "html",
      align      = c("l", "l", "r", "r", "r", "r")
    ) %>%
    print()
}

# ---- growth-table-static ------------------------------------------------------------
for( study in unique(growth_static_pretty$study_name) ) {
  cat("\n\n## ", study, "\n\n")
  growth_static_pretty %>%
    dplyr::filter(study_name==study) %>%
    dplyr::select(-study_name) %>%
    dplyr::group_by(process_group, subgroup_group, n_group) %>%
    dplyr::mutate(
      k            = seq_len(n()),
      process      = ifelse(k==1, process , ""),
      subgroup     = ifelse(k==1, subgroup, ""),
      n            = ifelse(k==1, n       , "")
    ) %>%
    dplyr::ungroup() %>%
    dplyr::select(-process_group, -subgroup_group, -n_group, -k) %>%
    dplyr::rename_(
      "Process"          = "process",
      "Gender"           = "subgroup",
      "$n$"              = "n"
    ) %>%
    knitr::kable(
      format     = "html",
      # format     = "markdown",
      align      = c("l", "l", "r", "c", "r", "r")
    ) %>%
    print()
}

# ---- growth-graph-forest ------------------------------------------------------------------
ds_graph <- ds_spread %>%
  dplyr::filter(model_type=="aehplus") %>%
  dplyr::filter(!is.na(est) & !is.na(se) & !is.na(subject_count)) %>%
  dplyr::select(study_name, process, subgroup, subject_count, breed, species, est, se) %>% #, ci95_lower, ci95_upper
  dplyr::mutate(
    study_name = factor(study_name, levels=rev(unique(ds_spread$study_name))),
    species    = factor(species, levels=names(coefficient_key), labels=coefficient_key),
    breed      = paste(breed, "(level 1)")
    # stem    = factor(stem, levels=c("i", "s", "r"), labels=c("italic(r)[intercepts]", "italic(r)[slopes]", "italic(r)[residuals]"))
    #stem    = factor(stem, levels=c("i", "s", "r"), labels=c("intercepts", "slopes", "residuals"))
  )

palette_gender_dark          <- c("#af6ca8", "#5a8fc1") #duller than below. http://colrd.com/image-dna/42282/ & http://colrd.com/image-dna/42275/
# palette_gender_dark        <- c("#f25091", "#6718f4") #brighter than above. http://colrd.com/palette/42278/
palette_gender_light         <- adjustcolor(palette_gender_dark, alpha.f = .2)
names(palette_gender_dark)   <- c("female", "male")
names(palette_gender_light)  <- names(palette_gender_dark)
shape_gender                 <- c("male"=24, "female"=25)

theme_report <- theme_light() + #Adapted from https://github.com/OuhscBbmc/DeSheaToothakerIntroStats/blob/master/CommonCode/BookTheme.R
  theme(axis.text            = element_text(colour="gray40")) +
  theme(axis.title           = element_text(colour="gray40")) +
  theme(panel.border         = element_rect(colour="gray80")) +
  theme(panel.grid.major.y   = element_blank()) +
  theme(axis.ticks           = element_blank()) +
  theme(strip.text.x         = element_text(size = 14))

# ds_graph_index <- tidyr::crossing(
#   process_a     = sort(unique(ds_graph$process_a)),
#   process_b     = sort(unique(ds_graph$process_b))
# )
forest <- function( d ) {
  ggplot(d, aes(y=study_name, x=est, color=subgroup, fill=subgroup, shape=subgroup)) + #, xmin=ci95_lower, xmax=ci95_upper
    geom_vline(aes(xintercept=0), color="gray85", size=1, na.rm=T, linetype="42") +
    # geom_errorbarh(aes(height=0), size=2, alpha=.4, na.rm=T) + # , position=position_dodge(width=.2)
    geom_point(size=3) +
    scale_color_manual(values=palette_gender_dark) +
    scale_fill_manual(values=palette_gender_light) +
    scale_shape_manual(values=shape_gender) +
    # coord_cartesian(xlim=c(-.5,1)) +
    facet_grid(species~breed, scales="free") + # labeller = label_parsed) +
    # facet_grid(process_b~stem, scales="free", labeller = label_bquote(cols = r[.(stem)])) +
    # facet_grid(process_b~stem, scales="free") +
    theme_report +
    theme(legend.position="none") +
    theme(strip.text.y = element_text(angle=0)) +
    labs(x=expression(italic(gamma)), y=NULL, title=paste0(unique(d$process), ": Growth Model Coefficients by Study and Gender"))
  # labs(x=NULL, y="Correlation", title=paste("Correlation of random effects"))
  # labs(x=NULL, y="Correlation", title=paste("Correlation of", process_a, "&", process_b, "effects"))

}
# forest(ds_graph[ds_graph$process=="grip", ])
# forest(ds_graph[ds_graph$process_a=="gait" & ds_graph$process_b=="block", ])
# forest(ds_graph[ds_graph$process_a=="gait" & ds_graph$process_b=="symbol", ])
# forest(ds_graph[ds_graph$process_a=="grip" & ds_graph$process_b=="symbol", ])
# forest(ds_graph[ds_graph$process_a=="grip" & ds_graph$process_b=="letter", ])

for( process in sort(unique(ds_graph$process)) ) {
  d_graph <- ds_graph[ds_graph$process==process, ]
  if( nrow(d_graph)==0L) next; # Halt the processing of the current iteration and advances the looping index

  cat("\n\n## Process Variable: ", process, "\n")
  forest(d_graph) %>%
    print()
  # for( process_b in sort(unique(ds_graph$process_b)) ) {
  #   d_graph <- ds_graph[ds_graph$process_a==process_a & ds_graph$process_b==process_b, ]
  #
  #   if( nrow(d_graph)==0L) next; # Halt the processing of the current iteration and advances the looping index
  #   # cat("\n\n### Cognitive Variable: ", process_b, "\n")
  #
  #   forest(d_graph) %>%
  #      print()
  # }
}


# ---- correlation-graph-forest ------------------------------------------------------------------
ds_graph <- ds_spread %>%
  dplyr::filter(model_type=="aehplus") %>%
  dplyr::filter(!is.na(est) & !is.na(se) & !is.na(subject_count)) %>%
  dplyr::select(study_name, process_a, process_b, subgroup, subject_count, stem, est, se, ci95_lower, ci95_upper) %>%
  dplyr::mutate(
    study_name = factor(study_name, levels=rev(unique(ds_spread$study_name))),
    stem    = factor(stem, levels=c("i", "s", "r"), labels=c("italic(r)[intercepts]", "italic(r)[slopes]", "italic(r)[residuals]"))
    #stem    = factor(stem, levels=c("i", "s", "r"), labels=c("intercepts", "slopes", "residuals"))
  )



# table(ds_graph[, c("process_a", "process_b")])

palette_gender_dark          <- c("#af6ca8", "#5a8fc1") #duller than below. http://colrd.com/image-dna/42282/ & http://colrd.com/image-dna/42275/
# palette_gender_dark        <- c("#f25091", "#6718f4") #brighter than above. http://colrd.com/palette/42278/
palette_gender_light         <- adjustcolor(palette_gender_dark, alpha.f = .2)
names(palette_gender_dark)   <- c("female", "male")
names(palette_gender_light)  <- names(palette_gender_dark)
shape_gender                 <- c("male"=24, "female"=25)

theme_report <- theme_light() + #Adapted from https://github.com/OuhscBbmc/DeSheaToothakerIntroStats/blob/master/CommonCode/BookTheme.R
  theme(axis.text            = element_text(colour="gray40")) +
  theme(axis.title           = element_text(colour="gray40")) +
  theme(panel.border         = element_rect(colour="gray80")) +
  theme(panel.grid.major.y   = element_blank()) +
  theme(axis.ticks           = element_blank()) +
  theme(strip.text.x         = element_text(size = 14))

ds_graph_index <- tidyr::crossing(
  process_a     = sort(unique(ds_graph$process_a)),
  process_b     = sort(unique(ds_graph$process_b))
)
forest <- function( d ) {
  ggplot(d, aes(y=study_name, x=est, xmin=ci95_lower, xmax=ci95_upper, color=subgroup, fill=subgroup, shape=subgroup)) +
    geom_vline(aes(xintercept=0), color="gray85", size=1, na.rm=T, linetype="42") +
    geom_errorbarh(aes(height=0), size=2, alpha=.4, na.rm=T) + # , position=position_dodge(width=.2)
    geom_point(size=3) +
    scale_color_manual(values=palette_gender_dark) +
    scale_fill_manual(values=palette_gender_light) +
    scale_shape_manual(values=shape_gender) +
    coord_cartesian(xlim=c(-.5,1)) +
    facet_grid(process_b~stem, scales="free", labeller = label_parsed) +
    # facet_grid(process_b~stem, scales="free", labeller = label_bquote(cols = r[.(stem)])) +
    # facet_grid(process_b~stem, scales="free") +
    theme_report +
    theme(legend.position="none") +
    theme(strip.text.y = element_text(angle=0)) +
    labs(x=expression(italic(r)), y=NULL, title=paste0(unique(d$process_a), ": Random Effects Correlations by Study and Gender"))
    # labs(x=NULL, y="Correlation", title=paste("Correlation of random effects"))
    # labs(x=NULL, y="Correlation", title=paste("Correlation of", process_a, "&", process_b, "effects"))

}
forest(ds_graph[ds_graph$process_a=="grip", ])
# forest(ds_graph[ds_graph$process_a=="gait" & ds_graph$process_b=="block", ])
# forest(ds_graph[ds_graph$process_a=="gait" & ds_graph$process_b=="symbol", ])
# forest(ds_graph[ds_graph$process_a=="grip" & ds_graph$process_b=="symbol", ])
# forest(ds_graph[ds_graph$process_a=="grip" & ds_graph$process_b=="letter", ])

for( process_a in sort(unique(ds_graph$process_a)) ) {
  d_graph <- ds_graph[ds_graph$process_a==process_a, ]
  if( nrow(d_graph)==0L) next; # Halt the processing of the current iteration and advances the looping index

  cat("\n\n## Physical Variable: ", process_a, "\n")
  forest(d_graph) %>%
    print()
  # for( process_b in sort(unique(ds_graph$process_b)) ) {
  #   d_graph <- ds_graph[ds_graph$process_a==process_a & ds_graph$process_b==process_b, ]
  #
  #   if( nrow(d_graph)==0L) next; # Halt the processing of the current iteration and advances the looping index
  #   # cat("\n\n### Cognitive Variable: ", process_b, "\n")
  #
  #   forest(d_graph) %>%
  #      print()
  # }
}
