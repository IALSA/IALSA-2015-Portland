observed_predicted <- function(dsL){
# function for stripping legends from plots
  g_legend<-function(a.gplot){
    tmp <- ggplot_gtable(ggplot_build(a.gplot))
    leg <- which(sapply(tmp$grobs, function(x) x$name) == "guide-box")
    legend <- tmp$grobs[[leg]]
    legend
  }

a1 <- proto_line(dsL,x="time", y="observed", outcome_name="physical", fill="wave")+ theme(legend.position="bottom")
legend_wave <- g_legend(a1)
a1 <- a1 + labs(title=dsL$process1[1])+ theme(legend.position="none")
b1 <- proto_line(dsL,x="time", y="fscores", outcome_name="physical", fill="wave") +labs(title=dsL$process1[1])+ theme(legend.position="none")
c1 <- proto_line(dsL,x="age", y="observed", outcome_name="physical", fill="BAGE")+ theme(legend.position="bottom")+
  scale_fill_gradient2(low="#7fbf7b", mid="#f7f7f7", high="#af8dc3", space="Lab")
legend_age <- g_legend(c1)
c1 <- c1 + scale_fill_gradient2(low="#7fbf7b", mid="#f7f7f7", high="#af8dc3", space="Lab")+labs(title=dsL$process1[1])+ theme(legend.position="none")
d1 <- proto_line(dsL,x="age", y="fscores", outcome_name="physical", fill="BAGE")+
  scale_fill_gradient2(low="#7fbf7b", mid="#f7f7f7", high="#af8dc3", space="Lab")+labs(title=dsL$process1[1])+ theme(legend.position="none")

a2 <- proto_line(dsL,x="time", y="observed", outcome_name="cognitive", fill="wave")+labs(title=dsL$process2[1]) + theme(legend.position="none")
b2 <- proto_line(dsL,x="time", y="fscores", outcome_name="cognitive", fill="wave")+labs(title=dsL$process2[1]) + theme(legend.position="none")
c2 <- proto_line(dsL,x="age", y="observed", outcome_name="cognitive", fill="BAGE")+
  scale_fill_gradient2(low="#7fbf7b", mid="#f7f7f7", high="#af8dc3", space="Lab")+labs(title=dsL$process2[1])+ theme(legend.position="none")
d2 <- proto_line(dsL,x="age", y="fscores", outcome_name="cognitive", fill="BAGE")+
  scale_fill_gradient2(low="#7fbf7b", mid="#f7f7f7", high="#af8dc3", space="Lab")+labs(title=dsL$process2[1])+ theme(legend.position="none")

blankPlot <- ggplot()+geom_blank(aes(1,1)) +
  cowplot::theme_nothing()

gridExtra::grid.arrange(a1, b1, c1, d1, blankPlot, legend_wave, legend_age, blankPlot,
                        a2, b2, c2, d2, ncol=4,  nrow=3,
                        widths=c(10,10,10,10),
                        hieghts=c(8,1,8))
} # close function
  # observed_predicted(dsL)
