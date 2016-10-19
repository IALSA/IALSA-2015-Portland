rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

# ---- load-sources ------------------------------------------------------------
#Load any source files that contain/define functions, but that don't load any other types of variables
#   into memory.  Avoid side effects and don't pollute the global environment.
# basic lookup function
source("./scripts/model-lookup-function.R")
# load lookup function
source("./scripts/functions-table-assembly.R")

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
print_format <- "pandoc"
# print_format <- "html"

# ---- load-data ---------------------------------------------------------------
catalog <- read.csv("./data/shared/pc-2-parsed-results-computed_ci.csv", header = T,  stringsAsFactors=FALSE)
catalog_spread <- readRDS("./data/shared/derived/pc-spread.rds")
# template for structuring tables for reporting individual models
# stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil-v7.csv")
stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil-v8.csv")

# ---- explorations -------------------------------------------
catalog_spread %>% view_options(
   study_name_ ="lasa"
  ,full_id = F
  # ,subgroups = c("female")
  # ,model_types = c("aehplus")
  # ,processes_a = "fev"
  # ,processes_b = "word_de"
)


# ---- print-functions -----------------

print_bisr_spread <- function(
  d
  ,study_name
  ,subgroup
  ,pivot_
  ,target_names
  ,target_labels
  # ,processes_b_
){
  # cat("\\n",paste0("Study = _",toupper(study_name),"_; Gender = _",subgroup_,"_; Process (a) = _",pivot,"_\\n"))
  cat("\n ")
  ls <- list()
  for(i in seq_along(target_names)){
    # i <- 1
    ls[[i]] <-  spread_model_type(
      d = catalog
      ,study_name_  = study_name#"lasa"
      ,subgroup_    = subgroup#"male"
      ,pivot        = pivot_#"pef"# pivot#"pef"
      ,target_name  = target_names[i] # cr_slopes_est
      ,target_label = target_labels[i]
      # ,processes_b  = processes_b_
    )
    print(
      knitr::kable(
        ls[[i]]
        # ,format = print_format
        ,format = "pandoc"
        ,align = c("l","r","r","r","r","r","r","r")
      )
    )
    cat("\n")
  }
}


print_outcome_pairs <- function(
  d
  ,study
  ,gender
  ,outcome
  ,model_type_standard
  ,model_type_set
){
  # d                   = catalog_spread
  # study               = "lasa" #'elsa'
  # gender              = "male"
  # outcome             = "pef"# "fev"
  # model_type_standard = model_type_standard#"aehplus" # spread at outcome pair level
  # model_type_set      = model_type_set#c("a", "ae", "aeh", "aehplus", "full") # spread at model type level

  # browser()
    dtemp <- d %>%
      dplyr::filter(
        study_name == study
        ,subgroup == gender
        ,process_a == outcome
      )
    processes_b <- sort(unique(dtemp$process_b))

    cat("\n",paste0("Gender = _",gender,"_; Model type: _",model_type_standard,"_;  Process (a) = _",outcome,"_; Process (b): ",  paste0("*",processes_b,"*", collapse = ", "),"\n"))

    print(
      knitr::kable(
        serve_slice_process_a(
           d          = d
          ,study_name = study#"eas"
          ,subgroup   = gender#"female"
          ,model_type = model_type_standard#"aehplus"
          ,process_a  = outcome#"pef"
          ,mask_not   = c("a","aa")
        )
      # ,format = "html"
      ,format = print_format
      ,align  = c("c", "l", "r", "r", "r", "r", "r")
      )
    )
    for(i in processes_b ){
      # i <- "letter"
      cat("\n## ",i,"\n")
      cat("\n",paste0("Gender = _",gender,"_;  Process (a) = *",outcome,"*; Process (b) = _",i,"_"))
      cat("\n")
      print(
        knitr::kable(
          serve_slice_model_type(
            d            =  d
            , study_name = study#"eas"
            , subgroup   = gender#"female"
            , model_type = model_type_set#
            , process_a  = outcome#"pef"
            , process_b  = i
          )
        # ,format = "html"
          ,format =print_format
         ,align  = c("c", "l", "r", "r", "r", "r", "r")
        )
      )
    }
  }



# ---- eas ---------------------------------------------------------
study <- 'eas'
outcome <- "pef"
model_type_standard <- "aehplus" # spread at outcome pair level
# model_type_set <- c("a", "ae", "aeh", "aehplus", "full") # spread at model type level
model_type_set <- c("a", "ae", "aeh", "aehplus","full") # spread at model type level


