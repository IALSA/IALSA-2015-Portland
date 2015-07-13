# ELSA: Model catalog



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
484
```
models, using univariate and bivariate specifications:

```

 b1  u0  u1  u2 
218   6 129 131 
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
484
```
models, which output files contains all 7 components. We have corrected the obvious typos, but some names (of constructs and measures) require your attention. 

# Simple Counts
In this section, **model specification (columns)** are cross-tabulated with **constructs or measures (rows)**, displaying the number of valid models in each category. 

## Physical constructs


```
           
            b1  u0 u1  u2 
  muscle    109 2  10  10 
  pulmonary 109 2  10  11 
  Univar    .   2  109 110
```


## Physical measures


```
        
         b1  u0 u1  u2 
  grip   109 2  10  10 
  pek    109 2  10  11 
  univar .   2  109 110
```

## Cognitive constructs


```
           
            b1 u0 u1 u2
  executive 19 .  9  11
  fluency   40 .  20 20
  knowledge 40 .  20 20
  language  20 .  10 10
  memory    39 .  20 20
  mental    20 .  10 10
  reasoning 20 2  10 10
  speed     20 .  10 10
  Univar    .  4  20 20
```


## Cognitive measures


```
               
                b1 u0 u1 u2
  block         20 2  10 10
  bnt           20 .  10 10
  categories    20 .  10 10
  digitspan     20 .  10 10
  info          20 .  10 10
  logicalmemory 19 .  10 10
  mmse          20 .  10 10
  symbol        20 .  10 10
  trailsb       19 .  9  11
  univar        .  4  20 20
  verbalfluency 20 .  10 10
  waisvocab     20 .  10 10
```
</br></br></br>

# BIVARIATE MODELS

In this section, **constructs (columns)** are cross-tabulated with  **measures (rows)** that opeationalize them in the models. Each non-blank element in a column indicates a unique **measure (row)** of the **construct (column)**. The numeric value shows how many different versions of this model used this specific pair of construct and measure: model may differ on the subgroup (male, female), and the set of covariates (empty, a, ae, aeh, aehplus, full).


## Physical 
Physical **constructs** (columns) by physical **measures** (rows) in BIVARIATE models

```
      
       muscle pulmonary
  grip 109    .        
  pek  .      109      
```

## Cognitive 
Cognitive **constructs** (columns) by cognitive **measures** (rows) in BIVARIATE models

```
               
                executive fluency knowledge language memory mental reasoning speed
  block         .         .       .         .        .      .      20        .    
  bnt           .         .       .         20       .      .      .         .    
  categories    .         20      .         .        .      .      .         .    
  digitspan     .         .       .         .        20     .      .         .    
  info          .         .       20        .        .      .      .         .    
  logicalmemory .         .       .         .        19     .      .         .    
  mmse          .         .       .         .        .      20     .         .    
  symbol        .         .       .         .        .      .      .         20   
  trailsb       19        .       .         .        .      .      .         .    
  verbalfluency .         20      .         .        .      .      .         .    
  waisvocab     .         .       20        .        .      .      .         .    
```


## Constructs
Number of models with the following **physical constructs** (columns) and  **cognitive constructs** (rows)


```
           
            muscle pulmonary
  executive 10     9        
  fluency   20     20       
  knowledge 20     20       
  language  10     10       
  memory    19     20       
  mental    10     10       
  reasoning 10     10       
  speed     10     10       
```

## Phys.Constructs
Number of models with the following  **physical constructs** (columns) and  **cognitive measures** (rows)

```
               
                muscle pulmonary
  block         10     10       
  bnt           10     10       
  categories    10     10       
  digitspan     10     10       
  info          10     10       
  logicalmemory 9      10       
  mmse          10     10       
  symbol        10     10       
  trailsb       10     9        
  verbalfluency 10     10       
  waisvocab     10     10       
```

## Cog.Constructs
Number of models with the following  **physical measure** (columns) and  **cognitive constructs** (rows)

```
           
            grip pek
  executive 10   9  
  fluency   20   20 
  knowledge 20   20 
  language  10   10 
  memory    19   20 
  mental    10   10 
  reasoning 10   10 
  speed     10   10 
```

## Measures
Number of models with the following  **physical measures** (columns) and  **cognitive measures** (rows)

```
               
                grip pek
  block         10   10 
  bnt           10   10 
  categories    10   10 
  digitspan     10   10 
  info          10   10 
  logicalmemory 9    10 
  mmse          10   10 
  symbol        10   10 
  trailsb       10   9  
  verbalfluency 10   10 
  waisvocab     10   10 
```
</br></br></br>


# UNIVARIATE MODELS

In this section, **constructs (columns)** are cross-tabulated with  **measures (rows)** that opeationalize them in the models. Each non-blank element in a column indicates a unique **measure (row)** of the **construct (column)**. The numeric value counts the different versions of the model (sex, covariates) that used this specific pair of construct and measure. 

## Physical 
Physical constructs (columns) by physical measures (rows) in UNIVARIATE models

```
           muscle pulmonary Univar
                                  
u0 grip       2         .      .  
   pek        .         2      .  
   univar     .         .      2  
u1 grip       10        .      .  
   pek        .         10     .  
   univar     .         .      109
u2 grip       10        .      .  
   pek        .         11     .  
   univar     .         .      110
```

## Cognitive
Cognitive constructs (columns) by cognitive measures (rows) in UNIVARIATE models

```
                  executive fluency knowledge language memory mental reasoning speed Univar
                                                                                           
u0 block                 .       .         .        .      .      .         2     .      . 
   bnt                   .       .         .        .      .      .         .     .      . 
   categories            .       .         .        .      .      .         .     .      . 
   digitspan             .       .         .        .      .      .         .     .      . 
   info                  .       .         .        .      .      .         .     .      . 
   logicalmemory         .       .         .        .      .      .         .     .      . 
   mmse                  .       .         .        .      .      .         .     .      . 
   symbol                .       .         .        .      .      .         .     .      . 
   trailsb               .       .         .        .      .      .         .     .      . 
   univar                .       .         .        .      .      .         .     .      4 
   verbalfluency         .       .         .        .      .      .         .     .      . 
   waisvocab             .       .         .        .      .      .         .     .      . 
u1 block                 .       .         .        .      .      .         10    .      . 
   bnt                   .       .         .        10     .      .         .     .      . 
   categories            .       10        .        .      .      .         .     .      . 
   digitspan             .       .         .        .      10     .         .     .      . 
   info                  .       .         10       .      .      .         .     .      . 
   logicalmemory         .       .         .        .      10     .         .     .      . 
   mmse                  .       .         .        .      .      10        .     .      . 
   symbol                .       .         .        .      .      .         .     10     . 
   trailsb               9       .         .        .      .      .         .     .      . 
   univar                .       .         .        .      .      .         .     .      20
   verbalfluency         .       10        .        .      .      .         .     .      . 
   waisvocab             .       .         10       .      .      .         .     .      . 
u2 block                 .       .         .        .      .      .         10    .      . 
   bnt                   .       .         .        10     .      .         .     .      . 
   categories            .       10        .        .      .      .         .     .      . 
   digitspan             .       .         .        .      10     .         .     .      . 
   info                  .       .         10       .      .      .         .     .      . 
   logicalmemory         .       .         .        .      10     .         .     .      . 
   mmse                  .       .         .        .      .      10        .     .      . 
   symbol                .       .         .        .      .      .         .     10     . 
   trailsb               11      .         .        .      .      .         .     .      . 
   univar                .       .         .        .      .      .         .     .      20
   verbalfluency         .       10        .        .      .      .         .     .      . 
   waisvocab             .       .         10       .      .      .         .     .      . 
