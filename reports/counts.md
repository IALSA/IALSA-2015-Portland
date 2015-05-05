# Progress report: IALSA Portland 2015



<!--  Set the working directory to the repository's base directory; this assumes the report is nested inside of two directories.-->


<!-- Set the report-wide options, and point to the external code file. -->


<!-- Load the sources.  Suppress the output when loading sources. --> 


<!-- Load 'sourced' R files.  Suppress the output when loading packages. --> 


<!-- Load any Global functions and variables declared in the R file.  Suppress the output. --> 


<!-- Declare any global functions specific to a Rmd output.  Suppress the output. --> 


<!-- Load the datasets.   -->


<!-- Tweak the datasets.   -->


<!-- Frequency counts   -->

## Overview

We are yet to receive model results from the following studies:  

```
[1] "elsa" "hrs"  "lasa" "nshd"
```


Presently, the number of **bivariate models** provided by participating studies is:

```
[1] 767
```

<!-- Frequency counts   -->
Counting valid models in each study:

```

  eas  habc  ilse   nas nuage  obas  octo  radc satsa 
  220    48    68    41     6     4   176   145    59 
```

## Outcomes 

Models using the following **Physical contructs**, by study

```
           
            eas habc ilse nas nuage obas octo radc satsa
  gait      .   .    .    .   .     .    .    .    20   
  grip      .   .    .    .   .     .    42   .    20   
  muscle    109 24   32   .   6     .    44   81   .    
  pulmonary 111 .    .    41  .     .    90   64   19   
  tug       .   .    36   .   .     .    .    .    .    
  walking   .   24   .    .   .     4    .    .    .    
```

Models using the following **Cognitive contructs**, by study

```
                 
                  eas habc ilse nas nuage obas octo radc satsa
  attention       .   .    .    .   .     .    .    7    .    
  block           .   .    .    .   .     .    14   .    .    
  digitbackward   .   .    .    .   .     .    12   .    .    
  digitforward    .   .    .    .   .     .    12   .    .    
  digitsymbol     .   .    .    .   .     .    12   .    .    
  executive       10  .    .    .   .     .    .    20   .    
  figurelogic     .   .    .    .   .     .    12   .    .    
  fluency         66  .    12   .   .     .    .    .    .    
  fluid           10  .    .    .   .     .    .    .    .    
  fluidreasoning  .   .    .    12  .     .    .    .    .    
  global          20  .    .    6   6     4    8    7    .    
  knowledge       35  .    12   .   .     .    16   11   .    
  language        .   .    .    .   .     .    .    13   .    
  memory          39  .    .    .   .     .    32   47   15   
  memoryattention .   .    .    17  .     .    .    .    .    
  mental          .   32   .    .   .     .    .    .    .    
  mirrecall       .   .    .    .   .     .    12   .    .    
  proserecall     .   .    .    .   .     .    14   .    .    
  reasoning       20  .    32   .   .     .    16   11   .    
  spatial         .   .    .    .   .     .    .    .    15   
  speed           20  16   12   .   .     .    16   18   15   
  verbal          .   .    .    .   .     .    .    .    14   
  verbalfluency   .   .    .    6   .     .    .    .    .    
  visuospatial    .   .    .    .   .     .    .    11   .    
```

Counting models with uniuqe **Physical + Cognitive** combination of outcomes:

```
                 
                  gait grip muscle pulmonary tug walking
  attention       .    .    4      3         .   .      
  block           .    6    .      8         .   .      
  digitbackward   .    6    .      6         .   .      
  digitforward    .    6    .      6         .   .      
  digitsymbol     .    6    .      6         .   .      
  executive       .    .    12     18        .   .      
  figurelogic     .    6    .      6         .   .      
  fluency         .    .    42     30        6   .      
  fluid           .    .    10     .         .   .      
  fluidreasoning  .    .    .      12        .   .      
  global          .    .    24     23        .   4      
  knowledge       .    .    34     34        6   .      
  language        .    .    7      6         .   .      
  memory          5    5    61     62        .   .      
  memoryattention .    .    .      17        .   .      
  mental          .    .    16     .         .   16     
  mirrecall       .    6    .      6         .   .      
  proserecall     .    6    .      8         .   .      
  reasoning       .    .    38     23        18  .      
  spatial         5    5    .      5         .   .      
  speed           5    5    42     31        6   8      
  verbal          5    5    .      4         .   .      
  verbalfluency   .    .    .      6         .   .      
  visuospatial    .    .    6      5         .   .      
```

