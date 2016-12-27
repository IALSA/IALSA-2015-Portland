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


# ---- declare-globals ---------------------------------------------------------
options(show.signif.stars=T) #Turn off the annotations on p-values
print_format = "html"
# print_format = "pandoc"

# centers MAY be ideosyncratic to the study!! although they should not be
centers <- c(
  "age"          = 70,
  "edu"          = 7,
  "height_male"  =1.72,
  "height_female"=1.6
)

# ---- load-data ---------------------------------------------------------------
# template for structuring tables for reporting individual models
stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil-v10.csv")

# ---- helper-functions ----------------------
quick_save <- function(g,name,width=900,height=400,dpi=100){
  ggplot2::ggsave(
    filename= paste0(name,".jpeg"),
    plot=g,
    device = jpeg,
    path = "./reports/anatomy-pulmonary-1/graphs/",
    width = width,
    height = height,
    # units = "cm",
    dpi = dpi,
    limitsize = FALSE
  )
}

# ---- prepare-data-for-graphing ----------------

# ---- demo ---------------------
# fev - digit_b, matrices
catalog <- read.csv("./data/shared/pc-2-catalog-augmented.csv", header = T,  stringsAsFactors=FALSE)
path_out <- catalog %>%
  dplyr::filter(
    study_name == "map"
    ,subgroup   == 'male'
    ,model_type == "aehplus"
    ,process_a  == "fev"#,fev100
    ,process_b  == "bstory_im"
  ) %>%
  dplyr::select(file_path) %>% as.character()

# (path_out <- list_study_path[["map"]][4])
# recover model data
ls_model <- get_model_data(
  path_out,
  model_components
)
# head(ls_model$data)
# lapply(ls_model, names)
# t(ls_model$catalog)
ls_model <- prep_for_graph(ls_model,centers)
length(unique(ls_model$graphing$id))

ds <- ls_model$graphing

# ds %>%
#   dplyr::group_by(age_group_bl,height_group) %>%
#   dplyr::distinct(id) %>%
#   dplyr::count() %>%
#   # dplyr::summarize(sum = sum(n))
#   print(n=40)



# table(ds$age_group_bl, ds$height_group)

(age_bl_levels <- levels(ls_model$graphing$age_group_bl))
(height_levels <- levels(ls_model$graphing$height_group))

ds <- ls_model$graphing %>%
  dplyr::filter(
    # age_group_bl ==age_bl_levels[1]
    # ,height_group == height_levels[2]
    # ,edu >= 7 & edu <= 12
    # ,height >= 165 & height <= 175
     smoke == "no"
    ,diabetes == "no"
    ,cardio == "no"
    )
ds %>%
  dplyr::group_by(age_group_bl, smoke,cardio,diabetes) %>%
  dplyr::distinct(id) %>%
  dplyr::count() %>%
  print(n=40)
length(unique(ds$id))


ls_model$graphing <- ds

# print factor score scatters
f <- paste0("./reports/anatomy-pulmonary-1/graphs/",gsub(".out","",basename(path_out)),"/",chosen_level,"/")
dir.create(f)
factor_score_scatter(ls_model,"age_group_bl",f,"1-age") #%>% quick_save("1-age",1200,500,300)
factor_score_scatter(ls_model,"edu_group",f,"2-edu")
factor_score_scatter(ls_model,"height_group",f,"3-height")
factor_score_scatter(ls_model,"smoke",f,"4-smoke")
factor_score_scatter(ls_model,"cardio",f,"5-cardio")
factor_score_scatter(ls_model,"diabetes",f,"6-diabetes")

# ---- define-printing-functions ------------------

print_study <- function(study_name, list_study_path){
  for( i in seq_along(list_study_path[[study_name]])){
    (path_out <- list_study_path[[study_name]][i])
    ls_model <- get_model_data(
      path_out,
      model_components,
      center_age = 70 # location at which baseline age was centered
    )
    outcome_pair <- paste0(ls_model$catalog$process_a, "-",ls_model$catalog$process_b)
    model_id <- paste0(
      ls_model$catalog$subgroup, "-",
      ls_model$catalog$model_type, "-",
      outcome_pair
    )
    cat("\n##",model_id,"\n")
    cat("\n### Trajectories","\n")
    observed_predicted(ls_model)
    cat("\n")
    cat("\n### Factor Scores","\n")
    factor_score_scatter(ls_model)
    cat("\n")
    cat("\n### Coefficients","\n")
    # model_parsed <- ls_model$catalog
    t <- proto_table(ls_model$catalog, model_components)
    print(knitr::kable(t,format = "html",align =c("l","c","l","r")  ))
  }
}



# ---- eas ---------------------------
print_study("eas",list_study_path)

# ---- elsa ---------------------------
print_study("elsa",list_study_path)

# ---- hrs ---------------------------
print_study("hrs",list_study_path)

# ---- ilse ---------------------------
print_study("ilse",list_study_path)

# ---- lasa ---------------------------
print_study("lasa",list_study_path)

# ---- map ---------------------------
print_study("map",list_study_path)

# ---- nuage ---------------------------
print_study("nuage",list_study_path)

# ---- octo ---------------------------
print_study("octo",list_study_path)

# ---- satsa ---------------------------
print_study("satsa",list_study_path)
























