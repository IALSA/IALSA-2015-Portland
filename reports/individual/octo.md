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
206
```
models, using univariate and bivariate specifications:

```

 b1  u0  u1  u2 
206   .   .   . 
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
1                b1_female_aehplus_gait_block.out
2                b1_female_aehplus_grip_block.out
3                 b1_female_aehplus_pef_block.out
4                  b1_male_aehplus_gait_block.out
5                  b1_male_aehplus_grip_block.out
6                   b1_male_aehplus_pef_block.out
7                    b1_female_aeh_grip_block.out
8               b1_female_aeh_pulmonary_block.out
9                b1_female_aehplus_grip_block.out
10          b1_female_aehplus_pulmonary_block.out
11                   b1_female_age_grip_block.out
12              b1_female_age_pulmonary_block.out
13             b1_female_full_pulmonary_block.out
14                     b1_male_aeh_grip_block.out
15                b1_male_aeh_pulmonary_block.out
16                 b1_male_aehplus_grip_block.out
17            b1_male_aehplus_pulmonary_block.out
18                     b1_male_age_grip_block.out
19                b1_male_age_pulmonary_block.out
20               b1_male_full_pulmonary_block.out
21       b1_female_aehplus_gait_digitbackward.out
22       b1_female_aehplus_grip_digitbackward.out
23        b1_female_aehplus_pef_digitbackward.out
24         b1_male_aehplus_gait_digitbackward.out
25         b1_male_aehplus_grip_digitbackward.out
26          b1_male_aehplus_pef_digitbackward.out
27           b1_female_aeh_grip_digitbackward.out
28      b1_female_aeh_pulmonary_digitbackward.out
29       b1_female_aehplus_grip_digitbackward.out
30  b1_female_aehplus_pulmonary_digitbackward.out
31           b1_female_age_grip_digitbackward.out
32      b1_female_age_pulmonary_digitbackward.out
33             b1_male_aeh_grip_digitbackward.out
34        b1_male_aeh_pulmonary_digitbackward.out
35         b1_male_aehplus_grip_digitbackward.out
36    b1_male_aehplus_pulmonary_digitbackward.out
37             b1_male_age_grip_digitbackward.out
38        b1_male_age_pulmonary_digitbackward.out
39        b1_female_aehplus_gait_digitforward.out
40        b1_female_aehplus_grip_digitforward.out
41         b1_female_aehplus_pef_digitforward.out
42          b1_male_aehplus_gait_digitforward.out
43          b1_male_aehplus_grip_digitforward.out
44           b1_male_aehplus_pef_digitforward.out
45            b1_female_aeh_grip_digitforward.out
46       b1_female_aeh_pulmonary_digitforward.out
47        b1_female_aehplus_grip_digitforward.out
48   b1_female_aehplus_pulmonary_digitforward.out
49            b1_female_age_grip_digitforward.out
50       b1_female_age_pulmonary_digitforward.out
51              b1_male_aeh_grip_digitforward.out
52         b1_male_aeh_pulmonary_digitforward.out
53          b1_male_aehplus_grip_digitforward.out
54     b1_male_aehplus_pulmonary_digitforward.out
55              b1_male_age_grip_digitforward.out
56         b1_male_age_pulmonary_digitforward.out
57         b1_female_aehplus_gait_digitsymbol.out
58         b1_female_aehplus_grip_digitsymbol.out
59          b1_female_aehplus_pef_digitsymbol.out
60           b1_male_aehplus_gait_digitsymbol.out
61           b1_male_aehplus_grip_digitsymbol.out
62            b1_male_aehplus_pef_digitsymbol.out
63             b1_female_aeh_grip_digitsymbol.out
64        b1_female_aeh_pulmonary_digitsymbol.out
65         b1_female_aehplus_grip_digitsymbol.out
66    b1_female_aehplus_pulmonary_digitsymbol.out
67             b1_female_age_grip_digitsymbol.out
68        b1_female_age_pulmonary_digitsymbol.out
69               b1_male_aeh_grip_digitsymbol.out
70          b1_male_aeh_pulmonary_digitsymbol.out
71           b1_male_aehplus_grip_digitsymbol.out
72      b1_male_aehplus_pulmonary_digitsymbol.out
73               b1_male_age_grip_digitsymbol.out
74          b1_male_age_pulmonary_digitsymbol.out
75             b1_female_aeh_grip_figurelogic.out
76        b1_female_aeh_pulmonary_figurelogic.out
77         b1_female_aehplus_grip_figurelogic.out
78    b1_female_aehplus_pulmonary_figurelogic.out
79             b1_female_age_grip_figurelogic.out
80        b1_female_age_pulmonary_figurelogic.out
81               b1_male_aeh_grip_figurelogic.out
82          b1_male_aeh_pulmonary_figurelogic.out
83           b1_male_aehplus_grip_figurelogic.out
84      b1_male_aehplus_pulmonary_figurelogic.out
85               b1_male_age_grip_figurelogic.out
86          b1_male_age_pulmonary_figurelogic.out
87               b1_female_aeh_grip_mirrecall.out
88          b1_female_aeh_pulmonary_mirrecall.out
89           b1_female_aehplus_grip_mirrecall.out
90      b1_female_aehplus_pulmonary_mirrecall.out
91               b1_female_age_grip_mirrecall.out
92          b1_female_age_pulmonary_mirrecall.out
93                 b1_male_aeh_grip_mirrecall.out
94            b1_male_aeh_pulmonary_mirrecall.out
95             b1_male_aehplus_grip_mirrecall.out
96        b1_male_aehplus_pulmonary_mirrecall.out
97                 b1_male_age_grip_mirrecall.out
98            b1_male_age_pulmonary_mirrecall.out
99               b1_female_aehplus_gait_prose.out
100              b1_female_aehplus_grip_prose.out
101               b1_female_aehplus_pef_prose.out
102        b1_male_aehplus_gait_prose_problem.out
103                b1_male_aehplus_grip_prose.out
104                 b1_male_aehplus_pef_prose.out
105            b1_female_aeh_grip_proserecall.out
106       b1_female_aeh_pulmonary_proserecall.out
107        b1_female_aehplus_grip_proserecall.out
108   b1_female_aehplus_pulmonary_proserecall.out
109            b1_female_age_grip_proserecall.out
110       b1_female_age_pulmonary_proserecall.out
111      b1_female_full_pulmonary_proserecall.out
112              b1_male_aeh_grip_proserecall.out
113         b1_male_aeh_pulmonary_proserecall.out
114          b1_male_aehplus_grip_proserecall.out
115     b1_male_aehplus_pulmonary_proserecall.out
116              b1_male_age_grip_proserecall.out
117         b1_male_age_pulmonary_proserecall.out
118        b1_male_full_pulmonary_proserecall.out
```

After removing incorrectly named files, there are

```
206
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
           
            b1 u0 u1 u2
  gait      10 .  .  . 
  grip      52 .  .  . 
  muscle    44 .  .  . 
  pef       10 .  .  . 
  pulmonary 90 .  .  . 
