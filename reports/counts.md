# Model Counts: IALSA Portland 2015



<!--  Set the working directory to the repository's base directory; this assumes the report is nested inside of two directories.-->


<!-- Set the report-wide options, and point to the external code file. -->


<!-- Load the sources.  Suppress the output when loading sources. --> 


<!-- Load 'sourced' R files.  Suppress the output when loading packages. --> 


<!-- Load any Global functions and variables declared in the R file.  Suppress the output. --> 


<!-- Declare any global functions specific to a Rmd output.  Suppress the output. --> 


<!-- Load the datasets.   -->


<!-- Tweak the datasets.   -->


<!-- Frequency counts   -->

This report tabulates frequency counts of bivariate models that are available in the workshop collective at the current time. For correlations between random terms in bivariate models consult [Model Essentials](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/essentials.html)

## Overview

We are yet to receive model results from the following studies:  

```
[1] "elsa" "hrs"  "lasa" "nshd" "obas"
```


Presently, the number of **bivariate models** supplied by the participating studies is:

```
[1] 1064
```

<!-- Frequency counts   -->
Counting valid models in each study:

```

  eas  habc  ilse   nas nuage  octo  radc satsa 
  485    88   123    41    18    88   129    92 
```

## Physical Constructs 

Number of models that use the following **Physical contructs**

```
           
            eas habc ilse nas nuage octo radc satsa
  muscle    131 32   45   .   12    44   73   46   
  nophys    221 24   34   .   6     .    .    .    
  pulmonary 133 .    .    41  .     44   56   46   
  tug       .   .    44   .   .     .    .    .    
  walking   .   32   .    .   .     .    .    .    
```

## Cognitive Constructs 

Number of models that use the following  **Cognitive contructs**

```
                 
                  eas habc ilse nas nuage octo radc satsa
  attention       .   .    .    .   .     .    7    .    
  executive       29  .    .    .   .     .    16   .    
  fluency         126 .    20   .   .     .    .    .    
  fluid           10  .    .    .   .     .    .    .    
  fluidreasoning  .   .    .    12  .     .    .    .    
  global          40  .    .    6   12    8    7    16   
  knowledge       75  .    12   .   .     16   7    48   
  language        .   .    .    .   .     .    13   .    
  memory          79  .    .    .   .     32   47   .    
  memoryattention .   .    .    17  .     .    .    .    
  mental          .   48   .    .   .     .    .    .    
  nocog           44  16   17   .   6     .    4    .    
  reasoning       42  .    54   .   .     16   7    .    
  speed           40  24   20   .   .     16   14   28   
  verbalfluency   .   .    .    6   .     .    .    .    
  visuospatial    .   .    .    .   .     .    7    .    
```

## Bivariate models

Number of models with a uniuqe **Physical + Cognitive** combination of constructs:

```
                 
                  muscle nophys pulmonary tug walking
  attention       4      .      3         .   .      
  executive       10     19     16        .   .      
  fluency         42     68     30        6   .      
  fluid           10     .      .         .   .      
  fluidreasoning  .      .      12        .   .      
  global          32     26     31        .   .      
  knowledge       56     40     56        6   .      
  language        7      .      6         .   .      
  memory          61     40     57        .   .      
  memoryattention .      .      17        .   .      
  mental          16     16     .         .   16     
  nocog           47     .      24        8   8      
  reasoning       40     40     21        18  .      
  speed           54     36     38        6   8      
  verbalfluency   .      .      6         .   .      
  visuospatial    4      .      3         .   .      
```
It is important to remember that these numbers reflect only the combinations of **constructs**, the  **operationalizations** of these construct (specifc outcomes) that may differ from model to model. 

## Bivariate by Study

Number of models with a uniuqe **Physical + Cognitive** combination of constructs **by study**:

