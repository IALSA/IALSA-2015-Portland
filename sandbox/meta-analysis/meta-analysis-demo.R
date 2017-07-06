# knitr::stitch_rmd(script="./___/___.R", output="./___/___/___.md")
# These first few lines run only when the file is run in RStudio, !!NOT when an Rmd/Rnw file calls it!!
rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.
cat("\f") # clear console

# This script reads two files: patient event table + location map.
rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

# ---- load-packages -----------------------------------------------------------
library(ggplot2) #For graphing
library(magrittr) #Pipes
library(dplyr) # for shorter function names. but still prefer dplyr:: stems
library(knitr) # dynamic documents
library(rmarkdown) # dynamic
library(kableExtra) # enhanced tables, see http://haozhu233.github.io/kableExtra/awesome_table_in_html.html
# library(TabularManifest) # exploratory data analysis, see https://github.com/Melinae/TabularManifest
requireNamespace("knitr", quietly=TRUE)
requireNamespace("scales", quietly=TRUE) #For formating values in graphs
requireNamespace("RColorBrewer", quietly=TRUE)
requireNamespace("dplyr", quietly=TRUE)
requireNamespace("DT", quietly=TRUE) # for dynamic tables
# requireNamespace("plyr", quietly=TRUE)
# requireNamespace("reshape2", quietly=TRUE) #For converting wide to long
# requireNamespace("mgcv, quietly=TRUE) #For the Generalized Additive Model that smooths the longitudinal graphs.

# ---- load-sources ------------------------------------------------------------
#Load any source files that contain/define functions, but that don't load any other types of variables
#   into memory.  Avoid side effects and don't pollute the global environment.
# source("./manipulation/function-support.R")  # assisting functions for data wrangling and testing
# source("./manipulation/object-glossary.R")   # object definitions
# source("./scripts/common-functions.R")        # reporting functions and quick views
# source("./scripts/graphing/graph-presets.R") # font and color conventions

# ---- load-data -------------------------------------------------------------
variable_names <- c("study_name","process_a", "process_b", "subgroup", "n", "est", "se")
proto <- list(
  row01 = c("OCTO"  ,"PEF"  ,"Clock" ,"Men"   ,138  ,	0.27 ,0.14),
  row02 = c("OCTO"  ,"PEF"  ,"Clock" ,"Women" ,275  ,	0.24 ,0.11),
  row03 = c("MAP"   ,"FEV1" ,"Ideas" ,"Men"   ,321  ,-0.02 ,0.08),
  row04 = c("MAP"   ,"FEV1" ,"Ideas" ,"Women" ,935  , 0.19 ,0.06),
  row05 = c("EAS"   ,"PEF"  ,"MMSE"  ,"Men"   ,324  , 0.31 ,0.16),
  row06 = c("EAS"   ,"PEF"  ,"MMSE"  ,"Women" ,545  , 0.18 ,0.10),
  row07 = c("MAP"   ,"FEV1" ,"MMSE"  ,"Men"   ,321  , 0.04 ,0.08),
  row08 = c("MAP"   ,"FEV1" ,"MMSE"  ,"Women" ,935  , 0.02 ,0.06),
  row09 = c("NAS"   ,"FEV1" ,"MMSE"  ,"Men"   ,1131 , 0.20 ,0.07),
  row10 = c("OCTO"  ,"PEF"  ,"MMSE"  ,"Men"   ,140  , 0.66 ,0.14),
  row11 = c("OCTO"  ,"PEF"  ,"MMSE"  ,"Women" ,276  , 0.10 ,0.13),
  row12 = c("SATSA" ,"FEV1" ,"MMSE"  ,"Men"   ,299  , 0.16 ,0.12),
  row13 = c("SATSA" ,"FEV1" ,"MMSE"  ,"Women" ,411  ,-0.07 ,0.18)
) %>%
  dplyr::bind_rows() %>%
  t() %>%
  tibble::as_tibble()
names(proto) <- variable_names
proto[,c("n","est","se")] <- sapply(proto[,c("n","est","se")], as.numeric)

