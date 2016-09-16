
library("MplusAutomation")
library("IalsaSynthesis")
# load functions to process mplus objects
source("http://www.statmodel.com/mplus-R/mplus.R") # load




catalog <- readr::read_csv("./data/shared/covariance-issue/studies/2-parsed-results-ci.csv")

# ---- function-to-collect-gh5-paths -----------------------------------
get_gh5_path <- function(catalog,study_name,subgroup,model_type,process_a,process_b){
  path_out <- catalog %>%
    # dplyr::filter(   study_name == "elsa" &
    #                    subgroup   == "female" &
    #                    model_type == "aehplus" &
    #                    process_a  == "fev" &
    #                    process_b  == "gait") %>%
    dplyr::filter( study_name == study_name &
                   subgroup   == subgroup &
                   model_type == model_type &
                   process_a  == process_a &
                   process_b  == process_b) %>%
    dplyr::select(file_path) %>% as.data.frame()
  testit::assert("ERROR: more than one model present", sum(duplicated(path_out$file_path))==0L)
  path_out <- as.character(path_out[1,"file_path"])
  (path_gh5 <- gsub(".out",".gh5", path_out))
  return(path_gh5)
}

# path_gh5 <- get_gh5_path(catalog, "elsa", "female", "aehplus", "fev", "gait")
#

get_gh5_data <- function(file, study_name, subgroup, model_type, process_a, process_b, age_center=70){

  path_gh5 <- get_gh5_path(catalog, "elsa", "female", "aehplus", "fev", "gait")

  mplus.view.plots(path_gh5) # read in a .gh5 file
  gh5_variables<- mplus.list.variables(path_gh5) # inspect variables in .gh5
  # extract observed individual - level data from .gh5
  ds_obs <- as.data.frame(t(mplus.get.data(path_gh5,gh5_variables)))
  (names(ds_obs) <- gh5_variables)
  # head(ds_obs)
  ds_obs$id <- 1:nrow(ds_obs) # create person id
  ds_obs <- ds_obs[order(ds_obs$id), ] # sort for visual inspection
  ds_obs[ds_obs$id==1, ] # structure of data for one individual


  # select if starts with "C" and ends in one- or two-digit number (e.g. "C1", "C12")
  (cognitive <- grep("^C[0-9]", names(ds_obs), value=TRUE))
  (physical <- grep("^P[0-9]", names(ds_obs), value=TRUE))
  (time <- grep("^TIME[0-9]", names(ds_obs), value=TRUE))
  cpt <- c(cognitive, physical, time)
  # select all columns that are neither "C", "P", or "TIME"
  stem <- c(gh5_variables[!(gh5_variables %in% cpt)], time)

  a <- ds_obs[,c("id",stem)]
  aL <- tidyr::gather_(a, "wave", "time",time)
  # aL$wave <- NULL
  aL$wave <- gsub("TIME", "", aL$wave)
  aL[aL$id==1,]

  b <- ds_obs[,c("id",physical)]
  bL <- tidyr::gather_(b, "wave","physical", physical)
  bL$wave <- NULL
  bL[bL$id==1,]

  c <- ds_obs[,c("id",cognitive)]
  cL <- tidyr::gather_(c, "wave","cognitive", cognitive)
  cL$wave <- NULL
  cL[cL$id==1, ]

  ds <- cbind(aL, bL, cL)
  head(ds)

  # Compute predictions from factor scores
  ds$physical_fs <- ds$IP + (ds$SP * ds$time)
  ds$cognitive_fs <- ds$IC + (ds$SC * ds$time);head(ds)

  # dsL <- tidyr::gather_(ds,"outcome", "observed", c("physical_observed", "cognitive_observed","physical_fscores", "cognitive_fscores"));head(dsL)
  d <- ds[ ,-which(names(ds) %in% c("physical_fs","cognitive_fs"))] # drop columns by name
  dsL1 <- tidyr::gather_(d,"outcome", "observed", c("physical", "cognitive"));head(dsL1)
  d <- ds[ ,-which(names(ds) %in% c("physical","cognitive"))]
  dsL2 <- tidyr::gather_(d,"outcome", "fscores", c("physical_fs", "cognitive_fs")); head(dsL2)
  dsL <- cbind(dsL1,fscores=dsL2[ ,"fscores"]);head(dsL)
  dsL <- dsL[ ,-which(names(dsL) %in% c("id.1","id.2"))]

  head(dsL)
  #calculate running age
  dsL$time[dsL$time==999] <- NA
  dsL$observed[dsL$observed==999] <- NA
  dsL$fscores[dsL$fscores==999] <- NA
  dsL$age <- dsL$BAGE + dsL$time + age_center

  # remove artificial observation that appears from data manipulations
  for(i in 1:nrow(dsL))
  if(is.na(dsL[i,"observed"])){
    dsL[i,"IP"] <- NA
    dsL[i,"SP"] <- NA
    dsL[i,"SC"] <- NA
    dsL[i,"IC"] <- NA
  }

  ## Add descriptive info

  for(i in 1:nrow(dsL) ){
  dsL[i,"fscores"] <- ifelse(is.na(dsL[i,"observed"]),NA,dsL[i,"fscores"])
  }




  dsL[,"study_name"] <- study_name_check
  dsL[,'subgroup'] <- subgroup_check
  dsL[,'model_type'] <- model_type_check
  dsL[,"process_a"] <- process_a_check
  dsL[,"process_b"] <- process_b_check


  # augment the dsL with the estimates from the .out file
  dsL[,c(R_IPIC,R_SPSC)] <- results[,c(R_IPIC,R_SPSC)]

  # Rename
  dsL <- plyr::rename( dsL,replace=c("IP"= paste0("i_",dsL$process_a[1]) ) )
  dsL <- plyr::rename(dsL,replace=c("SP"= paste0("s_",dsL$process_a[1])))
  dsL <- plyr::rename(dsL,replace=c("IC"= paste0("i_",dsL$process_b[1])))
  dsL <- plyr::rename(dsL,replace=c("SC"= paste0("s_",dsL$process_b[1])))

  head(dsL)
  dsL <- dsL[order(dsL$id), ] # sort for visual inspection
  head(dsL)
  d <- dsL[dsL$id %in% c(1),]
  d

} #close else

  return(dsL)
}
# dsL <- get_gh5_data(file=ls_gh5,
#                     study="eas",
#                     subgroup="male",
#                     model_type="aehplus",
#                     process_a="grip",
#                     process_b="gait")
# head(dsL)
