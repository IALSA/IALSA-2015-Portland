# NuAge: Model catalog



<!--  Set the working directory to the repository's base directory; this assumes the report is nested inside of two directories.-->


<!-- Set the report-wide options, and point to the external code file. -->


<!-- Load the sources.  Suppress the output when loading sources. --> 


<!-- Load 'sourced' R files.  Suppress the output when loading packages. --> 


<!-- load global data -->


<!-- load sepecific data -->


<!-- load functions used in the report -->



This report tallies the models that you have provided to the workshop collective so far.  For frequency counts  across studies consult [Model Counts](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/counts.html) report.  For correlations between random terms in bivariate models across all studies consult [Model Essentials](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/essentials.html)

This report **AIMS** to accomplish two things:     
    1. Help you identify and **correct the errors** in the filenames so that your models can be processed properly  
    2. Help you identify what models should be added to **maximize replicability** effect across studies 


## Introduction and Rationale

Your study

```
[1] "nuage"
```

has provided us with the total number of 

```
58
```
models, using univariate and bivariate specifications:

```

b1 u0 u1 
12 10 36 
```

To remind you, **model_number** (*b1, u0, u1, u2*) refers to the model specification, as shown in the figure below.  The first letter (*b* or *u*) indicates whether the models specifies a single outcome (*u* for *univariate*) or two outcomes (*b* for *bivariate*), while the number (e.g. u*0*, u*1*, u*2*) indicates the highest random term on the first level. </br>

The figure below (next section) shows the proper naming convention for the models you estimated in your study. Please use it to correct the names of some of your models. Our scripts rely on this naming convention for the key information about the model (most importantly, names of the constructs and measures). Therefore, it is of utmost importance that these rules are followed. **If named incorrectly, models might not be used in the collective analysis**.   

Some mistakes could be corrected automatically. Other, however, require *specifically* your attention. To illustrate, consider a cognitive construct *knowledge*. We've encountered entries *knowlegde*, *knowledg*, and *knwoledge*; it is obvious that these three spellings meant to say *knowledge*, and we program the script to correct it automatically. On the other hand, consider a physical construct *pulmonary*, which has two similarly spelled measures, *fev* and *fvc*. When we see a measure of *pulmonary* called *fevc*, we don't know how to interpret it, it could be a misspelling of either one. This is where we need your help.




## Naming rules
![naming convntion](../../libs/images/model_naming_convention.png)
The name of the file **must always contain 7 components** separated by an underscore ( _ ) symbol. The figure above shows the anatomy of a protypical file name with examples of particular values. For example, a bivariate model with random intercepts and slopes (b1), fitted to subsample of females, using age and height as predictors on the second level, and pairing a *pulmonary* measure *fvc* with a *reasoning* measure *block*  will have the name  
```
b1_female_ae_pulmonary_reasoning_fvc_block
```

### Filename components
From left to right, the components of filename are:

  1. Model number (*e.g.* b1, u0) - specification(u, b) and highest random term (0,1,2)  
  2. Sex (*e.g.* male, female) - model fitted using this subset of data
  3. covariateSet - a set of predictors entered into the model on the second level:
    - **empty** : no covariate included into the model  
    - **a** : age is entered as a baseline measure, second level  
    - **ae** : age + education  
    - **aeh** : age + education + height  
    - **aehplus**: age + education + height + diabetes + smoking history + cardiovascular  
    - **full** : all covariates availible in the study (will be different across studies)  
  4. Physical Construct (*e.g.* pulmonary, muscle) - general physical function that can have a number of specific operationalizations or measurements.
  5. Cognitive Construct (*e.g.* reasoning, memory) - general cognitive function that can have a number of specific operationalizations or measurements.
  6. Physical Measure (e.g. pek, grip ) - a specific way to operationalize the measurement of a physical construct
  7. Cognitive Measure (e.g. block, digitspan ) - a specific way to operationalize the measurement of a cognitive construct  
  
### Additional rules
 
 - Construct and Measure names cannot be the same  
 For example, such file names as
 ```
 u1_male_eah_pulmonary_noCog_pulmonary_noCogSpec
 ``` 
 should be avoided.  
 - In univariate models, the absence of a modeling term must be explicit:
 
 ```
 u1_male_aeh_pulmonary_noCog_pek_noCogSpec
 ```
 instead of  
 ```
 u1_male_aeh_pulmonary_pek
 ```
The exact spelling of the explicit absence is not very important: *noPhys*, *nophys*, *noghys* will work just fine and will be caught by an automatic filter.

## Errors of omission
The most common mistake is omitting some of the 7 elements in the name of the output file. The following files need to be renamed so that our scripts can understand what constructs and measures were used in your models:

```
All your models were named properly
```

After removing incorrectly named files, there are

```
58
```
models, which output files contains all 7 components. We have corrected the obvious typos, but some names (of constructs and measures) require your attention. 

# Simple Counts
In this section, **model specification (columns)** are cross-tabulated with **constructs or measures (rows)**, displaying the number of valid models in each category. 

## Physical constructs


```
          
           b1 u0 u1
  chair    .  2  6 
  flamingo .  2  6 
  muscle   12 2  6 
  tug      .  2  6 
  Univar   .  .  6 
  walking  .  2  6 
```


## Physical measures


```
        
         b1 u0 u1
  grip   12 3  6 
  tug    .  2  6 
  univar .  5  24
```

## Cognitive constructs


```
        
         b1 u0 u1
  mental 12 .  6 
  Univar .  10 30
```


## Cognitive measures


```
        
         b1 u0 u1
  3ms    6  .  6 
  mmse   6  .  . 
  univar .  10 30
```
</br></br></br>

# BIVARIATE MODELS

In this section, **constructs (columns)** are cross-tabulated with  **measures (rows)** that opeationalize them in the models. Each non-blank element in a column indicates a unique **measure (row)** of the **construct (column)**. The numeric value shows how many different versions of this model used this specific pair of construct and measure: model may differ on the subgroup (male, female), and the set of covariates (empty, a, ae, aeh, aehplus, full).


## Physical 
Physical **constructs** (columns) by physical **measures** (rows) in BIVARIATE models

```
      
       muscle
  grip 12    
```

## Cognitive 
Cognitive **constructs** (columns) by cognitive **measures** (rows) in BIVARIATE models

```
      
       mental
  3ms  6     
  mmse 6     
```


## Constructs
Number of models with the following **physical constructs** (columns) and  **cognitive constructs** (rows)


```
        
         muscle
  mental 12    
```

## Phys.Constructs
Number of models with the following  **physical constructs** (columns) and  **cognitive measures** (rows)

```
      
       muscle
  3ms  6     
  mmse 6     
```

## Cog.Constructs
Number of models with the following  **physical measure** (columns) and  **cognitive constructs** (rows)

```
        
         grip
  mental 12  
```

## Measures
Number of models with the following  **physical measures** (columns) and  **cognitive measures** (rows)

```
      
       grip
  3ms  6   
  mmse 6   
```
</br></br></br>


# UNIVARIATE MODELS

In this section, **constructs (columns)** are cross-tabulated with  **measures (rows)** that opeationalize them in the models. Each non-blank element in a column indicates a unique **measure (row)** of the **construct (column)**. The numeric value counts the different versions of the model (sex, covariates) that used this specific pair of construct and measure. 

## Physical 
Physical constructs (columns) by physical measures (rows) in UNIVARIATE models

```
           chair flamingo muscle tug Univar walking
                                                   
u0 grip        .        .      2   .      .       1
   tug         .        .      .   2      .       .
   univar      2        2      .   .      .       1
u1 grip        .        .      6   .      .       .
   tug         .        .      .   6      .       .
   univar      6        6      .   .      6       6
```

## Cognitive
Cognitive constructs (columns) by cognitive measures (rows) in UNIVARIATE models

```
           mental Univar
                        
u0 3ms         .      . 
   univar      .      10
u1 3ms         6      . 
   univar      .      30
```
</br></br></br>

# List of models
## b1


model<br/>tag   sex      predictor<br/>set   physical<br/>construct   cognitive<br/>construct   physical<br/>measure   cognitive<br/>measure   file name                                     
--------------  -------  ------------------  -----------------------  ------------------------  ---------------------  ----------------------  ----------------------------------------------
b1              female   aeh                 muscle                   mental                    grip                   3ms                     b1_female_aeh_muscle_global_grip_mmms.out     
b1              female   aehplus             muscle                   mental                    grip                   3ms                     b1_female_aehplus_muscle_global_grip_mmms.out 
b1              female   a                   muscle                   mental                    grip                   3ms                     b1_female_age_muscle_global_grip_mmms.out     
b1              male     aeh                 muscle                   mental                    grip                   3ms                     b1_male_aeh_muscle_global_grip_mmms.out       
b1              male     aehplus             muscle                   mental                    grip                   3ms                     b1_male_aehplus_muscle_global_grip_mmms.out   
b1              male     a                   muscle                   mental                    grip                   3ms                     b1_male_age_muscle_global_grip_mmms.out       
b1              female   a                   muscle                   mental                    grip                   mmse                    b1_female_a_muscle_global_grip_mmse.out       
b1              female   aeh                 muscle                   mental                    grip                   mmse                    b1_female_aeh_muscle_global_grip_mmse.out     
b1              female   aehplus             muscle                   mental                    grip                   mmse                    b1_female_aehplus_muscle_global_grip_mmse.out 
b1              male     a                   muscle                   mental                    grip                   mmse                    b1_male_a_muscle_global_grip_mmse.out         
b1              male     aeh                 muscle                   mental                    grip                   mmse                    b1_male_aeh_muscle_global_grip_mmse.out       
b1              male     aehplus             muscle                   mental                    grip                   mmse                    b1_male_aehplus_muscle_global_grip_mmse.out   

