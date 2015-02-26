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

**Note 1**: The current report covers 9 studies: eas, habc, ilse, nas, nuage, obas, octo, radc, satsa.


# Forest Plot (Static)

## `fev` 

Studies with this physical variable listed in the model output: satsa 



study_name   cognitive_outcome   subgroup   model_type    subject_count   wave_count  converged 
-----------  ------------------  ---------  -----------  --------------  -----------  ----------
satsa        memory              female     ae                      487            7  TRUE      
satsa        memory              female     aec                     430            7  TRUE      
satsa        memory              female     age                     395            7  TRUE      
satsa        memory              male       ae                      340            7  TRUE      
satsa        memory              male       age                     246            7  TRUE      
satsa        spatial             female     ae                      485            7  TRUE      
satsa        spatial             female     aec                     428            7  TRUE      
satsa        spatial             female     age                     393            7  TRUE      
satsa        spatial             male       ae                      340            7  TRUE      
satsa        spatial             male       age                     246            7  TRUE      
satsa        speed               female     ae                      486            7  TRUE      
satsa        speed               female     aec                     429            7  TRUE      
satsa        speed               female     age                     394            7  TRUE      
satsa        speed               male       ae                      341            7  TRUE      
satsa        speed               male       age                     247            7  TRUE      
satsa        verbal              female     ae                      485            7  TRUE      
satsa        verbal              female     aec                     428            7  TRUE      
satsa        verbal              male       ae                      341            7  TRUE      
satsa        verbal              male       age                     247            7  TRUE      


![](figure_meta/forest_static-1.png) ![](figure_meta/forest_static-2.png) ![](figure_meta/forest_static-3.png) ![](figure_meta/forest_static-4.png) 

## `gait` 

Studies with this physical variable listed in the model output: satsa 



study_name   cognitive_outcome   subgroup   model_type    subject_count   wave_count  converged 
-----------  ------------------  ---------  -----------  --------------  -----------  ----------
satsa        memory              female     ae                      430            7  TRUE      
satsa        memory              female     aec                     385            7  TRUE      
satsa        memory              female     age                     339            7  TRUE      
satsa        memory              male       ae                      306            7  TRUE      
satsa        memory              male       age                     211            7  TRUE      
satsa        spatial             female     ae                      339            7  TRUE      
satsa        spatial             female     aec                     385            7  TRUE      
satsa        spatial             female     age                     339            7  TRUE      
satsa        spatial             male       ae                      211            7  TRUE      
satsa        spatial             male       age                     211            7  TRUE      
satsa        speed               female     ae                      430            7  TRUE      
satsa        speed               female     aec                     385            7  TRUE      
satsa        speed               female     age                     339            7  TRUE      
satsa        speed               male       ae                      306            7  TRUE      
satsa        speed               male       age                     211            7  TRUE      
satsa        verbal              female     ae                      430            7  TRUE      
satsa        verbal              female     aec                     385            7  TRUE      
satsa        verbal              female     age                     339            7  TRUE      
satsa        verbal              male       ae                      306            7  TRUE      
satsa        verbal              male       age                     211            7  TRUE      


![](figure_meta/forest_static-5.png) ![](figure_meta/forest_static-6.png) ![](figure_meta/forest_static-7.png) ![](figure_meta/forest_static-8.png) 

## `grip` 

Studies with this physical variable listed in the model output: satsa 



study_name   cognitive_outcome   subgroup   model_type    subject_count   wave_count  converged 
-----------  ------------------  ---------  -----------  --------------  -----------  ----------
satsa        memory              female     ae                      486            7  TRUE      
satsa        memory              female     aec                     430            7  TRUE      
satsa        memory              female     age                     395            7  TRUE      
satsa        memory              male       ae                      341            7  TRUE      
satsa        memory              male       age                     247            7  TRUE      
satsa        spatial             female     ae                      486            7  TRUE      
satsa        spatial             female     aec                     430            7  TRUE      
satsa        spatial             female     age                     395            7  TRUE      
satsa        spatial             male       ae                      340            7  TRUE      
satsa        spatial             male       age                     246            7  TRUE      
satsa        speed               female     ae                      486            7  TRUE      
satsa        speed               female     aec                     429            7  TRUE      
satsa        speed               female     age                     395            7  TRUE      
satsa        speed               male       ae                      341            7  TRUE      
satsa        speed               male       age                     247            7  TRUE      
satsa        verbal              female     ae                      486            7  TRUE      
satsa        verbal              female     aec                     430            7  TRUE      
satsa        verbal              female     age                     395            7  TRUE      
satsa        verbal              male       ae                      341            7  TRUE      
satsa        verbal              male       age                     247            7  TRUE      


![](figure_meta/forest_static-9.png) ![](figure_meta/forest_static-10.png) ![](figure_meta/forest_static-11.png) ![](figure_meta/forest_static-12.png) 

## `muscle` 

Studies with this physical variable listed in the model output: habc, radc 



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
radc         executive           female     age                    1951            5  TRUE      
radc         executive           male       age                     722            5  TRUE      
radc         knowledge           female     age                    1946            5  TRUE      
radc         knowledge           male       age                     722            5  TRUE      
radc         reasoning           female     age                    1930            5  TRUE      
radc         reasoning           male       age                     704            5  TRUE      
radc         speed               female     age                    1950            5  TRUE      
radc         speed               male       age                     722            5  TRUE      
radc         visuospatial        female     age                    1950            5  TRUE      
radc         visuospatial        male       age                     722            5  TRUE      


