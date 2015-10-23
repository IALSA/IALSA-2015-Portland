get_gh5_data <- function(file=gh5_file){


  mplus.view.plots(gh5_file) # read in a .gh5 file
  (gh5_variables<- mplus.list.variables(gh5_file)) # inspect variables in .gh5
  # extract observed individual - level data from .gh5
  ds_obs <- as.data.frame(t(mplus.get.data(gh5_file,gh5_variables)))
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

  dsL <- tidyr::gather_(ds,"outcome", "observed", c("physical", "cognitive"))
  head(dsL)
  #calculate running age
  dsL$time[dsL$time==999] <- NA
  dsL$observed[dsL$observed==999] <- NA
  dsL$age <- dsL$BAGE + dsL$time + 70
  ## Add descriptive info
  selector <- which(strsplit(gh5_file, '/')[[1]]=='studies')
  dsL[,"study_name"] <- strsplit(gh5_file, '/')[[1]][selector+1]

  model_name <- strsplit(gh5_file, '/')[[1]][5]
  dsL[,'subgroup'] <- strsplit(model_name, '_|.gh5')[[1]][2]
  dsL[,'model_type'] <- strsplit(model_name, '_|.gh5')[[1]][3]
  dsL[,"process1"] <- strsplit(model_name, '_|.gh5')[[1]][4]
  dsL[,"process2"] <- strsplit(model_name, '_|.gh5')[[1]][5]

  head(dsL)
  dsL <- dsL[order(dsL$id), ] # sort for visual inspection
  head(dsL)
  d <- dsL[dsL$id %in% c(1),]
  d


  return(dsL)
}
# get_gh5_data(file = gh5_file )
