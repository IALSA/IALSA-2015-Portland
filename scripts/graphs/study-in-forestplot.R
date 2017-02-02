library(forestplot)

# ---- assemble-data -------------
# Cochrane data from the 'rmeta'-package
mean  <- c(NA, NA, 0.578, 0.165, 0.246, 0.700, 0.348, 0.139, 1.017, NA, 0.531)
lower <- c(NA, NA, 0.372, 0.018, 0.072, 0.333, 0.083, 0.016, 0.365, NA, 0.386)
upper <- c(NA, NA, 0.898, 1.517, 0.833, 1.474, 1.455, 1.209, 2.831, NA, 0.731)

ds <-
  structure(
    list(
      mean      = mean,
      lower     = lower,
      upper     = upper
    ),
    .Names    = c("mean", "lower", "upper"),
    row.names = c(NA, -11L),
    class     = "data.frame")

tabletext<-cbind(
  c("", "Study", "Auckland", "Block", "Doran", "Gamsu", "Morrison", "Papageorgiou", "Tauesch", NA, "Summary"),
  c("Deaths", "(steroid)", "36", "1", "4", "14", "3", "1", "8", NA, NA),
  c("Deaths", "(placebo)", "60", "5", "11", "20", "7", "7", "10", NA, NA),
  c("", "OR", "0.58", "0.16", "0.25", "0.70", "0.35", "0.14", "1.02", NA, "0.53"))
str(tabletext)

# ---- wrapping-source --------------
# the forestplot::forestplot() is a wrapper function for rmeta::forestplot()
# here are the arguments in the underlying function
# see more at https://www.rdocumentation.org/packages/rmeta/versions/2.16/topics/forestplot
rmeta::forestplot(
  labeltext     #Matrix of strings or NAs for blank spaces
  ,mean         #Vector of centers of confidence intervals (or NAs for blank space)
  ,lower        #Vector of lower ends of confidence intervals
  ,upper        #Vector of upper ends of confidence intervals
  ,align       = NULL #Vector giving alignment (l,r,c) for columns of table
  ,is.summary  = FALSE #Vector of logicals. Summary lines have bold text and diamond confidence intervals.
  ,clip        = c(-Inf, Inf)#Lower and upper limits for clipping confidence intervals to arrows
  ,xlab        = "" #x-axis label
  ,zero        = 0 #x-axis coordinate for zero line
  ,graphwidth  = unit(2,"inches")#Width of confidence interval graph
  ,col         = meta.colors()#See meta.colors
  ,xlog        = FALSE #If TRUE, x-axis tick marks are exponentiated
  ,xticks      = NULL #Optional user-specified x-axis tick marks. Specify NULL to use the defaults, numeric(0) to omit the x-axis.
  ,boxsize     = NULL#Override the default box size based on precision
)

rmeta::forestplot(
   labeltext   = tabletext #Matrix of strings or NAs for blank spaces
  ,mean        = mean #Vector of centers of confidence intervals (or NAs for blank space)
  ,lower       = lower #Vector of lower ends of confidence intervals
  ,upper       = upper#Vector of upper ends of confidence intervals
  ,align       = c("r","r","l","l")#Vector giving alignment (l,r,c) for columns of table
  ,is.summary  = c(TRUE,TRUE,rep(FALSE,8),TRUE) #Vector of logicals. Summary lines have bold text and diamond confidence intervals.
  ,clip        = c(0.1,2.5)#Lower and upper limits for clipping confidence intervals to arrows
  ,xlab        = "X-asix label" #x-axis label
  ,zero        = 0 #x-axis coordinate for zero line
  ,graphwidth  = unit(2,"inches")#Width of confidence interval graph
  ,col         = meta.colors()#See meta.colors
  ,xlog        = FALSE #If TRUE, x-axis tick marks are exponentiated
  ,xticks      = NULL #Optional user-specified x-axis tick marks. Specify NULL to use the defaults, numeric(0) to omit the x-axis.
  ,boxsize     = NULL#Override the default box size based on precision
)




# --- basic-start -----------------
forestplot::forestplot(
  labeltext  = tabletext,
  mean       = mean,
  lower      = lower,
  upper      = upper,
  align      = c("r","r","l","l"),
  new_page   = TRUE,
  is.summary = c(TRUE,TRUE,rep(FALSE,8),TRUE),
  clip       = c(0.1,2.5),
  xlog       = TRUE,
  col        = fpColors(box     = "royalblue",
                        line    = "darkblue",
                        summary = "royalblue")
)

