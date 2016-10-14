get_gh5_data <- function(
  path_gh5,
  study_name,
  subgroup,
  model_type,
  process_a,
  process_b,
  age_center=70
){
  # study_name = "octo"
  # subgroup = "female"
  # model_type = "aehplus"
  # process_a = "grip"
  # process_b = "gait"

  # path_gh5 <- get_gh5_path(catalog, "elsa", "female", "aehplus", "fev", "gait")

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
  (cpt <- c(cognitive, physical, time))
  # select all columns that are neither "C", "P", or "TIME"
  (stem <- c(gh5_variables[!(gh5_variables %in% cpt)], time))

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

  dsL[,"study_name"] <- study_name
  dsL[,'subgroup']   <- subgroup
  dsL[,'model_type'] <- model_type
  dsL[,"process_a"]  <- process_a
  dsL[,"process_b"]  <- process_b


  # augment the dsL with the estimates from the .out file
  # dsL[,c(R_IPIC,R_SPSC)] <- results[,c(R_IPIC,R_SPSC)]

  # Rename
  dsL <- plyr::rename( dsL,replace=c("IP"= paste0("i_",process_a) ) )
  dsL <- plyr::rename(dsL,replace=c("SP"= paste0("s_",process_a)))
  dsL <- plyr::rename(dsL,replace=c("IC"= paste0("i_",process_b)))
  dsL <- plyr::rename(dsL,replace=c("SC"= paste0("s_",process_b)))
  # dsL <- plyr::rename( dsL,replace=c("IP"= paste0("i_",dsL$process_a[1]) ) )
  # dsL <- plyr::rename(dsL,replace=c("SP"= paste0("s_",dsL$process_a[1])))
  # dsL <- plyr::rename(dsL,replace=c("IC"= paste0("i_",dsL$process_b[1])))
  # dsL <- plyr::rename(dsL,replace=c("SC"= paste0("s_",dsL$process_b[1])))

  head(dsL)
  dsL <- dsL[order(dsL$id), ] # sort for visual inspection
  head(dsL)
  d <- dsL[dsL$id %in% c(1),]
  d

  # } #close else

  return(dsL)
}



# @knitr basic_graph ---------------------------------------
proto_scatter <- function(
  dsL,
  xName,
  yName
){
  (minx <- min(dsL[,xName],na.rm = T))
  (miny <- min(dsL[,yName],na.rm = T))

  m <- lm(as.formula(paste(yName, "~", xName)), dsL)
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


  g <- ggplot2::ggplot(dsL,aes_string(x=xName, y=yName, fill="BAGE"))+
  geom_point(shape=21,size=5, alpha=.1)+
  geom_smooth(aes_string(y=yName), method="loess",color="black", size=.45, fill="gray70", alpha=.33, linetype="dashed", na.rm=T, span=1.5)+
  geom_smooth(aes_string(y=yName), method="lm",color="red", size=.4, se=F, na.rm=T, span=1)+
  scale_fill_gradient2(low="#7fbf7b", mid="#f7f7f7", high="#af8dc3", space="Lab")+
  theme(legend.position="none")+
    # coord_flip()+
  annotate("text", size=baseSize-6, label=eqn, x=-Inf, y=-Inf, hjust=0, vjust=0, parse=TRUE, color="red")+
  main_theme
# g

}

# proto_scatter(dsL,xName="s_grip", yName="s_pef")
# proto_scatter(dsL,xName="s_grip", yName="s_gait")


#inspect data for one individual
# dsL %>% dplyr::filter(id==1) %>% dplyr::select(id, BAGE, wave, time, outcome, observed, age, IP, SP, SC, IC )

# @knitr new_chunk ---------------------------------------


