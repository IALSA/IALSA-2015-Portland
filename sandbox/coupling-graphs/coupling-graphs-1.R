rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

# ---- load-sources ------------------------------------------------------------
#Load any source files that contain/define functions, but that don't load any other types of variables
#   into memory.  Avoid side effects and don't pollute the global environment.
# load functions to assemble the tables


source("./scripts/mplus/extraction-functions-auto.R")   # parsing functions, groupings, components
source("./scripts/mplus/mplus.R")                  # working with Mplus object

source("./scripts/graphs/model-anatomy-functions-auto.R")# treating single outputs
source("./scripts/table-assembly-functions.R")      # working with compound catalogs

source("./scripts/graphs/main_theme.R") # pre-sets and options for graphing
# ---- load-packages -----------------------------------------------------------
library(magrittr) #Pipes
library(ggplot2)
requireNamespace("readr")
requireNamespace("knitr")
requireNamespace("dplyr")
requireNamespace("tidyr")
library(MplusAutomation)


# ---- declare-globals ---------------------------------------------------------
options(show.signif.stars=T) #Turn off the annotations on p-values
print_format = "html"
# print_format = "pandoc"


# ---- load-data ---------------------------------------------------------------
catalog <- read.csv("./data/shared/pc-2-catalog-augmented.csv", header = T,  stringsAsFactors=FALSE)
# template for structuring tables for reporting individual models
stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil-v10.csv")
# path_outputs <- list.files(path_folder_octo,pattern = ".out$",full.names = T, recursive = T)


path <- path_outputs[4]
# grep("./output/studies/octo/info/u2_145_aef_info.out",path,value=F)
# ---- helper-functions ----------------------
quick_save <- function(g,name,width=600,height=600,dpi=100){
  ggplot2::ggsave(
    filename= paste0(name,".png"),
    plot=g,
    device = png,
    path = "./sandbox/coupling-graphs/graphs/",
    width = width,
    height = height,
    # units = "cm",
    dpi = dpi,
    limitsize = FALSE
  )
}
recover_data <- function(
  path_out,
  long = TRUE,
  normal_resid = TRUE
){
  model_name <- gsub(".out$","",basename(path_out))
  regex_1 <- "(u0|u1|u2|b0|b1|b2)_(\\w+)_(\\w+)_(\\w+)_(\\w+)"
  model_number =  gsub(regex_1, "\\1", model_name)
  subgroup     =  gsub(regex_1, "\\2", model_name)
  model_type   =  gsub(regex_1, "\\3", model_name)
  process_a    =  gsub(regex_1, "\\4", model_name)
  process_b    =  gsub(regex_1, "\\5", model_name)
  #
  model_result <- MplusAutomation::readModels(path_out)
  d <- model_result$savedata

  (variable_names <- colnames(d))
  regex_names <- "(A|B|TIME)_(\\d+)"
  grepl(regex_names,variable_names)
  (variables_dynamic <- variable_names[grepl(regex_names,variable_names)])
  (variables_static <- setdiff(variable_names, variables_dynamic))
  dd <- d %>%
    tibble::rownames_to_column("id") %>%
    # dplyr::mutate(id = as.numeric(id)) %>%
    tidyr::gather_(key="g",value="value",variables_dynamic) %>%
    dplyr::mutate(
      process = gsub("(\\w+)_(\\d+)", "\\1", g),
      wave    = gsub("(\\w+)_(\\d+)", "\\2", g)
    ) %>%
    dplyr::select(-g) %>%
    tidyr::spread(process, value) %>%
    dplyr::select(-wave) %>%
    dplyr::mutate(
      predicted_A = ifelse(is.na(A), NA,IA + (SA * TIME)),
      predicted_B = ifelse(is.na(B), NA,IB + (SB * TIME)),
      residual_A  = ifelse(is.na(A), NA, A - predicted_A),
      residual_B  = ifelse(is.na(B), NA, B - predicted_B)
    ) %>%
    plyr::rename(c("A"="observed_A", "B"="observed_B")) %>%
    dplyr::arrange(id)
  if(normal_resid){
    se_resid_a <- sd(dd$residual_A, na.rm=T)
    se_resid_b <- sd(dd$residual_B, na.rm=T)
    dd <- dd %>%
      dplyr::mutate(
        residual_A = residual_A / se_resid_a,
        residual_B = residual_B / se_resid_b
      )
  }
  if(long){
    dd <- dd %>%
      tidyr::gather_("g","value",c("observed_A","observed_B",
                                   "predicted_A","predicted_B",
                                   "residual_A","residual_B")) %>%
      dplyr::mutate(
        source    = gsub("(\\w+)_(.)","\\1", g),
        process = gsub("(\\w+)_(.)","\\2", g)
      ) %>%
      dplyr::select(-g) %>%
      dplyr::mutate(
        process = ifelse(process=="A",process_a,
                         ifelse(process=="B",process_b,NA))
      ) %>%
      dplyr::arrange(id)
  }
   return(dd)
}
# Usage

