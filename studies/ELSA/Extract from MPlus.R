# install.packages("MplusAutomation")
library(MplusAutomation)
library(relimp)
library(dplyr)

pathELSA <- ("./studies/ELSA/m1_mlm growth wcovs_elsafull_redintxn.out")
# extELSA <- extractModelSummaries(pathELSA)
# showSummaryTable(extELSA)  # shows in console
# HTMLSummaryTable(extELSA)  # prints HTML
# LatexSummaryTable(extELSA) # prints PDF

mELSA <- readModels(pathELSA)
dsELSA <- as.data.frame(extractModelParameters(pathELSA))

model <- mELSA

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