# ---- inspect-data -------------------------------------------------------------
proto
# ---- tweak-data --------------------------------------------------------------
ds_meta <- proto %>%
  # compute  lower and upper limit of the 95% confidence (green section)
  dplyr::mutate(
    w  = log( (1 + est)/(1 - est) )/2,                    #
    u  = (w * se)/ est,                                   #
    ab = u * 1.96,                                        #
    aa = w + ab,                                          #
    z  = w - ab,                                          #
    y  =       ( (exp(2*aa)-1) / (exp(2*aa)+1) ) - est,   #
    x  = est - ( (exp(2*z)-1)  / (exp(2*z)+1)  )      ,   #
    lo = -(x - est),                                      #  low 95% CI
    hi = y + est,                                         #  high 95% CI
    af = sprintf("%.2f(%.2f,%.2f)", est, lo, hi)          #  estimate(low, high)
  ) %>%
  # compute node sizes (red section)
  dplyr::mutate(
    ac     = abs( w/(u^2) ),                              #
    ae     = u^-2                                         # ae and ag are used interchangeably in spreadsheet
) %>%
  dplyr::group_by(subgroup) %>%
  dplyr::mutate(
    group_average   = sum(ac)/sum(ae)                     # ad
  ) %>%
  dplyr::ungroup() %>%
  dplyr::mutate(
    overall_average = sum(ac)/sum(ae),                    # ad
    node_size       = ae / sum(ae) * 100                  # aj
  ) %>%
  # enable/disable the next line to focus on a subset of variables
  # dplyr::select_(.dots=c(variable_names,"ac","ae","group_average","overall_average","node_size")) %>%
  # compute chi-square statistics (blue section)
  dplyr::mutate(
    q = (z / 1.96)^2*ae                                   # ai
  ) %>%
  dplyr::group_by(subgroup) %>%
  dplyr::mutate(
    q_group_sum     = sum(q),
    q_group_count   = length(!is.na(q))
  ) %>%
  dplyr::ungroup() %>%
  dplyr::mutate(
    q_overall_sum   = sum(q),
    q_overall_count = length(!is.na(q)),
    q_group_pval    = pchisq(q_group_sum,   df = q_group_count   - 1, lower.tail = FALSE),
    q_overall_pval  = pchisq(q_overall_sum, df = q_overall_count - 1, lower.tail = FALSE)
  ) %>%
  # enable/disable the next line to focus on a subset of variables
  # dplyr::select_(.dots=c(variable_names,"q","q_group_sum", "q_group_count","q_group_pval","q_overall_sum","q_overall_count","q_overall_pval")) %>%
  print()

# ---- basic-table --------------------------------------------------------------
ds <- ds_meta %>%
  dplyr::rename(
    dense = af,
    low95 = lo,
    high95= hi
  ) %>%
  dplyr::select_(.dots = c(variable_names,"dense"))
ds
# ---- basic-graph --------------------------------------------------------------

# Sonata form report structure
# ---- dev-a-0 ---------------------------------

# ---- dev-a-1 ---------------------------------
# ---- dev-a-2 ---------------------------------
# ---- dev-a-3 ---------------------------------
# ---- dev-a-4 ---------------------------------
# ---- dev-a-5 ---------------------------------

# ---- dev-b-0 ---------------------------------
# ---- dev-b-1 ---------------------------------
# ---- dev-b-2 ---------------------------------
# ---- dev-b-3 ---------------------------------
# ---- dev-b-4 ---------------------------------
# ---- dev-b-5 ---------------------------------

# ---- recap-0 ---------------------------------
# ---- recap-1 ---------------------------------
# ---- recap-2 ---------------------------------
# ---- recap-3 ---------------------------------


# ---- publish ---------------------------------------
path_report_1 <- "./reports/*/report_1.Rmd"
path_report_2 <- "./reports/*/report_2.Rmd"
allReports <- c(path_report_1,path_report_2)

pathFilesToBuild <- c(allReports)
testit::assert("The knitr Rmd files should exist.", base::file.exists(pathFilesToBuild))
# Build the reports
for( pathFile in pathFilesToBuild ) {

  rmarkdown::render(input = pathFile,
                    output_format=c(
                      # "html_document" # set print_format <- "html" in seed-study.R
                      # "pdf_document"
                      # ,"md_document"
                      "word_document" # set print_format <- "pandoc" in seed-study.R
                    ),
                    clean=TRUE)
}

