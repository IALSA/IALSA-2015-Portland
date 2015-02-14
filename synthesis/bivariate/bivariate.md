# Bivariate Outcomes Report 1


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

model_number    version  active   date         time    study_name   converged   subgroup    subject_count   wave_count      n   parameter_count   deviance  cognitive_outcome     var_int_cog   var_slope_cog   var_residual_cog  physical_outcome        var_int_physical   var_slope_physical   var_residual_physical   cov_int   cov_slope   cov_residual   p_cov_int   p_cov_slope   p_cov_res  input_file   output_file   software   model_description 
-------------  --------  -------  -----------  ------  -----------  ----------  ---------  --------------  -----------  -----  ----------------  ---------  -------------------  ------------  --------------  -----------------  ---------------------  -----------------  -------------------  ----------------------  --------  ----------  -------------  ----------  ------------  ----------  -----------  ------------  ---------  ------------------
model_1             0.1  TRUE     2015-02-13   14:45   ELSA         FALSE       MALE                  567            5   2592                12      56565  Pulmonary function      0.7729718       0.0347027          0.1217118  Speed                          0.9595747            0.8146615               0.8690322      0.34   0.3889083      0.8375394   0.6852272     0.9691051   0.5412858  NA           NA            Mplus      NA                
model_2             1.1  TRUE     2015-02-14   15:45   ELSA         FALSE       FEMALE                423            5   1954                12      34534  Walking speed time      0.0254741       0.9064547          0.1997089  Visuospatial ability           0.4350972            0.2533676               0.4042001      0.56   0.3659144      0.4162257   0.4369863     0.3159609   0.1421976  NA           NA            Mplus      NA                

## octo

model_number    version  active   date         time    study_name   converged   subgroup    subject_count   wave_count      n   parameter_count   deviance  cognitive_outcome     var_int_cog   var_slope_cog   var_residual_cog  physical_outcome        var_int_physical   var_slope_physical   var_residual_physical   cov_int   cov_slope   cov_residual   p_cov_int   p_cov_slope   p_cov_res  input_file   output_file   software   model_description 
-------------  --------  -------  -----------  ------  -----------  ----------  ---------  --------------  -----------  -----  ----------------  ---------  -------------------  ------------  --------------  -----------------  ---------------------  -----------------  -------------------  ----------------------  --------  ----------  -------------  ----------  ------------  ----------  -----------  ------------  ---------  ------------------
model_1             0.1  TRUE     2015-02-13   14:45   OCTO         FALSE       MALE                  567            5   2592                12      56565  Pulmonary function      0.7729718       0.0347027          0.1217118  Speed                          0.9595747            0.8146615               0.8690322      0.34   0.3889083      0.8375394   0.6852272     0.9691051   0.5412858  NA           NA            Mplus      NA                
model_2             1.1  TRUE     2015-02-14   15:45   OCTO         FALSE       FEMALE                423            5   1954                12      34534  Walking speed time      0.0254741       0.9064547          0.1997089  Visuospatial ability           0.4350972            0.2533676               0.4042001      0.56   0.3659144      0.4162257   0.4369863     0.3159609   0.1421976  NA           NA            Mplus      NA                

## radc

model_number    version  active   date         time    study_name   converged   subgroup    subject_count   wave_count      n   parameter_count   deviance  cognitive_outcome     var_int_cog   var_slope_cog   var_residual_cog  physical_outcome        var_int_physical   var_slope_physical   var_residual_physical   cov_int   cov_slope   cov_residual   p_cov_int   p_cov_slope   p_cov_res  input_file   output_file   software   model_description 
-------------  --------  -------  -----------  ------  -----------  ----------  ---------  --------------  -----------  -----  ----------------  ---------  -------------------  ------------  --------------  -----------------  ---------------------  -----------------  -------------------  ----------------------  --------  ----------  -------------  ----------  ------------  ----------  -----------  ------------  ---------  ------------------
model_1             0.1  TRUE     2015-02-13   14:45   RADC         FALSE       MALE                  567            5   2592                12      56565  Pulmonary function      0.7729718       0.0347027          0.1217118  Speed                          0.9595747            0.8146615               0.8690322      0.34   0.3889083      0.8375394   0.6852272     0.9691051   0.5412858  NA           NA            Mplus      NA                
model_2             1.1  TRUE     2015-02-14   15:45   RADC         FALSE       FEMALE                423            5   1954                12      34534  Walking speed time      0.0254741       0.9064547          0.1997089  Visuospatial ability           0.4350972            0.2533676               0.4042001      0.56   0.3659144      0.4162257   0.4369863     0.3159609   0.1421976  NA           NA            Mplus      NA                


# Questions
## Unanswered Questions
 1. What does `VS` stand for?  How was it measured?
 1. Where the cars at the Philly track measured with the same phluguerstometer and the Cleveland track?
 
## Answered Questions
 1. The Seattle track's phluguerstometer was producing flaky negative values; it's measurements have been dropped.

# Session Information
For the sake of documentation and reproducibility, the current report was rendered on a system using the following software.


```
Report rendered by wibeasley at 2015-02-13, 16:27 -0800
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
