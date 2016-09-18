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
names(baking_mix)
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
  put_stat_frosting <- function(a){
    b <- as.data.frame(a,col.names = paste0("model_",1:length(a)))
    # b %>% head()
    # b[1,"model_1"] <- NA
    b[,"mean"] <- apply(b[,model_names],1,mean, na.rm = TRUE)
    b[,"sd"]   <- apply(b[,model_names],1,sd, na.rm = TRUE)
    b[,"min"]  <- apply(b[,model_names],1,min, na.rm = TRUE)
    b[,"max"]  <- apply(b[,model_names],1,max, na.rm = TRUE)
    return(b)
  }

  for(index in c("est", "se", "pval")){
    # index = "est"
  cake_layers[[index]] <- put_stat_frosting(cake_layers[[index]])
  }
  return(cake_layers)
}

cake_layers <- bake_the_cake(baking_mix)

b <- put_stat_frosting(a)

b <- as.data.frame(a,col.names = paste0("model_",1:length(a)))
b %>% head()
b[1,"model_1"] <- NA
b[,"mean"] <- apply(b,1,mean, na.rm = TRUE)
b[,"sd"]   <- apply(b,1,sd, na.rm = TRUE)
b[,"min"]  <- apply(b,1,min, na.rm = TRUE)
b[,"max"]  <- apply(b,1,max, na.rm = TRUE)

b %>% head()

c <- b %>%
  dplyr::mutate(
    mean = mean()
  )



for(i in 1:length(a)){

  b[,i] <- a[[i]]
}
for(i in 1:length(a)){
  b[i] <- a[[i]]
  v1 <- a[[1]]
  v2 <- a[[2]]
  v3 <- a[[3]]

  d <- as.data.frame()


}
names(b) <- paste0("V",1:length(b))
temp <- b



table
a <- cake_layers$est
a <- cake_layers
str(a)

b <- plyr::ldply(a, data.frame)

cake_layers$est

str(cake_layers$est)
lapply(cake_layers$est, 2, sum)

cake_layers[["dense"]] <- ...

cake_layers[["est"]]$mean <- mean(cake_layers[["est"]][,1:4])


a <- cake_layers[["est"]]
str(a)
a[1]
a[[1]]


  lapply(cake_layers, names)
  cake_layers$est$

  lapply(baking_mix, names)



































