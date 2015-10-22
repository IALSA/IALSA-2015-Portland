## Project title: RADC WIDE
##    Created at: 05.02.2015
##        Author: Philippe Rast, Cassandra Brown
##          Data: dataset_285_long03-2014.xlsx & dataset_285_basic03-2014.xlsc
##       Summary: xlsx can't be read into R, needs to be converted to csv.
##                Make it all wide
## ---------------------------------------------------------------------- ##


## Changelog:
##
## 2015-Feb-17: Added new variables from "IALSA Cross sectional 02-2015.csv" (wich is derived from ../SOURCE/IALSA Cross sectional 02-2015.xlsx) that Andrea mailed me on 02/13/15.
##              Note, new file has approx 220 participants more than old one.
##              New Variables in this dataset: Married, and Married2
## 2015-Oct-08: Individuals who develop dementia are removed from the data file.

# remove all elements for a clean start
rm(list=ls(all=TRUE))
cat("\014")

library(dplyr)

#radcWide <- read.csv('dataset_285_basic03-2014.csv')
pathFile <- getwd()
radcLong <- read.csv(paste0(pathFile,"/studies/radc/unshared/dataset_285_long03-2014.csv"))
radcWide <- read.csv(paste0(pathFile,"/studies/radc/unshared/IALSA Cross sectional 02-2015.csv"))

## Sanity check
head(radcWide)
head(radcLong)

which(radcLong$fu_year==20)

length(radcWide[,1])

## Note, some lines in radcLong have double entries
## 'reshape' deals withit, by taking only first instance - which seems to work fine
radcLong[radcLong$projid==10200901,]
radcLong[radcLong$projid==00831405,]
radcLong[radcLong$projid==01225511,]

## 1) make long wide
library(reshape)

measures <- names(radcLong)[c(-1,-2,-3,-4)]
measures

max(radcLong$fu_year)

radcLong$fu_year.f <- sprintf("%02d", radcLong$fu_year)

test <- reshape(radcLong, v.names=measures,timevar='fu_year.f', idvar='projid', direction="wide")
test[1:15,]


test[,c(-1,-2,-3,-4)]
test2 <- test[,order(names(test))]
names(test2)

test2[1:10, ]


for(i in 1:21){
    test2[,paste0('T',i-1)] <- test2[,i]-test2[,1]}

length(test2[,1])
length(radcWide[,1])

length(unique(radcWide$projid))
length(unique(radcLong$projid))
## Note: Wide has 214 ppl. more

## merge both data sources
radc <- merge(x=radcWide, y=test2, by='projid', all.x=TRUE)
radc[1:50,]

names(radc)

##write.table(radc, file="radc_wide.dat", na='-9999', row.names=F, col.names=F)

## Write out full CSV dataset
write.csv(radc[,-3], 'radc_wide.csv', row.names=F)

## For Cassandra
## write.table(radc, file="./brown/radc_wide.dat", na='-9999', row.names=F, col.names=T)

write.table(names(radc), file='radc_wide_Variablenames.txt', row.names=F, col.names=F, quote=F)

class(radc)


## first replace na with -9999 to use the filter function
na.replace<-function(radc){
  radc[is.na(radc)]<--9999
  return(radc)
}
radc2<-na.replace(radc)
radc2[1:20]

## select only MAP project data
radcMAP <- radc2[radc2$study.x=="MAP",]
length(radcMAP$projid)
table(radcMAP$msex)

## filter out individuals who develop dementia
radcMAP<-dplyr::filter(radcMAP, dementia.00!=1, dementia.01!=1, dementia.02!=1, dementia.03!=1,
            dementia.04!=1, dementia.05!=1, dementia.06!=1, dementia.07!=1, dementia.08!=1,
            dementia.09!=1, dementia.10!=1, dementia.11!=1, dementia.12!=1, dementia.13!=1,
            dementia.14!=1, dementia.15!=1, dementia.16!=1, dementia.17!=1, dementia.18!=1,
            dementia.19!=1, dementia.20!=1)