```
</br></br></br>

# List of models
## b1


model<br/>tag   sex      predictor<br/>set   physical<br/>construct   cognitive<br/>construct   physical<br/>measure   cognitive<br/>measure   file name                                                     
--------------  -------  ------------------  -----------------------  ------------------------  ---------------------  ----------------------  --------------------------------------------------------------
b1              female   ae                  muscle                   reasoning                 grip                   block                   b1_female_ae_muscle_reasoning_grip_block.out                  
b1              female   aeh                 muscle                   reasoning                 grip                   block                   b1_female_aeh_muscle_reasoning_grip_block.out                 
b1              female   aehplus             muscle                   reasoning                 grip                   block                   b1_female_aehplus_muscle_reasoning_grip_block.out             
b1              female   a                   muscle                   reasoning                 grip                   block                   b1_female_age_muscle_reasoning_grip_block.out                 
b1              female   full                muscle                   reasoning                 grip                   block                   b1_female_full_muscle_reasoning_grip_block.out                
b1              male     ae                  muscle                   reasoning                 grip                   block                   b1_male_ae_muscle_reasoning_grip_block.out                    
b1              male     aeh                 muscle                   reasoning                 grip                   block                   b1_male_aeh_muscle_reasoning_grip_block.out                   
b1              male     aehplus             muscle                   reasoning                 grip                   block                   b1_male_aehplus_muscle_reasoning_grip_block.out               
b1              male     a                   muscle                   reasoning                 grip                   block                   b1_male_age_muscle_reasoning_grip_block.out                   
b1              male     full                muscle                   reasoning                 grip                   block                   b1_male_full_muscle_reasoning_grip_block.out                  
b1              female   ae                  pulmonary                reasoning                 pek                    block                   b1_female_ae_pulmonary_reasoning_pek_block.out                
b1              female   aeh                 pulmonary                reasoning                 pek                    block                   b1_female_aeh_pulmonary_reasoning_pek_block.out               
b1              female   aehplus             pulmonary                reasoning                 pek                    block                   b1_female_aehplus_pulmonary_reasoning_pek_block.out           
b1              female   a                   pulmonary                reasoning                 pek                    block                   b1_female_age_pulmonary_reasoning_pek_block.out               
b1              female   full                pulmonary                reasoning                 pek                    block                   b1_female_full_pulmonary_reasoning_pek_block.out              
b1              male     ae                  pulmonary                reasoning                 pek                    block                   b1_male_ae_pulmonary_reasoning_pek_block.out                  
b1              male     aeh                 pulmonary                reasoning                 pek                    block                   b1_male_aeh_pulmonary_reasoning_pek_block.out                 
b1              male     aehplus             pulmonary                reasoning                 pek                    block                   b1_male_aehplus_pulmonary_reasoning_pek_block.out             
b1              male     a                   pulmonary                reasoning                 pek                    block                   b1_male_age_pulmonary_reasoning_pek_block.out                 
b1              male     full                pulmonary                reasoning                 pek                    block                   b1_male_full_pulmonary_reasoning_pek_block.out                
b1              male     ae                  pulmonary                language                  pek                    bnt                     b1_male_ae_pulmonary_fluency_pek_bostonmaning.out             
b1              female   ae                  muscle                   language                  grip                   bnt                     b1_female_ae_muscle_fluency_grip_bostonnaming.out             
b1              female   aeh                 muscle                   language                  grip                   bnt                     b1_female_aeh_muscle_fluency_grip_bostonnaming.out            
b1              female   aehplus             muscle                   language                  grip                   bnt                     b1_female_aehplus_muscle_fluency_grip_bostonnaming.out        
b1              female   a                   muscle                   language                  grip                   bnt                     b1_female_age_muscle_fluency_grip_bostonnaming.out            
b1              female   full                muscle                   language                  grip                   bnt                     b1_female_full_muscle_fluency_grip_bostonnaming.out           
b1              male     ae                  muscle                   language                  grip                   bnt                     b1_male_ae_muscle_fluency_grip_bostonnaming.out               
b1              male     aeh                 muscle                   language                  grip                   bnt                     b1_male_aeh_muscle_fluency_grip_bostonnaming.out              
b1              male     aehplus             muscle                   language                  grip                   bnt                     b1_male_aehplus_muscle_fluency_grip_bostonnaming.out          
b1              male     a                   muscle                   language                  grip                   bnt                     b1_male_age_muscle_fluency_grip_bostonnaming.out              
b1              male     full                muscle                   language                  grip                   bnt                     b1_male_full_muscle_fluency_grip_bostonnaming.out             
b1              female   ae                  pulmonary                language                  pek                    bnt                     b1_female_ae_pulmonary_fluency_pek_bostonnaming.out           
b1              female   aeh                 pulmonary                language                  pek                    bnt                     b1_female_aeh_pulmonary_fluency_pek_bostonnaming.out          
b1              female   aehplus             pulmonary                language                  pek                    bnt                     b1_female_aehplus_pulmonary_fluency_pek_bostonnaming.out      
b1              female   a                   pulmonary                language                  pek                    bnt                     b1_female_age_pulmonary_fluency_pek_bostonnaming.out          
b1              female   full                pulmonary                language                  pek                    bnt                     b1_female_full_pulmonary_fluency_pek_bostonnaming.out         
b1              male     aeh                 pulmonary                language                  pek                    bnt                     b1_male_aeh_pulmonary_fluency_pek_bostonnaming.out            
b1              male     aehplus             pulmonary                language                  pek                    bnt                     b1_male_aehplus_pulmonary_fluency_pek_bostonnaming.out        
b1              male     a                   pulmonary                language                  pek                    bnt                     b1_male_age_pulmonary_fluency_pek_bostonnaming.out            
b1              male     full                pulmonary                language                  pek                    bnt                     b1_male_full_pulmonary_fluency_pek_bostonnaming.out           
b1              female   ae                  muscle                   fluency                   grip                   categories              b1_female_ae_muscle_fluency_grip_category.out                 
b1              female   aeh                 muscle                   fluency                   grip                   categories              b1_female_aeh_muscle_fluency_grip_category.out                
b1              female   aehplus             muscle                   fluency                   grip                   categories              b1_female_aehplus_muscle_fluency_grip_category.out            
b1              female   a                   muscle                   fluency                   grip                   categories              b1_female_age_muscle_fluency_grip_category.out                
b1              female   full                muscle                   fluency                   grip                   categories              b1_female_full_muscle_fluency_grip_category.out               
b1              male     ae                  muscle                   fluency                   grip                   categories              b1_male_ae_muscle_fluency_grip_category.out                   
b1              male     aeh                 muscle                   fluency                   grip                   categories              b1_male_aeh_muscle_fluency_grip_category.out                  
b1              male     aehplus             muscle                   fluency                   grip                   categories              b1_male_aehplus_muscle_fluency_grip_category.out              
b1              male     a                   muscle                   fluency                   grip                   categories              b1_male_age_muscle_fluency_grip_category.out                  
b1              male     full                muscle                   fluency                   grip                   categories              b1_male_full_muscle_fluency_grip_category.out                 
b1              female   ae                  pulmonary                fluency                   pek                    categories              b1_female_ae_pulmonary_fluency_pek_category.out               
b1              female   aeh                 pulmonary                fluency                   pek                    categories              b1_female_aeh_pulmonary_fluency_pek_category.out              
b1              female   aehplus             pulmonary                fluency                   pek                    categories              b1_female_aehplus_pulmonary_fluency_pek_category.out          
b1              female   a                   pulmonary                fluency                   pek                    categories              b1_female_age_pulmonary_fluency_pek_category.out              
b1              female   full                pulmonary                fluency                   pek                    categories              b1_female_full_pulmonary_fluency_pek_category.out             
b1              male     ae                  pulmonary                fluency                   pek                    categories              b1_male_ae_pulmonary_fluency_pek_category.out                 
b1              male     aeh                 pulmonary                fluency                   pek                    categories              b1_male_aeh_pulmonary_fluency_pek_category.out                
b1              male     aehplus             pulmonary                fluency                   pek                    categories              b1_male_aehplus_pulmonary_fluency_pek_category.out            
b1              male     a                   pulmonary                fluency                   pek                    categories              b1_male_age_pulmonary_fluency_pek_category.out                
b1              male     full                pulmonary                fluency                   pek                    categories              b1_male_full_pulmonary_fluency_pek_category.out               
b1              female   ae                  muscle                   memory                    grip                   digitspan               b1_female_ae_muscle_memory_grip_digitspan.out                 
b1              female   aeh                 muscle                   memory                    grip                   digitspan               b1_female_aeh_muscle_memory_grip_digitspan.out                
b1              female   aehplus             muscle                   memory                    grip                   digitspan               b1_female_aehplus_muscle_memory_grip_digitspan.out            
b1              female   a                   muscle                   memory                    grip                   digitspan               b1_female_age_muscle_memory_grip_digitspan.out                
b1              female   full                muscle                   memory                    grip                   digitspan               b1_female_full_muscle_memory_grip_digitspan.out               
b1              male     ae                  muscle                   memory                    grip                   digitspan               b1_male_ae_muscle_memory_grip_digitspan.out                   
b1              male     aeh                 muscle                   memory                    grip                   digitspan               b1_male_aeh_muscle_memory_grip_digitspan.out                  
b1              male     aehplus             muscle                   memory                    grip                   digitspan               b1_male_aehplus_muscle_memory_grip_digitspan.out              
b1              male     a                   muscle                   memory                    grip                   digitspan               b1_male_age_muscle_memory_grip_digitspan.out                  
b1              male     full                muscle                   memory                    grip                   digitspan               b1_male_full_muscle_memory_grip_digitspan.out                 
b1              female   aeh                 pulmonary                memory                    pek                    digitspan               b1_female_aeh_pulmonary_memory_pek_digitspan.out              
b1              female   aehplus             pulmonary                memory                    pek                    digitspan               b1_female_aehplus_pulmonary_memory_pek_digitspan.out          
b1              female   full                pulmonary                memory                    pek                    digitspan               b1_female_full_pulmonary_memory_pek_digitspan.out             
b1              male     aeh                 pulmonary                memory                    pek                    digitspan               b1_male_aeh_pulmonary_memory_pek_digitspan.out                
b1              female   ae                  pulmonary                memory                    pek                    digitspan               b1_female_ae_pulmonary_memory_pek_digitspantotal.out          
b1              female   a                   pulmonary                memory                    pek                    digitspan               b1_female_age_pulmonary_memory_pek_digitspantotal.out         
b1              male     ae                  pulmonary                memory                    pek                    digitspan               b1_male_ae_pulmonary_memory_pek_digitspantotal.out            
b1              male     aehplus             pulmonary                memory                    pek                    digitspan               b1_male_aehplus_pulmonary_memory_pek_digitspantotal.out       
b1              male     a                   pulmonary                memory                    pek                    digitspan               b1_male_age_pulmonary_memory_pek_digitspantotal.out           
b1              male     full                pulmonary                memory                    pek                    digitspan               b1_male_full_pulmonary_memory_pek_digitspantotal.out          
b1              female   ae                  muscle                   speed                     grip                   symbol                  b1_female_ae_muscle_speed_grip_digitsymbol.out                
b1              female   aeh                 muscle                   speed                     grip                   symbol                  b1_female_aeh_muscle_speed_grip_digitsymbol.out               
b1              female   aehplus             muscle                   speed                     grip                   symbol                  b1_female_aehplus_muscle_speed_grip_digitsymbol.out           
b1              female   a                   muscle                   speed                     grip                   symbol                  b1_female_age_muscle_speed_grip_digitsymbol.out               
b1              female   full                muscle                   speed                     grip                   symbol                  b1_female_full_muscle_speed_grip_digitsymbol.out              
b1              male     ae                  muscle                   speed                     grip                   symbol                  b1_male_ae_muscle_speed_grip_digitsymbol.out                  
b1              male     aeh                 muscle                   speed                     grip                   symbol                  b1_male_aeh_muscle_speed_grip_digitsymbol.out                 
b1              male     aehplus             muscle                   speed                     grip                   symbol                  b1_male_aehplus_muscle_speed_grip_digitsymbol.out             
b1              male     a                   muscle                   speed                     grip                   symbol                  b1_male_age_muscle_speed_grip_digitsymbol.out                 
b1              female   ae                  pulmonary                speed                     pek                    symbol                  b1_female_ae_pulmonary_speed_pek_digitsymbol.out              
b1              female   aeh                 pulmonary                speed                     pek                    symbol                  b1_female_aeh_pulmonary_speed_pek_digitsymbol.out             
b1              female   aehplus             pulmonary                speed                     pek                    symbol                  b1_female_aehplus_pulmonary_speed_pek_digitsymbol.out         
b1              female   a                   pulmonary                speed                     pek                    symbol                  b1_female_age_pulmonary_speed_pek_digitsymbol.out             
b1              female   full                pulmonary                speed                     pek                    symbol                  b1_female_full_pulmonary_speed_pek_digitsymbol.out            
b1              male     ae                  pulmonary                speed                     pek                    symbol                  b1_male_ae_pulmonary_speed_pek_digitsymbol.out                
b1              male     aeh                 pulmonary                speed                     pek                    symbol                  b1_male_aeh_pulmonary_speed_pek_digitsymbol.out               
b1              male     aehplus             pulmonary                speed                     pek                    symbol                  b1_male_aehplus_pulmonary_speed_pek_digitsymbol.out           
b1              male     a                   pulmonary                speed                     pek                    symbol                  b1_male_age_pulmonary_speed_pek_digitsymbol.out               
b1              male     full                pulmonary                speed                     pek                    symbol                  b1_male_full_pulmonary_speed_pek_digitsymbol.out              
b1              male     full                muscle                   speed                     grip                   symbol                  b1_male_full_muscle_speed_grip_digitsymol.out                 
b1              female   ae                  muscle                   fluency                   grip                   verbalfluency           b1_female_ae_muscle_fluency_grip_fas.out                      
b1              female   aeh                 muscle                   fluency                   grip                   verbalfluency           b1_female_aeh_muscle_fluency_grip_fas.out                     
b1              female   aehplus             muscle                   fluency                   grip                   verbalfluency           b1_female_aehplus_muscle_fluency_grip_fas.out                 
b1              female   a                   muscle                   fluency                   grip                   verbalfluency           b1_female_age_muscle_fluency_grip_fas.out                     
b1              female   full                muscle                   fluency                   grip                   verbalfluency           b1_female_full_muscle_fluency_grip_fas.out                    
b1              male     ae                  muscle                   fluency                   grip                   verbalfluency           b1_male_ae_muscle_fluency_grip_fas.out                        
b1              male     aeh                 muscle                   fluency                   grip                   verbalfluency           b1_male_aeh_muscle_fluency_grip_fas.out                       
b1              male     aehplus             muscle                   fluency                   grip                   verbalfluency           b1_male_aehplus_muscle_fluency_grip_fas.out                   
b1              male     a                   muscle                   fluency                   grip                   verbalfluency           b1_male_age_muscle_fluency_grip_fas.out                       
b1              male     full                muscle                   fluency                   grip                   verbalfluency           b1_male_full_muscle_fluency_grip_fas.out                      
b1              female   ae                  pulmonary                fluency                   pek                    verbalfluency           b1_female_ae_pulmonary_fluency_pek_fas.out                    
b1              female   aeh                 pulmonary                fluency                   pek                    verbalfluency           b1_female_aeh_pulmonary_fluency_pek_fas.out                   
b1              female   aehplus             pulmonary                fluency                   pek                    verbalfluency           b1_female_aehplus_pulmonary_fluency_pek_fas.out               
b1              female   a                   pulmonary                fluency                   pek                    verbalfluency           b1_female_age_pulmonary_fluency_pek_fas.out                   
b1              female   full                pulmonary                fluency                   pek                    verbalfluency           b1_female_full_pulmonary_fluency_pek_fas.out                  
b1              male     ae                  pulmonary                fluency                   pek                    verbalfluency           b1_male_ae_pulmonary_fluency_pek_fas.out                      
b1              male     aeh                 pulmonary                fluency                   pek                    verbalfluency           b1_male_aeh_pulmonary_fluency_pek_fas.out                     
b1              male     aehplus             pulmonary                fluency                   pek                    verbalfluency           b1_male_aehplus_pulmonary_fluency_pek_fas.out                 
b1              male     a                   pulmonary                fluency                   pek                    verbalfluency           b1_male_age_pulmonary_fluency_pek_fas.out                     
b1              male     full                pulmonary                fluency                   pek                    verbalfluency           b1_male_full_pulmonary_fluency_pek_fas.out                    
b1              female   a                   muscle                   knowledge                 grip                   info                    b1_female_age_muscle_fluency_grip_information.out             
b1              male     ae                  muscle                   knowledge                 grip                   info                    b1_male_ae_muscle_fluency_grip_information.out                
b1              male     aeh                 muscle                   knowledge                 grip                   info                    b1_male_aeh_muscle_fluency_grip_information.out               
b1              male     aehplus             muscle                   knowledge                 grip                   info                    b1_male_aehplus_muscle_fluency_grip_information.out           
b1              male     a                   muscle                   knowledge                 grip                   info                    b1_male_age_muscle_fluency_grip_information.out               
b1              male     full                muscle                   knowledge                 grip                   info                    b1_male_full_muscle_fluency_grip_information.out              
b1              female   ae                  muscle                   knowledge                 grip                   info                    b1_female_ae_muscle_knowledge_grip_information.out            
b1              female   aeh                 muscle                   knowledge                 grip                   info                    b1_female_aeh_muscle_knowledge_grip_information.out           
b1              female   aehplus             muscle                   knowledge                 grip                   info                    b1_female_aehplus_muscle_knowledge_grip_information.out       
b1              female   full                muscle                   knowledge                 grip                   info                    b1_female_full_muscle_knowledge_grip_information.out          
b1              female   ae                  pulmonary                knowledge                 pek                    info                    b1_female_ae_pulmonary_knowledge_pek_information.out          
b1              female   aeh                 pulmonary                knowledge                 pek                    info                    b1_female_aeh_pulmonary_knowledge_pek_information.out         
b1              female   aehplus             pulmonary                knowledge                 pek                    info                    b1_female_aehplus_pulmonary_knowledge_pek_information.out     
b1              female   a                   pulmonary                knowledge                 pek                    info                    b1_female_age_pulmonary_knowledge_pek_information.out         
b1              female   full                pulmonary                knowledge                 pek                    info                    b1_female_full_pulmonary_knowledge_pek_information.out        
b1              male     ae                  pulmonary                knowledge                 pek                    info                    b1_male_ae_pulmonary_knowledge_pek_information.out            
b1              male     aeh                 pulmonary                knowledge                 pek                    info                    b1_male_aeh_pulmonary_knowledge_pek_information.out           
b1              male     aehplus             pulmonary                knowledge                 pek                    info                    b1_male_aehplus_pulmonary_knowledge_pek_information.out       
b1              male     a                   pulmonary                knowledge                 pek                    info                    b1_male_age_pulmonary_knowledge_pek_information.out           
b1              male     full                pulmonary                knowledge                 pek                    info                    b1_male_full_pulmonary_knowledge_pek_information.out          
b1              female   ae                  muscle                   memory                    grip                   logicalmemory           b1_female_ae_muscle_memory_grip_logicalmemory.out             
b1              female   aeh                 muscle                   memory                    grip                   logicalmemory           b1_female_aeh_muscle_memory_grip_logicalmemory.out            
b1              female   aehplus             muscle                   memory                    grip                   logicalmemory           b1_female_aehplus_muscle_memory_grip_logicalmemory.out        
b1              female   a                   muscle                   memory                    grip                   logicalmemory           b1_female_age_muscle_memory_grip_logicalmemory.out            
b1              female   full                muscle                   memory                    grip                   logicalmemory           b1_female_full_muscle_memory_grip_logicalmemory.out           
b1              male     ae                  muscle                   memory                    grip                   logicalmemory           b1_male_ae_muscle_memory_grip_logicalmemory.out               
b1              male     aehplus             muscle                   memory                    grip                   logicalmemory           b1_male_aehplus_muscle_memory_grip_logicalmemory.out          
b1              male     a                   muscle                   memory                    grip                   logicalmemory           b1_male_age_muscle_memory_grip_logicalmemory.out              
b1              male     full                muscle                   memory                    grip                   logicalmemory           b1_male_full_muscle_memory_grip_logicalmemory.out             
b1              female   a                   pulmonary                memory                    pek                    logicalmemory           b1_female_age_pulmonary_memory_pek_logicalmemory.out          
b1              female   ae                  pulmonary                memory                    pek                    logicalmemory           b1_female_ae_pulmonary_memory_pek_logicalmemorytotal.out      
b1              female   aeh                 pulmonary                memory                    pek                    logicalmemory           b1_female_aeh_pulmonary_memory_pek_logicalmemorytotal.out     
b1              female   aehplus             pulmonary                memory                    pek                    logicalmemory           b1_female_aehplus_pulmonary_memory_pek_logicalmemorytotal.out 
b1              female   full                pulmonary                memory                    pek                    logicalmemory           b1_female_full_pulmonary_memory_pek_logicalmemorytotal.out    
b1              male     ae                  pulmonary                memory                    pek                    logicalmemory           b1_male_ae_pulmonary_memory_pek_logicalmemorytotal.out        
b1              male     aeh                 pulmonary                memory                    pek                    logicalmemory           b1_male_aeh_pulmonary_memory_pek_logicalmemorytotal.out       
b1              male     aehplus             pulmonary                memory                    pek                    logicalmemory           b1_male_aehplus_pulmonary_memory_pek_logicalmemorytotal.out   
b1              male     a                   pulmonary                memory                    pek                    logicalmemory           b1_male_age_pulmonary_memory_pek_logicalmemorytotal.out       
b1              male     full                pulmonary                memory                    pek                    logicalmemory           b1_male_full_pulmonary_memory_pek_logicalmemorytotal.out      
b1              female   ae                  muscle                   mental                    grip                   mmse                    b1_female_ae_muscle_global_grip_mmse.out                      
b1              female   aeh                 muscle                   mental                    grip                   mmse                    b1_female_aeh_muscle_global_grip_mmse.out                     
b1              female   aehplus             muscle                   mental                    grip                   mmse                    b1_female_aehplus_muscle_global_grip_mmse.out                 
b1              female   a                   muscle                   mental                    grip                   mmse                    b1_female_age_muscle_global_grip_mmse.out                     
b1              female   full                muscle                   mental                    grip                   mmse                    b1_female_full_muscle_global_grip_mmse.out                    
b1              male     ae                  muscle                   mental                    grip                   mmse                    b1_male_ae_muscle_global_grip_mmse.out                        
b1              male     aeh                 muscle                   mental                    grip                   mmse                    b1_male_aeh_muscle_global_grip_mmse.out                       
b1              male     aehplus             muscle                   mental                    grip                   mmse                    b1_male_aehplus_muscle_global_grip_mmse.out                   
b1              male     a                   muscle                   mental                    grip                   mmse                    b1_male_age_muscle_global_grip_mmse.out                       
b1              male     full                muscle                   mental                    grip                   mmse                    b1_male_full_muscle_global_grip_mmse.out                      
b1              female   ae                  pulmonary                mental                    pek                    mmse                    b1_female_ae_pulmonary_global_pek_mmse.out                    
b1              female   aeh                 pulmonary                mental                    pek                    mmse                    b1_female_aeh_pulmonary_global_pek_mmse.out                   
b1              female   aehplus             pulmonary                mental                    pek                    mmse                    b1_female_aehplus_pulmonary_global_pek_mmse.out               
b1              female   a                   pulmonary                mental                    pek                    mmse                    b1_female_age_pulmonary_global_pek_mmse.out                   
b1              female   full                pulmonary                mental                    pek                    mmse                    b1_female_full_pulmonary_global_pek_mmse.out                  
b1              male     ae                  pulmonary                mental                    pek                    mmse                    b1_male_ae_pulmonary_global_pek_mmse.out                      
b1              male     aeh                 pulmonary                mental                    pek                    mmse                    b1_male_aeh_pulmonary_global_pek_mmse.out                     
b1              male     aehplus             pulmonary                mental                    pek                    mmse                    b1_male_aehplus_pulmonary_global_pek_mmse.out                 
b1              male     a                   pulmonary                mental                    pek                    mmse                    b1_male_age_pulmonary_global_pek_mmse.out                     
b1              male     full                pulmonary                mental                    pek                    mmse                    b1_male_full_pulmonary_global_pek_mmse.out                    
b1              female   a                   pulmonary                executive                 pek                    trailsb                 b1_female_age_pulmonary_executive_pek_trailsB.out             
b1              female   ae                  muscle                   executive                 grip                   trailsb                 b1_female_ae_muscle_fluid_grip_trailsb.out                    
b1              female   aeh                 muscle                   executive                 grip                   trailsb                 b1_female_aeh_muscle_fluid_grip_trailsb.out                   
b1              female   aehplus             muscle                   executive                 grip                   trailsb                 b1_female_aehplus_muscle_fluid_grip_trailsb.out               
b1              female   a                   muscle                   executive                 grip                   trailsb                 b1_female_age_muscle_fluid_grip_trailsb.out                   
b1              female   full                muscle                   executive                 grip                   trailsb                 b1_female_full_muscle_fluid_grip_trailsb.out                  
b1              male     ae                  muscle                   executive                 grip                   trailsb                 b1_male_ae_muscle_fluid_grip_trailsb.out                      
b1              male     aeh                 muscle                   executive                 grip                   trailsb                 b1_male_aeh_muscle_fluid_grip_trailsb.out                     
b1              male     aehplus             muscle                   executive                 grip                   trailsb                 b1_male_aehplus_muscle_fluid_grip_trailsb.out                 
b1              male     a                   muscle                   executive                 grip                   trailsb                 b1_male_age_muscle_fluid_grip_trailsb.out                     
b1              male     full                muscle                   executive                 grip                   trailsb                 b1_male_full_muscle_fluid_grip_trailsb.out                    
b1              female   ae                  pulmonary                executive                 pek                    trailsb                 b1_female_ae_pulmonary_executive_pek_trailsb.out              
b1              female   aeh                 pulmonary                executive                 pek                    trailsb                 b1_female_aeh_pulmonary_executive_pek_trailsb.out             
b1              female   aehplus             pulmonary                executive                 pek                    trailsb                 b1_female_aehplus_pulmonary_executive_pek_trailsb.out         
b1              female   full                pulmonary                executive                 pek                    trailsb                 b1_female_full_pulmonary_executive_pek_trailsb.out            
b1              male     ae                  pulmonary                executive                 pek                    trailsb                 b1_male_ae_pulmonary_executive_pek_trailsb.out                
b1              male     aeh                 pulmonary                executive                 pek                    trailsb                 b1_male_aeh_pulmonary_executive_pek_trailsb.out               
b1              male     aehplus             pulmonary                executive                 pek                    trailsb                 b1_male_aehplus_pulmonary_executive_pek_trailsb.out           
b1              male     full                pulmonary                executive                 pek                    trailsb                 b1_male_full_pulmonary_executive_pek_trailsb.out              
b1              female   ae                  muscle                   knowledge                 grip                   waisvocab               b1_female_ae_muscle_knowledge_grip_waisvocab.out              
b1              female   aeh                 muscle                   knowledge                 grip                   waisvocab               b1_female_aeh_muscle_knowledge_grip_waisvocab.out             
b1              female   aehplus             muscle                   knowledge                 grip                   waisvocab               b1_female_aehplus_muscle_knowledge_grip_waisvocab.out         
b1              female   a                   muscle                   knowledge                 grip                   waisvocab               b1_female_age_muscle_knowledge_grip_waisvocab.out             
b1              female   full                muscle                   knowledge                 grip                   waisvocab               b1_female_full_muscle_knowledge_grip_waisvocab.out            
b1              male     ae                  muscle                   knowledge                 grip                   waisvocab               b1_male_ae_muscle_knowledge_grip_waisvocab.out                
b1              male     aeh                 muscle                   knowledge                 grip                   waisvocab               b1_male_aeh_muscle_knowledge_grip_waisvocab.out               
b1              male     aehplus             muscle                   knowledge                 grip                   waisvocab               b1_male_aehplus_muscle_knowledge_grip_waisvocab.out           
b1              male     a                   muscle                   knowledge                 grip                   waisvocab               b1_male_age_muscle_knowledge_grip_waisvocab.out               
b1              male     full                muscle                   knowledge                 grip                   waisvocab               b1_male_full_muscle_knowledge_grip_waisvocab.out              
b1              female   ae                  pulmonary                knowledge                 pek                    waisvocab               b1_female_ae_pulmonary_ knowledge_pek_waisvocab.out           
b1              female   aeh                 pulmonary                knowledge                 pek                    waisvocab               b1_female_aeh_pulmonary_knowledge_pek_waisvocab.out           
b1              female   aehplus             pulmonary                knowledge                 pek                    waisvocab               b1_female_aehplus_pulmonary_knowledge_pek_waisvocab.out       
b1              female   a                   pulmonary                knowledge                 pek                    waisvocab               b1_female_age_pulmonary_knowledge_pek_waisvocab.out           
b1              female   full                pulmonary                knowledge                 pek                    waisvocab               b1_female_full_pulmonary_knowledge_pek_waisvocab.out          
b1              male     ae                  pulmonary                knowledge                 pek                    waisvocab               b1_male_ae_pulmonary_knowledge_pek_waisvocab.out              
b1              male     aeh                 pulmonary                knowledge                 pek                    waisvocab               b1_male_aeh_pulmonary_knowledge_pek_waisvocab.out             
b1              male     aehplus             pulmonary                knowledge                 pek                    waisvocab               b1_male_aehplus_pulmonary_knowledge_pek_waisvocab.out         
b1              male     a                   pulmonary                knowledge                 pek                    waisvocab               b1_male_age_pulmonary_knowledge_pek_waisvocab.out             
b1              male     full                pulmonary                knowledge                 pek                    waisvocab               b1_male_full_pulmonary_knowledge_pek_waisvocab.out            

## u0


model<br/>tag   sex      predictor<br/>set   physical<br/>construct   cognitive<br/>construct   physical<br/>measure   cognitive<br/>measure   file name                                             
--------------  -------  ------------------  -----------------------  ------------------------  ---------------------  ----------------------  ------------------------------------------------------
u0              female   0                   Univar                   reasoning                 univar                 block                   u0_female_empty_nophys_reasoning_nophysspec_block.out 
u0              male     0                   Univar                   reasoning                 univar                 block                   u0_male_empty_nophys_reasoning_nophysspec_block.out   
u0              female   0                   pulmonary                Univar                    pek                    univar                  u0_female_empty_pulmonary_noCog_pek_noCogSpec.out     
u0              male     0                   pulmonary                Univar                    pek                    univar                  u0_male_empty_pulmonary_noCog_pek_noCogSpec.out       
u0              female   0                   muscle                   Univar                    grip                   univar                  u0_female_empty_muscle_nocog_grip_nocogspec.out       
u0              male     0                   muscle                   Univar                    grip                   univar                  u0_male_empty_muscle_nocog_grip_nocogspec.out         

## u1


model<br/>tag   sex      predictor<br/>set   physical<br/>construct   cognitive<br/>construct   physical<br/>measure   cognitive<br/>measure   file name                                                     
--------------  -------  ------------------  -----------------------  ------------------------  ---------------------  ----------------------  --------------------------------------------------------------
u1              female   ae                  Univar                   reasoning                 univar                 block                   u1_female_ae_noPhys_reasoning_noPhysSpec_block.out            
u1              female   aeh                 Univar                   reasoning                 univar                 block                   u1_female_aeh_noPhys_reasoning_noPhysSpec_block.out           
u1              female   aehplus             Univar                   reasoning                 univar                 block                   u1_female_aehplus_noPhys_reasoning_noPhysSpec_block.out       
u1              female   a                   Univar                   reasoning                 univar                 block                   u1_female_age_noPhys_reasoning_noPhysSpec_block.out           
u1              female   full                Univar                   reasoning                 univar                 block                   u1_female_full_noPhys_reasoning_noPhysSec_block.out           
u1              male     ae                  Univar                   reasoning                 univar                 block                   u1_male_ae_noPhys_reasoning_noPhysSpec_block.out              
u1              male     aeh                 Univar                   reasoning                 univar                 block                   u1_male_aeh_noPhys_reasoning_noPhysSpec_block.out             
u1              male     aehplus             Univar                   reasoning                 univar                 block                   u1_male_aehplus_noPhys_reasoning_noPhysSpec_block.out         
u1              male     a                   Univar                   reasoning                 univar                 block                   u1_male_age_noPhys_reasoning_noPhysSpec_block.out             
u1              male     full                Univar                   reasoning                 univar                 block                   u1_male_full_noPhys_reasoning_noPhysSec_block.out             
u1              female   ae                  Univar                   language                  univar                 bnt                     u1_female_ae_nophys_fluency_nophysspec_bostonnaming.out       
u1              female   aeh                 Univar                   language                  univar                 bnt                     u1_female_aeh_nophys_fluency_nophysspec_bostonnaming.out      
u1              female   aehplus             Univar                   language                  univar                 bnt                     u1_female_aehplus_nophys_fluency_nophysspec_bostonnaming.out  
u1              female   a                   Univar                   language                  univar                 bnt                     u1_female_age_nophys_fluency_nophysspec_bostonnaming.out      
u1              female   full                Univar                   language                  univar                 bnt                     u1_female_full_nophys_fluency_nophysspec_bostonnaming.out     
u1              male     ae                  Univar                   language                  univar                 bnt                     u1_male_ae_nophys_fluency_nophysspec_bostonnaming.out         
u1              male     aeh                 Univar                   language                  univar                 bnt                     u1_male_aeh_nophys_fluency_nophysspec_bostonnaming.out        
u1              male     aehplus             Univar                   language                  univar                 bnt                     u1_male_aehplus_nophys_fluency_nophysspec_bostonnaming.out    
u1              male     full                Univar                   language                  univar                 bnt                     u1_male_full_nophys_fluency_nophysspec_bostonnaming.out       
u1              female   ae                  Univar                   fluency                   univar                 categories              u1_female_ae_nophys_fluency_nophysspec_category.out           
u1              female   aeh                 Univar                   fluency                   univar                 categories              u1_female_aeh_nophys_fluency_nophysspec_category.out          
u1              female   aehplus             Univar                   fluency                   univar                 categories              u1_female_aehplus_nophys_fluency_nophysspec_category.out      
u1              female   a                   Univar                   fluency                   univar                 categories              u1_female_age_nophys_fluency_nophysspec_category.out          
u1              female   full                Univar                   fluency                   univar                 categories              u1_female_full_nophys_fluency_nophysspec_category.out         
u1              male     ae                  Univar                   fluency                   univar                 categories              u1_male_ae_nophys_fluency_nophysspec_category.out             
u1              male     aeh                 Univar                   fluency                   univar                 categories              u1_male_aeh_nophys_fluency_nophysspec_category.out            
u1              male     aehplus             Univar                   fluency                   univar                 categories              u1_male_aehplus_nophys_fluency_nophysspec_category.out        
u1              male     a                   Univar                   fluency                   univar                 categories              u1_male_age_nophys_fluency_nophysspec_category.out            
u1              male     full                Univar                   fluency                   univar                 categories              u1_male_full_nophys_fluency_nophysspec_category.out           
u1              female   ae                  Univar                   memory                    univar                 digitspan               u1_female_ae_nophys_memory_nophysspec_digitspantotal.out      
u1              female   aeh                 Univar                   memory                    univar                 digitspan               u1_female_aeh_nophys_memory_nophysspec_digitspantotal.out     
u1              female   aehplus             Univar                   memory                    univar                 digitspan               u1_female_aehplus_nophys_memory_nophysspec_digitspantotal.out 
u1              female   a                   Univar                   memory                    univar                 digitspan               u1_female_age_nophys_memory_nophysspec_digitspantotal.out     
u1              female   full                Univar                   memory                    univar                 digitspan               u1_female_full_nophys_memory_nophysspec_digitspantotal.out    
u1              male     ae                  Univar                   memory                    univar                 digitspan               u1_male_ae_nophys_memory_nophysspec_digitspantotal.out        
u1              male     aeh                 Univar                   memory                    univar                 digitspan               u1_male_aeh_nophys_memory_nophysspec_digitspantotal.out       
u1              male     aehplus             Univar                   memory                    univar                 digitspan               u1_male_aehplus_nophys_memory_nophysspec_digitspantotal.out   
u1              male     a                   Univar                   memory                    univar                 digitspan               u1_male_age_nophys_memory_nophsyspec_digitspantotal.out       
u1              male     full                Univar                   memory                    univar                 digitspan               u1_male_full_nophys_memory_nophysspec_digitspantotal.out      
u1              female   ae                  Univar                   speed                     univar                 symbol                  u1_female_ae_noPhys_speed_noPhysSpec_digitsymbol.out          
u1              female   aeh                 Univar                   speed                     univar                 symbol                  u1_female_aeh_noPhys_speed_noPhysSpec_digitsymbol.out         
u1              female   aehplus             Univar                   speed                     univar                 symbol                  u1_female_aehplus_noPhys_speed_noPhysSpec_digitsymbol.out     
u1              female   a                   Univar                   speed                     univar                 symbol                  u1_female_age_noPhys_speed_noPhysSpec_digitsymbol.out         
u1              female   full                Univar                   speed                     univar                 symbol                  u1_female_full_noPhys_speed_noPhysSpec_digitsymbol.out        
u1              male     ae                  Univar                   speed                     univar                 symbol                  u1_male_ae_noPhys_speed_noPhysSpec_digitsymbol.out            
u1              male     aeh                 Univar                   speed                     univar                 symbol                  u1_male_aeh_noPhys_speed_noPhysSpec_digitsymbol.out           
u1              male     aehplus             Univar                   speed                     univar                 symbol                  u1_male_aehplus_noPhys_speed_noPhysSec_digitsymbol.out        
u1              male     a                   Univar                   speed                     univar                 symbol                  u1_male_age_noPhys_speed_noPhysSpec_digitsymbol.out           
u1              male     full                Univar                   speed                     univar                 symbol                  u1_male_full_noPhys_speed_noPhysSpec_digitsymbol.out          
u1              female   ae                  Univar                   fluency                   univar                 verbalfluency           u1_female_ae_nophys_fluency_nophysspec_fas.out                
u1              female   aeh                 Univar                   fluency                   univar                 verbalfluency           u1_female_aeh_nophys_fluency_nophysspec_fas.out               
u1              female   aehplus             Univar                   fluency                   univar                 verbalfluency           u1_female_aehplus_nophys_fluency_nophysspec_fas.out           
u1              female   a                   Univar                   fluency                   univar                 verbalfluency           u1_female_age_nophys_fluency_nophysspec_fas.out               
u1              female   full                Univar                   fluency                   univar                 verbalfluency           u1_female_full_nophys_fluency_nophysspec_fas.out              
u1              male     ae                  Univar                   fluency                   univar                 verbalfluency           u1_male_ae_nophys_fluency_nophysspec_fas.out                  
u1              male     aeh                 Univar                   fluency                   univar                 verbalfluency           u1_male_aeh_nophys_fluency_nophysspec_fas.out                 
u1              male     aehplus             Univar                   fluency                   univar                 verbalfluency           u1_male_aehplus_nophys_fluency_nophysspec_fas.out             
u1              male     a                   Univar                   fluency                   univar                 verbalfluency           u1_male_age_nophys_fluency_nophysspec_fas.out                 
u1              male     full                Univar                   fluency                   univar                 verbalfluency           u1_male_full_nophys_fluency_nophysspec_fas.out                
u1              female   ae                  Univar                   knowledge                 univar                 info                    u1_female_ae_nophys_knowledge_nophysspec_information.out      
u1              female   aeh                 Univar                   knowledge                 univar                 info                    u1_female_aeh_nophys_knowledge_nophysspec_information.out     
u1              female   aehplus             Univar                   knowledge                 univar                 info                    u1_female_aehplus_nophys_knowledge_nophysspec_information.out 
u1              female   a                   Univar                   knowledge                 univar                 info                    u1_female_age_nophys_knowledge_nophysspec_information.out     
u1              female   full                Univar                   knowledge                 univar                 info                    u1_female_full_nophys_knowledge_nophysspec_information.out    
u1              male     ae                  Univar                   knowledge                 univar                 info                    u1_male_ae_nophys_knowledge_nophysspec_information.out        
u1              male     aeh                 Univar                   knowledge                 univar                 info                    u1_male_aeh_nophys_knowledge_nophysspec_information.out       
u1              male     aehplus             Univar                   knowledge                 univar                 info                    u1_male_aehplus_nophys_knowledge_nophysspec_information.out   
u1              male     a                   Univar                   knowledge                 univar                 info                    u1_male_age_nophys_knowledge_nophysspec_information.out       
u1              male     full                Univar                   knowledge                 univar                 info                    u1_male_full_nophys_knowledge_nophysspec_information.out      
u1              female   ae                  Univar                   memory                    univar                 logicalmemory           u1_female_ae_nophys_memory_nophysspec_logicalmemory.out       
u1              female   aeh                 Univar                   memory                    univar                 logicalmemory           u1_female_aeh_nophys_memory_nophysspec_logicalmemory.out      
u1              female   aehplus             Univar                   memory                    univar                 logicalmemory           u1_female_aehplus_nophys_memory_nophysspec_logicalmemory.out  
u1              female   a                   Univar                   memory                    univar                 logicalmemory           u1_female_age_nophys_memory_nophysspec_logicalmemory.out      
u1              female   full                Univar                   memory                    univar                 logicalmemory           u1_female_full_nophys_memory_nophysspec_logicalmemory.out     
u1              male     ae                  Univar                   memory                    univar                 logicalmemory           u1_male_ae_nophys_memory_nophysspec_logicalmemory.out         
u1              male     aeh                 Univar                   memory                    univar                 logicalmemory           u1_male_aeh_nophys_memory_nophysspec_logicalmemory.out        
u1              male     aehplus             Univar                   memory                    univar                 logicalmemory           u1_male_aehplus_nophys_memory_nophysspec_logicalmemory.out    
u1              male     a                   Univar                   memory                    univar                 logicalmemory           u1_male_age_nophys_memory_nophysspec_logicalmemory.out        
u1              male     full                Univar                   memory                    univar                 logicalmemory           u1_male_full_nophys_memory_nophysspec_logicalmemory.out       
u1              female   ae                  Univar                   mental                    univar                 mmse                    u1_female_ae_nophys_global_nophysspec_mmse.out                
u1              female   aeh                 Univar                   mental                    univar                 mmse                    u1_female_aeh_nophys_global_nophysspec_mmse.out               
u1              female   aehplus             Univar                   mental                    univar                 mmse                    u1_female_aehplus_nophys_global_nophysspec_mmse.out           
u1              female   a                   Univar                   mental                    univar                 mmse                    u1_female_age_nophys_global_nophysspec_mmse.out               
u1              female   full                Univar                   mental                    univar                 mmse                    u1_female_full_nophys_global_nophysspec_mmse.out              
u1              male     ae                  Univar                   mental                    univar                 mmse                    u1_male_ae_nophys_global_nophysspec_mmse.out                  
u1              male     aeh                 Univar                   mental                    univar                 mmse                    u1_male_aeh_nophys_global_nophysspec_mmse.out                 
u1              male     aehplus             Univar                   mental                    univar                 mmse                    u1_male_aehplus_nophys_global_nophysspec_mmse.out             
u1              male     a                   Univar                   mental                    univar                 mmse                    u1_male_age_nophys_global_nophysspec_mmse.out                 
u1              male     full                Univar                   mental                    univar                 mmse                    u1_male_full_nophys_global_nophysspec_mmse.out                
u1              female   ae                  pulmonary                Univar                    pek                    univar                  u1_female_ae_pulmonary_noCog_pek_noCogSpec.out                
u1              female   aeh                 pulmonary                Univar                    pek                    univar                  u1_female_aeh_pulmonary_noCog_pek_noCogSpec.out               
u1              female   aehplus             pulmonary                Univar                    pek                    univar                  u1_female_aehplus_pulmonary_noCog_pek_noCogSpec.out           
u1              female   a                   pulmonary                Univar                    pek                    univar                  u1_female_age_pulmonary_noCog_pek_noCogSpec.out               
u1              female   full                pulmonary                Univar                    pek                    univar                  u1_female_full_pulmonary_noCog_pek_noCogSpec.out              
u1              male     ae                  pulmonary                Univar                    pek                    univar                  u1_male_ae_pulmonary_noCog_pek_noCogSpec.out                  
u1              male     aeh                 pulmonary                Univar                    pek                    univar                  u1_male_aeh_pulmonary_noCog_pek_noCogSpec.out                 
u1              male     aehplus             pulmonary                Univar                    pek                    univar                  u1_male_aehplus_pulmonary_noCog_pek_noCogSpec.out             
u1              male     a                   pulmonary                Univar                    pek                    univar                  u1_male_age_pulmonary_noCog_pek_noCogSpec.out                 
u1              male     full                pulmonary                Univar                    pek                    univar                  u1_male_full_pulmonary_noCog_pek_noCogSpec.out                
u1              female   ae                  muscle                   Univar                    grip                   univar                  u1_female_ae_muscle_nocog_grip_nocogspec.out                  
u1              female   aeh                 muscle                   Univar                    grip                   univar                  u1_female_aeh_muscle_nocog_grip_nocogspec.out                 
u1              female   aehplus             muscle                   Univar                    grip                   univar                  u1_female_aehplus_muscle_nocog_grip_nocogspec.out             
u1              female   a                   muscle                   Univar                    grip                   univar                  u1_female_age_muscle_nocog_grip_nocogspec.out                 
u1              female   full                muscle                   Univar                    grip                   univar                  u1_female_full_muscle_nocog_grip_nocogspec.out                
u1              male     ae                  muscle                   Univar                    grip                   univar                  u1_male_ae_muscle_nocog_grip_nocogspec.out                    
u1              male     aeh                 muscle                   Univar                    grip                   univar                  u1_male_aeh_muscle_nocog_grip_nocogspec.out                   
u1              male     aehplus             muscle                   Univar                    grip                   univar                  u1_male_aehplus_muscle_nocog_grip_nocogspec.out               
u1              male     a                   muscle                   Univar                    grip                   univar                  u1_male_age_muscle_nocog_grip_nocogspec.out                   
u1              male     full                muscle                   Univar                    grip                   univar                  u1_male_full_muscle_nocog_grip_nocogspec.out                  
u1              male     a                   Univar                   language                  univar                 bnt                     u1_male_age_nophys_fluency_nophysspec_nostonnaming.out        
u1              female   ae                  Univar                   executive                 univar                 trailsb                 u1_female_ae_noPhys_executive_noPhySpec_trailsb.out           
u1              female   aeh                 Univar                   executive                 univar                 trailsb                 u1_female_aeh_noPhys_executive_noPhysSpec_trailsb.out         
u1              female   aehplus             Univar                   executive                 univar                 trailsb                 u1_female_aehplus_noPhys_executive_noPhysSpec_trailsb.out     
u1              female   a                   Univar                   executive                 univar                 trailsb                 u1_female_age_noPhys_executive_noPhySpec_trailsb.out          
u1              female   full                Univar                   executive                 univar                 trailsb                 u1_female_full_noPhys_executive_noPhysSpec_trailsb.out        
u1              male     ae                  Univar                   executive                 univar                 trailsb                 u1_male_ae_noPhys_executive_noPhySpec_trailsb.out             
u1              male     aeh                 Univar                   executive                 univar                 trailsb                 u1_male_aeh_noPhys_executive_noPhysSpec_trailsb.out           
u1              male     a                   Univar                   executive                 univar                 trailsb                 u1_male_age_noPhys_executive_noPhySpec_trailsb.out            
u1              male     full                Univar                   executive                 univar                 trailsb                 u1_male_full_noPhys_executive_noPhysSpec_trailsb.out          
u1              female   ae                  Univar                   knowledge                 univar                 waisvocab               u1_female_ae_nophys_knowledge_nophysspec_waisvocab.out        
u1              female   aehplus             Univar                   knowledge                 univar                 waisvocab               u1_female_aehplus_nophys_knowledge_nophysSpec_waisvocab.out   
u1              female   a                   Univar                   knowledge                 univar                 waisvocab               u1_female_age_nophys_knowledge_nophysspec_waisvocab.out       
u1              female   full                Univar                   knowledge                 univar                 waisvocab               u1_female_full_nophys_knowledge_nophysspec_waisvocab.out      
u1              male     ae                  Univar                   knowledge                 univar                 waisvocab               u1_male_ae_nophys_knowledge_nophysspec_waisvocab.out          
u1              male     aeh                 Univar                   knowledge                 univar                 waisvocab               u1_male_aeh_nophys_knowledge_nophysspec_waisvocab.out         
u1              male     aehplus             Univar                   knowledge                 univar                 waisvocab               u1_male_aehplus_nophys_knowledge_nophysspec_waisvocab.out     
u1              male     full                Univar                   knowledge                 univar                 waisvocab               u1_male_full_nophys_knowledge_nophysspec_waisvocab.out        
u1              male     a                   Univar                   knowledge                 univar                 waisvocab               u1_male_age_nophys_knowlegde_nophysspec_waisvocab.out         
u1              female   aeh                 Univar                   knowledge                 univar                 waisvocab               u1_female_aeh_nophys_knowledge_nophysspec_wasivocab.out       

## u2


model<br/>tag   sex      predictor<br/>set   physical<br/>construct   cognitive<br/>construct   physical<br/>measure   cognitive<br/>measure   file name                                                     
--------------  -------  ------------------  -----------------------  ------------------------  ---------------------  ----------------------  --------------------------------------------------------------
u2              female   ae                  Univar                   reasoning                 univar                 block                   u2_female_ae_noPhys_reasoning_noPhysSpec_block.out            
u2              female   aeh                 Univar                   reasoning                 univar                 block                   u2_female_aeh_noPhys_reasoning_noPhysSpec_block.out           
u2              female   aehplus             Univar                   reasoning                 univar                 block                   u2_female_aehplus_noPhys_reasoning_noPhysSpec_block.out       
u2              female   a                   Univar                   reasoning                 univar                 block                   u2_female_age_noPhys_reasoning_noPhysSpec_block.out           
u2              female   full                Univar                   reasoning                 univar                 block                   u2_female_full_noPhys_reasoning_noPhysSec_block.out           
u2              male     ae                  Univar                   reasoning                 univar                 block                   u2_male_ae_noPhys_reasoning_noPhysSpec_block.out              
u2              male     aeh                 Univar                   reasoning                 univar                 block                   u2_male_aeh_noPhys_reasoning_noPhysSpec_block.out             
u2              male     aehplus             Univar                   reasoning                 univar                 block                   u2_male_aehplus_noPhys_reasoning_noPhysSpec_block.out         
u2              male     a                   Univar                   reasoning                 univar                 block                   u2_male_age_noPhys_reasoning_noPhysSpec_block.out             
u2              male     full                Univar                   reasoning                 univar                 block                   u2_male_full_noPhys_reasoning_noPhysSec_block.out             
u2              female   ae                  Univar                   language                  univar                 bnt                     u2_female_ae_nophys_fluency_nophysspec_bostonnaming.out       
u2              female   aeh                 Univar                   language                  univar                 bnt                     u2_female_aeh_nophys_fluency_nophysspec_bostonnaming.out      
u2              female   aehplus             Univar                   language                  univar                 bnt                     u2_female_aehplus_nophys_fluency_nophysspec_bostonnaming.out  
u2              female   a                   Univar                   language                  univar                 bnt                     u2_female_age_nophys_fluency_nophysspec_bostonnaming.out      
u2              female   full                Univar                   language                  univar                 bnt                     u2_female_full_nophys_fluency_nophysspec_bostonnaming.out     
u2              male     ae                  Univar                   language                  univar                 bnt                     u2_male_ae_nophys_fluency_nophysspec_bostonnaming.out         
u2              male     aeh                 Univar                   language                  univar                 bnt                     u2_male_aeh_nophys_fluency_nophysspec_bostonnaming.out        
u2              male     a                   Univar                   language                  univar                 bnt                     u2_male_age_nophys_fluency_nophysspec_bostonnaming.out        
u2              male     aehplus             Univar                   language                  univar                 bnt                     u2_male_aheplus_nophys_fluency_nophysspec_bostonnaming.out    
u2              male     full                Univar                   language                  univar                 bnt                     u2_male_full_nophys_fluency_nophysspec_bostonnaming.out       
u2              female   ae                  Univar                   fluency                   univar                 categories              u2_female_ae_nophys_fluency_nophysspec_category.out           
u2              female   aeh                 Univar                   fluency                   univar                 categories              u2_female_aeh_nophys_fluency_nophysspec_category.out          
u2              female   aehplus             Univar                   fluency                   univar                 categories              u2_female_aehplus_nophys_fluency_nophysspec_category.out      
u2              female   a                   Univar                   fluency                   univar                 categories              u2_female_age_nophys_fluency_nophysspec_category.out          
u2              female   full                Univar                   fluency                   univar                 categories              u2_female_full_nophys_fluency_nophysspec_category.out         
u2              male     ae                  Univar                   fluency                   univar                 categories              u2_male_ae_nophys_fluency_nophysspec_category.out             
u2              male     aeh                 Univar                   fluency                   univar                 categories              u2_male_aeh_nophys_fluency_nophysspec_category.out            
u2              male     aehplus             Univar                   fluency                   univar                 categories              u2_male_aehplus_nophys_fluency_nophysspec_category.out        
u2              male     a                   Univar                   fluency                   univar                 categories              u2_male_age_nophys_fluency_nophysspec_category.out            
u2              male     full                Univar                   fluency                   univar                 categories              u2_male_full_nophys_fluency_nophysspec_category.out           
u2              female   ae                  Univar                   memory                    univar                 digitspan               u2_female_ae_nophys_memory_nophysspec_digitspantotal.out      
u2              female   aeh                 Univar                   memory                    univar                 digitspan               u2_female_aeh_nophys_memory_nophysspec_digitspantotal.out     
u2              female   aehplus             Univar                   memory                    univar                 digitspan               u2_female_aehplus_nophys_memory_nophysspec_digitspantotal.out 
u2              female   a                   Univar                   memory                    univar                 digitspan               u2_female_age_nophys_memory_nophysspec_digitspantotal.out     
u2              female   full                Univar                   memory                    univar                 digitspan               u2_female_full_nophys_memory_nophysspec_digitspantotal.out    
u2              male     aeh                 Univar                   memory                    univar                 digitspan               u2_male_aeh_nophys_memory_nophysspec_digitspantotal.out       
u2              male     aehplus             Univar                   memory                    univar                 digitspan               u2_male_aehplus_nophys_memory_nophysspec_digitspantotal.out   
u2              male     a                   Univar                   memory                    univar                 digitspan               u2_male_age_nophys_memory_nophysspec_digitspantotal.out       
u2              male     full                Univar                   memory                    univar                 digitspan               u2_male_full_nophysspec_memory_nophysspec_digitspantotal.out  
u2              female   ae                  Univar                   speed                     univar                 symbol                  u2_female_ae_noPhys_speed_noPhysSpec_digitsymbol.out          
u2              female   aeh                 Univar                   speed                     univar                 symbol                  u2_female_aeh_noPhys_speed_noPhysSpec_digitsymbol.out         
u2              female   aehplus             Univar                   speed                     univar                 symbol                  u2_female_aehplus_noPhys_speed_noPhysSpec_digitsymbol.out     
u2              female   a                   Univar                   speed                     univar                 symbol                  u2_female_age_noPhys_speed_noPhysSpec_digitsymbol.out         
u2              female   full                Univar                   speed                     univar                 symbol                  u2_female_full_noPhys_speed_noPhysSpec_digitsymbol.out        
u2              male     ae                  Univar                   speed                     univar                 symbol                  u2_male_ae_noPhys_speed_noPhysSpec_digitsymbol.out            
u2              male     aeh                 Univar                   speed                     univar                 symbol                  u2_male_aeh_noPhys_speed_noPhysSpec_digitsymbol.out           
u2              male     aehplus             Univar                   speed                     univar                 symbol                  u2_male_aehplus_noPhys_speed_noPhysSpec_digitsymbol.out       
u2              male     a                   Univar                   speed                     univar                 symbol                  u2_male_age_noPhys_speed_noPhysSpec_digitsymbol.out           
u2              male     full                Univar                   speed                     univar                 symbol                  u2_male_full_noPhys_speed_noPhysSpec_digitsymbol.out          
u2              male     ae                  Univar                   memory                    univar                 digitspan               u2_male_ae_nophys_memory_nophysspec_disigtspantotal.out       
u2              female   ae                  Univar                   fluency                   univar                 verbalfluency           u2_female_ae_nophys_fluency_nophysspec_fas.out                
u2              female   aeh                 Univar                   fluency                   univar                 verbalfluency           u2_female_aeh_nophys_fluency_nophysspec_fas.out               
u2              female   aehplus             Univar                   fluency                   univar                 verbalfluency           u2_female_aehplus_nophys_fluency_nophysspec_fas.out           
u2              female   a                   Univar                   fluency                   univar                 verbalfluency           u2_female_age_nophys_fluency_nophysspec_fas.out               
u2              female   full                Univar                   fluency                   univar                 verbalfluency           u2_female_full_nophys_fluency_nophysspec_fas.out              
u2              male     ae                  Univar                   fluency                   univar                 verbalfluency           u2_male_ae_nophys_fluency_nophysspec_fas.out                  
u2              male     aeh                 Univar                   fluency                   univar                 verbalfluency           u2_male_aeh_nophys_fluency_nophysspec_fas.out                 
u2              male     aehplus             Univar                   fluency                   univar                 verbalfluency           u2_male_aehplus_nophys_fluency_nophysspec_fas.out             
u2              male     a                   Univar                   fluency                   univar                 verbalfluency           u2_male_age_nophys_fluency_nophysspec_fas.out                 
u2              male     full                Univar                   fluency                   univar                 verbalfluency           u2_male_full_nophys_fluency_nophysspec_fas.out                
u2              female   a                   Univar                   knowledge                 univar                 info                    u2_female_age_nophys_knoledge_nophysspec_information.out      
u2              female   ae                  Univar                   knowledge                 univar                 info                    u2_female_ae_nophys_knowledge_nophysspec_information.out      
u2              female   aeh                 Univar                   knowledge                 univar                 info                    u2_female_aeh_nophys_knowledge_nophysspec_information.out     
u2              female   aehplus             Univar                   knowledge                 univar                 info                    u2_female_aehplus_nophys_knowledge_nophysspec_information.out 
u2              female   full                Univar                   knowledge                 univar                 info                    u2_female_full_nophys_knowledge_nophysspec_information.out    
u2              male     ae                  Univar                   knowledge                 univar                 info                    u2_male_ae_nophys_knowledge_nophysspec_information.out        
u2              male     aeh                 Univar                   knowledge                 univar                 info                    u2_male_aeh_nophys_knowledge_nophysspec_information.out       
u2              male     aehplus             Univar                   knowledge                 univar                 info                    u2_male_aehplus_nophys_knowledge_nophysspec_information.out   
u2              male     a                   Univar                   knowledge                 univar                 info                    u2_male_age_nophys_knowledge_nophysspec_information.out       
u2              male     full                Univar                   knowledge                 univar                 info                    u2_male_full_nophys_knowledge_nophysspec_information.out      
u2              female   ae                  Univar                   memory                    univar                 logicalmemory           u2_female_ae_nophys_memory_nophysspec_logicalmemory.out       
u2              female   aeh                 Univar                   memory                    univar                 logicalmemory           u2_female_aeh_nophys_memory_nophysspec_logicalmemory.out      
u2              female   aehplus             Univar                   memory                    univar                 logicalmemory           u2_female_aehplus_nophys_memory_nophysspec_logicalmemory.out  
u2              female   a                   Univar                   memory                    univar                 logicalmemory           u2_female_age_nophys_memory_nophysspec_logicalmemory.out      
u2              female   full                Univar                   memory                    univar                 logicalmemory           u2_female_full_nophys_memory_nophysspec_logicalmemory.out     
u2              male     ae                  Univar                   memory                    univar                 logicalmemory           u2_male_ae_nophys_memory_nophysspec_logicalmemory.out         
u2              male     aeh                 Univar                   memory                    univar                 logicalmemory           u2_male_aeh_nophys_memory_nophysspec_logicalmemory.out        
u2              male     aehplus             Univar                   memory                    univar                 logicalmemory           u2_male_aehplus_nophys_memory_nophysspec_logicalmemory.out    
u2              male     a                   Univar                   memory                    univar                 logicalmemory           u2_male_age_nophys_memory_nophysspec_logicalmemory.out        
u2              male     full                Univar                   memory                    univar                 logicalmemory           u2_male_full_nophys_memory_nophysspec_logicalmemory.out       
u2              female   ae                  Univar                   mental                    univar                 mmse                    u2_female_ae_nophys_global_nophysspec_mmse.out                
u2              female   aeh                 Univar                   mental                    univar                 mmse                    u2_female_aeh_nophys_global_nophysspec_mmse.out               
u2              female   aehplus             Univar                   mental                    univar                 mmse                    u2_female_aehplus_nophys_global_nophysspec_mmse.out           
u2              female   a                   Univar                   mental                    univar                 mmse                    u2_female_age_nophys_global_nophysspec_mmse.out               
u2              female   full                Univar                   mental                    univar                 mmse                    u2_female_full_nophys_global_nophysspec_mmse.out              
u2              male     ae                  Univar                   mental                    univar                 mmse                    u2_male_ae_nophys_global_nophysspec_mmse.out                  
u2              male     aeh                 Univar                   mental                    univar                 mmse                    u2_male_aeh_nophys_global_nophysspec_mmse.out                 
u2              male     aehplus             Univar                   mental                    univar                 mmse                    u2_male_aehplus_nophys_global_nophysspec_mmse.out             
u2              male     a                   Univar                   mental                    univar                 mmse                    u2_male_age_nophys_global_nophysspec_mmse.out                 
u2              male     full                Univar                   mental                    univar                 mmse                    u2_male_full_nophys_global_nophysspec_mmse.out                
u2              female   ae                  pulmonary                Univar                    pek                    univar                  u2_female_ae_pulmonary_noCog_pek_noCogSpec.out                
u2              female   aeh                 pulmonary                Univar                    pek                    univar                  u2_female_aeh_pulmonary_noCog_pek_noCogSpec.out               
u2              female   aehplus             pulmonary                Univar                    pek                    univar                  u2_female_aehplus_pulmonary_noCog_pek_noCogSpec.out           
u2              female   a                   pulmonary                Univar                    pek                    univar                  u2_female_age_pulmonary_noCog_pek_noCogSpec.out               
u2              female   full                pulmonary                Univar                    pek                    univar                  u2_female_full_pulmonary_noCog_pek_noCogSpec.out              
u2              male     ae                  pulmonary                Univar                    pek                    univar                  u2_male_ae_pulmonary_noCog_pek_noCogSpec.out                  
u2              male     aeh                 pulmonary                Univar                    pek                    univar                  u2_male_aeh_pulmonary_noCog_pek_noCogSpec.out                 
u2              male     aehplus             pulmonary                Univar                    pek                    univar                  u2_male_aehplus_pulmonary_noCog_pek_noCogSpec.out             
u2              male     a                   pulmonary                Univar                    pek                    univar                  u2_male_age_pulmonary_noCog_pek_noCogSpec.out                 
u2              male     full                pulmonary                Univar                    pek                    univar                  u2_male_full_pulmonary_noCog_pek_noCogSpec.out                
u2              female   ae                  muscle                   Univar                    grip                   univar                  u2_female_ae_muscle_nocog_grip_nocogspec.out                  
u2              female   aeh                 muscle                   Univar                    grip                   univar                  u2_female_aeh_muscle_nocog_grip_nocogspec.out                 
u2              female   aehplus             muscle                   Univar                    grip                   univar                  u2_female_aehplus_muscle_nocog_grip_nocogspec.out             
u2              female   a                   muscle                   Univar                    grip                   univar                  u2_female_age_muscle_nocog_grip_nocogspec.out                 
u2              female   full                muscle                   Univar                    grip                   univar                  u2_female_full_muscle_nocog_grip_nocogspec.out                
u2              male     ae                  muscle                   Univar                    grip                   univar                  u2_male_ae_muscle_nocog_grip_nocogspec.out                    
u2              male     aeh                 muscle                   Univar                    grip                   univar                  u2_male_aeh_muscle_nocog_grip_nocogspec.out                   
u2              male     aehplus             muscle                   Univar                    grip                   univar                  u2_male_aehplus_muscle_nocog_grip_nocogspec.out               
u2              male     a                   muscle                   Univar                    grip                   univar                  u2_male_age_muscle_nocog_grip_nocogspec.out                   
u2              male     full                muscle                   Univar                    grip                   univar                  u2_male_full_muscle_nocog_grip_nocogspec.out                  
u2              male     a                   pulmonary                executive                 pek                    trailsb                 u2_male_age_pulmonary_executive_pek_trailsB.out               
u2              female   ae                  Univar                   executive                 univar                 trailsb                 u2_female_ae_noPhys_executive_noPhySpec_trailsb.out           
u2              female   aeh                 Univar                   executive                 univar                 trailsb                 u2_female_aeh_noPhys_executive_noPhysSpec_trailsb.out         
u2              female   aehplus             Univar                   executive                 univar                 trailsb                 u2_female_aehplus_noPhys_executive_noPhysSpec_trailsb.out     
u2              female   a                   Univar                   executive                 univar                 trailsb                 u2_female_age_noPhys_executive_noPhySpec_trailsb.out          
u2              female   full                Univar                   executive                 univar                 trailsb                 u2_female_full_noPhys_executive_noPhysSpec_trailsb.out        
u2              male     ae                  Univar                   executive                 univar                 trailsb                 u2_male_ae_noPhys_executive_noPhySpec_trailsb.out             
u2              male     aeh                 Univar                   executive                 univar                 trailsb                 u2_male_aeh_noPhys_executive_noPhysSpec_trailsb.out           
u2              male     aehplus             Univar                   executive                 univar                 trailsb                 u2_male_aehplus_noPhys_executive_noPhysSpec_trailsb.out       
u2              male     a                   Univar                   executive                 univar                 trailsb                 u2_male_age_noPhys_executive_noPhySpec_trailsb.out            
u2              male     full                Univar                   executive                 univar                 trailsb                 u2_male_full_noPhys_executive_noPhysSpec_trailsb.out          
u2              female   ae                  Univar                   knowledge                 univar                 waisvocab               u2_female_ae_nophys_knowledge_nophysspec_waisvocab.out        
u2              female   aeh                 Univar                   knowledge                 univar                 waisvocab               u2_female_aeh_nophys_knowledge_nophysspec_waisvocab.out       
u2              female   a                   Univar                   knowledge                 univar                 waisvocab               u2_female_age_nophys_knowledge_nophysspec_waisvocab.out       
u2              female   full                Univar                   knowledge                 univar                 waisvocab               u2_female_full_nophys_knowledge_nophysspec_waisvocab.out      
u2              male     ae                  Univar                   knowledge                 univar                 waisvocab               u2_male_ae_nophys_knowledge_nophysspec_waisvocab.out          
u2              male     aeh                 Univar                   knowledge                 univar                 waisvocab               u2_male_aeh_nophys_knowledge_nophysSpec_waisvocab.out         
u2              male     aehplus             Univar                   knowledge                 univar                 waisvocab               u2_male_aehplus_nophys_knowledge_nophysspec_waisvocab.out     
u2              male     a                   Univar                   knowledge                 univar                 waisvocab               u2_male_age_nophys_knowledge_nophysspec_waisvocab.out         
u2              male     full                Univar                   knowledge                 univar                 waisvocab               u2_male_full_nophys_knowledge_nophysspec_waisvocab.out        
u2              female   aehplus             Univar                   knowledge                 univar                 waisvocab               u2_female_aehplus_nophys_knowledge_nophysSpec_wasivocab.out   


# Session Information
For the sake of documentation and reproducibility, the current report was rendered on a system using the following software.


```
Report rendered by koval_000 at 2015-07-13, 05:32 -0700
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
