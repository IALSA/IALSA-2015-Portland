# OCTO-Twin: Model catalog



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
[1] "octo"
```

has provided us with the total number of 

```
88
```
models, using univariate and bivariate specifications:

```

b1 
88 
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
88
```
models, which output files contains all 7 components. We have corrected the obvious typos, but some names (of constructs and measures) require your attention. 

# Simple Counts
In this section, **model specification (columns)** are cross-tabulated with **constructs or measures (rows)**, displaying the number of valid models in each category. 

## Physical constructs


```
           
            b1
  muscle    44
  pulmonary 44
```


## Physical measures


```
      
       b1
  grip 44
  pek  44
```

## Cognitive constructs


```
           
            b1
  executive 8 
  knowledge 16
  memory    24
  mental    8 
  reasoning 16
  speed     16
```


## Cognitive measures


```
               
                b1
  block         8 
  digitsback    8 
  digitsforward 8 
  figurelogic   8 
  info          8 
  mirrecall     8 
  mmse          8 
  proserecall   8 
  psif          8 
  symbol        8 
  synonyms      8 
```
</br></br></br>

# BIVARIATE MODELS

In this section, **constructs (columns)** are cross-tabulated with  **measures (rows)** that opeationalize them in the models. Each non-blank element in a column indicates a unique **measure (row)** of the **construct (column)**. The numeric value shows how many different versions of this model used this specific pair of construct and measure: model may differ on the subgroup (male, female), and the set of covariates (empty, a, ae, aeh, aehplus, full).


## Physical 
Physical **constructs** (columns) by physical **measures** (rows) in BIVARIATE models

```
      
       muscle pulmonary
  grip 44     .        
  pek  .      44       
```

## Cognitive 
Cognitive **constructs** (columns) by cognitive **measures** (rows) in BIVARIATE models

```
               
                executive knowledge memory mental reasoning speed
  block         .         .         .      .      8         .    
  digitsback    8         .         .      .      .         .    
  digitsforward .         .         8      .      .         .    
  figurelogic   .         .         .      .      8         .    
  info          .         8         .      .      .         .    
  mirrecall     .         .         8      .      .         .    
  mmse          .         .         .      8      .         .    
  proserecall   .         .         8      .      .         .    
  psif          .         .         .      .      .         8    
  symbol        .         .         .      .      .         8    
  synonyms      .         8         .      .      .         .    
```


## Constructs
Number of models with the following **physical constructs** (columns) and  **cognitive constructs** (rows)


```
           
            muscle pulmonary
  executive 4      4        
  knowledge 8      8        
  memory    12     12       
  mental    4      4        
  reasoning 8      8        
  speed     8      8        
```

## Phys.Constructs
Number of models with the following  **physical constructs** (columns) and  **cognitive measures** (rows)

```
               
                muscle pulmonary
  block         4      4        
  digitsback    4      4        
  digitsforward 4      4        
  figurelogic   4      4        
  info          4      4        
  mirrecall     4      4        
  mmse          4      4        
  proserecall   4      4        
  psif          4      4        
  symbol        4      4        
  synonyms      4      4        
```

## Cog.Constructs
Number of models with the following  **physical measure** (columns) and  **cognitive constructs** (rows)

```
           
            grip pek
  executive 4    4  
  knowledge 8    8  
  memory    12   12 
  mental    4    4  
  reasoning 8    8  
  speed     8    8  
