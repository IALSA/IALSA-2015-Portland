
# remove all elements for a clean start
rm(list=ls(all=TRUE))
cat("\014")
library(foreign)
library(plyr)
library(dplyr)

pathDir <- getwd() # set the Root directory
pathRADC <- file.path(pathDir,"studies/radc/unshared/radcMAP_wide.dat")
pathName <- file.path(pathDir,"studies/radc/descriptives/radc_wide_Variablenames.txt")
ds0 <- read.table(pathRADC, header=F) # import ground-0 object
radcNames <- read.table(pathName) # import the names of variables

head(radcNames)
a <- as.vector(radcNames[,1])
class(a)
str(a)

names(ds0) <- as.vector(radcNames[,1]) # adding variable names

#Filtering out individuals with dementia diagnosis at any time point.
ds1<-filter(ds0, dementia.00!=1, dementia.01!=1, dementia.02!=1, dementia.03!=1,
dementia.04!=1, dementia.05!=1, dementia.06!=1, dementia.07!=1, dementia.08!=1,
dementia.09!=1, dementia.10!=1, dementia.11!=1, dementia.12!=1, dementia.13!=1,
dementia.14!=1, dementia.15!=1, dementia.16!=1, dementia.17!=1, dementia.18!=1,
dementia.19!=1, dementia.20!=1)

ds2<-select(age_bl, age_death, educ, msex, race, spanish, q3smo_bl, q4smo_bl, smoking
married, married2, age_at_visit.00, age_at_visit.01, age_at_visit.02, age_at_visit.03
age_at_visit.04, age_at_visit.05, cts_bname.00, cts_bname.01, cts_bname.02, cts_bname.03,
cts_bname.04, cts_bname.05, cts_catflu.00, cts_catflu.01, cts_catflu.02, cts_catflu.03
cts_catflu.04, cts_catflu.05, cts_db.00, cts_db.01, cts_db.02, cts_db.03, cts_db.04, cts_db.05
cts_delay.00, cts_delay.01,cts_delay.02
  cts_delay.03
  cts_delay.04
  cts_delay.05

  cts_df.00
  cts_df.01
  cts_df.02
  cts_df.03
  cts_df.04
  cts_df.05

  cts_doperf.00
  cts_doperf.01
  cts_doperf.02
  cts_doperf.03
  cts_doperf.04
  cts_doperf.05

  cts_ebdr.00
  cts_ebdr.01
  cts_ebdr.02
  cts_ebdr.03
  cts_ebdr.04
  cts_ebdr.05

  cts_ebmt.00
  cts_ebmt.01
  cts_ebmt.02
  cts_ebmt.03
  cts_ebmt.04
  cts_ebmt.05

  cts_idea.00
  cts_idea.01
  cts_idea.02
  cts_idea.03
  cts_idea.04
  cts_idea.05


  cts_lopair.00
  cts_lopair.01
  cts_lopair.02
  cts_lopair.03
  cts_lopair.04
  cts_lopair.05

  cts_mmse30.00
  cts_mmse30.01
  cts_mmse30.02
  cts_mmse30.03
  cts_mmse30.04
  cts_mmse30.05

  cts_nccrtd.00
  cts_nccrtd.01
  cts_nccrtd.02
  cts_nccrtd.03
  cts_nccrtd.04
  cts_nccrtd.05

  cts_pmat.00
  cts_pmat.01
  cts_pmat.02
  cts_pmat.03
  cts_pmat.04
  cts_pmat.05

  cts_read_nart.00
  cts_read_nart.01
  cts_read_nart.02
  cts_read_nart.03
  cts_read_nart.04
  cts_read_nart.05

  cts_read_wrat.00
  cts_read_wrat.01
  cts_read_wrat.02
  cts_read_wrat.03
  cts_read_wrat.04
  cts_read_wrat.05

  cts_sdmt.00
  cts_sdmt.01
  cts_sdmt.02
  cts_sdmt.03
  cts_sdmt.04
  cts_sdmt.05

  cts_story.00
  cts_story.01
  cts_story.02
  cts_story.03
  cts_story.04
  cts_story.05

  cts_wli.00
  cts_wli.01
  cts_wli.02
  cts_wli.03
  cts_wli.04
  cts_wli.05

  cts_wlii.00
  cts_wlii.01
  cts_wlii.02
  cts_wlii.03
  cts_wlii.04
  cts_wlii.05

  cts_wliii.00
  cts_wliii.01
  cts_wliii.02
  cts_wliii.03
  cts_wliii.04
  cts_wliii.05

  dementia.00
  dementia.01
  dementia.02
  dementia.03
  dementia.04
  dementia.05
  dementia.06
  dementia.07
  dementia.08
  dementia.09
  dementia.10
  dementia.11
  dementia.12
  dementia.13
  dementia.14
  dementia.15
  dementia.16
  dementia.17
  dementia.18
  dementia.19
  dementia.20
  dm_cum.00
  dm_cum.01
  dm_cum.02
  dm_cum.03
  dm_cum.04
  dm_cum.05

  fev.00
  fev.01
  fev.02
  fev.03
  fev.04
  fev.05

  gait_speed.00
  gait_speed.01
  gait_speed.02
  gait_speed.03
  gait_speed.04
  gait_speed.05

  gripavg.00
  gripavg.01
  gripavg.02
  gripavg.03
  gripavg.04
  gripavg.05

  heart_cum.00
  heart_cum.01
  heart_cum.02
  heart_cum.03
  heart_cum.04
  heart_cum.05

  htm.00
  htm.01
  htm.02
  htm.03
  htm.04
  htm.05)

#check
ds1[1:20, 900:1000]

#recode missing to be R friendly
ds1[ds1==-9999] = NA

#activate ds1
attach(ds1)
summary(age_bl, na.rm=TRUE)
summary(dementia.00, na.rm=TRUE)