## Pairs by Study

Counting models with uniuqe **Physical + Cognitive** combination of outcomes **by study**:

```
                       gait grip muscle pulmonary tug walking
                                                             
eas   attention          .    .      .         .   .       . 
      block              .    .      .         .   .       . 
      digitbackward      .    .      .         .   .       . 
      digitforward       .    .      .         .   .       . 
      digitsymbol        .    .      .         .   .       . 
      executive          .    .      .         10  .       . 
      figurelogic        .    .      .         .   .       . 
      fluency            .    .      36        30  .       . 
      fluid              .    .      10        .   .       . 
      fluidreasoning     .    .      .         .   .       . 
      global             .    .      10        10  .       . 
      knowledge          .    .      14        21  .       . 
      language           .    .      .         .   .       . 
      memory             .    .      19        20  .       . 
      memoryattention    .    .      .         .   .       . 
      mental             .    .      .         .   .       . 
      mirrecall          .    .      .         .   .       . 
      proserecall        .    .      .         .   .       . 
      reasoning          .    .      10        10  .       . 
      spatial            .    .      .         .   .       . 
      speed              .    .      10        10  .       . 
      verbal             .    .      .         .   .       . 
      verbalfluency      .    .      .         .   .       . 
      visuospatial       .    .      .         .   .       . 
habc  attention          .    .      .         .   .       . 
      block              .    .      .         .   .       . 
      digitbackward      .    .      .         .   .       . 
      digitforward       .    .      .         .   .       . 
      digitsymbol        .    .      .         .   .       . 
      executive          .    .      .         .   .       . 
      figurelogic        .    .      .         .   .       . 
      fluency            .    .      .         .   .       . 
      fluid              .    .      .         .   .       . 
      fluidreasoning     .    .      .         .   .       . 
      global             .    .      .         .   .       . 
      knowledge          .    .      .         .   .       . 
      language           .    .      .         .   .       . 
      memory             .    .      .         .   .       . 
      memoryattention    .    .      .         .   .       . 
      mental             .    .      16        .   .       16
      mirrecall          .    .      .         .   .       . 
      proserecall        .    .      .         .   .       . 
      reasoning          .    .      .         .   .       . 
      spatial            .    .      .         .   .       . 
      speed              .    .      8         .   .       8 
      verbal             .    .      .         .   .       . 
      verbalfluency      .    .      .         .   .       . 
      visuospatial       .    .      .         .   .       . 
ilse  attention          .    .      .         .   .       . 
      block              .    .      .         .   .       . 
      digitbackward      .    .      .         .   .       . 
      digitforward       .    .      .         .   .       . 
      digitsymbol        .    .      .         .   .       . 
      executive          .    .      .         .   .       . 
      figurelogic        .    .      .         .   .       . 
      fluency            .    .      6         .   6       . 
      fluid              .    .      .         .   .       . 
      fluidreasoning     .    .      .         .   .       . 
      global             .    .      .         .   .       . 
      knowledge          .    .      6         .   6       . 
      language           .    .      .         .   .       . 
      memory             .    .      .         .   .       . 
      memoryattention    .    .      .         .   .       . 
      mental             .    .      .         .   .       . 
      mirrecall          .    .      .         .   .       . 
      proserecall        .    .      .         .   .       . 
      reasoning          .    .      14        .   18      . 
      spatial            .    .      .         .   .       . 
      speed              .    .      6         .   6       . 
      verbal             .    .      .         .   .       . 
      verbalfluency      .    .      .         .   .       . 
      visuospatial       .    .      .         .   .       . 
nas   attention          .    .      .         .   .       . 
      block              .    .      .         .   .       . 
      digitbackward      .    .      .         .   .       . 
      digitforward       .    .      .         .   .       . 
      digitsymbol        .    .      .         .   .       . 
      executive          .    .      .         .   .       . 
      figurelogic        .    .      .         .   .       . 
      fluency            .    .      .         .   .       . 
      fluid              .    .      .         .   .       . 
      fluidreasoning     .    .      .         12  .       . 
      global             .    .      .         6   .       . 
      knowledge          .    .      .         .   .       . 
      language           .    .      .         .   .       . 
      memory             .    .      .         .   .       . 
      memoryattention    .    .      .         17  .       . 
      mental             .    .      .         .   .       . 
      mirrecall          .    .      .         .   .       . 
      proserecall        .    .      .         .   .       . 
      reasoning          .    .      .         .   .       . 
      spatial            .    .      .         .   .       . 
      speed              .    .      .         .   .       . 
      verbal             .    .      .         .   .       . 
      verbalfluency      .    .      .         6   .       . 
      visuospatial       .    .      .         .   .       . 
nuage attention          .    .      .         .   .       . 
      block              .    .      .         .   .       . 
      digitbackward      .    .      .         .   .       . 
      digitforward       .    .      .         .   .       . 
      digitsymbol        .    .      .         .   .       . 
      executive          .    .      .         .   .       . 
      figurelogic        .    .      .         .   .       . 
      fluency            .    .      .         .   .       . 
      fluid              .    .      .         .   .       . 
      fluidreasoning     .    .      .         .   .       . 
      global             .    .      6         .   .       . 
      knowledge          .    .      .         .   .       . 
      language           .    .      .         .   .       . 
      memory             .    .      .         .   .       . 
      memoryattention    .    .      .         .   .       . 
      mental             .    .      .         .   .       . 
      mirrecall          .    .      .         .   .       . 
      proserecall        .    .      .         .   .       . 
      reasoning          .    .      .         .   .       . 
      spatial            .    .      .         .   .       . 
      speed              .    .      .         .   .       . 
      verbal             .    .      .         .   .       . 
      verbalfluency      .    .      .         .   .       . 
      visuospatial       .    .      .         .   .       . 
obas  attention          .    .      .         .   .       . 
      block              .    .      .         .   .       . 
      digitbackward      .    .      .         .   .       . 
      digitforward       .    .      .         .   .       . 
      digitsymbol        .    .      .         .   .       . 
      executive          .    .      .         .   .       . 
      figurelogic        .    .      .         .   .       . 
      fluency            .    .      .         .   .       . 
      fluid              .    .      .         .   .       . 
      fluidreasoning     .    .      .         .   .       . 
      global             .    .      .         .   .       4 
      knowledge          .    .      .         .   .       . 
      language           .    .      .         .   .       . 
      memory             .    .      .         .   .       . 
      memoryattention    .    .      .         .   .       . 
      mental             .    .      .         .   .       . 
      mirrecall          .    .      .         .   .       . 
      proserecall        .    .      .         .   .       . 
      reasoning          .    .      .         .   .       . 
      spatial            .    .      .         .   .       . 
      speed              .    .      .         .   .       . 
      verbal             .    .      .         .   .       . 
      verbalfluency      .    .      .         .   .       . 
      visuospatial       .    .      .         .   .       . 
octo  attention          .    .      .         .   .       . 
      block              .    6      .         8   .       . 
      digitbackward      .    6      .         6   .       . 
      digitforward       .    6      .         6   .       . 
      digitsymbol        .    6      .         6   .       . 
      executive          .    .      .         .   .       . 
      figurelogic        .    6      .         6   .       . 
      fluency            .    .      .         .   .       . 
      fluid              .    .      .         .   .       . 
      fluidreasoning     .    .      .         .   .       . 
      global             .    .      4         4   .       . 
      knowledge          .    .      8         8   .       . 
      language           .    .      .         .   .       . 
      memory             .    .      16        16  .       . 
      memoryattention    .    .      .         .   .       . 
      mental             .    .      .         .   .       . 
      mirrecall          .    6      .         6   .       . 
      proserecall        .    6      .         8   .       . 
      reasoning          .    .      8         8   .       . 
      spatial            .    .      .         .   .       . 
      speed              .    .      8         8   .       . 
      verbal             .    .      .         .   .       . 
      verbalfluency      .    .      .         .   .       . 
      visuospatial       .    .      .         .   .       . 
radc  attention          .    .      4         3   .       . 
      block              .    .      .         .   .       . 
      digitbackward      .    .      .         .   .       . 
      digitforward       .    .      .         .   .       . 
      digitsymbol        .    .      .         .   .       . 
      executive          .    .      12        8   .       . 
      figurelogic        .    .      .         .   .       . 
      fluency            .    .      .         .   .       . 
      fluid              .    .      .         .   .       . 
      fluidreasoning     .    .      .         .   .       . 
      global             .    .      4         3   .       . 
      knowledge          .    .      6         5   .       . 
      language           .    .      7         6   .       . 
      memory             .    .      26        21  .       . 
      memoryattention    .    .      .         .   .       . 
      mental             .    .      .         .   .       . 
      mirrecall          .    .      .         .   .       . 
      proserecall        .    .      .         .   .       . 
      reasoning          .    .      6         5   .       . 
      spatial            .    .      .         .   .       . 
      speed              .    .      10        8   .       . 
      verbal             .    .      .         .   .       . 
      verbalfluency      .    .      .         .   .       . 
      visuospatial       .    .      6         5   .       . 
satsa attention          .    .      .         .   .       . 
      block              .    .      .         .   .       . 
      digitbackward      .    .      .         .   .       . 
      digitforward       .    .      .         .   .       . 
      digitsymbol        .    .      .         .   .       . 
      executive          .    .      .         .   .       . 
      figurelogic        .    .      .         .   .       . 
      fluency            .    .      .         .   .       . 
      fluid              .    .      .         .   .       . 
      fluidreasoning     .    .      .         .   .       . 
      global             .    .      .         .   .       . 
      knowledge          .    .      .         .   .       . 
      language           .    .      .         .   .       . 
      memory             5    5      .         5   .       . 
      memoryattention    .    .      .         .   .       . 
      mental             .    .      .         .   .       . 
      mirrecall          .    .      .         .   .       . 
      proserecall        .    .      .         .   .       . 
      reasoning          .    .      .         .   .       . 
      spatial            5    5      .         5   .       . 
      speed              5    5      .         5   .       . 
      verbal             5    5      .         4   .       . 
      verbalfluency      .    .      .         .   .       . 
      visuospatial       .    .      .         .   .       . 
```





