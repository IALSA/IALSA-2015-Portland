# install.packages("MplusAutomation")
library(MplusAutomation)
library(relimp)
library(dplyr)

pathELSA <- ("./MPlus/m1_mlm growth wcovs_elsafull_redintxn.out")
pathOCTO <- ("./MPlus/m1_mlm growth wcovs_octofull_redintxn.out")
pathRUSHceradi <- "./MPlus/m1_mlm growth wcovs_rushfull_redintxn_ceradi.out"
pathRUSHebir <-"./MPlus/m1_mlm growth wcovs_rushfull_redintxn_ebir.out"
pathRUSHlogmem <-"./MPlus/m1_mlm growth wcovs_rushfull_redintxn_logmem.out"
  
  
# extELSA <- extractModelSummaries(pathELSA)
# showSummaryTable(extELSA)  # shows in console
# HTMLSummaryTable(extELSA)  # prints HTML
# LatexSummaryTable(extELSA) # prints PDF

mELSA <- readModels(pathELSA)
dsELSA <- as.data.frame(extractModelParameters(pathELSA))

mOCTO <- readModels(pathOCTO)
dsOCTO <- as.data.frame(extractModelParameters(pathOCTO))

mRUSHc <- readModels(pathRUSHceradi)
dsRUSHc <- as.data.frame(extractModelParameters(pathRUSHceradi))

mRUSHe <- readModels(pathRUSHebir)
dsRUSHe <- as.data.frame(extractModelParameters(pathRUSHebir))

mRUSHl <- readModels(pathRUSHlogmem)
dsRUSHl <- as.data.frame(extractModelParameters(pathRUSHlogmem))

model <- mELSA
# model <- mRUSHl
# model <- mRUSHc
# model <- mRUSHe
# model <- mRUSHl
cat("\014")
model$parameters


str(mELSA)

model$input$title
model$input$model
model$summaries
model$input$model
model$parameters


mELSA$input$title
mRUSHc$input$title
mRUSHe$input$title
mRUSHl$input$title
mOCTO$input$title

# View(dsELSA)
# View(mRUSHc)
# View(mRUSHe)
# View(mRUSHl)
# View(mOCTO)


dm <- plyr::rename(dsELSA, replace=c("unstandardized.paramHeader" = "header",
                                  "unstandardized.param" = "predictor",
                                  "unstandardized.est"  = "estimate",
                                  "unstandardized.se" = "SE",
                                  "unstandardized.est_se" = "estSE",
                                  "unstandardized.pval"  = "pval",
                                  "unstandardized.BetweenWithin" = "level"))
head(dm)
                                  

dm[ ((dm$header == "LINEAR.ON") & (dm$param == "Y")),"estimate"]

dm[(dm$header == "Intercept") , ]
detach(model)
# show summary table



