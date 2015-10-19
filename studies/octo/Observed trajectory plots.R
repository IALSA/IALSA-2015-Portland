#Create individual trajectories for OCTO

#remove all elements for a clean start
rm(list=ls(all=TRUE))
cat("\014")

pathRoot <- getwd()
pathFolder <- file.path(pathRoot,"data/raw/unshared/")
octofile <- paste0(pathFolder,"/octstPPP.csv")

#reading in the long OCTO data file
ds1 <- read.csv(octofile)
head(ds1)


#selecting only MAP participants without a diagnosis of dementia
octo <- subset(mydata.pp, YTDem<0 )

#changing projid and female to factor variables
octo <- within(octo,{
  projid <- factor(Case)
  female <- factor(Female, levels=0:1, labels = c("male","female"))
})

#data check
head(octo)


require(ggplot2)

## spagetti plot of fev
pfev<-ggplot(data=octo, aes(x = CompAge, y = pek, group=projid))
pfev + geom_line() + facet_grid(.~ Female)

#plot of gripavg
pgrip<-ggplot(data=octo, aes(x = CompAge, y = gripp, group=projid))
pgrip + geom_line() + facet_grid(.~ Female)