##Test the filter worked.
length(radcMAP[,1])
table(radcMAP$msex)

##Filter out individuals with no data other than baseline
radcMAP<-radcMAP[radcMAP$T0!=-9999,]
length(radcMAP$projid)

##print out descriptive stats for all the selected variable groups
summary(demo)
summary(cognitive)
summary(physical)
which(radcMAP$gripavg.00==0)
which(radcMAP$gripavg.01==0)
which(radcMAP$gripavg.02==0)
which(radcMAP$gripavg.04==0)
which(radcMAP$fev.12==0)
which(radcMAP$fev.00==0)

# replacing out of range values with NA
radcMAP$gripavg.00[radcMAP$gripavg.00==0]<- -9999
summary(radcMAP$gripavg.00)
radcMAP$gripavg.01[radcMAP$gripavg.01==0]<- -9999
radcMAP$gripavg.02[radcMAP$gripavg.02==0]<- -9999
radcMAP$gripavg.04[radcMAP$gripavg.04==0]<- -9999

radcMAP$fev.00[radcMAP$fev.00==0]<--9999
radcMAP$fev.12[radcMAP$fev.12==0]<--9999


##create three variables that identify those without physical data at any wave.
radcMAP$nofev<-ifelse(fev.00==-9999 & fev.01==-9999 & fev.02==-9999 & fev.03==-9999 & fev.04==-9999 &
                      fev.05==-9999 & fev.06==-9999 & fev.07==-9999 & fev.08==-9999 & fev.09==-9999 &
                      fev.10==-9999 & fev.11==-9999 & fev.12==-9999 & fev.13==-9999 & fev.14==-9999 &
                      fev.15==-9999 & fev.16==-9999 & fev.17==-9999, c("missing"), c("somedata"))
table(radcMAP$nofev)

radcMAP$nogait<-ifelse(gait_speed.00==-9999 & gait_speed.01==-9999 & gait_speed.02==-9999 & gait_speed.03==-9999 &
                       gait_speed.04==-9999 & gait_speed.05==-9999 & gait_speed.06==-9999 & gait_speed.07==-9999 &
                       gait_speed.08==-9999 & gait_speed.09==-9999 & gait_speed.10==-9999 & gait_speed.11==-9999 &
                       gait_speed.12==-9999 & gait_speed.13==-9999 & gait_speed.14==-9999 & gait_speed.15==-9999 &
                       gait_speed.16==-9999 & gait_speed.17==-9999, c("missing"), c("somedata"))
table(radcMAP$nogait)

radcMAP$nogrip<-ifelse(gripavg.00==-9999 & gripavg.01==-9999 & gripavg.02==-9999 & gripavg.03==-9999 & gripavg.04==-9999 &
                       gripavg.05==-9999 & gripavg.06==-9999 & gripavg.07==-9999 & gripavg.08==-9999 & gripavg.09==-9999 &
                       gripavg.10==-9999 & gripavg.11==-9999 & gripavg.12==-9999 & gripavg.13==-9999 & gripavg.14==-9999 &
                       gripavg.15==-9999 & gripavg.16==-9999 & gripavg.17==-9999, c("missing"), c("somedata"))
table(radcMAP$nogrip)

attach(radcMAP)
radcMAP$nophys<-0
radcMAP$nophys[nofev=="missing" & nogrip=="missing" & nogait=="somedata"]<-1
radcMAP$nophys[nofev=="missing" & nogait=="missing" & nogrip=="somedata"]<-2
radcMAP$nophys[nogait=="missing" & nogrip=="missing" & nofev=="somedata"]<-3
radcMAP$nophys[nogait=="missing" & nogrip=="missing" & nofev=="missing"]<-4

table(radcMAP$nophys)
radcMAP$physclean<-ifelse(radcMAP$nophys>0, c("delete"), c("keep"))

table(radcMAP$physclean)

#filter out individuals without sufficient physical data
radcMAPc<-radcMAP[radcMAP$physclean=="keep",]

length(radcMAPc$projid)

which(radcMAPc$smoking==-9999)


