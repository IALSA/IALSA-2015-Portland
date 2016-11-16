rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

# ---- load-sources -----------------------------------------------
# source("./manipulation/1-rename-classify.R")
source("./scripts/mplus/model-components.R") # organizes variable names
# ---- load-packages -----------------------------------------------
library(shiny)
library(ggplot2)
library(dplyr)
library(lattice)
library(grid)
# ---- declare-globals -------------------------------------------------


# ----- load-data --------------------------------------------------
ds_full <- readr::read_csv("./data/shared/pc-2-parsed-results-computed_ci.csv")


# ----- create-assist-ds -----------------------------

term <- c(
  "tau_levels"
  ,"tau_slopes"
  ,"tau_resid"
  ,"er_levels"
  ,"er_slopes"
  ,"er_resid"
  ,"er_levels_ci"
  ,"er_slopes_ci"
  ,"er_resid_ci"
  ,"cr_levels_ci"
  ,"cr_slopes_ci"
  ,"cr_resid_ci"
)
label <- c(
  "Covariance of levels"
  ,"Covariance of slopes"
  ,"Covariance of residuals"
  ,"Correlation of levels (estimated)"
  ,"Correlation of slopes (estimated)"
  ,"Correlation of residuals (estimated)"
  ,"Correlation of levels (estimated)"
  ,"Correlation of slopes (estimated)"
  ,"Correlation of residuals (estimated)"
  ,"Correlation of levels (computed)"
  ,"Correlation of slopes (computed)"
  ,"Correlation of residuals (computed)"
)
label_short <- c(
  "Covariance"
  ,"Covariance"
  ,"Covariance"
  ,"Correlation"
  ,"Correlation"
  ,"Correlation"
  ,"Correlation(CI)"
  ,"Correlation(CI)"
  ,"Correlation(CI)"
  ,"Fisher(CI)"
  ,"Fisher(CI)"
  ,"Fisher(CI)"
)
role <- c(
  "Levels"
  ,"Slopes"
  ,"Residuals"
  ,"Levels"
  ,"Slopes"
  ,"Residuals"
  ,"Levels"
  ,"Slopes"
  ,"Residuals"
  ,"Levels"
  ,"Slopes"
  ,"Residuals"
)
format <- c(
  "est(se)pval star"
  ,"est(se)pval star"
  ,"est(se)pval star"
  ,"est(se)pval star"
  ,"est(se)pval star"
  ,"est(se)pval star"
  ,"est(low95ci, high95ci)star"
  ,"est(low95ci, high95ci)star"
  ,"est(low95ci, high95ci)star"
  ,"est(low95ci, high95ci)star"
  ,"est(low95ci, high95ci)star"
  ,"est(low95ci, high95ci)star"
)
ds_labels <- data.frame(term, role, label, label_short, format)

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

# ----- tweak-data --------------------------------------------------
# enforcing needed order of the domains
ds_full <- ds_full %>%
  dplyr::mutate(
    cognitive_domain = ordered(process_b_domain, levels=cog_domain_order)
  )

# ----- graphing-settings ------------------------------------------------
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