```

## Cognitive constructs


```
           
            b1 u0 u1 u2
  executive 18 .  .  . 
  reasoning 12 .  .  . 
  speed     18 .  .  . 
```


## Cognitive measures


```
              
               b1 u0 u1 u2
  block        20 .  .  . 
  digitforward 18 .  .  . 
  digitsback   18 .  .  . 
  figurelogic  12 .  .  . 
  global       8  .  .  . 
  knowledge    16 .  .  . 
  memory       32 .  .  . 
  mirrecall    12 .  .  . 
  prose        6  .  .  . 
  proserecall  14 .  .  . 
  reasoning    16 .  .  . 
  speed        16 .  .  . 
  symbol       18 .  .  . 
```
</br></br></br>

# BIVARIATE MODELS

In this section, **constructs (columns)** are cross-tabulated with  **measures (rows)** that opeationalize them in the models. Each non-blank element in a column indicates a unique **measure (row)** of the **construct (column)**. The numeric value shows how many different versions of this model used this specific pair of construct and measure: model may differ on the subgroup (male, female), and the set of covariates (empty, a, ae, aeh, aehplus, full).


## Physical 
Physical **constructs** (columns) by physical **measures** (rows) in BIVARIATE models

```
< table of extent 5 x 0 >
```

## Cognitive 
Cognitive **constructs** (columns) by cognitive **measures** (rows) in BIVARIATE models

```
              
               executive reasoning speed
  block        .         .         .    
  digitforward .         .         .    
  digitsback   18        .         .    
  figurelogic  .         12        .    
  global       .         .         .    
  knowledge    .         .         .    
  memory       .         .         .    
  mirrecall    .         .         .    
  prose        .         .         .    
  proserecall  .         .         .    
  reasoning    .         .         .    
  speed        .         .         .    
  symbol       .         .         18   
```


## Constructs
Number of models with the following **physical constructs** (columns) and  **cognitive constructs** (rows)


```
< table of extent 3 x 0 >
```

## Phys.Constructs
Number of models with the following  **physical constructs** (columns) and  **cognitive measures** (rows)

```
< table of extent 13 x 0 >
```

## Cog.Constructs
Number of models with the following  **physical measure** (columns) and  **cognitive constructs** (rows)

```
           
            gait grip muscle pef pulmonary
  executive 2    8    .      2   6        
  reasoning .    6    .      .   6        
  speed     2    8    .      2   6        