##checking frequencies for men and women
table(radcMAPc$msex)
summary(radcMAP$educ)
summary(radcMAP$age_bl)


##Recode missing -9999 to NA for descriptive stats calculation
radcMAPc[radcMAPc==-9999]<-NA

#create a list objects of variable groupings
##demographics
demo <- select(radcMAPc, age_bl, age_death, educ, msex, race, spanish, q3smo_bl, q4smo_bl,
              smoking, married, married2, age_at_visit.00, age_at_visit.01, age_at_visit.02,
              age_at_visit.03, age_at_visit.04, age_at_visit.05, age_at_visit.06,
              age_at_visit.07, age_at_visit.08, age_at_visit.09, age_at_visit.10,
              age_at_visit.11, age_at_visit.12, age_at_visit.13, age_at_visit.14,
              age_at_visit.15, age_at_visit.16, age_at_visit.17)

cognitive <- select(radcMAPc, cts_bname.00, cts_bname.01, cts_bname.02, cts_bname.03,
                    cts_bname.04, cts_bname.05, cts_bname.06, cts_bname.07, cts_bname.08,
                    cts_bname.09, cts_bname.10, cts_bname.11, cts_bname.12, cts_bname.13,
                    cts_bname.14, cts_bname.15, cts_bname.16, cts_bname.17, cts_catflu.00,
                    cts_catflu.01, cts_catflu.02, cts_catflu.03, cts_catflu.04, cts_catflu.05,
                    cts_catflu.06, cts_catflu.07, cts_catflu.08, cts_catflu.09, cts_catflu.10,
                    cts_catflu.11, cts_catflu.12, cts_catflu.13, cts_catflu.14, cts_catflu.15,
                    cts_catflu.16, cts_catflu.17, cts_db.09, cts_db.10, cts_db.11,cts_db.12,
                    cts_db.13, cts_db.14, cts_db.15, cts_db.16, cts_db.17, cts_delay.00,
                    cts_delay.01,cts_delay.02, cts_delay.03, cts_delay.04, cts_delay.05,
                    cts_delay.06,cts_delay.07, cts_delay.08, cts_delay.09, cts_delay.10,
                    cts_delay.11, cts_delay.12, cts_delay.13, cts_delay.14, cts_delay.15,
                    cts_delay.16, cts_delay.17, cts_df.00,cts_df.01, cts_df.02, cts_df.03,
                    cts_df.04, cts_df.05, cts_df.06, cts_df.07, cts_df.08, cts_df.09,
                    cts_df.10, cts_df.11, cts_df.12, cts_df.13, cts_df.14, cts_df.15,
                    cts_df.16, cts_df.17,cts_doperf.00, cts_doperf.01, cts_doperf.02,
                    cts_doperf.03,  cts_doperf.04,  cts_doperf.05,  cts_doperf.06,
                    cts_doperf.07, cts_doperf.08, cts_doperf.09, cts_doperf.10, cts_doperf.11,
                    cts_doperf.12, cts_doperf.13, cts_doperf.14, cts_doperf.15, cts_doperf.16,
                    cts_doperf.17, cts_ebdr.00,  cts_ebdr.01, cts_ebdr.02,  cts_ebdr.03,
                    cts_ebdr.04, cts_ebdr.05, cts_ebdr.06, cts_ebdr.07, cts_ebdr.08,
                    cts_ebdr.09, cts_ebdr.10, cts_ebdr.11, cts_ebdr.12, cts_ebdr.13,
                    cts_ebdr.14, cts_ebdr.15, cts_ebdr.16, cts_ebdr.17, cts_ebmt.00,
                    cts_ebmt.01,  cts_ebmt.02, cts_ebmt.03,  cts_ebmt.04,  cts_ebmt.05,
                    cts_idea.00,  cts_idea.01,  cts_idea.02,  cts_idea.03, cts_idea.04,
                    cts_idea.05,  cts_idea.06,  cts_idea.07,  cts_idea.08, cts_idea.09,
                    cts_idea.10,  cts_idea.11,  cts_idea.12,  cts_idea.13, cts_idea.14,
                    cts_idea.15,  cts_idea.16,  cts_idea.17, cts_lopair.00,  cts_lopair.01,
                    cts_lopair.02,  cts_lopair.03, cts_lopair.04,  cts_lopair.05,
                    cts_lopair.06,  cts_lopair.07, cts_lopair.08,  cts_lopair.09,
                    cts_lopair.10,  cts_lopair.11, cts_lopair.12,  cts_lopair.13,
                    cts_lopair.14,  cts_lopair.15, cts_lopair.16,  cts_lopair.17,
                    cts_mmse30.00,  cts_mmse30.01,  cts_mmse30.02,  cts_mmse30.03,
                    cts_mmse30.04, cts_mmse30.05, cts_mmse30.06,  cts_mmse30.07,
                    cts_mmse30.08, cts_mmse30.09, cts_mmse30.10,  cts_mmse30.11,
                    cts_mmse30.12, cts_mmse30.13, cts_mmse30.14,  cts_mmse30.15,
                    cts_mmse30.16,  cts_mmse30.17, cts_nccrtd.00,  cts_nccrtd.01,
                    cts_nccrtd.02,  cts_nccrtd.03, cts_nccrtd.04,  cts_nccrtd.05,
                    cts_nccrtd.06,  cts_nccrtd.07, cts_nccrtd.08,  cts_nccrtd.09,
                    cts_nccrtd.10,  cts_nccrtd.11, cts_nccrtd.12,  cts_nccrtd.13,
                    cts_nccrtd.14,  cts_nccrtd.15, cts_nccrtd.16,  cts_nccrtd.17,
                    cts_pmat.00,  cts_pmat.01,  cts_pmat.02,  cts_pmat.03, cts_pmat.04,
                    cts_pmat.05,  cts_pmat.06,  cts_pmat.07,  cts_pmat.08, cts_pmat.09,
                    cts_pmat.10,  cts_pmat.11,  cts_pmat.12, cts_pmat.13, cts_pmat.14,
                    cts_pmat.15, cts_pmat.16, cts_pmat.17, cts_read_nart.00,  cts_read_nart.01,  cts_read_nart.02,
                    cts_read_nart.03,  cts_read_nart.04,  cts_read_nart.05, cts_read_nart.06,
                    cts_read_nart.04,  cts_read_nart.05,  cts_read_nart.06, cts_read_nart.07,
                    cts_read_nart.08,  cts_read_nart.09,  cts_read_nart.10, cts_read_nart.11,
                    cts_read_nart.12,  cts_read_nart.13,  cts_read_nart.14, cts_read_nart.15,
                    cts_read_nart.16, cts_read_nart.17, cts_read_wrat.00,  cts_read_wrat.01, cts_read_wrat.02,
                    cts_read_wrat.03,  cts_read_wrat.04, cts_read_wrat.05, cts_read_wrat.06,
                    cts_read_wrat.07,  cts_read_wrat.08, cts_read_wrat.09, cts_read_wrat.10,
                    cts_read_wrat.11,  cts_read_wrat.12, cts_read_wrat.13, cts_read_wrat.14,
                    cts_read_wrat.15,  cts_read_wrat.16, cts_read_wrat.17, cts_sdmt.00,
                    cts_sdmt.01,  cts_sdmt.02,  cts_sdmt.03,  cts_sdmt.04,  cts_sdmt.05,
                    cts_story.00, cts_story.01,  cts_story.02,  cts_story.03,  cts_story.04,
                    cts_story.05, cts_story.06,  cts_story.07,  cts_story.08,  cts_story.09,
                    cts_story.10, cts_story.11,  cts_story.12, cts_story.13,  cts_story.14,
                    cts_story.15, cts_story.16,  cts_story.17, cts_wli.00, cts_wli.01,
                    cts_wli.02,  cts_wli.03,  cts_wli.04,  cts_wli.05, cts_wli.06, cts_wli.07,
                    cts_wli.08,  cts_wli.09,  cts_wli.10,  cts_wli.11, cts_wli.12, cts_wli.13,
                    cts_wli.14,  cts_wli.15,  cts_wli.16,  cts_wli.17, cts_wlii.00,  cts_wlii.01,
                    cts_wlii.02,  cts_wlii.03,  cts_wlii.04,  cts_wlii.05, cts_wlii.06,  cts_wlii.07,
                    cts_wlii.08,  cts_wlii.09,  cts_wlii.10,  cts_wlii.11, cts_wlii.12,  cts_wlii.13,
                    cts_wlii.14,  cts_wlii.16,  cts_wlii.17, cts_wliii.00,  cts_wliii.01,
                    cts_wliii.02,  cts_wliii.03,  cts_wliii.04,  cts_wliii.05, cts_wliii.06,
                    cts_wliii.07,  cts_wliii.08,  cts_wliii.09,  cts_wliii.10, cts_wliii.11,
                    cts_wliii.12,  cts_wliii.13,  cts_wliii.14,  cts_wliii.15, cts_wliii.16,
                    cts_wliii.17)

