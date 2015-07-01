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
156
```
models, using univariate and bivariate specifications:

```

 b1  u1 
147   9 
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
                ds$output_file[!is_valid]
1        b1_male_age_muscle_executive.out
2        b1_male_age_muscle_knowledge.out
3          u1_female_age_muscle_nocog.out
4        b1_male_age_muscle_reasoning.out
5            b1_male_age_muscle_speed.out
6     b1_male_age_muscle_visuospatial.out
7     b1_male_age_pulmonary_executive.out
8     b1_male_age_pulmonary_knowledge.out
9       u1_female_age_pulmonary_noCog.out
10        u1_male_age_pulmonary_noCog.out
11    b1_male_age_pulmonary_reasoning.out
12        b1_male_age_pulmonary_speed.out
13 b1_male_age_pulmonary_visuospatial.out
14        u1_female_age_walking_noCog.out
15          u1_male_age_walking_noCog.out
```

After removing incorrectly named files, there are

```
141
```
models, which output files contains all 7 components. We have corrected the obvious typos, but some names (of constructs and measures) require your attention. 

# Simple Counts
In this section, **model specification (columns)** are cross-tabulated with **constructs or measures (rows)**, displaying the number of valid models in each category. 

## Physical constructs


```
           
            b1 u1
  muscle    77 2 
  pulmonary 60 2 
```


## Physical measures


```
      
       b1 u1
  fev  60 2 
  grip 77 2 
```

## Cognitive constructs


```
              
               b1 u1
  executive    14 . 
  fluency      5  . 
  knowledge    9  . 
  language     14 . 
  memory       54 . 
  mental       8  . 
  reasoning    9  . 
  speed        15 . 
  Univar       .  4 
  visuospatial 9  . 
```


## Cognitive measures


```
                      
                       b1 u1
  bnt                  7  . 
  bostonstorydelay     7  . 
  bostonstoryimmediate 7  . 
  categories           5  . 
  complexideas         7  . 
  digitordering        6  . 
  digitsback           8  . 
  digitsforward        7  . 
  lineorientation      9  . 
  logicalmemorydelay   7  . 
  logicalmemoryimmed   5  . 
  matrices             9  . 
  mmse                 8  . 
  nart                 9  . 
  numbercomparison     7  . 
  symbol               8  . 
  univar               .  4 
  wordlistdelay        7  . 
  wordlistimmed        7  . 
  wordlistrecog        7  . 
```
</br></br></br>

# BIVARIATE MODELS

In this section, **constructs (columns)** are cross-tabulated with  **measures (rows)** that opeationalize them in the models. Each non-blank element in a column indicates a unique **measure (row)** of the **construct (column)**. The numeric value shows how many different versions of this model used this specific pair of construct and measure: model may differ on the subgroup (male, female), and the set of covariates (empty, a, ae, aeh, aehplus, full).


## Physical 
Physical **constructs** (columns) by physical **measures** (rows) in BIVARIATE models

```
      
       muscle pulmonary
  fev  .      60       
  grip 77     .        
```

## Cognitive 
Cognitive **constructs** (columns) by cognitive **measures** (rows) in BIVARIATE models

```
                      
                       executive fluency knowledge language memory mental reasoning speed visuospatial
  bnt                  .         .       .         7        .      .      .         .     .           
  bostonstorydelay     .         .       .         .        7      .      .         .     .           
  bostonstoryimmediate .         .       .         .        7      .      .         .     .           
  categories           .         5       .         .        .      .      .         .     .           
  complexideas         .         .       .         7        .      .      .         .     .           
  digitordering        6         .       .         .        .      .      .         .     .           
  digitsback           8         .       .         .        .      .      .         .     .           
  digitsforward        .         .       .         .        7      .      .         .     .           
  lineorientation      .         .       .         .        .      .      .         .     9           
  logicalmemorydelay   .         .       .         .        7      .      .         .     .           
  logicalmemoryimmed   .         .       .         .        5      .      .         .     .           
  matrices             .         .       .         .        .      .      9         .     .           
  mmse                 .         .       .         .        .      8      .         .     .           
  nart                 .         .       9         .        .      .      .         .     .           
  numbercomparison     .         .       .         .        .      .      .         7     .           
  symbol               .         .       .         .        .      .      .         8     .           
  wordlistdelay        .         .       .         .        7      .      .         .     .           
  wordlistimmed        .         .       .         .        7      .      .         .     .           
  wordlistrecog        .         .       .         .        7      .      .         .     .           
