rm(list = ls())
library(magrittr)

# catalog <- readRDS("./data/shared/derived/pp-spread.rds") # physical-physical track
catalog_spread <- readRDS("./data/shared/derived/pc-spread.rds") # physical-cognitive track
# template for structuring tables for reporting individual models
stencil <- readr::read_csv("./data/shared/tables/study-specific-stencil-v5.csv")
# load lookup function
source("./scripts/functions-table-assembly.R")

single_model <- pull_one_model(
  d           = catalog_spread,
  study_name_ = "eas",
  subgroup_   = "male",
  process_a_  = "pef",
  process_b_  =  "fas",
  model_type_ = "a",
  pretty_     = FALSE
)
# returns:
# > names(a)
# [1] "id"   "coef" "info"
# unique(catalog$study_name)
# view_options(catalog, "octo")

view_options <- function(d, study_name_){
  d2 <- d %>%
    dplyr::filter(
      study_name == study_name_,
      process_a %in% c("fev", "fev100", "pef")
    ) %>%
    dplyr::group_by(process_a, process_b) %>%
    dplyr::summarize(n = n()/47)
  print(d2, n = nrow(d2))
}

view_options_details <- function(d, study_name_){
  d2 <- d %>%
    dplyr::filter(
      study_name == study_name_
      ,process_a %in% c("fev", "fev100", "pef")
      ,model_type %in% c("aehplus")
    ) %>%
    dplyr::group_by(process_a, process_b, model_type, subgroup) %>%
    dplyr::summarize(n = n()/47)
  print(d2, n = nrow(d2))
}


# ---- view-available-models ----------------------
view_options_details(catalog_spread, "eas")
view_options_details(catalog_spread, "elsa") # annie
view_options_details(catalog_spread, "hrs")
view_options_details(catalog_spread, "lasa") # annie
view_options_details(catalog_spread, "map")
view_options_details(catalog_spread, "octo") # annie
view_options_details(catalog_spread, "satsa")

view_options(catalog_spread, "eas")
view_options(catalog_spread, "elsa") # annie
view_options(catalog_spread, "hrs")
# view_options(catalog_spread, "ilse")
view_options(catalog_spread, "lasa") # annie
view_options(catalog_spread, "map")
# view_options(catalog_spread, "nuage")
view_options(catalog_spread, "octo") # annie
view_options(catalog_spread, "satsa")

# ----- --------

block     <- pull_one_model(catalog_spread,"eas","male","pef","block","aehplus")
digit_tot <- pull_one_model(catalog_spread,"eas","male","pef","digit_tot","aehplus")
symbol    <- pull_one_model(catalog_spread,"eas","male","pef","symbol","aehplus")
trailsb   <- pull_one_model(catalog_spread,"eas","male","pef","trailsb","aehplus")

a <- pull_one_model(catalog_spread,"eas","male","pef","block","aehplus")
b <- pull_one_model(catalog_spread,"eas","male","pef","digit_tot","aehplus")
c <- pull_one_model(catalog_spread,"eas","male","pef","symbol","aehplus")
d <- pull_one_model(catalog_spread,"eas","male","pef","trailsb","aehplus")



baking_mix <- list(a,b,c,d)
# how many models will be aggregated across?
length(baking_mix) # study has this many outputs for this configuration /
lapply(baking_mix, names) # each model consists of three elements
# for one model:
baking_mix[[1]]$id # named character list with model identification values
baking_mix[[1]]$coef # 38 by 6 data.frame with model coefficient values
baking_mix[[1]]$info # 6 by 2 data.frame with model information values


