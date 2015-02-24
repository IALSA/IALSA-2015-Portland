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

**Note 1**: The current report covers 3 studies: habc, obas, octo.

**Note 2**: The Seattle track's phluguerstometer was producing flaky negative values; it's measurements have been dropped.

# Study-Specific Tables
Two tables are created for each study: one for univariate models, another for bivariate models

## habc


Table: Univariate Results

model_number   study_name   subgroup   model_type   physical_outcome   var_int_cog 
-------------  -----------  ---------  -----------  -----------------  ------------
u0             habc         female     empty        muscle             --          
u0             habc         male       empty        muscle             --          
u1             habc         female     age          muscle             --          
u1             habc         male       age          muscle             --          
u0             habc         female     empty        noPhys             2.76        
u0             habc         female     empty        noPhys             67.63       
u0             habc         female     empty        noPhys             160.27      
u0             habc         male       empty        noPhys             2.84        
u0             habc         male       empty        noPhys             73.13       
u0             habc         male       empty        noPhys             160.66      
u1             habc         female     age          noPhys             2.85        
u1             habc         female     age          noPhys             43.03       
u1             habc         female     age          noPhys             177.20      
u1             habc         male       age          noPhys             3.38        
u1             habc         male       age          noPhys             51.99       
u1             habc         male       age          noPhys             180.83      



Table: Bivariate Results

model_number   study_name   subgroup   model_type   physical_outcome 
-------------  -----------  ---------  -----------  -----------------

## obas


Table: Univariate Results

model_number   study_name   subgroup   model_type   physical_outcome   var_int_cog 
-------------  -----------  ---------  -----------  -----------------  ------------
u1             obas         female     time         nophys             0.61        
u1             obas         male       time         nophys             0.66        
u1             obas         female     time         ws                 --          
u1             obas         male       time         ws                 --          



Table: Bivariate Results

model_number   study_name   subgroup   model_type   physical_outcome 
-------------  -----------  ---------  -----------  -----------------
b1             obas         age        ws           mmse nondem      
b1             obas         female     age          ws               
b1             obas         male       age          ws               

## octo


Table: Univariate Results

model_number   study_name   subgroup   model_type   physical_outcome   var_int_cog 
-------------  -----------  ---------  -----------  -----------------  ------------
u1             octo         female     age          nophys             34.07       
u1             octo         male       age          nophys             43.50       
u0             octo         female     empty        pulmonary          --          
u0             octo         male       empty        pulmonary          --          
u1             octo         female     age          pulmonary          --          
u1             octo         female     full         pulmonary          --          
u1             octo         male       age          pulmonary          --          
u1             octo         male       full         pulmonary          --          
u2             octo         female     age          pulmonary          --          
u2             octo         male       age          pulmonary          --          



Table: Bivariate Results

model_number   study_name   subgroup   model_type   physical_outcome 
-------------  -----------  ---------  -----------  -----------------
b1             octo         female     age          pulmonary        
b1             octo         female     full         pulmonary        
b1             octo         male       age          pulmonary        
b1             octo         male       full         pulmonary        



# Session Information
For the sake of documentation and reproducibility, the current report was rendered on a system using the following software.


```
Report rendered by koval_000 at 2015-02-23, 17:24 Pacific Standard Time
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
