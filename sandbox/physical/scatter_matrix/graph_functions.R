# @knitr basic_graph ---------------------------------------
proto_scatter <- function( dsL, xName, yName ) {
  (minx <- min(dsL[,xName],na.rm = T))
  (miny <- min(dsL[,yName],na.rm = T))

  m <- lm(as.formula(paste(yName, "~", xName)), dsL)
  # browser()
  eqn <- as.character(as.expression( #See Recipe 5.9 in Chang, 2013
    substitute(italic(y)==a + b * italic(x) * "," ~ ~italic(r) ~ "=" ~ r2,
               list(a=format(coef(m)[1], digits=3),#The intercept
                    b=format(coef(m)[2], digits=3), #The slope
                    r2=format(sqrt(summary(m)$r.squared), digits=3)))
  ))


  g <- ggplot2::ggplot(dsL,aes_string(x=xName, y=yName, fill="BAGE"))+
  geom_point(shape=21,size=5, alpha=.1)+
  geom_smooth(aes_string(y=yName), method="loess",color="black", size=.45, fill="gray70", alpha=.33, linetype="dashed", na.rm=T, span=1.5)+
  geom_smooth(aes_string(y=yName), method="lm",color="red", size=.4, se=F, na.rm=T, span=1)+
  scale_fill_gradient2(low="#7fbf7b", mid="#f7f7f7", high="#af8dc3", space="Lab")+
  theme(legend.position="none")+
    # coord_flip()+
  annotate("text", size=baseSize-6, label=eqn, x=-Inf, y=-Inf, hjust=0, vjust=0, parse=TRUE, color="red")+
  main_theme
g

}

# proto_scatter(dsL,xName="s_grip", yName="s_pef")


#inspect data for one individual
# dsL %>% dplyr::filter(id==1) %>% dplyr::select(id, BAGE, wave, time, outcome, observed, age, IP, SP, SC, IC )

# @knitr new_chunk ---------------------------------------


# @knitr basic_graph_1 ---------------------------------------
int_slope <- function(dsL){
# data <- dsL
# dsL[dsL$id==1, ]

study = dsL$study_name[1]
subgroup = dsL$subgroup[1]
model_type = dsL$model_type[1]
process1 = dsL$process1[1]
process2 = dsL$process2[1]

(sample_N <- length(unique(dsL$id)))

results <- readRDS("./projects/physical/outputs/physical.rds")
pull_model_results <- results[
  results$study_name==study & results$subgroup==subgroup &
  results$model_type==model_type &
  results$physical_measure==process1 & results$cognitive_measure==process2
, ]
(results <- pull_model_results)

(p1_gamma_00 <- results["p_GAMMA_00_est"][1,1])
(p2_gamma_00 <- results["c_GAMMA_00_est"][1,1])
(p1_gamma_10 <- results["p_GAMMA_10_est"][1,1])
(p2_gamma_10 <- results["c_GAMMA_10_est"][1,1])



i1 <- paste0("i_",process1)
s1 <- paste0("s_",process1)
i2 <- paste0("i_",process2)
s2 <- paste0("s_",process2)

(min_i1 <- min(dsL[,i1],na.rm = T))
(min_i2 <- min(dsL[,i2],na.rm = T))
(min_s1 <- min(dsL[,s1],na.rm = T))
(min_s2 <- min(dsL[,s2],na.rm = T))

(max_i1 <- max(dsL[,i1],na.rm = T))
(max_i2 <- max(dsL[,i2],na.rm = T))
(max_i2 <- max_i2 - abs(max_i2*.1))
(max_s1 <- max(dsL[,s1],na.rm = T))
(max_s2 <- max(dsL[,s2],na.rm = T))


(R_IPIC_display <- paste0("R : ", dsL$R_IPIC_est[1]," (",dsL$R_IPIC_se[1],"), p = ",dsL$R_IPIC_pval[1] ))
(R_SPSC_display <- paste0("R : ", dsL$R_SPSC_est[1]," (",dsL$R_SPSC_se[1],"), p = ",dsL$R_SPSC_pval[1] ))

(pp_TAU_00_display <- paste0("TAU : ", results[1,"pp_TAU_00_est"]," (",results[1,"pp_TAU_00_se"],"), p = ",results[1,"pp_TAU_00_pval"] ))
(pp_TAU_11_display <- paste0("TAU : ", results[1,"pp_TAU_11_est"]," (",results[1,"pp_TAU_11_se"],"), p = ",results[1,"pp_TAU_11_pval"] ))

# to do : adapt examples in https://github.com/IALSA/IALSA-2015-Portland/issues/99
# R_IPIC_display <- sprintf("R_ICIP: %f (%f), p=%0.3f", dsL$R_IPIC_est[1], dsL$R_IPIC_se[1], dsL$R_IPIC_pval[1])
# substitute(italic(r)(italic(b)0[ip], italic(b)0[ic]), list(ip=dsL$process1[1], cp=dsL$process2[1]))

(p1_display <- paste0(R_IPIC_display, " \n ", pp_TAU_00_display))
(p2_display <- paste0(R_SPSC_display, " \n ", pp_TAU_11_display))
# browser()
# create_the_duo <- function(){

(a <- proto_scatter(dsL,x=i2, y=i1 ) + theme(legend.position="none") +
  # annotate(geom="text", size=baseSize-6, x=max_i2, y=max_i1, label=p1_display, hjust=1)+
  annotate(geom="text", size=baseSize-6, x=Inf, y=Inf, label=p1_display, hjust=1, vjust=1)+
  geom_vline(x=p2_gamma_00,  color="gray60", size=3, alpha=.15)+
  annotate("text", size=baseSize-6, label="symbol(gamma[0][0])", x=p2_gamma_00, y=min_i1, hjust=.5, vjust=1.5, parse=TRUE, size=7, color="black") +
  geom_hline(y=p1_gamma_00,  color="grey", size=3, alpha=.15)+ #coord_flip()+
  # annotate("text", size=baseSize-6, label="symbol(gamma[0][0])", y=p1_gamma_00, x=min_i2, hjust=1, vjust=0.5, parse=TRUE, size=7, color="black") +
  labs(x=  process2, y= process1,title= "INTERCEPT \n (estimated factor scores)" ))

(b <- proto_scatter(dsL,x=s2, y=s1)+
  annotate(geom="text", size=baseSize-6, x=Inf, y=Inf, label=p2_display, hjust=1, vjust=1)+
  geom_vline(x=p2_gamma_10,  color="gray60", size=3, alpha=.2)+
  annotate("text",  size=baseSize-6, label="symbol(gamma[1][0])", x=p2_gamma_10, y=min_s1, hjust=.5, vjust=1.5, parse=TRUE, size=7, color="black") +
  geom_hline(y=p1_gamma_10,  color="grey", size=3, alpha=.2)+
  # annotate("text", size=baseSize-6, label="symbol(gamma[1][0])", y=p1_gamma_10, x=min_s2, hjust=1, vjust=0.5, parse=TRUE, size=7, color="black") +
  labs(x=  process2, y= process1,title= "SLOPE \n (estimated factor scores)" )+
  theme(legend.justification=c(.8,0),
      legend.position=c(0,.98),
      legend.direction="horizontal",
      legend.background = element_rect(fill=NA,color=NA)))
# }
# browser()
if((process1=="fev" & process2=="grip") |
  (process1=="gait" & process2=="grip") |
  (process1=="gait" & process2=="fev") ){
  a <- a + coord_flip()
  b <- b + coord_flip()
}


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
