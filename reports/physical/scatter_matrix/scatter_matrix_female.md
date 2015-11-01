# FScore Scatters

<!-- These two chunks should be added in the beginning of every .Rmd that you want to source an .R script -->
<!--  The 1st mandatory chunck  -->
<!--  Set the working directory to the repository's base directory -->


<!--  The 2nd mandatory chunck  -->
<!-- Set the report-wide options, and point to the external code file. -->




<!-- Load 'sourced' R files.  Suppress the output when loading packages. --> 



<!-- Load the sources.  Suppress the output when loading sources. --> 

```
[1] "Loaded rhdf5 package"
```


<!-- Load any Global functions and variables declared in the R file.  Suppress the output. --> 





<!-- Declare any global functions specific to a Rmd output.  Suppress the output. --> 


<!-- Load the datasets.   -->

```
[1] "path_out"     "path_gh5"     "study_name"   "model_number" "subgroup"     "model_type"   "process1"    
[8] "process2"    
```

```
$path_out
 [1] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/eas/physical/b1_female_aehplus_grip_gait.out"  
 [2] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/eas/physical/b1_female_aehplus_grip_pef.out"   
 [3] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/eas/physical/b1_female_aehplus_pef_gait.out"   
 [4] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/eas/physical/b1_male_aehplus_grip_gait.out"    
 [5] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/eas/physical/b1_male_aehplus_grip_pef.out"     
 [6] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/eas/physical/b1_male_aehplus_pef_gait.out"     
 [7] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/elsa/physical/b1_female_aehplus_fev_gait.out"  
 [8] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/elsa/physical/b1_female_aehplus_grip_fev.out"  
 [9] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/elsa/physical/b1_female_aehplus_grip_gait.out" 
[10] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/elsa/physical/b1_male_aehplus_fev_gait.out"    
[11] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/elsa/physical/b1_male_aehplus_grip_fev.out"    
[12] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/elsa/physical/b1_male_aehplus_grip_gait.out"   
[13] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/hrs/physical/b1_female_aehplus_grip_gait.out"  
[14] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/hrs/physical/b1_female_aehplus_grip_pef.out"   
[15] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/hrs/physical/b1_female_aehplus_pef_gait.out"   
[16] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/hrs/physical/b1_male_aehplus_grip_gait.out"    
[17] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/hrs/physical/b1_male_aehplus_grip_pef.out"     
[18] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/hrs/physical/b1_male_aehplus_pef_gait.out"     
[19] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/ilse/physical/b1_female_aehplus_grip_tug.out"  
[20] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/ilse/physical/b1_male_aehplus_grip_tug.out"    
[21] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/lasa/physical/b1_female_aehplus_grip_gait.out" 
[22] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/lasa/physical/b1_female_aehplus_grip_pef.out"  
[23] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/lasa/physical/b1_female_aehplus_pef_gait.out"  
[24] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/lasa/physical/b1_male_aehplus_grip_gait.out"   
[25] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/lasa/physical/b1_male_aehplus_grip_pef.out"    
[26] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/lasa/physical/b1_male_aehplus_pef_gait.out"    
[27] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/nuage/physical/b1_female_aehplus_grip_gait.out"
[28] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/nuage/physical/b1_female_aehplus_grip_tug.out" 
[29] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/nuage/physical/b1_male_aehplus_grip_gait.out"  
[30] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/nuage/physical/b1_male_aehplus_grip_tug.out"   
[31] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/octo/physical/b1_female_aehplus_grip_gait.out" 
[32] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/octo/physical/b1_female_aehplus_grip_pef.out"  
[33] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/octo/physical/b1_female_aehplus_pef_gait.out"  
[34] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/octo/physical/b1_male_aehplus_grip_gait.out"   
[35] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/octo/physical/b1_male_aehplus_grip_pef.out"    
[36] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/octo/physical/b1_male_aehplus_pef_gait.out"    
[37] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/radc/physical/b1_female_aehplus_fev_gait.out"  
[38] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/radc/physical/b1_female_aehplus_fev_grip.out"  
[39] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/radc/physical/b1_female_aehplus_gait_grip.out" 
[40] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/radc/physical/b1_male_aehplus_fev_gait.out"    
[41] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/radc/physical/b1_male_aehplus_fev_grip.out"    
[42] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/radc/physical/b1_male_aehplus_gait_grip.out"   
[43] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/satsa/physical/b1_female_aehplus_gait_fev.out" 
[44] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/satsa/physical/b1_female_aehplus_gait_grip.out"
[45] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/satsa/physical/b1_female_aehplus_grip_fev.out" 
[46] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/satsa/physical/b1_male_aehplus_gait_fev.out"   
[47] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/satsa/physical/b1_male_aehplus_gait_grip.out"  
[48] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/satsa/physical/b1_male_aehplus_grip_fev.out"   

$path_gh5
 [1] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/eas/physical/b1_female_aehplus_grip_gait.gh5"  
 [2] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/eas/physical/b1_female_aehplus_grip_pef.gh5"   
 [3] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/eas/physical/b1_female_aehplus_pef_gait.gh5"   
 [4] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/eas/physical/b1_male_aehplus_grip_gait.gh5"    
 [5] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/eas/physical/b1_male_aehplus_grip_pef.gh5"     
 [6] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/eas/physical/b1_male_aehplus_pef_gait.gh5"     
 [7] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/elsa/physical/b1_female_aehplus_fev_gait.gh5"  
 [8] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/elsa/physical/b1_female_aehplus_grip_fev.gh5"  
 [9] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/elsa/physical/b1_female_aehplus_grip_gait.gh5" 
[10] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/elsa/physical/b1_male_aehplus_fev_gait.gh5"    
[11] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/elsa/physical/b1_male_aehplus_grip_fev.gh5"    
[12] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/elsa/physical/b1_male_aehplus_grip_gait.gh5"   
[13] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/hrs/physical/b1_female_aehplus_grip_gait.gh5"  
[14] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/hrs/physical/b1_female_aehplus_grip_pef.gh5"   
[15] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/hrs/physical/b1_female_aehplus_pef_gait.gh5"   
[16] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/hrs/physical/b1_male_aehplus_grip_gait.gh5"    
[17] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/hrs/physical/b1_male_aehplus_grip_pef.gh5"     
[18] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/hrs/physical/b1_male_aehplus_pef_gait.gh5"     
[19] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/ilse/physical/b1_female_aehplus_grip_tug.gh5"  
[20] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/ilse/physical/b1_male_aehplus_grip_tug.gh5"    
[21] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/lasa/physical/b1_female_aehplus_grip_gait.gh5" 
[22] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/lasa/physical/b1_female_aehplus_grip_pef.gh5"  
[23] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/lasa/physical/b1_female_aehplus_pef_gait.gh5"  
[24] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/lasa/physical/b1_male_aehplus_grip_gait.gh5"   
[25] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/lasa/physical/b1_male_aehplus_grip_pef.gh5"    
[26] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/lasa/physical/b1_male_aehplus_pef_gait.gh5"    
[27] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/nuage/physical/b1_female_aehplus_grip_gait.gh5"
[28] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/nuage/physical/b1_female_aehplus_grip_tug.gh5" 
[29] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/nuage/physical/b1_male_aehplus_grip_gait.gh5"  
[30] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/nuage/physical/b1_male_aehplus_grip_tug.gh5"   
[31] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/octo/physical/b1_female_aehplus_grip_gait.gh5" 
[32] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/octo/physical/b1_female_aehplus_grip_pef.gh5"  
[33] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/octo/physical/b1_female_aehplus_pef_gait.gh5"  
[34] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/octo/physical/b1_male_aehplus_grip_gait.gh5"   
[35] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/octo/physical/b1_male_aehplus_grip_pef.gh5"    
[36] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/octo/physical/b1_male_aehplus_pef_gait.gh5"    
[37] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/radc/physical/b1_female_aehplus_fev_gait.gh5"  
[38] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/radc/physical/b1_female_aehplus_fev_grip.gh5"  
[39] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/radc/physical/b1_female_aehplus_gait_grip.gh5" 
[40] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/radc/physical/b1_male_aehplus_fev_gait.gh5"    
[41] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/radc/physical/b1_male_aehplus_fev_grip.gh5"    
[42] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/radc/physical/b1_male_aehplus_gait_grip.gh5"   
[43] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/satsa/physical/b1_female_aehplus_gait_fev.gh5" 
[44] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/satsa/physical/b1_female_aehplus_gait_grip.gh5"
[45] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/satsa/physical/b1_female_aehplus_grip_fev.gh5" 
[46] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/satsa/physical/b1_male_aehplus_gait_fev.gh5"   
[47] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/satsa/physical/b1_male_aehplus_gait_grip.gh5"  
[48] "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/satsa/physical/b1_male_aehplus_grip_fev.gh5"   

$study_name
 [1] "eas"   "eas"   "eas"   "eas"   "eas"   "eas"   "elsa"  "elsa"  "elsa"  "elsa"  "elsa"  "elsa"  "hrs"   "hrs"  
[15] "hrs"   "hrs"   "hrs"   "hrs"   "ilse"  "ilse"  "lasa"  "lasa"  "lasa"  "lasa"  "lasa"  "lasa"  "nuage" "nuage"
[29] "nuage" "nuage" "octo"  "octo"  "octo"  "octo"  "octo"  "octo"  "radc"  "radc"  "radc"  "radc"  "radc"  "radc" 
[43] "satsa" "satsa" "satsa" "satsa" "satsa" "satsa"

$model_number
 [1] "b1" "b1" "b1" "b1" "b1" "b1" "b1" "b1" "b1" "b1" "b1" "b1" "b1" "b1" "b1" "b1" "b1" "b1" "b1" "b1" "b1" "b1" "b1"
[24] "b1" "b1" "b1" "b1" "b1" "b1" "b1" "b1" "b1" "b1" "b1" "b1" "b1" "b1" "b1" "b1" "b1" "b1" "b1" "b1" "b1" "b1" "b1"
[47] "b1" "b1"

$subgroup
 [1] "female" "female" "female" "male"   "male"   "male"   "female" "female" "female" "male"   "male"   "male"  
[13] "female" "female" "female" "male"   "male"   "male"   "female" "male"   "female" "female" "female" "male"  
[25] "male"   "male"   "female" "female" "male"   "male"   "female" "female" "female" "male"   "male"   "male"  
[37] "female" "female" "female" "male"   "male"   "male"   "female" "female" "female" "male"   "male"   "male"  

$model_type
 [1] "aehplus" "aehplus" "aehplus" "aehplus" "aehplus" "aehplus" "aehplus" "aehplus" "aehplus" "aehplus" "aehplus"
[12] "aehplus" "aehplus" "aehplus" "aehplus" "aehplus" "aehplus" "aehplus" "aehplus" "aehplus" "aehplus" "aehplus"
[23] "aehplus" "aehplus" "aehplus" "aehplus" "aehplus" "aehplus" "aehplus" "aehplus" "aehplus" "aehplus" "aehplus"
[34] "aehplus" "aehplus" "aehplus" "aehplus" "aehplus" "aehplus" "aehplus" "aehplus" "aehplus" "aehplus" "aehplus"
[45] "aehplus" "aehplus" "aehplus" "aehplus"

$process1
 [1] "grip" "grip" "pef"  "grip" "grip" "pef"  "fev"  "grip" "grip" "fev"  "grip" "grip" "grip" "grip" "pef"  "grip"
[17] "grip" "pef"  "grip" "grip" "grip" "grip" "pef"  "grip" "grip" "pef"  "grip" "grip" "grip" "grip" "grip" "grip"
[33] "pef"  "grip" "grip" "pef"  "fev"  "fev"  "gait" "fev"  "fev"  "gait" "gait" "gait" "grip" "gait" "gait" "grip"

$process2
 [1] "gait" "pef"  "gait" "gait" "pef"  "gait" "gait" "fev"  "gait" "gait" "fev"  "gait" "gait" "pef"  "gait" "gait"
[17] "pef"  "gait" "tug"  "tug"  "gait" "pef"  "gait" "gait" "pef"  "gait" "gait" "tug"  "gait" "tug"  "gait" "pef" 
[33] "gait" "gait" "pef"  "gait" "gait" "grip" "grip" "gait" "grip" "grip" "fev"  "grip" "fev"  "fev"  "grip" "fev" 
```