physical <- select(radcMAPc, dm_cum.00,  dm_cum.01,  dm_cum.02,  dm_cum.03,  dm_cum.04,  dm_cum.05,
                   dm_cum.06,  dm_cum.07,  dm_cum.08,  dm_cum.09,  dm_cum.10,  dm_cum.11,
                   dm_cum.12,  dm_cum.13,  dm_cum.14,  dm_cum.15,  dm_cum.16,  dm_cum.17,
                   fev.00,  fev.01,  fev.02,  fev.03,  fev.04,  fev.05,
                   fev.06,  fev.07,  fev.08,  fev.09,  fev.10,  fev.11, fev.12,  fev.13,
                   fev.14,  fev.15,  fev.16,  fev.17, gait_speed.00,  gait_speed.01,
                  gait_speed.02,  gait_speed.03,  gait_speed.04,  gait_speed.05,
                  gait_speed.06,  gait_speed.07,  gait_speed.08,  gait_speed.09,
                  gait_speed.10,  gait_speed.11,  gait_speed.12,  gait_speed.13,
                  gait_speed.14,  gait_speed.15,  gait_speed.16,  gait_speed.17,
                  gripavg.00, gripavg.01,  gripavg.02,  gripavg.03,  gripavg.04,  gripavg.05,
                  gripavg.06, gripavg.07,  gripavg.08,  gripavg.09,  gripavg.10,  gripavg.11,
                  gripavg.12, gripavg.13,  gripavg.14,  gripavg.15,  gripavg.16,  gripavg.17,
                  heart_cum.00,heart_cum.01,  heart_cum.02,  heart_cum.03,  heart_cum.04,
                  heart_cum.05, heart_cum.06,  heart_cum.07,  heart_cum.08,  heart_cum.09,
                  heart_cum.10,  heart_cum.11,  heart_cum.12,  heart_cum.13, heart_cum.14,
                  heart_cum.15,  heart_cum.16,  heart_cum.17, htm.00,  htm.01,  htm.02,
                  htm.03,  htm.04,  htm.05, htm.06,  htm.07,  htm.08, htm.09,  htm.10,  htm.11,
                  htm.12,  htm.13,  htm.14, htm.15,  htm.16,  htm.17)