# ---- adding-lines ---------------
forestplot::forestplot(
  tabletext,
  mean       = mean,
  lower      = lower,
  upper      = upper,
  align      = c("r","r","l","l"),
  new_page   = TRUE,
  is.summary = c(TRUE,TRUE,rep(FALSE,8),TRUE),
  clip       = c(0.1,2.5),
  xlog       = TRUE,
  col        = fpColors(box     = "royalblue",
                        line    = "darkblue",
                        summary = "royalblue"),
  hrzl_lines = gpar(col="#444444") # add lines
)

# ---- control-line-appearance -------------
forestplot::forestplot(
  tabletext,
  mean       = mean,
  lower      = lower,
  upper      = upper,
  align      = c("r","r","l","l"),
  new_page   = TRUE,
  is.summary = c(TRUE,TRUE,rep(FALSE,8),TRUE),
  clip       = c(0.1,2.5),
  xlog       = TRUE,
  col        = fpColors(box     = "royalblue",
                        line    = "darkblue",
                        summary = "royalblue"),
  hrzl_lines = list( "3"  = gpar(lty=2), # 3rd row
                     "11" = gpar(lwd=1, columns=1:4, col = "#000044")) # 11th row
)

# ---- adding-whiskers -------------
forestplot::forestplot(
  tabletext,
  mean       = mean,
  lower      = lower,
  upper      = upper,
  align      = c("r","r","l","l"),
  new_page   = TRUE,
  is.summary = c(TRUE,TRUE,rep(FALSE,8),TRUE),
  clip       = c(0.1,2.5),
  xlog       = TRUE,
  col        = fpColors(box     = "royalblue",
                        line    = "darkblue",
                        summary = "royalblue"),
  hrzl_lines = list( "3"  = gpar(lty=2),
                     "11" = gpar(lwd=1, columns=1:4, col = "#000044")),
  vertices   = TRUE # add whiskers
)

# ---- graph-position -------------
forestplot::forestplot(
  tabletext,
  mean       = mean,
  lower      = lower,
  upper      = upper,
  align      = c("r","r","l","l"),
  new_page   = TRUE,
  is.summary = c(TRUE,TRUE,rep(FALSE,8),TRUE),
  clip       = c(0.1,2.5),
  xlog       = TRUE,
  col        = fpColors(box     = "royalblue",
                        line    = "darkblue",
                        summary = "royalblue"),
  hrzl_lines = list( "3"  = gpar(lty=2),
                     "11" = gpar(lwd=1, columns=1:4, col = "#000044")),
  vertices   = TRUE,
  graph.pos  = 2 # define the column in which graph appears
)

##############################
#### SECOND DATA EXAMPLE #####
#############################
# load the data object
data(HRQoL)
tabletext <-
  list(
    c(NA, rownames(HRQoL$Sweden)),
    append(list(expression(beta)), sprintf("%.2f", HRQoL$Sweden[,"coef"]))
    )
clrs <- fpColors(box="royalblue",line="darkblue", summary="royalblue")
str(tabletext)

# ---- basic-started --------------
forestplot::forestplot(
  tabletext,
  rbind(rep(NA, 3), HRQoL$Sweden),
  col  = clrs,
  xlab = "EQ-5D index"
)

# ---- alter-fonts-1 --------------
tabletext <- cbind(rownames(HRQoL$Sweden),
                   sprintf("%.2f", HRQoL$Sweden[,"coef"]))
str(tabletext)

forestplot::forestplot(
  tabletext,
  txt_gp = fpTxtGp(label = gpar(fontfamily = "HersheyScript")),
  rbind(HRQoL$Sweden),
  col    = clrs,
  xlab   = "EQ-5D index"
)

# ---- alter-fonts-2 --------------
forestplot::forestplot(
  tabletext,
  txt_gp = fpTxtGp(label = list(gpar(fontfamily = "HersheyScript"),
                                gpar(fontfamily = "",
                                     col = "#660000")),
                   ticks = gpar(fontfamily = "", cex=1),
                   xlab  = gpar(fontfamily = "HersheySerif", cex = 1.5)),
  rbind(HRQoL$Sweden),
  col    = clrs,
  xlab   = "EQ-5D index"
)

