# FScore Scatters

<!-- These two chunks should be added in the beginning of every .Rmd that you want to source an .R script -->
<!--  The 1st mandatory chunck  -->
<!--  Set the working directory to the repository's base directory -->


<!--  The 2nd mandatory chunck  -->
<!-- Set the report-wide options, and point to the external code file. -->




<!-- Load 'sourced' R files.  Suppress the output when loading packages. --> 



<!-- Load the sources.  Suppress the output when loading sources. --> 

```
Registering fonts with R
```

```
[1] "Loaded rhdf5 package"
```


<!-- Load any Global functions and variables declared in the R file.  Suppress the output. --> 



```
 [1] "./studies/eas/physical/b1_female_aehplus_grip_gait.gh5"  
 [2] "./studies/eas/physical/b1_female_aehplus_grip_pef.gh5"   
 [3] "./studies/eas/physical/b1_female_aehplus_pef_gait.gh5"   
 [4] "./studies/eas/physical/b1_male_aehplus_grip_gait.gh5"    
 [5] "./studies/eas/physical/b1_male_aehplus_grip_pef.gh5"     
 [6] "./studies/eas/physical/b1_male_aehplus_pef_gait.gh5"     
 [7] "./studies/hrs/physical/b1_female_aehplus_grip_gait.gh5"  
 [8] "./studies/hrs/physical/b1_female_aehplus_grip_pef.gh5"   
 [9] "./studies/hrs/physical/b1_female_aehplus_pef_gait.gh5"   
[10] "./studies/hrs/physical/b1_male_aehplus_grip_gait.gh5"    
[11] "./studies/hrs/physical/b1_male_aehplus_grip_pef.gh5"     
[12] "./studies/hrs/physical/b1_male_aehplus_pef_gait.gh5"     
[13] "./studies/lasa/physical/b1_female_aehplus_gait_grip.gh5" 
[14] "./studies/lasa/physical/b1_female_aehplus_pek_gait.gh5"  
[15] "./studies/lasa/physical/b1_female_aehplus_pek_grip.gh5"  
[16] "./studies/lasa/physical/b1_male_aehplus_gait_grip.gh5"   
[17] "./studies/lasa/physical/b1_male_aehplus_pek_gait.gh5"    
[18] "./studies/lasa/physical/b1_male_aehplus_pek_grip.gh5"    
[19] "./studies/octo/physical/b1_female_aehplus_gait_grip.gh5" 
[20] "./studies/octo/physical/b1_female_aehplus_pek_gait.gh5"  
[21] "./studies/octo/physical/b1_female_aehplus_pek_grip.gh5"  
[22] "./studies/octo/physical/b1_male_aehplus_gait_grip.gh5"   
[23] "./studies/octo/physical/b1_male_aehplus_pek_gait.gh5"    
[24] "./studies/octo/physical/b1_male_aehplus_pek_grip.gh5"    
[25] "./studies/radc/physical/b1_female_aehplus_fev_gait.gh5"  
[26] "./studies/radc/physical/b1_female_aehplus_fev_grip.gh5"  
[27] "./studies/radc/physical/b1_female_aehplus_gait_grip.gh5" 
[28] "./studies/radc/physical/b1_male_aehplus_fev_gait.gh5"    
[29] "./studies/radc/physical/b1_male_aehplus_fev_grip.gh5"    
[30] "./studies/radc/physical/b1_male_aehplus_gait_grip.gh5"   
[31] "./studies/satsa/physical/b1_female_aehplus_gait_fev.gh5" 
[32] "./studies/satsa/physical/b1_female_aehplus_gait_grip.gh5"
[33] "./studies/satsa/physical/b1_female_aehplus_grip_fev.gh5" 
[34] "./studies/satsa/physical/b1_male_aehplus_gait_fev.gh5"   
[35] "./studies/satsa/physical/b1_male_aehplus_gait_grip.gh5"  
[36] "./studies/satsa/physical/b1_male_aehplus_grip_fev.gh5"   
```

```
[1] "paths"      "study"      "model_name" "subgroup"   "model_type" "process1"   "process2"  
```


<!-- Declare any global functions specific to a Rmd output.  Suppress the output. --> 


<!-- Load the datasets.   -->

