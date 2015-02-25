# Bivariate Outcomes -- Combining Studies


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

**Note 1**: The current report covers 8 studies: eas, habc, ilse, nas, nuage, obas, octo, radc.


# Forest Plot (Static)

## `chairstand` 

Studies with this physical variable listed in the model output: nuage, obas, octo 

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

![](figure_meta/forest_static-1.png) 

## `flaminco` 

Studies with this physical variable listed in the model output: octo 



## `flamingo` 

Studies with this physical variable listed in the model output: nuage, obas, octo 



## `gripstrength` 

Studies with this physical variable listed in the model output: nuage 



## `knowledge` 

Studies with this physical variable listed in the model output: ilse 



## `mmse nondem` 

Studies with this physical variable listed in the model output: octo 



## `mmse nondem n10` 

Studies with this physical variable listed in the model output: radc 



## `muscle` 

Studies with this physical variable listed in the model output: habc 

![](figure_meta/forest_static-2.png) ![](figure_meta/forest_static-3.png) ![](figure_meta/forest_static-4.png) 

## `nocog nondem n10` 

Studies with this physical variable listed in the model output: radc 



## `normalwalk` 

Studies with this physical variable listed in the model output: nuage, obas, octo 



## `normalwalking` 

Studies with this physical variable listed in the model output: obas, octo 



## `picturecompletion` 

Studies with this physical variable listed in the model output: ilse 



## `plumonary` 

Studies with this physical variable listed in the model output: eas 



## `pulmonary` 

Studies with this physical variable listed in the model output: eas, nas 

![](figure_meta/forest_static-5.png) ![](figure_meta/forest_static-6.png) ![](figure_meta/forest_static-7.png) ![](figure_meta/forest_static-8.png) ![](figure_meta/forest_static-9.png) 

## `timedupandgo` 

Studies with this physical variable listed in the model output: ilse 

![](figure_meta/forest_static-10.png) ![](figure_meta/forest_static-11.png) ![](figure_meta/forest_static-12.png) ![](figure_meta/forest_static-13.png) ![](figure_meta/forest_static-14.png) ![](figure_meta/forest_static-15.png) 

## `tug` 

Studies with this physical variable listed in the model output: nuage, obas, octo 



## `walking` 

Studies with this physical variable listed in the model output: habc 

![](figure_meta/forest_static-16.png) ![](figure_meta/forest_static-17.png) ![](figure_meta/forest_static-18.png) 

## `ws` 

Studies with this physical variable listed in the model output: octo, radc 

# Forest Plot (Animated)



# Questions
## Unanswered Questions
 1. What does `VS` stand for?  How was it measured?
 1. Where the cars at the Philly track measured with the same phluguerstometer and the Cleveland track?
 
## Answered Questions
 1. The Seattle track's phluguerstometer was producing flaky negative values; it's measurements have been dropped.

# Session Information
For the sake of documentation and reproducibility, the current report was rendered on a system using the following software.


```
Report rendered by Will at 2015-02-24, 23:21 -0600
```

```
R version 3.1.2 Patched (2015-02-19 r67842)
Platform: x86_64-w64-mingw32/x64 (64-bit)
Running under: Windows 8 x64 (build 9200)

locale:
[1] LC_COLLATE=English_United States.1252  LC_CTYPE=English_United States.1252    LC_MONETARY=English_United States.1252
[4] LC_NUMERIC=C                           LC_TIME=English_United States.1252    

attached base packages:
[1] grid      stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] testit_0.4         ggplot2_1.0.0      RColorBrewer_1.1-2 scales_0.2.4       knitr_1.9         

loaded via a namespace (and not attached):
 [1] colorspace_1.2-4 digest_0.6.8     evaluate_0.5.5   formatR_1.0      gtable_0.1.2     htmltools_0.2.6 
 [7] labeling_0.3     MASS_7.3-39      munsell_0.4.2    plyr_1.8.1       proto_0.3-10     Rcpp_0.11.4     
[13] reshape2_1.4.1   rmarkdown_0.5.1  stringr_0.6.2    tools_3.1.2      yaml_2.1.13     
```
