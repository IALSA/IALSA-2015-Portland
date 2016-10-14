requireNamespace("plyr", quietly=T) #Data manipulation.
requireNamespace("tidyr", quietly=T) #Data manipulation.
requireNamespace("grid", quietly=T) #Data manipulation.

# function to get a dataset with model solution (one row = one model)
get_ds_model <- function(process1="grip", process2="numbercomp", subgroup="female", wave_count=4){
  # process1 <- "grip"
  # process2 <- "numbercomp"
  pair <- paste0(process1,"_",process2)

  # load in the file with model soluions (row = model)
  rdsPath <- paste0(pathFolder, "/", pair, ".rds")
  ds_model <- readRDS(rdsPath)
  names(ds_model)

  ds_model <- readRDS(rdsPath)
  ds_model <- ds_model[is.na(ds_model$Error),]
  ds_model <- ds_model[ds_model$wave_count==wave_count &
                         ds_model$subgroup==subgroup,]
  ds_model <- ds_model[ ,c("subgroup", "physical_measure","cognitive_measure", "wave_count",
                          "p_GAMMA_00_est","p_GAMMA_10_est","c_GAMMA_10_est","c_GAMMA_00_est",
                          "p_GAMMA_01_est","p_GAMMA_11_est", "c_GAMMA_11_est", "c_GAMMA_01_est",
                          "output_file" )]
  ds_model$gh5_file <- gsub(".out",".gh5", ds_model$output_file)
  ds_model
  return(ds_model)
} # close function
# (ds_model <- get_ds_model(process1="grip", process2="numbercomp"))


# get observed valued from gh5 files (one row  = one person)
get_ds_obs <- function(process1="grip", process2="numbercomp", subgroup="female", wave_count=4){
  ds_model <- get_ds_model(process1=process1, process2=process2, subgroup=subgroup, wave_count=wave_count) #
  pair <- paste0(process1,"_",process2)
  gh5Path <- file.path(pathFolder,pair,ds_model["gh5_file"])

  mplus.view.plots(gh5Path)
  (gh5_variables<- mplus.list.variables(gh5Path)) # inspect variables in .gh5
  # extract observed individual-level data from .gh5
  ds_obs <- as.data.frame(t(mplus.get.data(gh5Path,gh5_variables)))
  (names(ds_obs) <- gh5_variables)
  # head(ds_obs)
  ds_obs$id <- 1:nrow(ds_obs) # create person id
  ds_obs <- ds_obs[order(ds_obs$id), ] # sort for visual inspection
  ds_obs[ds_obs$id==1, ] # structure of data for one individual

  # select if starts with "C" and ends in one- or two-digit number (e.g. "C1", "C12")
  cognitive <- grep("^[C]", names(ds_obs), value=TRUE)
  physical <- grep("^[P]", names(ds_obs), value=TRUE)
  time <- grep("^[T]", names(ds_obs), value=TRUE)
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
   # ds <- dsL

  #calculate running age
  dsL$time[dsL$time==999] <- NA
  dsL$observed[dsL$observed==999] <- NA
  dsL$age <- dsL$BAGE + dsL$time + 70
  head(dsL)
  dsL <- dsL[order(dsL$id), ] # sort for visual inspection
  head(dsL)
  d <- dsL[dsL$id %in% c(1),]
  d

  return(dsL)
}


# ds_obs <- get_ds_obs(process1="grip", process2="numbercomp")



