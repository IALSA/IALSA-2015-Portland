# Standardize ISR


<!-- These two chunks should be added in the beginning of every .Rmd that you want to source an .R script -->


<!--  The 1st mandatory chunck  -->
<!--  Set the working directory to the repository's base directory -->


<!--  The 2nd mandatory chunck  -->
<!-- Set the report-wide options, and point to the external code file. -->






<!-- Load the sources.  Suppress the output when loading sources. --> 


<!-- Load 'sourced' R files.  Suppress the output when loading packages. --> 


<!-- Load any Global functions and variables declared in the R file.  Suppress the output. --> 


<!-- Declare any global functions specific to a Rmd output.  Suppress the output. --> 


<!-- Load the datasets.   -->


<!-- Tweak the datasets.   -->


At this point in the workflow, we have a **ds1** - with cleaned, renamed, and re-classified model descriptors. 
<!-- Basic view.   -->

```r
keepvar <-  c("output_file", "subject_count","pp_TAU_00", "p_SIGMA", "p_GAMMA_00" )
ds[1:10, keepvar]
```

```
                                          output_file subject_count pp_TAU_00 p_SIGMA p_GAMMA_00
1            b1_female_aeh_muscle_mental_hand_3ms.out          1578    22.977   9.806     28.405
2        b1_female_aehplus_muscle_mental_hand_3ms.out          1538    22.770   9.855     28.505
3            b1_female_age_muscle_mental_hand_3ms.out          1584    28.297   9.833     26.300
4           b1_female_full_muscle_mental_hand_3ms.out          1536    19.657   9.847     26.797
5              b1_male_aeh_muscle_mental_hand_3ms.out          1489    46.200  18.722     44.242
6          b1_male_aehplus_muscle_mental_hand_3ms.out          1464    45.694  18.787     44.755
7              b1_male_age_muscle_mental_hand_3ms.out          1491    53.900  18.713     43.750
8             b1_male_full_muscle_mental_hand_3ms.out          1454    41.317  18.860     42.292
9      u1_female_aeh_noPhys_mental_noPhysSpec_3ms.out          1578        NA      NA         NA
10 u1_female_aehplus_noPhys_mental_noPhysSpec_3ms.out          1538        NA      NA         NA
```

```r
dim(ds) # rows and columns
```

```
[1] 1649   76
```
The rows of this dataset correspond to the individual models submitted into the Collective, while the columns store various model descriptors, including estimated model parameters.   

All of these model predictors were extracted from the original Mplus output files. They contain misfit , subject and parameter counts, various fit indicies, and estimated parameters. [Model Specification](./reports/model_specification/README.md) report shows how the equation elements correspond to 1) the elements on the Mplus output and 2) to the columns in the dataset. Use this notation to keep track of the following trasformations.  
  

![bivariate model specification](../../libs/images/general_model_specification.png)    
![covariance structure](../../libs/images/specification_covariance_structure.png)

- *&gamma;<sub>00</sub>* - o_GAMMA_00 -  average **initial status** / common intercept of an outcome       
- *&gamma;<sub>10</sub>* - o_GAMMA_10 -  average **rate of change** / common slope of an outcome      
- *&gamma;<sub>0k</sub>* - o_GAMMA_0k -  effect of the *k*th predictor on the random intercept of an outcome  
- *&gamma;<sub>1k</sub>* - o_GAMMA_1k - effect of the *k*th predictor on the random slope of an outcome
- *<sub>pp</sub>&tau;<sub>00</sub>* - pp_TAU_00 - variance of physical intercept  
- *<sub>pp</sub>&tau;<sub>11</sub>* - pp_TAU_11 - variance of physical slope  
- *<sub>cc</sub>&tau;<sub>11</sub>* - cc_TAU_11 - variance of cognitive slope  
- *<sub>cc</sub>&tau;<sub>00</sub>* - cc_TAU_00 - variance of cogntive intercept     
- *<sub>pp</sub>&tau;<sub>01</sub>* - pp_TAU_01 - covariance btw physical intercept and physical slope  
- *<sub>pc</sub>&tau;<sub>01</sub>* - pc_TAU_01 - covariance btw physical intercept and cognitive slope   
- *<sub>pc</sub>&tau;<sub>00</sub>* - pc_TAU_00 - covariance btw physical intercept and cognitive intercept - **I**   
- *<sub>pc</sub>&tau;<sub>11</sub>* - pc_TAU_11 - covariance btw physical slope and cognitive slope  - **S**  - 
- *<sub>pc</sub>&tau;<sub>10</sub>* - pc_TAU_10 - covariance btw physical slope and cognitive intercept   
- *<sub>cc</sub>&tau;<sub>10</sub>* - cc_TAU_10 - covariance btw cognitive slope and cognitive intercept      
- *<sub>p</sub>&#963;</sub>* - p_SIGMA - variance of the physical residual   
- *<sub>c</sub>&#963;</sub>* - c_SIGMA - variance of the cogntive residual    
- *<sub>pc</sub>&#963;</sub>* - pc_SIGMA - covariance btw physcial residual and cogntive residual - **R** 