```

Plot functions:
 - mplus.plot.histogram('C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/eas/physical/b1_male_aehplus_grip_pef.gh5',variable,bins)
 - mplus.plot.scatterplot('C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/eas/physical/b1_male_aehplus_grip_pef.gh5',xvar,yvar)

Plot data extraction functions:
 - mplus.list.variables('C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/eas/physical/b1_male_aehplus_grip_pef.gh5')
 - mplus.get.data('C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/eas/physical/b1_male_aehplus_grip_pef.gh5',variable)

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





#MALES
#EAS
##grip_pef

```r
dsL <- get_gh5_data(file=model_list,
                    study = "eas",
                    subgroup = "female",
                    model_type = "aehplus",
                    process1 = "grip",
                    process2 = "pef")
```

```

Plot functions:
 - mplus.plot.histogram('C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/eas/physical/b1_female_aehplus_grip_pef.gh5',variable,bins)
 - mplus.plot.scatterplot('C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/eas/physical/b1_female_aehplus_grip_pef.gh5',xvar,yvar)

Plot data extraction functions:
 - mplus.list.variables('C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/eas/physical/b1_female_aehplus_grip_pef.gh5')
 - mplus.get.data('C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/eas/physical/b1_female_aehplus_grip_pef.gh5',variable)

List of variable names to use in the following functions:
 - mplus.plot.histogram
 - mplus.plot.scatterplot
 - mplus.get.data