```

Plot functions:
 - mplus.plot.histogram('./studies/radc/physical/b1_female_aehplus_gait_grip.gh5',variable,bins)
 - mplus.plot.scatterplot('./studies/radc/physical/b1_female_aehplus_gait_grip.gh5',xvar,yvar)

Plot data extraction functions:
 - mplus.list.variables('./studies/radc/physical/b1_female_aehplus_gait_grip.gh5')
 - mplus.get.data('./studies/radc/physical/b1_female_aehplus_gait_grip.gh5',variable)

List of variable names to use in the following functions:
 - mplus.plot.histogram
 - mplus.plot.scatterplot
 - mplus.get.data

Variables:
```

```
Warning in if (index == 0) {: the condition has length > 1 and only the first element will be used
```

<!-- Tweak the datasets.   -->


<!-- Basic table view.   -->


<!-- Basic graph view.   -->

```r
proto_line <- function(dsL,x, y, outcome_name, fill){
  # x="time"; y="observed"; outcome_name="physical"; fill="wave"
d <- dsL %>% dplyr::filter(outcome==outcome_name) #%>% dplyr::sample_n(500)
ymax <- ceiling( max( max(d$observed,na.rm = T)*1.05, max(d$fscores,na.rm = T)*1.05 )   )
ymin <- floor( min( min(d$observed,na.rm = T)*.95, min(d$fscores,na.rm = T)*.95 ) )

g <- ggplot2::ggplot(d,aes_string(x=x, y=y, fill=fill, group="id"))+
  geom_smooth(method="lm", color=alpha("grey70",.6), na.rm=T, se=F) +
  geom_point(shape=21,size=3, alpha=.4)+
  geom_smooth(aes(group=subgroup),method="loess", color="blue", size=1, fill="gray80", alpha=.3, na.rm=T) +
  scale_y_continuous(limits=c(ymin, ymax))+


  # geom_line()+
  # facet_grid(outcome~.)+
  # scale_fill_gradient2(low="#7fbf7b", mid="#f7f7f7", high="#af8dc3", space="Lab")+
  main_theme
g
}


library(ggplot2)
library(gridExtra)
library(cowplot)


# d <- dsL %>% tidyr::gather_("term","value",c("IP","SP","SC","IC"))
# d$age <- d[is.na(d$observed),"age"]
# d %>% dplyr::filter(id==1) %>% dplyr::select(id, BAGE, wave, time, outcome, observed, age, term, value )

#inspect data for one individual
dsL %>% dplyr::filter(id==1) %>% dplyr::select(id, BAGE, wave, time, outcome, observed, age, IP, SP, SC, IC )
```

```
   id     BAGE wave     time   outcome   observed      age        IP          SP        SC       IC
1   1 9.969884    1 0.000000  physical  0.4393514 79.96988 0.4894404 -0.01479326 -1.786604 39.01258
2   1 9.969884    2 1.111567  physical         NA 81.08145 0.4894404 -0.01479326 -1.786604 39.01258
3   1 9.969884    3 1.642710  physical         NA 81.61259 0.4894404 -0.01479326 -1.786604 39.01258
4   1 9.969884    4 2.625599  physical  0.4876800 82.59548 0.4894404 -0.01479326 -1.786604 39.01258
5   1 9.969884    5 3.652293  physical  0.3483429 83.62218 0.4894404 -0.01479326 -1.786604 39.01258
6   1 9.969884    1 0.000000 cognitive 41.0000000 79.96988 0.4894404 -0.01479326 -1.786604 39.01258
7   1 9.969884    2 1.111567 cognitive 41.0000000 81.08145 0.4894404 -0.01479326 -1.786604 39.01258
8   1 9.969884    3 1.642710 cognitive 35.5000000 81.61259 0.4894404 -0.01479326 -1.786604 39.01258
9   1 9.969884    4 2.625599 cognitive         NA 82.59548 0.4894404 -0.01479326 -1.786604 39.01258
10  1 9.969884    5 3.652293 cognitive 25.7500000 83.62218 0.4894404 -0.01479326 -1.786604 39.01258
```

```r
# create plot
```