## Covariance into Correlation
In order to compare models we would like to bring their covariances between intercepts (pc_TAU_00), slopes (pc_TAU_11), and residuals (pc_SIGMA) on the the same scale. A standardized covariance is a correlation. Therefore we compute it by deviding the varince by the product of the square roots of the individual variances:
<!-- Basic view.   -->

```r
ds$pc_CORR_00 <- ds$pc_TAU_00 / (sqrt(ds$pp_TAU_00)*sqrt(ds$cc_TAU_00))
ds$pc_CORR_11 <-  ds$pc_TAU_11 / (sqrt(ds$pp_TAU_11)*sqrt(ds$cc_TAU_11))
ds$pc_CORR_residual <-  ds$pc_SIGMA / (sqrt(ds$p_SIGMA) * sqrt(ds$c_SIGMA))

keepvar <- c("study_name","output_file", "pc_TAU_00", "pp_TAU_00", "cc_TAU_00",  "pc_CORR_00")
ds[1:10, keepvar]
```

```
   study_name                                        output_file pc_TAU_00 pp_TAU_00 cc_TAU_00  pc_CORR_00
1        habc           b1_female_aeh_muscle_mental_hand_3ms.out    -0.292    22.977    24.960 -0.01219309
2        habc       b1_female_aehplus_muscle_mental_hand_3ms.out    -0.485    22.770    23.805 -0.02083177
3        habc           b1_female_age_muscle_mental_hand_3ms.out    -3.935    28.297    43.084 -0.11269808
4        habc          b1_female_full_muscle_mental_hand_3ms.out     1.793    19.657    19.724  0.09105927
5        habc             b1_male_aeh_muscle_mental_hand_3ms.out    -0.372    46.200    28.506 -0.01025071
6        habc         b1_male_aehplus_muscle_mental_hand_3ms.out    -0.594    45.694    28.169 -0.01655660
7        habc             b1_male_age_muscle_mental_hand_3ms.out    -4.267    53.900    52.025 -0.08057906
8        habc            b1_male_full_muscle_mental_hand_3ms.out     2.019    41.317    23.284  0.06509433
9        habc     u1_female_aeh_noPhys_mental_noPhysSpec_3ms.out        NA        NA    24.884          NA
10       habc u1_female_aehplus_noPhys_mental_noPhysSpec_3ms.out        NA        NA    23.730          NA
```




## Confidence Intervals