```

## Measures
Number of models with the following  **physical measures** (columns) and  **cognitive measures** (rows)

```
               
                grip pek
  block         4    4  
  digitsback    4    4  
  digitsforward 4    4  
  figurelogic   4    4  
  info          4    4  
  mirrecall     4    4  
  mmse          4    4  
  proserecall   4    4  
  psif          4    4  
  symbol        4    4  
  synonyms      4    4  
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
--------------  -------  ------------------  -----------------------  ------------------------  ---------------------  ----------------------  ---------------------------------------------------------
b1              female   aeh                 muscle                   reasoning                 grip                   block                   b1_female_aeh_muscle_reasoning_grip_blockdesign.out      
b1              female   a                   muscle                   reasoning                 grip                   block                   b1_female_age_muscle_reasoning_grip_blockdesign.out      
b1              male     aeh                 muscle                   reasoning                 grip                   block                   b1_male_aeh_muscle_reasoning_grip_blockdesign.out        
b1              male     a                   muscle                   reasoning                 grip                   block                   b1_male_age_muscle_reasoning_grip_blockdesign.out        
b1              female   aeh                 pulmonary                reasoning                 pek                    block                   b1_female_aeh_pulmonary_reasoning_pek_blockdesign.out    
b1              female   a                   pulmonary                reasoning                 pek                    block                   b1_female_age_pulmonary_reasoning_pek_blockdesign.out    
b1              male     aeh                 pulmonary                reasoning                 pek                    block                   b1_male_aeh_pulmonary_reasoning_pek_blockdesign.out      
b1              male     a                   pulmonary                reasoning                 pek                    block                   b1_male_age_pulmonary_reasoning_pek_blockdesign.out      
b1              female   aeh                 muscle                   executive                 grip                   digitsback              b1_female_aeh_muscle_memory_grip_digitspanbackward.out   
b1              female   a                   muscle                   executive                 grip                   digitsback              b1_female_age_muscle_memory_grip_digitspanbackward.out   
b1              male     aeh                 muscle                   executive                 grip                   digitsback              b1_male_aeh_muscle_memory_grip_digitspanbackward.out     
b1              male     a                   muscle                   executive                 grip                   digitsback              b1_male_age_muscle_memory_grip_digitspanbackward.out     
b1              female   aeh                 pulmonary                executive                 pek                    digitsback              b1_female_aeh_pulmonary_memory_pek_digitspanbackward.out 
b1              female   a                   pulmonary                executive                 pek                    digitsback              b1_female_age_pulmonary_memory_pek_digitspanbackward.out 
b1              male     aeh                 pulmonary                executive                 pek                    digitsback              b1_male_aeh_pulmonary_memory_pek_digitspanbackward.out   
b1              male     a                   pulmonary                executive                 pek                    digitsback              b1_male_age_pulmonary_memory_pek_digitspanbackward.out   
b1              female   aeh                 muscle                   memory                    grip                   digitsforward           b1_female_aeh_muscle_memory_grip_digitspanforward.out    
b1              female   a                   muscle                   memory                    grip                   digitsforward           b1_female_age_muscle_memory_grip_digitspanforward.out    
b1              male     aeh                 muscle                   memory                    grip                   digitsforward           b1_male_aeh_muscle_memory_grip_digitspanforward.out      
b1              male     a                   muscle                   memory                    grip                   digitsforward           b1_male_age_muscle_memory_grip_digitspanforward.out      
b1              female   aeh                 pulmonary                memory                    pek                    digitsforward           b1_female_aeh_pulmonary_memory_pek_digitspanforward.out  
b1              female   a                   pulmonary                memory                    pek                    digitsforward           b1_female_age_pulmonary_memory_pek_digitspanforward.out  
b1              male     aeh                 pulmonary                memory                    pek                    digitsforward           b1_male_aeh_pulmonary_memory_pek_digitspanforward.out    
b1              male     a                   pulmonary                memory                    pek                    digitsforward           b1_male_age_pulmonary_memory_pek_digitspanforward.out    
b1              female   aeh                 muscle                   speed                     grip                   symbol                  b1_female_aeh_muscle_speed_grip_digitsymbol.out          
b1              female   a                   muscle                   speed                     grip                   symbol                  b1_female_age_muscle_speed_grip_digitsymbol.out          
b1              male     aeh                 muscle                   speed                     grip                   symbol                  b1_male_aeh_muscle_speed_grip_digitsymbol.out            
b1              male     a                   muscle                   speed                     grip                   symbol                  b1_male_age_muscle_speed_grip_digitsymbol.out            
b1              female   aeh                 pulmonary                speed                     pek                    symbol                  b1_female_aeh_pulmonary_speed_pek_digitsymbol.out        
b1              female   a                   pulmonary                speed                     pek                    symbol                  b1_female_age_pulmonary_speed_pek_digitsymbol.out        
b1              male     aeh                 pulmonary                speed                     pek                    symbol                  b1_male_aeh_pulmonary_speed_pek_digitsymbol.out          
b1              male     a                   pulmonary                speed                     pek                    symbol                  b1_male_age_pulmonary_speed_pek_digitsymbol.out          
b1              female   aeh                 muscle                   reasoning                 grip                   figurelogic             b1_female_aeh_muscle_reasoning_grip_figurelogic.out      
b1              female   a                   muscle                   reasoning                 grip                   figurelogic             b1_female_age_muscle_reasoning_grip_figurelogic.out      
b1              male     aeh                 muscle                   reasoning                 grip                   figurelogic             b1_male_aeh_muscle_reasoning_grip_figurelogic.out        
b1              male     a                   muscle                   reasoning                 grip                   figurelogic             b1_male_age_muscle_reasoning_grip_figurelogic.out        
b1              female   aeh                 pulmonary                reasoning                 pek                    figurelogic             b1_female_aeh_pulmonary_reasoning_pek_figurelogic.out    
b1              female   a                   pulmonary                reasoning                 pek                    figurelogic             b1_female_age_pulmonary_reasoning_pek_figurelogic.out    
b1              male     aeh                 pulmonary                reasoning                 pek                    figurelogic             b1_male_aeh_pulmonary_reasoning_pek_figurelogic.out      
b1              male     a                   pulmonary                reasoning                 pek                    figurelogic             b1_male_age_pulmonary_reasoning_pek_figurelogic.out      
b1              female   aeh                 muscle                   knowledge                 grip                   info                    b1_female_aeh_muscle_knowledge_grip_information.out      
b1              female   a                   muscle                   knowledge                 grip                   info                    b1_female_age_muscle_knowledge_grip_information.out      
b1              male     aeh                 muscle                   knowledge                 grip                   info                    b1_male_aeh_muscle_knowledge_grip_information.out        
b1              male     a                   muscle                   knowledge                 grip                   info                    b1_male_age_muscle_knowledge_grip_information.out        
b1              female   aeh                 pulmonary                knowledge                 pek                    info                    b1_female_aeh_pulmonary_knowledge_pek_information.out    
b1              female   a                   pulmonary                knowledge                 pek                    info                    b1_female_age_pulmonary_knowledge_pek_information.out    
b1              male     aeh                 pulmonary                knowledge                 pek                    info                    b1_male_aeh_pulmonary_knowledge_pek_information.out      
b1              male     a                   pulmonary                knowledge                 pek                    info                    b1_male_age_pulmonary_knowledge_pek_information.out      
b1              female   aeh                 muscle                   memory                    grip                   mirrecall               b1_female_aeh_muscle_memory_grip_mirrecall.out           
b1              female   a                   muscle                   memory                    grip                   mirrecall               b1_female_age_muscle_memory_grip_mirrecall.out           
b1              male     aeh                 muscle                   memory                    grip                   mirrecall               b1_male_aeh_muscle_memory_grip_mirrecall.out             
b1              male     a                   muscle                   memory                    grip                   mirrecall               b1_male_age_muscle_memory_grip_mirrecall.out             
b1              female   aeh                 pulmonary                memory                    pek                    mirrecall               b1_female_aeh_pulmonary_memory_pek_mirrecall.out         
b1              female   a                   pulmonary                memory                    pek                    mirrecall               b1_female_age_pulmonary_memory_pek_mirrecall.out         
b1              male     aeh                 pulmonary                memory                    pek                    mirrecall               b1_male_aeh_pulmonary_memory_pek_mirrecall.out           
b1              male     a                   pulmonary                memory                    pek                    mirrecall               b1_male_age_pulmonary_memory_pek_mirrecall.out           
b1              female   aeh                 muscle                   mental                    grip                   mmse                    b1_female_aeh_muscle_global_grip_mmse.out                
b1              female   a                   muscle                   mental                    grip                   mmse                    b1_female_age_muscle_global_grip_mmse.out                
b1              male     aeh                 muscle                   mental                    grip                   mmse                    b1_male_aeh_muscle_global_grip_mmse.out                  
b1              male     a                   muscle                   mental                    grip                   mmse                    b1_male_age_muscle_global_grip_mmse.out                  
b1              female   aeh                 pulmonary                mental                    pek                    mmse                    b1_female_aeh_pulmonary_global_pek_mmse.out              
b1              female   a                   pulmonary                mental                    pek                    mmse                    b1_female_age_pulmonary_global_pek_mmse.out              
b1              male     aeh                 pulmonary                mental                    pek                    mmse                    b1_male_aeh_pulmonary_global_pek_mmse.out                
b1              male     a                   pulmonary                mental                    pek                    mmse                    b1_male_age_pulmonary_global_pek_mmse.out                
b1              female   aeh                 muscle                   memory                    grip                   proserecall             b1_female_aeh_muscle_memory_grip_proserecall.out         
b1              female   a                   muscle                   memory                    grip                   proserecall             b1_female_age_muscle_memory_grip_proserecall.out         
b1              male     aeh                 muscle                   memory                    grip                   proserecall             b1_male_aeh_muscle_memory_grip_proserecall.out           
b1              male     a                   muscle                   memory                    grip                   proserecall             b1_male_age_muscle_memory_grip_proserecall.out           
b1              female   aeh                 pulmonary                memory                    pek                    proserecall             b1_female_aeh_pulmonary_memory_pek_proserecall.out       
b1              female   a                   pulmonary                memory                    pek                    proserecall             b1_female_age_pulmonary_memory_pek_proserecall.out       
b1              male     aeh                 pulmonary                memory                    pek                    proserecall             b1_male_aeh_pulmonary_memory_pek_proserecall.out         
b1              male     a                   pulmonary                memory                    pek                    proserecall             b1_male_age_pulmonary_memory_pek_proserecall.out         
b1              female   aeh                 muscle                   speed                     grip                   psif                    b1_female_aeh_muscle_speed_grip_psif.out                 
b1              female   a                   muscle                   speed                     grip                   psif                    b1_female_age_muscle_speed_grip_psif.out                 
b1              male     aeh                 muscle                   speed                     grip                   psif                    b1_male_aeh_muscle_speed_grip_psif.out                   
b1              male     a                   muscle                   speed                     grip                   psif                    b1_male_age_muscle_speed_grip_psif.out                   
b1              female   aeh                 pulmonary                speed                     pek                    psif                    b1_female_aeh_pulmonary_speed_pek_psif.out               
b1              female   a                   pulmonary                speed                     pek                    psif                    b1_female_age_pulmonary_speed_pek_psif.out               
b1              male     aeh                 pulmonary                speed                     pek                    psif                    b1_male_aeh_pulmonary_speed_pek_psif.out                 
b1              male     a                   pulmonary                speed                     pek                    psif                    b1_male_age_pulmonary_speed_pek_psif.out                 
b1              female   aeh                 muscle                   knowledge                 grip                   synonyms                b1_female_aeh_muscle_knowledge_grip_synonyms.out         
b1              female   a                   muscle                   knowledge                 grip                   synonyms                b1_female_age_muscle_knowledge_grip_synonyms.out         
b1              male     aeh                 muscle                   knowledge                 grip                   synonyms                b1_male_aeh_muscle_knowledge_grip_synonyms.out           
b1              male     a                   muscle                   knowledge                 grip                   synonyms                b1_male_age_muscle_knowledge_grip_synonyms.out           
b1              female   aeh                 pulmonary                knowledge                 pek                    synonyms                b1_female_aeh_pulmonary_knowledge_pek_synonyms.out       
b1              female   a                   pulmonary                knowledge                 pek                    synonyms                b1_female_age_pulmonary_knowledge_pek_synonyms.out       
b1              male     aeh                 pulmonary                knowledge                 pek                    synonyms                b1_male_aeh_pulmonary_knowledge_pek_synonyms.out         
b1              male     a                   pulmonary                knowledge                 pek                    synonyms                b1_male_age_pulmonary_knowledge_pek_synonyms.out         


# Session Information
For the sake of documentation and reproducibility, the current report was rendered on a system using the following software.


```
Report rendered by koval_000 at 2015-07-12, 23:23 -0700
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
[25] rsconnect_0.3.79 evaluate_0.7     rmarkdown_0.7    gsubfn_0.6-6     stringi_0.4-1    boot_1.3-16     
[31] proto_0.3-10    
```