```


## Constructs
Number of models with the following **physical constructs** (columns) and  **cognitive constructs** (rows)


```
              
               muscle pulmonary
  executive    7      7        
  fluency      5      .        
  knowledge    5      4        
  language     8      6        
  memory       30     24       
  mental       4      4        
  reasoning    5      4        
  speed        8      7        
  visuospatial 5      4        
```

## Phys.Constructs
Number of models with the following  **physical constructs** (columns) and  **cognitive measures** (rows)

```
                      
                       muscle pulmonary
  bnt                  4      3        
  bostonstorydelay     4      3        
  bostonstoryimmediate 4      3        
  categories           5      .        
  complexideas         4      3        
  digitordering        3      3        
  digitsback           4      4        
  digitsforward        4      3        
  lineorientation      5      4        
  logicalmemorydelay   4      3        
  logicalmemoryimmed   2      3        
  matrices             5      4        
  mmse                 4      4        
  nart                 5      4        
  numbercomparison     4      3        
  symbol               4      4        
  wordlistdelay        4      3        
  wordlistimmed        4      3        
  wordlistrecog        4      3        
```

## Cog.Constructs
Number of models with the following  **physical measure** (columns) and  **cognitive constructs** (rows)

```
              
               fev grip
  executive    7   7   
  fluency      .   5   
  knowledge    4   5   
  language     6   8   
  memory       24  30  
  mental       4   4   
  reasoning    4   5   
  speed        7   8   
  visuospatial 4   5   
```

## Measures
Number of models with the following  **physical measures** (columns) and  **cognitive measures** (rows)

```
                      
                       fev grip
  bnt                  3   4   
  bostonstorydelay     3   4   
  bostonstoryimmediate 3   4   
  categories           .   5   
  complexideas         3   4   
  digitordering        3   3   
  digitsback           4   4   
  digitsforward        3   4   
  lineorientation      4   5   
  logicalmemorydelay   3   4   
  logicalmemoryimmed   3   2   
  matrices             4   5   
  mmse                 4   4   
  nart                 4   5   
  numbercomparison     3   4   
  symbol               4   4   
  wordlistdelay        3   4   
  wordlistimmed        3   4   
  wordlistrecog        3   4   
```
</br></br></br>


# UNIVARIATE MODELS

In this section, **constructs (columns)** are cross-tabulated with  **measures (rows)** that opeationalize them in the models. Each non-blank element in a column indicates a unique **measure (row)** of the **construct (column)**. The numeric value counts the different versions of the model (sex, covariates) that used this specific pair of construct and measure. 

## Physical 
Physical constructs (columns) by physical measures (rows) in UNIVARIATE models

```
         muscle pulmonary
                         
u1 fev        .         2
   grip       2         .
```

## Cognitive
Cognitive constructs (columns) by cognitive measures (rows) in UNIVARIATE models

```
           Univar
                 