![](figure_meta/forest_static-13.png) ![](figure_meta/forest_static-14.png) ![](figure_meta/forest_static-15.png) ![](figure_meta/forest_static-16.png) ![](figure_meta/forest_static-17.png) ![](figure_meta/forest_static-18.png) 

## `pulmonary` 

Studies with this physical variable listed in the model output: eas, nas, octo, radc 



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
octo         block               female     age                     293            5  TRUE      
octo         block               female     age                     293            5  TRUE      
octo         block               female     full                    289            5  TRUE      
octo         block               female     full                    289            5  TRUE      
octo         block               male       age                     151            5  TRUE      
octo         block               male       age                     151            5  TRUE      
octo         block               male       full                    151            5  TRUE      
octo         block               male       full                    151            5  TRUE      
radc         executive           female     age                    1950            5  TRUE      
radc         executive           male       age                     722            5  TRUE      
radc         knowledge           female     age                    1516            5  TRUE      
radc         knowledge           male       age                     590            5  TRUE      
radc         reasoning           female     age                    1927            5  TRUE      
radc         reasoning           male       age                     702            5  TRUE      
radc         speed               female     age                    1947            5  TRUE      
radc         speed               male       age                     720            5  TRUE      
radc         visuospatial        female     age                    1947            5  TRUE      
radc         visuospatial        male       age                     720            5  TRUE      


![](figure_meta/forest_static-19.png) ![](figure_meta/forest_static-20.png) ![](figure_meta/forest_static-21.png) ![](figure_meta/forest_static-22.png) ![](figure_meta/forest_static-23.png) ![](figure_meta/forest_static-24.png) ![](figure_meta/forest_static-25.png) ![](figure_meta/forest_static-26.png) 

## `tug` 

Studies with this physical variable listed in the model output: ilse 



study_name   cognitive_outcome   subgroup   model_type    subject_count   wave_count  converged 
-----------  ------------------  ---------  -----------  --------------  -----------  ----------
ilse         executive           female     age                     252            3  TRUE      
ilse         executive           male       age                     279            3  TRUE      
ilse         knowledge           female     aeh                     250            3  TRUE      
ilse         knowledge           female     age                     252            3  TRUE      
ilse         knowledge           male       aeh                     279            3  TRUE      
ilse         knowledge           male       age                     279            3  TRUE      
ilse         reasoning           female     aeh                     250            3  TRUE      
ilse         reasoning           female     age                     252            3  TRUE      
ilse         reasoning           male       aeh                     279            3  TRUE      
ilse         reasoning           male       age                     279            3  TRUE      
ilse         speed               female     age                     252            3  TRUE      
ilse         speed               male       age                     279            3  TRUE      
ilse         visuospatial        female     aeh                     250            3  TRUE      
ilse         visuospatial        female     aeh                     250            3  TRUE      
ilse         visuospatial        female     age                     252            3  TRUE      
ilse         visuospatial        female     age                     252            3  TRUE      
ilse         visuospatial        male       aeh                     279            3  TRUE      
ilse         visuospatial        male       aeh                     279            3  TRUE      
ilse         visuospatial        male       age                     279            3  TRUE      
ilse         visuospatial        male       age                     279            3  TRUE      


![](figure_meta/forest_static-27.png) ![](figure_meta/forest_static-28.png) ![](figure_meta/forest_static-29.png) ![](figure_meta/forest_static-30.png) ![](figure_meta/forest_static-31.png) 

## `walking` 

Studies with this physical variable listed in the model output: habc, obas 



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
obas         global              female     aeh                     145           10  TRUE      
obas         global              female     age                     155           10  TRUE      
obas         global              male       aeh                     108           10  TRUE      
obas         global              male       age                     111           10  TRUE      


![](figure_meta/forest_static-32.png) ![](figure_meta/forest_static-33.png) ![](figure_meta/forest_static-34.png) ![](figure_meta/forest_static-35.png) 

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
Report rendered by koval_000 at 2015-02-25, 11:41 Pacific Standard Time
```

```
R version 3.0.3 (2014-03-06)
Platform: x86_64-w64-mingw32/x64 (64-bit)

locale:
[1] LC_COLLATE=English_United States.1252  LC_CTYPE=English_United States.1252    LC_MONETARY=English_United States.1252
[4] LC_NUMERIC=C                           LC_TIME=English_United States.1252    

attached base packages:
[1] grid      stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] testit_0.3         ggplot2_1.0.0      RColorBrewer_1.0-5 scales_0.2.4       knitr_1.9         

loaded via a namespace (and not attached):
 [1] colorspace_1.2-4 digest_0.6.8     evaluate_0.5.5   formatR_1.0      gtable_0.1.2     htmltools_0.2.6 
 [7] labeling_0.3     MASS_7.3-35      munsell_0.4.2    plyr_1.8.1       proto_0.3-10     Rcpp_0.11.2     
[13] reshape2_1.4     rmarkdown_0.4.2  stringr_0.6.2    tools_3.0.3      yaml_2.1.13     
```
