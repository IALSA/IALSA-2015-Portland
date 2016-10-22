rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.

source("./scripts/mplus/group-variables.R")
source("./scripts/mplus/extraction-functions.R")
source("./scripts/mplus/mplus.R")
source("./scripts/graphs/main_theme.R") # pre-sets and options for graphing
# path <- "./data/shared/covariance-issue/annie/studies/octo/physical/b1_female_aehplus_grip_gait.out"
# model_parsed <- collect_result(path)
# mode_parsed_spread <-
# t(model_parsed)

# baseSize = 10

########################
##### Data   ###########
#######################

get_model_data <- function(
  folder,
  path_out,
  center_age

){
  # folder = "./data/shared/covariance-issue/annie/studies/octo/physical"
  # path_out ="b1_female_aehplus_grip_gait.out"
  # center_age = 70

  (out_path <- file.path(folder,path_out))
  model_parsed <- collect_result(out_path)
  model_parsed <- rename_columns_in_catalog(model_parsed)

  (path_gh5 <- gsub(".out",".gh5", model_parsed$file_path))
  testit::assert(".gh5 file does not exist", file.exists(path_gh5) )

  mplus.view.plots(path_gh5) # read in a .gh5 file
  (gh5_variables<- mplus.list.variables(path_gh5)) # inspect variables in .gh5
  # extract observed individual - level data from .gh5
  ds_obs <- as.data.frame(t(mplus.get.data(path_gh5,gh5_variables)))
  (names(ds_obs) <- gh5_variables)
  head(ds_obs)
  ds_obs$id <- 1:nrow(ds_obs) # create person id
  ds_obs <- ds_obs[order(ds_obs$id), ] # sort for visual inspection
  ds_obs[ds_obs$id==1, ] # structure of data for one individual
  head(ds_obs)

  # select if starts with "C" and ends in one- or two-digit number (e.g. "C1", "C12")
  (process_a <- grep("^P[0-9]", names(ds_obs), value=TRUE))
  (process_b <- grep("^C[0-9]", names(ds_obs), value=TRUE))
  (time <- grep("^TIME[0-9]", names(ds_obs), value=TRUE))
  (cpt <- c(process_a, process_b, time))
  # select all columns that are neither "C", "P", or "TIME"
  (stem <- c(gh5_variables[!(gh5_variables %in% cpt)], time))

  a <- ds_obs[,c("id",stem)]
  aL <- tidyr::gather_(a, "wave", "time",time)
  aL$wave <- gsub("TIME", "", aL$wave)
  aL[aL$id==1,]

  b <- ds_obs[,c("id",process_a)]
  bL <- tidyr::gather_(b, "wave","process_a", process_a)
  bL$wave <- gsub("^P","", bL$wave)
  bL[bL$id==1,]

  c <- ds_obs[,c("id",process_b)]
  cL <- tidyr::gather_(c, "wave","process_b", process_b)
  cL$wave <- gsub("^C","", cL$wave)
  cL[cL$id==1, ]

  ds <- merge(aL, bL,by=c("id","wave"))
  ds <- merge(ds, cL, by = c("id","wave"))

  ds <- ds %>%
    dplyr::mutate(
      wave = as.integer(wave)
    )
  head(ds)

  #replace missing codes
  ds$time[ds$time==999] <- NA
  ds$process_a[ds$process_a==999] <- NA
  ds$process_b[ds$process_b==999] <- NA


  # Compute predictions from factor scores
  ds$process_a_fs <- ds$IP + (ds$SP * ds$time)
  ds$process_b_fs <- ds$IC + (ds$SC * ds$time);head(ds)
  head(ds)
  # dsL <- tidyr::gather_(ds,"outcome", "observed", c("physical_observed", "cognitive_observed","physical_fscores", "cognitive_fscores"));head(dsL)
  d <- ds[ ,-which(names(ds) %in% c("process_a_fs","process_b_fs"))] # drop columns by name
  dsL1 <- tidyr::gather_(d,"outcome", "observed", c("process_a", "process_b"));head(dsL1)
  d <- ds[ ,-which(names(ds) %in% c("process_a","process_b"))]
  dsL2 <- tidyr::gather_(d,"outcome", "fscores", c("process_a_fs", "process_b_fs")); head(dsL2)
  dsL3 <- cbind(dsL1,fscores=dsL2[ ,"fscores"]);head(dsL3)
  dsL <- tidyr::gather_(dsL3,"source","value", c("observed","fscores") )
  head(dsL)
  table(dsL$outcome)
  table(dsL$source)



  head(dsL)
  dsL$age <- dsL$BAGE + dsL$time + center_age

  # Rename
  dsL <- plyr::rename(dsL,replace=c("IP"= paste0("fs_level_a")))
  dsL <- plyr::rename(dsL,replace=c("SP"= paste0("fs_slope_a")))
  dsL <- plyr::rename(dsL,replace=c("IC"= paste0("fs_level_b")))
  dsL <- plyr::rename(dsL,replace=c("SC"= paste0("fs_slope_b")))
  head(dsL)

  ls <- list()
  ls[["data"]] <- dsL
  ls[["coefs"]] <- model_parsed
  return(ls)

}

