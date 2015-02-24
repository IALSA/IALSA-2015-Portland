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


<!-- Calculate the forest results (but don't plot yet).   -->


## Notes

**Note 1**: The current report covers 2 studies: habc, octo.

**Note 2**: The Seattle track's phluguerstometer was producing flaky negative values; it's measurements have been dropped.

# Study-Specific Tables
One table is shown for each study, each representing zzz.

## habc


Table: Univariate Results

model   study   subgroup   model<br/>type   outcome<br/>physical   var_int_cog 
------  ------  ---------  ---------------  ---------------------  ------------
u0      habc    female     empty            muscle                 --          
u0      habc    male       empty            muscle                 --          
u1      habc    female     age              muscle                 --          
u1      habc    male       age              muscle                 --          
u0      habc    female     empty            noPhys                 2.76        
u0      habc    female     empty            noPhys                 67.63       
u0      habc    female     empty            noPhys                 160.27      
u0      habc    male       empty            noPhys                 2.84        
u0      habc    male       empty            noPhys                 73.13       
u0      habc    male       empty            noPhys                 160.66      
u1      habc    female     age              noPhys                 2.85        
u1      habc    female     age              noPhys                 43.03       
u1      habc    female     age              noPhys                 177.20      
u1      habc    male       age              noPhys                 3.38        
u1      habc    male       age              noPhys                 51.99       
u1      habc    male       age              noPhys                 180.83      



Table: Bivariate Results

model_number   study_name   subgroup   model_type   physical_outcome 
-------------  -----------  ---------  -----------  -----------------

## octo


Table: Univariate Results

     model   study   subgroup   model<br/>type   outcome<br/>physical   var_int_cog 
---  ------  ------  ---------  ---------------  ---------------------  ------------
17   u1      octo    female     age              nophys                 34.07       
18   u1      octo    male       age              nophys                 43.50       
23   u0      octo    female     empty            pulmonary              --          
24   u0      octo    male       empty            pulmonary              --          
25   u1      octo    female     age              pulmonary              --          
26   u1      octo    female     full             pulmonary              --          
27   u1      octo    male       age              pulmonary              --          
28   u1      octo    male       full             pulmonary              --          
29   u2      octo    female     age              pulmonary              --          
30   u2      octo    male       age              pulmonary              --          



Table: Bivariate Results

     model_number   study_name   subgroup   model_type   physical_outcome 
---  -------------  -----------  ---------  -----------  -----------------
19   b1             octo         female     age          pulmonary        
20   b1             octo         female     full         pulmonary        
21   b1             octo         male       age          pulmonary        
22   b1             octo         male       full         pulmonary        


# Questions
## Unanswered Questions
 1. What does `VS` stand for?  How was it measured?
 1. Where the cars at the Philly track measured with the same phluguerstometer and the Cleveland track?
 
## Answered Questions
 1. The Seattle track's phluguerstometer was producing flaky negative values; it's measurements have been dropped.

# Session Information
For the sake of documentation and reproducibility, the current report was rendered on a system using the following software.


```
Report rendered by Will at 2015-02-23, 18:11 -0600
```

```
R version 3.1.2 Patched (2015-02-19 r67842)
Platform: x86_64-w64-mingw32/x64 (64-bit)
Running under: Windows 8 x64 (build 9200)

locale:
[1] LC_COLLATE=English_United States.1252  LC_CTYPE=English_United States.1252    LC_MONETARY=English_United States.1252
[4] LC_NUMERIC=C                           LC_TIME=English_United States.1252    

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] testit_0.4         ggplot2_1.0.0      RColorBrewer_1.1-2 scales_0.2.4       knitr_1.9         

loaded via a namespace (and not attached):
 [1] colorspace_1.2-4 digest_0.6.8     evaluate_0.5.5   formatR_1.0      grid_3.1.2       gtable_0.1.2    
 [7] htmltools_0.2.6  MASS_7.3-39      munsell_0.4.2    plyr_1.8.1       proto_0.3-10     Rcpp_0.11.4     
[13] reshape2_1.4.1   rmarkdown_0.5.1  stringr_0.6.2    tools_3.1.2      yaml_2.1.13     
```
