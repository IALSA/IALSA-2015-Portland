# EAS: Model catalog



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
[1] "eas"
```

has provided us with the total number of 

```
425
```
models, using univariate and bivariate specifications:

```

 b1  u0  u1  u2 
371   4  20  30 
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
425
```
models, which output files contains all 7 components. We have corrected the obvious typos, but some names (of constructs and measures) require your attention. 

# Simple Counts
In this section, **model specification (columns)** are cross-tabulated with **constructs or measures (rows)**, displaying the number of valid models in each category. 

## Physical constructs


```
< table of extent 0 x 4 >
```


## Physical measures


```
           
            b1  u0 u1 u2
  muscle    109 2  10 10
  pulmonary 152 2  10 10
  walking   110 .  .  10
```

## Cognitive constructs


```
< table of extent 0 x 4 >
```


## Cognitive measures


```
           
            b1 u0 u1 u2
  executive 29 .  .  . 
  fluency   87 .  .  . 
  fluid     10 .  .  . 
  global    20 .  .  . 
  knowledge 54 .  .  . 
  language  10 .  .  . 
  memory    73 .  .  . 
  mental    10 .  .  . 
  reasoning 38 .  .  . 
  speed     40 .  .  . 
  univar    .  4  20 30
```
</br></br></br>

# BIVARIATE MODELS

In this section, **constructs (columns)** are cross-tabulated with  **measures (rows)** that opeationalize them in the models. Each non-blank element in a column indicates a unique **measure (row)** of the **construct (column)**. The numeric value shows how many different versions of this model used this specific pair of construct and measure: model may differ on the subgroup (male, female), and the set of covariates (empty, a, ae, aeh, aehplus, full).


## Physical 
Physical **constructs** (columns) by physical **measures** (rows) in BIVARIATE models

```
< table of extent 3 x 0 >
```

## Cognitive 
Cognitive **constructs** (columns) by cognitive **measures** (rows) in BIVARIATE models

```
< table of extent 10 x 0 >
```


## Constructs
Number of models with the following **physical constructs** (columns) and  **cognitive constructs** (rows)


```
< table of extent 0 x 0 >
```

## Phys.Constructs
Number of models with the following  **physical constructs** (columns) and  **cognitive measures** (rows)

```
< table of extent 10 x 0 >
```

## Cog.Constructs
Number of models with the following  **physical measure** (columns) and  **cognitive constructs** (rows)

```
< table of extent 0 x 3 >
```

## Measures
Number of models with the following  **physical measures** (columns) and  **cognitive measures** (rows)

```
           
            muscle pulmonary walking
  executive .      19        10     
  fluency   36     31        20     
  fluid     10     .         .      
  global    10     10        .      
  knowledge 14     20        20     
  language  .      .         10     
  memory    19     34        20     
  mental    .      .         10     
  reasoning 10     18        10     
  speed     10     20        10     
```
</br></br></br>


# UNIVARIATE MODELS

In this section, **constructs (columns)** are cross-tabulated with  **measures (rows)** that opeationalize them in the models. Each non-blank element in a column indicates a unique **measure (row)** of the **construct (column)**. The numeric value counts the different versions of the model (sex, covariates) that used this specific pair of construct and measure. 

## Physical 
Physical constructs (columns) by physical measures (rows) in UNIVARIATE models

```
             
             
b1 muscle    
   pulmonary 
   walking   
u0 muscle    
   pulmonary 
   walking   
u1 muscle    
   pulmonary 
   walking   
u2 muscle    
   pulmonary 
   walking   