Variables:
```

```r
# dsL <- dsL[dsL$id %in% sample(unique(dsL$id), 100), ]
int_slope(dsL) # create scatterplot
```

<img src="figure_rmd_female/eas_female_aehplus_grip_pef-1.png" title="" alt="" width="550px" />

```r
#
# # @knitr eas_female_aehplus_grip_gait ---------------------------------------
# dsL <- get_gh5_data(file=model_list,
#                     study = "eas",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "grip",
#                     process2 = "gait")
# # dsL <- dsL[dsL$id %in% sample(unique(dsL$id), 100), ]
# int_slope(dsL) # create scatterplot
#
#
# # @knitr eas_female_aehplus_pef_gait ---------------------------------------
# dsL <- get_gh5_data(file=model_list,
#                     study = "eas",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "pef",
#                     process2 = "gait")
# # dsL <- dsL[dsL$id %in% sample(unique(dsL$id), 100), ]
# int_slope(dsL) # create scatterplot
#
# #### ELSA ####
#
# # @knitr elsa_female_aehplus_grip_fev ---------------------------------------
# dsL <- get_gh5_data(file=model_list,
#                     study = "elsa",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "grip",
#                     process2 = "fev")
# # dsL <- dsL[dsL$id %in% sample(unique(dsL$id), 100), ]
# int_slope(dsL) # create scatterplot
#
# # @knitr elsa_female_aehplus_grip_gait ---------------------------------------
# dsL <- get_gh5_data(file=model_list,
#                     study = "elsa",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "grip",
#                     process2 = "gait")
# # dsL <- dsL[dsL$id %in% sample(unique(dsL$id), 100), ]
# int_slope(dsL) # create scatterplot
#
# # @knitr elsa_female_aehplus_fev_gait ---------------------------------------
# dsL <- get_gh5_data(file=model_list,
#                     study = "elsa",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "fev",
#                     process2 = "gait")
# # dsL <- dsL[dsL$id %in% sample(unique(dsL$id), 100), ]
# int_slope(dsL) # create scatterplot
#
#
# #### HRS ####
#
# # @knitr hrs_female_aehplus_grip_pef ---------------------------------------
# dsL <- get_gh5_data(file=model_list,
#                     study = "hrs",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "grip",
#                     process2 = "pef",
#                     age_center = 75)
# # dsL <- dsL[dsL$id %in% sample(unique(dsL$id), 100), ]
# int_slope(dsL) # create scatterplot
#
# # @knitr hrs_female_aehplus_grip_gait ---------------------------------------
# dsL <- get_gh5_data(file=model_list,
#                     study = "hrs",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "grip",
#                     process2 = "gait",
#                     age_center = 75)
# # dsL <- dsL[dsL$id %in% sample(unique(dsL$id), 100), ]
# int_slope(dsL) # create scatterplot
#
#
# # @knitr hrs_female_aehplus_pef_gait ---------------------------------------
# dsL <- get_gh5_data(file=model_list,
#                     study = "hrs",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "pef",
#                     process2 = "gait",
#                     age_center = 75)
# # dsL <- dsL[dsL$id %in% sample(unique(dsL$id), 100), ]
# int_slope(dsL) # create scatterplot
#
#
#
# ##### LASA ####
#
# # @knitr lasa_female_aehplus_grip_pef ---------------------------------------
# dsL <- get_gh5_data(file=model_list,
#                     study = "lasa",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "grip",
#                     process2 = "pef")
# # dsL <- dsL[dsL$id %in% sample(unique(dsL$id), 100), ]
# int_slope(dsL) # create scatterplot
#
#
# # @knitr lasa_female_aehplus_grip_gait ---------------------------------------
# dsL <- get_gh5_data(file=model_list,
#                     study = "lasa",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "grip",
#                     process2 = "gait")
# # dsL <- dsL[dsL$id %in% sample(unique(dsL$id), 100), ]
# int_slope(dsL) # create scatterplot
#
# # @knitr lasa_female_aehplus_pef_gait ---------------------------------------
# dsL <- get_gh5_data(file=model_list,
#                     study = "lasa",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "pef",
#                     process2 = "gait")
# # dsL <- dsL[dsL$id %in% sample(unique(dsL$id), 100), ]
# int_slope(dsL) # create scatterplot
#
#
# #### OCTO ####
#
# # @knitr octo_female_aehplus_grip_pef ---------------------------------------
# dsL <- get_gh5_data(file=model_list,
#                     study = "octo",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "grip",
#                     process2 = "pef")
# # dsL <- dsL[dsL$id %in% sample(unique(dsL$id), 100), ]
# int_slope(dsL) # create scatterplot
#
#
# # @knitr octo_female_aehplus_grip_gait ---------------------------------------
# dsL <- get_gh5_data(file=model_list,
#                     study = "octo",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "grip",
#                     process2 = "gait")
# # dsL <- dsL[dsL$id %in% sample(unique(dsL$id), 100), ]
# int_slope(dsL) # create scatterplot
#
# # @knitr octo_female_aehplus_pef_gait ---------------------------------------
# dsL <- get_gh5_data(file=model_list,
#                     study = "octo",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "pef",
#                     process2 = "gait")
# # dsL <- dsL[dsL$id %in% sample(unique(dsL$id), 100), ]
# int_slope(dsL) # create scatterplot