cat("\n# Available models \n")
print(cat("\n",paste0("Study **",toupper(study),"** have contributed the following outcome pairs to the IASLA-2015-Portland model pool:"),"\n"))
cat("\n")
print(
  knitr::kable(
    view_options(catalog_spread
                 ,study_name_ = study#"eas"
                 ,full_id     = F
                 ,subgroups   = c("female","male")
                 ,processes_a = outcome#"pef"
    )
    # ,format = "html"
    ,format = print_format
  )
)
cat("\n")
for(gender in c("female","male")){
  cat("\n")
  print(
    knitr::kable(
      view_options(catalog_spread
                   ,study_name_ = study#"eas"
                   ,full_id     = T
                   ,subgroups   = gender
                   ,processes_a = outcome#"pef"
      )
    # ,format = "html"
    ,format = print_format
   )
  )
  cat("\n")
}

for(gender in c("female","male")){
  # if(gender == "female"){
  #   processes_b <- c("block", "digit_tot","symbol", "trailsb")
  # }else{ # covariate sets may differ by gender, both must have the standard "aehplus"
  #   processes_b <- c("block", "digit_tot","symbol", "trailsb") # fas would break it no standard
  # }
  cat("\n#",gender,"\n")
  print_outcome_pairs(
    d = catalog_spread
    ,study = study#'eas'
    ,gender = gender
    ,outcome = outcome#"pef"
    ,model_type_standard = model_type_standard#"aehplus" # spread at outcome pair level
    ,model_type_set = model_type_set#c("a", "ae", "aeh", "aehplus", "full") # spread at model type level
  )
  cat("\n## Summary","\n")
  cat("\n",paste0("Study = _",toupper(study),"_; Gender = _",gender,"_; Process (a) = _",outcome,"_\n"))
  print_bisr_spread(
    d = catalog
    ,study_name    = study
    ,subgroup      = gender
    ,pivot         = outcome
    ,target_names  = c(
       "cr_levels_est"
      ,"cr_slopes_est"
      ,"cr_resid_est")
    ,target_labels = c(
       "Correlation of Levels"
      ,"Correlation of Slopes"
      ,"Correlation of Residuals")
    # ,processes_b_  = processes_b
  )
  cat("\n")
}

# elsa has only "aehplus" form
# ---- elsa ---------------------------------------------------------
study <- 'elsa'
outcome <- "fev"
model_type_standard <- "aehplus" # spread at outcome pair level
# model_type_set <- c("a", "ae", "aeh", "aehplus", "full") # spread at model type level
model_type_set <- c("a", "ae", "aeh", "aehplus","full") # spread at model type level


cat("\n# Available models \n")
print(cat("\n",paste0("Study **",toupper(study),"** have contributed the following outcome pairs to the IASLA-2015-Portland model pool:"),"\n"))
cat("\n")
print(
  knitr::kable(
    view_options(catalog_spread
                 ,study_name_ = study#"eas"
                 ,full_id     = F
                 ,subgroups   = c("female","male")
                 ,processes_a = outcome#"pef"
    )
    # ,format = "html"
    ,format = print_format
  )
)
cat("\n")
for(gender in c("female","male")){
  cat("\n")
  print(
    knitr::kable(
      view_options(catalog_spread
                   ,study_name_ = study#"eas"
                   ,full_id     = T
                   ,subgroups   = gender
                   ,processes_a = outcome#"pef"
      )
      # ,format = "html"
      ,format = print_format
    )
  )
  cat("\n")
}

for(gender in c("female","male")){
  # if(gender == "female"){
  #   processes_b <- c("block", "digit_tot","symbol", "trailsb")
  # }else{ # covariate sets may differ by gender, both must have the standard "aehplus"
  #   processes_b <- c("block", "digit_tot","symbol", "trailsb") # fas would break it no standard
  # }
  cat("\n#",gender,"\n")
  print_outcome_pairs(
    d = catalog_spread
    ,study = study#'eas'
    ,gender = gender
    ,outcome = outcome#"pef"
    ,model_type_standard = model_type_standard#"aehplus" # spread at outcome pair level
    ,model_type_set = model_type_set#c("a", "ae", "aeh", "aehplus", "full") # spread at model type level
  )
  cat("\n## Summary","\n")
  cat("\n",paste0("Study = _",toupper(study),"_; Gender = _",gender,"_; Process (a) = _",outcome,"_\n"))
  print_bisr_spread(
    d = catalog
    ,study_name    = study
    ,subgroup      = gender
    ,pivot         = outcome
    ,target_names  = c(
      "cr_levels_est"
      ,"cr_slopes_est"
      ,"cr_resid_est")
    ,target_labels = c(
      "Correlation of Levels"
      ,"Correlation of Slopes"
      ,"Correlation of Residuals")
    # ,processes_b_  = processes_b
  )
  cat("\n")
}