```
                       muscle nophys pulmonary tug walking
                                                          
eas   attention            .      .         .   .       . 
      executive            .      19        10  .       . 
      fluency              36     60        30  .       . 
      fluid                10     .         .   .       . 
      fluidreasoning       .      .         .   .       . 
      global               10     20        10  .       . 
      knowledge            14     40        21  .       . 
      language             .      .         .   .       . 
      memory               19     40        20  .       . 
      memoryattention      .      .         .   .       . 
      mental               .      .         .   .       . 
      nocog                22     .         22  .       . 
      reasoning            10     22        10  .       . 
      speed                10     20        10  .       . 
      verbalfluency        .      .         .   .       . 
      visuospatial         .      .         .   .       . 
habc  attention            .      .         .   .       . 
      executive            .      .         .   .       . 
      fluency              .      .         .   .       . 
      fluid                .      .         .   .       . 
      fluidreasoning       .      .         .   .       . 
      global               .      .         .   .       . 
      knowledge            .      .         .   .       . 
      language             .      .         .   .       . 
      memory               .      .         .   .       . 
      memoryattention      .      .         .   .       . 
      mental               16     16        .   .       16
      nocog                8      .         .   .       8 
      reasoning            .      .         .   .       . 
      speed                8      8         .   .       8 
      verbalfluency        .      .         .   .       . 
      visuospatial         .      .         .   .       . 
ilse  attention            .      .         .   .       . 
      executive            .      .         .   .       . 
      fluency              6      8         .   6       . 
      fluid                .      .         .   .       . 
      fluidreasoning       .      .         .   .       . 
      global               .      .         .   .       . 
      knowledge            6      .         .   6       . 
      language             .      .         .   .       . 
      memory               .      .         .   .       . 
      memoryattention      .      .         .   .       . 
      mental               .      .         .   .       . 
      nocog                9      .         .   8       . 
      reasoning            18     18        .   18      . 
      speed                6      8         .   6       . 
      verbalfluency        .      .         .   .       . 
      visuospatial         .      .         .   .       . 
nas   attention            .      .         .   .       . 
      executive            .      .         .   .       . 
      fluency              .      .         .   .       . 
      fluid                .      .         .   .       . 
      fluidreasoning       .      .         12  .       . 
      global               .      .         6   .       . 
      knowledge            .      .         .   .       . 
      language             .      .         .   .       . 
      memory               .      .         .   .       . 
      memoryattention      .      .         17  .       . 
      mental               .      .         .   .       . 
      nocog                .      .         .   .       . 
      reasoning            .      .         .   .       . 
      speed                .      .         .   .       . 
      verbalfluency        .      .         6   .       . 
      visuospatial         .      .         .   .       . 
nuage attention            .      .         .   .       . 
      executive            .      .         .   .       . 
      fluency              .      .         .   .       . 
      fluid                .      .         .   .       . 
      fluidreasoning       .      .         .   .       . 
      global               6      6         .   .       . 
      knowledge            .      .         .   .       . 
      language             .      .         .   .       . 
      memory               .      .         .   .       . 
      memoryattention      .      .         .   .       . 
      mental               .      .         .   .       . 
      nocog                6      .         .   .       . 
      reasoning            .      .         .   .       . 
      speed                .      .         .   .       . 
      verbalfluency        .      .         .   .       . 
      visuospatial         .      .         .   .       . 
octo  attention            .      .         .   .       . 
      executive            .      .         .   .       . 
      fluency              .      .         .   .       . 
      fluid                .      .         .   .       . 
      fluidreasoning       .      .         .   .       . 
      global               4      .         4   .       . 
      knowledge            8      .         8   .       . 
      language             .      .         .   .       . 
      memory               16     .         16  .       . 
      memoryattention      .      .         .   .       . 
      mental               .      .         .   .       . 
      nocog                .      .         .   .       . 
      reasoning            8      .         8   .       . 
      speed                8      .         8   .       . 
      verbalfluency        .      .         .   .       . 
      visuospatial         .      .         .   .       . 
radc  attention            4      .         3   .       . 
      executive            10     .         6   .       . 
      fluency              .      .         .   .       . 
      fluid                .      .         .   .       . 
      fluidreasoning       .      .         .   .       . 
      global               4      .         3   .       . 
      knowledge            4      .         3   .       . 
      language             7      .         6   .       . 
      memory               26     .         21  .       . 
      memoryattention      .      .         .   .       . 
      mental               .      .         .   .       . 
      nocog                2      .         2   .       . 
      reasoning            4      .         3   .       . 
      speed                8      .         6   .       . 
      verbalfluency        .      .         .   .       . 
      visuospatial         4      .         3   .       . 
satsa attention            .      .         .   .       . 
      executive            .      .         .   .       . 
      fluency              .      .         .   .       . 
      fluid                .      .         .   .       . 
      fluidreasoning       .      .         .   .       . 
      global               8      .         8   .       . 
      knowledge            24     .         24  .       . 
      language             .      .         .   .       . 
      memory               .      .         .   .       . 
      memoryattention      .      .         .   .       . 
      mental               .      .         .   .       . 
      nocog                .      .         .   .       . 
      reasoning            .      .         .   .       . 
      speed                14     .         14  .       . 
      verbalfluency        .      .         .   .       . 
      visuospatial         .      .         .   .       . 
```


## Physical Measures






## Cognitive Measures 







# Session Information
For the sake of documentation and reproducibility, the current report was rendered on a system using the following software.


```
Report rendered by koval_000 at 2015-06-01, 11:08 -0700
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
[1] dplyr_0.4.1           testit_0.4            ggplot2_1.0.1         RColorBrewer_1.1-2    scales_0.2.4         
[6] knitr_1.10.5          MplusAutomation_0.6-3

loaded via a namespace (and not attached):
 [1] Rcpp_0.11.6      magrittr_1.5     MASS_7.3-40      munsell_0.4.2    colorspace_1.2-6 xtable_1.7-4    
 [7] lattice_0.20-31  stringr_1.0.0    plyr_1.8.2       tcltk_3.2.0      tools_3.2.0      parallel_3.2.0  
[13] gtable_0.1.2     texreg_1.35      coda_0.17-1      DBI_0.3.1        htmltools_0.2.6  yaml_2.1.13     
[19] lazyeval_0.1.10  assertthat_0.1   digest_0.6.8     formatR_1.2      reshape2_1.4.1   evaluate_0.7    
[25] rmarkdown_0.6.1  gsubfn_0.6-6     stringi_0.4-1    boot_1.3-16      proto_0.3-10    
```
