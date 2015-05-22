# Individual study report: count models



<!--  Set the working directory to the repository's base directory; this assumes the report is nested inside of two directories.-->


<!-- Set the report-wide options, and point to the external code file. -->


<!-- Load the sources.  Suppress the output when loading sources. --> 


<!-- Load 'sourced' R files.  Suppress the output when loading packages. --> 


<!-- load global data -->


<!-- load sepecific data -->


<!-- load functions used in the report -->

```
Source: local data frame [10 x 2]

   physical_specific   n
1               grip 131
2          noPhySpec   8
3          noPhysSec   5
4         noPhysSpec  46
5          nocogspec   1
6         nophsyspec   1
7         nophysSpec   3
8         nophysspec 158
9                pek 133
10                NA   1
```


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

### Filename components
From left to right, the components of filename are:

  1. Model number (*e.g.* b1, u0) - specification(u, b) and highest random term (0,1,2)  
  2. Sex (*e.g.* male, female) - model fitted using this subset of data
  3. covariateSet - a set of predictors entered into the model on the second level:
    - empty : no covariate included into the model  
    - a : age is entered as a baseline measure, second level  
    - ae : age + education  
    - aeh : age + education + height  
    - aehplus: age + education + height + diabetes + smoking history + cardiovascular  
    - full : all covariates availible in the study (will be different across studies)  
  4. Physical Construct (*e.g.* pulmonary, muscle) - general physical function that can have a number of specific operationalizations or measurements.
  5. Cognitive Construct (*e.g.* reasoning, memory) - general cognitive function that can have a number of specific operationalizations or measurements.
  6. Physical Measure (e.g. pek, grip ) - a specific way to operationalize the measurement of a physical construct
  7. Cognitive Measure (e.g. block, digitspan ) - a specific way to operationalize the measurement of a cognitive construct  
  
### Additional rules
 
 - Construct and Measure names cannot be the same  
 - In univariate models, the absence of a modeling term must be explicit:
 
 ```
 u1_male_aeh_pulmonary_noCog_pek_noCogSpec
 ```
 instead of  
 ```
 u1_male_aeh_pulmonary_pek
 ```

## Errors of omission
The most common mistake is omitting some of the 7 elements of output file's name. The following files need to be renamed so that our scripts can understand what constructs and variables were used in these models:

```
[1] "u1_female_aeh_nophys_block.out"           "u1_female_aeh_nophys_block_nocogspec.out"
```



  
## Inspect models in the study

```
t1 1 161 22 23 59
                 
   1   1  1  1  1
```