```
 [1] "./studies/eas/physical/b1_female_aehplus_grip_gait.gh5"  
 [2] "./studies/eas/physical/b1_female_aehplus_grip_pef.gh5"   
 [3] "./studies/eas/physical/b1_female_aehplus_pef_gait.gh5"   
 [4] "./studies/eas/physical/b1_male_aehplus_grip_gait.gh5"    
 [5] "./studies/eas/physical/b1_male_aehplus_grip_pef.gh5"     
 [6] "./studies/eas/physical/b1_male_aehplus_pef_gait.gh5"     
 [7] "./studies/hrs/physical/b1_female_aehplus_grip_gait.gh5"  
 [8] "./studies/hrs/physical/b1_female_aehplus_grip_pef.gh5"   
 [9] "./studies/hrs/physical/b1_female_aehplus_pef_gait.gh5"   
[10] "./studies/hrs/physical/b1_male_aehplus_grip_gait.gh5"    
[11] "./studies/hrs/physical/b1_male_aehplus_grip_pef.gh5"     
[12] "./studies/hrs/physical/b1_male_aehplus_pef_gait.gh5"     
[13] "./studies/lasa/physical/b1_female_aehplus_gait_grip.gh5" 
[14] "./studies/lasa/physical/b1_female_aehplus_pek_gait.gh5"  
[15] "./studies/lasa/physical/b1_female_aehplus_pek_grip.gh5"  
[16] "./studies/lasa/physical/b1_male_aehplus_gait_grip.gh5"   
[17] "./studies/lasa/physical/b1_male_aehplus_pek_gait.gh5"    
[18] "./studies/lasa/physical/b1_male_aehplus_pek_grip.gh5"    
[19] "./studies/octo/physical/b1_female_aehplus_gait_grip.gh5" 
[20] "./studies/octo/physical/b1_female_aehplus_pek_gait.gh5"  
[21] "./studies/octo/physical/b1_female_aehplus_pek_grip.gh5"  
[22] "./studies/octo/physical/b1_male_aehplus_gait_grip.gh5"   
[23] "./studies/octo/physical/b1_male_aehplus_pek_gait.gh5"    
[24] "./studies/octo/physical/b1_male_aehplus_pek_grip.gh5"    
[25] "./studies/radc/physical/b1_female_aehplus_fev_gait.gh5"  
[26] "./studies/radc/physical/b1_female_aehplus_fev_grip.gh5"  
[27] "./studies/radc/physical/b1_female_aehplus_gait_grip.gh5" 
[28] "./studies/radc/physical/b1_male_aehplus_fev_gait.gh5"    
[29] "./studies/radc/physical/b1_male_aehplus_fev_grip.gh5"    
[30] "./studies/radc/physical/b1_male_aehplus_gait_grip.gh5"   
[31] "./studies/satsa/physical/b1_female_aehplus_gait_fev.gh5" 
[32] "./studies/satsa/physical/b1_female_aehplus_gait_grip.gh5"
[33] "./studies/satsa/physical/b1_female_aehplus_grip_fev.gh5" 
[34] "./studies/satsa/physical/b1_male_aehplus_gait_fev.gh5"   
[35] "./studies/satsa/physical/b1_male_aehplus_gait_grip.gh5"  
[36] "./studies/satsa/physical/b1_male_aehplus_grip_fev.gh5"   
```
#FEMALES
# EAS
## grip_pef


## pef_gait


## grip_gait


# HRS
## grip_gait


## grip_pef


## grip_pef



# LASA
## gait_grip


## pek_gait


## pek_grip




# OCTO
## gait_grip


## pek_gait


## pek_grip



# RADC
## fev_gait


## fev_grip


## gait_grip



# SATSA
## gait_fev


## gait_grip


## grip_fev


#MALES
# EAS
## grip_pef


## pef_gait


## grip_gait


# HRS
## grip_gait

```r
dsL <- get_gh5_data(file=ls_gh5,
                    study = "hrs",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "grip",
                    process2 = "gait")
```

```

Plot functions:
 - mplus.plot.histogram('./studies/hrs/physical/b1_male_aehplus_grip_gait.gh5',variable,bins)
 - mplus.plot.scatterplot('./studies/hrs/physical/b1_male_aehplus_grip_gait.gh5',xvar,yvar)

Plot data extraction functions:
 - mplus.list.variables('./studies/hrs/physical/b1_male_aehplus_grip_gait.gh5')
 - mplus.get.data('./studies/hrs/physical/b1_male_aehplus_grip_gait.gh5',variable)

List of variable names to use in the following functions:
 - mplus.plot.histogram
 - mplus.plot.scatterplot
 - mplus.get.data

Variables:
```

```r
observed_predicted(dsL) # create scatterplot
```

<img src="figure_rmd/hrs_male_aehplus_grip_gait-1.png" title="" alt="" width="550px" />

## grip_pef