dementia <- select(radcMAP, dementia.00,  dementia.01,
  dementia.02,  dementia.03,  dementia.04,  dementia.05,  dementia.06,  dementia.07,
  dementia.08,  dementia.09,  dementia.10,  dementia.11,  dementia.12,  dementia.13,
  dementia.14,  dementia.15,  dementia.16,  dementia.17,  dementia.18,  dementia.19,
  dementia.20)

##print out descriptive stats for all the selected variable groups
summary(demo)
summary(cognitive)
summary(physical)
which(radcMAPc$gripavg.00==0)
which(radcMAPc$gripavg.01==0)
which(radcMAPc$gripavg.02==0)
which(radcMAPc$gripavg.04==0)
which(radcMAPc$fev.12==0)
which(radcMAPc$fev.00==0)
radcMAPc[823,1]


summary(physical)
#identify rows with missing covariates
which(is.na(radcMAPc$dm_cum.00))
which(is.na(radcMAPc$heart_cum.00))
which(is.na(radcMAPc$educ))
which(is.na(radcMAPc$age_bl))
which(is.na(radcMAPc$htm.00))
which(is.na(radcMAPc$smoking))

#removing rows with missing covariates
radcMAPcl<- radcMAPc[-c(32,36,78,142,196,266,336,339,342,359,407,527,614,736,748,941,943,1222),]
#checking
length(radcMAPcl$projid)
table(radcMAPcl$msex)