domain_colors_fill <- c(
  "visual discrimination" = "#4d9221", # olive
  "perceptual speed"      = "#e66101", # dark brown
  "fluency"               = "#fdb863", # light brown
  "attention"             = "#ca0020", # dark red
  "mental status"         = "#525252", # grey

  "fluid reasoning"       = "#f4a582", # light red,

  "mental status"        = "#525252", # grey
  "executive function"   = "#018571", # aqua green

  "working memory"       = "#8c6bb1", # mystic purple
  "short-term memory"    = "#92c5de", # light blue
  "semantic memory"      = "#5e3c99", # dart violet
  "episodic memory"      = "#0571b0", # dark blue
  "verbal comprehension" =  "#b2abd2" # light violet
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

# ----- define-densing-functions -------------------------------
p_star <- function(
  pval
){
  signif <- ifelse(
    pval > .1, " ", ifelse(
      (pval <=.1 & pval >.05),".",ifelse(
        (pval<=.05 & pval>.01),"*",ifelse(
          (pval<=.01 & pval>.001),"**",ifelse(
            pval<=.001,"***",NA)
        )
      )
    )
  )
  return(signif)
}

numformat <- function(val) { sub("^(-?)0.", "\\1.", sprintf("%.2f", val)) }

dense_v1 <- function(
  est,
  se,
  pval,
  star=FALSE
){
  # est_pretty  <- sprintf("%0.2f", est)
  # se_pretty   <- sprintf("%0.2f", se)
  # pval_pretty <- sprintf("%0.2f",pval)
  est_pretty  <- numformat( est)
  se_pretty   <- numformat( se)
  pval_pretty <- numformat(pval)
  pval_pretty <- ifelse(pval>.99, ".99", sub("^0(.\\d+)$", "\\1", pval_pretty)) #Cap p-value at .99
  # pval_pretty <- sprintf("%.2f", pval) #Remove leading zero from p-value.
  # pval_pretty <- numformat( pval) #Remove leading zero from p-value.
  pval_pretty <- sprintf("%4s", pval_pretty)
  pval_pretty <- ifelse(pval_pretty==".00", "<.01", pval_pretty)       #Cap p-value at .01
  pval_pretty <- ifelse(pval_pretty=="NA" , " NA", pval_pretty)       #Pad NA with space
  # pval_pretty <- sprintf("$p$=%s", pval_pretty)
  # pval_pretty <- ifelse(pval_pretty=="$p$=.00", "$p$<.01", pval_pretty)       #Cap p-value at .01
  # pval_pretty <- ifelse(pval_pretty=="$p$=NA" , "$p$= NA", pval_pretty)       #Pad NA with space
  dense       <- sprintf("%4s(%4s)%4s", est_pretty, se_pretty, pval_pretty)
  # dense       <- sprintf("%4s(%4s), %7s", est_pretty, se_pretty, pval_pretty)
  if(star=="TRUE"){
    dense <- sprintf("%4s(%4s)%4s %s",est_pretty, se_pretty, pval_pretty, p_star(pval) )
    # dense <- sprintf("%4s(%4s), %7s %s",est_pretty, se_pretty, pval_pretty, signif )
  }
  dense       <- ifelse((is.nan(est)|is.na(est)|is.infinite(est)), "---", dense)
  return(dense)

}


dense_v2 <- function(
  est,
  lo,
  hi,
  pval,
  star=F
){
  est_pretty <- numformat(est)
  lo_pretty  <- numformat(lo)
  hi_pretty  <- numformat(hi)

  if(star){
    dense <- sprintf("%4s(%4s,%4s)%s", est_pretty, lo_pretty, hi_pretty, p_star(pval))
  }else{
    dense <- sprintf("%4s(%4s,%4s)", est_pretty, lo_pretty, hi_pretty)
  }
  dense <- ifelse((is.nan(lo)|is.na(lo)|is.infinite(lo)), "---", dense)
  return(dense)
}

# ------ define-graphing-functions ----------------------

domain_map <- function(
  ds,
  model_type_,
  subgroup_,
  process_a_,
  display
  ){
  # model_type_ = "aehplus"
  # subgroup_ = "female"
  # process_a_ = c("fev","pef")#"grip"
  # display = "tau_levels"

  d1 <- ds %>%
    dplyr::filter(model_number == "b1") %>%
    dplyr::filter(model_type == model_type_) %>%
    dplyr::filter(subgroup == subgroup_) %>%
    dplyr::filter(process_a %in% process_a_)

  # determine the ordering
  a <- d1 %>%
    dplyr::group_by_("cognitive_domain","process_b_row") %>%
    dplyr::summarize(count=n()) %>%
    dplyr::ungroup()
  cog_measures_sorted_domain <- a$process_b_row
  cog_measures_sorted_domain <- cog_measures_sorted_domain[!is.na(cog_measures_sorted_domain)]
  # label for the title
  # display_label <- c(
  #   "tau_levels"   = "Covariance of levels | est(se)pval star"          ,
  #   "tau_slopes"   = "Covariance of slopes | est(se)pval star"          ,
  #   "tau_resid"    = "Covariance of residuals | est(se)pval star"       ,
  #   "er_levels"    = "Correlation of levels (estimated) | est(se)pval star"       ,
  #   "er_slopes"    = "Correlation of slopes (estimated) | est(se)pval star"       ,
  #   "er_resid"     = "Correlation of residuals (estimated): est(se)pval star"        ,
  #   "er_levels_ci" =  "Correlation of levels (estimated) | est(low95ci, high95ci)star"            ,
  #   "er_slopes_ci" =  "Correlation of slopes (estimated) | est(low95ci, high95ci)star"           ,
  #   "er_resid_ci"  =  "Correlation of residuals (estimated) | est(low95ci, high95ci)star"          ,
  #   "cr_levels_ci" =  "Correlation of levels (computed) | est(low95ci, high95ci)star"                 ,
  #   "cr_slopes_ci" =  "Correlation of slopes (computed) | est(low95ci, high95ci)star"                 ,
  #   "cr_resid_ci"  =  "Correlation of residuals (computed) | est(low95ci, high95ci)star"
  # )
  ds_ref <- (ds_labels[ds_labels$term==display,])
  main_title <- paste0( subgroup_," - ",model_type_," - ", paste0(process_a_, collapse=" or ")," | ",
                        ds_ref[1,"label_short"]," of ",ds_ref[1,"role"])
  # count models
  if(display == "count"){
    d2 <- d1 %>%
     dplyr::count_(c("process_b_cell","process_b_row", "cognitive_domain","study_name"))
    d$display <-paste0(d$process_b_cell,", ",d$n)
  }else{
    d2 <- d1 %>%
      # dplyr::filter(study_name == "elsa", process_b == "word_de") %>%
      dplyr::count_(c(
        "study_name", "subgroup","process_a", "process_b", "process_b_cell","process_b_row",
        "subject_count",
        # "output_file",
        "cognitive_domain",display
        # "process_b_cell","process_b_row", "cognitive_domain","study_name","tau_levels"
        )) %>%
      dplyr::rename_(.dots = setNames(list(display),"display") ) #%>%
      # dplyr::mutate(
      #   display = paste0(display," N=",as.character(subject_count))
      # )
      testit::assert("Models are not unique",max(d2$n)==1)
  }
  # temp <- d2
  # create dummy variable for the graph
  d2$dummy <- factor("dummy")
  g <- ggplot2::ggplot(
    d2,
    aes_string(
      x     = "dummy",
      y     = "process_b_row",
      label = "display",
      fill  = "cognitive_domain",
      color = "cognitive_domain"
    )
  )
  g <- g + geom_tile(color="gray70")
  # g <- g + geom_text(size = baseSize-7, hjust=.4)
  g <- g + geom_text(size = baseSize-7, hjust=.5)
  g <- g + facet_grid(. ~ study_name )
  g <- g + scale_y_discrete(limits=rev(cog_measures_sorted_domain))
  g <- g + scale_color_manual(values=domain_colors_text)
  g <- g + scale_fill_manual(values=domain_colors_fill)
  # g <- g + annotate(geom="text", size=baseSize, hjust = 1.5, label="XXXX \n SSSSS",x=Inf, y=Inf)
  g <- g + theme1
  g <- g + theme(
    axis.text.x =  element_blank(),
    panel.grid.major.x  =  element_blank(),
    # panel.grid.major.y  =  element_blank(),
    legend.position="left"
  )
  g <- g + guides(color=FALSE)
  g <- g + labs(title=main_title, x=NULL, y="Cognitive measures", fill="Domains")
  # g
  return(g)
}
# Usage:
# domain_map(
#   ds,
#   model_type_ = "aehplus",
#   subgroup_ = "female",
#   process_a_ = c("gait","tug"),
#   display = "tau_levels"
# )

# ----- assemble-dense-displays -------------------------
ds <- ds_full %>%
  # dplyr::filter(process_a %in% c("fev","fev100", "pef", "pek")) %>%
  # dplyr::filter(model_type == "aehplus") %>%
  # dplyr::filter(model_number == "b1") %>%
  dplyr::mutate(

    # compute CI of the estimated correlations
    er_tau_00_ci95lo    = er_tau_00_est -  er_tau_00_se*1.96,
    er_tau_00_ci95hi    = er_tau_00_est +  er_tau_00_se*1.96,
    er_tau_11_ci95lo    = er_tau_11_est -  er_tau_11_se*1.96,
    er_tau_11_ci95hi    = er_tau_11_est +  er_tau_11_se*1.96,
    er_sigma_00_ci95lo  = er_sigma_00_est -  er_sigma_00_se*1.96,
    er_sigma_00_ci95hi  = er_sigma_00_est +  er_sigma_00_se*1.96,

    # assemble the desnse of raw covariances
    tau_levels    = dense_v1( ab_tau_00_est,   ab_tau_00_se,       ab_tau_00_pval,   T),
    tau_slopes    = dense_v1( ab_tau_11_est,   ab_tau_11_se,       ab_tau_11_pval,   T),
    tau_resid     = dense_v1( ab_sigma_00_est, ab_sigma_00_se,     ab_sigma_00_pval, T),
    # assemble the dense of estimated correlations
    er_levels     = dense_v1( er_tau_00_est,   er_tau_00_se,       er_tau_00_pval,   T),
    er_slopes     = dense_v1( er_tau_11_est,   er_tau_11_se,       er_tau_11_pval,   T),
    er_resid      = dense_v1( er_sigma_00_est, er_sigma_00_se,     er_sigma_00_pval, T),
    # assemble the dens of CI for estimated correlations
    er_levels_ci  = dense_v2( er_tau_00_est,   er_tau_00_ci95lo,   er_tau_00_ci95hi,   er_tau_00_pval,  T),
    er_slopes_ci  = dense_v2( er_tau_11_est,   er_tau_11_ci95lo,   er_tau_11_ci95hi,   er_tau_11_pval,  T),
    er_resid_ci   = dense_v2( er_sigma_00_est, er_sigma_00_ci95lo, er_sigma_00_ci95hi, er_sigma_00_pval,T),
    # assemble the dense of computed correlations
    cr_levels_ci  = dense_v2( cr_levels_est,  cr_levels_ci95_lo,   cr_levels_ci95_hi,  ab_tau_00_pval,  T),
    cr_slopes_ci  = dense_v2( cr_slopes_est,  cr_slopes_ci95_lo,   cr_slopes_ci95_hi,  ab_tau_11_pval,  T),
    cr_resid_ci   = dense_v2( cr_resid_est,   cr_resid_ci95_lo,    cr_resid_ci95_hi,   ab_sigma_00_pval,T)
    # )
  ) %>%
  dplyr::select_(
    .dots = c(model_components$id,"cognitive_domain","process_b_cell", "process_b_row","subject_count",
             "tau_levels",   "tau_slopes",   "tau_resid",
              "er_levels",    "er_slopes",    "er_resid",
              "er_levels_ci", "er_slopes_ci", "er_resid_ci",
              "cr_levels_ci", "cr_slopes_ci", "cr_resid_ci"
    )
   )



# ----- select-pulmonary -----------------------
process_a <- c("fev","pef")

# ----- select-grip -----------------------
process_a <- c("grip")

# ----- select-gait -----------------------
process_a <- c("gait","tug")

# ----- print-domain-map ------------------------
for(sex in c("female","male")){
# for(sex in c("female")){
  cat("\n#", toupper(sex),"\n")
  for(type in c("Covariance","Correlation","Correlation(CI)","Fisher(CI)")){
  # for(type in c("Covariance")){
    cat("\n##",type,"\n")
    # type = "Covariance"
    ds_ref <- ds_labels %>% dplyr::filter(label_short==type)
    ds_ref <- data.frame(lapply(ds_ref,as.character),stringsAsFactors = FALSE)
    for(term in as.character(ds_ref$term)){
      # term = "tau_levels"
      cat("\n###", ds_ref[ds_ref$term==term,"role"],"\n")
      domain_map(
        ds,
        model_type_ = "aehplus",
        subgroup_ = sex,
        process_a_ = process_a,
        display = term
      ) %>% print()
      cat("\n")
      # cat("test")
      # cat("\n")
    }#term
  }#type
}#sex


#---- reproduce ---------------------------------------
path_pulmonary <- "./reports/domain-map/domain-map-pulmonary.Rmd"
path_gait      <- "./reports/domain-map/domain-map-grip.Rmd"
path_grip      <- "./reports/domain-map/domain-map-gait.Rmd"
allReports     <- c(path_pulmonary, path_grip, path_gait)

pathFilesToBuild <- c(path_pulmonary)
# pathFilesToBuild <- c(path_gait)
# pathFilesToBuild <- c(path_grip)
# pathFilesToBuild <- c(allReports)
testit::assert("The knitr Rmd files should exist.", base::file.exists(pathFilesToBuild))
# Build the reports
for( pathFile in pathFilesToBuild ) {

  rmarkdown::render(input = pathFile,
                    output_format=c(
                      "html_document" # set print_format <- "html" in seed-study.R
                      # "pdf_document"
                      # ,"md_document"
                      # "word_document" # set print_format <- "pandoc" in seed-study.R
                    ),
                    clean=TRUE)
}

