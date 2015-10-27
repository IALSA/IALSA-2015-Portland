# APA Tables

This report covers the analyses used in the ZZZ project (Marcus Mark, PI).

<!--  Set the working directory to the repository's base directory; this assumes the report is nested inside of three directories.-->


<!-- Set the report-wide options, and point to the external code file. -->


<!-- Load the sources.  Suppress the output when loading sources. --> 


<!-- Load 'sourced' R files.  Suppress the output when loading packages. --> 


<!-- Load any global functions and variables declared in the R file.  Suppress the output. --> 


<!-- Declare any global functions specific to a Rmd output.  Suppress the output. --> 


<!-- Load the datasets.   -->


<!-- Tweak the datasets.   -->


## Notes

**Note 1**: The current report covers 54 models, with 9 unique studies.



name           p_male                 c_male                 p_female               c_female             
-------------  ---------------------  ---------------------  ---------------------  ---------------------
int_age        -0.520(0.080),p=0      -0.005(0.002),p=.049   -0.266(0.038),p=0      -0.009(0.002),p=0    
int_edu        +0.064(0.127),p=.615   +0.008(0.005),p=.085   -0.062(0.079),p=.433   +0.016(0.004),p=0    
int_height     +25.429(6.701),p=0     +0.118(0.199),p=.553   +9.508(4.962),p=.055   +0.079(0.184),p=.668 
slope_age      -0.014(0.011),p=.207   -0.001(0.001),p=.036   -0.008(0.008),p=.292   -0.001(0.000),p=.003 
slope_edu      -0.020(0.020),p=.316   +0.001(0.001),p=.161   -0.024(0.017),p=.166   +0.001(0.001),p=.117 
slope_height   +0.122(0.896),p=.892   -0.033(0.050),p=.51    +1.382(0.863),p=.109   -0.027(0.044),p=.545 

# Session Information
For the sake of documentation and reproducibility, the current report was rendered on a system using the following software.


```
Report rendered by Will at 2015-10-27, 16:06 -0500
```

```
R version 3.2.2 Patched (2015-10-11 r69514)
Platform: x86_64-w64-mingw32/x64 (64-bit)
Running under: Windows >= 8 x64 (build 9200)

locale:
[1] LC_COLLATE=English_United States.1252  LC_CTYPE=English_United States.1252    LC_MONETARY=English_United States.1252
[4] LC_NUMERIC=C                           LC_TIME=English_United States.1252    

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] magrittr_1.5  ggplot2_1.0.1 knitr_1.11   

loaded via a namespace (and not attached):
 [1] Rcpp_0.12.1      MASS_7.3-44      testit_0.4       munsell_0.4.2    colorspace_1.2-6 R6_2.1.1        
 [7] highr_0.5.1      stringr_1.0.0    plyr_1.8.3       dplyr_0.4.3      tools_3.2.2      parallel_3.2.2  
[13] grid_3.2.2       gtable_0.1.2     DBI_0.3.1        htmltools_0.2.6  lazyeval_0.1.10  yaml_2.1.13     
[19] digest_0.6.8     assertthat_0.1   tidyr_0.3.1      reshape2_1.4.1   formatR_1.2.1    evaluate_0.8    
[25] rmarkdown_0.8.1  stringi_1.0-1    scales_0.3.0     proto_0.3-10    
```