# @knitr basic_graph_1 ---------------------------------------
int_slope <- function(
  dsL
){
# data <- dsL
# dsL[dsL$id==1, ]

study = dsL$study_name[1]
subgroup = dsL$subgroup[1]
model_type = dsL$model_type[1]
process_a = dsL$process_a[1]
process_b = dsL$process_b[1]

(sample_N <- length(unique(dsL$id)))

# results <- readRDS("./projects/physical/outputs/physical.rds")
# pull_model_results <- results[
#   results$study_name==study & results$subgroup==subgroup &
#   results$model_type==model_type &
#   results$physical_measure==process_a & results$cognitive_measure==process_b
# , ]
# (results <- pull_model_results)
#
# (p1_gamma_00 <- results["p_GAMMA_00_est"][1,1])
# (p2_gamma_00 <- results["c_GAMMA_00_est"][1,1])
# (p1_gamma_10 <- results["p_GAMMA_10_est"][1,1])
# (p2_gamma_10 <- results["c_GAMMA_10_est"][1,1])



i1 <- paste0("i_",process_a)
s1 <- paste0("s_",process_a)
i2 <- paste0("i_",process_b)
s2 <- paste0("s_",process_b)

(min_i1 <- min(dsL[,i1],na.rm = T))
(min_i2 <- min(dsL[,i2],na.rm = T))
(min_s1 <- min(dsL[,s1],na.rm = T))
(min_s2 <- min(dsL[,s2],na.rm = T))

(max_i1 <- max(dsL[,i1],na.rm = T))
(max_i2 <- max(dsL[,i2],na.rm = T))
(max_i2 <- max_i2 - abs(max_i2*.1))
(max_s1 <- max(dsL[,s1],na.rm = T))
(max_s2 <- max(dsL[,s2],na.rm = T))


# (R_IPIC_display <- paste0("R : ", dsL$R_IPIC_est[1]," (",dsL$R_IPIC_se[1],"), p = ",dsL$R_IPIC_pval[1] ))
# (R_SPSC_display <- paste0("R : ", dsL$R_SPSC_est[1]," (",dsL$R_SPSC_se[1],"), p = ",dsL$R_SPSC_pval[1] ))

# (pp_TAU_00_display <- paste0("TAU : ", results[1,"pp_TAU_00_est"]," (",results[1,"pp_TAU_00_se"],"), p = ",results[1,"pp_TAU_00_pval"] ))
# (pp_TAU_11_display <- paste0("TAU : ", results[1,"pp_TAU_11_est"]," (",results[1,"pp_TAU_11_se"],"), p = ",results[1,"pp_TAU_11_pval"] ))

# to do : adapt examples in https://github.com/IALSA/IALSA-2015-Portland/issues/99
# R_IPIC_display <- sprintf("R_ICIP: %f (%f), p=%0.3f", dsL$R_IPIC_est[1], dsL$R_IPIC_se[1], dsL$R_IPIC_pval[1])
# substitute(italic(r)(italic(b)0[ip], italic(b)0[ic]), list(ip=dsL$process_a[1], cp=dsL$process_b[1]))

# (p1_display <- paste0(R_IPIC_display, " \n ", pp_TAU_00_display))
# (p2_display <- paste0(R_SPSC_display, " \n ", pp_TAU_11_display))
# browser()
# create_the_duo <- function(){

(a <- proto_scatter(dsL,x=i2, y=i1 ) + theme(legend.position="none") +
  # annotate(geom="text", size=baseSize-6, x=max_i2, y=max_i1, label=p1_display, hjust=1)+
  # annotate(geom="text", size=baseSize-6, x=Inf, y=Inf, label=p1_display, hjust=1, vjust=1)+
  # geom_vline(x=p2_gamma_00,  color="gray60", size=3, alpha=.15)+
  # annotate("text", size=baseSize-6, label="symbol(gamma[0][0])", x=p2_gamma_00, y=min_i1, hjust=.5, vjust=1.5, parse=TRUE, size=7, color="black") +
  # geom_hline(y=p1_gamma_00,  color="grey", size=3, alpha=.15)+ #coord_flip()+
  # annotate("text", size=baseSize-6, label="symbol(gamma[0][0])", y=p1_gamma_00, x=min_i2, hjust=1, vjust=0.5, parse=TRUE, size=7, color="black") +
  labs(x=  process_b, y= process_a,title= "INTERCEPT \n (estimated factor scores)" ))

(b <- proto_scatter(dsL,x=s2, y=s1)+
  # annotate(geom="text", size=baseSize-6, x=Inf, y=Inf, label=p2_display, hjust=1, vjust=1)+
  # geom_vline(x=p2_gamma_10,  color="gray60", size=3, alpha=.2)+
  # annotate("text",  size=baseSize-6, label="symbol(gamma[1][0])", x=p2_gamma_10, y=min_s1, hjust=.5, vjust=1.5, parse=TRUE, size=7, color="black") +
  # geom_hline(y=p1_gamma_10,  color="grey", size=3, alpha=.2)+
  # annotate("text", size=baseSize-6, label="symbol(gamma[1][0])", y=p1_gamma_10, x=min_s2, hjust=1, vjust=0.5, parse=TRUE, size=7, color="black") +
  labs(x=  process_b, y= process_a,title= "SLOPE \n (estimated factor scores)" )+
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
  main_title <- paste0(toupper(dsL$study_name[1]), " \n ", dsL$subgroup[1], " \n ",
                       "N = ", sample_N)
  grid.text(main_title, vp = viewport(layout.pos.row = 1, layout.pos.col = 1))
  print(a, vp=grid::viewport(layout.pos.row=1,layout.pos.col=2))
  print(b, vp=grid::viewport(layout.pos.row=1,layout.pos.col=3))
  return(grid::popViewport(0))
}
