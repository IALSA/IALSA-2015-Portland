#Create individual trajectories for Rush MAP

#remove all elements for a clean start
rm(list=ls(all=TRUE))
cat("\014")

pathRoot <- getwd()
pathFolder <- file.path(pathRoot,"data/raw/unshared/")
radcfile <- paste0(pathFolder,"/radc_long.csv")

#reading in the long RADC data file
ds1 <- read.csv(radcfile)


#selecting only MAP participants without a diagnosis of dementia
radcmap <- subset(ds1, study.x=="MAP" & dementia!= 1)

#changing projid and msex to factor variables
radcmap <- within(radcmap,{
  projid <- factor(projid)
  msex <- factor(msex, levels=0:1, labels = c("female","male"))
})

#data check
head(radcmap)


require(ggplot2)

## spagetti plot of fev
#by time
pfev<-ggplot(data=radcmap, aes(x = time, y = fev, group=projid))
pfev + geom_line() + facet_grid(msex ~.)
ggsave(paste0(pathFolder,"/fev_time.pdf"))
#by age
pfev<-ggplot(data=radcmap, aes(x = age_at_visit, y = fev, group=projid))
pfev + geom_line() + facet_grid(msex ~.)
ggsave(paste0(pathFolder,"/fev_age.pdf"))


#plot of gripavg
pgrip<-ggplot(data=radcmap, aes(x = time, y = gripavg, group=projid))
pgrip + geom_line() + facet_grid(.~ msex)
ggsave(paste0(pathFolder,"/grip_time.pdf"))


#plot of gripavg by age
pgrip<-ggplot(data=radcmap, aes(x = age_at_visit, y = gripavg, group=projid))
pgrip + geom_line() + facet_grid(msex~. )
ggsave(paste0(pathFolder,"/grip_age.pdf"))


#plot of gait speed by time
pgrip<-ggplot(data=radcmap, aes(x = time, y = gait_speed, group=projid))
pgrip + geom_line() + facet_grid(.~ msex)
ggsave(paste0(pathFolder,"/gait_time.pdf"))

#plot of gait speed by age
pgrip<-ggplot(data=radcmap, aes(x = age_at_visit, y = gait_speed))
pgrip + geom_line(aes(group=projid)) + facet_grid(msex~.)
ggsave(paste0(pathFolder,"/gait_age.pdf"))

##spagetti plot of word recall
pwii <- ggplot(data=radcmap, aes(x = time, y = cts_wlii, group = projid))
pwii + geom_line() + facet_grid(.~ msex)
ggsave(paste0(pathFolder,"/wordrecalldelay_time.pdf"))

pwii <- ggplot(data=radcmap, aes(x = age_at_visit, y = cts_wlii, group = projid))
pwii + geom_line() + facet_grid(.~ msex)
ggsave(paste0(pathFolder,"/wordrecalldelay_age.pdf"))

##spagetti plot of bnt
pbnt<-ggplot(data=radcmap, aes(x = time, y = cts_bname, group=projid))
pbnt + geom_line() + facet_grid(.~ msex)
ggsave(paste0(pathFolder,"/bnt_time.pdf"))

pbnt<-ggplot(data=radcmap, aes(x = age_at_visit, y = cts_bname, group=projid))
pbnt + geom_line() + facet_grid(.~ msex)
ggsave(paste0(pathFolder,"/bnt_age.pdf"))

#spagetti plot of category fluency
pcatflu<-ggplot(data=radcmap, aes(x = time, y = cts_catflu, group=projid))
pcatflu + geom_line() + facet_grid(.~ msex)
ggsave(paste0(pathFolder,"/categories_time.pdf"))

pcatflu<-ggplot(data=radcmap, aes(x = age_at_visit, y = cts_catflu, group=projid))
pcatflu + geom_line() + facet_grid(.~ msex)
ggsave(paste0(pathFolder,"/categories_age.pdf"))

##spagetti plot of digits backwards
pdb<-ggplot(data=radcmap, aes(x = time, y = cts_db, group=projid))
pdb + geom_line() + facet_grid(.~ msex)
ggsave(paste0(pathFolder,"/digitsb_time.pdf"))

pdb<-ggplot(data=radcmap, aes(x = age_at_visit, y = cts_db, group=projid))
pdb + geom_line() + facet_grid(.~ msex)
ggsave(paste0(pathFolder,"/digitsb_age.pdf"))

