# SATSA: Model catalog



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
[1] "satsa"
```

has provided us with the total number of 

```
152
```
models, using univariate and bivariate specifications:

```

 b1 
152 
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
152
```
models, which output files contains all 7 components. We have corrected the obvious typos, but some names (of constructs and measures) require your attention. 

# Simple Counts
In this section, **model specification (columns)** are cross-tabulated with **constructs or measures (rows)**, displaying the number of valid models in each category. 

## Physical constructs


```
           
            b1 
  muscle    46 
  pulmonary 106
```


## Physical measures


```
      
       b1 
  fev  106
  grip 46 
```

## Cognitive constructs


```
              
               b1
  executive    10
  knowledge    54
  memory       20
  mental       18
  reasoning    10
  speed        30
  visuospatial 10
```


## Cognitive measures


```
               
                b1
  analogies     18
  block         10
  digitsback    10
  digitsforward 10
  figureid      12
  figurememory  10
  info          18
  mmse          18
  rotations     10
  symbol        18
  synonyms      18
```
</br></br></br>

# BIVARIATE MODELS

In this section, **constructs (columns)** are cross-tabulated with  **measures (rows)** that opeationalize them in the models. Each non-blank element in a column indicates a unique **measure (row)** of the **construct (column)**. The numeric value shows how many different versions of this model used this specific pair of construct and measure: model may differ on the subgroup (male, female), and the set of covariates (empty, a, ae, aeh, aehplus, full).


## Physical 
Physical **constructs** (columns) by physical **measures** (rows) in BIVARIATE models

```
      
       muscle pulmonary
  fev  .      106      
  grip 46     .        
```

## Cognitive 
Cognitive **constructs** (columns) by cognitive **measures** (rows) in BIVARIATE models

```
               
                executive knowledge memory mental reasoning speed visuospatial
  analogies     .         18        .      .      .         .     .           
  block         .         .         .      .      10        .     .           
  digitsback    10        .         .      .      .         .     .           
  digitsforward .         .         10     .      .         .     .           
  figureid      .         .         .      .      .         12    .           
  figurememory  .         .         10     .      .         .     .           
  info          .         18        .      .      .         .     .           
  mmse          .         .         .      18     .         .     .           
  rotations     .         .         .      .      .         .     10          
  symbol        .         .         .      .      .         18    .           
  synonyms      .         18        .      .      .         .     .           
```


## Constructs
Number of models with the following **physical constructs** (columns) and  **cognitive constructs** (rows)


```
              
               muscle pulmonary
  executive    .      10       
  knowledge    24     30       
  memory       .      20       
  mental       8      10       
  reasoning    .      10       
  speed        14     16       
  visuospatial .      10       
```

## Phys.Constructs
Number of models with the following  **physical constructs** (columns) and  **cognitive measures** (rows)

```
               
                muscle pulmonary
  analogies     8      10       
  block         .      10       
  digitsback    .      10       
  digitsforward .      10       
  figureid      6      6        
  figurememory  .      10       
  info          8      10       
  mmse          8      10       
  rotations     .      10       
  symbol        8      10       
  synonyms      8      10       
```

## Cog.Constructs
Number of models with the following  **physical measure** (columns) and  **cognitive constructs** (rows)

```
              
               fev grip
  executive    10  .   
  knowledge    30  24  
  memory       20  .   
  mental       10  8   
  reasoning    10  .   
  speed        16  14  
  visuospatial 10  .   
```

## Measures
Number of models with the following  **physical measures** (columns) and  **cognitive measures** (rows)

```
               
                fev grip
  analogies     10  8   
  block         10  .   
  digitsback    10  .   
  digitsforward 10  .   
  figureid      6   6   
  figurememory  10  .   
  info          10  8   
  mmse          10  8   
  rotations     10  .   
  symbol        10  8   
  synonyms      10  8   
