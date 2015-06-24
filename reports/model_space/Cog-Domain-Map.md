# Cog Domain Map - Portland Workshop



<!--  Set the working directory to the repository's base directory; this assumes the report is nested inside of two directories.-->


<!-- Set the report-wide options, and point to the external code file. -->


<!-- Load the sources.  Suppress the output when loading sources. --> 


<!-- Load 'sourced' R files.  Suppress the output when loading packages. --> 


<!-- Load any Global functions and variables declared in the R file.  Suppress the output. --> 


<!-- Declare any global functions specific to a Rmd output.  Suppress the output. --> 


<!-- Load the datasets.   -->


<!-- Tweak the datasets.   -->




```
List of 1
 $ strip.text.x:List of 8
  ..$ family    : NULL
  ..$ face      : NULL
  ..$ colour    : chr "black"
  ..$ size      : num 7
  ..$ hjust     : NULL
  ..$ vjust     : NULL
  ..$ angle     : num 0
  ..$ lineheight: NULL
  ..- attr(*, "class")= chr [1:2] "element_text" "element"
 - attr(*, "class")= chr [1:2] "theme" "gg"
 - attr(*, "complete")= logi FALSE
```
## Prototype

Andrea, you've suggested the followed  structure to investigate replication potential across studies and cognitive domains:
![prototype](./images/Piccinin_Cognitive_Domains.PNG)  

I like how it simplifies the search for overlaps among measures. I developed the following interpretation of the demensionality in the graph above. 

## Domain Map



![](figure_cog_domain_map/domain_map-1.png) 

The domain map above is the actual data provided by the model in the Portland modeling collective right now. The colors  represent various cognitive domains, as identified by the participants in the model names. The colors are meant to be categorical, the change in hue is coincidental with alphabetic name.


## Cross counts with Physical Measures

We can augment this map with the tile graph of the bivariate model counts: 
![](figure_cog_domain_map/domain_map_phys_counts-1.png) 

## Objectives

Now we have a better system for planning our project. Itemizing, we can distinguish the following objectives: 

  1. Reduce the number of colors in the domain map 
    a. Combine measures into domains  
    b. remove domains due to few  
  2. Reduce the number of rows  
  3. Reduce the number of columns
  4. Increase the value of numbers

## Combine with other dimensions (Experimental)

![](figure_cog_domain_map/combine_with_otherDs-1.png) 


## Session Information
For the sake of documentation and reproducibility, the current report was rendered on a system using the following software.


```
Report rendered by koval_000 at 2015-06-24, 15:42 -0700
```

```
R version 3.2.0 (2015-04-16)
Platform: x86_64-w64-mingw32/x64 (64-bit)
Running under: Windows 8 x64 (build 9200)

locale:
[1] LC_COLLATE=English_United States.1252  LC_CTYPE=English_United States.1252    LC_MONETARY=English_United States.1252
[4] LC_NUMERIC=C                           LC_TIME=English_United States.1252    

attached base packages:
[1] grid      stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] lattice_0.20-31 dplyr_0.4.1     ggplot2_1.0.1   shiny_0.12.1    knitr_1.10.5   

loaded via a namespace (and not attached):
 [1] Rcpp_0.11.6      magrittr_1.5     MASS_7.3-40      munsell_0.4.2    colorspace_1.2-6 xtable_1.7-4    
 [7] R6_2.0.1         stringr_1.0.0    plyr_1.8.2       tools_3.2.0      parallel_3.2.0   gtable_0.1.2    
[13] DBI_0.3.1        htmltools_0.2.6  lazyeval_0.1.10  assertthat_0.1   yaml_2.1.13      digest_0.6.8    
[19] reshape2_1.4.1   formatR_1.2      evaluate_0.7     mime_0.3         rmarkdown_0.7    stringi_0.4-1   
[25] scales_0.2.5     httpuv_1.3.2     proto_0.3-10    
```