```

## Cognitive
Cognitive constructs (columns) by cognitive measures (rows) in UNIVARIATE models

```
          
          
b1 univar 
u0 univar 
u1 univar 
u2 univar 
```
</br></br></br>

# List of models
## b1


model<br/>tag   sex      predictor<br/>set   physical<br/>construct   cognitive<br/>construct   physical<br/>measure   cognitive<br/>measure   file name                                                     
--------------  -------  ------------------  -----------------------  ------------------------  ---------------------  ----------------------  --------------------------------------------------------------
b1              female   ae                  NA                       NA                        pulmonary              knowledge               b1_female_ae_pulmonary_ knowledge_pek_waisvocab.out           
b1              female   ae                  NA                       NA                        walking                executive               b1_female_ae_walking_executive_gait_trailsb.out               
b1              female   aeh                 NA                       NA                        walking                executive               b1_female_aeh_walking_executive_gait_trailsb.out              
b1              female   aehplus             NA                       NA                        walking                executive               b1_female_aehplus_walking_executive_gait_trailsb.out          
b1              female   a                   NA                       NA                        walking                executive               b1_female_age_walking_executive_gait_trailsb.out              
b1              female   full                NA                       NA                        walking                executive               b1_female_full_walking_executive_gait_trailsb.out             
b1              male     ae                  NA                       NA                        walking                executive               b1_male_ae_walking_executive_gait_trailsb.out                 
b1              male     aeh                 NA                       NA                        walking                executive               b1_male_aeh_walking_executive_gait_trailsb.out                
b1              male     a                   NA                       NA                        walking                executive               b1_male_age_walking_executive_gait_trailsb.out                
b1              male     aehplus             NA                       NA                        walking                executive               b1_male_aheplus_walking_executive_gait_trailsb.out            
b1              male     full                NA                       NA                        walking                executive               b1_male_full_walking_executive_gait_trailsb.out               
b1              female   ae                  NA                       NA                        pulmonary              executive               b1_female_ae_pulmonary_executive_pek_trailsb.out              
b1              female   aeh                 NA                       NA                        pulmonary              executive               b1_female_aeh_pulmonary_executive_pek_trailsb.out             
b1              female   aehplus             NA                       NA                        pulmonary              executive               b1_female_aehplus_pulmonary_executive_pek_trailsb.out         
b1              female   a                   NA                       NA                        pulmonary              executive               b1_female_age_pulmonary_executive_pek_trailsb.out             
b1              female   full                NA                       NA                        pulmonary              executive               b1_female_full_pulmonary_executive_pek_trailsb.out            
b1              male     ae                  NA                       NA                        pulmonary              executive               b1_male_ae_pulmonary_executive_pek_trailsb.out                
b1              male     aeh                 NA                       NA                        pulmonary              executive               b1_male_aeh_pulmonary_executive_pek_trailsb.out               
b1              male     aehplus             NA                       NA                        pulmonary              executive               b1_male_aehplus_pulmonary_executive_pek_trailsb.out           
b1              male     full                NA                       NA                        pulmonary              executive               b1_male_full_pulmonary_executive_pek_trailsb.out              
b1              female   ae                  NA                       NA                        pulmonary              executive               b1_female_ae_pulmonary_executive_pek_trailsb.out              
b1              female   aeh                 NA                       NA                        pulmonary              executive               b1_female_aeh_pulmonary_executive_pek_trailsb.out             
b1              female   aehplus             NA                       NA                        pulmonary              executive               b1_female_aehplus_pulmonary_executive_pek_trailsb.out         
b1              female   a                   NA                       NA                        pulmonary              executive               b1_female_age_pulmonary_executive_pek_trailsB.out             
b1              female   full                NA                       NA                        pulmonary              executive               b1_female_full_pulmonary_executive_pek_trailsb.out            
b1              male     ae                  NA                       NA                        pulmonary              executive               b1_male_ae_pulmonary_executive_pek_trailsb.out                
b1              male     aeh                 NA                       NA                        pulmonary              executive               b1_male_aeh_pulmonary_executive_pek_trailsb.out               
b1              male     aehplus             NA                       NA                        pulmonary              executive               b1_male_aehplus_pulmonary_executive_pek_trailsb.out           
b1              male     a                   NA                       NA                        pulmonary              executive               b1_male_age_pulmonary_executive_pek_trailsB.out               
b1              male     full                NA                       NA                        pulmonary              executive               b1_male_full_pulmonary_executive_pek_trailsb.out              
b1              female   ae                  NA                       NA                        walking                fluency                 b1_female_ae_walking_fluency_gait_category.out                
b1              female   ae                  NA                       NA                        walking                fluency                 b1_female_ae_walking_fluency_gait_fas.out                     
b1              female   aeh                 NA                       NA                        walking                fluency                 b1_female_aeh_walking_fluency_gait_category.out               
b1              female   aeh                 NA                       NA                        walking                fluency                 b1_female_aeh_walking_fluency_gait_fas.out                    
b1              female   aehplus             NA                       NA                        walking                fluency                 b1_female_aehplus_walking_fluency_gait_category.out           
b1              female   aehplus             NA                       NA                        walking                fluency                 b1_female_aehplus_walking_fluency_gait_fas.out                
b1              female   a                   NA                       NA                        walking                fluency                 b1_female_age_walking_fluency_gait_category.out               
b1              female   a                   NA                       NA                        walking                fluency                 b1_female_age_walking_fluency_gait_fas.out                    
b1              female   full                NA                       NA                        walking                fluency                 b1_female_full_walking_fluency_gait_category.out              
b1              female   full                NA                       NA                        walking                fluency                 b1_female_full_walking_fluency_gait_fas.out                   
b1              male     ae                  NA                       NA                        walking                fluency                 b1_male_ae_walking_fluency_gait_category.out                  
b1              male     ae                  NA                       NA                        walking                fluency                 b1_male_ae_walking_fluency_gait_fas.out                       
b1              male     aeh                 NA                       NA                        walking                fluency                 b1_male_aeh_walking_fluency_gait_category.out                 
b1              male     aeh                 NA                       NA                        walking                fluency                 b1_male_aeh_walking_fluency_gait_fas.out                      
b1              male     aehplus             NA                       NA                        walking                fluency                 b1_male_aehplus_walking_fluency_gait_category.out             
b1              male     aehplus             NA                       NA                        walking                fluency                 b1_male_aehplus_walking_fluency_gait_fas.out                  
b1              male     a                   NA                       NA                        walking                fluency                 b1_male_age_walking_fluency_gait_category.out                 
b1              male     a                   NA                       NA                        walking                fluency                 b1_male_age_walking_fluency_gait_fas.out                      
b1              male     full                NA                       NA                        walking                fluency                 b1_male_full_walking_fluency_gait_category.out                
b1              male     full                NA                       NA                        walking                fluency                 b1_male_full_walking_fluency_gait_fas.out                     
b1              female   ae                  NA                       NA                        muscle                 fluency                 b1_female_ae_muscle_fluency_grip_bostonnaming.out             
b1              female   ae                  NA                       NA                        muscle                 fluency                 b1_female_ae_muscle_fluency_grip_category.out                 
b1              female   ae                  NA                       NA                        muscle                 fluency                 b1_female_ae_muscle_fluency_grip_fas.out                      
b1              female   aeh                 NA                       NA                        muscle                 fluency                 b1_female_aeh_muscle_fluency_grip_bostonnaming.out            
b1              female   aeh                 NA                       NA                        muscle                 fluency                 b1_female_aeh_muscle_fluency_grip_category.out                
b1              female   aeh                 NA                       NA                        muscle                 fluency                 b1_female_aeh_muscle_fluency_grip_fas.out                     
b1              female   aehplus             NA                       NA                        muscle                 fluency                 b1_female_aehplus_muscle_fluency_grip_bostonnaming.out        
b1              female   aehplus             NA                       NA                        muscle                 fluency                 b1_female_aehplus_muscle_fluency_grip_category.out            
b1              female   aehplus             NA                       NA                        muscle                 fluency                 b1_female_aehplus_muscle_fluency_grip_fas.out                 
b1              female   a                   NA                       NA                        muscle                 fluency                 b1_female_age_muscle_fluency_grip_bostonnaming.out            
b1              female   a                   NA                       NA                        muscle                 fluency                 b1_female_age_muscle_fluency_grip_category.out                
b1              female   a                   NA                       NA                        muscle                 fluency                 b1_female_age_muscle_fluency_grip_fas.out                     
b1              female   a                   NA                       NA                        muscle                 fluency                 b1_female_age_muscle_fluency_grip_information.out             
b1              female   full                NA                       NA                        muscle                 fluency                 b1_female_full_muscle_fluency_grip_bostonnaming.out           
b1              female   full                NA                       NA                        muscle                 fluency                 b1_female_full_muscle_fluency_grip_category.out               
b1              female   full                NA                       NA                        muscle                 fluency                 b1_female_full_muscle_fluency_grip_fas.out                    
b1              male     ae                  NA                       NA                        muscle                 fluency                 b1_male_ae_muscle_fluency_grip_bostonnaming.out               
b1              male     ae                  NA                       NA                        muscle                 fluency                 b1_male_ae_muscle_fluency_grip_category.out                   
b1              male     ae                  NA                       NA                        muscle                 fluency                 b1_male_ae_muscle_fluency_grip_fas.out                        
b1              male     ae                  NA                       NA                        muscle                 fluency                 b1_male_ae_muscle_fluency_grip_information.out                
b1              male     aeh                 NA                       NA                        muscle                 fluency                 b1_male_aeh_muscle_fluency_grip_bostonnaming.out              
b1              male     aeh                 NA                       NA                        muscle                 fluency                 b1_male_aeh_muscle_fluency_grip_category.out                  
b1              male     aeh                 NA                       NA                        muscle                 fluency                 b1_male_aeh_muscle_fluency_grip_fas.out                       
b1              male     aeh                 NA                       NA                        muscle                 fluency                 b1_male_aeh_muscle_fluency_grip_information.out               
b1              male     aehplus             NA                       NA                        muscle                 fluency                 b1_male_aehplus_muscle_fluency_grip_bostonnaming.out          
b1              male     aehplus             NA                       NA                        muscle                 fluency                 b1_male_aehplus_muscle_fluency_grip_category.out              
b1              male     aehplus             NA                       NA                        muscle                 fluency                 b1_male_aehplus_muscle_fluency_grip_fas.out                   
b1              male     aehplus             NA                       NA                        muscle                 fluency                 b1_male_aehplus_muscle_fluency_grip_information.out           
b1              male     a                   NA                       NA                        muscle                 fluency                 b1_male_age_muscle_fluency_grip_bostonnaming.out              
b1              male     a                   NA                       NA                        muscle                 fluency                 b1_male_age_muscle_fluency_grip_category.out                  
b1              male     a                   NA                       NA                        muscle                 fluency                 b1_male_age_muscle_fluency_grip_fas.out                       
b1              male     a                   NA                       NA                        muscle                 fluency                 b1_male_age_muscle_fluency_grip_information.out               
b1              male     full                NA                       NA                        muscle                 fluency                 b1_male_full_muscle_fluency_grip_bostonnaming.out             
b1              male     full                NA                       NA                        muscle                 fluency                 b1_male_full_muscle_fluency_grip_category.out                 
b1              male     full                NA                       NA                        muscle                 fluency                 b1_male_full_muscle_fluency_grip_fas.out                      
b1              male     full                NA                       NA                        muscle                 fluency                 b1_male_full_muscle_fluency_grip_information.out              
b1              male     a                   NA                       NA                        pulmonary              fluency                 b1_male_age_pulmonary_fluency_pek_fas.out                     
b1              female   ae                  NA                       NA                        pulmonary              fluency                 b1_female_ae_pulmonary_fluency_pek_bostonnaming.out           
b1              female   ae                  NA                       NA                        pulmonary              fluency                 b1_female_ae_pulmonary_fluency_pek_category.out               
b1              female   ae                  NA                       NA                        pulmonary              fluency                 b1_female_ae_pulmonary_fluency_pek_fas.out                    
b1              female   aeh                 NA                       NA                        pulmonary              fluency                 b1_female_aeh_pulmonary_fluency_pek_bostonnaming.out          
b1              female   aeh                 NA                       NA                        pulmonary              fluency                 b1_female_aeh_pulmonary_fluency_pek_category.out              
b1              female   aeh                 NA                       NA                        pulmonary              fluency                 b1_female_aeh_pulmonary_fluency_pek_fas.out                   
b1              female   aehplus             NA                       NA                        pulmonary              fluency                 b1_female_aehplus_pulmonary_fluency_pek_bostonnaming.out      
b1              female   aehplus             NA                       NA                        pulmonary              fluency                 b1_female_aehplus_pulmonary_fluency_pek_category.out          
b1              female   aehplus             NA                       NA                        pulmonary              fluency                 b1_female_aehplus_pulmonary_fluency_pek_fas.out               
b1              female   a                   NA                       NA                        pulmonary              fluency                 b1_female_age_pulmonary_fluency_pek_bostonnaming.out          
b1              female   a                   NA                       NA                        pulmonary              fluency                 b1_female_age_pulmonary_fluency_pek_category.out              
b1              female   a                   NA                       NA                        pulmonary              fluency                 b1_female_age_pulmonary_fluency_pek_fas.out                   
b1              female   full                NA                       NA                        pulmonary              fluency                 b1_female_full_pulmonary_fluency_pek_bostonnaming.out         
b1              female   full                NA                       NA                        pulmonary              fluency                 b1_female_full_pulmonary_fluency_pek_category.out             
b1              female   full                NA                       NA                        pulmonary              fluency                 b1_female_full_pulmonary_fluency_pek_fas.out                  
b1              male     ae                  NA                       NA                        pulmonary              fluency                 b1_male_ae_pulmonary_fluency_pek_bostonmaning.out             
b1              male     ae                  NA                       NA                        pulmonary              fluency                 b1_male_ae_pulmonary_fluency_pek_category.out                 
b1              male     ae                  NA                       NA                        pulmonary              fluency                 b1_male_ae_pulmonary_fluency_pek_fas.out                      
b1              male     aeh                 NA                       NA                        pulmonary              fluency                 b1_male_aeh_pulmonary_fluency_pek_bostonnaming.out            
b1              male     aeh                 NA                       NA                        pulmonary              fluency                 b1_male_aeh_pulmonary_fluency_pek_category.out                
b1              male     aeh                 NA                       NA                        pulmonary              fluency                 b1_male_aeh_pulmonary_fluency_pek_fas.out                     
b1              male     aehplus             NA                       NA                        pulmonary              fluency                 b1_male_aehplus_pulmonary_fluency_pek_bostonnaming.out        
b1              male     aehplus             NA                       NA                        pulmonary              fluency                 b1_male_aehplus_pulmonary_fluency_pek_category.out            
b1              male     aehplus             NA                       NA                        pulmonary              fluency                 b1_male_aehplus_pulmonary_fluency_pek_fas.out                 
b1              male     a                   NA                       NA                        pulmonary              fluency                 b1_male_age_pulmonary_fluency_pek_bostonnaming.out            
b1              male     a                   NA                       NA                        pulmonary              fluency                 b1_male_age_pulmonary_fluency_pek_category.out                
b1              male     a                   NA                       NA                        pulmonary              fluency                 b1_male_age_pulmonary_fluency_pek_fas.out                     
b1              male     full                NA                       NA                        pulmonary              fluency                 b1_male_full_pulmonary_fluency_pek_bostonnaming.out           
b1              male     full                NA                       NA                        pulmonary              fluency                 b1_male_full_pulmonary_fluency_pek_category.out               
b1              male     full                NA                       NA                        pulmonary              fluency                 b1_male_full_pulmonary_fluency_pek_fas.out                    
b1              female   ae                  NA                       NA                        muscle                 fluid                   b1_female_ae_muscle_fluid_grip_trailsb.out                    
b1              female   aeh                 NA                       NA                        muscle                 fluid                   b1_female_aeh_muscle_fluid_grip_trailsb.out                   
b1              female   aehplus             NA                       NA                        muscle                 fluid                   b1_female_aehplus_muscle_fluid_grip_trailsb.out               
b1              female   a                   NA                       NA                        muscle                 fluid                   b1_female_age_muscle_fluid_grip_trailsb.out                   
b1              female   full                NA                       NA                        muscle                 fluid                   b1_female_full_muscle_fluid_grip_trailsb.out                  
b1              male     ae                  NA                       NA                        muscle                 fluid                   b1_male_ae_muscle_fluid_grip_trailsb.out                      
b1              male     aeh                 NA                       NA                        muscle                 fluid                   b1_male_aeh_muscle_fluid_grip_trailsb.out                     
b1              male     aehplus             NA                       NA                        muscle                 fluid                   b1_male_aehplus_muscle_fluid_grip_trailsb.out                 
b1              male     a                   NA                       NA                        muscle                 fluid                   b1_male_age_muscle_fluid_grip_trailsb.out                     
b1              male     full                NA                       NA                        muscle                 fluid                   b1_male_full_muscle_fluid_grip_trailsb.out                    
b1              female   ae                  NA                       NA                        muscle                 global                  b1_female_ae_muscle_global_grip_mmse.out                      
b1              female   aeh                 NA                       NA                        muscle                 global                  b1_female_aeh_muscle_global_grip_mmse.out                     
b1              female   aehplus             NA                       NA                        muscle                 global                  b1_female_aehplus_muscle_global_grip_mmse.out                 
b1              female   a                   NA                       NA                        muscle                 global                  b1_female_age_muscle_global_grip_mmse.out                     
b1              female   full                NA                       NA                        muscle                 global                  b1_female_full_muscle_global_grip_mmse.out                    
b1              male     ae                  NA                       NA                        muscle                 global                  b1_male_ae_muscle_global_grip_mmse.out                        
b1              male     aeh                 NA                       NA                        muscle                 global                  b1_male_aeh_muscle_global_grip_mmse.out                       
b1              male     aehplus             NA                       NA                        muscle                 global                  b1_male_aehplus_muscle_global_grip_mmse.out                   
b1              male     a                   NA                       NA                        muscle                 global                  b1_male_age_muscle_global_grip_mmse.out                       
b1              male     full                NA                       NA                        muscle                 global                  b1_male_full_muscle_global_grip_mmse.out                      
b1              female   ae                  NA                       NA                        pulmonary              global                  b1_female_ae_pulmonary_global_pek_mmse.out                    
b1              female   aeh                 NA                       NA                        pulmonary              global                  b1_female_aeh_pulmonary_global_pek_mmse.out                   
b1              female   aehplus             NA                       NA                        pulmonary              global                  b1_female_aehplus_pulmonary_global_pek_mmse.out               
b1              female   a                   NA                       NA                        pulmonary              global                  b1_female_age_pulmonary_global_pek_mmse.out                   
b1              female   full                NA                       NA                        pulmonary              global                  b1_female_full_pulmonary_global_pek_mmse.out                  
b1              male     ae                  NA                       NA                        pulmonary              global                  b1_male_ae_pulmonary_global_pek_mmse.out                      
b1              male     aeh                 NA                       NA                        pulmonary              global                  b1_male_aeh_pulmonary_global_pek_mmse.out                     
b1              male     aehplus             NA                       NA                        pulmonary              global                  b1_male_aehplus_pulmonary_global_pek_mmse.out                 
b1              male     a                   NA                       NA                        pulmonary              global                  b1_male_age_pulmonary_global_pek_mmse.out                     
b1              male     full                NA                       NA                        pulmonary              global                  b1_male_full_pulmonary_global_pek_mmse.out                    
b1              female   ae                  NA                       NA                        walking                knowledge               b1_female_ae_walking_knowledge_gait_information.out           
b1              female   ae                  NA                       NA                        walking                knowledge               b1_female_ae_walking_knowledge_gait_waisvocab.out             
b1              female   aeh                 NA                       NA                        walking                knowledge               b1_female_aeh_walking_knowledge_gait_information.out          
b1              female   aeh                 NA                       NA                        walking                knowledge               b1_female_aeh_walking_knowledge_gait_waisvocab.out            
b1              female   aehplus             NA                       NA                        walking                knowledge               b1_female_aehplus_walking_knowledge_gait_information.out      
b1              female   aehplus             NA                       NA                        walking                knowledge               b1_female_aehplus_walking_knowledge_gait_waisvocab.out        
b1              female   a                   NA                       NA                        walking                knowledge               b1_female_age_walking_knowledge_gait_information.out          
b1              female   a                   NA                       NA                        walking                knowledge               b1_female_age_walking_knowledge_gait_waisvocab.out            
b1              female   full                NA                       NA                        walking                knowledge               b1_female_full_walking_knowledge_gait_information.out         
b1              female   full                NA                       NA                        walking                knowledge               b1_female_full_walking_knowledge_gait_waisvocab.out           
b1              male     ae                  NA                       NA                        walking                knowledge               b1_male_ae_walking_knowledge_gait_information.out             
b1              male     ae                  NA                       NA                        walking                knowledge               b1_male_ae_walking_knowledge_gait_waisvocab.out               
b1              male     aeh                 NA                       NA                        walking                knowledge               b1_male_aeh_walking_knowledge_gait_information.out            
b1              male     aeh                 NA                       NA                        walking                knowledge               b1_male_aeh_walking_knowledge_gait_waisvocab.out              
b1              male     aehplus             NA                       NA                        walking                knowledge               b1_male_aehplus_walking_knowledge_gait_information.out        
b1              male     aehplus             NA                       NA                        walking                knowledge               b1_male_aehplus_walking_knowledge_gait_waisvocab.out          
b1              male     a                   NA                       NA                        walking                knowledge               b1_male_age_walking_knowledge_gait_information.out            
b1              male     a                   NA                       NA                        walking                knowledge               b1_male_age_walking_knowledge_gait_waisvocab.out              
b1              male     full                NA                       NA                        walking                knowledge               b1_male_full_walking_knowledge_gait_information.out           
b1              male     full                NA                       NA                        walking                knowledge               b1_male_full_walking_knowledge_gait_waisvocab.out             
b1              female   ae                  NA                       NA                        muscle                 knowledge               b1_female_ae_muscle_knowledge_grip_information.out            
b1              female   ae                  NA                       NA                        muscle                 knowledge               b1_female_ae_muscle_knowledge_grip_waisvocab.out              
b1              female   aeh                 NA                       NA                        muscle                 knowledge               b1_female_aeh_muscle_knowledge_grip_information.out           
b1              female   aeh                 NA                       NA                        muscle                 knowledge               b1_female_aeh_muscle_knowledge_grip_waisvocab.out             
b1              female   aehplus             NA                       NA                        muscle                 knowledge               b1_female_aehplus_muscle_knowledge_grip_information.out       
b1              female   aehplus             NA                       NA                        muscle                 knowledge               b1_female_aehplus_muscle_knowledge_grip_waisvocab.out         
b1              female   a                   NA                       NA                        muscle                 knowledge               b1_female_age_muscle_knowledge_grip_waisvocab.out             
b1              female   full                NA                       NA                        muscle                 knowledge               b1_female_full_muscle_knowledge_grip_information.out          
b1              female   full                NA                       NA                        muscle                 knowledge               b1_female_full_muscle_knowledge_grip_waisvocab.out            
b1              male     ae                  NA                       NA                        muscle                 knowledge               b1_male_ae_muscle_knowledge_grip_waisvocab.out                
b1              male     aeh                 NA                       NA                        muscle                 knowledge               b1_male_aeh_muscle_knowledge_grip_waisvocab.out               
b1              male     aehplus             NA                       NA                        muscle                 knowledge               b1_male_aehplus_muscle_knowledge_grip_waisvocab.out           
b1              male     a                   NA                       NA                        muscle                 knowledge               b1_male_age_muscle_knowledge_grip_waisvocab.out               
b1              male     full                NA                       NA                        muscle                 knowledge               b1_male_full_muscle_knowledge_grip_waisvocab.out              
b1              female   ae                  NA                       NA                        pulmonary              knowledge               b1_female_ae_pulmonary_knowledge_pek_information.out          
b1              female   aeh                 NA                       NA                        pulmonary              knowledge               b1_female_aeh_pulmonary_knowledge_pek_information.out         
b1              female   aeh                 NA                       NA                        pulmonary              knowledge               b1_female_aeh_pulmonary_knowledge_pek_waisvocab.out           
b1              female   aehplus             NA                       NA                        pulmonary              knowledge               b1_female_aehplus_pulmonary_knowledge_pek_information.out     
b1              female   aehplus             NA                       NA                        pulmonary              knowledge               b1_female_aehplus_pulmonary_knowledge_pek_waisvocab.out       
b1              female   a                   NA                       NA                        pulmonary              knowledge               b1_female_age_pulmonary_knowledge_pek_information.out         
b1              female   a                   NA                       NA                        pulmonary              knowledge               b1_female_age_pulmonary_knowledge_pek_waisvocab.out           
b1              female   full                NA                       NA                        pulmonary              knowledge               b1_female_full_pulmonary_knowledge_pek_information.out        
b1              female   full                NA                       NA                        pulmonary              knowledge               b1_female_full_pulmonary_knowledge_pek_waisvocab.out          
b1              male     ae                  NA                       NA                        pulmonary              knowledge               b1_male_ae_pulmonary_knowledge_pek_information.out            
b1              male     ae                  NA                       NA                        pulmonary              knowledge               b1_male_ae_pulmonary_knowledge_pek_waisvocab.out              
b1              male     aeh                 NA                       NA                        pulmonary              knowledge               b1_male_aeh_pulmonary_knowledge_pek_information.out           
b1              male     aeh                 NA                       NA                        pulmonary              knowledge               b1_male_aeh_pulmonary_knowledge_pek_waisvocab.out             
b1              male     aehplus             NA                       NA                        pulmonary              knowledge               b1_male_aehplus_pulmonary_knowledge_pek_information.out       
b1              male     aehplus             NA                       NA                        pulmonary              knowledge               b1_male_aehplus_pulmonary_knowledge_pek_waisvocab.out         
b1              male     a                   NA                       NA                        pulmonary              knowledge               b1_male_age_pulmonary_knowledge_pek_information.out           
b1              male     a                   NA                       NA                        pulmonary              knowledge               b1_male_age_pulmonary_knowledge_pek_waisvocab.out             
b1              male     full                NA                       NA                        pulmonary              knowledge               b1_male_full_pulmonary_knowledge_pek_information.out          
b1              male     full                NA                       NA                        pulmonary              knowledge               b1_male_full_pulmonary_knowledge_pek_waisvocab.out            
b1              female   ae                  NA                       NA                        walking                language                b1_female_ae_walking_language_gait_bnt.out                    
b1              female   aeh                 NA                       NA                        walking                language                b1_female_aeh_walking_language_gait_bnt.out                   
b1              female   aehplus             NA                       NA                        walking                language                b1_female_aehplus_walking_language_gait_bnt.out               
b1              female   a                   NA                       NA                        walking                language                b1_female_age_walking_language_gait_bnt.out                   
b1              female   full                NA                       NA                        walking                language                b1_female_full_walking_language_gait_bnt.out                  
b1              male     ae                  NA                       NA                        walking                language                b1_male_ae_walking_language_gait_bnt.out                      
b1              male     aeh                 NA                       NA                        walking                language                b1_male_aeh_walking_language_gait_bnt.out                     
b1              male     aehplus             NA                       NA                        walking                language                b1_male_aehplus_walking_language_gait_bnt.out                 
b1              male     a                   NA                       NA                        walking                language                b1_male_age_walking_language_gait_bnt.out                     
b1              male     full                NA                       NA                        walking                language                b1_male_full_walking_language_gait_bnt.out                    
b1              female   ae                  NA                       NA                        walking                memory                  b1_female_ae_walking_memory_gait_digitspantotal.out           
b1              female   ae                  NA                       NA                        walking                memory                  b1_female_ae_walking_memory_gait_logicalmemorytotal.out       
b1              female   aeh                 NA                       NA                        walking                memory                  b1_female_aeh_walking_memory_gait_digitspantotal.out          
b1              female   aeh                 NA                       NA                        walking                memory                  b1_female_aeh_walking_memory_gait_logicalmemorytotal.out      
b1              female   aehplus             NA                       NA                        walking                memory                  b1_female_aehplus_walking_memory_gait_digitspantotal.out      
b1              female   aehplus             NA                       NA                        walking                memory                  b1_female_aehplus_walking_memory_gait_logicalmemorytotal.out  
b1              female   a                   NA                       NA                        walking                memory                  b1_female_age_walking_memory_gait_digitspantotal.out          
b1              female   a                   NA                       NA                        walking                memory                  b1_female_age_walking_memory_gait_logicalmemorytotal.out      
b1              female   full                NA                       NA                        walking                memory                  b1_female_full_walking_memory_gait_digitspantotal.out         
b1              female   full                NA                       NA                        walking                memory                  b1_female_full_walking_memory_gait_logicalmemorytotal.out     
b1              male     ae                  NA                       NA                        walking                memory                  b1_male_ae_walking_memory_gait_digitspantotal.out             
b1              male     ae                  NA                       NA                        walking                memory                  b1_male_ae_walking_memory_gait_logicalmemorytotal.out         
b1              male     aeh                 NA                       NA                        walking                memory                  b1_male_aeh_walking_memory_gait_digitspantotal.out            
b1              male     aeh                 NA                       NA                        walking                memory                  b1_male_aeh_walking_memory_gait_logicalmemorytotal.out        
b1              male     aehplus             NA                       NA                        walking                memory                  b1_male_aehplus_walking_memory_gait_digitspantotal.out        
b1              male     aehplus             NA                       NA                        walking                memory                  b1_male_aehplus_walking_memory_gait_logicalmemorytotal.out    
b1              male     a                   NA                       NA                        walking                memory                  b1_male_age_walking_memory_gait_digitspantotal.out            
b1              male     a                   NA                       NA                        walking                memory                  b1_male_age_walking_memory_gait_logicalmemorytotal.out        
b1              male     full                NA                       NA                        walking                memory                  b1_male_full_walking_memory_gait_digitspantotal.out           
b1              male     full                NA                       NA                        walking                memory                  b1_male_full_walking_memory_gait_logicalmemorytotal.out       
b1              female   ae                  NA                       NA                        muscle                 memory                  b1_female_ae_muscle_memory_grip_digitspan.out                 
b1              female   ae                  NA                       NA                        muscle                 memory                  b1_female_ae_muscle_memory_grip_logicalmemory.out             
b1              female   aeh                 NA                       NA                        muscle                 memory                  b1_female_aeh_muscle_memory_grip_digitspan.out                
b1              female   aeh                 NA                       NA                        muscle                 memory                  b1_female_aeh_muscle_memory_grip_logicalmemory.out            
b1              female   aehplus             NA                       NA                        muscle                 memory                  b1_female_aehplus_muscle_memory_grip_digitspan.out            
b1              female   aehplus             NA                       NA                        muscle                 memory                  b1_female_aehplus_muscle_memory_grip_logicalmemory.out        
b1              female   a                   NA                       NA                        muscle                 memory                  b1_female_age_muscle_memory_grip_digitspan.out                
b1              female   a                   NA                       NA                        muscle                 memory                  b1_female_age_muscle_memory_grip_logicalmemory.out            
b1              female   full                NA                       NA                        muscle                 memory                  b1_female_full_muscle_memory_grip_digitspan.out               
b1              female   full                NA                       NA                        muscle                 memory                  b1_female_full_muscle_memory_grip_logicalmemory.out           
b1              male     ae                  NA                       NA                        muscle                 memory                  b1_male_ae_muscle_memory_grip_digitspan.out                   
b1              male     ae                  NA                       NA                        muscle                 memory                  b1_male_ae_muscle_memory_grip_logicalmemory.out               
b1              male     aeh                 NA                       NA                        muscle                 memory                  b1_male_aeh_muscle_memory_grip_digitspan.out                  
b1              male     aehplus             NA                       NA                        muscle                 memory                  b1_male_aehplus_muscle_memory_grip_digitspan.out              
b1              male     aehplus             NA                       NA                        muscle                 memory                  b1_male_aehplus_muscle_memory_grip_logicalmemory.out          
b1              male     a                   NA                       NA                        muscle                 memory                  b1_male_age_muscle_memory_grip_digitspan.out                  
b1              male     a                   NA                       NA                        muscle                 memory                  b1_male_age_muscle_memory_grip_logicalmemory.out              
b1              male     full                NA                       NA                        muscle                 memory                  b1_male_full_muscle_memory_grip_digitspan.out                 
b1              male     full                NA                       NA                        muscle                 memory                  b1_male_full_muscle_memory_grip_logicalmemory.out             
b1              female   ae                  NA                       NA                        pulmonary              memory                  b1_female_ae_pulmonary_memory_pek_digitspantotal.out          
b1              female   aeh                 NA                       NA                        pulmonary              memory                  b1_female_aeh_pulmonary_memory_pek_digitspantotal.out         
b1              female   aehplus             NA                       NA                        pulmonary              memory                  b1_female_aehplus_pulmonary_memory_pek_digitspantotal.out     
b1              female   a                   NA                       NA                        pulmonary              memory                  b1_female_age_pulmonary_memory_pek_digitspantotal.out         
b1              female   full                NA                       NA                        pulmonary              memory                  b1_female_full_pulmonary_memory_pek_digitspantotal.out        
b1              male     ae                  NA                       NA                        pulmonary              memory                  b1_male_ae_pulomnary_memory_pek_digitspantotal.out            
b1              male     aeh                 NA                       NA                        pulmonary              memory                  b1_male_aeh_pulmonary_memory_pek_digitspan.out                
b1              male     aehplus             NA                       NA                        pulmonary              memory                  b1_male_aehplus_pulmonary_memory_pek_digitspantotal.out       
b1              male     a                   NA                       NA                        pulmonary              memory                  b1_male_age_pulmonary_memory_pek_digitspantotal.out           
b1              male     full                NA                       NA                        pulmonary              memory                  b1_male_full_pulmonary_memory_pek_digitspantotal.out          
b1              female   ae                  NA                       NA                        pulmonary              memory                  b1_female_ae_pulmonary_memory_pek_digitspantotal.out          
b1              female   ae                  NA                       NA                        pulmonary              memory                  b1_female_ae_pulmonary_memory_pek_logicalmemorytotal.out      
b1              female   aeh                 NA                       NA                        pulmonary              memory                  b1_female_aeh_pulmonary_memory_pek_digitspan.out              
b1              female   aeh                 NA                       NA                        pulmonary              memory                  b1_female_aeh_pulmonary_memory_pek_digitspantotal.out         
b1              female   aeh                 NA                       NA                        pulmonary              memory                  b1_female_aeh_pulmonary_memory_pek_logicalmemorytotal.out     
b1              female   aehplus             NA                       NA                        pulmonary              memory                  b1_female_aehplus_pulmonary_memory_pek_digitspan.out          
b1              female   aehplus             NA                       NA                        pulmonary              memory                  b1_female_aehplus_pulmonary_memory_pek_digitspantotal.out     
b1              female   aehplus             NA                       NA                        pulmonary              memory                  b1_female_aehplus_pulmonary_memory_pek_logicalmemorytotal.out 
b1              female   a                   NA                       NA                        pulmonary              memory                  b1_female_age_pulmonary_memory_pek_digitspantotal.out         
b1              female   a                   NA                       NA                        pulmonary              memory                  b1_female_age_pulmonary_memory_pek_logicalmemory.out          
b1              female   full                NA                       NA                        pulmonary              memory                  b1_female_full_pulmonary_memory_pek_digitspan.out             
b1              female   full                NA                       NA                        pulmonary              memory                  b1_female_full_pulmonary_memory_pek_digitspantotal.out        
b1              female   full                NA                       NA                        pulmonary              memory                  b1_female_full_pulmonary_memory_pek_logicalmemorytotal.out    
b1              male     ae                  NA                       NA                        pulmonary              memory                  b1_male_ae_pulmonary_memory_pek_digitspantotal.out            
b1              male     ae                  NA                       NA                        pulmonary              memory                  b1_male_ae_pulmonary_memory_pek_logicalmemorytotal.out        
b1              male     ae                  NA                       NA                        pulmonary              memory                  b1_male_ae_pulomnary_memory_pek_digitspantotal.out            
b1              male     aeh                 NA                       NA                        pulmonary              memory                  b1_male_aeh_pulmonary_memory_pek_digitspan.out                
b1              male     aeh                 NA                       NA                        pulmonary              memory                  b1_male_aeh_pulmonary_memory_pek_logicalmemorytotal.out       
b1              male     aehplus             NA                       NA                        pulmonary              memory                  b1_male_aehplus_pulmonary_memory_pek_digitspantotal.out       
b1              male     aehplus             NA                       NA                        pulmonary              memory                  b1_male_aehplus_pulmonary_memory_pek_logicalmemorytotal.out   
b1              male     a                   NA                       NA                        pulmonary              memory                  b1_male_age_pulmonary_memory_pek_digitspantotal.out           
b1              male     a                   NA                       NA                        pulmonary              memory                  b1_male_age_pulmonary_memory_pek_logicalmemorytotal.out       
b1              male     full                NA                       NA                        pulmonary              memory                  b1_male_full_pulmonary_memory_pek_digitspantotal.out          
b1              male     full                NA                       NA                        pulmonary              memory                  b1_male_full_pulmonary_memory_pek_logicalmemorytotal.out      
b1              female   ae                  NA                       NA                        walking                mental                  b1_female_ae_walking_mental_gait_mmse.out                     
b1              female   aeh                 NA                       NA                        walking                mental                  b1_female_aeh_walking_mental_gait_mmse.out                    
b1              female   aehplus             NA                       NA                        walking                mental                  b1_female_aehplus_walking_mental_gait_mmse.out                
b1              female   a                   NA                       NA                        walking                mental                  b1_female_age_walking_mental_gait_mmse.out                    
b1              female   full                NA                       NA                        walking                mental                  b1_female_full_walking_mental_gait_mmse.out                   
b1              male     ae                  NA                       NA                        walking                mental                  b1_male_ae_walking_mental_gait_mmse.out                       
b1              male     aeh                 NA                       NA                        walking                mental                  b1_male_aeh_walking_mental_gait_mmse.out                      
b1              male     aehplus             NA                       NA                        walking                mental                  b1_male_aehplus_walking_mental_gait_mmse.out                  
b1              male     a                   NA                       NA                        walking                mental                  b1_male_age_walking_mental_gait_mmse.out                      
b1              male     full                NA                       NA                        walking                mental                  b1_male_full_walking_mental_gait_mmse.out                     
b1              female   ae                  NA                       NA                        walking                reasoning               b1_female_ae_walking_reasoning_gait_block.out                 
b1              female   aeh                 NA                       NA                        walking                reasoning               b1_female_aeh_walking_reasoning_gait_block.out                
b1              female   aehplus             NA                       NA                        walking                reasoning               b1_female_aehplus_walking_reasoning_gait_block.out            
b1              female   a                   NA                       NA                        walking                reasoning               b1_female_age_walking_reasoning_gait_block.out                
b1              female   full                NA                       NA                        walking                reasoning               b1_female_full_walking_reasoning_gait_block.out               
b1              male     ae                  NA                       NA                        walking                reasoning               b1_male_ae_walking_reasoning_gait_block.out                   
b1              male     aeh                 NA                       NA                        walking                reasoning               b1_male_aeh_walking_reasoning_gait_block.out                  
b1              male     aehplus             NA                       NA                        walking                reasoning               b1_male_aehplus_walking_reasoning_gait_block.out              
b1              male     a                   NA                       NA                        walking                reasoning               b1_male_age_walking_reasoning_gait_block.out                  
b1              male     full                NA                       NA                        walking                reasoning               b1_male_full_walking_reasoning_gait_block.out                 
b1              female   ae                  NA                       NA                        muscle                 reasoning               b1_female_ae_muscle_reasoning_grip_block.out                  
b1              female   aeh                 NA                       NA                        muscle                 reasoning               b1_female_aeh_muscle_reasoning_grip_block.out                 
b1              female   aehplus             NA                       NA                        muscle                 reasoning               b1_female_aehplus_muscle_reasoning_grip_block.out             
b1              female   a                   NA                       NA                        muscle                 reasoning               b1_female_age_muscle_reasoning_grip_block.out                 
b1              female   full                NA                       NA                        muscle                 reasoning               b1_female_full_muscle_reasoning_grip_block.out                
b1              male     ae                  NA                       NA                        muscle                 reasoning               b1_male_ae_muscle_reasoning_grip_block.out                    
b1              male     aeh                 NA                       NA                        muscle                 reasoning               b1_male_aeh_muscle_reasoning_grip_block.out                   
b1              male     aehplus             NA                       NA                        muscle                 reasoning               b1_male_aehplus_muscle_reasoning_grip_block.out               
b1              male     a                   NA                       NA                        muscle                 reasoning               b1_male_age_muscle_reasoning_grip_block.out                   
b1              male     full                NA                       NA                        muscle                 reasoning               b1_male_full_muscle_reasoning_grip_block.out                  
b1              female   ae                  NA                       NA                        pulmonary              reasoning               b1_female_ae_pulmonary_reasoning_pek_block.out                
b1              female   aeh                 NA                       NA                        pulmonary              reasoning               b1_female_aeh_pulmonary_reasoning_pek_block.out               
b1              female   aehplus             NA                       NA                        pulmonary              reasoning               b1_female_aehplus_pulmonary_reasoning_pek_block.out           
b1              female   full                NA                       NA                        pulmonary              reasoning               b1_female_full_pulmonary_reasoning_pek_block.out              
b1              male     ae                  NA                       NA                        pulmonary              reasoning               b1_male_ae_pulmonary_reasoning_pek_block.out                  
b1              male     aeh                 NA                       NA                        pulmonary              reasoning               b1_male_aeh_pulmonary_reasoning_pek_block.out                 
b1              male     aehplus             NA                       NA                        pulmonary              reasoning               b1_male_aehplus_pulmonary_reasoning_pek_block.out             
b1              male     full                NA                       NA                        pulmonary              reasoning               b1_male_full_pulmonary_reasoning_pek_block.out                
b1              female   ae                  NA                       NA                        pulmonary              reasoning               b1_female_ae_pulmonary_reasoning_pek_block.out                
b1              female   aeh                 NA                       NA                        pulmonary              reasoning               b1_female_aeh_pulmonary_reasoning_pek_block.out               
b1              female   aehplus             NA                       NA                        pulmonary              reasoning               b1_female_aehplus_pulmonary_reasoning_pek_block.out           
b1              female   a                   NA                       NA                        pulmonary              reasoning               b1_female_age_pulmonary_reasoning_pek_block.out               
b1              female   full                NA                       NA                        pulmonary              reasoning               b1_female_full_pulmonary_reasoning_pek_block.out              
b1              male     ae                  NA                       NA                        pulmonary              reasoning               b1_male_ae_pulmonary_reasoning_pek_block.out                  
b1              male     aeh                 NA                       NA                        pulmonary              reasoning               b1_male_aeh_pulmonary_reasoning_pek_block.out                 
b1              male     aehplus             NA                       NA                        pulmonary              reasoning               b1_male_aehplus_pulmonary_reasoning_pek_block.out             
b1              male     a                   NA                       NA                        pulmonary              reasoning               b1_male_age_pulmonary_reasoning_pek_block.out                 
b1              male     full                NA                       NA                        pulmonary              reasoning               b1_male_full_pulmonary_reasoning_pek_block.out                
b1              female   ae                  NA                       NA                        walking                speed                   b1_female_ae_walking_speed_gait_digitsymbol.out               
b1              female   aeh                 NA                       NA                        walking                speed                   b1_female_aeh_walking_speed_gait_digitsymbol.out              
b1              female   aehplus             NA                       NA                        walking                speed                   b1_female_aehplus_walking_speed_gait_digitsymbol.out          
b1              female   a                   NA                       NA                        walking                speed                   b1_female_age_walking_speed_gait_digitsymbol.out              
b1              female   full                NA                       NA                        walking                speed                   b1_female_full_walking_speed_gait_digitsymbol.out             
b1              male     ae                  NA                       NA                        walking                speed                   b1_male_ae_walking_speed_gait_digitsymbol.out                 
b1              male     aeh                 NA                       NA                        walking                speed                   b1_male_aeh_walking_speed_gait_digitsymbol.out                
b1              male     aehplus             NA                       NA                        walking                speed                   b1_male_aehplus_walking_speed_gait_digitsymbol.out            
b1              male     a                   NA                       NA                        walking                speed                   b1_male_age_walking_speed_gait_digitsymbol.out                
b1              male     full                NA                       NA                        walking                speed                   b1_male_full_walking_speed_gait_digitsymbol.out               
b1              female   ae                  NA                       NA                        muscle                 speed                   b1_female_ae_muscle_speed_grip_digitsymbol.out                
b1              female   aeh                 NA                       NA                        muscle                 speed                   b1_female_aeh_muscle_speed_grip_digitsymbol.out               
b1              female   aehplus             NA                       NA                        muscle                 speed                   b1_female_aehplus_muscle_speed_grip_digitsymbol.out           
b1              female   a                   NA                       NA                        muscle                 speed                   b1_female_age_muscle_speed_grip_digitsymbol.out               
b1              female   full                NA                       NA                        muscle                 speed                   b1_female_full_muscle_speed_grip_digitsymbol.out              
b1              male     ae                  NA                       NA                        muscle                 speed                   b1_male_ae_muscle_speed_grip_digitsymbol.out                  
b1              male     aeh                 NA                       NA                        muscle                 speed                   b1_male_aeh_muscle_speed_grip_digitsymbol.out                 
b1              male     aehplus             NA                       NA                        muscle                 speed                   b1_male_aehplus_muscle_speed_grip_digitsymbol.out             
b1              male     a                   NA                       NA                        muscle                 speed                   b1_male_age_muscle_speed_grip_digitsymbol.out                 
b1              male     full                NA                       NA                        muscle                 speed                   b1_male_full_muscle_speed_grip_digitsymol.out                 
b1              female   ae                  NA                       NA                        pulmonary              speed                   b1_female_ae_pulmonary_speed_pek_digitsymbol.out              
b1              female   aeh                 NA                       NA                        pulmonary              speed                   b1_female_aeh_pulmonary_speed_pek_digitsymbol.out             
b1              female   aehplus             NA                       NA                        pulmonary              speed                   b1_female_aehplus_pulmonary_speed_pek_digitsymbol.out         
b1              female   a                   NA                       NA                        pulmonary              speed                   b1_female_age_pulmonary_speed_pek_digitsymbol.out             
b1              female   full                NA                       NA                        pulmonary              speed                   b1_female_full_pulmonary_speed_pek_digitsymbol.out            
b1              male     ae                  NA                       NA                        pulmonary              speed                   b1_male_ae_pulmonary_speed_pek_digitsymbol.out                
b1              male     aeh                 NA                       NA                        pulmonary              speed                   b1_male_aeh_pulmonary_speed_pek_digitsymbol.out               
b1              male     aehplus             NA                       NA                        pulmonary              speed                   b1_male_aehplus_pulmonary_speed_pek_digitsymbol.out           
b1              male     a                   NA                       NA                        pulmonary              speed                   b1_male_age_pulmonary_speed_pek_digitsymbol.out               
b1              male     full                NA                       NA                        pulmonary              speed                   b1_male_full_pulmonary_speed_pek_digitsymbol.out              
b1              female   ae                  NA                       NA                        pulmonary              speed                   b1_female_ae_pulmonary_speed_pek_digitsymbol.out              
b1              female   aeh                 NA                       NA                        pulmonary              speed                   b1_female_aeh_pulmonary_speed_pek_digitsymbol.out             
b1              female   aehplus             NA                       NA                        pulmonary              speed                   b1_female_aehplus_pulmonary_speed_pek_digitsymbol.out         
b1              female   a                   NA                       NA                        pulmonary              speed                   b1_female_age_pulmonary_speed_pek_digitsymbol.out             
b1              female   full                NA                       NA                        pulmonary              speed                   b1_female_full_pulmonary_speed_pek_digitsymbol.out            
b1              male     ae                  NA                       NA                        pulmonary              speed                   b1_male_ae_pulmonary_speed_pek_digitsymbol.out                
b1              male     aeh                 NA                       NA                        pulmonary              speed                   b1_male_aeh_pulmonary_speed_pek_digitsymbol.out               
b1              male     aehplus             NA                       NA                        pulmonary              speed                   b1_male_aehplus_pulmonary_speed_pek_digitsymbol.out           
b1              male     a                   NA                       NA                        pulmonary              speed                   b1_male_age_pulmonary_speed_pek_digitsymbol.out               
b1              male     full                NA                       NA                        pulmonary              speed                   b1_male_full_pulmonary_speed_pek_digitsymbol.out              

## u2


model<br/>tag   sex      predictor<br/>set   physical<br/>construct   cognitive<br/>construct   physical<br/>measure   cognitive<br/>measure   file name                                           
--------------  -------  ------------------  -----------------------  ------------------------  ---------------------  ----------------------  ----------------------------------------------------
u2              female   ae                  NA                       NA                        walking                univar                  u2_female_ae_walking_nocog_gait_nocogspec.out       
u2              female   aeh                 NA                       NA                        walking                univar                  u2_female_aeh_walking_nocog_gait_nocogspec.out      
u2              female   aehplus             NA                       NA                        walking                univar                  u2_female_aehplus_walking_nocog_gait_nocogspec.out  
u2              female   a                   NA                       NA                        walking                univar                  u2_female_age_walking_nocog_gait_nocogspec.out      
u2              female   full                NA                       NA                        walking                univar                  u2_female_full_walking_nocog_gait_nocogspec.out     
u2              male     ae                  NA                       NA                        walking                univar                  u2_male_ae_walking_nocog_gait_nocogspec.out         
u2              male     aeh                 NA                       NA                        walking                univar                  u2_male_aeh_walking_nocog_gait_nocogspec.out        
u2              male     aehplus             NA                       NA                        walking                univar                  u2_male_aehplus_walking_nocog_gait_nocogspec.out    
u2              male     a                   NA                       NA                        walking                univar                  u2_male_age_walking_nocog_gait_nocogspec.out        
u2              male     full                NA                       NA                        walking                univar                  u2_male_full_walking_nocog_gait_nocogspec.out       
u2              female   ae                  NA                       NA                        muscle                 univar                  u2_female_ae_muscle_nocog_grip_nocogspec.out        
u2              female   aeh                 NA                       NA                        muscle                 univar                  u2_female_aeh_muscle_nocog_grip_nocogspec.out       
u2              female   aehplus             NA                       NA                        muscle                 univar                  u2_female_aehplus_muscle_nocog_grip_nocogspec.out   
u2              female   a                   NA                       NA                        muscle                 univar                  u2_female_age_muscle_nocog_grip_nocogspec.out       
u2              female   full                NA                       NA                        muscle                 univar                  u2_female_full_muscle_nocog_grip_nocogspec.out      
u2              male     ae                  NA                       NA                        muscle                 univar                  u2_male_ae_muscle_nocog_grip_nocogspec.out          
u2              male     aeh                 NA                       NA                        muscle                 univar                  u2_male_aeh_muscle_nocog_grip_nocogspec.out         
u2              male     aehplus             NA                       NA                        muscle                 univar                  u2_male_aehplus_muscle_nocog_grip_nocogspec.out     
u2              male     a                   NA                       NA                        muscle                 univar                  u2_male_age_muscle_nocog_grip_nocogspec.out         
u2              male     full                NA                       NA                        muscle                 univar                  u2_male_full_muscle_nocog_grip_nocogspec.out        
u2              female   ae                  NA                       NA                        pulmonary              univar                  u2_female_ae_pulmonary_noCog_pek_noCogSpec.out      
u2              female   aeh                 NA                       NA                        pulmonary              univar                  u2_female_aeh_pulmonary_noCog_pek_noCogSpec.out     
u2              female   aehplus             NA                       NA                        pulmonary              univar                  u2_female_aehplus_pulmonary_noCog_pek_noCogSpec.out 
u2              female   a                   NA                       NA                        pulmonary              univar                  u2_female_age_pulmonary_noCog_pek_noCogSpec.out     
u2              female   full                NA                       NA                        pulmonary              univar                  u2_female_full_pulmonary_noCog_pek_noCogSpec.out    
u2              male     ae                  NA                       NA                        pulmonary              univar                  u2_male_ae_pulmonary_noCog_pek_noCogSpec.out        
u2              male     aeh                 NA                       NA                        pulmonary              univar                  u2_male_aeh_pulmonary_noCog_pek_noCogSpec.out       
u2              male     aehplus             NA                       NA                        pulmonary              univar                  u2_male_aehplus_pulmonary_noCog_pek_noCogSpec.out   
u2              male     a                   NA                       NA                        pulmonary              univar                  u2_male_age_pulmonary_noCog_pek_noCogSpec.out       
u2              male     full                NA                       NA                        pulmonary              univar                  u2_male_full_pulmonary_noCog_pek_noCogSpec.out      

## u0


model<br/>tag   sex      predictor<br/>set   physical<br/>construct   cognitive<br/>construct   physical<br/>measure   cognitive<br/>measure   file name                                         
--------------  -------  ------------------  -----------------------  ------------------------  ---------------------  ----------------------  --------------------------------------------------
u0              female   0                   NA                       NA                        muscle                 univar                  u0_female_empty_muscle_nocog_grip_nocogspec.out   
u0              male     0                   NA                       NA                        muscle                 univar                  u0_male_empty_muscle_nocog_grip_nocogspec.out     
u0              female   0                   NA                       NA                        pulmonary              univar                  u0_female_empty_pulmonary_noCog_pek_noCogSpec.out 
u0              male     0                   NA                       NA                        pulmonary              univar                  u0_male_empty_pulmonary_noCog_pek_noCogSpec.out   

## u1


model<br/>tag   sex      predictor<br/>set   physical<br/>construct   cognitive<br/>construct   physical<br/>measure   cognitive<br/>measure   file name                                           
--------------  -------  ------------------  -----------------------  ------------------------  ---------------------  ----------------------  ----------------------------------------------------
u1              female   ae                  NA                       NA                        muscle                 univar                  u1_female_ae_muscle_nocog_grip_nocogspec.out        
u1              female   aeh                 NA                       NA                        muscle                 univar                  u1_female_aeh_muscle_nocog_grip_nocogspec.out       
u1              female   aehplus             NA                       NA                        muscle                 univar                  u1_female_aehplus_muscle_nocog_grip_nocogspec.out   
u1              female   a                   NA                       NA                        muscle                 univar                  u1_female_age_muscle_nocog_grip_nocogspec.out       
u1              female   full                NA                       NA                        muscle                 univar                  u1_female_full_muscle_nocog_grip_nocogspec.out      
u1              male     ae                  NA                       NA                        muscle                 univar                  u1_male_ae_muscle_nocog_grip_nocogspec.out          
u1              male     aeh                 NA                       NA                        muscle                 univar                  u1_male_aeh_muscle_nocog_grip_nocogspec.out         
u1              male     aehplus             NA                       NA                        muscle                 univar                  u1_male_aehplus_muscle_nocog_grip_nocogspec.out     
u1              male     a                   NA                       NA                        muscle                 univar                  u1_male_age_muscle_nocog_grip_nocogspec.out         
u1              male     full                NA                       NA                        muscle                 univar                  u1_male_full_muscle_nocog_grip_nocogspec.out        
u1              female   ae                  NA                       NA                        pulmonary              univar                  u1_female_ae_pulmonary_noCog_pek_noCogSpec.out      
u1              female   aeh                 NA                       NA                        pulmonary              univar                  u1_female_aeh_pulmonary_noCog_pek_noCogSpec.out     
u1              female   aehplus             NA                       NA                        pulmonary              univar                  u1_female_aehplus_pulmonary_noCog_pek_noCogSpec.out 
u1              female   a                   NA                       NA                        pulmonary              univar                  u1_female_age_pulmonary_noCog_pek_noCogSpec.out     
u1              female   full                NA                       NA                        pulmonary              univar                  u1_female_full_pulmonary_noCog_pek_noCogSpec.out    
u1              male     ae                  NA                       NA                        pulmonary              univar                  u1_male_ae_pulmonary_noCog_pek_noCogSpec.out        
u1              male     aeh                 NA                       NA                        pulmonary              univar                  u1_male_aeh_pulmonary_noCog_pek_noCogSpec.out       
u1              male     aehplus             NA                       NA                        pulmonary              univar                  u1_male_aehplus_pulmonary_noCog_pek_noCogSpec.out   
u1              male     a                   NA                       NA                        pulmonary              univar                  u1_male_age_pulmonary_noCog_pek_noCogSpec.out       
u1              male     full                NA                       NA                        pulmonary              univar                  u1_male_full_pulmonary_noCog_pek_noCogSpec.out      


# Session Information
For the sake of documentation and reproducibility, the current report was rendered on a system using the following software.


```
Report rendered by koval_000 at 2015-12-15, 15:06 -0800
```

```
R version 3.2.2 (2015-08-14)
Platform: x86_64-w64-mingw32/x64 (64-bit)
Running under: Windows 8 x64 (build 9200)