# combine model estimation results and observed values in a graph-ready dataset
get_ds_plot <- function(process1="grip", process2="numbercomp", subgroup="female", wave_count=4,
                        outcome="physical"){

  (ds_model <- get_ds_model(process1="grip", process2="numbercomp", subgroup=subgroup, wave_count=wave_count))
  ds_obs <- get_ds_obs(process1="grip", process2="numbercomp", subgroup=subgroup, wave_count=wave_count)
  ds <- ds_obs[ds_obs$outcome==outcome, ]
  ds[ds$id==1, ]
  # add extracted parameters to the observed data from gh5 file
  add_cols <- colnames(ds_model)
  for(i in add_cols){
    ds[i] <- ds_model[i]
  }

  t(ds[ds$id==1,])

  ds$pBeta0 <- ds$p_GAMMA_00_est + (ds$p_GAMMA_01_est*(ds$BAGE))
  ds$pBeta1 <- ds$p_GAMMA_10_est + (ds$p_GAMMA_11_est*(ds$BAGE))
  ds$cBeta0 <- ds$c_GAMMA_00_est + (ds$c_GAMMA_01_est*(ds$BAGE))
  ds$cBeta1 <- ds$c_GAMMA_10_est + (ds$c_GAMMA_11_est*(ds$BAGE))

  # ds$yhat <- ds$p_GAMMA_00_est + (p_GAMMA_01_est*age)
  M_coeffs <-     c("pBeta0", "pBeta1","cBeta0", "cBeta1")
  Mplus_coeffs <- c("IP",     "SP",     "IC",    "SC" )
  stem <- c("id","BAGE", "wave", "time", "age", "physical_measure", "cognitive_measure")
  ds[1:10,c(Mplus_coeffs, M_coeffs)]

  ds[1:10, c(stem, M_coeffs)]

  for(i in 1:nrow(ds)){
    if(ds$outcome[i]=="physical"){
      ds[["fixed_effects"]][i] <- ds[["pBeta0"]][i] + ds[["pBeta1"]][i]*ds[["time"]][i]
    }else{
    # if(ds$outcome=="cognitive"){
      ds[["fixed_effects"]][i] <- ds[["cBeta0"]][i] + ds[["cBeta1"]][i]*ds[["time"]][i]
    }
  } # close for loop

  for(i in 1:nrow(ds)){
    if(ds$outcome[i]=="physical"){
      ds[["factor_scores"]][i] <- ds[["IP"]][i] + ds[["SC"]][i]*ds[["time"]][i]
    }else{
    # if(ds$outcome=="cognitive"){
      ds[["factor_scores"]][i] <- ds[["IC"]][i] + ds[["SP"]][i]*ds[["time"]][i]
    }
  } # close for loop

  ds[ds$id==2, c(stem, M_coeffs,"outcome", "fixed_effects","factor_scores")]

  return(ds)
} # close get_ds_plot
# function get_ds_plot() sources the function get_ds_model() and get_ds_obs()


get_ds_Plot <- function(process1 = "grip", process2 = "numbercomp", wave_count=4){
  female <- list() # list for the model fit to  the female subgroup
  female[["physical"]] <- get_ds_plot(process1 = process1, process2 = process2,  wave_count=wave_count,
                                 subgroup = "female", outcome = "physical")
  female[["cognitive"]] <- get_ds_plot(process1 = process1, process2 = process2,  wave_count=wave_count,
                                 subgroup = "female", outcome = "cognitive")
  male <- list() # list for the model fit to the male subgroup
  male[["physical"]] <- get_ds_plot(process1 = process1, process2 = process2,  wave_count=wave_count,
                                 subgroup = "male", outcome = "physical")
  male[["cognitive"]] <- get_ds_plot(process1 = process1, process2 = process2, wave_count=wave_count,
                                 subgroup = "male", outcome = "cognitive")
  lsPlot <- list() # list for the outcome pair
  lsPlot[["female"]] <- female
  lsPlot[["male"]]<- male
  names(lsPlot)
  lapply(lsPlot,names)
  return(lsPlot)
}



vpLayout <- function(rowIndex, columnIndex) { return( viewport(layout.pos.row=rowIndex, layout.pos.col=columnIndex) ) }