##spagetti plot of logical memory delayed recall
pdb<-ggplot(data=radcmap, aes(x = time, y = cts_delay))
pdb + geom_line(aes(group=projid)) + facet_grid(msex~.)
ggsave(paste0(pathFolder,"/lmdelay_time.pdf"))

pdb<-ggplot(data=radcmap, aes(x = age_at_visit, y = cts_delay))
pdb + geom_line(aes(group=projid)) + facet_grid(msex~.)
ggsave(paste0(pathFolder,"/lmdelay_age.pdf"))

#spagetti plot of digits forward

pdb<-ggplot(data=radcmap, aes(x = time, y = cts_df))
pdb + geom_line(aes(group=projid)) + facet_grid(msex~.)
ggsave(paste0(pathFolder,"/digitsf_time.pdf"))

pdb<-ggplot(data=radcmap, aes(x = age_at_visit, y = cts_df))
pdb + geom_line(aes(group=projid)) + facet_grid(msex~.)
ggsave(paste0(pathFolder,"/digitsf_age.pdf"))

## spagetti plot of digit ordering
pdb<-ggplot(data=radcmap, aes(x = time, y = cts_doperf))
pdb + geom_line(aes(group=projid)) + facet_grid(msex~.)
ggsave(paste0(pathFolder,"/digitordering_time.pdf"))

pdb<-ggplot(data=radcmap, aes(x = age_at_visit, y = cts_doperf))
pdb + geom_line(aes(group=projid)) + facet_grid(msex~.)
ggsave(paste0(pathFolder,"/digitordering_age.pdf"))

# spagetti plot of boston story delayed recall
pbsdr<-ggplot(data=radcmap, aes(x = time, y = cts_ebdr))
pbsdr + geom_line(aes(group=projid)) + facet_grid(msex~.)
ggsave(paste0(pathFolder,"/bostondelay_time.pdf"))

pbsdr<-ggplot(data=radcmap, aes(x = age_at_visit, y = cts_ebdr))
pbsdr + geom_line(aes(group=projid)) + facet_grid(msex~.)
ggsave(paste0(pathFolder,"/bostondelay_age.pdf"))

#spagetti plot of boston story immediate recall
pdb<-ggplot(data=radcmap, aes(x = time, y = cts_ebmt))
pdb + geom_line(aes(group=projid)) + facet_grid(msex~.)
ggsave(paste0(pathFolder,"/bostonimm_time.pdf"))

pdb<-ggplot(data=radcmap, aes(x = age_at_visit, y = cts_ebmt))
pdb + geom_line(aes(group=projid)) + facet_grid(msex~.)
ggsave(paste0(pathFolder,"/bostonimm_age.pdf"))

#spagetti plot of complex ideation
pdb<-ggplot(data=radcmap, aes(x = time, y = cts_idea))
pdb + geom_line(aes(group=projid)) + facet_grid(msex~.)
ggsave(paste0(pathFolder,"/complexidea_time.pdf"))

pdb<-ggplot(data=radcmap, aes(x = age_at_visit, y = cts_idea))
pdb + geom_line(aes(group=projid)) + facet_grid(msex~.)
ggsave(paste0(pathFolder,"/complexidea_age.pdf"))

#spagetti plot of line orientation
pdb<-ggplot(data=radcmap, aes(x = time, y = cts_lopair))
pdb + geom_line(aes(group=projid)) + facet_grid(msex~.)
ggsave(paste0(pathFolder,"/lineorientation_time.pdf"))

pdb<-ggplot(data=radcmap, aes(x = age_at_visit, y = cts_lopair))
pdb + geom_line(aes(group=projid)) + facet_grid(msex~.)
ggsave(paste0(pathFolder,"/lineorientation_age.pdf"))

#plot of mmse
pdb<-ggplot(data=radcmap, aes(x = time, y = cts_mmse30))
pdb + geom_line(aes(group=projid)) + facet_grid(msex~.)
ggsave(paste0(pathFolder,"/mmse_time.pdf"))

pdb<-ggplot(data=radcmap, aes(x = age_at_visit, y = cts_mmse30))
pdb + geom_line(aes(group=projid)) + facet_grid(msex~.)
ggsave(paste0(pathFolder,"/mmse_age.pdf"))