#investigating why missing
##attach(radcMAPcl)
radcMAPcl$nogrip<-ifelse(is.na(gripavg.00) & is.na(gripavg.01) & is.na(gripavg.02) & is.na(gripavg.03) & is.na(gripavg.04), c("missing"), c("somedata"))
table(radcMAPcl$nogrip)
which(radcMAPcl$nogrip=="missing")

#This participant projid 6152191 completed only wave 6 of physical data and thus needs to be
#excluded when 5 or less waves are analyized.
radcMAPcl<-radcMAPcl[-c(74),]

table(radcMAPcl$msex)
##radcMAPcl$nofev<-ifelse(is.na(fev.00) & is.na(fev.01) & is.na(fev.02) & is.na(fev.03) & is.na(fev.04), c("missing"), c("somedata"))
##table(radcMAPcl$nofev)
##which(radcMAPcl$nofev=="missing")

## write out the data to a .dat file
write.table(radcMAPcl, file=paste0(pathFile,"/studies/radc/unshared/radcMAPclean_wide.dat"), na='-9999', row.names=F, col.names=F)


### write radcMAP to long

varnames <- names(radcMAP)[28:1815] # time-varying start at cesdsum.0
varnames


radcLong2 <- reshape(data=radcMAP, varying=varnames, idvar="projid", times=0:20, direction='long')

radcLong2[1:150,]

## drop rows if participant did not show up
radcLong3 <- radcLong2[!is.na(radcLong2$age_at_visit),]

radcLong3[radcLong3$projid==20261037,]

## compute exact time in study
radcLong3$time.yr <- radcLong3$age_at_visit - radcLong3$age_bl

write.table(radcLong3, file='radc_long.dat', row.names=F)

write.csv(radcLong3[-3], file='radc_long.csv', row.names=F)




## ## Note, some lines in radcLong had double entries
## ## compare age afer and before reshaping.
## radc[radc$projid==00831405,c('age_at_visit.0')]
## radc[radc$projid==00831405,c('age_at_visit.1')]
## radc[radc$projid==00831405,c('age_at_visit.2')]
## radc[radc$projid==00831405,c('age_at_visit.3')]
## radc[radc$projid==00831405,c('age_at_visit.4')]
## radc[radc$projid==00831405,c('age_at_visit.5')]
## radc[radc$projid==00831405,c('age_at_visit.6')]
## radc[radc$projid==00831405,c('age_at_visit.7')]
## radc[radc$projid==00831405,c('age_at_visit.8')]
## radc[radc$projid==00831405,c('age_at_visit.9')]
## radcLong[radcLong$projid==00831405,'age_at_visit']


## radc[radc$projid==01225511,c('age_at_visit.0')]
## radc[radc$projid==01225511,c('age_at_visit.1')]
## radc[radc$projid==01225511,c('age_at_visit.2')]
## radc[radc$projid==01225511,c('age_at_visit.3')]
## radc[radc$projid==01225511,c('age_at_visit.4')]
## radc[radc$projid==01225511,c('age_at_visit.5')]
## radc[radc$projid==01225511,c('age_at_visit.6')]
## radc[radc$projid==01225511,c('age_at_visit.7')]
## radc[radc$projid==01225511,c('age_at_visit.8')]
## radc[radc$projid==01225511,c('age_at_visit.9')]
## radcLong[radcLong$projid==01225511,'age_at_visit']



## stem(radcLong$fu_year, width=0)