```r
dsL <- get_gh5_data(file=ls_gh5,
                    study = "hrs",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "grip",
                    process2 = "pef")
```

```

Plot functions:
 - mplus.plot.histogram('./studies/hrs/physical/b1_male_aehplus_grip_pef.gh5',variable,bins)
 - mplus.plot.scatterplot('./studies/hrs/physical/b1_male_aehplus_grip_pef.gh5',xvar,yvar)

Plot data extraction functions:
 - mplus.list.variables('./studies/hrs/physical/b1_male_aehplus_grip_pef.gh5')
 - mplus.get.data('./studies/hrs/physical/b1_male_aehplus_grip_pef.gh5',variable)

List of variable names to use in the following functions:
 - mplus.plot.histogram
 - mplus.plot.scatterplot
 - mplus.get.data

Variables:
```

```r
observed_predicted(dsL) # create scatterplot
```

<img src="figure_rmd/hrs_male_aehplus_grip_pef-1.png" title="" alt="" width="550px" />

## grip_pef

```r
dsL <- get_gh5_data(file=ls_gh5,
                    study = "hrs",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "grip",
                    process2 = "pef")
```

```

Plot functions:
 - mplus.plot.histogram('./studies/hrs/physical/b1_male_aehplus_grip_pef.gh5',variable,bins)
 - mplus.plot.scatterplot('./studies/hrs/physical/b1_male_aehplus_grip_pef.gh5',xvar,yvar)

Plot data extraction functions:
 - mplus.list.variables('./studies/hrs/physical/b1_male_aehplus_grip_pef.gh5')
 - mplus.get.data('./studies/hrs/physical/b1_male_aehplus_grip_pef.gh5',variable)

List of variable names to use in the following functions:
 - mplus.plot.histogram
 - mplus.plot.scatterplot
 - mplus.get.data

Variables:
```

```r
observed_predicted(dsL) # create scatterplot
```

<img src="figure_rmd/hrs_male_aehplus_grip_pef-1.png" title="" alt="" width="550px" />


# LASA
## gait_grip

```r
dsL <- get_gh5_data(file=ls_gh5,
                    study = "lasa",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "gait",
                    process2 = "grip")
```

```

Plot functions:
 - mplus.plot.histogram('./studies/lasa/physical/b1_male_aehplus_gait_grip.gh5',variable,bins)
 - mplus.plot.scatterplot('./studies/lasa/physical/b1_male_aehplus_gait_grip.gh5',xvar,yvar)

Plot data extraction functions:
 - mplus.list.variables('./studies/lasa/physical/b1_male_aehplus_gait_grip.gh5')
 - mplus.get.data('./studies/lasa/physical/b1_male_aehplus_gait_grip.gh5',variable)

List of variable names to use in the following functions:
 - mplus.plot.histogram
 - mplus.plot.scatterplot
 - mplus.get.data

Variables:
```

```r
observed_predicted(dsL) # create scatterplot
```

<img src="figure_rmd/lasa_male_aehplus_gait_grip-1.png" title="" alt="" width="550px" />

## pek_gait

```r
dsL <- get_gh5_data(file=ls_gh5,
                    study = "lasa",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "pek",
                    process2 = "gait")
```

```

Plot functions:
 - mplus.plot.histogram('./studies/lasa/physical/b1_male_aehplus_pek_gait.gh5',variable,bins)
 - mplus.plot.scatterplot('./studies/lasa/physical/b1_male_aehplus_pek_gait.gh5',xvar,yvar)

Plot data extraction functions:
 - mplus.list.variables('./studies/lasa/physical/b1_male_aehplus_pek_gait.gh5')
 - mplus.get.data('./studies/lasa/physical/b1_male_aehplus_pek_gait.gh5',variable)

List of variable names to use in the following functions:
 - mplus.plot.histogram
 - mplus.plot.scatterplot
 - mplus.get.data

Variables:
```

```r
observed_predicted(dsL) # create scatterplot
```

<img src="figure_rmd/lasa_male_aehplus_pek_gait-1.png" title="" alt="" width="550px" />

## pek_grip

```r
dsL <- get_gh5_data(file=ls_gh5,
                    study = "lasa",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "pek",
                    process2 = "grip")
```