#plot of numbercomparison
pdb<-ggplot(data=radcmap, aes(x = time, y = cts_nccrtd))
pdb + geom_line(aes(group=projid)) + facet_grid(msex~.)
ggsave(paste0(pathFolder,"/numbercomp_time.pdf"))

pdb<-ggplot(data=radcmap, aes(x = age_at_visit, y = cts_nccrtd))
pdb + geom_line(aes(group=projid)) + facet_grid(msex~.)
ggsave(paste0(pathFolder,"/numbercomp_age.pdf"))

#plot of matrices
pdb<-ggplot(data=radcmap, aes(x = time, y = cts_pmat))
pdb + geom_line(aes(group=projid)) + facet_grid(msex~.)
ggsave(paste0(pathFolder,"/matrices_time.pdf"))

pdb<-ggplot(data=radcmap, aes(x = age_at_visit, y = cts_pmat))
pdb + geom_line(aes(group=projid)) + facet_grid(msex~.)
ggsave(paste0(pathFolder,"/matrices_age.pdf"))

#plot of nart
pdb<-ggplot(data=radcmap, aes(x = time, y = cts_read_nart))
pdb + geom_line(aes(group=projid)) + facet_grid(msex~.)
ggsave(paste0(pathFolder,"/nart_time.pdf"))

pdb<-ggplot(data=radcmap, aes(x = age_at_visit, y = cts_read_nart))
pdb + geom_line(aes(group=projid)) + facet_grid(msex~.)
ggsave(paste0(pathFolder,"/nart_age.pdf"))

# plot digit symbol
pdb<-ggplot(data=radcmap, aes(x = time, y = cts_sdmt))
pdb + geom_line(aes(group=projid)) + facet_grid(msex~.)
ggsave(paste0(pathFolder,"/digitsymbol_time.pdf"))

pdb<-ggplot(data=radcmap, aes(x = age_at_visit, y = cts_sdmt))
pdb + geom_line(aes(group=projid)) + facet_grid(msex~.)
ggsave(paste0(pathFolder,"/digitsymbol_age.pdf"))

#plot logical memory immediate recall
pdb<-ggplot(data=radcmap, aes(x = time, y = cts_story))
pdb + geom_line(aes(group=projid)) + facet_grid(msex~.)
ggsave(paste0(pathFolder,"/lmimmed_time.pdf"))

pdb<-ggplot(data=radcmap, aes(x = age_at_visit, y = cts_story))
pdb + geom_line(aes(group=projid)) + facet_grid(msex~.)
ggsave(paste0(pathFolder,"/lmimmed_age.pdf"))

#plot of word list immediate recall
pdb<-ggplot(data=radcmap, aes(x = time, y = cts_wli))
pdb + geom_line(aes(group=projid)) + facet_grid(msex~.)
ggsave(paste0(pathFolder,"/wordlistimm_time.pdf"))

pdb<-ggplot(data=radcmap, aes(x = age_at_visit, y = cts_wli))
pdb + geom_line(aes(group=projid)) + facet_grid(msex~.)
ggsave(paste0(pathFolder,"/wordlistimm_age.pdf"))

#plot word list delayed recall
pdb<-ggplot(data=radcmap, aes(x = time, y = cts_wlii))
pdb + geom_line(aes(group=projid)) + facet_grid(msex~.)
ggsave(paste0(pathFolder,"/wordlistdelay_time.pdf"))

pdb<-ggplot(data=radcmap, aes(x = age_at_visit, y = cts_wlii))
pdb + geom_line(aes(group=projid)) + facet_grid(msex~.)
ggsave(paste0(pathFolder,"/wordlistdelay_age.pdf"))

#plot word list delayed recognition
pdb<-ggplot(data=radcmap, aes(x = time, y = cts_wliii))
pdb + geom_line(aes(group=projid)) + facet_grid(msex~.)
ggsave(paste0(pathFolder,"/wordlistrec_time.pdf"))

pdb<-ggplot(data=radcmap, aes(x = age_at_visit, y = cts_wliii))
pdb + geom_line(aes(group=projid)) + facet_grid(msex~.)
ggsave(paste0(pathFolder,"/wordlistrec_age.pdf"))