# ---- confidence-intervals -----------
forestplot::forestplot(
  tabletext,
  rbind(HRQoL$Sweden),
  clip   = c(-.1, Inf),
  col    = clrs,
  xlab   = "EQ-5D index"
)

# ---- multiple-confidence-intervals -----------
tabletext <- tabletext[,1]

forestplot::forestplot(
  labletext = tabletext,
  mean  = cbind(HRQoL$Sweden[, "coef"],  HRQoL$Denmark[, "coef"]),
  lower = cbind(HRQoL$Sweden[, "lower"], HRQoL$Denmark[, "lower"]),
  upper = cbind(HRQoL$Sweden[, "upper"], HRQoL$Denmark[, "upper"]),
  clip  = c(-.1, 0.075),
  col   = fpColors(box=c("blue", "darkred")),
  xlab  = "EQ-5D index"
)

# ---- estimate-indicator -------------------
forestplot::forestplot(
  labletext = tabletext,
  fn.ci_norm  = c(fpDrawNormalCI, fpDrawCircleCI),
  boxsize     = .25, # We set the box size to better visualize the type
  line.margin = .1, # We need to add this to avoid crowding
  mean        = cbind(HRQoL$Sweden[, "coef"],  HRQoL$Denmark[, "coef"]),
  lower       = cbind(HRQoL$Sweden[, "lower"], HRQoL$Denmark[, "lower"]),
  upper       = cbind(HRQoL$Sweden[, "upper"], HRQoL$Denmark[, "upper"]),
  clip        = c(-.125, 0.075),
  col         = fpColors(box=c("blue", "darkred")),
  xlab        = "EQ-5D index"
)

# ---- line-type ---------------
forestplot::forestplot(
  labletext   = tabletext,
  fn.ci_norm  = c(fpDrawNormalCI, fpDrawCircleCI),
  boxsize     = .25, # We set the box size to better visualize the type
  line.margin = .1, # We need to add this to avoid crowding
  mean        = cbind(HRQoL$Sweden[, "coef"], HRQoL$Denmark[, "coef"]),
  lower       = cbind(HRQoL$Sweden[, "lower"], HRQoL$Denmark[, "lower"]),
  upper       = cbind(HRQoL$Sweden[, "upper"], HRQoL$Denmark[, "upper"]),
  clip        = c(-.125, 0.075),
  lty.ci      = c(1, 2),
  col         = fpColors(box=c("blue", "darkred")),
  xlab        = "EQ-5D index"
)

# ---- legends-1 ------------------
forestplot::forestplot(
  labletext   = tabletext,
  legend      = c("Sweden", "Denmark"),
  fn.ci_norm  = c(fpDrawNormalCI, fpDrawCircleCI),
  boxsize     = .25, # We set the box size to better visualize the type
  line.margin = .1, # We need to add this to avoid crowding
  mean        = cbind(HRQoL$Sweden[, "coef"], HRQoL$Denmark[, "coef"]),
  lower       = cbind(HRQoL$Sweden[, "lower"], HRQoL$Denmark[, "lower"]),
  upper       = cbind(HRQoL$Sweden[, "upper"], HRQoL$Denmark[, "upper"]),
  clip        = c(-.125, 0.075),
  col         = fpColors(box=c("blue", "darkred")),
  xlab        = "EQ-5D index"
)

# ---- legends-2 ------------------
forestplot::forestplot(
  labletext   = tabletext,
  legend_args = fpLegend(pos = list(x=.85, y=0.25),
                        gp=gpar(col="#CCCCCC", fill="#F9F9F9")),
  legend      = c("Sweden", "Denmark"),
  fn.ci_norm  = c(fpDrawNormalCI, fpDrawCircleCI),
  boxsize     = .25, # We set the box size to better visualize the type
  line.margin = .1, # We need to add this to avoid crowding
  mean        = cbind(HRQoL$Sweden[, "coef"], HRQoL$Denmark[, "coef"]),
  lower       = cbind(HRQoL$Sweden[, "lower"], HRQoL$Denmark[, "lower"]),
  upper       = cbind(HRQoL$Sweden[, "upper"], HRQoL$Denmark[, "upper"]),
  clip        = c(-.125, 0.075),
  col         = fpColors(box=c("blue", "darkred")),
  xlab        = "EQ-5D index"
)