```

Plot functions:
 - mplus.plot.histogram('./studies/lasa/physical/b1_male_aehplus_pek_grip.gh5',variable,bins)
 - mplus.plot.scatterplot('./studies/lasa/physical/b1_male_aehplus_pek_grip.gh5',xvar,yvar)

Plot data extraction functions:
 - mplus.list.variables('./studies/lasa/physical/b1_male_aehplus_pek_grip.gh5')
 - mplus.get.data('./studies/lasa/physical/b1_male_aehplus_pek_grip.gh5',variable)

List of variable names to use in the following functions:
 - mplus.plot.histogram
 - mplus.plot.scatterplot
 - mplus.get.data

Variables:
```

```r
observed_predicted(dsL) # create scatterplot
```

<img src="figure_rmd/lasa_male_aehplus_pek_grip-1.png" title="" alt="" width="550px" />

```r
#### OCTO ####
```



# OCTO
## gait_grip

```r
dsL <- get_gh5_data(file=ls_gh5,
                    study = "octo",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "gait",
                    process2 = "grip")
```

```

Plot functions:
 - mplus.plot.histogram('./studies/octo/physical/b1_male_aehplus_gait_grip.gh5',variable,bins)
 - mplus.plot.scatterplot('./studies/octo/physical/b1_male_aehplus_gait_grip.gh5',xvar,yvar)

Plot data extraction functions:
 - mplus.list.variables('./studies/octo/physical/b1_male_aehplus_gait_grip.gh5')
 - mplus.get.data('./studies/octo/physical/b1_male_aehplus_gait_grip.gh5',variable)

List of variable names to use in the following functions:
 - mplus.plot.histogram
 - mplus.plot.scatterplot
 - mplus.get.data

Variables:
```

```r
observed_predicted(dsL) # create scatterplot
```

<img src="figure_rmd/octo_male_aehplus_gait_grip-1.png" title="" alt="" width="550px" />

## pek_gait

```r
dsL <- get_gh5_data(file=ls_gh5,
                    study = "octo",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "pek",
                    process2 = "gait")
```

```

Plot functions:
 - mplus.plot.histogram('./studies/octo/physical/b1_male_aehplus_pek_gait.gh5',variable,bins)
 - mplus.plot.scatterplot('./studies/octo/physical/b1_male_aehplus_pek_gait.gh5',xvar,yvar)

Plot data extraction functions:
 - mplus.list.variables('./studies/octo/physical/b1_male_aehplus_pek_gait.gh5')
 - mplus.get.data('./studies/octo/physical/b1_male_aehplus_pek_gait.gh5',variable)

List of variable names to use in the following functions:
 - mplus.plot.histogram
 - mplus.plot.scatterplot
 - mplus.get.data

Variables:
```

```r
observed_predicted(dsL) # create scatterplot
```

<img src="figure_rmd/octo_male_aehplus_pek_gait-1.png" title="" alt="" width="550px" />

## pek_grip

```r
dsL <- get_gh5_data(file=ls_gh5,
                    study = "octo",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "pek",
                    process2 = "grip")
```

```

Plot functions:
 - mplus.plot.histogram('./studies/octo/physical/b1_male_aehplus_pek_grip.gh5',variable,bins)
 - mplus.plot.scatterplot('./studies/octo/physical/b1_male_aehplus_pek_grip.gh5',xvar,yvar)

Plot data extraction functions:
 - mplus.list.variables('./studies/octo/physical/b1_male_aehplus_pek_grip.gh5')
 - mplus.get.data('./studies/octo/physical/b1_male_aehplus_pek_grip.gh5',variable)

List of variable names to use in the following functions:
 - mplus.plot.histogram
 - mplus.plot.scatterplot
 - mplus.get.data

Variables:
```

```r
observed_predicted(dsL) # create scatterplot
```

<img src="figure_rmd/octo_male_aehplus_pek_grip-1.png" title="" alt="" width="550px" />

```r
#### RADC ####
```


# RADC
## fev_gait

```r
dsL <- get_gh5_data(file=ls_gh5,
                    study = "radc",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "fev",
                    process2 = "gait")
```

```

Plot functions:
 - mplus.plot.histogram('./studies/radc/physical/b1_male_aehplus_fev_gait.gh5',variable,bins)
 - mplus.plot.scatterplot('./studies/radc/physical/b1_male_aehplus_fev_gait.gh5',xvar,yvar)

Plot data extraction functions:
 - mplus.list.variables('./studies/radc/physical/b1_male_aehplus_fev_gait.gh5')
 - mplus.get.data('./studies/radc/physical/b1_male_aehplus_fev_gait.gh5',variable)

List of variable names to use in the following functions:
 - mplus.plot.histogram
 - mplus.plot.scatterplot
 - mplus.get.data

Variables:
```