See [http://www2.sas.com/proceedings/sugi31/170-31.pdf](http://www2.sas.com/proceedings/sugi31/170-31.pdf) and [http://www.fon.hum.uva.nl/praat/manual/Correlation__Confidence_intervals___.html](http://www.fon.hum.uva.nl/praat/manual/Correlation__Confidence_intervals___.html) for details.
We set alpha to .05, intending to compute 95% confidence intervals.   


```r
alpha <- 0.05
limit <- ((1 - (alpha/2)))
```

we compute confidence limits as
\[\begin{array}{l}
{\zeta _{low}} = {r} - {r_{(1 - \alpha /2)}}\sqrt {\frac{1}{{n - 3}}} \\
{\zeta _{high}} = {r} + {r_{(1 - \alpha /2)}}\sqrt {\frac{1}{{n - 3}}} 
\end{array}\]  


```r
ds$pc_ZETA_00_low <- ds$pc_CORR_00 - (limit * sqrt( 1 / (ds$subject_count - 3)))
ds$pc_ZETA_00_high <- ds$pc_CORR_00 + (limit * sqrt( 1 / (ds$subject_count - 3)))
ds$pc_ZETA_11_low <- ds$pc_CORR_11 - (limit * sqrt( 1 / (ds$subject_count - 3)))
ds$pc_ZETA_11_high <- ds$pc_CORR_11 + (limit * sqrt( 1 / (ds$subject_count - 3)))
ds$pc_ZETA_residual_low <- ds$pc_CORR_residual - (limit * sqrt( 1 / (ds$subject_count - 3)))
ds$pc_ZETA_residual_high <- ds$pc_CORR_residual + (limit * sqrt( 1 / (ds$subject_count - 3)))
ds[1:10,c("output_file", "subject_count", "pc_CORR_00", "pc_ZETA_00_low","pc_ZETA_00_high")]
```

```
                                          output_file subject_count  pc_CORR_00 pc_ZETA_00_low pc_ZETA_00_high
1            b1_female_aeh_muscle_mental_hand_3ms.out          1578 -0.01219309    -0.03676078     0.012374597
2        b1_female_aehplus_muscle_mental_hand_3ms.out          1538 -0.02083177    -0.04571750     0.004053964
3            b1_female_age_muscle_mental_hand_3ms.out          1584 -0.11269808    -0.13721911    -0.088177055
4           b1_female_full_muscle_mental_hand_3ms.out          1536  0.09105927     0.06615731     0.115961232
5              b1_male_aeh_muscle_mental_hand_3ms.out          1489 -0.01025071    -0.03554341     0.015041994
6          b1_male_aehplus_muscle_mental_hand_3ms.out          1464 -0.01655660    -0.04206478     0.008951583
7              b1_male_age_muscle_mental_hand_3ms.out          1491 -0.08057906    -0.10585476    -0.055303366
8             b1_male_full_muscle_mental_hand_3ms.out          1454  0.06509433     0.03949840     0.090690256
9      u1_female_aeh_noPhys_mental_noPhysSpec_3ms.out          1578          NA             NA              NA
10 u1_female_aehplus_noPhys_mental_noPhysSpec_3ms.out          1538          NA             NA              NA
```

Now we use these computed confidence limits to obtain confidence intervals for the correlation
\[\begin{array}{l}
{r_{low}} = \tanh ({\zeta _{low}}) = \frac{{\exp (2{\zeta _{low}}) - 1}}{{\exp (2{\zeta _{low}}) + 1}}\\
{r_{high}} = \tanh ({\zeta _{high}}) = \frac{{\exp (2{\zeta _{high}}) - 1}}{{\exp (2{\zeta _{high}}) + 1}}
\end{array}\]


```r
ds$pc_CI95_00_low <- tanh(ds$pc_ZETA_00_low)
ds$pc_CI95_00_high <-  tanh(ds$pc_ZETA_00_high)
ds$pc_CI95_11_low <- tanh(ds$pc_ZETA_11_low)
ds$pc_CI95_11_high <-   tanh(ds$pc_ZETA_11_high)
ds$pc_CI95_residual_low <- tanh(ds$pc_ZETA_residual_low)
ds$pc_CI95_residual_high <-   tanh(ds$pc_ZETA_residual_high)
ds[1:10,c("output_file", "pc_ZETA_00_low","pc_ZETA_00_high", "pc_CI95_00_low","pc_CI95_00_high"  )]
```

```
                                          output_file pc_ZETA_00_low pc_ZETA_00_high pc_CI95_00_low pc_CI95_00_high
1            b1_female_aeh_muscle_mental_hand_3ms.out    -0.03676078     0.012374597    -0.03674423     0.012373966
2        b1_female_aehplus_muscle_mental_hand_3ms.out    -0.04571750     0.004053964    -0.04568568     0.004053942
3            b1_female_age_muscle_mental_hand_3ms.out    -0.13721911    -0.088177055    -0.13636431    -0.087949232
4           b1_female_full_muscle_mental_hand_3ms.out     0.06615731     0.115961232     0.06606096     0.115444236
5              b1_male_aeh_muscle_mental_hand_3ms.out    -0.03554341     0.015041994    -0.03552845     0.015040860
6          b1_male_aehplus_muscle_mental_hand_3ms.out    -0.04206478     0.008951583    -0.04203999     0.008951344
7              b1_male_age_muscle_mental_hand_3ms.out    -0.10585476    -0.055303366    -0.10546115    -0.055247054
8             b1_male_full_muscle_mental_hand_3ms.out     0.03949840     0.090690256     0.03947787     0.090442437
9      u1_female_aeh_noPhys_mental_noPhysSpec_3ms.out             NA              NA             NA              NA
10 u1_female_aehplus_noPhys_mental_noPhysSpec_3ms.out             NA              NA             NA              NA
```

```r
ds[1:20, c("pc_TAU_00", "pc_TAU_00_pval", "pc_CI95_00_low","pc_CORR_00", "pc_CI95_00_high" )]
```

```
   pc_TAU_00 pc_TAU_00_pval pc_CI95_00_low  pc_CORR_00 pc_CI95_00_high
1     -0.292          0.773    -0.03674423 -0.01219309     0.012373966
2     -0.485          0.627    -0.04568568 -0.02083177     0.004053942
3     -3.935          0.003    -0.13636431 -0.11269808    -0.087949232
4      1.793          0.059     0.06606096  0.09105927     0.115444236
5     -0.372          0.791    -0.03552845 -0.01025071     0.015040860
6     -0.594          0.674    -0.04203999 -0.01655660     0.008951344
7     -4.267          0.018    -0.10546115 -0.08057906    -0.055247054
8      2.019          0.131     0.03947787  0.06509433     0.090442437
9         NA             NA             NA          NA              NA
10        NA             NA             NA          NA              NA
11        NA             NA             NA          NA              NA
12        NA             NA             NA          NA              NA
13        NA             NA             NA          NA              NA
14        NA             NA             NA          NA              NA
15        NA             NA             NA          NA              NA
16        NA             NA             NA          NA              NA
17     0.247          0.000     0.24962933  0.27958516     0.295108426
18     0.217          0.000     0.22675511  0.25565175     0.273402459
19     0.497          0.000     0.36203443  0.40374626     0.403872238
20     0.105          0.003     0.12046242  0.14595219     0.169210863
```



```r
# head(ds[ , c("study_name","model_number","subgroup", "model_type", "physical_measure","cognitive_measure")], 30)
```

## Export log

```r
saveRDS(ds,"./data/shared/ds2.rds")
#
# source("./scripts/make_pretty.r")
```







