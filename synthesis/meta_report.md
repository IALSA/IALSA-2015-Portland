# Bivariate Outcomes -- Combining Studies


This report covers the analyses used in the ZZZ project (Marcus Mark, PI).

<!--  Set the working directory to the repository's base directory; this assumes the report is nested inside of one directory.-->


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

Studies with this physical variable listed in the model output: nuage, obas 



study_name   cognitive_outcome   subgroup   model_type    subject_count   wave_count  converged 
-----------  ------------------  ---------  -----------  --------------  -----------  ----------
nuage        3ms                 female     aehplus                 934            4  TRUE      
nuage        3ms                 female     age                     939            4  TRUE      
nuage        3ms                 male       aeh                     847            4  TRUE      
nuage        3ms                 male       aehplus                 847            4  TRUE      
nuage        3ms                 male       age                     851            4  TRUE      
obas         3ms                 female     aeh                     934           10  TRUE      

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

## `flamingo` 

Studies with this physical variable listed in the model output: nuage 



study_name   cognitive_outcome   subgroup   model_type    subject_count   wave_count  converged 
-----------  ------------------  ---------  -----------  --------------  -----------  ----------
nuage        3ms                 female     aeh                     934            4  TRUE      
nuage        3ms                 female     aehplus                 934            4  TRUE      
nuage        3ms                 female     age                     939            4  TRUE      
nuage        3ms                 male       aeh                     847            4  TRUE      
nuage        3ms                 male       aehplus                 847            4  TRUE      
nuage        3ms                 male       age                     851            4  TRUE      




## `knowledge` 

Studies with this physical variable listed in the model output: ilse 



study_name   cognitive_outcome   subgroup   model_type    subject_count   wave_count  converged 
-----------  ------------------  ---------  -----------  --------------  -----------  ----------
ilse         NA                  female     nophys                  264            3  TRUE      




## `mmse nondem` 

Studies with this physical variable listed in the model output: octo 



study_name   cognitive_outcome   subgroup   model_type    subject_count   wave_count  converged 
-----------  ------------------  ---------  -----------  --------------  -----------  ----------
octo         n10                 age        ws                      265            5  TRUE      




## `mmse nondem n10` 

Studies with this physical variable listed in the model output: radc 



study_name   cognitive_outcome   subgroup   model_type    subject_count   wave_count  converged 
-----------  ------------------  ---------  -----------  --------------  -----------  ----------
radc         NA                  time       nophys                  266            5  TRUE      




## `muscle` 

Studies with this physical variable listed in the model output: habc 



study_name   cognitive_outcome   subgroup   model_type    subject_count   wave_count  converged 
-----------  ------------------  ---------  -----------  --------------  -----------  ----------
habc         executive           female     aeh                    1575           10  TRUE      
habc         executive           female     aehplus                1535           10  TRUE      
habc         executive           female     age                    1581           10  TRUE      
habc         executive           male       aeh                    1489           10  TRUE      
habc         executive           male       aehplus                1464           10  TRUE      
habc         executive           male       age                    1491           10  TRUE      
habc         mental              female     aeh                    1578           11  TRUE      
habc         mental              female     aehplus                1538           11  TRUE      
habc         mental              female     age                    1584           11  TRUE      
habc         mental              male       aeh                    1489           11  TRUE      
habc         mental              male       aehplus                1464           11  TRUE      
habc         mental              male       age                    1491           11  TRUE      
habc         speed               female     aeh                    1578           11  TRUE      
habc         speed               female     aehplus                1538           11  TRUE      
habc         speed               female     age                    1584           11  TRUE      
habc         speed               male       aeh                    1488           11  TRUE      
habc         speed               male       aehplus                1463           11  TRUE      
habc         speed               male       age                    1490           11  TRUE      


![](figure_meta/forest_static-2.png) ![](figure_meta/forest_static-3.png) ![](figure_meta/forest_static-4.png) 

## `nocog nondem n10` 

Studies with this physical variable listed in the model output: radc 



study_name   cognitive_outcome   subgroup   model_type    subject_count   wave_count  converged 
-----------  ------------------  ---------  -----------  --------------  -----------  ----------
radc         NA                  time       ws                      265            5  TRUE      




## `normalwalk` 

Studies with this physical variable listed in the model output: nuage 



study_name   cognitive_outcome   subgroup   model_type    subject_count   wave_count  converged 
-----------  ------------------  ---------  -----------  --------------  -----------  ----------
nuage        3ms                 female     aeh                     934            4  TRUE      
nuage        3ms                 female     aehplus                 934            4  TRUE      
nuage        3ms                 female     age                     939            4  TRUE      
nuage        3ms                 male       aeh                     847            4  TRUE      
nuage        3ms                 male       aehplus                 847            4  TRUE      
nuage        3ms                 male       age                     851            4  TRUE      




## `picturecompletion` 

Studies with this physical variable listed in the model output: ilse 



study_name   cognitive_outcome   subgroup   model_type    subject_count   wave_count  converged 
-----------  ------------------  ---------  -----------  --------------  -----------  ----------
ilse         NA                  female     nophys                  264            3  TRUE      




## `pulmonary` 

Studies with this physical variable listed in the model output: eas, nas 