# ----- ticks-and-grids-1 ----------
forestplot::forestplot(
  labletext   = tabletext,
  legend      = c("Sweden", "Denmark"),
  fn.ci_norm  = c(fpDrawNormalCI, fpDrawCircleCI),
  boxsize     = .25, # We set the box size to better visualize the type
  line.margin = .1, # We need to add this to avoid crowding
  mean        = cbind(HRQoL$Sweden[, "coef"], HRQoL$Denmark[, "coef"]),
  lower       = cbind(HRQoL$Sweden[, "lower"], HRQoL$Denmark[, "lower"]),
  upper       = cbind(HRQoL$Sweden[, "upper"], HRQoL$Denmark[, "upper"]),
  clip        = c(-.125, 0.075),
  col         = fpColors(box=c("blue", "darkred")),
  xticks      = c(-.1, -0.05, 0, .05),
  xlab        = "EQ-5D index"
)

# ---- ticks-and-grids-2 -----------
xticks <- seq(from = -.1, to = .05, by = 0.025)
xtlab <- rep(c(TRUE, FALSE), length.out = length(xticks))
attr(xticks, "labels") <- xtlab
forestplot::forestplot(
  labletext   = tabletext,
  legend      = c("Sweden", "Denmark"),
  fn.ci_norm  = c(fpDrawNormalCI, fpDrawCircleCI),
  boxsize     = .25, # We set the box size to better visualize the type
  line.margin = .1, # We need to add this to avoid crowding
  mean        = cbind(HRQoL$Sweden[, "coef"], HRQoL$Denmark[, "coef"]),
  lower       = cbind(HRQoL$Sweden[, "lower"], HRQoL$Denmark[, "lower"]),
  upper       = cbind(HRQoL$Sweden[, "upper"], HRQoL$Denmark[, "upper"]),
  clip        = c(-.125, 0.075),
  col         = fpColors(box=c("blue", "darkred")),
  xticks      = xticks,
  xlab        = "EQ-5D index"
)

# --- ticks-and-grids-3 ------------
forestplot::forestplot(
  labletext   = tabletext,
  legend      = c("Sweden", "Denmark"),
  fn.ci_norm  = c(fpDrawNormalCI, fpDrawCircleCI),
  boxsize     = .25, # We set the box size to better visualize the type
  line.margin = .1, # We need to add this to avoid crowding
  mean        = cbind(HRQoL$Sweden[, "coef"], HRQoL$Denmark[, "coef"]),
  lower       = cbind(HRQoL$Sweden[, "lower"], HRQoL$Denmark[, "lower"]),
  upper       = cbind(HRQoL$Sweden[, "upper"], HRQoL$Denmark[, "upper"]),
  clip        = c(-.125, 0.075),
  col         = fpColors(box=c("blue", "darkred")),
  grid        = TRUE,
  xticks      = c(-.1, -0.05, 0, .05),
  xlab        ="EQ-5D index"
)

# --- ticks-and-grids-4 ------------
forestplot::forestplot(
  labletext   = tabletext,
  legend      = c("Sweden", "Denmark"),
  fn.ci_norm  = c(fpDrawNormalCI, fpDrawCircleCI),
  boxsize     = .25, # We set the box size to better visualize the type
  line.margin = .1, # We need to add this to avoid crowding
  mean        = cbind(HRQoL$Sweden[, "coef"], HRQoL$Denmark[, "coef"]),
  lower       = cbind(HRQoL$Sweden[, "lower"], HRQoL$Denmark[, "lower"]),
  upper       = cbind(HRQoL$Sweden[, "upper"], HRQoL$Denmark[, "upper"]),
  clip        = c(-.125, 0.075),
  col         = fpColors(box=c("blue", "darkred")),
  grid        = structure(c(-.1, -.05, .05),
                        gp = gpar(lty = 2, col = "#CCCCFF")),
  xlab        = "EQ-5D index"
)

# ---- options --------
grid_arg <- c(-.1, -.05, .05)
attr(grid_arg, "gp") <- gpar(lty = 2, col = "#CCCCFF")

identical(grid_arg,
          structure(c(-.1, -.05, .05),
                    gp = gpar(lty = 2, col = "#CCCCFF")))
# Returns TRUE
