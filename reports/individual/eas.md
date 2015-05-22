# Individual study report: count models



<!--  Set the working directory to the repository's base directory; this assumes the report is nested inside of two directories.-->


<!-- Set the report-wide options, and point to the external code file. -->


<!-- Load the sources.  Suppress the output when loading sources. --> 


<!-- Load 'sourced' R files.  Suppress the output when loading packages. --> 


<!-- load global data -->


<!-- load sepecific data -->


<!-- load functions used in the report -->



This report tallies the models that you have provided to the workshop collective so far.  For general frequency count (all studies) consult [Model Counts](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/counts.html) report.  For genearl (all studies) correlations between random terms in bivariate models consult [Model Essentials](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/essentials.html)

## Brief summary

You have provided us with the total number of 

```
487
```
models, using univariate and bivariate specifications:

```

 b1  u0  u1  u2 
219   6 131 131 
```

To remind you, **model_number** (*b1, u0, u1, u2*) refers to the model specification, as shown in the figure below.  The first letter (*b* or *u*) indicates whether the models specifies a single outcome (*u* for *univariate*) or two outcomes (*b* for *bivariate*), while the number (e.g. u*0*, u*1*, u*2*) indicates the highest random term on the first level. </br>

The figure below shows the proper naming convention for the models you estimated in your study. Our scripts rely on this naming convention for the key information about the model. Therefore, it is of utmost importance you follow these rules. **If named incorrectly, models cannot be used in the collective analysis**. Some mistakes (like some typos) could be corrected automatically. Other, however, require your attention.



This report aims to accomplish two things:   
  1. Help you identify and **correct the errors** in the filenames so that your models can be processed properly  
  2. Help you identify what models should be added to **maximize replicability** effect  


  

## Rules for naming your models
![naming convntion](../../libs/images/model_naming_convention.png)
The name of the file **must always contain 7 components** separated by an underscore ( _ ) symbol. The figure above shows the anatomy of a protypical file name with examples of particular values.

### Components of filename
From left to right, the components of filename are:

  1. Model number (*e.g.* b1, u0) - specification(u, b) and highest random term (0,1,2)  
  2. Sex (*e.g.* male, female) - model fitted using this subset of data
  3. covariateSet - a set of predictors entered into the model on the second level:
    - empty : no covariate included into the model  
    - a : age is entered as a baseline measure, second level  
    - ae : age + education  
    - aeh : age + education + height  
    - aehplus: age + education + height + diabetes + smoking history + cardiovascular  
    - full : all covariate availible in the study (will be different across studies)  
  4. Physical Construct (*e.g.* pulmonary, muscle) - general physical function that can have a number of specific operationalizations or measurements.
  5. Cognitive Construct (*e.g.* reasoning, memory) - general cognitive function that can have a number of specific operationalizations or measurements.
  6. Physical Measure (e.g. pek, grip ) - a specific way to operationalize the measurement of a physical construct
  7. Cognitive Measure (e.g. block, digitspan ) - a specific way to operationalize the measurement of a cognitive construct  
  
### Additional rules
 
 1. Construct and Measure names cannot be the same  
 2. In univariate models, the absence of a modeling term must be explicit:
 
 ```
 u1_male_aeh_pulmonary_noCog_pek_noCogSpec
 ```
 instead of
 ```
 u1_male_aeh_pulmonary_pek
 ```
  
## Inspect models in the study

```
                   muscle nophys nophysspec pulmonary
                                                     
u0 female a            .      .          .         . 
          ae           .      .          .         . 
          aeh          .      .          .         . 
          aehplus      .      .          .         . 
          aheplus      .      .          .         . 
          empty        1      1          .         1 
          full         .      .          .         . 
   male   a            .      .          .         . 
          ae           .      .          .         . 
          aeh          .      .          .         . 
          aehplus      .      .          .         . 
          aheplus      .      .          .         . 
          empty        1      1          .         1 
          full         .      .          .         . 
u1 female a            1      11         .         1 
          ae           1      11         .         1 
          aeh          1      13         .         1 
          aehplus      1      11         .         1 
          aheplus      .      .          .         . 
          empty        .      .          .         . 
          full         1      11         .         1 
   male   a            1      11         .         1 
          ae           1      11         .         1 
          aeh          1      11         .         1 
          aehplus      1      10         .         1 
          aheplus      .      .          .         . 
          empty        .      .          .         . 
          full         1      11         .         1 
u2 female a            1      11         .         1 
          ae           1      11         .         1 
          aeh          1      11         .         1 
          aehplus      1      11         .         1 
          aheplus      .      .          .         . 
          empty        .      .          .         . 
          full         1      11         .         1 
   male   a            1      11         .         2 
          ae           1      11         .         1 
          aeh          1      11         .         1 
          aehplus      1      10         .         1 
          aheplus      .      1          .         . 
          empty        .      .          .         . 
          full         1      10         1         1 
```


## Cross-tabs of Constructs

```
           
            muscle pulmonary
  executive .      9        
  fluency   36     30       
  fluid     10     .        
  global    10     10       
  knowledge 14     21       
  memory    19     20       
  reasoning 10     10       
  speed     10     10       
```

## Cross-tabs of Measures

```
                    
                     grip pek
  block              10   10 
  bostonnaming       10   10 
  category           10   10 
  digitspan          6    2  
  digitspantotal     .    6  
  digitsymbol        14   11 
  digitsymboltotal   .    1  
  fas                10   10 
  information        10   10 
  logicalmemory      9    1  
  logicalmemorytotal .    9  
  mmse               10   10 
  trailsb            10   9  
  waisvocab          10   11 
```


# Session Information
For the sake of documentation and reproducibility, the current report was rendered on a system using the following software.


```
Report rendered by koval_000 at 2015-05-21, 17:01 -0700
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
[1] dplyr_0.4.1        testit_0.4         ggplot2_1.0.1      RColorBrewer_1.1-2 scales_0.2.4       knitr_1.10.5      

loaded via a namespace (and not attached):
 [1] Rcpp_0.11.6      magrittr_1.5     MASS_7.3-40      munsell_0.4.2    colorspace_1.2-6 stringr_1.0.0   
 [7] plyr_1.8.2       tools_3.2.0      parallel_3.2.0   gtable_0.1.2     DBI_0.3.1        htmltools_0.2.6 
[13] yaml_2.1.13      digest_0.6.8     assertthat_0.1   reshape2_1.4.1   formatR_1.2      evaluate_0.7    
[19] rmarkdown_0.6.1  stringi_0.4-1    proto_0.3-10    
```