folder <- "./data/shared/covariance-issue/annie/studies/octo/physical"
ls_model <- get_model_data(
  folder = folder
  # ,path_out ="b1_female_aehplus_grip_gait.out"
  # ,path_out ="b1_female_aehplus_pef_gait.out"
  ,path_out ="b1_female_aehplus_grip_pef.out"
  ,center_age = 70
)
# head(ls_model$data)
# t(ls_model$coefs)


########################
##### Scatter###########
#######################


proto_scatter <- function(
  d,
  xName,
  yName
){
  # xName = "fs_level_a"
  # yName = "fs_level_b"

  # d = ls_model$data
  # model_parsed <- ls_model$coefs
  (minx <- min(d[,xName],na.rm = T))
  (miny <- min(d[,yName],na.rm = T))

   m <- lm(as.formula(paste(yName, "~", xName)), d)
  # browser()
  #See Recipe 5.9 in Chang, 2013
  eqn <- as.character(
    as.expression(
      substitute(italic(y)==a + b * italic(x) * "," ~ ~italic(r) ~ "=" ~ r2,
                 list(a=format(coef(m)[1], digits=3),#The intercept
                      b=format(coef(m)[2], digits=3), #The slope
                      r2=format(sqrt(summary(m)$r.squared), digits=3)))
    )
  )


  g <- ggplot2::ggplot(d,aes_string(x=xName, y=yName, fill="BAGE"))+
    geom_point(shape=21,size=5, alpha=.1)+
    geom_smooth(aes_string(y=yName), method="loess",color="black", size=.45, fill="gray70", alpha=.33, linetype="dashed", na.rm=T, span=1.5)+
    geom_smooth(aes_string(y=yName), method="lm",color="red", size=.4, se=F, na.rm=T, span=1)+
    scale_fill_gradient2(low="#7fbf7b", mid="#f7f7f7", high="#af8dc3", space="Lab")+
    theme(legend.position="none")+
    annotate("text", size=baseSize-6, label=eqn, x=-Inf, y=-Inf, hjust=0, vjust=0, parse=TRUE, color="red")+
    main_theme
  # g

}
# proto_scatter(ls_model$data, "fs_level_a", "fs_level_b")

