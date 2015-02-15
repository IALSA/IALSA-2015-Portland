# Bivariate Outcomes -- Study-Specific


This report covers the analyses used in the ZZZ project (Marcus Mark, PI).

<!--  Set the working directory to the repository's base directory; this assumes the report is nested inside of two directories.-->


<!-- Set the report-wide options, and point to the external code file. -->


<!-- Load the sources.  Suppress the output when loading sources. --> 


<!-- Load 'sourced' R files.  Suppress the output when loading packages. --> 


<!-- Load any Global functions and variables declared in the R file.  Suppress the output. --> 


<!-- Declare any global functions specific to a Rmd output.  Suppress the output. --> 


<!-- Load the datasets.   -->


<!-- Tweak the datasets.   -->


## Notes

**Note 1**: The current report covers 3 studies: elsa, octo, radc.

**Note 2**: The Seattle track's phluguerstometer was producing flaky negative values; it's measurements have been dropped.

# Tables
## elsa

model_number    version  active   date         time    study_name   converged   subgroup    subject_count   wave_count      n   parameter_count   deviance  cognitive_outcome      var_int_cog   var_slope_cog   var_residual_cog  physical_outcome         var_int_physical   var_slope_physical   var_residual_physical   cov_int   cov_slope   cov_residual   p_cov_int   p_cov_slope   p_cov_res  input_file   output_file   software   model_description 
-------------  --------  -------  -----------  ------  -----------  ----------  ---------  --------------  -----------  -----  ----------------  ---------  --------------------  ------------  --------------  -----------------  ----------------------  -----------------  -------------------  ----------------------  --------  ----------  -------------  ----------  ------------  ----------  -----------  ------------  ---------  ------------------
model_1             0.1  TRUE     2015-02-13   14:45   ELSA         FALSE       FEMALE                345            6   1234                12        345  Muscle strength          0.8331761       0.8358403          0.2436467  Speed                           0.4457892            0.0305119               0.5408755      0.34   0.7510037      0.0361295   0.0180942     0.9806216   0.7346010  NA           NA            Mplus      NA                
model_2             1.1  TRUE     2015-02-14   15:45   ELSA          TRUE       MALE                  765            6    434                12        765  Flamingo stand time      0.8506312       0.4050953          0.5791049  Executive functioning           0.1426845            0.0749299               0.3759109      0.56   0.1704132      0.4618914   0.3936598     0.9610879   0.2790328  NA           NA            R          NA                

## octo

model_number    version  active   date         time    study_name   converged   subgroup    subject_count   wave_count      n   parameter_count   deviance  cognitive_outcome     var_int_cog   var_slope_cog   var_residual_cog  physical_outcome        var_int_physical   var_slope_physical   var_residual_physical   cov_int   cov_slope   cov_residual   p_cov_int   p_cov_slope   p_cov_res  input_file   output_file   software   model_description 
-------------  --------  -------  -----------  ------  -----------  ----------  ---------  --------------  -----------  -----  ----------------  ---------  -------------------  ------------  --------------  -----------------  ---------------------  -----------------  -------------------  ----------------------  --------  ----------  -------------  ----------  ------------  ----------  -----------  ------------  ---------  ------------------
model_1             0.1  TRUE     2015-02-13   14:45   OCTO          TRUE       MALE                  455            5   4567                11       2345  Walking speed time      0.9025245       0.3162918          0.5058313  Visuospatial ability           0.7765165            0.6503539               0.0078091      0.34   0.6088333      0.2788814   0.4319653     0.3600369   0.8363335  NA           NA            Mplus      NA                
model_2             1.1  TRUE     2015-02-14   15:45   OCTO         FALSE       FEMALE                343            5   6543                11        765  Chair rise time         0.0683631       0.5110404          0.0620884  Mental status                  0.9818577            0.5696030               0.6640230      0.56   0.7661123      0.9949875   0.5289317     0.8677954   0.6724513  NA           NA            R          NA                

## radc

model_number    version  active   date         time    study_name   converged   subgroup    subject_count   wave_count      n   parameter_count   deviance  cognitive_outcome     var_int_cog   var_slope_cog   var_residual_cog  physical_outcome         var_int_physical   var_slope_physical   var_residual_physical   cov_int   cov_slope   cov_residual   p_cov_int   p_cov_slope   p_cov_res  input_file   output_file   software   model_description 
-------------  --------  -------  -----------  ------  -----------  ----------  ---------  --------------  -----------  -----  ----------------  ---------  -------------------  ------------  --------------  -----------------  ----------------------  -----------------  -------------------  ----------------------  --------  ----------  -------------  ----------  ------------  ----------  -----------  ------------  ---------  ------------------
model_1             0.1  TRUE     2015-02-13   14:45   RADC         FALSE       FEMALE                876            7   7654                13       1234  Walking speed time      0.5714304       0.2320859          0.7359504  Executive functioning           0.6844271            0.1508478               0.2338379      0.34   0.8124224      0.5751917   0.2127375     0.0918154   0.3401691  NA           NA            Mplus      NA                
model_2             1.1  TRUE     2015-02-14   15:45   RADC          TRUE       MALE                  874            7   9876                13       5435  Pulmonary function      0.0399067       0.2017131          0.8522131  Reasoning                       0.1141687            0.9206334               0.1572574      0.56   0.2489488      0.1191360   0.1129956     0.2528558   0.3545715  NA           NA            R          NA                


# Questions
## Unanswered Questions
 1. What does `VS` stand for?  How was it measured?
 1. Where the cars at the Philly track measured with the same phluguerstometer and the Cleveland track?
 
## Answered Questions
 1. The Seattle track's phluguerstometer was producing flaky negative values; it's measurements have been dropped.

# Session Information
For the sake of documentation and reproducibility, the current report was rendered on a system using the following software.


```
Report rendered by wibeasley at 2015-02-14, 17:06 -0800
```

```
R version 3.1.2 (2014-10-31)
Platform: x86_64-pc-linux-gnu (64-bit)

locale:
 [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C               LC_TIME=en_US.UTF-8        LC_COLLATE=en_US.UTF-8    
 [5] LC_MONETARY=en_US.UTF-8    LC_MESSAGES=en_US.UTF-8    LC_PAPER=en_US.UTF-8       LC_NAME=C                 
 [9] LC_ADDRESS=C               LC_TELEPHONE=C             LC_MEASUREMENT=en_US.UTF-8 LC_IDENTIFICATION=C       

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] ggplot2_1.0.0      RColorBrewer_1.1-2 scales_0.2.4       knitr_1.9         

loaded via a namespace (and not attached):
 [1] colorspace_1.2-4 digest_0.6.8     evaluate_0.5.5   formatR_1.0      grid_3.1.2       gtable_0.1.2    
 [7] htmltools_0.2.6  MASS_7.3-37      munsell_0.4.2    plyr_1.8.1       proto_0.3-10     Rcpp_0.11.4     
[13] reshape2_1.4.1   rmarkdown_0.5.1  stringr_0.6.2    tools_3.1.2      yaml_2.1.13     
```