# #### RADC ####
# # @knitr radc_female_aehplus_grip_fev ---------------------------------------
# dsL <- get_gh5_data(file=model_list,
#                     study = "radc",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "fev",
#                     process2 = "grip")
# # dsL <- dsL[dsL$id %in% sample(unique(dsL$id), 100), ]
# int_slope(dsL) # create scatterplot
#
# # @knitr radc_female_aehplus_grip_gait ---------------------------------------
# dsL <- get_gh5_data(file=model_list,
#                     study = "radc",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "gait",
#                     process2 = "grip")
# # dsL <- dsL[dsL$id %in% sample(unique(dsL$id), 100), ]
# int_slope(dsL) # create scatterplot

# # @knitr radc_female_aehplus_fev_gait ---------------------------------------
# dsL <- get_gh5_data(file=model_list,
#                     study = "radc",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "fev",
#                     process2 = "gait")
# # dsL <- dsL[dsL$id %in% sample(unique(dsL$id), 100), ]
# int_slope(dsL) # create scatterplot


#### SATSA ####

# # @knitr satsa_female_aehplus_grip_fev ---------------------------------------
# dsL <- get_gh5_data(file=model_list,
#                     study = "satsa",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "grip",
#                     process2 = "fev")
# # dsL <- dsL[dsL$id %in% sample(unique(dsL$id), 100), ]
# int_slope(dsL) # create scatterplot


# # @knitr satsa_female_aehplus_grip_gait ---------------------------------------
# dsL <- get_gh5_data(file=model_list,
#                     study = "satsa",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "gait",
#                     process2 = "grip")
# # dsL <- dsL[dsL$id %in% sample(unique(dsL$id), 100), ]
# int_slope(dsL) # create scatterplot
#
# # @knitr satsa_female_aehplus_fev_gait ---------------------------------------
# dsL <- get_gh5_data(file=model_list,
#                     study = "satsa",
#                     subgroup = "female",
#                     model_type = "aehplus",
#                     process1 = "gait",
#                     process2 = "fev")
# # dsL <- dsL[dsL$id %in% sample(unique(dsL$id), 100), ]
# int_slope(dsL) # create scatterplot
#
```
##grip_gait

##pef_gait


#ELSA
## grip_fev

##grip_gait

##fev_gait



#HRS
##grip_pef

##grip_gait

##pef_gait





# EAS
##grip_pef

##grip_gait

##pef_gait




# EAS
##grip_pef

##grip_gait

##pef_gait




# EAS
##grip_fev

##grip_gait

##fev_gait



# EAS
##grip_fev

##grip_gait

##fev_gait