factor_score_scatter <- function(
  ls
){
  d = ls_model$data
  mp <- ls_model$coefs # model parsed
  head(d)

  (study      = mp$study_name)
  (subgroup   = mp$subgroup)
  (model_type = mp$model_type)
  (process_a  = mp$process_a)
  (process_b  = mp$process_b)

  (sample_N <- length(unique(d$id)))

  (a_gamma_00_est <- mp$a_gamma_00_est)
  (a_gamma_10_est <- mp$a_gamma_10_est)
  (b_gamma_00_est <- mp$b_gamma_00_est)
  (b_gamma_10_est <- mp$b_gamma_10_est)

  (min_i1 <- min(d[,"fs_level_a"],na.rm = T))
  (min_i2 <- min(d[,"fs_level_b"],na.rm = T))
  (min_s1 <- min(d[,"fs_slope_a"],na.rm = T))
  (min_s2 <- min(d[,"fs_slope_b"],na.rm = T))

  (max_i1 <- max(d[,"fs_level_a"],na.rm = T))
  (max_i2 <- max(d[,"fs_level_b"],na.rm = T))
  (max_i2 <- max_i2 - abs(max_i2*.1))
  (max_s1 <- max(d[,"fs_slope_a"],na.rm = T))
  (max_s2 <- max(d[,"fs_slope_b"],na.rm = T))


  # (R_IPIC_display <- paste0("Corr : ", mp$er_tau_00_est," (",mp$er_tau_00_se,"), p = ",mp$er_tau_00_pval ))
  # (R_SPSC_display <- paste0("Corr : ", mp$er_tau_11_est," (",mp$er_tau_11_se,"), p = ",mp$er_tau_11_pval ))
  #
  pattern_corr <-  "Corr : %0.2f (%0.2f), p = %0.3f"
  pattern_covar <- "Cov : %0.2f (%0.2f), p = %0.3f"

  (R_IPIC_display <- sprintf(pattern_corr,
                             as.numeric(mp$er_tau_00_est),
                             as.numeric(mp$er_tau_00_se),
                             as.numeric(mp$er_tau_00_pval)
                             ))
  (R_SPSC_display <- sprintf(pattern_corr,
                            as.numeric(mp$er_tau_11_est),
                            as.numeric(mp$er_tau_11_se),
                            as.numeric(mp$er_tau_11_pval)))
  (pp_TAU_00_display <- sprintf(pattern_covar,
                               as.numeric(mp$ab_tau_00_est),
                               as.numeric(mp$ab_tau_00_se),
                               as.numeric(mp$ab_tau_00_pval)
                               ))
  (pp_TAU_11_display <- sprintf(pattern_covar,
                               mp$ab_tau_11_est,
                               mp$ab_tau_11_se,
                               mp$ab_tau_11_pval
                               ))

  # to do : adapt examples in https://github.com/IALSA/IALSA-2015-Portland/issues/99
  # R_IPIC_display <- sprintf("R_ICIP: %f (%f), p=%0.3f", dsL$R_IPIC_est[1], dsL$R_IPIC_se[1], dsL$R_IPIC_pval[1])
  # substitute(italic(r)(italic(b)0[ip], italic(b)0[ic]), list(ip=dsL$process_a[1], cp=dsL$process_b[1]))

  (p1_display <- paste0(R_IPIC_display, " \n ", pp_TAU_00_display))
  (p2_display <- paste0(R_SPSC_display, " \n ", pp_TAU_11_display))
  # browser()
  # create_the_duo <- function(){

  (a <- proto_scatter(d,x="fs_level_b", y="fs_level_a") + theme(legend.position="none") +
    annotate(geom="text", size=baseSize-6, x=Inf, y=Inf, label=p1_display, hjust=1, vjust=1)+
    geom_vline(xintercept=b_gamma_00_est,  color="gray60", size=3, alpha=.15)+
    annotate("text", size=baseSize-6, label="symbol(gamma[0][0])", x=b_gamma_00_est, y=min_i1, hjust=.5, vjust=1.5, parse=TRUE, size=7, color="black") +
    geom_hline(yintercept=a_gamma_00_est,  color="grey", size=3, alpha=.15)+ #coord_flip()+
    annotate("text", size=baseSize-6, label="symbol(gamma[0][0])", y=a_gamma_00_est, x=min_i2, hjust=1, vjust=0.5, parse=TRUE, size=7, color="black") +
    labs(x= process_b, y= process_a,title= "LEVELS \n (estimated factor scores)" ))

  (b <- proto_scatter(d,x="fs_slope_b", y="fs_slope_a")+
    annotate(geom="text", size=baseSize-6, x=Inf, y=Inf, label=p2_display, hjust=1, vjust=1)+
    geom_vline(xintercept=b_gamma_10_est,  color="gray60", size=3, alpha=.2)+
    annotate("text",  size=baseSize-6, label="symbol(gamma[1][0])", x=b_gamma_10_est, y=min_s1, hjust=.5, vjust=1.5, parse=TRUE, size=7, color="black") +
    geom_hline(yintercept=a_gamma_10_est,  color="grey", size=3, alpha=.2)+
    annotate("text", size=baseSize-6, label="symbol(gamma[1][0])", y=a_gamma_10_est, x=min_s2, hjust=1, vjust=0.5, parse=TRUE, size=7, color="black") +
    labs(x=  process_b, y= process_a,title= "SLOPES \n (estimated factor scores)" )+
    theme(legend.justification=c(.8,0),
          legend.position=c(0,.98),
          legend.direction="horizontal",
          legend.background = element_rect(fill=NA,color=NA)))
  # }
  # browser()
  # if((process_a=="fev" & process_b=="grip") |
  #   (process_a=="gait" & process_b=="grip") |
  #   (process_a=="gait" & process_b=="fev") ){
  #   a <- a + coord_flip()
  #   b <- b + coord_flip()
  # }


  vpLayout <- function(rowIndex, columnIndex) { return( viewport(layout.pos.row=rowIndex, layout.pos.col=columnIndex) ) }
  grid::grid.newpage()
  #Defnie the relative proportions among the panels in the mosaic.
  layout <- grid::grid.layout(nrow=1, ncol=3,
                              widths=grid::unit(c(.1, .5, .5) ,c("null","null")),
                              heights=grid::unit(c( 1), c("null"))
  )
  grid::pushViewport(grid::viewport(layout=layout))
  # main_title <- toupper(dsL$study_name[1])
  main_title <- paste0(toupper(mp$study_name), " \n ", mp$subgroup, " \n ",
                       "N = ", sample_N)
  grid.text(main_title, vp = viewport(layout.pos.row = 1, layout.pos.col = 1))
  print(a, vp=grid::viewport(layout.pos.row=1,layout.pos.col=2))
  print(b, vp=grid::viewport(layout.pos.row=1,layout.pos.col=3))
  return(grid::popViewport(0))
}
# factor_score_scatter(ls_model)



