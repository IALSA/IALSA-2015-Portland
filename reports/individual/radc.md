# RADC: Model catalog



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
[1] "radc"
```

has provided us with the total number of 

```
299
```
models, using univariate and bivariate specifications:

```

 b1  u1 
150 149 
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
299
```
models, which output files contains all 7 components. We have corrected the obvious typos, but some names (of constructs and measures) require your attention. 

# Simple Counts
In this section, **model specification (columns)** are cross-tabulated with **constructs or measures (rows)**, displaying the number of valid models in each category. 

## Physical constructs


```
           
            b1  u1 
  pulmonary 150 .  
  Univar    .   149
```


## Physical measures


```
        
         b1  u1 
  fev    150 .  
  univar .   149
```

## Cognitive constructs


```
              
               b1 u1
  executive    16 16
  fluency      8  8 
  knowledge    8  8 
  language     16 16
  memory       62 61
  mental       14 16
  reasoning    8  8 
  speed        16 16
  visuospatial 2  . 
```


## Cognitive measures


```
                      
                       b1 u1
  bnt                  8  8 
  bostonstorydelay     8  8 
  bostonstoryimmediate 8  8 
  categories           8  8 
  complexideas         8  8 
  digitordering        8  8 
  digitsback           8  8 
  digitsforward        8  8 
  lineorientation      10 8 
  logicalmemorydelay   8  6 
  logicalmemoryimmed   6  6 
  matrices             8  8 
  mmse                 6  8 
  nart                 8  8 
  numbercomparison     8  8 
  symbol               8  8 
  wmslmdel             .  2 
  wmslmimmed           .  2 
  wordlistdelay        8  8 
  wordlistimmed        8  8 
  wordlistrecog        8  5 
```
</br></br></br>

# BIVARIATE MODELS

In this section, **constructs (columns)** are cross-tabulated with  **measures (rows)** that opeationalize them in the models. Each non-blank element in a column indicates a unique **measure (row)** of the **construct (column)**. The numeric value shows how many different versions of this model used this specific pair of construct and measure: model may differ on the subgroup (male, female), and the set of covariates (empty, a, ae, aeh, aehplus, full).


## Physical 
Physical **constructs** (columns) by physical **measures** (rows) in BIVARIATE models

```
     
      pulmonary
  fev 150      
```

## Cognitive 
Cognitive **constructs** (columns) by cognitive **measures** (rows) in BIVARIATE models

```
                      
                       executive fluency knowledge language memory mental reasoning speed visuospatial
  bnt                  .         .       .         8        .      .      .         .     .           
  bostonstorydelay     .         .       .         .        8      .      .         .     .           
  bostonstoryimmediate .         .       .         .        8      .      .         .     .           
  categories           .         8       .         .        .      .      .         .     .           
  complexideas         .         .       .         8        .      .      .         .     .           
  digitordering        8         .       .         .        .      .      .         .     .           
  digitsback           8         .       .         .        .      .      .         .     .           
  digitsforward        .         .       .         .        8      .      .         .     .           
  lineorientation      .         .       .         .        .      8      .         .     2           
  logicalmemorydelay   .         .       .         .        8      .      .         .     .           
  logicalmemoryimmed   .         .       .         .        6      .      .         .     .           
  matrices             .         .       .         .        .      .      8         .     .           
  mmse                 .         .       .         .        .      6      .         .     .           
  nart                 .         .       8         .        .      .      .         .     .           
  numbercomparison     .         .       .         .        .      .      .         8     .           
  symbol               .         .       .         .        .      .      .         8     .           
  wordlistdelay        .         .       .         .        8      .      .         .     .           
  wordlistimmed        .         .       .         .        8      .      .         .     .           
  wordlistrecog        .         .       .         .        8      .      .         .     .           
```


## Constructs
Number of models with the following **physical constructs** (columns) and  **cognitive constructs** (rows)


```
              
               pulmonary
  executive    16       
  fluency      8        
  knowledge    8        
  language     16       
  memory       62       
  mental       14       
  reasoning    8        
  speed        16       
  visuospatial 2        
```

## Phys.Constructs
Number of models with the following  **physical constructs** (columns) and  **cognitive measures** (rows)

```
                      
                       pulmonary
  bnt                  8        
  bostonstorydelay     8        
  bostonstoryimmediate 8        
  categories           8        
  complexideas         8        
  digitordering        8        
  digitsback           8        
  digitsforward        8        
  lineorientation      10       
  logicalmemorydelay   8        
  logicalmemoryimmed   6        
  matrices             8        
  mmse                 6        
  nart                 8        
  numbercomparison     8        
  symbol               8        
  wordlistdelay        8        
  wordlistimmed        8        
  wordlistrecog        8        
```

## Cog.Constructs
Number of models with the following  **physical measure** (columns) and  **cognitive constructs** (rows)

```
              
               fev
  executive    16 
  fluency      8  
  knowledge    8  
  language     16 
  memory       62 
  mental       14 
  reasoning    8  
  speed        16 
  visuospatial 2  
```

## Measures
Number of models with the following  **physical measures** (columns) and  **cognitive measures** (rows)

```
                      
                       fev
  bnt                  8  
  bostonstorydelay     8  
  bostonstoryimmediate 8  
  categories           8  
  complexideas         8  
  digitordering        8  
  digitsback           8  
  digitsforward        8  
  lineorientation      10 
  logicalmemorydelay   8  
  logicalmemoryimmed   6  
  matrices             8  
  mmse                 6  
  nart                 8  
  numbercomparison     8  
  symbol               8  
  wordlistdelay        8  
  wordlistimmed        8  
  wordlistrecog        8  
```
</br></br></br>


# UNIVARIATE MODELS

In this section, **constructs (columns)** are cross-tabulated with  **measures (rows)** that opeationalize them in the models. Each non-blank element in a column indicates a unique **measure (row)** of the **construct (column)**. The numeric value counts the different versions of the model (sex, covariates) that used this specific pair of construct and measure. 

## Physical 
Physical constructs (columns) by physical measures (rows) in UNIVARIATE models

```
           Univar
                 
u1 univar     149
```

## Cognitive
Cognitive constructs (columns) by cognitive measures (rows) in UNIVARIATE models

```
                         executive fluency knowledge language memory mental reasoning speed
                                                                                           