# ---- hrs ---------------------------------------------------------
study <- 'hrs'
outcome <- "pef"
model_type_standard <- "aehplus" # spread at outcome pair level
# model_type_set <- c("a", "ae", "aeh", "aehplus", "full") # spread at model type level
model_type_set <- c("a", "ae", "aeh", "aehplus","full") # spread at model type level


cat("\n# Available models \n")
print(cat("\n",paste0("Study **",toupper(study),"** have contributed the following outcome pairs to the IASLA-2015-Portland model pool:"),"\n"))
cat("\n")
print(
  knitr::kable(
    view_options(catalog_spread
                 ,study_name_ = study#"eas"
                 ,full_id     = F
                 ,subgroups   = c("female","male")
                 ,processes_a = outcome#"pef"
    )
    # ,format = "html"
    ,format = print_format
  )
)
cat("\n")
for(gender in c("female","male")){
  cat("\n")
  print(
    knitr::kable(
      view_options(catalog_spread
                   ,study_name_ = study#"eas"
                   ,full_id     = T
                   ,subgroups   = gender
                   ,processes_a = outcome#"pef"
      )
      # ,format = "html"
      ,format = print_format
    )
  )
  cat("\n")
}

for(gender in c("female","male")){
  # if(gender == "female"){
  #   processes_b <- c("block", "digit_tot","symbol", "trailsb")
  # }else{ # covariate sets may differ by gender, both must have the standard "aehplus"
  #   processes_b <- c("block", "digit_tot","symbol", "trailsb") # fas would break it no standard
  # }
  cat("\n#",gender,"\n")
  print_outcome_pairs(
    d = catalog_spread
    ,study = study#'eas'
    ,gender = gender
    ,outcome = outcome#"pef"
    ,model_type_standard = model_type_standard#"aehplus" # spread at outcome pair level
    ,model_type_set = model_type_set#c("a", "ae", "aeh", "aehplus", "full") # spread at model type level
  )
  cat("\n## Summary","\n")
  cat("\n",paste0("Study = _",toupper(study),"_; Gender = _",gender,"_; Process (a) = _",outcome,"_\n"))
  print_bisr_spread(
    d = catalog
    ,study_name    = study
    ,subgroup      = gender
    ,pivot         = outcome
    ,target_names  = c(
      "cr_levels_est"
      ,"cr_slopes_est"
      ,"cr_resid_est")
    ,target_labels = c(
      "Correlation of Levels"
      ,"Correlation of Slopes"
      ,"Correlation of Residuals")
    # ,processes_b_  = processes_b
  )
  cat("\n")
}

# ---- octo ---------------------------------------------------------
study <- 'octo'
outcome <- "pef"
model_type_standard <- "aehplus" # spread at outcome pair level
# model_type_set <- c("a", "ae", "aeh", "aehplus", "full") # spread at model type level
model_type_set <- c("a", "ae", "aeh", "aehplus","full") # spread at model type level


cat("\n# Available models \n")
print(cat("\n",paste0("Study **",toupper(study),"** contains the following outcome pairs:"),"\n"))
cat("\n")
print(
  knitr::kable(
    view_options(catalog_spread
                 ,study_name_ = study#"eas"
                 ,full_id     = F
                 ,subgroups   = c("female","male")
                 ,processes_a = outcome#"pef"
    )
    # ,format = "html"
    ,format = print_format
  )
)
cat("\n")
for(gender in c("female","male")){
  cat("\n")
  print(
    knitr::kable(
      view_options(catalog_spread
                   ,study_name_ = study#"eas"
                   ,full_id     = T
                   ,subgroups   = gender
                   ,processes_a = outcome#"pef"
      )
      # ,format = "html"
      ,format = print_format
    )
  )
  cat("\n")
}