## u1


model<br/>tag   sex      predictor<br/>set   physical<br/>construct   cognitive<br/>construct   physical<br/>measure   cognitive<br/>measure   file name                                                 
--------------  -------  ------------------  -----------------------  ------------------------  ---------------------  ----------------------  ----------------------------------------------------------
u1              female   aeh                 Univar                   mental                    univar                 3ms                     u1_female_aeh_nophys_global_nophysspec_mmms.out           
u1              female   aehplus             Univar                   mental                    univar                 3ms                     u1_female_aehplus_nophys_global_nophysspec_mmms.out       
u1              female   a                   Univar                   mental                    univar                 3ms                     u1_female_age_nophys_global_nophysspec_mmms.out           
u1              male     aeh                 Univar                   mental                    univar                 3ms                     u1_male_aeh_nophys_global_nophysspec_mmms.out             
u1              male     aehplus             Univar                   mental                    univar                 3ms                     u1_male_aehplus_nophys_global_nophysspec_mmms.out         
u1              male     a                   Univar                   mental                    univar                 3ms                     u1_male_age_nophys_global_nophysspec_mmms.out             
u1              female   a                   chair                    Univar                    univar                 univar                  u1_female_a_chair_nocog_nophysspec_nocogspec.out          
u1              female   aeh                 chair                    Univar                    univar                 univar                  u1_female_aeh_chair_nocog_nophysspec_nocogspec.out        
u1              female   aehplus             chair                    Univar                    univar                 univar                  u1_female_aehplus_chair_nocog_nophysspec_nocogspec.out    
u1              male     a                   chair                    Univar                    univar                 univar                  u1_male_a_chair_nocog_nophysspec_nocogspec.out            
u1              male     aeh                 chair                    Univar                    univar                 univar                  u1_male_aeh_chair_nocog_nophysspec_nocogspec.out          
u1              male     aehplus             chair                    Univar                    univar                 univar                  u1_male_aehplus_chair_nocog_nophysspec_nocogspec.out      
u1              female   a                   flamingo                 Univar                    univar                 univar                  u1_female_a_flamingo_nocog_nophysspec_nocogspec.out       
u1              female   aeh                 flamingo                 Univar                    univar                 univar                  u1_female_aeh_flamingo_nocog_nophysspec_nocogspec.out     
u1              female   aehplus             flamingo                 Univar                    univar                 univar                  u1_female_aehplus_flamingo_nocog_nophysspec_nocogspec.out 
u1              male     a                   flamingo                 Univar                    univar                 univar                  u1_male_a_flamingo_nocog_nophysspec_nocogspec.out         
u1              male     aeh                 flamingo                 Univar                    univar                 univar                  u1_male_aeh_flamingo_nocog_nophysspec_nocogspec.out       
u1              male     aehplus             flamingo                 Univar                    univar                 univar                  u1_male_aehplus_flamingo_nocog_nophysspec_nocogspec.out   
u1              female   aeh                 muscle                   Univar                    grip                   univar                  u1_female_aeh_muscle_nocog_grip_nocogspec.out             
u1              female   aehplus             muscle                   Univar                    grip                   univar                  u1_female_aehplus_muscle_nocog_grip_nocogspec.out         
u1              female   a                   muscle                   Univar                    grip                   univar                  u1_female_age_muscle_nocog_grip_nocogspec.out             
u1              male     aeh                 muscle                   Univar                    grip                   univar                  u1_male_aeh_muscle_nocog_grip_nocogspec.out               
u1              male     aehplus             muscle                   Univar                    grip                   univar                  u1_male_aehplus_muscle_nocog_grip_nocogspec.out           
u1              male     a                   muscle                   Univar                    grip                   univar                  u1_male_age_muscle_nocog_grip_nocogspec.out               
u1              female   a                   tug                      Univar                    tug                    univar                  u1_female_a_tug_nocog_nophysspec_nocogspec.out            
u1              female   aeh                 tug                      Univar                    tug                    univar                  u1_female_aeh_tug_nocog_nophysspec_nocogspec.out          
u1              female   aehplus             tug                      Univar                    tug                    univar                  u1_female_aehplus_tug_nocog_nophysspec_nocogspec.out      
u1              male     a                   tug                      Univar                    tug                    univar                  u1_male_a_tug_nocog_nophysspec_nocogspec.out              
u1              male     aeh                 tug                      Univar                    tug                    univar                  u1_male_aeh_tug_nocog_nophysspec_nocogspec.out            
u1              male     aehplus             tug                      Univar                    tug                    univar                  u1_male_aehplus_tug_nocog_nophysspec_nocogspec.out        
u1              female   a                   walking                  Univar                    univar                 univar                  u1_female_a_walking_nocog_nophysspec_nocogspec.out        
u1              female   aeh                 walking                  Univar                    univar                 univar                  u1_female_aeh_walking_nocog_nophysspec_nocogspec.out      
u1              female   aehplus             walking                  Univar                    univar                 univar                  u1_female_aehplus_walking_nocog_nophysspec_nocogspec.out  
u1              male     a                   walking                  Univar                    univar                 univar                  u1_male_a_walking_nocog_nophysspec_nocogspec.out          
u1              male     aeh                 walking                  Univar                    univar                 univar                  u1_male_aeh_walking_nocog_nophysspec_nocogspec.out        
u1              male     aehplus             walking                  Univar                    univar                 univar                  u1_male_aehplus_walking_nocog_nophysspec_nocogspec.out    