bake_the_cake <- function(baking_mix){
# BAKING THE CAKE
# now we will creat a list object in which each element will be
# a 38 by m data.frame with model coefficient values of a given type (est/se/pval)
# first we base fundamental "layers" of the cake: est/se/pval/.../....
  cake_layers <- list()

  model_names <- paste0("model_",1:length(baking_mix))

  for(m in seq_along(model_names)){
    # m <- 1
    a <- baking_mix[[m]][["id"]]
    mid <- paste0(a,sep="-", collapse ="")
    mid <- paste(substr(mid, 1, nchar(mid)-1))
    # names(mid) <- model_names[m]

    cake_layers[["id"]][m] <- mid
    # a <- baking_mix[[1]][["coef"]]["label"]
    # a <- paste(baking_mix[[1]][["coef"]]$label)
    # str(a)
    # cake_layers[['label']][m] <- as.data.frame(noquote(baking_mix[[1]][["coef"]]["label"]))
    # cake_layers[['label']][m] <- baking_mix[[1]][["coef"]]["label"]
    # names(cake_layers[["id"]][m]) <- model_names[m]
    lapply(cake_layers, names)
  for(index in c("est", "se", "pval")){
       # index = "est"
      # for(m in 1:length(baking_mix)){

       cake_layers[[index]][[m]] <- baking_mix[[m]][["coef"]][[index]]

      # cake_layers[[index]][m] <- baking_mix[m][["coef"]][[index]]
   }
  }

  names(cake_layers[["id"]]) <- model_names


# a <- cake_layers$est
# str(a)
  put_stat_frosting <- function(a, row_labels){
    b <- as.data.frame(a,col.names = paste0("model_",1:length(a)))
    b[,"label"] <- row_labels
    # b %>% head()
    # b[1,"model_1"] <- NA
    b[,"mean"] <- apply(b[,model_names],1,mean, na.rm = TRUE)
    b[,"sd"]   <- apply(b[,model_names],1,sd, na.rm = TRUE)
    b[,"min"]  <- apply(b[,model_names],1,min, na.rm = TRUE)
    b[,"max"]  <- apply(b[,model_names],1,max, na.rm = TRUE)
    return(b)
  }

  row_labels <- baking_mix[[1]][["coef"]]["label"]
  for(index in c("est", "se", "pval")){
    # index = "est"
  cake_layers[[index]] <- put_stat_frosting(cake_layers[[index]], row_labels)
  }
  cake_layers[["baking_mix"]] <- baking_mix
  return(cake_layers)
}

cake <- bake_the_cake(baking_mix)
lapply(cake, names) # layers stacked into in a cake
lapply(cake$baking_mix, names) # elements of the baking mix
cake$baking_mix[[1]][["id"]] # model configuration
cake$est

## Now SLICE the cake

slice_the_cake <- function(cake){

  # slice[[1]] <- labels
  # slice[[m]] <- dense of the model
  # slice[[collapsed]] <- collapsing across models (mean, se, pval)

  model_names <- paste0("model_",1:length(cake$baking_mix))
  dense_names <- gsub("model","dense",model_names)


    names_study_name <- c()
    names_subgroup   <- c()
    names_model_type <- c()
    names_process_a  <- c()
    names_process_b  <- c()
    for(m in seq_along(model_names)){
      names_study_name[m] <- as.character(cake$baking_mix[[m]]$id["study_name"])
      names_subgroup[m]   <- as.character(cake$baking_mix[[m]]$id["subgroup"])
      names_model_type[m] <- as.character(cake$baking_mix[[m]]$id["model_type"])
      names_process_a[m]  <- as.character(cake$baking_mix[[m]]$id["process_a"])
      names_process_b[m]  <- as.character(cake$baking_mix[[m]]$id["process_b"])
    }

model_denses <- list()
for(m in seq_along(model_names)){
  coef_raw <- data.frame(
    label = cake$baking_mix[[1]][["coef"]]["label"],
    est  = cake$est[[m]],
    se   = cake$se[[m]],
    pval = cake$pval[[m]]
  )
  model_denses[[m]] <- dense_v1(coef_raw)
}
model_denses <- as.data.frame(model_denses)
names(model_denses) <- names_process_b
model_denses <- cbind(
  cake$baking_mix[[1]][["coef"]]["process"], # process indicator
  cake$baking_mix[[1]][["coef"]]["label"], # label indicator
  model_denses)
# compute summary


for(m in seq_along(model_names)){
  est_raw <- data.frame(
    label = cake$baking_mix[[1]][["coef"]]["label"],
    est_mean  = cake$est["mean"],
    est_sd    = cake$est["sd"]
  )
}
process_a_name <- unique(names_process_a)
testit::assert("Process must be the same across", sum( duplicated(process_a_name))==0L)
model_denses[process_a_name] <- dense_v2(est_raw)
model_denses[process_a_name] <- ifelse(model_denses[,"process"]=="a",model_denses[,process_a_name],"---")

model_denses <- model_denses[c("label")]

slice <- model_denses %>%

return(slice)

}


