for(gender in c("female","male")){
  # if(gender == "female"){
  #   processes_b <- c("word_de", "word_im")
  # }else{ # covariate sets may differ by gender, both must have the standard "aehplus"
  #   processes_b <- c("word_de", "word_im")
  # }
  cat("\n#",gender,"\n")
  print_outcome_pairs(
    d = catalog_spread
    ,study = study#'eas'
    ,gender = gender
    ,outcome = outcome#"pef"
    ,model_type_standard = model_type_standard#"aehplus" # spread at outcome pair level
    ,model_type_set = model_type_set#c("a", "ae", "aeh", "aehplus", "full") # spread at model type level
  )
  cat("\n## Summary","\n")
  cat("\n",paste0("Study = _",toupper(study),"_; Gender = _",gender,"_; Process (a) = _",outcome,"_\n"))
  print_bisr_spread(
    d = catalog
    ,study_name    = study
    ,subgroup      = gender
    ,pivot         = outcome
    ,target_names  = c(
      "cr_levels_est"
      ,"cr_slopes_est"
      ,"cr_resid_est")
    ,target_labels = c(
      "Correlation of Levels"
      ,"Correlation of Slopes"
      ,"Correlation of Residuals")
    # ,processes_b_  = processes_b
  )
  cat("\n")
}

# lasa has only "aehplus" form
# ---- lasa ---------------------------------------------------------
study <- 'lasa'
outcome <- "pef"
model_type_standard <- "aehplus" # spread at outcome pair level
# model_type_set <- c("a", "ae", "aeh", "aehplus", "full") # spread at model type level
model_type_set <- c("a", "ae", "aeh", "aehplus","full") # spread at model type level


cat("\n# Available models \n")
print(cat("\n",paste0("Study **",toupper(study),"** contains the following outcome pairs:"),"\n"))
cat("\n")
print(
  knitr::kable(
    view_options(catalog_spread
                 ,study_name_ = study#"eas"
                 ,full_id     = F
                 ,subgroups   = c("female","male")
                 ,processes_a = outcome#"pef"
    )
    # ,format = "html"
    ,format = print_format
  )
)
cat("\n")
for(gender in c("female","male")){
  cat("\n")
  print(
    knitr::kable(
      view_options(catalog_spread
                   ,study_name_ = study#"eas"
                   ,full_id     = T
                   ,subgroups   = gender
                   ,processes_a = outcome#"pef"
      )
      # ,format = "html"
      ,format = print_format
    )
  )
  cat("\n")
}

for(gender in c("female","male")){
  # if(gender == "female"){
  #   processes_b <- c("word_de", "word_im")
  # }else{ # covariate sets may differ by gender, both must have the standard "aehplus"
  #   processes_b <- c("word_de", "word_im")
  # }
  cat("\n#",gender,"\n")
  print_outcome_pairs(
    d = catalog_spread
    ,study = study#'eas'
    ,gender = gender
    ,outcome = outcome#"pef"
    ,model_type_standard = model_type_standard#"aehplus" # spread at outcome pair level
    ,model_type_set = model_type_set#c("a", "ae", "aeh", "aehplus", "full") # spread at model type level
  )
  cat("\n## Summary","\n")
  cat("\n",paste0("Study = _",toupper(study),"_; Gender = _",gender,"_; Process (a) = _",outcome,"_\n"))
  print_bisr_spread(
    d = catalog
    ,study_name    = study
    ,subgroup      = gender
    ,pivot         = outcome
    ,target_names  = c(
      "cr_levels_est"
      ,"cr_slopes_est"
      ,"cr_resid_est")
    ,target_labels = c(
      "Correlation of Levels"
      ,"Correlation of Slopes"
      ,"Correlation of Residuals")
    # ,processes_b_  = processes_b
  )
  cat("\n")
}

# ---- map ---------------------------------------------------------
study <- 'map'
outcome <- "fev"
model_type_standard <- "aehplus" # spread at outcome pair level
# model_type_set <- c("a", "ae", "aeh", "aehplus", "full") # spread at model type level
model_type_set <- c("a", "ae", "aeh", "aehplus","full") # spread at model type level


