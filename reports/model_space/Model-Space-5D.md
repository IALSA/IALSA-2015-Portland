# Model Space in 5D



<!--  Set the working directory to the repository's base directory; this assumes the report is nested inside of two directories.-->


<!-- Set the report-wide options, and point to the external code file. -->


<!-- Load the sources.  Suppress the output when loading sources. --> 


<!-- Load 'sourced' R files.  Suppress the output when loading packages. --> 


<!-- Load any Global functions and variables declared in the R file.  Suppress the output. --> 


<!-- Declare any global functions specific to a Rmd output.  Suppress the output. --> 


<!-- Load the datasets.   -->


<!-- Tweak the datasets.   -->


<!-- Frequency counts   -->


This report establishes four key graphs that go into compiling the Model Catalog, which will be used to find and view replicated models. The following table gives model counts presently available in the collectivs. Rows list model specifications: *u* or *b* for univariate or bivariate growth model respectively. The numeric suffix (*0*, *1*, *2*) indicate the highest random growth term on the first level (*0* - intercept, *1* - linear, *2* - quadratic).



```
    
     eas elsa hrs ilse lasa nuage octo radc satsa
  b1 371 18   76  47   18   12    206  302  162  
  u0 .   .    .   .    .    .     .    .    .    
  u1 20  .    .   6    .    36    .    149  .    
  u2 .   .    .   .    .    .     .    .    .    
```


## Fi5ve dimensions of model space

Each bivariate growth model in our collective can be described with respect to the following **fi5e** primary dimensions: study, physical measure, cognitive measure, subgroup,and model type.     
**Study** - (eas, elsa, ilse, habc,...) - separate data collection efforts. Longitudinal studies vary on sampling procedure, sample composition, temporal design, availablity and type of anthropometric measures. ["Table 1" Report](./reports/table_1/table_1.md) records these descriptives for each study.   
**Physical measure** - (gait, grip, pek, fvc,...)  - operationalized measurement of physical functioning   
**Cognitive measure** - (mmse, symbol, block, synonyms, ...  )  - operationalized measurement of cognitive functioning    
**Subgroup** - Sex. The models were run separately for males and females. Sex was not a part of the model.   
**Model type** - (0, a, ae, aeh, aehplus, full)   

*Cognitive measure* is the longest and thus chosen to span the **vertical axis** of the 2D surface of the graph. The other fou4 primary dimensions are build into the **horizontal axis**. Each cell contains a  **number** counting models with those  specifications. Numbers on the background of the same color add up to 100% of the submitted models. Opacity is mapped onto the magnitude of the number. The hue is categorical. Combining cognitive measure with each of the fou4 demensions results in **fou4 tile plots**

These four graphs  can be united into a display of a quantitative invormation, necessary to identify overlaps in models across studies. The following graph is the current draft of the 5-dimensional model space of the Portland-2105 collective. The graph is produced with  [./reports/model_space/scripts/tile_model_5D.R](https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/model_space/scripts/tile_model_5D.R) script. 

![](figure_modelSpace5D/dashboard_tile_graph-1.png) 


## Individual dimensions
To inspect the built of each graph

### Study

![](figure_modelSpace5D/1_graph_study_name-1.png) 


### Subgroup / Sex

![](figure_modelSpace5D/3_graph_subgroup-1.png) 

### Covariate set / Model type
![](figure_modelSpace5D/2_graph_model_type-1.png) 


### Phys Measures

![](figure_modelSpace5D/0_graph_phys_measure-1.png) 



# Session Information
For the sake of documentation and reproducibility, the current report was rendered on a system using the following software.


```
Report rendered by koval_000 at 2015-12-15, 15:08 -0800
```

```
R version 3.2.2 (2015-08-14)
Platform: x86_64-w64-mingw32/x64 (64-bit)
Running under: Windows 8 x64 (build 9200)

locale:
[1] LC_COLLATE=English_United States.1252  LC_CTYPE=English_United States.1252    LC_MONETARY=English_United States.1252
[4] LC_NUMERIC=C                           LC_TIME=English_United States.1252    

attached base packages:
[1] grid      stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
 [1] lattice_0.20-33       shiny_0.12.1          RColorBrewer_1.1-2    scales_0.2.5          tidyr_0.2.0          
 [6] ggplot2_1.0.1         IalsaSynthesis_0.1.8  MplusAutomation_0.6-3 dplyr_0.4.1           testit_0.4           
[11] knitr_1.10.5         

loaded via a namespace (and not attached):
 [1] Rcpp_0.11.6      highr_0.5        formatR_1.2      plyr_1.8.3       tools_3.2.2      boot_1.3-17     
 [7] digest_0.6.8     evaluate_0.7     gtable_0.1.2     texreg_1.35      DBI_0.3.1        yaml_2.1.13     
[13] parallel_3.2.2   proto_0.3-10     coda_0.17-1      stringr_1.0.0    R6_2.0.1         tcltk_3.2.2     
[19] gsubfn_0.6-6     rmarkdown_0.7    reshape2_1.4.1   magrittr_1.5     htmltools_0.2.6  MASS_7.3-44     
[25] assertthat_0.1   mime_0.3         xtable_1.7-4     colorspace_1.2-6 httpuv_1.3.2     labeling_0.3    
[31] stringi_0.4-1    lazyeval_0.1.10  munsell_0.4.2   
```