factor_score_scatter(ls_model)

########################
##### Lines ############
#######################

proto_line <- function(
  ls,
  x,
  y,
  outcome_name,
  fill
){
  # x="time"
  # y="value"
  # outcome_name="process_a"
  # fill="wave"
  (subgroup <- ls_model$coefs$subgroup)

  d <- ls_model$data %>%
    dplyr::mutate(
      wave = factor(wave)
    )
  # compute min and max to harmonize the graphs
  d_obs <- d %>% dplyr::filter(source == "observed", outcome == outcome_name)
  d_fs  <- d %>% dplyr::filter(source == "fscores", outcome  == outcome_name)
  (ymax <- ceiling( max( max(d_obs$value,na.rm = T)*1.05, max(d_fs$value,na.rm = T)*1.05 )))
  (ymin <- floor( min( min(d_obs$value,na.rm = T)*.95, min(d_fs$value,na.rm = T)*.95 ) ))

  g <- ggplot2::ggplot(d,aes_string(x=x, y=y, fill=fill, group="id")) +
    geom_smooth(method="lm", color=alpha("grey70",.6), na.rm=T, se=F) +
    geom_point(shape=21,size=3, alpha=.4)+
    geom_smooth(aes(group=subgroup),method="loess", color="blue", size=1, fill="gray80", alpha=.3, na.rm=T) +
    scale_y_continuous(limits=c(ymin, ymax))+
    # geom_line()+
    # facet_grid(outcome~.)+
    # scale_fill_gradient2(low="#7fbf7b", mid="#f7f7f7", high="#af8dc3", space="Lab")+
    main_theme
  g
}

proto_line(
  ls = ls_model,
  x = "age",
  y = "value",
  outcome_name = "process_b",
  fill = "wave"
)