```r
observed_predicted(dsL) # create scatterplot
```

<img src="figure_rmd/radc_male_aehplus_fev_gait-1.png" title="" alt="" width="550px" />

## fev_grip

```r
dsL <- get_gh5_data(file=ls_gh5,
                    study = "radc",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "fev",
                    process2 = "grip")
```

```

Plot functions:
 - mplus.plot.histogram('./studies/radc/physical/b1_male_aehplus_fev_grip.gh5',variable,bins)
 - mplus.plot.scatterplot('./studies/radc/physical/b1_male_aehplus_fev_grip.gh5',xvar,yvar)

Plot data extraction functions:
 - mplus.list.variables('./studies/radc/physical/b1_male_aehplus_fev_grip.gh5')
 - mplus.get.data('./studies/radc/physical/b1_male_aehplus_fev_grip.gh5',variable)

List of variable names to use in the following functions:
 - mplus.plot.histogram
 - mplus.plot.scatterplot
 - mplus.get.data

Variables:
```

```r
observed_predicted(dsL) # create scatterplot
```

<img src="figure_rmd/radc_male_aehplus_fev_grip-1.png" title="" alt="" width="550px" />

## gait_grip

```r
dsL <- get_gh5_data(file=ls_gh5,
                    study = "radc",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "gait",
                    process2 = "grip")
```

```

Plot functions:
 - mplus.plot.histogram('./studies/radc/physical/b1_male_aehplus_gait_grip.gh5',variable,bins)
 - mplus.plot.scatterplot('./studies/radc/physical/b1_male_aehplus_gait_grip.gh5',xvar,yvar)

Plot data extraction functions:
 - mplus.list.variables('./studies/radc/physical/b1_male_aehplus_gait_grip.gh5')
 - mplus.get.data('./studies/radc/physical/b1_male_aehplus_gait_grip.gh5',variable)

List of variable names to use in the following functions:
 - mplus.plot.histogram
 - mplus.plot.scatterplot
 - mplus.get.data

Variables:
```

```r
observed_predicted(dsL) # create scatterplot
```

<img src="figure_rmd/radc_male_aehplus_gait_grip-1.png" title="" alt="" width="550px" />

```r
gh5_paths
```

```
 [1] "./studies/eas/physical/b1_female_aehplus_grip_gait.gh5"  
 [2] "./studies/eas/physical/b1_female_aehplus_grip_pef.gh5"   
 [3] "./studies/eas/physical/b1_female_aehplus_pef_gait.gh5"   
 [4] "./studies/eas/physical/b1_male_aehplus_grip_gait.gh5"    
 [5] "./studies/eas/physical/b1_male_aehplus_grip_pef.gh5"     
 [6] "./studies/eas/physical/b1_male_aehplus_pef_gait.gh5"     
 [7] "./studies/hrs/physical/b1_female_aehplus_grip_gait.gh5"  
 [8] "./studies/hrs/physical/b1_female_aehplus_grip_pef.gh5"   
 [9] "./studies/hrs/physical/b1_female_aehplus_pef_gait.gh5"   
[10] "./studies/hrs/physical/b1_male_aehplus_grip_gait.gh5"    
[11] "./studies/hrs/physical/b1_male_aehplus_grip_pef.gh5"     
[12] "./studies/hrs/physical/b1_male_aehplus_pef_gait.gh5"     
[13] "./studies/lasa/physical/b1_female_aehplus_gait_grip.gh5" 
[14] "./studies/lasa/physical/b1_female_aehplus_pek_gait.gh5"  
[15] "./studies/lasa/physical/b1_female_aehplus_pek_grip.gh5"  
[16] "./studies/lasa/physical/b1_male_aehplus_gait_grip.gh5"   
[17] "./studies/lasa/physical/b1_male_aehplus_pek_gait.gh5"    
[18] "./studies/lasa/physical/b1_male_aehplus_pek_grip.gh5"    
[19] "./studies/octo/physical/b1_female_aehplus_gait_grip.gh5" 
[20] "./studies/octo/physical/b1_female_aehplus_pek_gait.gh5"  
[21] "./studies/octo/physical/b1_female_aehplus_pek_grip.gh5"  
[22] "./studies/octo/physical/b1_male_aehplus_gait_grip.gh5"   
[23] "./studies/octo/physical/b1_male_aehplus_pek_gait.gh5"    
[24] "./studies/octo/physical/b1_male_aehplus_pek_grip.gh5"    
[25] "./studies/radc/physical/b1_female_aehplus_fev_gait.gh5"  
[26] "./studies/radc/physical/b1_female_aehplus_fev_grip.gh5"  
[27] "./studies/radc/physical/b1_female_aehplus_gait_grip.gh5" 
[28] "./studies/radc/physical/b1_male_aehplus_fev_gait.gh5"    
[29] "./studies/radc/physical/b1_male_aehplus_fev_grip.gh5"    
[30] "./studies/radc/physical/b1_male_aehplus_gait_grip.gh5"   
[31] "./studies/satsa/physical/b1_female_aehplus_gait_fev.gh5" 
[32] "./studies/satsa/physical/b1_female_aehplus_gait_grip.gh5"
[33] "./studies/satsa/physical/b1_female_aehplus_grip_fev.gh5" 
[34] "./studies/satsa/physical/b1_male_aehplus_gait_fev.gh5"   
[35] "./studies/satsa/physical/b1_male_aehplus_gait_grip.gh5"  
[36] "./studies/satsa/physical/b1_male_aehplus_grip_fev.gh5"   
```