kb_fans <- function(process1="grip", process2="numbercomp", wave_count=13,
                     subgroup="female", outcome="cognitive", sample=length(unique(ds$id))){

  lsPlot <- get_ds_Plot(process1=process1, process2=process2, wave_count=wave_count) # disable after first run
  ds <- plyr::ldply(lsPlot[[subgroup]][outcome], data.frame)

  set.seed(42)
  (small_sample <- sample(unique(ds$id),sample))
  ds <- ds[ds$id %in% small_sample, ]


  a <- make_plot(d=ds, temporal="time", dv_name="observed")
  b <- make_plot(d=ds, temporal="time", dv_name="fixed_effects")
  c <- make_plot(d=ds, temporal="time", dv_name="factor_scores")
  d <- make_plot(d=ds, temporal="age", dv_name="observed")
  e <- make_plot(d=ds, temporal="age", dv_name="fixed_effects")
  f <- make_plot(d=ds, temporal="age", dv_name="factor_scores")


  # a <- a + xlab("Point Estimate | Standard Error") + ylab("Waves analyzed")
  # b <- b + xlab("Point Estimate | Standard Error") + ylab("Waves analyzed")
  # c <- c + xlab("p-value | Wald test") + ylab("Waves analyzed")
  # d <- d + xlab("p-value | Wald test") + ylab("Waves analyzed")

  # b <- b + geom_vline(xintercept=0, color="firebrick3",linetype="dashed", size=.5, alpha=.5 )
  # d <- d + geom_vline(xintercept=0, color="firebrick3",linetype="dashed", size=.5, alpha=.5 )

  bottom_age <- 60
  top_age <- 100
  # age_step <- 5
  bottom_time <- 0
  top_time <- 20
  # time_step <- 1

  a <- a + scale_x_continuous(breaks=seq(bottom_time,top_time,by=5), limits=c(bottom_time,top_time))
  b <- b + scale_x_continuous(breaks=seq(bottom_time,top_time,by=5), limits=c(bottom_time,top_time))
  c <- c + scale_x_continuous(breaks=seq(bottom_time,top_time,by=5), limits=c(bottom_time,top_time))

  d <- d + scale_x_continuous(breaks=seq(bottom_age,top_age,by=5), limits=c(bottom_age,top_age))
  e <- e + scale_x_continuous(breaks=seq(bottom_age,top_age,by=5), limits=c(bottom_age,top_age))
  f <- f + scale_x_continuous(breaks=seq(bottom_age,top_age,by=5), limits=c(bottom_age,top_age))

  bottom_y <- 0
  top_y <- 100
  a <- a + scale_y_continuous(breaks=seq(bottom_y,top_y,by=5), limits=c(bottom_y,top_y))
  b <- b + scale_y_continuous(breaks=seq(bottom_y,top_y,by=5), limits=c(bottom_y,top_y))
  c <- c + scale_y_continuous(breaks=seq(bottom_y,top_y,by=5), limits=c(bottom_y,top_y))
  d <- d + scale_y_continuous(breaks=seq(bottom_y,top_y,by=5), limits=c(bottom_y,top_y))
  e <- e + scale_y_continuous(breaks=seq(bottom_y,top_y,by=5), limits=c(bottom_y,top_y))
  f <- f + scale_y_continuous(breaks=seq(bottom_y,top_y,by=5), limits=c(bottom_y,top_y))

  # b <- b + scale_y_continuous(limits=c(-5,5 ))
  grid::grid.newpage()
  #Defnie the relative proportions among the panels in the mosaic.
  layout <- grid::grid.layout(nrow=2, ncol=3,
                        widths=grid::unit(c(.33, .33, .33) ,c("null", "null","null")),
                        heights=grid::unit(c(.5,.5), c("null", "null"))
  )
  grid::pushViewport(grid::viewport(layout=layout))
  print(a, vp=grid::viewport(layout.pos.col=1, layout.pos.row=1))
  print(b, vp=grid::viewport(layout.pos.col=2, layout.pos.row=1))
  print(c, vp=grid::viewport(layout.pos.col=3, layout.pos.row=1))

  print(d, vp=grid::viewport(layout.pos.col=1, layout.pos.row=2))
  print(e, vp=grid::viewport(layout.pos.col=2, layout.pos.row=2))
  print(f, vp=grid::viewport(layout.pos.col=3, layout.pos.row=2))

  grid::popViewport(0)
   # return(c)
} # close kb_fans
# kb_fans(process1="grip", process2="numbercomp", wave_count=4,
#                      subgroup="female", outcome="cognitive", sample=10)

kb_fans_cell <- function(process1="grip", process2="numbercomp", wave_count=13,
                     subgroup="female", outcome="cognitive",
                     temporal_name="age", dv_name="fixed_effected", sample=length(unique(ds$id))){

  lsPlot <- get_ds_Plot(process1=process1, process2=process2, wave_count=wave_count) # disable after first run
  ds <- plyr::ldply(lsPlot[[subgroup]][outcome], data.frame)

  set.seed(42)
  (small_sample <- sample(unique(ds$id),sample))
  ds <- ds[ds$id %in% small_sample, ]

  g <- make_plot(d=ds, temporal_name=temporal_name, dv_name=dv_name)
  return(g)
} # close kb_fans_cell

# kb_fans_cell(process1="grip", process2="numbercomp", wave_count=13,
#                      subgroup="female", outcome="cognitive",
#              temporal_name="age", dv_name="fixed_effected", sample=10)



# combine a series of plots (png) into an animated GIF
make_gif_waves <- function(process1="grip", process2="numbercomp"){}