locale:
[1] LC_COLLATE=English_United States.1252  LC_CTYPE=English_United States.1252    LC_MONETARY=English_United States.1252
[4] LC_NUMERIC=C                           LC_TIME=English_United States.1252    

attached base packages:
[1] grid      stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] RColorBrewer_1.1-2    scales_0.2.5          tidyr_0.2.0           ggplot2_1.0.1         IalsaSynthesis_0.1.8 
[6] MplusAutomation_0.6-3 dplyr_0.4.1           testit_0.4            knitr_1.10.5         

loaded via a namespace (and not attached):
 [1] Rcpp_0.11.6      highr_0.5        formatR_1.2      plyr_1.8.3       tools_3.2.2      boot_1.3-17     
 [7] digest_0.6.8     evaluate_0.7     gtable_0.1.2     lattice_0.20-33  texreg_1.35      DBI_0.3.1       
[13] yaml_2.1.13      parallel_3.2.2   proto_0.3-10     coda_0.17-1      stringr_1.0.0    R6_2.0.1        
[19] tcltk_3.2.2      gsubfn_0.6-6     rmarkdown_0.7    reshape2_1.4.1   magrittr_1.5     htmltools_0.2.6 
[25] MASS_7.3-44      assertthat_0.1   xtable_1.7-4     colorspace_1.2-6 stringi_0.4-1    lazyeval_0.1.10 
[31] munsell_0.4.2   
```