# ---- demo -----------
# get a single path
path_out <- catalog %>%
  dplyr::filter(
    study_name == "map"
    ,subgroup   == 'male'
    ,model_type == "aehplus"
    ,process_a  == "fev"#,fev100
    ,process_b  == "bstory_im"
  ) %>%
  dplyr::select(file_path) %>% as.character()

# recover observed and modeled data for one model (map and octo only for now)
# ds_long <- recover_data(path_out,long=TRUE,normal_resid = FALSE)
# ds_wide <- recover_data(path_out,long=FALSE, normal_resid = FALSE)
ds_long <- recover_data(path_out,long=TRUE,normal_resid = TRUE)
ds_wide <- recover_data(path_out,long=FALSE, normal_resid = TRUE)

ids <- c(
  2, 3, 11, 25, 36, 42, 43,
  59, 79, 92, 107,113, 116, 120,
  123, 131, 142, 143, 144, 153, 165,
  170, 173, 176, 198, 204, 206, 215,
  220, 223, 233, 236, 239, 245, 257,
  265, 267, 271, 273, 283, 288, 289,
  292, 294, 296, 299, 300, 318
) #%>% as.character()
# ---- graph-1 ---------------------
ds <- ds_long
# set.seed(42)
# ids <- sample(unique(ds$id),48)
g <- ds_wide %>%
  dplyr::mutate(id = as.numeric(id)) %>%
  dplyr::filter(id %in% ids) %>%
  ggplot2::ggplot(aes(x=TIME,group=id))+
  geom_line(aes(y=residual_A), color="red")+
  geom_line(aes(y=residual_B), color="black")+
  geom_abline(slope=0, intercept=0, color='grey', size=1, alpha=1,linetype="dotted")+
  facet_wrap(~id)+
  main_theme +
  theme(
    text = element_text(size=baseSize+1)
  )
g
g %>% quick_save("graph-1",width=1200, height=800, dpi=200)


# ---- graph-2 ----------------------
set.seed(42)
ids <- sample(unique(ds$id),48)
g <- ds_wide %>%
  dplyr::filter(id %in% ids) %>%
  ggplot2::ggplot(aes(x=residual_A, y=residual_B, group=id))+
  geom_point(shape=1)+
  # geom_line()+
  facet_wrap(~id)+
  main_theme +
  theme(
    text = element_text(size=baseSize+1)
  )
g
g %>% quick_save("graph-2",width=1200, height=800, dpi=200)



# ---- graph-1b ----------------------
# plotting all residuals on the same canvass
ids <- sample(unique(ds$id),100)
g <- ds_long %>%
  dplyr::filter(id %in% ids) %>%
  # dplyr::filter(id %in% c(74, 61)) %>%
  # dplyr::filter(source %in% c("residual")) %>%
  ggplot2::ggplot(aes(x=TIME,y=value, group=id)) +
  geom_abline(slope=0, intercept=0, color='red', size=1, alpha=.2)+
  # geom_smooth(aes(group='id'),method="loess", color="blue", size=1, fill="gray80", alpha=.3, na.rm=T) +
  geom_line( alpha=.5)+
  geom_point(shape=1, alpha=.5)+
  facet_grid(process~source)+
  main_theme +
  theme(
    text = element_text(size=baseSize+6)
  )
g
g %>% quick_save("graph-1",width=400, height=500, dpi=100)


# ---- graph-2b ----------------------
set.seed(42)
ids <- sample(unique(ds_wide$id),48)
g <- ds_wide %>%
  dplyr::filter(id %in% ids) %>%
  ggplot2::ggplot(aes(x=residual_A, y=residual_B, group=id,color=id))+
  geom_point(shape=1)+
  geom_line()+
  # facet_wrap(~id)+
  main_theme +
  theme(
    text = element_text(size=baseSize+1)
  )
g
g %>% quick_save("graph-2",width=1200, height=800, dpi=200)


# ---- notepad ----------
ds_wide %>%
  dplyr::filter(id == 198) %>%
  dplyr::select(id,observed_A, observed_B, predicted_A, predicted_B, residual_A, residual_B)


count_miss <- ds_wide %>%
  dplyr::group_by(id) %>%
  dplyr::mutate(
    n_nonmiss_a = length(observed_A) - sum(is.na(observed_A)),
    n_nonmiss_b = length(observed_B) - sum(is.na(observed_B))
  ) %>%
  dplyr::ungroup() %>%
  dplyr::distinct(id,n_nonmiss_a, n_nonmiss_b)

count_miss %>%
  dplyr::group_by(n_nonmiss_a) %>%
  dplyr::count() %>%
  dplyr::mutate(
    cumulative = cumsum(n)
  )

count_miss %>%
  dplyr::group_by(n_nonmiss_b) %>%
  dplyr::count() %>%
  dplyr::mutate(
    cumulative = cumsum(n)
  )

count_miss %>%
  dplyr::group_by(n_nonmiss_a, n_nonmiss_b) %>%
  dplyr::count() %>%
  print(n=100)