## u0


model<br/>tag   sex      predictor<br/>set   physical<br/>construct   cognitive<br/>construct   physical<br/>measure   cognitive<br/>measure   file name                                               
--------------  -------  ------------------  -----------------------  ------------------------  ---------------------  ----------------------  --------------------------------------------------------
u0              female   0                   chair                    Univar                    univar                 univar                  u0_female_empty_chair_nocog_nophysspec_nocogspec.out    
u0              male     0                   chair                    Univar                    univar                 univar                  u0_male_empty_chair_nocog_nophysspec_nocogspec.out      
u0              female   0                   flamingo                 Univar                    univar                 univar                  u0_female_empty_flamingo_nocog_nophysspec_nocogspec.out 
u0              male     0                   flamingo                 Univar                    univar                 univar                  u0_male_empty_flamingo_nocog_nophysspec_nocogspec.out   
u0              female   0                   muscle                   Univar                    grip                   univar                  u0_female_empty_muscle_nocog_grip_nocogspec.out         
u0              male     0                   muscle                   Univar                    grip                   univar                  u0_male_empty_muscle_nocog_grip_nocogspec.out           
u0              female   0                   tug                      Univar                    tug                    univar                  u0_female_empty_tug_nocog_nophysspec_nocogspec.out      
u0              male     0                   tug                      Univar                    tug                    univar                  u0_male_empty_tug_nocog_nophysspec_nocogspec.out        
u0              female   0                   walking                  Univar                    univar                 univar                  u0_female_empty_walking_nocog_nophysspec_nocogspec.out  
u0              male     0                   walking                  Univar                    grip                   univar                  u0_male_empty_walking_nocog_grip_nocogspec.out          


# Session Information
For the sake of documentation and reproducibility, the current report was rendered on a system using the following software.


```
Report rendered by koval_000 at 2015-07-15, 16:24 -0700
```

```
R version 3.2.0 (2015-04-16)
Platform: x86_64-w64-mingw32/x64 (64-bit)
Running under: Windows 8 x64 (build 9200)

locale:
[1] LC_COLLATE=English_United States.1252  LC_CTYPE=English_United States.1252    LC_MONETARY=English_United States.1252
[4] LC_NUMERIC=C                           LC_TIME=English_United States.1252    

attached base packages:
[1] grid      stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] dplyr_0.4.1           testit_0.4            ggplot2_1.0.1         RColorBrewer_1.1-2    scales_0.2.5         
[6] knitr_1.10.5          MplusAutomation_0.6-3

loaded via a namespace (and not attached):
 [1] Rcpp_0.11.6      magrittr_1.5     MASS_7.3-40      munsell_0.4.2    colorspace_1.2-6 xtable_1.7-4    
 [7] lattice_0.20-31  highr_0.5        stringr_1.0.0    plyr_1.8.2       tcltk_3.2.0      tools_3.2.0     
[13] parallel_3.2.0   gtable_0.1.2     texreg_1.35      coda_0.17-1      DBI_0.3.1        htmltools_0.2.6 
[19] yaml_2.1.13      lazyeval_0.1.10  assertthat_0.1   digest_0.6.8     formatR_1.2      reshape2_1.4.1  
[25] evaluate_0.7     rmarkdown_0.7    gsubfn_0.6-6     stringi_0.4-1    boot_1.3-16      proto_0.3-10    
```