u1 bnt                           .       .         .        8      .      .         .     .
   bostonstorydelay              .       .         .        .      8      .         .     .
   bostonstoryimmediate          .       .         .        .      8      .         .     .
   categories                    .       8         .        .      .      .         .     .
   complexideas                  .       .         .        8      .      .         .     .
   digitordering                 8       .         .        .      .      .         .     .
   digitsback                    8       .         .        .      .      .         .     .
   digitsforward                 .       .         .        .      8      .         .     .
   lineorientation               .       .         .        .      .      8         .     .
   logicalmemorydelay            .       .         .        .      6      .         .     .
   logicalmemoryimmed            .       .         .        .      6      .         .     .
   matrices                      .       .         .        .      .      .         8     .
   mmse                          .       .         .        .      .      8         .     .
   nart                          .       .         8        .      .      .         .     .
   numbercomparison              .       .         .        .      .      .         .     8
   symbol                        .       .         .        .      .      .         .     8
   wmslmdel                      .       .         .        .      2      .         .     .
   wmslmimmed                    .       .         .        .      2      .         .     .
   wordlistdelay                 .       .         .        .      8      .         .     .
   wordlistimmed                 .       .         .        .      8      .         .     .
   wordlistrecog                 .       .         .        .      5      .         .     .
```
</br></br></br>

# List of models
## u1


model<br/>tag   sex      predictor<br/>set   physical<br/>construct   cognitive<br/>construct   physical<br/>measure   cognitive<br/>measure   file name                                                           
--------------  -------  ------------------  -----------------------  ------------------------  ---------------------  ----------------------  --------------------------------------------------------------------
u1              female   a                   Univar                   language                  univar                 bnt                     u1_female_a_nophys_language_nophysspec_bnt.out                      
u1              female   ae                  Univar                   language                  univar                 bnt                     u1_female_ae_nophys_language_nophysspec_bnt.out                     
u1              female   aeh                 Univar                   language                  univar                 bnt                     u1_female_aeh_nophys_language_nophysspec_bnt.out                    
u1              female   aehplus             Univar                   language                  univar                 bnt                     u1_female_aehplus_nophys_language_nophysspec_bnt.out                
u1              male     a                   Univar                   language                  univar                 bnt                     u1_male_a_nophys_language_nophysspec_bnt.out                        
u1              male     ae                  Univar                   language                  univar                 bnt                     u1_male_ae_nophys_language_nophysspec_bnt.out                       
u1              male     aeh                 Univar                   language                  univar                 bnt                     u1_male_aeh_nophys_language_nophysspec_bnt.out                      
u1              male     aehplus             Univar                   language                  univar                 bnt                     u1_male_aehplus_nophys_language_nophysspec_bnt.out                  
u1              female   a                   Univar                   memory                    univar                 bostonstorydelay        u1_female_a_nophys_memory_nophysspec_bostonstorydelay.out           
u1              female   ae                  Univar                   memory                    univar                 bostonstorydelay        u1_female_ae_nophys_memory_nophysspec_bostonstorydelay.out          
u1              female   aeh                 Univar                   memory                    univar                 bostonstorydelay        u1_female_aeh_nophys_memory_nophysspec_bostonstorydelay.out         
u1              female   aehplus             Univar                   memory                    univar                 bostonstorydelay        u1_female_aehplus_nophys_memory_nophysspec_bostonstorydelay.out     
u1              male     a                   Univar                   memory                    univar                 bostonstorydelay        u1_male_a_nophys_memory_nophysspec_bostonstorydelay.out             
u1              male     ae                  Univar                   memory                    univar                 bostonstorydelay        u1_male_ae_nophys_memory_nophysspec_bostonstorydelay.out            
u1              male     aeh                 Univar                   memory                    univar                 bostonstorydelay        u1_male_aeh_nophys_memory_nophysspec_bostonstorydelay.out           
u1              male     aehplus             Univar                   memory                    univar                 bostonstorydelay        u1_male_aehplus_nophys_memory_nophysspec_bostonstorydelay.out       
u1              female   a                   Univar                   memory                    univar                 bostonstoryimmediate    u1_female_a_nophys_memory_nophysspec_bostonstoryimmediate.out       
u1              female   ae                  Univar                   memory                    univar                 bostonstoryimmediate    u1_female_ae_nophys_memory_nophysspec_bostonstoryimmediate.out      
u1              female   aeh                 Univar                   memory                    univar                 bostonstoryimmediate    u1_female_aeh_nophys_memory_nophysspec_bostonstoryimmediate.out     
u1              female   aehplus             Univar                   memory                    univar                 bostonstoryimmediate    u1_female_aehplus_nophys_memory_nophysspec_bostonstoryimmediate.out 
u1              male     a                   Univar                   memory                    univar                 bostonstoryimmediate    u1_male_a_nophys_memory_nophysspec_bostonstoryimmediate.out         
u1              male     ae                  Univar                   memory                    univar                 bostonstoryimmediate    u1_male_ae_nophys_memory_nophysspec_bostonstoryimmediate.out        
u1              male     aeh                 Univar                   memory                    univar                 bostonstoryimmediate    u1_male_aeh_nophys_memory_nophysspec_bostonstoryimmediate.out       
u1              male     aehplus             Univar                   memory                    univar                 bostonstoryimmediate    u1_male_aehplus_nophys_memory_nophysspec_bostonstoryimmediate.out   
u1              female   a                   Univar                   fluency                   univar                 categories              u1_female_a_nophys_fluency_nophysspec_categories.out                
u1              female   ae                  Univar                   fluency                   univar                 categories              u1_female_ae_nophys_fluency_nophysspec_categories.out               
u1              female   aeh                 Univar                   fluency                   univar                 categories              u1_female_aeh_nophys_fluency_nophysspec_categories.out              
u1              female   aehplus             Univar                   fluency                   univar                 categories              u1_female_aehplus_nophys_fluency_nophysspec_categories.out          
u1              male     a                   Univar                   fluency                   univar                 categories              u1_male_a_nophys_fluency_nophysspec_categories.out                  
u1              male     ae                  Univar                   fluency                   univar                 categories              u1_male_ae_nophys_fluency_nophysspec_categories.out                 
u1              male     aeh                 Univar                   fluency                   univar                 categories              u1_male_aeh_nophys_fluency_nophysspec_categories.out                
u1              male     aehplus             Univar                   fluency                   univar                 categories              u1_male_aehplus_nophys_fluency_nophysspec_categories.out            
u1              female   a                   Univar                   language                  univar                 complexideas            u1_female_a_nophys_language_nophysspec_complexideas.out             
u1              female   ae                  Univar                   language                  univar                 complexideas            u1_female_ae_nophys_language_nophysspec_complexideas.out            
u1              female   aeh                 Univar                   language                  univar                 complexideas            u1_female_aeh_nophys_language_nophysspec_complexideas.out           
u1              female   aehplus             Univar                   language                  univar                 complexideas            u1_female_aehplus_nophys_language_nophysspec_complexideas.out       
u1              male     a                   Univar                   language                  univar                 complexideas            u1_male_a_nophys_language_nophysspec_complexideas.out               
u1              male     ae                  Univar                   language                  univar                 complexideas            u1_male_ae_nophys_language_nophysspec_complexideas.out              
u1              male     aeh                 Univar                   language                  univar                 complexideas            u1_male_aeh_nophys_language_nophysspec_complexideas.out             
u1              male     aehplus             Univar                   language                  univar                 complexideas            u1_male_aehplus_nophys_language_nophysspec_complexideas.out         
u1              female   a                   Univar                   executive                 univar                 digitordering           u1_female_a_nophys_executive_nophysspec_digitordering.out           
u1              female   ae                  Univar                   executive                 univar                 digitordering           u1_female_ae_nophys_executive_nophysspec_digitordering.out          
u1              female   aeh                 Univar                   executive                 univar                 digitordering           u1_female_aeh_nophys_executive_nophysspec_digitordering.out         
u1              female   aehplus             Univar                   executive                 univar                 digitordering           u1_female_aehplus_nophys_executive_nophysspec_digitordering.out     
u1              male     a                   Univar                   executive                 univar                 digitordering           u1_male_a_nophys_executive_nophysspec_digitordering.out             
u1              male     ae                  Univar                   executive                 univar                 digitordering           u1_male_ae_nophys_executive_nophysspec_digitordering.out            
u1              male     aeh                 Univar                   executive                 univar                 digitordering           u1_male_aeh_nophys_executive_nophysspec_digitordering.out           
u1              male     aehplus             Univar                   executive                 univar                 digitordering           u1_male_aehplus_nophys_executive_nophysspec_digitordering.out       
u1              female   a                   Univar                   executive                 univar                 digitsback              u1_female_a_nophys_executive_nophysspec_digitsback.out              
u1              female   ae                  Univar                   executive                 univar                 digitsback              u1_female_ae_nophys_executive_nophysspec_digitsback.out             
u1              female   aeh                 Univar                   executive                 univar                 digitsback              u1_female_aeh_nophys_executive_nophysspec_digitsback.out            
u1              female   aehplus             Univar                   executive                 univar                 digitsback              u1_female_aehplus_nophys_executive_nophysspec_digitsback.out        
u1              male     a                   Univar                   executive                 univar                 digitsback              u1_male_a_nophys_executive_nophysspec_digitsback.out                
u1              male     ae                  Univar                   executive                 univar                 digitsback              u1_male_ae_nophys_executive_nophysspec_digitsback.out               
u1              male     aeh                 Univar                   executive                 univar                 digitsback              u1_male_aeh_nophys_executive_nophysspec_digitsback.out              
u1              male     aehplus             Univar                   executive                 univar                 digitsback              u1_male_aehplus_nophys_executive_nophysspec_digitsback.out          
u1              female   a                   Univar                   memory                    univar                 digitsforward           u1_female_a_nophys_memory_nophysspec_digitsforward.out              
u1              female   ae                  Univar                   memory                    univar                 digitsforward           u1_female_ae_nophys_memory_nophysspec_digitsforward.out             
u1              female   aeh                 Univar                   memory                    univar                 digitsforward           u1_female_aeh_nophys_memory_nophysspec_digitsforward.out            
u1              female   aehplus             Univar                   memory                    univar                 digitsforward           u1_female_aehplus_nophys_memory_nophysspec_digitsforward.out        
u1              male     a                   Univar                   memory                    univar                 digitsforward           u1_male_a_nophys_memory_nophysspec_digitsforward.out                
u1              male     ae                  Univar                   memory                    univar                 digitsforward           u1_male_ae_nophys_memory_nophysspec_digitsforward.out               
u1              male     aeh                 Univar                   memory                    univar                 digitsforward           u1_male_aeh_nophys_memory_nophysspec_digitsforward.out              
u1              male     aehplus             Univar                   memory                    univar                 digitsforward           u1_male_aehplus_nophys_memory_nophysspec_digitsforward.out          
u1              female   a                   Univar                   speed                     univar                 symbol                  u1_female_a_nophys_speed_nophysspec_digitsymbol.out                 
u1              female   ae                  Univar                   speed                     univar                 symbol                  u1_female_ae_nophys_speed_nophysspec_digitsymbol.out                
u1              female   aeh                 Univar                   speed                     univar                 symbol                  u1_female_aeh_nophys_speed_nophysspec_digitsymbol.out               
u1              female   aehplus             Univar                   speed                     univar                 symbol                  u1_female_aehplus_nophys_speed_nophysspec_digitsymbol.out           
u1              male     a                   Univar                   speed                     univar                 symbol                  u1_male_a_nophys_speed_nophysspec_digitsymbol.out                   
u1              male     ae                  Univar                   speed                     univar                 symbol                  u1_male_ae_nophys_speed_nophysspec_digitsymbol.out                  
u1              male     aeh                 Univar                   speed                     univar                 symbol                  u1_male_aeh_nophys_speed_nophysspec_digitsymbol.out                 
u1              male     aehplus             Univar                   speed                     univar                 symbol                  u1_male_aehplus_nophys_speed_nophysspec_digitsymbol.out             
u1              female   a                   Univar                   mental                    univar                 lineorientation         u1_female_a_nophys_mental_nophysspec_lineorientation.out            
u1              female   ae                  Univar                   mental                    univar                 lineorientation         u1_female_ae_nophys_mental_nophysspec_lineorientation.out           
u1              female   aeh                 Univar                   mental                    univar                 lineorientation         u1_female_aeh_nophys_mental_nophysspec_lineorientation.out          
u1              female   aehplus             Univar                   mental                    univar                 lineorientation         u1_female_aehplus_nophys_mental_nophysspec_lineorientation.out      
u1              male     a                   Univar                   mental                    univar                 lineorientation         u1_male_a_nophys_mental_nophysspec_lineorientation.out              
u1              male     ae                  Univar                   mental                    univar                 lineorientation         u1_male_ae_nophys_mental_nophysspec_lineorientation.out             
u1              male     aeh                 Univar                   mental                    univar                 lineorientation         u1_male_aeh_nophys_mental_nophysspec_lineorientation.out            
u1              male     aehplus             Univar                   mental                    univar                 lineorientation         u1_male_aehplus_nophys_mental_nophysspec_lineorientation.out        
u1              female   ae                  Univar                   memory                    univar                 logicalmemorydelay      u1_female_ae_nophys_memory_nophysspec_logicalmemorydelay.out        
u1              female   aeh                 Univar                   memory                    univar                 logicalmemorydelay      u1_female_aeh_nophys_memory_nophysspec_logicalmemorydelay.out       
u1              female   aehplus             Univar                   memory                    univar                 logicalmemorydelay      u1_female_aehplus_nophys_memory_nophysspec_logicalmemorydelay.out   
u1              male     ae                  Univar                   memory                    univar                 logicalmemorydelay      u1_male_ae_nophys_memory_nophysspec_logicalmemorydelay.out          
u1              male     aeh                 Univar                   memory                    univar                 logicalmemorydelay      u1_male_aeh_nophys_memory_nophysspec_logicalmemorydelay.out         
u1              male     aehplus             Univar                   memory                    univar                 logicalmemorydelay      u1_male_aehplus_nophys_memory_nophysspec_logicalmemorydelay.out     
u1              female   ae                  Univar                   memory                    univar                 logicalmemoryimmed      u1_female_ae_nophys_memory_nophysspec_logicalmemoryimmed.out        
u1              female   aeh                 Univar                   memory                    univar                 logicalmemoryimmed      u1_female_aeh_nophys_memory_nophysspec_logicalmemoryimmed.out       
u1              female   aehplus             Univar                   memory                    univar                 logicalmemoryimmed      u1_female_aehplus_nophys_memory_nophysspec_logicalmemoryimmed.out   
u1              male     ae                  Univar                   memory                    univar                 logicalmemoryimmed      u1_male_ae_nophys_memory_nophysspec_logicalmemoryimmed.out          
u1              male     aeh                 Univar                   memory                    univar                 logicalmemoryimmed      u1_male_aeh_nophys_memory_nophysspec_logicalmemoryimmed.out         
u1              male     aehplus             Univar                   memory                    univar                 logicalmemoryimmed      u1_male_aehplus_nophys_memory_nophysspec_logicalmemoryimmed.out     
u1              female   a                   Univar                   reasoning                 univar                 matrices                u1_female_a_nophys_reasoning_nophysspec_matrices.out                
u1              female   ae                  Univar                   reasoning                 univar                 matrices                u1_female_ae_nophys_reasoning_nophysspec_matrices.out               
u1              female   aeh                 Univar                   reasoning                 univar                 matrices                u1_female_aeh_nophys_reasoning_nophysspec_matrices.out              
u1              female   aehplus             Univar                   reasoning                 univar                 matrices                u1_female_aehplus_nophys_reasoning_nophysspec_matrices.out          
u1              male     a                   Univar                   reasoning                 univar                 matrices                u1_male_a_nophys_reasoning_nophysspec_matrices.out                  
u1              male     ae                  Univar                   reasoning                 univar                 matrices                u1_male_ae_nophys_reasoning_nophysspec_matrices.out                 
u1              male     aeh                 Univar                   reasoning                 univar                 matrices                u1_male_aeh_nophys_reasoning_nophysspec_matrices.out                
u1              male     aehplus             Univar                   reasoning                 univar                 matrices                u1_male_aehplus_nophys_reasoning_nophysspec_matrices.out            
u1              female   a                   Univar                   mental                    univar                 mmse                    u1_female_a_nophys_mental_nophysspec_mmse.out                       
u1              female   ae                  Univar                   mental                    univar                 mmse                    u1_female_ae_nophys_mental_nophysspec_mmse.out                      
u1              female   aeh                 Univar                   mental                    univar                 mmse                    u1_female_aeh_nophys_mental_nophysspec_mmse.out                     
u1              female   aehplus             Univar                   mental                    univar                 mmse                    u1_female_aehplus_nophys_mental_nophysspec_mmse.out                 
u1              male     a                   Univar                   mental                    univar                 mmse                    u1_male_a_nophys_mental_nophysspec_mmse.out                         
u1              male     ae                  Univar                   mental                    univar                 mmse                    u1_male_ae_nophys_mental_nophysspec_mmse.out                        
u1              male     aeh                 Univar                   mental                    univar                 mmse                    u1_male_aeh_nophys_mental_nophysspec_mmse.out                       
u1              male     aehplus             Univar                   mental                    univar                 mmse                    u1_male_aehplus_nophys_mental_nophysspec_mmse.out                   
u1              female   a                   Univar                   knowledge                 univar                 nart                    u1_female_a_nophys_knowledge_nophysspec_nart.out                    
u1              female   ae                  Univar                   knowledge                 univar                 nart                    u1_female_ae_nophys_knowledge_nophysspec_nart.out                   
u1              female   aeh                 Univar                   knowledge                 univar                 nart                    u1_female_aeh_nophys_knowledge_nophysspec_nart.out                  
u1              female   aehplus             Univar                   knowledge                 univar                 nart                    u1_female_aehplus_nophys_knowledge_nophysspec_nart.out              
u1              male     a                   Univar                   knowledge                 univar                 nart                    u1_male_a_nophys_knowledge_nophysspec_nart.out                      
u1              male     ae                  Univar                   knowledge                 univar                 nart                    u1_male_ae_nophys_knowledge_nophysspec_nart.out                     
u1              male     aeh                 Univar                   knowledge                 univar                 nart                    u1_male_aeh_nophys_knowledge_nophysspec_nart.out                    
u1              male     aehplus             Univar                   knowledge                 univar                 nart                    u1_male_aehplus_nophys_knowledge_nophysspec_nart.out                
u1              female   a                   Univar                   speed                     univar                 numbercomparison        u1_female_a_nophys_speed_nophysspec_numbercomparison.out            
u1              female   ae                  Univar                   speed                     univar                 numbercomparison        u1_female_ae_nophys_speed_nophysspec_numbercomparison.out           
u1              female   aeh                 Univar                   speed                     univar                 numbercomparison        u1_female_aeh_nophys_speed_nophysspec_numbercomparison.out          
u1              female   aehplus             Univar                   speed                     univar                 numbercomparison        u1_female_aehplus_nophys_speed_nophysspec_numbercomparison.out      
u1              male     a                   Univar                   speed                     univar                 numbercomparison        u1_male_a_nophys_speed_nophysspec_numbercomparison.out              
u1              male     ae                  Univar                   speed                     univar                 numbercomparison        u1_male_ae_nophys_speed_nophysspec_numbercomparison.out             
u1              male     aeh                 Univar                   speed                     univar                 numbercomparison        u1_male_aeh_nophys_speed_nophysspec_numbercomparison.out            
u1              male     aehplus             Univar                   speed                     univar                 numbercomparison        u1_male_aehplus_nophys_speed_nophysspec_numbercomparison.out        
u1              female   a                   Univar                   memory                    univar                 wmslmdel                u1_female_a_nophys_memory_nophysspec_wmslmdel.out                   
u1              male     a                   Univar                   memory                    univar                 wmslmdel                u1_male_a_nophys_memory_nophysspec_wmslmdel.out                     
u1              female   a                   Univar                   memory                    univar                 wmslmimmed              u1_female_a_nophys_memory_nophysspec_wmslmimmed.out                 
u1              male     a                   Univar                   memory                    univar                 wmslmimmed              u1_male_a_nophys_memory_nophysspec_wmslmimmed.out                   
u1              female   a                   Univar                   memory                    univar                 wordlistdelay           u1_female_a_nophys_memory_nophysspec_wordlistdelay.out              
u1              female   ae                  Univar                   memory                    univar                 wordlistdelay           u1_female_ae_nophys_memory_nophysspec_wordlistdelay.out             
u1              female   aeh                 Univar                   memory                    univar                 wordlistdelay           u1_female_aeh_nophys_memory_nophysspec_wordlistdelay.out            
u1              female   aehplus             Univar                   memory                    univar                 wordlistdelay           u1_female_aehplus_nophys_memory_nophysspec_wordlistdelay.out        
u1              male     a                   Univar                   memory                    univar                 wordlistdelay           u1_male_a_nophys_memory_nophysspec_wordlistdelay.out                
u1              male     ae                  Univar                   memory                    univar                 wordlistdelay           u1_male_ae_nophys_memory_nophysspec_wordlistdelay.out               
u1              male     aeh                 Univar                   memory                    univar                 wordlistdelay           u1_male_aeh_nophys_memory_nophysspec_wordlistdelay.out              
u1              male     aehplus             Univar                   memory                    univar                 wordlistdelay           u1_male_aehplus_nophys_memory_nophysspec_wordlistdelay.out          
u1              female   a                   Univar                   memory                    univar                 wordlistimmed           u1_female_a_nophys_memory_nophysspec_wordlistimmed.out              
u1              female   ae                  Univar                   memory                    univar                 wordlistimmed           u1_female_ae_nophys_memory_nophysspec_wordlistimmed.out             
u1              female   aeh                 Univar                   memory                    univar                 wordlistimmed           u1_female_aeh_nophys_memory_nophysspec_wordlistimmed.out            
u1              female   aehplus             Univar                   memory                    univar                 wordlistimmed           u1_female_aehplus_nophys_memory_nophysspec_wordlistimmed.out        
u1              male     a                   Univar                   memory                    univar                 wordlistimmed           u1_male_a_nophys_memory_nophysspec_wordlistimmed.out                
u1              male     ae                  Univar                   memory                    univar                 wordlistimmed           u1_male_ae_nophys_memory_nophysspec_wordlistimmed.out               
u1              male     aeh                 Univar                   memory                    univar                 wordlistimmed           u1_male_aeh_nophys_memory_nophysspec_wordlistimmed.out              
u1              male     aehplus             Univar                   memory                    univar                 wordlistimmed           u1_male_aehplus_nophys_memory_nophysspec_wordlistimmed.out          
u1              female   a                   Univar                   memory                    univar                 wordlistrecog           u1_female_a_nophys_memory_nophysspec_wordlistrecog.out              
u1              female   aehplus             Univar                   memory                    univar                 wordlistrecog           u1_female_aehplus_nophys_memory_nophysspec_wordlistrecog.out        
u1              male     a                   Univar                   memory                    univar                 wordlistrecog           u1_male_a_nophys_memory_nophysspec_wordlistrecog.out                
u1              male     aeh                 Univar                   memory                    univar                 wordlistrecog           u1_male_aeh_nophys_memory_nophysspec_wordlistrecog.out              
u1              male     aehplus             Univar                   memory                    univar                 wordlistrecog           u1_male_aehplus_nophys_memory_nophysspec_wordlistrecog.out          

## b1


model<br/>tag   sex      predictor<br/>set   physical<br/>construct   cognitive<br/>construct   physical<br/>measure   cognitive<br/>measure   file name                                                       
--------------  -------  ------------------  -----------------------  ------------------------  ---------------------  ----------------------  ----------------------------------------------------------------
b1              female   a                   pulmonary                language                  fev                    bnt                     b1_female_a_pulmonary_language_fev_bnt.out                      
b1              female   ae                  pulmonary                language                  fev                    bnt                     b1_female_ae_pulmonary_language_fev_bnt.out                     
b1              female   aeh                 pulmonary                language                  fev                    bnt                     b1_female_aeh_pulmonary_language_fev_bnt.out                    
b1              female   aehplus             pulmonary                language                  fev                    bnt                     b1_female_aehplus_pulmonary_language_fev_bnt.out                
b1              male     a                   pulmonary                language                  fev                    bnt                     b1_male_a_pulmonary_language_fev_bnt.out                        
b1              male     ae                  pulmonary                language                  fev                    bnt                     b1_male_ae_pulmonary_language_fev_bnt.out                       
b1              male     aeh                 pulmonary                language                  fev                    bnt                     b1_male_aeh_pulmonary_language_fev_bnt.out                      
b1              male     aehplus             pulmonary                language                  fev                    bnt                     b1_male_aehplus_pulmonary_language_fev_bnt.out                  
b1              female   a                   pulmonary                memory                    fev                    bostonstorydelay        b1_female_a_pulmonary_memory_fev_bostonstorydelay.out           
b1              female   ae                  pulmonary                memory                    fev                    bostonstorydelay        b1_female_ae_pulmonary_memory_fev_bostonstorydelay.out          
b1              female   aeh                 pulmonary                memory                    fev                    bostonstorydelay        b1_female_aeh_pulmonary_memory_fev_bostonstorydelay.out         
b1              female   aehplus             pulmonary                memory                    fev                    bostonstorydelay        b1_female_aehplus_pulmonary_memory_fev_bostonstorydelay.out     
b1              male     a                   pulmonary                memory                    fev                    bostonstorydelay        b1_male_a_pulmonary_memory_fev_bostonstorydelay.out             
b1              male     ae                  pulmonary                memory                    fev                    bostonstorydelay        b1_male_ae_pulmonary_memory_fev_bostonstorydelay.out            
b1              male     aeh                 pulmonary                memory                    fev                    bostonstorydelay        b1_male_aeh_pulmonary_memory_fev_bostonstorydelay.out           
b1              male     aehplus             pulmonary                memory                    fev                    bostonstorydelay        b1_male_aehplus_pulmonary_memory_fev_bostonstorydelay.out       
b1              female   a                   pulmonary                memory                    fev                    bostonstoryimmediate    b1_female_a_pulmonary_memory_fev_bostonstoryimmediate.out       
b1              female   ae                  pulmonary                memory                    fev                    bostonstoryimmediate    b1_female_ae_pulmonary_memory_fev_bostonstoryimmediate.out      
b1              female   aeh                 pulmonary                memory                    fev                    bostonstoryimmediate    b1_female_aeh_pulmonary_memory_fev_bostonstoryimmediate.out     
b1              female   aehplus             pulmonary                memory                    fev                    bostonstoryimmediate    b1_female_aehplus_pulmonary_memory_fev_bostonstoryimmediate.out 
b1              male     a                   pulmonary                memory                    fev                    bostonstoryimmediate    b1_male_a_pulmonary_memory_fev_bostonstoryimmediate.out         
b1              male     ae                  pulmonary                memory                    fev                    bostonstoryimmediate    b1_male_ae_pulmonary_memory_fev_bostonstoryimmediate.out        
b1              male     aeh                 pulmonary                memory                    fev                    bostonstoryimmediate    b1_male_aeh_pulmonary_memory_fev_bostonstoryimmediate.out       
b1              male     aehplus             pulmonary                memory                    fev                    bostonstoryimmediate    b1_male_aehplus_pulmonary_memory_fev_bostonstoryimmediate.out   
b1              female   a                   pulmonary                fluency                   fev                    categories              b1_female_a_pulmonary_fluency_fev_categories.out                
b1              female   ae                  pulmonary                fluency                   fev                    categories              b1_female_ae_pulmonary_fluency_fev_categories.out               
b1              female   aeh                 pulmonary                fluency                   fev                    categories              b1_female_aeh_pulmonary_fluency_fev_categories.out              
b1              female   aehplus             pulmonary                fluency                   fev                    categories              b1_female_aehplus_pulmonary_fluency_fev_categories.out          
b1              male     a                   pulmonary                fluency                   fev                    categories              b1_male_a_pulmonary_fluency_fev_categories.out                  
b1              male     ae                  pulmonary                fluency                   fev                    categories              b1_male_ae_pulmonary_fluency_fev_categories.out                 
b1              male     aeh                 pulmonary                fluency                   fev                    categories              b1_male_aeh_pulmonary_fluency_fev_categories.out                
b1              male     aehplus             pulmonary                fluency                   fev                    categories              b1_male_aehplus_pulmonary_fluency_fev_categories.out            
b1              female   a                   pulmonary                language                  fev                    complexideas            b1_female_a_pulmonary_language_fev_complexideas.out             
b1              female   ae                  pulmonary                language                  fev                    complexideas            b1_female_ae_pulmonary_language_fev_complexideas.out            
b1              female   aeh                 pulmonary                language                  fev                    complexideas            b1_female_aeh_pulmonary_language_fev_complexideas.out           
b1              female   aehplus             pulmonary                language                  fev                    complexideas            b1_female_aehplus_pulmonary_language_fev_complexideas.out       
b1              male     a                   pulmonary                language                  fev                    complexideas            b1_male_a_pulmonary_language_fev_complexideas.out               
b1              male     ae                  pulmonary                language                  fev                    complexideas            b1_male_ae_pulmonary_language_fev_complexideas.out              
b1              male     aeh                 pulmonary                language                  fev                    complexideas            b1_male_aeh_pulmonary_language_fev_complexideas.out             
b1              male     aehplus             pulmonary                language                  fev                    complexideas            b1_male_aehplus_pulmonary_language_fev_complexideas.out         
b1              female   a                   pulmonary                executive                 fev                    digitordering           b1_female_a_pulmonary_executive_fev_digitordering.out           
b1              female   ae                  pulmonary                executive                 fev                    digitordering           b1_female_ae_pulmonary_executive_fev_digitordering.out          
b1              female   aeh                 pulmonary                executive                 fev                    digitordering           b1_female_aeh_pulmonary_executive_fev_digitordering.out         
b1              female   aehplus             pulmonary                executive                 fev                    digitordering           b1_female_aehplus_pulmonary_executive_fev_digitordering.out     
b1              male     a                   pulmonary                executive                 fev                    digitordering           b1_male_a_pulmonary_executive_fev_digitordering.out             
b1              male     ae                  pulmonary                executive                 fev                    digitordering           b1_male_ae_pulmonary_executive_fev_digitordering.out            
b1              male     aeh                 pulmonary                executive                 fev                    digitordering           b1_male_aeh_pulmonary_executive_fev_digitordering.out           
b1              male     aehplus             pulmonary                executive                 fev                    digitordering           b1_male_aehplus_pulmonary_executive_fev_digitordering.out       
b1              female   a                   pulmonary                executive                 fev                    digitsback              b1_female_a_pulmonary_executive_fev_digitsback.out              
b1              female   ae                  pulmonary                executive                 fev                    digitsback              b1_female_ae_pulmonary_executive_fev_digitsback.out             
b1              female   aeh                 pulmonary                executive                 fev                    digitsback              b1_female_aeh_pulmonary_executive_fev_digitsback.out            
b1              female   aehplus             pulmonary                executive                 fev                    digitsback              b1_female_aehplus_pulmonary_executive_fev_digitsback.out        
b1              male     a                   pulmonary                executive                 fev                    digitsback              b1_male_a_pulmonary_executive_fev_digitsback.out                
b1              male     ae                  pulmonary                executive                 fev                    digitsback              b1_male_ae_pulmonary_executive_fev_digitsback.out               
b1              male     aeh                 pulmonary                executive                 fev                    digitsback              b1_male_aeh_pulmonary_executive_fev_digitsback.out              
b1              male     aehplus             pulmonary                executive                 fev                    digitsback              b1_male_aehplus_pulmonary_executive_fev_digitsback.out          
b1              female   a                   pulmonary                memory                    fev                    digitsforward           b1_female_a_pulmonary_memory_fev_digitsforward.out              
b1              female   ae                  pulmonary                memory                    fev                    digitsforward           b1_female_ae_pulmonary_memory_fev_digitsforward.out             
b1              female   aeh                 pulmonary                memory                    fev                    digitsforward           b1_female_aeh_pulmonary_memory_fev_digitsforward.out            
b1              female   aehplus             pulmonary                memory                    fev                    digitsforward           b1_female_aehplus_pulmonary_memory_fev_digitsforward.out        
b1              male     a                   pulmonary                memory                    fev                    digitsforward           b1_male_a_pulmonary_memory_fev_digitsforward.out                
b1              male     ae                  pulmonary                memory                    fev                    digitsforward           b1_male_ae_pulmonary_memory_fev_digitsforward.out               
b1              male     aeh                 pulmonary                memory                    fev                    digitsforward           b1_male_aeh_pulmonary_memory_fev_digitsforward.out              
b1              male     aehplus             pulmonary                memory                    fev                    digitsforward           b1_male_aehplus_pulmonary_memory_fev_digitsforward.out          
b1              female   a                   pulmonary                speed                     fev                    symbol                  b1_female_a_pulmonary_speed_fev_digitsymbol.out                 
b1              female   ae                  pulmonary                speed                     fev                    symbol                  b1_female_ae_pulmonary_speed_fev_digitsymbol.out                
b1              female   aeh                 pulmonary                speed                     fev                    symbol                  b1_female_aeh_pulmonary_speed_fev_digitsymbol.out               
b1              female   aehplus             pulmonary                speed                     fev                    symbol                  b1_female_aehplus_pulmonary_speed_fev_digitsymbol.out           
b1              male     a                   pulmonary                speed                     fev                    symbol                  b1_male_a_pulmonary_speed_fev_digitsymbol.out                   
b1              male     ae                  pulmonary                speed                     fev                    symbol                  b1_male_ae_pulmonary_speed_fev_digitsymbol.out                  
b1              male     aeh                 pulmonary                speed                     fev                    symbol                  b1_male_aeh_pulmonary_speed_fev_digitsymbol.out                 
b1              male     aehplus             pulmonary                speed                     fev                    symbol                  b1_male_aehplus_pulmonary_speed_fev_digitsymbol.out             
b1              female   a                   pulmonary                mental                    fev                    lineorientation         b1_female_a_pulmonary_mental_fev_lineorientation.out            
b1              female   ae                  pulmonary                mental                    fev                    lineorientation         b1_female_ae_pulmonary_mental_fev_lineorientation.out           
b1              female   aeh                 pulmonary                mental                    fev                    lineorientation         b1_female_aeh_pulmonary_mental_fev_lineorientation.out          
b1              female   aehplus             pulmonary                mental                    fev                    lineorientation         b1_female_aehplus_pulmonary_mental_fev_lineorientation.out      
b1              male     a                   pulmonary                mental                    fev                    lineorientation         b1_male_a_pulmonary_mental_fev_lineorientation.out              
b1              male     ae                  pulmonary                mental                    fev                    lineorientation         b1_male_ae_pulmonary_mental_fev_lineorientation.out             
b1              male     aeh                 pulmonary                mental                    fev                    lineorientation         b1_male_aeh_pulmonary_mental_fev_lineorientation.out            
b1              male     aehplus             pulmonary                mental                    fev                    lineorientation         b1_male_aehplus_pulmonary_mental_fev_lineorientation.out        
b1              female   aeh                 pulmonary                visuospatial              fev                    lineorientation         b1_female_aeh_pulmonary_visuospatial_fev_lineorientation.out    
b1              male     aeh                 pulmonary                visuospatial              fev                    lineorientation         b1_male_aeh_pulmonary_visuospatial_fev_lineorientation.out      
b1              female   a                   pulmonary                memory                    fev                    logicalmemorydelay      b1_female_a_pulmonary_memory_fev_logicalmemorydelay.out         
b1              female   ae                  pulmonary                memory                    fev                    logicalmemorydelay      b1_female_ae_pulmonary_memory_fev_logicalmemorydelay.out        
b1              female   aeh                 pulmonary                memory                    fev                    logicalmemorydelay      b1_female_aeh_pulmonary_memory_fev_logicalmemorydelay.out       
b1              female   aehplus             pulmonary                memory                    fev                    logicalmemorydelay      b1_female_aehplus_pulmonary_memory_fev_logicalmemorydelay.out   
b1              male     a                   pulmonary                memory                    fev                    logicalmemorydelay      b1_male_a_pulmonary_memory_fev_logicalmemorydelay.out           
b1              male     ae                  pulmonary                memory                    fev                    logicalmemorydelay      b1_male_ae_pulmonary_memory_fev_logicalmemorydelay.out          
b1              male     aeh                 pulmonary                memory                    fev                    logicalmemorydelay      b1_male_aeh_pulmonary_memory_fev_logicalmemorydelay.out         
b1              male     aehplus             pulmonary                memory                    fev                    logicalmemorydelay      b1_male_aehplus_pulmonary_memory_fev_logicalmemorydelay.out     
b1              female   ae                  pulmonary                memory                    fev                    logicalmemoryimmed      b1_female_ae_pulmonary_memory_fev_logicalmemoryimmed.out        
b1              female   aeh                 pulmonary                memory                    fev                    logicalmemoryimmed      b1_female_aeh_pulmonary_memory_fev_logicalmemoryimmed.out       
b1              female   aehplus             pulmonary                memory                    fev                    logicalmemoryimmed      b1_female_aehplus_pulmonary_memory_fev_logicalmemoryimmed.out   
b1              male     ae                  pulmonary                memory                    fev                    logicalmemoryimmed      b1_male_ae_pulmonary_memory_fev_logicalmemoryimmed.out          
b1              male     aeh                 pulmonary                memory                    fev                    logicalmemoryimmed      b1_male_aeh_pulmonary_memory_fev_logicalmemoryimmed.out         
b1              male     aehplus             pulmonary                memory                    fev                    logicalmemoryimmed      b1_male_aehplus_pulmonary_memory_fev_logicalmemoryimmed.out     
b1              female   a                   pulmonary                reasoning                 fev                    matrices                b1_female_a_pulmonary_reasoning_fev_matrices.out                
b1              female   ae                  pulmonary                reasoning                 fev                    matrices                b1_female_ae_pulmonary_reasoning_fev_matrices.out               
b1              female   aeh                 pulmonary                reasoning                 fev                    matrices                b1_female_aeh_pulmonary_reasoning_fev_matrices.out              
b1              female   aehplus             pulmonary                reasoning                 fev                    matrices                b1_female_aehplus_pulmonary_reasoning_fev_matrices.out          
b1              male     a                   pulmonary                reasoning                 fev                    matrices                b1_male_a_pulmonary_reasoning_fev_matrices.out                  
b1              male     ae                  pulmonary                reasoning                 fev                    matrices                b1_male_ae_pulmonary_reasoning_fev_matrices.out                 
b1              male     aeh                 pulmonary                reasoning                 fev                    matrices                b1_male_aeh_pulmonary_reasoning_fev_matrices.out                
b1              male     aehplus             pulmonary                reasoning                 fev                    matrices                b1_male_aehplus_pulmonary_reasoning_fev_matrices.out            
b1              female   ae                  pulmonary                mental                    fev                    mmse                    b1_female_ae_pulmonary_mental_fev_mmse.out                      
b1              female   aeh                 pulmonary                mental                    fev                    mmse                    b1_female_aeh_pulmonary_mental_fev_mmse.out                     
b1              female   aehplus             pulmonary                mental                    fev                    mmse                    b1_female_aehplus_pulmonary_mental_fev_mmse.out                 
b1              male     ae                  pulmonary                mental                    fev                    mmse                    b1_male_ae_pulmonary_mental_fev_mmse.out                        
b1              male     aeh                 pulmonary                mental                    fev                    mmse                    b1_male_aeh_pulmonary_mental_fev_mmse.out                       
b1              male     aehplus             pulmonary                mental                    fev                    mmse                    b1_male_aehplus_pulmonary_mental_fev_mmse.out                   
b1              female   a                   pulmonary                knowledge                 fev                    nart                    b1_female_a_pulmonary_knowledge_fev_nart.out                    
b1              female   ae                  pulmonary                knowledge                 fev                    nart                    b1_female_ae_pulmonary_knowledge_fev_nart.out                   
b1              female   aeh                 pulmonary                knowledge                 fev                    nart                    b1_female_aeh_pulmonary_knowledge_fev_nart.out                  
b1              female   aehplus             pulmonary                knowledge                 fev                    nart                    b1_female_aehplus_pulmonary_knowledge_fev_nart.out              
b1              male     a                   pulmonary                knowledge                 fev                    nart                    b1_male_a_pulmonary_knowledge_fev_nart.out                      
b1              male     ae                  pulmonary                knowledge                 fev                    nart                    b1_male_ae_pulmonary_knowledge_fev_nart.out                     
b1              male     aeh                 pulmonary                knowledge                 fev                    nart                    b1_male_aeh_pulmonary_knowledge_fev_nart.out                    
b1              male     aehplus             pulmonary                knowledge                 fev                    nart                    b1_male_aehplus_pulmonary_knowledge_fev_nart.out                
b1              female   a                   pulmonary                speed                     fev                    numbercomparison        b1_female_a_pulmonary_speed_fev_numbercomparison.out            
b1              female   ae                  pulmonary                speed                     fev                    numbercomparison        b1_female_ae_pulmonary_speed_fev_numbercomparison.out           
b1              female   aeh                 pulmonary                speed                     fev                    numbercomparison        b1_female_aeh_pulmonary_speed_fev_numbercomparison.out          
b1              female   aehplus             pulmonary                speed                     fev                    numbercomparison        b1_female_aehplus_pulmonary_speed_fev_numbercomparison.out      
b1              male     a                   pulmonary                speed                     fev                    numbercomparison        b1_male_a_pulmonary_speed_fev_numbercomparison.out              
b1              male     ae                  pulmonary                speed                     fev                    numbercomparison        b1_male_ae_pulmonary_speed_fev_numbercomparison.out             
b1              male     aeh                 pulmonary                speed                     fev                    numbercomparison        b1_male_aeh_pulmonary_speed_fev_numbercomparison.out            
b1              male     aehplus             pulmonary                speed                     fev                    numbercomparison        b1_male_aehplus_pulmonary_speed_fev_numbercomparison.out        
b1              female   a                   pulmonary                memory                    fev                    wordlistdelay           b1_female_a_pulmonary_memory_fev_wordlistdelay.out              
b1              female   ae                  pulmonary                memory                    fev                    wordlistdelay           b1_female_ae_pulmonary_memory_fev_wordlistdelay.out             
b1              female   aeh                 pulmonary                memory                    fev                    wordlistdelay           b1_female_aeh_pulmonary_memory_fev_wordlistdelay.out            
b1              female   aehplus             pulmonary                memory                    fev                    wordlistdelay           b1_female_aehplus_pulmonary_memory_fev_wordlistdelay.out        
b1              male     a                   pulmonary                memory                    fev                    wordlistdelay           b1_male_a_pulmonary_memory_fev_wordlistdelay.out                
b1              male     ae                  pulmonary                memory                    fev                    wordlistdelay           b1_male_ae_pulmonary_memory_fev_wordlistdelay.out               
b1              male     aeh                 pulmonary                memory                    fev                    wordlistdelay           b1_male_aeh_pulmonary_memory_fev_wordlistdelay.out              
b1              male     aehplus             pulmonary                memory                    fev                    wordlistdelay           b1_male_aehplus_pulmonary_memory_fev_wordlistdelay.out          
b1              female   a                   pulmonary                memory                    fev                    wordlistimmed           b1_female_a_pulmonary_memory_fev_wordlistimmed.out              
b1              female   ae                  pulmonary                memory                    fev                    wordlistimmed           b1_female_ae_pulmonary_memory_fev_wordlistimmed.out             
b1              female   aeh                 pulmonary                memory                    fev                    wordlistimmed           b1_female_aeh_pulmonary_memory_fev_wordlistimmed.out            
b1              female   aehplus             pulmonary                memory                    fev                    wordlistimmed           b1_female_aehplus_pulmonary_memory_fev_wordlistimmed.out        
b1              male     a                   pulmonary                memory                    fev                    wordlistimmed           b1_male_a_pulmonary_memory_fev_wordlistimmed.out                
b1              male     ae                  pulmonary                memory                    fev                    wordlistimmed           b1_male_ae_pulmonary_memory_fev_wordlistimmed.out               
b1              male     aeh                 pulmonary                memory                    fev                    wordlistimmed           b1_male_aeh_pulmonary_memory_fev_wordlistimmed.out              
b1              male     aehplus             pulmonary                memory                    fev                    wordlistimmed           b1_male_aehplus_pulmonary_memory_fev_wordlistimmed.out          
b1              female   a                   pulmonary                memory                    fev                    wordlistrecog           b1_female_a_pulmonary_memory_fev_wordlistrecog.out              
b1              female   ae                  pulmonary                memory                    fev                    wordlistrecog           b1_female_ae_pulmonary_memory_fev_wordlistrecog.out             
b1              female   aeh                 pulmonary                memory                    fev                    wordlistrecog           b1_female_aeh_pulmonary_memory_fev_wordlistrecog.out            
b1              female   aehplus             pulmonary                memory                    fev                    wordlistrecog           b1_female_aehplus_pulmonary_memory_fev_wordlistrecog.out        
b1              male     a                   pulmonary                memory                    fev                    wordlistrecog           b1_male_a_pulmonary_memory_fev_wordlistrecog.out                
b1              male     ae                  pulmonary                memory                    fev                    wordlistrecog           b1_male_ae_pulmonary_memory_fev_wordlistrecog.out               
b1              male     aeh                 pulmonary                memory                    fev                    wordlistrecog           b1_male_aeh_pulmonary_memory_fev_wordlistrecog.out              
b1              male     aehplus             pulmonary                memory                    fev                    wordlistrecog           b1_male_aehplus_pulmonary_memory_fev_wordlistrecog.out          


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