# Session Information
For the sake of documentation and reproducibility, the current report was rendered on a system using the following software.


```
Report rendered by andkov at 2015-05-05, 15:18 -0700
```

```
R version 3.2.0 (2015-04-16)
Platform: x86_64-w64-mingw32/x64 (64-bit)
Running under: Windows 7 x64 (build 7601) Service Pack 1

locale:
[1] LC_COLLATE=English_Canada.1252  LC_CTYPE=English_Canada.1252    LC_MONETARY=English_Canada.1252
[4] LC_NUMERIC=C                    LC_TIME=English_Canada.1252    

attached base packages:
[1] grid      stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] testit_0.4         ggplot2_1.0.1      RColorBrewer_1.1-2 scales_0.2.4       knitr_1.10        

loaded via a namespace (and not attached):
 [1] Rcpp_0.11.6      digest_0.6.8     MASS_7.3-40      plyr_1.8.2       gtable_0.1.2     formatR_1.2     
 [7] magrittr_1.5     evaluate_0.7     stringi_0.4-1    reshape2_1.4.1   rmarkdown_0.5.1  proto_0.3-10    
[13] tools_3.2.0      stringr_1.0.0    munsell_0.4.2    yaml_2.1.13      colorspace_1.2-6 htmltools_0.2.6 
```