```
</br></br></br>


# UNIVARIATE MODELS

In this section, **constructs (columns)** are cross-tabulated with  **measures (rows)** that opeationalize them in the models. Each non-blank element in a column indicates a unique **measure (row)** of the **construct (column)**. The numeric value counts the different versions of the model (sex, covariates) that used this specific pair of construct and measure. 

## Physical 
Physical constructs (columns) by physical measures (rows) in UNIVARIATE models

```
Empty category
```

## Cognitive
Cognitive constructs (columns) by cognitive measures (rows) in UNIVARIATE models

```
Empty category
```
</br></br></br>

# List of models
## b1


model<br/>tag   sex      predictor<br/>set   physical<br/>construct   cognitive<br/>construct   physical<br/>measure   cognitive<br/>measure   file name                                                  
--------------  -------  ------------------  -----------------------  ------------------------  ---------------------  ----------------------  -----------------------------------------------------------
b1              female   ae                  muscle                   global                    grip                   mmse                    b1_female_ae_muscle_global_grip_mmse.out                   
b1              female   aeh                 muscle                   global                    grip                   mmse                    b1_female_aeh_muscle_global_grip_mmse.out                  
b1              female   aehplus             muscle                   global                    grip                   mmse                    b1_female_aehplus_muscle_global_grip_mmse.out              
b1              female   age                 muscle                   global                    grip                   mmse                    b1_female_age_muscle_global_grip_mmse.out                  
b1              male     ae                  muscle                   global                    grip                   mmse                    b1_male_ae_muscle_global_grip_mmse.out                     
b1              male     aeh                 muscle                   global                    grip                   mmse                    b1_male_aeh_muscle_global_grip_mmse.out                    
b1              male     aehplus             muscle                   global                    grip                   mmse                    b1_male_aehplus_muscle_global_grip_mmse.out                
b1              male     age                 muscle                   global                    grip                   mmse                    b1_male_age_muscle_global_grip_mmse.out                    
b1              female   ae                  muscle                   knowledge                 grip                   anal                    b1_female_ae_muscle_knowledge_grip_anal.out                
b1              female   ae                  muscle                   knowledge                 grip                   info                    b1_female_ae_muscle_knowledge_grip_info.out                
b1              female   ae                  muscle                   knowledge                 grip                   synon                   b1_female_ae_muscle_knowledge_grip_synon.out               
b1              female   aeh                 muscle                   knowledge                 grip                   anal                    b1_female_aeh_muscle_knowledge_grip_anal.out               
b1              female   aeh                 muscle                   knowledge                 grip                   info                    b1_female_aeh_muscle_knowledge_grip_info.out               
b1              female   aeh                 muscle                   knowledge                 grip                   synon                   b1_female_aeh_muscle_knowledge_grip_synon.out              
b1              female   aehplus             muscle                   knowledge                 grip                   anal                    b1_female_aehplus_muscle_knowledge_grip_anal.out           
b1              female   aehplus             muscle                   knowledge                 grip                   info                    b1_female_aehplus_muscle_knowledge_grip_info.out           
b1              female   aehplus             muscle                   knowledge                 grip                   synon                   b1_female_aehplus_muscle_knowledge_grip_synon.out          
b1              female   age                 muscle                   knowledge                 grip                   anal                    b1_female_age_muscle_knowledge_grip_anal.out               
b1              female   age                 muscle                   knowledge                 grip                   info                    b1_female_age_muscle_knowledge_grip_info.out               
b1              female   age                 muscle                   knowledge                 grip                   synon                   b1_female_age_muscle_knowledge_grip_synon.out              
b1              male     ae                  muscle                   knowledge                 grip                   anal                    b1_male_ae_muscle_knowledge_grip_anal.out                  
b1              male     ae                  muscle                   knowledge                 grip                   info                    b1_male_ae_muscle_knowledge_grip_info.out                  
b1              male     ae                  muscle                   knowledge                 grip                   synon                   b1_male_ae_muscle_knowledge_grip_synon.out                 
b1              male     aeh                 muscle                   knowledge                 grip                   anal                    b1_male_aeh_muscle_knowledge_grip_anal.out                 
b1              male     aeh                 muscle                   knowledge                 grip                   info                    b1_male_aeh_muscle_knowledge_grip_info.out                 
b1              male     aeh                 muscle                   knowledge                 grip                   synon                   b1_male_aeh_muscle_knowledge_grip_synon.out                
b1              male     aehplus             muscle                   knowledge                 grip                   anal                    b1_male_aehplus_muscle_knowledge_grip_anal.out             
b1              male     aehplus             muscle                   knowledge                 grip                   info                    b1_male_aehplus_muscle_knowledge_grip_info.out             
b1              male     aehplus             muscle                   knowledge                 grip                   synon                   b1_male_aehplus_muscle_knowledge_grip_synon.out            
b1              male     age                 muscle                   knowledge                 grip                   anal                    b1_male_age_muscle_knowledge_grip_anal.out                 
b1              male     age                 muscle                   knowledge                 grip                   info                    b1_male_age_muscle_knowledge_grip_info.out                 
b1              male     age                 muscle                   knowledge                 grip                   synon                   b1_male_age_muscle_knowledge_grip_synon.out                
b1              female   ae                  muscle                   speed                     grip                   figid                   b1_female_ae_muscle_speed_grip_figid.out                   
b1              female   ae                  muscle                   speed                     grip                   symbol                  b1_female_ae_muscle_speed_grip_symbol.out                  
b1              female   aeh                 muscle                   speed                     grip                   figid                   b1_female_aeh_muscle_speed_grip_figid.out                  
b1              female   aeh                 muscle                   speed                     grip                   symbol                  b1_female_aeh_muscle_speed_grip_symbol.out                 
b1              female   aehplus             muscle                   speed                     grip                   symbol                  b1_female_aehplus_muscle_speed_grip_symbol.out             
b1              female   age                 muscle                   speed                     grip                   figid                   b1_female_age_muscle_speed_grip_figid.out                  
b1              female   age                 muscle                   speed                     grip                   symbol                  b1_female_age_muscle_speed_grip_symbol.out                 
b1              male     ae                  muscle                   speed                     grip                   figid                   b1_male_ae_muscle_speed_grip_figid.out                     
b1              male     ae                  muscle                   speed                     grip                   symbol                  b1_male_ae_muscle_speed_grip_symbol.out                    
b1              male     aeh                 muscle                   speed                     grip                   figid                   b1_male_aeh_muscle_speed_grip_figid.out                    
b1              male     aeh                 muscle                   speed                     grip                   symbol                  b1_male_aeh_muscle_speed_grip_symbol.out                   
b1              male     aehplus             muscle                   speed                     grip                   symbol                  b1_male_aehplus_muscle_speed_grip_symbol.out               
b1              male     age                 muscle                   speed                     grip                   figid                   b1_male_age_muscle_speed_grip_figid.out                    
b1              male     age                 muscle                   speed                     grip                   symbol                  b1_male_age_muscle_speed_grip_symbol.out                   
b1              female   0                   pulmonary                executive                 fev                    digitsback              b1_female_0_pulmonary_executive_fev_digitsback.out         
b1              female   a                   pulmonary                executive                 fev                    digitsback              b1_female_a_pulmonary_executive_fev_digitsback.out         
b1              female   ae                  pulmonary                executive                 fev                    digitsback              b1_female_ae_pulmonary_executive_fev_digitsback.out        
b1              female   aeh                 pulmonary                executive                 fev                    digitsback              b1_female_aeh_pulmonary_executive_fev_digitsback.out       
b1              female   aehplus             pulmonary                executive                 fev                    digitsback              b1_female_aehplus_pulmonary_executive_fev_digitsback.out   
b1              male     0                   pulmonary                executive                 fev                    digitsback              b1_male_0_pulmonary_executive_fev_digitsback.out           
b1              male     a                   pulmonary                executive                 fev                    digitsback              b1_male_a_pulmonary_executive_fev_digitsback.out           
b1              male     ae                  pulmonary                executive                 fev                    digitsback              b1_male_ae_pulmonary_executive_fev_digitsback.out          
b1              male     aeh                 pulmonary                executive                 fev                    digitsback              b1_male_aeh_pulmonary_executive_fev_digitsback.out         
b1              male     aehplus             pulmonary                executive                 fev                    digitsback              b1_male_aehplus_pulmonary_executive_fev_digitsback.out     
b1              female   ae                  pulmonary                global                    fev                    mmse                    b1_female_ae_pulmonary_global_fev_mmse.out                 
b1              female   aeh                 pulmonary                global                    fev                    mmse                    b1_female_aeh_pulmonary_global_fev_mmse.out                
b1              female   aehplus             pulmonary                global                    fev                    mmse                    b1_female_aehplus_pulmonary_global_fev_mmse.out            
b1              female   age                 pulmonary                global                    fev                    mmse                    b1_female_age_pulmonary_global_fev_mmse.out                
b1              male     ae                  pulmonary                global                    fev                    mmse                    b1_male_ae_pulmonary_global_fev_mmse.out                   
b1              male     aeh                 pulmonary                global                    fev                    mmse                    b1_male_aeh_pulmonary_global_fev_mmse.out                  
b1              male     aehplus             pulmonary                global                    fev                    mmse                    b1_male_aehplus_pulmonary_global_fev_mmse.out              
b1              male     age                 pulmonary                global                    fev                    mmse                    b1_male_age_pulmonary_global_fev_mmse.out                  
b1              female   0                   pulmonary                knowledge                 fev                    analogies               b1_female_0_pulmonary_knowledge_fev_analogies.out          
b1              female   0                   pulmonary                knowledge                 fev                    info                    b1_female_0_pulmonary_knowledge_fev_info.out               
b1              female   0                   pulmonary                knowledge                 fev                    synonyms                b1_female_0_pulmonary_knowledge_fev_synonyms.out           
b1              female   ae                  pulmonary                knowledge                 fev                    anal                    b1_female_ae_pulmonary_knowledge_fev_anal.out              
b1              female   ae                  pulmonary                knowledge                 fev                    info                    b1_female_ae_pulmonary_knowledge_fev_info.out              
b1              female   ae                  pulmonary                knowledge                 fev                    synon                   b1_female_ae_pulmonary_knowledge_fev_synon.out             
b1              female   aeh                 pulmonary                knowledge                 fev                    anal                    b1_female_aeh_pulmonary_knowledge_fev_anal.out             
b1              female   aeh                 pulmonary                knowledge                 fev                    info                    b1_female_aeh_pulmonary_knowledge_fev_info.out             
b1              female   aeh                 pulmonary                knowledge                 fev                    synon                   b1_female_aeh_pulmonary_knowledge_fev_synon.out            
b1              female   aehplus             pulmonary                knowledge                 fev                    anal                    b1_female_aehplus_pulmonary_knowledge_fev_anal.out         
b1              female   aehplus             pulmonary                knowledge                 fev                    info                    b1_female_aehplus_pulmonary_knowledge_fev_info.out         
b1              female   aehplus             pulmonary                knowledge                 fev                    synon                   b1_female_aehplus_pulmonary_knowledge_fev_synon.out        
b1              female   age                 pulmonary                knowledge                 fev                    anal                    b1_female_age_pulmonary_knowledge_fev_anal.out             
b1              female   age                 pulmonary                knowledge                 fev                    info                    b1_female_age_pulmonary_knowledge_fev_info.out             
b1              female   age                 pulmonary                knowledge                 fev                    synon                   b1_female_age_pulmonary_knowledge_fev_synon.out            
b1              male     0                   pulmonary                knowledge                 fev                    analogies               b1_male_0_pulmonary_knowledge_fev_analogies.out            
b1              male     0                   pulmonary                knowledge                 fev                    info                    b1_male_0_pulmonary_knowledge_fev_info.out                 
b1              male     0                   pulmonary                knowledge                 fev                    synonyms                b1_male_0_pulmonary_knowledge_fev_synonyms.out             
b1              male     ae                  pulmonary                knowledge                 fev                    anal                    b1_male_ae_pulmonary_knowledge_fev_anal.out                
b1              male     ae                  pulmonary                knowledge                 fev                    info                    b1_male_ae_pulmonary_knowledge_fev_info.out                
b1              male     ae                  pulmonary                knowledge                 fev                    synon                   b1_male_ae_pulmonary_knowledge_fev_synon.out               
b1              male     aeh                 pulmonary                knowledge                 fev                    anal                    b1_male_aeh_pulmonary_knowledge_fev_anal.out               
b1              male     aeh                 pulmonary                knowledge                 fev                    info                    b1_male_aeh_pulmonary_knowledge_fev_info.out               
b1              male     aeh                 pulmonary                knowledge                 fev                    synon                   b1_male_aeh_pulmonary_knowledge_fev_synon.out              
b1              male     aehplus             pulmonary                knowledge                 fev                    anal                    b1_male_aehplus_pulmonary_knowledge_fev_anal.out           
b1              male     aehplus             pulmonary                knowledge                 fev                    info                    b1_male_aehplus_pulmonary_knowledge_fev_info.out           
b1              male     aehplus             pulmonary                knowledge                 fev                    synon                   b1_male_aehplus_pulmonary_knowledge_fev_synon.out          
b1              male     age                 pulmonary                knowledge                 fev                    anal                    b1_male_age_pulmonary_knowledge_fev_anal.out               
b1              male     age                 pulmonary                knowledge                 fev                    info                    b1_male_age_pulmonary_knowledge_fev_info.out               
b1              male     age                 pulmonary                knowledge                 fev                    synon                   b1_male_age_pulmonary_knowledge_fev_synon.out              
b1              female   0                   pulmonary                memory                    fev                    digitsforward           b1_female_0_pulmonary_memory_fev_digitsforward.out         
b1              female   0                   pulmonary                memory                    fev                    figurememory            b1_female_0_pulmonary_memory_fev_figurememory.out          
b1              female   a                   pulmonary                memory                    fev                    digitsforward           b1_female_a_pulmonary_memory_fev_digitsforward.out         
b1              female   a                   pulmonary                memory                    fev                    figurememory            b1_female_a_pulmonary_memory_fev_figurememory.out          
b1              female   ae                  pulmonary                memory                    fev                    digitsforward           b1_female_ae_pulmonary_memory_fev_digitsforward.out        
b1              female   ae                  pulmonary                memory                    fev                    figurememory            b1_female_ae_pulmonary_memory_fev_figurememory.out         
b1              female   aeh                 pulmonary                memory                    fev                    digitsforward           b1_female_aeh_pulmonary_memory_fev_digitsforward.out       
b1              female   aeh                 pulmonary                memory                    fev                    figurememory            b1_female_aeh_pulmonary_memory_fev_figurememory.out        
b1              female   aehplus             pulmonary                memory                    fev                    digitsforward           b1_female_aehplus_pulmonary_memory_fev_digitsforward.out   
b1              female   aehplus             pulmonary                memory                    fev                    figurememory            b1_female_aehplus_pulmonary_memory_fev_figurememory.out    
b1              male     0                   pulmonary                memory                    fev                    digitsforward           b1_male_0_pulmonary_memory_fev_digitsforward.out           
b1              male     0                   pulmonary                memory                    fev                    figurememory            b1_male_0_pulmonary_memory_fev_figurememory.out            
b1              male     a                   pulmonary                memory                    fev                    digitsforward           b1_male_a_pulmonary_memory_fev_digitsforward.out           
b1              male     a                   pulmonary                memory                    fev                    figurememory            b1_male_a_pulmonary_memory_fev_figurememory.out            
b1              male     ae                  pulmonary                memory                    fev                    digitsforward           b1_male_ae_pulmonary_memory_fev_digitsforward.out          
b1              male     ae                  pulmonary                memory                    fev                    figurememory            b1_male_ae_pulmonary_memory_fev_figurememory.out           
b1              male     aeh                 pulmonary                memory                    fev                    digitsforward           b1_male_aeh_pulmonary_memory_fev_digitsforward.out         
b1              male     aeh                 pulmonary                memory                    fev                    figurememory            b1_male_aeh_pulmonary_memory_fev_figurememory.out          
b1              male     aehplus             pulmonary                memory                    fev                    digitsforward           b1_male_aehplus_pulmonary_memory_fev_digitsforward.out     
b1              male     aehplus             pulmonary                memory                    fev                    figurememory            b1_male_aehplus_pulmonary_memory_fev_figurememory.out      
b1              female   0                   pulmonary                mental                    fev                    mmse                    b1_female_0_pulmonary_mental_fev_mmse.out                  
b1              male     0                   pulmonary                mental                    fev                    mmse                    b1_male_0_pulmonary_mental_fev_mmse.out                    
b1              female   0                   pulmonary                reasoning                 fev                    block                   b1_female_0_pulmonary_reasoning_fev_block.out              
b1              female   a                   pulmonary                reasoning                 fev                    block                   b1_female_a_pulmonary_reasoning_fev_block.out              
b1              female   ae                  pulmonary                reasoning                 fev                    block                   b1_female_ae_pulmonary_reasoning_fev_block.out             
b1              female   aeh                 pulmonary                reasoning                 fev                    block                   b1_female_aeh_pulmonary_reasoning_fev_block.out            
b1              female   aehplus             pulmonary                reasoning                 fev                    block                   b1_female_aehplus_pulmonary_reasoning_fev_block.out        
b1              male     0                   pulmonary                reasoning                 fev                    block                   b1_male_0_pulmonary_reasoning_fev_block.out                
b1              male     a                   pulmonary                reasoning                 fev                    block                   b1_male_a_pulmonary_reasoning_fev_block.out                
b1              male     ae                  pulmonary                reasoning                 fev                    block                   b1_male_ae_pulmonary_reasoning_fev_block.out               
b1              male     aeh                 pulmonary                reasoning                 fev                    block                   b1_male_aeh_pulmonary_reasoning_fev_block.out              
b1              male     aehplus             pulmonary                reasoning                 fev                    block                   b1_male_aehplus_pulmonary_reasoning_fev_block.out          
b1              female   0                   pulmonary                speed                     fev                    symbol                  b1_female_0_pulmonary_speed_fev_symbol.out                 
b1              female   ae                  pulmonary                speed                     fev                    figid                   b1_female_ae_pulmonary_speed_fev_figid.out                 
b1              female   ae                  pulmonary                speed                     fev                    symbol                  b1_female_ae_pulmonary_speed_fev_symbol.out                
b1              female   aeh                 pulmonary                speed                     fev                    figid                   b1_female_aeh_pulmonary_speed_fev_figid.out                
b1              female   aeh                 pulmonary                speed                     fev                    symbol                  b1_female_aeh_pulmonary_speed_fev_symbol.out               
b1              female   aehplus             pulmonary                speed                     fev                    symbol                  b1_female_aehplus_pulmonary_speed_fev_symbol.out           
b1              female   age                 pulmonary                speed                     fev                    figid                   b1_female_age_pulmonary_speed_fev_figid.out                
b1              female   age                 pulmonary                speed                     fev                    symbol                  b1_female_age_pulmonary_speed_fev_symbol.out               
b1              male     0                   pulmonary                speed                     fev                    symbol                  b1_male_0_pulmonary_speed_fev_symbol.out                   
b1              male     ae                  pulmonary                speed                     fev                    figid                   b1_male_ae_pulmonary_speed_fev_figid.out                   
b1              male     ae                  pulmonary                speed                     fev                    symbol                  b1_male_ae_pulmonary_speed_fev_symbol.out                  
b1              male     aeh                 pulmonary                speed                     fev                    figid                   b1_male_aeh_pulmonary_speed_fev_figid.out                  
b1              male     aeh                 pulmonary                speed                     fev                    symbol                  b1_male_aeh_pulmonary_speed_fev_symbol.out                 
b1              male     aehplus             pulmonary                speed                     fev                    symbol                  b1_male_aehplus_pulmonary_speed_fev_symbol.out             
b1              male     age                 pulmonary                speed                     fev                    figid                   b1_male_age_pulmonary_speed_fev_figid.out                  
b1              female   0                   pulmonary                visuospatial              fev                    rotations               b1_female_0_pulmonary_visuospatial_fev_rotations.out       
b1              female   a                   pulmonary                visuospatial              fev                    rotations               b1_female_a_pulmonary_visuospatial_fev_rotations.out       
b1              female   ae                  pulmonary                visuospatial              fev                    rotations               b1_female_ae_pulmonary_visuospatial_fev_rotations.out      
b1              female   aeh                 pulmonary                visuospatial              fev                    rotations               b1_female_aeh_pulmonary_visuospatial_fev_rotations.out     
b1              female   aehplus             pulmonary                visuospatial              fev                    rotations               b1_female_aehplus_pulmonary_visuospatial_fev_rotations.out 
b1              male     0                   pulmonary                visuospatial              fev                    rotations               b1_male_0_pulmonary_visuospatial_fev_rotations.out         
b1              male     a                   pulmonary                visuospatial              fev                    rotations               b1_male_a_pulmonary_visuospatial_fev_rotations.out         
b1              male     ae                  pulmonary                visuospatial              fev                    rotations               b1_male_ae_pulmonary_visuospatial_fev_rotations.out        
b1              male     aeh                 pulmonary                visuospatial              fev                    rotations               b1_male_aeh_pulmonary_visuospatial_fev_rotations.out       
b1              male     aehplus             pulmonary                visuospatial              fev                    rotations               b1_male_aehplus_pulmonary_visuospatial_fev_rotations.out   
b1              male     age                 pumonary                 speed                     fev                    symbol                  b1_male_age_pumonary_speed_fev_symbol.out                  


# Session Information
For the sake of documentation and reproducibility, the current report was rendered on a system using the following software.


```
Report rendered by koval_000 at 2015-07-01, 09:37 -0700
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
 [1] rpivotTable_0.1.4.1   lattice_0.20-31       shiny_0.12.1          dplyr_0.4.1           testit_0.4           
 [6] ggplot2_1.0.1         RColorBrewer_1.1-2    scales_0.2.5          knitr_1.10.5          MplusAutomation_0.6-3

loaded via a namespace (and not attached):
 [1] Rcpp_0.11.6       formatR_1.2       plyr_1.8.2        highr_0.5         tools_3.2.0       boot_1.3-16      
 [7] digest_0.6.8      jsonlite_0.9.16   evaluate_0.7      gtable_0.1.2      texreg_1.35       rstudioapi_0.3.1 
[13] DBI_0.3.1         yaml_2.1.13       parallel_3.2.0    proto_0.3-10      coda_0.17-1       stringr_1.0.0    
[19] htmlwidgets_0.4.2 R6_2.0.1          tcltk_3.2.0       gsubfn_0.6-6      rmarkdown_0.7     tidyr_0.2.0      
[25] reshape2_1.4.1    magrittr_1.5      htmltools_0.2.6   MASS_7.3-40       rsconnect_0.3.79  assertthat_0.1   
[31] mime_0.3          xtable_1.7-4      colorspace_1.2-6  httpuv_1.3.2      labeling_0.3      stringi_0.4-1    
[37] lazyeval_0.1.10   munsell_0.4.2    
```