```
   model_number version active valid best_in_gender study_name       date     time converged subgroup model_type
1            b1     0.1     NA    NA             NA        eas 03/25/2015  8:31 AM      TRUE   female         ae
2            b1     0.1     NA    NA             NA        eas 03/25/2015  8:23 AM      TRUE   female         ae
3            b1     0.1     NA    NA             NA        eas 03/25/2015  7:15 AM      TRUE   female         ae
24           b1     0.1     NA    NA             NA        eas 03/25/2015  8:33 AM      TRUE   female        aeh
25           b1     0.1     NA    NA             NA        eas 03/25/2015  8:22 AM      TRUE   female        aeh
26           b1     0.1     NA    NA             NA        eas 03/25/2015  7:17 AM      TRUE   female        aeh
   physical_outcome var_int_physical se_int_physical var_slope_physical se_slope_physical var_residual_physical
1            muscle           33.059           4.998              1.018             0.314                 6.923
2            muscle           33.654           4.877              0.962             0.281                 6.872
3            muscle           34.044           5.104              1.001             0.280                 6.889
24           muscle           25.739           5.488              0.223             0.177                 5.745
25           muscle           25.446           4.895              0.195             0.153                 5.784
26           muscle           25.363           4.787              0.192             0.171                 5.763
   se_residual_physical cognitive_outcome var_int_cog se_int_cog var_slope_cog se_slope_cog var_residual_cog
1                 0.387           fluency       4.331      0.413         0.009        0.014            1.933
2                 0.391           fluency      52.973      4.459         0.755        0.164           17.911
3                 0.394           fluency     114.395      9.321         0.290        0.221           28.527
24                0.417           fluency       3.484      0.854         0.023        0.027            1.787
25                0.439           fluency      58.863     10.514         0.914        0.345           17.307
26                0.470           fluency     114.596     21.086         0.178        0.315           25.829
   se_residual_cog cov_int cov_slope cov_residual p_cov_int p_cov_slope p_cov_res subject_count wave_count
1            0.084   3.085     0.007        0.135     0.017       0.882     0.537           594          8
2            0.802   5.411     0.053       -0.795     0.270       0.802     0.248           593          8
3            1.235  14.543     0.334        0.656     0.027       0.120     0.434           571          8
24           0.145   3.691     0.026        0.025     0.016       0.677     0.914           150          8
25           1.299   8.137     0.150       -0.486     0.137       0.455     0.493           150          8
26           1.934  13.160     0.042        0.757     0.088       0.795     0.450           150          8
   datapoint_count parameter_count deviance          software                                        output_file
1               NA              25       NA Mplus VERSION 7.3  b1_female_ae_muscle_fluency_grip_bostonnaming.out
2               NA              25       NA Mplus VERSION 7.3      b1_female_ae_muscle_fluency_grip_category.out
3               NA              25       NA Mplus VERSION 7.3           b1_female_ae_muscle_fluency_grip_fas.out
24              NA              29       NA Mplus VERSION 7.3 b1_female_aeh_muscle_fluency_grip_bostonnaming.out
25              NA              29       NA Mplus VERSION 7.3     b1_female_aeh_muscle_fluency_grip_category.out
26              NA              29       NA Mplus VERSION 7.3          b1_female_aeh_muscle_fluency_grip_fas.out
   model_description results_descriptions notes                                         data_file physical_specific
1                 ??                   NA  <NA>  C:\\Users\\Andrea Zammit\\Desktop\\EASMaster.csv              grip
2                 ??                   NA  <NA>  C:\\Users\\Andrea Zammit\\Desktop\\EASMaster.csv              grip
3                 ??                   NA  <NA>  C:\\Users\\Andrea Zammit\\Desktop\\EASMaster.csv              grip
24                ??                   NA  <NA>  C:\\Users\\Andrea Zammit\\Desktop\\EASMaster.csv              grip
25                ??                   NA  <NA>  C:\\Users\\Andrea Zammit\\Desktop\\EASMaster.csv              grip
26                ??                   NA  <NA>  C:\\Users\\Andrea Zammit\\Desktop\\EASMaster.csv              grip
   cognitive_specific        LL       aic       bic   adj_bic      aaic se_cov_int se_cov_slope se_cov_residual
1        bostonnaming -5494.595 11039.190 11148.862 11069.494 11041.479      1.287        0.049           0.218
2            category -7587.787 15225.574 15335.204 15255.836 15227.867      4.901        0.212           0.688
3                 fas -7797.886 15645.772 15754.457 15675.093 15648.157      6.557        0.215           0.840
24       bostonnaming -2505.361  5068.723  5156.031  5064.252  5083.223      1.533        0.062           0.230
25           category -3266.486  6590.971  6678.280  6586.500  6605.471      5.475        0.201           0.709
26                fas -3392.868  6843.736  6931.044  6839.265  6858.236      7.723        0.161           1.002
      sd_int   sd_slope  sd_residual outcome_count int_zetau  int_zetal ciu_sd_int cil_sd_int slope_zetau slope_zetal
1  0.2578198 0.07313123  0.036903765             2 0.2979259 0.21771363  0.2894134 0.21433780   0.1132374  0.03302509
2  0.1281539 0.06218918 -0.071658157             2 0.1682940 0.08801381  0.1667230 0.08778725   0.1023293  0.02204907
3  0.2330398 0.61991255  0.046794811             2 0.2739499 0.19212976  0.2672964 0.18980007   0.6608226  0.57900246
24 0.3897707 0.36304211  0.007802481             2 0.4701873 0.30935401  0.4383506 0.29984930   0.4434588  0.28262546
25 0.2102487 0.35530462 -0.048574823             2 0.2906654 0.12983207  0.2827471 0.12910746   0.4357213  0.27488798
26 0.2441017 0.22718972  0.062046569             2 0.3245184 0.16368508  0.3135867 0.16223872   0.3076064  0.14677307
   ciu_sd_slope cil_sd_slope residual_zetau residual_zetal ciu_sd_residual cil_sd_residual uni_bi
1     0.1127558   0.03301309     0.07700991   -0.003202376      0.07685803    -0.003202365      b
2     0.1019736   0.02204550    -0.03151804   -0.111798272     -0.03150761    -0.111334806      b
3     0.5789106   0.52194002     0.08770490    0.005884720      0.08748071     0.005884652      b
24    0.4165073   0.27533326     0.08821913   -0.072614164      0.08799098    -0.072486805      b
25    0.4100915   0.26816722     0.03184182   -0.128991468      0.03183106    -0.128280777      b
26    0.2982580   0.14572813     0.14246321   -0.018370075      0.14150717    -0.018368009      b
                                       model_name
1   b1_female_ae_muscle_fluency_grip_bostonnaming
2       b1_female_ae_muscle_fluency_grip_category
3            b1_female_ae_muscle_fluency_grip_fas
24 b1_female_aeh_muscle_fluency_grip_bostonnaming
25     b1_female_aeh_muscle_fluency_grip_category
26          b1_female_aeh_muscle_fluency_grip_fas
```

