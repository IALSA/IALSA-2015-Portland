rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.
cat("\f") # clear console



# @knitr load_packages
library(dplyr) # for data manipulation
library(ggplot2) # for graphing


# @knitr load_sources ---------------------------------------
source("https://raw.githubusercontent.com/andkov/psy532/master/scripts/graphs/main_theme.R")
source("./scripts/mplus/group_variables.R")

# @knitr declare_globals ---------------------------------------
stem <- c("study_name", "subgroup","model_type", "physical_measure", "cognitive_measure","subject_count", "wave_count","parameter_count")
select_components <- c(R_SPSC, R_IPIC, R_RES_PC)

# @knitr load_data ---------------------------------------
results <- readRDS("./projects/physical/outputs/physical.rds")
# Remove specific studies from the pool for cleaner analysis
ds <- dplyr::filter(results,study_name!="nuage")

# @knitr inspect_data ---------------------------------------

# @knitr tweak_data ---------------------------------------
# something wrong with nuage models: 45 parameters instead of 41; remove


ds$subgroup <- factor(ds$subgroup, levels=c('male','female'), labels=c("Men","Women"))

ds <- ds[ ,c(stem,R_SPSC,R_IPIC,R_RES_PC)]
# ds <- ds[ ,c(stem,R_SPSC, R_IPIC)]
head(ds)
# View(ds)

# @kntir basic_table ---------------------------------------
table(ds$physical_measure, ds$cognitive_measure)
# View(ds)
# @knitr basic_graph ---------------------------------------

# @knitr new_chunk ---------------------------------------


# @knitr get_pair_data ---------------------------------------
outcome_pair <- function(data=ds,process1, process2){


  d <- ds
  d <- dplyr::filter(d, physical_measure==process1 | cognitive_measure==process1)
  d <- dplyr::filter(d, physical_measure==process2 | cognitive_measure==process2)

  d <- d %>% tidyr::gather_("parameter","value", select_components)
  # head(d)
  d$parameter <- as.character(d$parameter)
  d <- d[order(d$study_name), ]
  # head(d)

  for(i in 1:nrow(d)){
    d[i, "term"] <- strsplit(d[i,"parameter"], split="_")[[1]][2]
    test <- length(strsplit(d[i,"parameter"], split="_")[[1]])
    d[i, "record"] <- strsplit(d[i,"parameter"], split="_")[[1]][test]
  } # close fore loop
  d[d$term=="SPSC","term"] <- "slope"
  d[d$term=="IPIC","term"] <- "intercept"
  d[d$term=="RES","term"] <- "residual"
  head(d)
  table(d$term)
  d$parameter <- NULL
  # View(d)
  d <- tidyr::spread(d,record,value)

  d$signif[d$pval>.1] <- " "
  d$signif[d$pval<.1 & d$pval>.05] <- "."
  d$signif[d$pval<.05 & d$pval>.01] <- "*"
  d$signif[d$pval<.01 & d$pval>.001] <- "**"
  d$signif[d$pval<.001 ] <- "***"

  # View(d)
  d$display <- paste0(round(d$est,2)," (",round(d$se,2),") ", round(d$pval,3), d$signif)
  return(d)
}
# d <- outcome_pair(data=ds,process1="fev",process2="gait")
# d

# @knitr basic_graph_1 ---------------------------------------
gender_colors <- c("Men"="#67a9cf", "Women"="#ef8a62")
basic_graph_1 <- function(data, process1, process2){
  d <- outcome_pair(data, process1=process1, process2=process2)

  g <- ggplot2::ggplot(d, aes(x=study_name, y=est, color=subgroup))+
    geom_abline(intercept=0,slope=0, size=1, color="black", alpha=.5, linetype="dashed")+
    scale_color_manual(values=gender_colors)+
    main_theme +
    geom_text(aes(label=display), size=4)+
    facet_grid(term~.)+
    theme(legend.position = 'top')+
    labs(title=paste0(process1, " & ", process2," : est (se) pval"), y=paste0("Correlation value"),
         x="Study", color="Subset: ")
  g
}

# @knitr fev_gait ---------------------------------------
g <- basic_graph_1(data=d, process1 = "fev", process2 = 'gait')
g

# @knitr fev_grip ---------------------------------------
g <- basic_graph_1(data=d, process1 = "fev", process2 = 'grip')
g

# @knitr gait_grip ---------------------------------------
g <- basic_graph_1(data=d, process1 = "gait", process2 = 'grip')
g

# @knitr gait_pef ---------------------------------------
g <- basic_graph_1(data=d, process1 = "gait", process2 = 'pef')
g

# @knitr gait_pek ---------------------------------------
g <- basic_graph_1(data=d, process1 = "gait", process2 = 'pek')
g

# @knitr grip_pef ---------------------------------------
g <- basic_graph_1(data=d, process1 = "grip", process2 = 'pef')
g

# @knitr grip_pek  ---------------------------------------
g <- basic_graph_1(data=d, process1 = "grip", process2 = 'pek')
g


# @knitr reproduce ---------------------------------------
  rmarkdown::render(input = "./reports/physical/basic_graphs/basic_graphs.Rmd" ,
                    output_format="html_document", clean=TRUE)
