# Collected Outcomes -- Study-Specific



<!--  Set the working directory to the repository's base directory; this assumes the report is nested inside of two directories.-->


<!-- Set the report-wide options, and point to the external code file. -->


<!-- Load the sources.  Suppress the output when loading sources. --> 


<!-- Load 'sourced' R files.  Suppress the output when loading packages. --> 


<!-- Load any Global functions and variables declared in the R file.  Suppress the output. --> 


<!-- Declare any global functions specific to a Rmd output.  Suppress the output. --> 


<!-- Load the datasets.   -->


<!-- Tweak the datasets.   -->


<!-- Calculate the forest results (but don't plot yet).   -->


## Notes

**Note 1**: The current report covers 2 studies: habc, octo.

**Note 2**: The Seattle track's phluguerstometer was producing flaky negative values; it's measurements have been dropped.

# Study-Specific Tables
Two tables are created for each study: one for univariate models, another for bivariate models

## habc


Table: Univariate Results

model   study   subgroup   model<br/>type   outcome<br/>physical       new   se_int_physical   var_slope_physical   se_slope_physical   var_residual_physical   se_residual_physical  cognitive_outcome   var_int_cog    se_int_cog   var_slope_cog   se_slope_cog   var_residual_cog   se_residual_cog   cov_int   cov_slope   cov_residual   p_cov_int   p_cov_slope   p_cov_res   subject_count  wave_count   datapoint_count    parameter_count  deviance            LL        aic        bic    adj_bic       aaic  output_file                          
------  ------  ---------  ---------------  ---------------------  -------  ----------------  -------------------  ------------------  ----------------------  ---------------------  ------------------  ------------  -----------  --------------  -------------  -----------------  ----------------  --------  ----------  -------------  ----------  ------------  ----------  --------------  -----------  ----------------  ----------------  ---------  -----------  ---------  ---------  ---------  ---------  -------------------------------------
u0      habc    female     empty            muscle                  24.506             1.115                   NA                  NA                  12.182                  0.910  noCog               --                     NA              NA             NA                 NA                NA        NA          NA             NA          NA            NA          NA            1580  to_do        NA                               3  NA          -20472.800   40951.60   40967.70   40958.17   40951.62  u0_female_empty_muscle_noCog.out     
u0      habc    male       empty            muscle                  50.696             2.285                   NA                  NA                  25.076                  1.077  noCog               --                     NA              NA             NA                 NA                NA        NA          NA             NA          NA            NA          NA            1489  to_do        NA                               3  NA          -21268.258   42542.52   42558.43   42548.90   42542.53  u0_male_empty_muscle_noCog.out       
u1      habc    female     age              muscle                  28.346             1.674                0.103               0.030                   9.839                  0.753  noCog               --                     NA              NA             NA                 NA                NA        NA          NA             NA          NA            NA          NA            1580  to_do        NA                               8  NA          -20107.382   40230.76   40273.69   40248.27   40230.86  u1_female_age_muscle_noCog.out       
u1      habc    male       age              muscle                  53.856             2.495                0.122               0.035                  18.737                  0.979  noCog               --                     NA              NA             NA                 NA                NA        NA          NA             NA          NA            NA          NA            1489  to_do        NA                               8  NA          -20645.867   41307.73   41350.18   41324.77   41307.83  u1_male_age_muscle_noCog.out         
u0      habc    female     empty            noPhys                      NA                NA                   NA                  NA                      NA                     NA  executive           2.76                0.199              NA             NA              2.505             0.109        NA          NA             NA          NA            NA          NA            1407  to_do        NA                               3  NA           -9150.481   18306.96   18322.71   18313.18   18306.98  u0_female_empty_noPhys_executive.out 
u0      habc    female     empty            noPhys                      NA                NA                   NA                  NA                      NA                     NA  mental              67.63               4.257              NA             NA             37.055             2.011        NA          NA             NA          NA            NA          NA            1584  to_do        NA                               3  NA          -23499.704   47005.41   47021.51   47011.98   47005.42  u0_female_empty_noPhys_mental.out    
u0      habc    female     empty            noPhys                      NA                NA                   NA                  NA                      NA                     NA  speed               160.27              6.414              NA             NA             53.295             2.400        NA          NA             NA          NA            NA          NA            1576  to_do        NA                               3  NA          -19816.333   39638.67   39654.75   39645.22   39638.68  u0_female_empty_noPhys_speed.out     
u0      habc    male       empty            noPhys                      NA                NA                   NA                  NA                      NA                     NA  executive           2.84                0.190              NA             NA              3.874             0.148        NA          NA             NA          NA            NA          NA            1284  to_do        NA                               3  NA           -8815.431   17636.86   17652.34   17642.81   17636.88  u0_male_empty_noPhys_executive.out   
u0      habc    male       empty            noPhys                      NA                NA                   NA                  NA                      NA                     NA  mental              73.13               5.168              NA             NA             35.472             2.263        NA          NA             NA          NA            NA          NA            1486  to_do        NA                               3  NA          -21031.049   42068.10   42084.01   42074.48   42068.12  u0_male_empty_noPhys_mental.out      
u0      habc    male       empty            noPhys                      NA                NA                   NA                  NA                      NA                     NA  speed               160.66              6.159              NA             NA             48.886             2.387        NA          NA             NA          NA            NA          NA            1473  to_do        NA                               3  NA          -17387.131   34780.26   34796.15   34786.62   34780.28  u0_male_empty_noPhys_speed.out       
u1      habc    female     age              noPhys                      NA                NA                   NA                  NA                      NA                     NA  executive           2.85                0.424           0.017          0.008              2.250             0.108        NA          NA             NA          NA            NA          NA            1407  to_do        NA                               8  NA           -9073.166   18162.33   18204.33   18178.91   18162.44  u1_female_age_noPhys_executive.out   
u1      habc    female     age              noPhys                      NA                NA                   NA                  NA                      NA                     NA  mental              43.03               4.596           1.133          0.223             23.504             1.494        NA          NA             NA          NA            NA          NA            1584  to_do        NA                               8  NA          -22925.568   45867.14   45910.08   45884.66   45867.23  u1_female_age_noPhys_mental.out      
u1      habc    female     age              noPhys                      NA                NA                   NA                  NA                      NA                     NA  speed               177.20              7.984           0.693          0.091             34.183             1.934        NA          NA             NA          NA            NA          NA            1576  to_do        NA                               8  NA          -19406.607   38829.21   38872.12   38846.70   38829.31  u1_female_age_noPhys_speed.out       
u1      habc    male       age              noPhys                      NA                NA                   NA                  NA                      NA                     NA  executive           3.38                0.585           0.020          0.012              3.615             0.160        NA          NA             NA          NA            NA          NA            1284  to_do        NA                               8  NA           -8780.832   17577.67   17618.93   17593.51   17577.78  u1_male_age_noPhys_executive.out     
u1      habc    male       age              noPhys                      NA                NA                   NA                  NA                      NA                     NA  mental              51.99               5.122           0.899          0.212             24.239             1.430        NA          NA             NA          NA            NA          NA            1486  to_do        NA                               8  NA          -20623.172   41262.34   41304.78   41279.36   41262.44  u1_male_age_noPhys_mental.out        
u1      habc    male       age              noPhys                      NA                NA                   NA                  NA                      NA                     NA  speed               180.83              8.372           0.446          0.084             33.470             2.471        NA          NA             NA          NA            NA          NA            1473  to_do        NA                               8  NA          -17060.073   34136.15   34178.51   34153.09   34136.25  u1_male_age_noPhys_speed.out         



Table: Bivariate Results

model_number   study_name   subgroup   model_type   physical_outcome    var_int_physical   se_int_physical   var_slope_physical   se_slope_physical   var_residual_physical   se_residual_physical  cognitive_outcome   var_int_cog    se_int_cog   var_slope_cog   se_slope_cog   var_residual_cog   se_residual_cog   cov_int   cov_slope   cov_residual   p_cov_int   p_cov_slope   p_cov_res   subject_count  wave_count   datapoint_count    parameter_count  deviance    LL   aic   bic   adj_bic   aaic  output_file 
-------------  -----------  ---------  -----------  -----------------  -----------------  ----------------  -------------------  ------------------  ----------------------  ---------------------  ------------------  ------------  -----------  --------------  -------------  -----------------  ----------------  --------  ----------  -------------  ----------  ------------  ----------  --------------  -----------  ----------------  ----------------  ---------  ---  ----  ----  --------  -----  ------------

## octo


Table: Univariate Results

model   study   subgroup   model<br/>type   outcome<br/>physical          new   se_int_physical   var_slope_physical   se_slope_physical   var_residual_physical   se_residual_physical  cognitive_outcome   var_int_cog    se_int_cog   var_slope_cog   se_slope_cog   var_residual_cog   se_residual_cog   cov_int   cov_slope   cov_residual   p_cov_int   p_cov_slope   p_cov_res   subject_count  wave_count   datapoint_count    parameter_count  deviance           LL        aic        bic    adj_bic       aaic  output_file                         
------  ------  ---------  ---------------  ---------------------  ----------  ----------------  -------------------  ------------------  ----------------------  ---------------------  ------------------  ------------  -----------  --------------  -------------  -----------------  ----------------  --------  ----------  -------------  ----------  ------------  ----------  --------------  -----------  ----------------  ----------------  ---------  ----------  ---------  ---------  ---------  ---------  ------------------------------------
u1      octo    female     age              nophys                         NA                NA                   NA                  NA                      NA                     NA  block               34.07               3.272           0.174          0.072             10.731             0.796        NA          NA             NA          NA            NA          NA             275  to_do        NA                               8  NA          -2577.681   5171.362   5200.296   5174.930   5171.903  u1_female_age_nophys_block.out      
u1      octo    male       age              nophys                         NA                NA                   NA                  NA                      NA                     NA  block               43.50               5.603           0.022          0.094              9.237             1.153        NA          NA             NA          NA            NA          NA             147  to_do        NA                               8  NA          -1241.855   2499.710   2523.633   2498.317   2500.753  u1_male_age_nophys_block.out        
u0      octo    female     empty            pulmonary                3897.972           458.477                   NA                  NA                2799.633                245.963  nocog               --                     NA              NA             NA                 NA                NA        NA          NA             NA          NA            NA          NA             251  to_do        NA                               3  NA          -4056.054   8118.108   8128.684   8119.174   8118.205  u0_female_empty_pulmonary_nocog.out 
u0      octo    male       empty            pulmonary                8387.525          1190.440                   NA                  NA                4527.389                491.934  nocog               --                     NA              NA             NA                 NA                NA        NA          NA             NA          NA            NA          NA             129  to_do        NA                               3  NA          -2147.177   4300.353   4308.933   4299.445   4300.545  u0_male_empty_pulmonary_nocog.out   
u1      octo    female     age              pulmonary                4832.997           560.724               35.088              16.558                2104.979                185.056  nocog               --                     NA              NA             NA                 NA                NA        NA          NA             NA          NA            NA          NA             251  to_do        NA                               8  NA          -4015.696   8047.391   8075.595   8050.234   8047.986  u1_female_age_pulmonary_nocog.out   
u1      octo    female     full             pulmonary                4484.610           550.629               31.159              16.383                2113.673                187.013  nocog               --                     NA              NA             NA                 NA                NA        NA          NA             NA          NA            NA          NA             249  to_do        NA                              16  NA          -3983.867   7999.735   8056.014   8005.293   8002.080  u1_female_full_pulmonary_nocog.out  
u1      octo    male       age              pulmonary                9650.289          1526.077               34.735              22.599                3431.834                434.637  nocog               --                     NA              NA             NA                 NA                NA        NA          NA             NA          NA            NA          NA             129  to_do        NA                               8  NA          -2120.718   4257.435   4280.314   4255.012   4258.635  u1_male_age_pulmonary_nocog.out     
u1      octo    male       full             pulmonary                9017.826          1430.652               27.859              20.197                3409.074                430.944  nocog               --                     NA              NA             NA                 NA                NA        NA          NA             NA          NA            NA          NA             129  to_do        NA                              16  NA          -2115.232   4262.465   4308.222   4257.619   4267.322  u1_male_full_pulmonary_nocog.out    
u2      octo    female     age              pulmonary                4820.008           568.755              219.076              73.752                1833.043                179.154  nocog               --                     NA              NA             NA                 NA                NA        NA          NA             NA          NA            NA          NA             251  to_do        NA                              13  NA          -3999.369   8024.739   8070.570   8029.358   8026.275  u2_female_age_pulmonary_nocog.out   
u2      octo    male       age              pulmonary               10202.395          1472.019              117.468              51.776                3035.168                400.404  nocog               --                     NA              NA             NA                 NA                NA        NA          NA             NA          NA            NA          NA             129  to_do        NA                              13  NA          -2111.277   4248.553   4285.731   4244.616   4251.718  u2_male_age_pulmonary_nocog.out     



Table: Bivariate Results

model_number   study_name   subgroup   model_type   physical_outcome    var_int_physical   se_int_physical   var_slope_physical   se_slope_physical   var_residual_physical   se_residual_physical  cognitive_outcome   var_int_cog    se_int_cog   var_slope_cog   se_slope_cog   var_residual_cog   se_residual_cog   cov_int   cov_slope   cov_residual   p_cov_int   p_cov_slope   p_cov_res   subject_count  wave_count   datapoint_count    parameter_count  deviance           LL         aic         bic     adj_bic        aaic  output_file                        
-------------  -----------  ---------  -----------  -----------------  -----------------  ----------------  -------------------  ------------------  ----------------------  ---------------------  ------------------  ------------  -----------  --------------  -------------  -----------------  ----------------  --------  ----------  -------------  ----------  ------------  ----------  --------------  -----------  ----------------  ----------------  ---------  ----------  ----------  ----------  ----------  ----------  -----------------------------------
b1             octo         female     age          pulmonary                   4810.249           557.666               32.164              15.866                2116.718                185.761  block               34.18               3.292           0.173          0.071             10.740             0.797   116.449       0.262         22.298       0.002         0.700       0.018             293  to_do        NA                              21  NA          -6577.854   13197.707   13274.991   13208.395   13201.117  b1_female_age_pulmonary_block.out  
b1             octo         female     full         pulmonary                   4465.507           547.540               28.337              15.238                2128.646                187.405  block               30.53               3.177           0.164          0.071             10.749             0.802    88.690       0.140         21.564       0.011         0.842       0.022             289  to_do        NA                              37  NA          -6513.637   13101.274   13236.932   13119.599   13112.477  b1_female_full_pulmonary_block.out 
b1             octo         male       age          pulmonary                   9797.100          1518.911               39.260              21.761                3395.412                423.662  block               44.12               5.630           0.064          0.072              8.966             1.025   281.760       1.052         15.412       0.000         0.228       0.156             151  to_do        NA                              21  NA          -3351.987    6745.975    6809.338    6742.875    6753.138  b1_male_age_pulmonary_block.out    
b1             octo         male       full         pulmonary                   9168.599          1431.364               33.590              20.207                3376.311                420.926  block               37.39               4.814           0.046          0.038              8.848             0.961   220.609       0.648         15.782       0.002         0.368       0.129             151  to_do        NA                              37  NA          -3335.570    6745.140    6856.779    6739.678    6770.025  b1_male_full_pulmonary_block.out   


# Questions
## Unanswered Questions
 1. What does `VS` stand for?  How was it measured?
 1. Where the cars at the Philly track measured with the same phluguerstometer and the Cleveland track?
 
## Answered Questions
 1. The Seattle track's phluguerstometer was producing flaky negative values; it's measurements have been dropped.

# Session Information
For the sake of documentation and reproducibility, the current report was rendered on a system using the following software.


```
Report rendered by koval_000 at 2015-02-23, 16:45 Pacific Standard Time
```

```
R version 3.0.3 (2014-03-06)
Platform: x86_64-w64-mingw32/x64 (64-bit)

locale:
[1] LC_COLLATE=English_United States.1252  LC_CTYPE=English_United States.1252    LC_MONETARY=English_United States.1252
[4] LC_NUMERIC=C                           LC_TIME=English_United States.1252    

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] testit_0.3         ggplot2_1.0.0      RColorBrewer_1.0-5 scales_0.2.4       knitr_1.9         

loaded via a namespace (and not attached):
 [1] colorspace_1.2-4 digest_0.6.8     evaluate_0.5.5   formatR_1.0      grid_3.0.3       gtable_0.1.2    
 [7] htmltools_0.2.6  MASS_7.3-35      munsell_0.4.2    plyr_1.8.1       proto_0.3-10     Rcpp_0.11.2     
[13] reshape2_1.4     rmarkdown_0.4.2  stringr_0.6.2    tools_3.0.3      yaml_2.1.13     
```