u1 univar       4
```
</br></br></br>

# List of models
## b1


model<br/>tag   sex      predictor<br/>set   physical<br/>construct   cognitive<br/>construct   physical<br/>measure   cognitive<br/>measure   file name                                                        
--------------  -------  ------------------  -----------------------  ------------------------  ---------------------  ----------------------  -----------------------------------------------------------------
b1              female   aeh                 muscle                   attention                 grip                   digitsforward           b1_female_aeh_muscle_attention_grip_digitsforward.out            
b1              female   aehplus             muscle                   attention                 grip                   digitsforward           b1_female_aehplus_muscle_attention_grip_digitsforward.out        
b1              male     aeh                 muscle                   attention                 grip                   digitsforward           b1_male_aeh_muscle_attention_grip_digitsforward.out              
b1              male     aehplus             muscle                   attention                 grip                   digitsforward           b1_male_aehplus_muscle_attention_grip_digitsforward.out          
b1              female   aeh                 muscle                   executive                 grip                   categoryfluency         b1_female_aeh_muscle_executive_grip_categoryfluency.out          
b1              female   aeh                 muscle                   executive                 grip                   digitordering           b1_female_aeh_muscle_executive_grip_digitordering.out            
b1              female   aeh                 muscle                   executive                 grip                   digitsback              b1_female_aeh_muscle_executive_grip_digitsback.out               
b1              female   aehplus             muscle                   executive                 grip                   categoryfluency         b1_female_aehplus_muscle_executive_grip_categoryfluency.out      
b1              female   aehplus             muscle                   executive                 grip                   digitordering           b1_female_aehplus_muscle_executive_grip_digitordering.out        
b1              female   aehplus             muscle                   executive                 grip                   digitsback              b1_female_aehplus_muscle_executive_grip_digitsback.out           
b1              female   age                 muscle                   executive                 grip                   categoryfluency         b1_female_age_muscle_executive_grip_categoryfluency.out          
b1              female   age                 muscle                   executive                 grip                   digitsback              b1_female_age_muscle_executive_grip_digitsback.out               
b1              male     aeh                 muscle                   executive                 grip                   categoryfluency         b1_male_aeh_muscle_executive_grip_categoryfluency.out            
b1              male     aehplus             muscle                   executive                 grip                   categoryfluency         b1_male_aehplus_muscle_executive_grip_categoryfluency.out        
b1              male     aehplus             muscle                   executive                 grip                   digitordering           b1_male_aehplus_muscle_executive_grip_digitordering.out          
b1              male     aehplus             muscle                   executive                 grip                   digitsback              b1_male_aehplus_muscle_executive_grip_digitsback.out             
b1              male     age                 muscle                   executive                 NA                     NA                      b1_male_age_muscle_executive.out                                 
b1              female   aeh                 muscle                   global                    grip                   mmse                    b1_female_aeh_muscle_global_grip_mmse.out                        
b1              female   aehplus             muscle                   global                    grip                   mmse                    b1_female_aehplus_muscle_global_grip_mmse.out                    
b1              male     aeh                 muscle                   global                    grip                   mmse                    b1_male_aeh_muscle_global_grip_mmse.out                          
b1              male     aehplus             muscle                   global                    grip                   mmse                    b1_male_aehplus_muscle_global_grip_mmse.out                      
b1              female   aeh                 muscle                   knowledge                 grip                   nart                    b1_female_aeh_muscle_knowledge_grip_nart.out                     
b1              female   aehplus             muscle                   knowledge                 grip                   nart                    b1_female_aehplus_muscle_knowledge_grip_nart.out                 
b1              female   age                 muscle                   knowledge                 grip                   nart                    b1_female_age_muscle_knowledge_grip_nart.out                     
b1              male     aeh                 muscle                   knowledge                 grip                   nart                    b1_male_aeh_muscle_knowledge_grip_nart.out                       
b1              male     aehplus             muscle                   knowledge                 grip                   nart                    b1_male_aehplus_muscle_knowledge_grip_nart.out                   
b1              male     age                 muscle                   knowledge                 NA                     NA                      b1_male_age_muscle_knowledge.out                                 
b1              female   aeh                 muscle                   language                  grip                   bnt                     b1_female_aeh_muscle_language_grip_bnt.out                       
b1              female   aeh                 muscle                   language                  grip                   complexideas            b1_female_aeh_muscle_language_grip_complexideas.out              
b1              female   aehplus             muscle                   language                  grip                   bnt                     b1_female_aehplus_muscle_language_grip_bnt.out                   
b1              female   aehplus             muscle                   language                  grip                   complexideas            b1_female_aehplus_muscle_language_grip_complexideas.out          
b1              female   age                 muscle                   language                  grip                   bnt                     b1_female_age_muscle_language_grip_bnt.out                       
b1              male     aeh                 muscle                   language                  grip                   bnt                     b1_male_aeh_muscle_language_grip_bnt.out                         
b1              male     aeh                 muscle                   language                  grip                   complexideas            b1_male_aeh_muscle_language_grip_complexideas.out                
b1              male     aehplus             muscle                   language                  grip                   complexideas            b1_male_aehplus_muscle_language_grip_complexideas.out            
b1              female   aeh                 muscle                   memory                    grip                   bostonstorydelay        b1_female_aeh_muscle_memory_grip_bostonstorydelay.out            
b1              female   aeh                 muscle                   memory                    grip                   bostonstoryimmediate    b1_female_aeh_muscle_memory_grip_bostonstoryimmediate.out        
b1              female   aeh                 muscle                   memory                    grip                   logicalmemorydelay      b1_female_aeh_muscle_memory_grip_logicalmemorydelay.out          
b1              female   aeh                 muscle                   memory                    grip                   wordlistdelay           b1_female_aeh_muscle_memory_grip_wordlistdelay.out               
b1              female   aeh                 muscle                   memory                    grip                   wordlistimmed           b1_female_aeh_muscle_memory_grip_wordlistimmed.out               
b1              female   aeh                 muscle                   memory                    grip                   wordlistrecog           b1_female_aeh_muscle_memory_grip_wordlistrecog.out               
b1              female   aehplus             muscle                   memory                    grip                   bostonstorydelay        b1_female_aehplus_muscle_memory_grip_bostonstorydelay.out        
b1              female   aehplus             muscle                   memory                    grip                   bostonstoryimmediate    b1_female_aehplus_muscle_memory_grip_bostonstoryimmediate.out    
b1              female   aehplus             muscle                   memory                    grip                   logicalmemorydelay      b1_female_aehplus_muscle_memory_grip_logicalmemorydelay.out      
b1              female   aehplus             muscle                   memory                    grip                   logicalmemoryimmed      b1_female_aehplus_muscle_memory_grip_logicalmemoryimmed.out      
b1              female   aehplus             muscle                   memory                    grip                   wordlistdelay           b1_female_aehplus_muscle_memory_grip_wordlistdelay.out           
b1              female   aehplus             muscle                   memory                    grip                   wordlistimmed           b1_female_aehplus_muscle_memory_grip_wordlistimmed.out           
b1              female   aehplus             muscle                   memory                    grip                   wordlistrecog           b1_female_aehplus_muscle_memory_grip_wordlistrecog.out           
b1              male     aeh                 muscle                   memory                    grip                   bostonstorydelay        b1_male_aeh_muscle_memory_grip_bostonstorydelay.out              
b1              male     aeh                 muscle                   memory                    grip                   bostonstoryimmediate    b1_male_aeh_muscle_memory_grip_bostonstoryimmediate.out          
b1              male     aeh                 muscle                   memory                    grip                   logicalmemorydelay      b1_male_aeh_muscle_memory_grip_logicalmemorydelay.out            
b1              male     aeh                 muscle                   memory                    grip                   logicalmemoryimmed      b1_male_aeh_muscle_memory_grip_logicalmemoryimmed.out            
b1              male     aeh                 muscle                   memory                    grip                   wordlistdelay           b1_male_aeh_muscle_memory_grip_wordlistdelay.out                 
b1              male     aeh                 muscle                   memory                    grip                   wordlistimmed           b1_male_aeh_muscle_memory_grip_wordlistimmed.out                 
b1              male     aeh                 muscle                   memory                    grip                   wordlistrecog           b1_male_aeh_muscle_memory_grip_wordlistrecog.out                 
b1              male     aehplus             muscle                   memory                    grip                   bostonstorydelay        b1_male_aehplus_muscle_memory_grip_bostonstorydelay.out          
b1              male     aehplus             muscle                   memory                    grip                   bostonstoryimmediate    b1_male_aehplus_muscle_memory_grip_bostonstoryimmediate.out      
b1              male     aehplus             muscle                   memory                    grip                   logicalmemorydelay      b1_male_aehplus_muscle_memory_grip_logicalmemorydelay.out        
b1              male     aehplus             muscle                   memory                    grip                   wordlistdelay           b1_male_aehplus_muscle_memory_grip_wordlistdelay.out             
b1              male     aehplus             muscle                   memory                    grip                   wordlistimmed           b1_male_aehplus_muscle_memory_grip_wordlistimmed.out             
b1              male     aehplus             muscle                   memory                    grip                   wordlistrecog           b1_male_aehplus_muscle_memory_grip_wordlistrecog.out             
b1              female   aeh                 muscle                   reasoning                 grip                   matrices                b1_female_aeh_muscle_reasoning_grip_matrices.out                 
b1              female   aehplus             muscle                   reasoning                 grip                   matrices                b1_female_aehplus_muscle_reasoning_grip_matrices.out             
b1              female   age                 muscle                   reasoning                 grip                   matrices                b1_female_age_muscle_reasoning_grip_matrices.out                 
b1              male     aeh                 muscle                   reasoning                 grip                   matrices                b1_male_aeh_muscle_reasoning_grip_matrices.out                   
b1              male     aehplus             muscle                   reasoning                 grip                   matrices                b1_male_aehplus_muscle_reasoning_grip_matrices.out               
b1              male     age                 muscle                   reasoning                 NA                     NA                      b1_male_age_muscle_reasoning.out                                 
b1              female   aeh                 muscle                   speed                     grip                   digitsymbol             b1_female_aeh_muscle_speed_grip_digitsymbol.out                  
b1              female   aeh                 muscle                   speed                     grip                   numbercomparison        b1_female_aeh_muscle_speed_grip_numbercomparison.out             
b1              female   aehplus             muscle                   speed                     grip                   digitsymbol             b1_female_aehplus_muscle_speed_grip_digitsymbol.out              
b1              female   aehplus             muscle                   speed                     grip                   numbercomparison        b1_female_aehplus_muscle_speed_grip_numbercomparison.out         
b1              male     aeh                 muscle                   speed                     grip                   digitsymbol             b1_male_aeh_muscle_speed_grip_digitsymbol.out                    
b1              male     aeh                 muscle                   speed                     grip                   numbercomparison        b1_male_aeh_muscle_speed_grip_numbercomparison.out               
b1              male     aehplus             muscle                   speed                     grip                   digitsymbol             b1_male_aehplus_muscle_speed_grip_digitsymbol.out                
b1              male     aehplus             muscle                   speed                     grip                   numbercomparison        b1_male_aehplus_muscle_speed_grip_numbercomparison.out           
b1              male     age                 muscle                   speed                     NA                     NA                      b1_male_age_muscle_speed.out                                     
b1              female   aeh                 muscle                   visuospatial              grip                   lineorientation         b1_female_aeh_muscle_visuospatial_grip_lineorientation.out       
b1              female   aehplus             muscle                   visuospatial              grip                   lineorientation         b1_female_aehplus_muscle_visuospatial_grip_lineorientation.out   
b1              female   age                 muscle                   visuospatial              grip                   lineorientation         b1_female_age_muscle_visuospatial_grip_lineorientation.out       
b1              male     aeh                 muscle                   visuospatial              grip                   lineorientation         b1_male_aeh_muscle_visuospatial_grip_lineorientation.out         
b1              male     aehplus             muscle                   visuospatial              grip                   lineorientation         b1_male_aehplus_muscle_visuospatial_grip_lineorientation.out     
b1              male     age                 muscle                   visuospatial              NA                     NA                      b1_male_age_muscle_visuospatial.out                              
b1              female   aehplus             pulmonary                attention                 fev                    digitsforward           b1_female_aehplus_pulmonary_attention_fev_digitsforward.out      
b1              male     aeh                 pulmonary                attention                 fev                    digitsforward           b1_male_aeh_pulmonary_attention_fev_digitsforward.out            
b1              male     aehplus             pulmonary                attention                 fev                    digitsforward           b1_male_aehplus_pulmonary_attention_fev_digitsforward.out        
b1              female   aehplus             pulmonary                executive                 fev                    digitordering           b1_female_aehplus_pulmonary_executive_fev_digitordering.out      
b1              female   aehplus             pulmonary                executive                 fev                    digitsback              b1_female_aehplus_pulmonary_executive_fev_digitsback.out         
b1              female   age                 pulmonary                executive                 fev                    digitsback              b1_female_age_pulmonary_executive_fev_digitsback.out             
b1              male     aeh                 pulmonary                executive                 fev                    digitordering           b1_male_aeh_pulmonary_executive_fev_digitordering.out            
b1              male     aeh                 pulmonary                executive                 fev                    digitsback              b1_male_aeh_pulmonary_executive_fev_digitsback.out               
b1              male     aehplus             pulmonary                executive                 fev                    digitordering           b1_male_aehplus_pulmonary_executive_fev_digitordering.out        
b1              male     aehplus             pulmonary                executive                 fev                    digitsback              b1_male_aehplus_pulmonary_executive_fev_digitsback.out           
b1              male     age                 pulmonary                executive                 NA                     NA                      b1_male_age_pulmonary_executive.out                              
b1              female   aehplus             pulmonary                global                    fev                    mmse                    b1_female_aehplus_pulmonary_global_fev_mmse.out                  
b1              female   age                 pulmonary                global                    fev                    mmse                    b1_female_age_pulmonary_global_fev_mmse.out                      
b1              male     aeh                 pulmonary                global                    fev                    mmse                    b1_male_aeh_pulmonary_global_fev_mmse.out                        
b1              male     aehplus             pulmonary                global                    fev                    mmse                    b1_male_aehplus_pulmonary_global_fev_mmse.out                    
b1              female   aehplus             pulmonary                knowledge                 fev                    nart                    b1_female_aehplus_pulmonary_knowledge_fev_nart.out               
b1              female   age                 pulmonary                knowledge                 fev                    nart                    b1_female_age_pulmonary_knowledge_fev_nart.out                   
b1              male     aeh                 pulmonary                knowledge                 fev                    nart                    b1_male_aeh_pulmonary_knowledge_fev_nart.out                     
b1              male     aehplus             pulmonary                knowledge                 fev                    nart                    b1_male_aehplus_pulmonary_knowledge_fev_nart.out                 
b1              male     age                 pulmonary                knowledge                 NA                     NA                      b1_male_age_pulmonary_knowledge.out                              
b1              female   aehplus             pulmonary                language                  fev                    bnt                     b1_female_aehplus_pulmonary_language_fev_bnt.out                 
b1              female   aehplus             pulmonary                language                  fev                    complexideas            b1_female_aehplus_pulmonary_language_fev_complexideas.out        
b1              male     aeh                 pulmonary                language                  fev                    bnt                     b1_male_aeh_pulmonary_language_fev_bnt.out                       
b1              male     aeh                 pulmonary                language                  fev                    complexideas            b1_male_aeh_pulmonary_language_fev_complexideas.out              
b1              male     aehplus             pulmonary                language                  fev                    bnt                     b1_male_aehplus_pulmonary_language_fev_bnt.out                   
b1              male     aehplus             pulmonary                language                  fev                    complexideas            b1_male_aehplus_pulmonary_language_fev_complexideas.out          
b1              female   aehplus             pulmonary                memory                    fev                    bostonstorydelay        b1_female_aehplus_pulmonary_memory_fev_bostonstorydelay.out      
b1              female   aehplus             pulmonary                memory                    fev                    bostonstoryimmediate    b1_female_aehplus_pulmonary_memory_fev_bostonstoryimmediate.out  
b1              female   aehplus             pulmonary                memory                    fev                    logicalmemorydelay      b1_female_aehplus_pulmonary_memory_fev_logicalmemorydelay.out    
b1              female   aehplus             pulmonary                memory                    fev                    logicalmemoryimmed      b1_female_aehplus_pulmonary_memory_fev_logicalmemoryimmed.out    
b1              female   aehplus             pulmonary                memory                    fev                    wordlistdelay           b1_female_aehplus_pulmonary_memory_fev_wordlistdelay.out         
b1              female   aehplus             pulmonary                memory                    fev                    wordlistimmed           b1_female_aehplus_pulmonary_memory_fev_wordlistimmed.out         
b1              female   aehplus             pulmonary                memory                    fev                    wordlistrecog           b1_female_aehplus_pulmonary_memory_fev_wordlistrecog.out         
b1              male     aeh                 pulmonary                memory                    fev                    bostonstorydelay        b1_male_aeh_pulmonary_memory_fev_bostonstorydelay.out            
b1              male     aeh                 pulmonary                memory                    fev                    bostonstoryimmediate    b1_male_aeh_pulmonary_memory_fev_bostonstoryimmediate.out        
b1              male     aeh                 pulmonary                memory                    fev                    logicalmemorydelay      b1_male_aeh_pulmonary_memory_fev_logicalmemorydelay.out          
b1              male     aeh                 pulmonary                memory                    fev                    logicalmemoryimmed      b1_male_aeh_pulmonary_memory_fev_logicalmemoryimmed.out          
b1              male     aeh                 pulmonary                memory                    fev                    wordlistdelay           b1_male_aeh_pulmonary_memory_fev_wordlistdelay.out               
b1              male     aeh                 pulmonary                memory                    fev                    wordlistimmed           b1_male_aeh_pulmonary_memory_fev_wordlistimmed.out               
b1              male     aeh                 pulmonary                memory                    fev                    wordlistrecog           b1_male_aeh_pulmonary_memory_fev_wordlistrecog.out               
b1              male     aehplus             pulmonary                memory                    fev                    bostonstorydelay        b1_male_aehplus_pulmonary_memory_fev_bostonstorydelay.out        
b1              male     aehplus             pulmonary                memory                    fev                    bostonstoryimmediate    b1_male_aehplus_pulmonary_memory_fev_bostonstoryimmediate.out    
b1              male     aehplus             pulmonary                memory                    fev                    logicalmemorydelay      b1_male_aehplus_pulmonary_memory_fev_logicalmemorydelay.out      
b1              male     aehplus             pulmonary                memory                    fev                    logicalmemoryimmed      b1_male_aehplus_pulmonary_memory_fev_logicalmemoryimmed.out      
b1              male     aehplus             pulmonary                memory                    fev                    wordlistdelay           b1_male_aehplus_pulmonary_memory_fev_wordlistdelay.out           
b1              male     aehplus             pulmonary                memory                    fev                    wordlistimmed           b1_male_aehplus_pulmonary_memory_fev_wordlistimmed.out           
b1              male     aehplus             pulmonary                memory                    fev                    wordlistrecog           b1_male_aehplus_pulmonary_memory_fev_wordlistrecog.out           
b1              female   aehplus             pulmonary                reasoning                 fev                    matrices                b1_female_aehplus_pulmonary_reasoning_fev_matrices.out           
b1              female   age                 pulmonary                reasoning                 fev                    matrices                b1_female_age_pulmonary_reasoning_fev_matrices.out               
b1              male     aeh                 pulmonary                reasoning                 fev                    matrices                b1_male_aeh_pulmonary_reasoning_fev_matrices.out                 
b1              male     aehplus             pulmonary                reasoning                 fev                    matrices                b1_male_aehplus_pulmonary_reasoning_fev_matrices.out             
b1              male     age                 pulmonary                reasoning                 NA                     NA                      b1_male_age_pulmonary_reasoning.out                              
b1              female   aehplus             pulmonary                speed                     fev                    digitsymbol             b1_female_aehplus_pulmonary_speed_fev_digitsymbol.out            
b1              female   aehplus             pulmonary                speed                     fev                    numbercomparison        b1_female_aehplus_pulmonary_speed_fev_numbercomparison.out       
b1              female   age                 pulmonary                speed                     fev                    digitsymbol             b1_female_age_pulmonary_speed_fev_digitsymbol.out                
b1              male     aeh                 pulmonary                speed                     fev                    digitsymbol             b1_male_aeh_pulmonary_speed_fev_digitsymbol.out                  
b1              male     aeh                 pulmonary                speed                     fev                    numbercomparison        b1_male_aeh_pulmonary_speed_fev_numbercomparison.out             
b1              male     aehplus             pulmonary                speed                     fev                    digitsymbol             b1_male_aehplus_pulmonary_speed_fev_digitsymbol.out              
b1              male     aehplus             pulmonary                speed                     fev                    numbercomparison        b1_male_aehplus_pulmonary_speed_fev_numbercomparison.out         
b1              male     age                 pulmonary                speed                     NA                     NA                      b1_male_age_pulmonary_speed.out                                  
b1              female   aehplus             pulmonary                visuospatial              fev                    lineorientation         b1_female_aehplus_pulmonary_visuospatial_fev_lineorientation.out 
b1              female   age                 pulmonary                visuospatial              fev                    lineorientation         b1_female_age_pulmonary_visuospatial_fev_lineorientation.out     
b1              male     aeh                 pulmonary                visuospatial              fev                    lineorientation         b1_male_aeh_pulmonary_visuospatial_fev_lineorientation.out       
b1              male     aehplus             pulmonary                visuospatial              fev                    lineorientation         b1_male_aehplus_pulmonary_visuospatial_fev_lineorientation.out   
b1              male     age                 pulmonary                visuospatial              NA                     NA                      b1_male_age_pulmonary_visuospatial.out                           

## u1


model<br/>tag   sex      predictor<br/>set   physical<br/>construct   cognitive<br/>construct   physical<br/>measure   cognitive<br/>measure   file name                                         
--------------  -------  ------------------  -----------------------  ------------------------  ---------------------  ----------------------  --------------------------------------------------
u1              female   age                 muscle                   nocog                     NA                     NA                      u1_female_age_muscle_nocog.out                    
u1              female   empty               muscle                   nocog                     grip                   nocogspec               u1_female_empty_muscle_nocog_grip_nocogspec.out   
u1              male     empty               muscle                   nocog                     grip                   nocogspec               u1_male_empty_muscle_nocog_grip_nocogspec.out     
u1              female   empty               pulmonary                nocog                     fev                    nocogspec               u1_female_empty_pulmonary_nocog_fev_nocogspec.out 
u1              male     empty               pulmonary                nocog                     fev                    nocogspec               u1_male_empty_pulmonary_nocog_fev_nocogspec.out   
u1              female   age                 pulmonary                noCog                     NA                     NA                      u1_female_age_pulmonary_noCog.out                 
u1              male     age                 pulmonary                noCog                     NA                     NA                      u1_male_age_pulmonary_noCog.out                   
u1              female   age                 walking                  noCog                     NA                     NA                      u1_female_age_walking_noCog.out                   
u1              male     age                 walking                  noCog                     NA                     NA                      u1_male_age_walking_noCog.out                     


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