```
                                                     output_file
1       u1_female_ae_nophys_memory_nophysspec_digitspantotal.out
2        u1_female_ae_nophys_memory_nophysspec_logicalmemory.out
3       u2_female_ae_nophys_memory_nophysspec_digitspantotal.out
4        u2_female_ae_nophys_memory_nophysspec_logicalmemory.out
5      u1_female_aeh_nophys_memory_nophysspec_digitspantotal.out
6       u1_female_aeh_nophys_memory_nophysspec_logicalmemory.out
7      u2_female_aeh_nophys_memory_nophysspec_digitspantotal.out
8       u2_female_aeh_nophys_memory_nophysspec_logicalmemory.out
9  u1_female_aehplus_nophys_memory_nophysspec_digitspantotal.out
10  u1_female_aehplus_nophys_memory_nophysspec_logicalmemory.out
11 u2_female_aehplus_nophys_memory_nophysspec_digitspantotal.out
12  u2_female_aehplus_nophys_memory_nophysspec_logicalmemory.out
13     u1_female_age_nophys_memory_nophysspec_digitspantotal.out
14      u1_female_age_nophys_memory_nophysspec_logicalmemory.out
15     u2_female_age_nophys_memory_nophysspec_digitspantotal.out
16      u2_female_age_nophys_memory_nophysspec_logicalmemory.out
17    u1_female_full_nophys_memory_nophysspec_digitspantotal.out
18     u1_female_full_nophys_memory_nophysspec_logicalmemory.out
19    u2_female_full_nophys_memory_nophysspec_digitspantotal.out
20     u2_female_full_nophys_memory_nophysspec_logicalmemory.out
21        u1_male_ae_nophys_memory_nophysspec_digitspantotal.out
22         u1_male_ae_nophys_memory_nophysspec_logicalmemory.out
23       u2_male_ae_nophys_memory_nophysspec_disigtspantotal.out
24         u2_male_ae_nophys_memory_nophysspec_logicalmemory.out
25       u1_male_aeh_nophys_memory_nophysspec_digitspantotal.out
26        u1_male_aeh_nophys_memory_nophysspec_logicalmemory.out
27       u2_male_aeh_nophys_memory_nophysspec_digitspantotal.out
28        u2_male_aeh_nophys_memory_nophysspec_logicalmemory.out
29   u1_male_aehplus_nophys_memory_nophysspec_digitspantotal.out
30    u1_male_aehplus_nophys_memory_nophysspec_logicalmemory.out
31   u2_male_aehplus_nophys_memory_nophysspec_digitspantotal.out
32    u2_male_aehplus_nophys_memory_nophysspec_logicalmemory.out
33       u1_male_age_nophys_memory_nophsyspec_digitspantotal.out
34        u1_male_age_nophys_memory_nophysspec_logicalmemory.out
35       u2_male_age_nophys_memory_nophysspec_digitspantotal.out
36        u2_male_age_nophys_memory_nophysspec_logicalmemory.out
37      u1_male_full_nophys_memory_nophysspec_digitspantotal.out
38       u1_male_full_nophys_memory_nophysspec_logicalmemory.out
39       u2_male_full_nophys_memory_nophysspec_logicalmemory.out
40  u2_male_full_nophysspec_memory_nophysspec_digitspantotal.out
```


## Cross-tabs of Constructs

```
            
             muscle pulmonary
   knowledge .      1        
  executive  .      9        
  fluency    36     30       
  fluid      10     .        
  global     10     10       
  knowledge  14     20       
  memory     19     20       
  reasoning  10     10       
  speed      10     10       
```

## Cross-tabs of Measures

```
                    
                     grip pek
  block              10   10 
  bostonmaning       .    1  
  bostonnaming       10   9  
  category           10   10 
  digitspan          6    2  
  digitspantotal     .    6  
  digitsymbol        13   11 
  digitsymboltotal   .    1  
  digitsymol         1    .  
  fas                10   10 
  information        10   10 
  logicalmemory      9    1  
  logicalmemorytotal .    9  
  mmse               10   10 
  trailsb            10   8  
  trailsB            .    1  
  waisvocab          10   11 
```


# Session Information
For the sake of documentation and reproducibility, the current report was rendered on a system using the following software.


```
Report rendered by koval_000 at 2015-05-22, 14:45 -0700
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
[1] MplusAutomation_0.6-3 testit_0.4            ggplot2_1.0.1         RColorBrewer_1.1-2    scales_0.2.4         
[6] knitr_1.10.5          dplyr_0.4.1          

loaded via a namespace (and not attached):
 [1] Rcpp_0.11.6      magrittr_1.5     MASS_7.3-40      munsell_0.4.2    xtable_1.7-4     lattice_0.20-31 
 [7] colorspace_1.2-6 R6_2.0.1         stringr_1.0.0    plyr_1.8.2       tcltk_3.2.0      tools_3.2.0     
[13] parallel_3.2.0   gtable_0.1.2     texreg_1.35      coda_0.17-1      DBI_0.3.1        htmltools_0.2.6 
[19] yaml_2.1.13      lazyeval_0.1.10  assertthat_0.1   digest_0.6.8     formatR_1.2      reshape2_1.4.1  
[25] evaluate_0.7     rmarkdown_0.6.1  gsubfn_0.6-6     stringi_0.4-1    boot_1.3-16      proto_0.3-10    
```