cat("\n# Available models \n")
print(cat("\n",paste0("Study **",toupper(study),"** contains the following outcome pairs:"),"\n"))
cat("\n")
print(
  knitr::kable(
    view_options(catalog_spread
                 ,study_name_ = study#"eas"
                 ,full_id     = F
                 ,subgroups   = c("female","male")
                 ,processes_a = outcome#"pef"
    )
    # ,format = "html"
    ,format = print_format
  )
)
cat("\n")
for(gender in c("female","male")){
  cat("\n")
  print(
    knitr::kable(
      view_options(catalog_spread
                   ,study_name_ = study#"eas"
                   ,full_id     = T
                   ,subgroups   = gender
                   ,processes_a = outcome#"pef"
      )
      # ,format = "html"
      ,format = print_format
    )
  )
  cat("\n")
}

for(gender in c("female","male")){
  # if(gender == "female"){
  #   processes_b <- c("word_de", "word_im")
  # }else{ # covariate sets may differ by gender, both must have the standard "aehplus"
  #   processes_b <- c("word_de", "word_im")
  # }
  cat("\n#",gender,"\n")
  print_outcome_pairs(
    d = catalog_spread
    ,study = study#'eas'
    ,gender = gender
    ,outcome = outcome#"pef"
    ,model_type_standard = model_type_standard#"aehplus" # spread at outcome pair level
    ,model_type_set = model_type_set#c("a", "ae", "aeh", "aehplus", "full") # spread at model type level
  )
  cat("\n## Summary","\n")
  cat("\n",paste0("Study = _",toupper(study),"_; Gender = _",gender,"_; Process (a) = _",outcome,"_\n"))
  print_bisr_spread(
    d = catalog
    ,study_name    = study
    ,subgroup      = gender
    ,pivot         = outcome
    ,target_names  = c(
      "cr_levels_est"
      ,"cr_slopes_est"
      ,"cr_resid_est")
    ,target_labels = c(
      "Correlation of Levels"
      ,"Correlation of Slopes"
      ,"Correlation of Residuals")
    # ,processes_b_  = processes_b
  )
  cat("\n")
}

# ---- satsa ---------------------------------------------------------
study <- 'satsa'
outcome <- "fev"
model_type_standard <- "aehplus" # spread at outcome pair level
# model_type_set <- c("a", "ae", "aeh", "aehplus", "full") # spread at model type level
model_type_set <- c("a", "ae", "aeh", "aehplus","full") # spread at model type level


cat("\n# Available models \n")
print(cat("\n",paste0("Study **",toupper(study),"** contains the following outcome pairs:"),"\n"))
cat("\n")
print(
  knitr::kable(
    view_options(catalog_spread
                 ,study_name_ = study#"eas"
                 ,full_id     = F
                 ,subgroups   = c("female","male")
                 ,processes_a = outcome#"pef"
    )
    # ,format = "html"
    ,format = print_format
  )
)
cat("\n")
for(gender in c("female","male")){
  cat("\n")
  print(
    knitr::kable(
      view_options(catalog_spread
                   ,study_name_ = study#"eas"
                   ,full_id     = T
                   ,subgroups   = gender
                   ,processes_a = outcome#"pef"
      )
      # ,format = "html"
      ,format = print_format
    )
  )
  cat("\n")
}

for(gender in c("female","male")){
  # if(gender == "female"){
  #   processes_b <- c("word_de", "word_im")
  # }else{ # covariate sets may differ by gender, both must have the standard "aehplus"
  #   processes_b <- c("word_de", "word_im")
  # }
  cat("\n#",gender,"\n")
  print_outcome_pairs(
    d = catalog_spread
    ,study = study#'eas'
    ,gender = gender
    ,outcome = outcome#"pef"
    ,model_type_standard = model_type_standard#"aehplus" # spread at outcome pair level
    ,model_type_set = model_type_set#c("a", "ae", "aeh", "aehplus", "full") # spread at model type level
  )
  cat("\n## Summary","\n")
  cat("\n",paste0("Study = _",toupper(study),"_; Gender = _",gender,"_; Process (a) = _",outcome,"_\n"))
  print_bisr_spread(
    d = catalog
    ,study_name    = study
    ,subgroup      = gender
    ,pivot         = outcome
    ,target_names  = c(
      "cr_levels_est"
      ,"cr_slopes_est"
      ,"cr_resid_est")
    ,target_labels = c(
      "Correlation of Levels"
      ,"Correlation of Slopes"
      ,"Correlation of Residuals")
    # ,processes_b_  = processes_b
  )
  cat("\n")
}





# ---- session-info ---------------------
cat("\n#Session Info")
sessionInfo()