```r
#### SATSA ####
```


# SATSA
## gait_fev

```r
dsL <- get_gh5_data(file=ls_gh5,
                    study = "satsa",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "gait",
                    process2 = "fev")
```

```

Plot functions:
 - mplus.plot.histogram('./studies/satsa/physical/b1_male_aehplus_gait_fev.gh5',variable,bins)
 - mplus.plot.scatterplot('./studies/satsa/physical/b1_male_aehplus_gait_fev.gh5',xvar,yvar)

Plot data extraction functions:
 - mplus.list.variables('./studies/satsa/physical/b1_male_aehplus_gait_fev.gh5')
 - mplus.get.data('./studies/satsa/physical/b1_male_aehplus_gait_fev.gh5',variable)

List of variable names to use in the following functions:
 - mplus.plot.histogram
 - mplus.plot.scatterplot
 - mplus.get.data

Variables:
```

```r
observed_predicted(dsL) # create scatterplot
```

<img src="figure_rmd/satsa_male_aehplus_gait_fev-1.png" title="" alt="" width="550px" />

## gait_grip

```r
dsL <- get_gh5_data(file=ls_gh5,
                    study = "satsa",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "gait",
                    process2 = "grip")
```

```

Plot functions:
 - mplus.plot.histogram('./studies/satsa/physical/b1_male_aehplus_gait_grip.gh5',variable,bins)
 - mplus.plot.scatterplot('./studies/satsa/physical/b1_male_aehplus_gait_grip.gh5',xvar,yvar)

Plot data extraction functions:
 - mplus.list.variables('./studies/satsa/physical/b1_male_aehplus_gait_grip.gh5')
 - mplus.get.data('./studies/satsa/physical/b1_male_aehplus_gait_grip.gh5',variable)

List of variable names to use in the following functions:
 - mplus.plot.histogram
 - mplus.plot.scatterplot
 - mplus.get.data

Variables:
```

```r
observed_predicted(dsL) # create scatterplot
```

<img src="figure_rmd/satsa_male_aehplus_gait_grip-1.png" title="" alt="" width="550px" />

## grip_fev

```r
dsL <- get_gh5_data(file=ls_gh5,
                    study = "satsa",
                    subgroup = "male",
                    model_type = "aehplus",
                    process1 = "grip",
                    process2 = "fev")
```

```

Plot functions:
 - mplus.plot.histogram('./studies/satsa/physical/b1_male_aehplus_grip_fev.gh5',variable,bins)
 - mplus.plot.scatterplot('./studies/satsa/physical/b1_male_aehplus_grip_fev.gh5',xvar,yvar)

Plot data extraction functions:
 - mplus.list.variables('./studies/satsa/physical/b1_male_aehplus_grip_fev.gh5')
 - mplus.get.data('./studies/satsa/physical/b1_male_aehplus_grip_fev.gh5',variable)

List of variable names to use in the following functions:
 - mplus.plot.histogram
 - mplus.plot.scatterplot
 - mplus.get.data

Variables:
```

```r
observed_predicted(dsL) # create scatterplot
```

<img src="figure_rmd/satsa_male_aehplus_grip_fev-1.png" title="" alt="" width="550px" />