study_name   cognitive_outcome   subgroup   model_type    subject_count   wave_count  converged 
-----------  ------------------  ---------  -----------  --------------  -----------  ----------
eas          block               female     age                     563            9  TRUE      
eas          block               female     full                    563            9  TRUE      
eas          block               male       age                     350            9  TRUE      
eas          block               male       full                    350            9  TRUE      
nas          executive           male       ae                     1122            6  TRUE      
nas          executive           male       aeplus                 1122            6  TRUE      
nas          executive           male       age                    1127            6  TRUE      
nas          memory              male       ae                     1124            6  TRUE      
nas          memory              male       aeplus                 1124            6  TRUE      
nas          memory              male       age                    1129            6  TRUE      
nas          mental              male       ae                     1127            6  TRUE      
nas          mental              male       aeplus                 1127            6  TRUE      
nas          mental              male       age                    1132            6  TRUE      
nas          visuospatial        male       ae                     1125            6  TRUE      
nas          visuospatial        male       aeplus                 1125            6  TRUE      
nas          visuospatial        male       age                    1130            6  TRUE      


![](figure_meta/forest_static-5.png) ![](figure_meta/forest_static-6.png) ![](figure_meta/forest_static-7.png) ![](figure_meta/forest_static-8.png) ![](figure_meta/forest_static-9.png) 

## `timedupandgo` 

Studies with this physical variable listed in the model output: ilse 



study_name   cognitive_outcome         subgroup   model_type    subject_count   wave_count  converged 
-----------  ------------------------  ---------  -----------  --------------  -----------  ----------
ilse         block                     female     aeh                     250            3  TRUE      
ilse         block                     female     age                     252            3  TRUE      
ilse         block                     male       aeh                     279            3  TRUE      
ilse         block                     male       age                     279            3  TRUE      
ilse         digitsymbolsubstitution   female     age                     252            3  TRUE      
ilse         digitsymbolsubstitution   male       age                     279            3  TRUE      
ilse         knowledge                 female     aeh                     250            3  TRUE      
ilse         knowledge                 female     age                     252            3  TRUE      
ilse         knowledge                 male       aeh                     279            3  TRUE      
ilse         knowledge                 male       age                     279            3  TRUE      
ilse         picturecompletion         female     aeh                     250            3  TRUE      
ilse         picturecompletion         female     age                     252            3  TRUE      
ilse         picturecompletion         male       aeh                     279            3  TRUE      
ilse         picturecompletion         male       age                     279            3  TRUE      
ilse         spacialability            female     aeh                     250            3  TRUE      
ilse         spacialability            female     age                     252            3  TRUE      
ilse         spacialability            male       aeh                     279            3  TRUE      
ilse         spacialability            male       age                     279            3  TRUE      
ilse         verbalfluency             female     age                     252            3  TRUE      
ilse         verbalfluency             male       age                     279            3  TRUE      


![](figure_meta/forest_static-10.png) ![](figure_meta/forest_static-11.png) ![](figure_meta/forest_static-12.png) ![](figure_meta/forest_static-13.png) ![](figure_meta/forest_static-14.png) ![](figure_meta/forest_static-15.png) 

## `tug` 

Studies with this physical variable listed in the model output: nuage 



study_name   cognitive_outcome   subgroup   model_type    subject_count   wave_count  converged 
-----------  ------------------  ---------  -----------  --------------  -----------  ----------
nuage        3ms                 female     aeh                     934            4  TRUE      
nuage        3ms                 female     aehplus                 934            4  TRUE      
nuage        3ms                 female     age                     939            4  TRUE      
nuage        3ms                 male       aeh                     847            4  TRUE      
nuage        3ms                 male       aehplus                 847            4  TRUE      
nuage        3ms                 male       age                     851            4  TRUE      




## `walking` 

Studies with this physical variable listed in the model output: habc 



study_name   cognitive_outcome   subgroup   model_type    subject_count   wave_count  converged 
-----------  ------------------  ---------  -----------  --------------  -----------  ----------
habc         executive           female     aeh                    1552           10  TRUE      
habc         executive           female     aehplus                1513           10  TRUE      
habc         executive           female     age                    1558           10  TRUE      
habc         executive           male       aeh                    1471           10  TRUE      
habc         executive           male       aehplus                1446           10  TRUE      
habc         executive           male       age                    1473           10  TRUE      
habc         mental              female     aeh                    1578           11  TRUE      
habc         mental              female     aehplus                1538           11  TRUE      
habc         mental              female     age                    1584           11  TRUE      
habc         mental              male       aeh                    1489           11  TRUE      
habc         mental              male       aehplus                1464           11  TRUE      
habc         mental              male       age                    1491           11  TRUE      
habc         speed               female     aeh                    1575           11  TRUE      
habc         speed               female     aehplus                1535           11  TRUE      
habc         speed               female     age                    1581           11  TRUE      
habc         speed               male       aeh                    1485           11  TRUE      
habc         speed               male       aehplus                1460           11  TRUE      
habc         speed               male       age                    1487           11  TRUE      


![](figure_meta/forest_static-16.png) ![](figure_meta/forest_static-17.png) ![](figure_meta/forest_static-18.png) 

## `ws` 

Studies with this physical variable listed in the model output: octo, radc 



study_name   cognitive_outcome   subgroup   model_type    subject_count   wave_count  converged 
-----------  ------------------  ---------  -----------  --------------  -----------  ----------
octo         mmse                female     aeh                     145            5  TRUE      
octo         mmse                female     age                     155            5  TRUE      
octo         mmse                male       aeh                     108            5  TRUE      
radc         mmse                male       age                     111            5  TRUE      

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
Report rendered by Will at 2015-02-25, 00:05 -0600
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