```

## Measures
Number of models with the following  **physical measures** (columns) and  **cognitive measures** (rows)

```
              
               gait grip muscle pef pulmonary
  block        2    8    .      2   8        
  digitforward 2    8    .      2   6        
  digitsback   2    8    .      2   6        
  figurelogic  .    6    .      .   6        
  global       .    .    4      .   4        
  knowledge    .    .    8      .   8        
  memory       .    .    16     .   16       
  mirrecall    .    6    .      .   6        
  prose        2    2    .      2   .        
  proserecall  .    6    .      .   8        
  reasoning    .    .    8      .   8        
  speed        .    .    8      .   8        
  symbol       2    8    .      2   6        
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
b1              female   aehplus             NA                       NA                        gait                   block                   b1_female_aehplus_gait_block.out                         
b1              female   aehplus             NA                       NA                        grip                   block                   b1_female_aehplus_grip_block.out                         
b1              female   aehplus             NA                       NA                        pef                    block                   b1_female_aehplus_pef_block.out                          
b1              male     aehplus             NA                       NA                        gait                   block                   b1_male_aehplus_gait_block.out                           
b1              male     aehplus             NA                       NA                        grip                   block                   b1_male_aehplus_grip_block.out                           
b1              male     aehplus             NA                       NA                        pef                    block                   b1_male_aehplus_pef_block.out                            
b1              female   aeh                 NA                       NA                        grip                   block                   b1_female_aeh_grip_block.out                             
b1              female   aeh                 NA                       NA                        pulmonary              block                   b1_female_aeh_pulmonary_block.out                        
b1              female   aehplus             NA                       NA                        grip                   block                   b1_female_aehplus_grip_block.out                         
b1              female   aehplus             NA                       NA                        pulmonary              block                   b1_female_aehplus_pulmonary_block.out                    
b1              female   a                   NA                       NA                        grip                   block                   b1_female_age_grip_block.out                             
b1              female   a                   NA                       NA                        pulmonary              block                   b1_female_age_pulmonary_block.out                        
b1              female   full                NA                       NA                        pulmonary              block                   b1_female_full_pulmonary_block.out                       
b1              male     aeh                 NA                       NA                        grip                   block                   b1_male_aeh_grip_block.out                               
b1              male     aeh                 NA                       NA                        pulmonary              block                   b1_male_aeh_pulmonary_block.out                          
b1              male     aehplus             NA                       NA                        grip                   block                   b1_male_aehplus_grip_block.out                           
b1              male     aehplus             NA                       NA                        pulmonary              block                   b1_male_aehplus_pulmonary_block.out                      
b1              male     a                   NA                       NA                        grip                   block                   b1_male_age_grip_block.out                               
b1              male     a                   NA                       NA                        pulmonary              block                   b1_male_age_pulmonary_block.out                          
b1              male     full                NA                       NA                        pulmonary              block                   b1_male_full_pulmonary_block.out                         
b1              female   aehplus             NA                       executive                 gait                   digitsback              b1_female_aehplus_gait_digitbackward.out                 
b1              female   aehplus             NA                       executive                 grip                   digitsback              b1_female_aehplus_grip_digitbackward.out                 
b1              female   aehplus             NA                       executive                 pef                    digitsback              b1_female_aehplus_pef_digitbackward.out                  
b1              male     aehplus             NA                       executive                 gait                   digitsback              b1_male_aehplus_gait_digitbackward.out                   
b1              male     aehplus             NA                       executive                 grip                   digitsback              b1_male_aehplus_grip_digitbackward.out                   
b1              male     aehplus             NA                       executive                 pef                    digitsback              b1_male_aehplus_pef_digitbackward.out                    
b1              female   aeh                 NA                       executive                 grip                   digitsback              b1_female_aeh_grip_digitbackward.out                     
b1              female   aeh                 NA                       executive                 pulmonary              digitsback              b1_female_aeh_pulmonary_digitbackward.out                
b1              female   aehplus             NA                       executive                 grip                   digitsback              b1_female_aehplus_grip_digitbackward.out                 
b1              female   aehplus             NA                       executive                 pulmonary              digitsback              b1_female_aehplus_pulmonary_digitbackward.out            
b1              female   a                   NA                       executive                 grip                   digitsback              b1_female_age_grip_digitbackward.out                     
b1              female   a                   NA                       executive                 pulmonary              digitsback              b1_female_age_pulmonary_digitbackward.out                
b1              male     aeh                 NA                       executive                 grip                   digitsback              b1_male_aeh_grip_digitbackward.out                       
b1              male     aeh                 NA                       executive                 pulmonary              digitsback              b1_male_aeh_pulmonary_digitbackward.out                  
b1              male     aehplus             NA                       executive                 grip                   digitsback              b1_male_aehplus_grip_digitbackward.out                   
b1              male     aehplus             NA                       executive                 pulmonary              digitsback              b1_male_aehplus_pulmonary_digitbackward.out              
b1              male     a                   NA                       executive                 grip                   digitsback              b1_male_age_grip_digitbackward.out                       
b1              male     a                   NA                       executive                 pulmonary              digitsback              b1_male_age_pulmonary_digitbackward.out                  
b1              female   aehplus             NA                       NA                        gait                   digitforward            b1_female_aehplus_gait_digitforward.out                  
b1              female   aehplus             NA                       NA                        grip                   digitforward            b1_female_aehplus_grip_digitforward.out                  
b1              female   aehplus             NA                       NA                        pef                    digitforward            b1_female_aehplus_pef_digitforward.out                   
b1              male     aehplus             NA                       NA                        gait                   digitforward            b1_male_aehplus_gait_digitforward.out                    
b1              male     aehplus             NA                       NA                        grip                   digitforward            b1_male_aehplus_grip_digitforward.out                    
b1              male     aehplus             NA                       NA                        pef                    digitforward            b1_male_aehplus_pef_digitforward.out                     
b1              female   aeh                 NA                       NA                        grip                   digitforward            b1_female_aeh_grip_digitforward.out                      
b1              female   aeh                 NA                       NA                        pulmonary              digitforward            b1_female_aeh_pulmonary_digitforward.out                 
b1              female   aehplus             NA                       NA                        grip                   digitforward            b1_female_aehplus_grip_digitforward.out                  
b1              female   aehplus             NA                       NA                        pulmonary              digitforward            b1_female_aehplus_pulmonary_digitforward.out             
b1              female   a                   NA                       NA                        grip                   digitforward            b1_female_age_grip_digitforward.out                      
b1              female   a                   NA                       NA                        pulmonary              digitforward            b1_female_age_pulmonary_digitforward.out                 
b1              male     aeh                 NA                       NA                        grip                   digitforward            b1_male_aeh_grip_digitforward.out                        
b1              male     aeh                 NA                       NA                        pulmonary              digitforward            b1_male_aeh_pulmonary_digitforward.out                   
b1              male     aehplus             NA                       NA                        grip                   digitforward            b1_male_aehplus_grip_digitforward.out                    
b1              male     aehplus             NA                       NA                        pulmonary              digitforward            b1_male_aehplus_pulmonary_digitforward.out               
b1              male     a                   NA                       NA                        grip                   digitforward            b1_male_age_grip_digitforward.out                        
b1              male     a                   NA                       NA                        pulmonary              digitforward            b1_male_age_pulmonary_digitforward.out                   
b1              female   aehplus             NA                       speed                     gait                   symbol                  b1_female_aehplus_gait_digitsymbol.out                   
b1              female   aehplus             NA                       speed                     grip                   symbol                  b1_female_aehplus_grip_digitsymbol.out                   
b1              female   aehplus             NA                       speed                     pef                    symbol                  b1_female_aehplus_pef_digitsymbol.out                    
b1              male     aehplus             NA                       speed                     gait                   symbol                  b1_male_aehplus_gait_digitsymbol.out                     
b1              male     aehplus             NA                       speed                     grip                   symbol                  b1_male_aehplus_grip_digitsymbol.out                     
b1              male     aehplus             NA                       speed                     pef                    symbol                  b1_male_aehplus_pef_digitsymbol.out                      
b1              female   aeh                 NA                       speed                     grip                   symbol                  b1_female_aeh_grip_digitsymbol.out                       
b1              female   aeh                 NA                       speed                     pulmonary              symbol                  b1_female_aeh_pulmonary_digitsymbol.out                  
b1              female   aehplus             NA                       speed                     grip                   symbol                  b1_female_aehplus_grip_digitsymbol.out                   
b1              female   aehplus             NA                       speed                     pulmonary              symbol                  b1_female_aehplus_pulmonary_digitsymbol.out              
b1              female   a                   NA                       speed                     grip                   symbol                  b1_female_age_grip_digitsymbol.out                       
b1              female   a                   NA                       speed                     pulmonary              symbol                  b1_female_age_pulmonary_digitsymbol.out                  
b1              male     aeh                 NA                       speed                     grip                   symbol                  b1_male_aeh_grip_digitsymbol.out                         
b1              male     aeh                 NA                       speed                     pulmonary              symbol                  b1_male_aeh_pulmonary_digitsymbol.out                    
b1              male     aehplus             NA                       speed                     grip                   symbol                  b1_male_aehplus_grip_digitsymbol.out                     
b1              male     aehplus             NA                       speed                     pulmonary              symbol                  b1_male_aehplus_pulmonary_digitsymbol.out                
b1              male     a                   NA                       speed                     grip                   symbol                  b1_male_age_grip_digitsymbol.out                         
b1              male     a                   NA                       speed                     pulmonary              symbol                  b1_male_age_pulmonary_digitsymbol.out                    
b1              female   aeh                 NA                       reasoning                 grip                   figurelogic             b1_female_aeh_grip_figurelogic.out                       
b1              female   aeh                 NA                       reasoning                 pulmonary              figurelogic             b1_female_aeh_pulmonary_figurelogic.out                  
b1              female   aehplus             NA                       reasoning                 grip                   figurelogic             b1_female_aehplus_grip_figurelogic.out                   
b1              female   aehplus             NA                       reasoning                 pulmonary              figurelogic             b1_female_aehplus_pulmonary_figurelogic.out              
b1              female   a                   NA                       reasoning                 grip                   figurelogic             b1_female_age_grip_figurelogic.out                       
b1              female   a                   NA                       reasoning                 pulmonary              figurelogic             b1_female_age_pulmonary_figurelogic.out                  
b1              male     aeh                 NA                       reasoning                 grip                   figurelogic             b1_male_aeh_grip_figurelogic.out                         
b1              male     aeh                 NA                       reasoning                 pulmonary              figurelogic             b1_male_aeh_pulmonary_figurelogic.out                    
b1              male     aehplus             NA                       reasoning                 grip                   figurelogic             b1_male_aehplus_grip_figurelogic.out                     
b1              male     aehplus             NA                       reasoning                 pulmonary              figurelogic             b1_male_aehplus_pulmonary_figurelogic.out                
b1              male     a                   NA                       reasoning                 grip                   figurelogic             b1_male_age_grip_figurelogic.out                         
b1              male     a                   NA                       reasoning                 pulmonary              figurelogic             b1_male_age_pulmonary_figurelogic.out                    
b1              female   aeh                 NA                       NA                        muscle                 global                  b1_female_aeh_muscle_global_grip_mmse.out                
b1              female   aeh                 NA                       NA                        pulmonary              global                  b1_female_aeh_pulmonary_global_pek_mmse.out              
b1              female   a                   NA                       NA                        muscle                 global                  b1_female_age_muscle_global_grip_mmse.out                
b1              female   a                   NA                       NA                        pulmonary              global                  b1_female_age_pulmonary_global_pek_mmse.out              
b1              male     aeh                 NA                       NA                        muscle                 global                  b1_male_aeh_muscle_global_grip_mmse.out                  
b1              male     aeh                 NA                       NA                        pulmonary              global                  b1_male_aeh_pulmonary_global_pek_mmse.out                
b1              male     a                   NA                       NA                        muscle                 global                  b1_male_age_muscle_global_grip_mmse.out                  
b1              male     a                   NA                       NA                        pulmonary              global                  b1_male_age_pulmonary_global_pek_mmse.out                
b1              female   aeh                 NA                       NA                        muscle                 knowledge               b1_female_aeh_muscle_knowledge_grip_information.out      
b1              female   aeh                 NA                       NA                        muscle                 knowledge               b1_female_aeh_muscle_knowledge_grip_synonyms.out         
b1              female   aeh                 NA                       NA                        pulmonary              knowledge               b1_female_aeh_pulmonary_knowledge_pek_information.out    
b1              female   aeh                 NA                       NA                        pulmonary              knowledge               b1_female_aeh_pulmonary_knowledge_pek_synonyms.out       
b1              female   a                   NA                       NA                        muscle                 knowledge               b1_female_age_muscle_knowledge_grip_information.out      
b1              female   a                   NA                       NA                        muscle                 knowledge               b1_female_age_muscle_knowledge_grip_synonyms.out         
b1              female   a                   NA                       NA                        pulmonary              knowledge               b1_female_age_pulmonary_knowledge_pek_information.out    
b1              female   a                   NA                       NA                        pulmonary              knowledge               b1_female_age_pulmonary_knowledge_pek_synonyms.out       
b1              male     aeh                 NA                       NA                        muscle                 knowledge               b1_male_aeh_muscle_knowledge_grip_information.out        
b1              male     aeh                 NA                       NA                        muscle                 knowledge               b1_male_aeh_muscle_knowledge_grip_synonyms.out           
b1              male     aeh                 NA                       NA                        pulmonary              knowledge               b1_male_aeh_pulmonary_knowledge_pek_information.out      
b1              male     aeh                 NA                       NA                        pulmonary              knowledge               b1_male_aeh_pulmonary_knowledge_pek_synonyms.out         
b1              male     a                   NA                       NA                        muscle                 knowledge               b1_male_age_muscle_knowledge_grip_information.out        
b1              male     a                   NA                       NA                        muscle                 knowledge               b1_male_age_muscle_knowledge_grip_synonyms.out           
b1              male     a                   NA                       NA                        pulmonary              knowledge               b1_male_age_pulmonary_knowledge_pek_information.out      
b1              male     a                   NA                       NA                        pulmonary              knowledge               b1_male_age_pulmonary_knowledge_pek_synonyms.out         
b1              female   aeh                 NA                       NA                        muscle                 memory                  b1_female_aeh_muscle_memory_grip_digitspanbackward.out   
b1              female   aeh                 NA                       NA                        muscle                 memory                  b1_female_aeh_muscle_memory_grip_digitspanforward.out    
b1              female   aeh                 NA                       NA                        muscle                 memory                  b1_female_aeh_muscle_memory_grip_mirrecall.out           
b1              female   aeh                 NA                       NA                        muscle                 memory                  b1_female_aeh_muscle_memory_grip_proserecall.out         
b1              female   aeh                 NA                       NA                        pulmonary              memory                  b1_female_aeh_pulmonary_memory_pek_digitspanbackward.out 
b1              female   aeh                 NA                       NA                        pulmonary              memory                  b1_female_aeh_pulmonary_memory_pek_digitspanforward.out  
b1              female   aeh                 NA                       NA                        pulmonary              memory                  b1_female_aeh_pulmonary_memory_pek_mirrecall.out         
b1              female   aeh                 NA                       NA                        pulmonary              memory                  b1_female_aeh_pulmonary_memory_pek_proserecall.out       
b1              female   a                   NA                       NA                        muscle                 memory                  b1_female_age_muscle_memory_grip_digitspanbackward.out   
b1              female   a                   NA                       NA                        muscle                 memory                  b1_female_age_muscle_memory_grip_digitspanforward.out    
b1              female   a                   NA                       NA                        muscle                 memory                  b1_female_age_muscle_memory_grip_mirrecall.out           
b1              female   a                   NA                       NA                        muscle                 memory                  b1_female_age_muscle_memory_grip_proserecall.out         
b1              female   a                   NA                       NA                        pulmonary              memory                  b1_female_age_pulmonary_memory_pek_digitspanbackward.out 
b1              female   a                   NA                       NA                        pulmonary              memory                  b1_female_age_pulmonary_memory_pek_digitspanforward.out  
b1              female   a                   NA                       NA                        pulmonary              memory                  b1_female_age_pulmonary_memory_pek_mirrecall.out         
b1              female   a                   NA                       NA                        pulmonary              memory                  b1_female_age_pulmonary_memory_pek_proserecall.out       
b1              male     aeh                 NA                       NA                        muscle                 memory                  b1_male_aeh_muscle_memory_grip_digitspanbackward.out     
b1              male     aeh                 NA                       NA                        muscle                 memory                  b1_male_aeh_muscle_memory_grip_digitspanforward.out      
b1              male     aeh                 NA                       NA                        muscle                 memory                  b1_male_aeh_muscle_memory_grip_mirrecall.out             
b1              male     aeh                 NA                       NA                        muscle                 memory                  b1_male_aeh_muscle_memory_grip_proserecall.out           
b1              male     aeh                 NA                       NA                        pulmonary              memory                  b1_male_aeh_pulmonary_memory_pek_digitspanbackward.out   
b1              male     aeh                 NA                       NA                        pulmonary              memory                  b1_male_aeh_pulmonary_memory_pek_digitspanforward.out    
b1              male     aeh                 NA                       NA                        pulmonary              memory                  b1_male_aeh_pulmonary_memory_pek_mirrecall.out           
b1              male     aeh                 NA                       NA                        pulmonary              memory                  b1_male_aeh_pulmonary_memory_pek_proserecall.out         
b1              male     a                   NA                       NA                        muscle                 memory                  b1_male_age_muscle_memory_grip_digitspanbackward.out     
b1              male     a                   NA                       NA                        muscle                 memory                  b1_male_age_muscle_memory_grip_digitspanforward.out      
b1              male     a                   NA                       NA                        muscle                 memory                  b1_male_age_muscle_memory_grip_mirrecall.out             
b1              male     a                   NA                       NA                        muscle                 memory                  b1_male_age_muscle_memory_grip_proserecall.out           
b1              male     a                   NA                       NA                        pulmonary              memory                  b1_male_age_pulmonary_memory_pek_digitspanbackward.out   
b1              male     a                   NA                       NA                        pulmonary              memory                  b1_male_age_pulmonary_memory_pek_digitspanforward.out    
b1              male     a                   NA                       NA                        pulmonary              memory                  b1_male_age_pulmonary_memory_pek_mirrecall.out           
b1              male     a                   NA                       NA                        pulmonary              memory                  b1_male_age_pulmonary_memory_pek_proserecall.out         
b1              female   aeh                 NA                       NA                        grip                   mirrecall               b1_female_aeh_grip_mirrecall.out                         
b1              female   aeh                 NA                       NA                        pulmonary              mirrecall               b1_female_aeh_pulmonary_mirrecall.out                    
b1              female   aehplus             NA                       NA                        grip                   mirrecall               b1_female_aehplus_grip_mirrecall.out                     
b1              female   aehplus             NA                       NA                        pulmonary              mirrecall               b1_female_aehplus_pulmonary_mirrecall.out                
b1              female   a                   NA                       NA                        grip                   mirrecall               b1_female_age_grip_mirrecall.out                         
b1              female   a                   NA                       NA                        pulmonary              mirrecall               b1_female_age_pulmonary_mirrecall.out                    
b1              male     aeh                 NA                       NA                        grip                   mirrecall               b1_male_aeh_grip_mirrecall.out                           
b1              male     aeh                 NA                       NA                        pulmonary              mirrecall               b1_male_aeh_pulmonary_mirrecall.out                      
b1              male     aehplus             NA                       NA                        grip                   mirrecall               b1_male_aehplus_grip_mirrecall.out                       
b1              male     aehplus             NA                       NA                        pulmonary              mirrecall               b1_male_aehplus_pulmonary_mirrecall.out                  
b1              male     a                   NA                       NA                        grip                   mirrecall               b1_male_age_grip_mirrecall.out                           
b1              male     a                   NA                       NA                        pulmonary              mirrecall               b1_male_age_pulmonary_mirrecall.out                      
b1              female   aehplus             NA                       NA                        gait                   prose                   b1_female_aehplus_gait_prose.out                         
b1              female   aehplus             NA                       NA                        grip                   prose                   b1_female_aehplus_grip_prose.out                         
b1              female   aehplus             NA                       NA                        pef                    prose                   b1_female_aehplus_pef_prose.out                          
b1              male     aehplus             NA                       NA                        gait                   prose                   b1_male_aehplus_gait_prose_problem.out                   
b1              male     aehplus             NA                       NA                        grip                   prose                   b1_male_aehplus_grip_prose.out                           
b1              male     aehplus             NA                       NA                        pef                    prose                   b1_male_aehplus_pef_prose.out                            
b1              female   aeh                 NA                       NA                        grip                   proserecall             b1_female_aeh_grip_proserecall.out                       
b1              female   aeh                 NA                       NA                        pulmonary              proserecall             b1_female_aeh_pulmonary_proserecall.out                  
b1              female   aehplus             NA                       NA                        grip                   proserecall             b1_female_aehplus_grip_proserecall.out                   
b1              female   aehplus             NA                       NA                        pulmonary              proserecall             b1_female_aehplus_pulmonary_proserecall.out              
b1              female   a                   NA                       NA                        grip                   proserecall             b1_female_age_grip_proserecall.out                       
b1              female   a                   NA                       NA                        pulmonary              proserecall             b1_female_age_pulmonary_proserecall.out                  
b1              female   full                NA                       NA                        pulmonary              proserecall             b1_female_full_pulmonary_proserecall.out                 
b1              male     aeh                 NA                       NA                        grip                   proserecall             b1_male_aeh_grip_proserecall.out                         
b1              male     aeh                 NA                       NA                        pulmonary              proserecall             b1_male_aeh_pulmonary_proserecall.out                    
b1              male     aehplus             NA                       NA                        grip                   proserecall             b1_male_aehplus_grip_proserecall.out                     
b1              male     aehplus             NA                       NA                        pulmonary              proserecall             b1_male_aehplus_pulmonary_proserecall.out                
b1              male     a                   NA                       NA                        grip                   proserecall             b1_male_age_grip_proserecall.out                         
b1              male     a                   NA                       NA                        pulmonary              proserecall             b1_male_age_pulmonary_proserecall.out                    
b1              male     full                NA                       NA                        pulmonary              proserecall             b1_male_full_pulmonary_proserecall.out                   
b1              female   aeh                 NA                       NA                        muscle                 reasoning               b1_female_aeh_muscle_reasoning_grip_blockdesign.out      
b1              female   aeh                 NA                       NA                        muscle                 reasoning               b1_female_aeh_muscle_reasoning_grip_figurelogic.out      
b1              female   aeh                 NA                       NA                        pulmonary              reasoning               b1_female_aeh_pulmonary_reasoning_pek_blockdesign.out    
b1              female   aeh                 NA                       NA                        pulmonary              reasoning               b1_female_aeh_pulmonary_reasoning_pek_figurelogic.out    
b1              female   a                   NA                       NA                        muscle                 reasoning               b1_female_age_muscle_reasoning_grip_blockdesign.out      
b1              female   a                   NA                       NA                        muscle                 reasoning               b1_female_age_muscle_reasoning_grip_figurelogic.out      
b1              female   a                   NA                       NA                        pulmonary              reasoning               b1_female_age_pulmonary_reasoning_pek_blockdesign.out    
b1              female   a                   NA                       NA                        pulmonary              reasoning               b1_female_age_pulmonary_reasoning_pek_figurelogic.out    
b1              male     aeh                 NA                       NA                        muscle                 reasoning               b1_male_aeh_muscle_reasoning_grip_blockdesign.out        
b1              male     aeh                 NA                       NA                        muscle                 reasoning               b1_male_aeh_muscle_reasoning_grip_figurelogic.out        
b1              male     aeh                 NA                       NA                        pulmonary              reasoning               b1_male_aeh_pulmonary_reasoning_pek_blockdesign.out      
b1              male     aeh                 NA                       NA                        pulmonary              reasoning               b1_male_aeh_pulmonary_reasoning_pek_figurelogic.out      
b1              male     a                   NA                       NA                        muscle                 reasoning               b1_male_age_muscle_reasoning_grip_blockdesign.out        
b1              male     a                   NA                       NA                        muscle                 reasoning               b1_male_age_muscle_reasoning_grip_figurelogic.out        
b1              male     a                   NA                       NA                        pulmonary              reasoning               b1_male_age_pulmonary_reasoning_pek_blockdesign.out      
b1              male     a                   NA                       NA                        pulmonary              reasoning               b1_male_age_pulmonary_reasoning_pek_figurelogic.out      
b1              female   aeh                 NA                       NA                        muscle                 speed                   b1_female_aeh_muscle_speed_grip_digitsymbol.out          
b1              female   aeh                 NA                       NA                        muscle                 speed                   b1_female_aeh_muscle_speed_grip_psif.out                 
b1              female   aeh                 NA                       NA                        pulmonary              speed                   b1_female_aeh_pulmonary_speed_pek_digitsymbol.out        
b1              female   aeh                 NA                       NA                        pulmonary              speed                   b1_female_aeh_pulmonary_speed_pek_psif.out               
b1              female   a                   NA                       NA                        muscle                 speed                   b1_female_age_muscle_speed_grip_digitsymbol.out          
b1              female   a                   NA                       NA                        muscle                 speed                   b1_female_age_muscle_speed_grip_psif.out                 
b1              female   a                   NA                       NA                        pulmonary              speed                   b1_female_age_pulmonary_speed_pek_digitsymbol.out        
b1              female   a                   NA                       NA                        pulmonary              speed                   b1_female_age_pulmonary_speed_pek_psif.out               
b1              male     aeh                 NA                       NA                        muscle                 speed                   b1_male_aeh_muscle_speed_grip_digitsymbol.out            
b1              male     aeh                 NA                       NA                        muscle                 speed                   b1_male_aeh_muscle_speed_grip_psif.out                   
b1              male     aeh                 NA                       NA                        pulmonary              speed                   b1_male_aeh_pulmonary_speed_pek_digitsymbol.out          
b1              male     aeh                 NA                       NA                        pulmonary              speed                   b1_male_aeh_pulmonary_speed_pek_psif.out                 
b1              male     a                   NA                       NA                        muscle                 speed                   b1_male_age_muscle_speed_grip_digitsymbol.out            
b1              male     a                   NA                       NA                        muscle                 speed                   b1_male_age_muscle_speed_grip_psif.out                   
b1              male     a                   NA                       NA                        pulmonary              speed                   b1_male_age_pulmonary_speed_pek_digitsymbol.out          
b1              male     a                   NA                       NA                        pulmonary              speed                   b1_male_age_pulmonary_speed_pek_psif.out                 


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
