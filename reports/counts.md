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

This report tabulates frequency counts of bivariate models that are available in the workshop collective at the current time. For correlation between random terms in bivariate models, see the report [Model Essentials](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/essentials.html)

## Overview

We are yet to receive model results from the following studies:  

```
[1] "elsa" "hrs"  "lasa" "nshd"
```


Presently, the number of **bivariate models** supplied by the participating studies is:

```
[1] 726
```

<!-- Frequency counts   -->
Counting valid models in each study:

```

  eas  habc  ilse   nas nuage  obas  octo  radc satsa 
  220    48    27    41     6     4   176   145    59 
```

## Physical constructs 

Number of models that use the following **Physical contructs**

```
           
            eas habc ilse nas nuage obas octo radc satsa
  gait      .   .    .    .   .     .    .    .    20   
  grip      .   .    .    .   .     .    42   .    20   
  muscle    109 24   27   .   6     .    44   81   .    
  pulmonary 111 .    .    41  .     .    90   64   19   
  walking   .   24   .    .   .     4    .    .    .    
```

## Cognitive constructs 

Number of models that use the following  **Cognitive contructs**

```
                 
                  eas habc ilse nas nuage obas octo radc satsa
  attention       .   .    .    .   .     .    .    7    .    
  block           .   .    .    .   .     .    14   .    .    
  digitbackward   .   .    .    .   .     .    12   .    .    
  digitforward    .   .    .    .   .     .    12   .    .    
  digitsymbol     .   .    .    .   .     .    12   .    .    
  executive       10  .    .    .   .     .    .    20   .    
  figurelogic     .   .    .    .   .     .    12   .    .    
  fluency         66  .    6    .   .     .    .    .    .    
  fluid           10  .    .    .   .     .    .    .    .    
  fluidreasoning  .   .    .    12  .     .    .    .    .    
  global          20  .    .    6   6     4    8    7    .    
  knowledge       35  .    6    .   .     .    16   11   .    
  language        .   .    .    .   .     .    .    13   .    
  memory          39  .    .    .   .     .    32   47   15   
  memoryattention .   .    .    17  .     .    .    .    .    
  mental          .   32   .    .   .     .    .    .    .    
  mirrecall       .   .    .    .   .     .    12   .    .    
  proserecall     .   .    .    .   .     .    14   .    .    
  reasoning       20  .    9    .   .     .    16   11   .    
  spatial         .   .    .    .   .     .    .    .    15   
  speed           20  16   6    .   .     .    16   18   15   
  verbal          .   .    .    .   .     .    .    .    14   
  verbalfluency   .   .    .    6   .     .    .    .    .    
  visuospatial    .   .    .    .   .     .    .    11   .    
```

## Bivariate models

Number of models with a uniuqe **Physical + Cognitive** combination of constructs:

```
                 
                  gait grip muscle pulmonary walking
  attention       .    .    4      3         .      
  block           .    6    .      8         .      
  digitbackward   .    6    .      6         .      
  digitforward    .    6    .      6         .      
  digitsymbol     .    6    .      6         .      
  executive       .    .    12     18        .      
  figurelogic     .    6    .      6         .      
  fluency         .    .    42     30        .      
  fluid           .    .    10     .         .      
  fluidreasoning  .    .    .      12        .      
  global          .    .    24     23        4      
  knowledge       .    .    34     34        .      
  language        .    .    7      6         .      
  memory          5    5    61     62        .      
  memoryattention .    .    .      17        .      
  mental          .    .    16     .         16     
  mirrecall       .    6    .      6         .      
  proserecall     .    6    .      8         .      
  reasoning       .    .    33     23        .      
  spatial         5    5    .      5         .      
  speed           5    5    42     31        8      
  verbal          5    5    .      4         .      
  verbalfluency   .    .    .      6         .      
  visuospatial    .    .    6      5         .      
```
It is important to remember that these numbers reflect only the combinations of **constructs**, the  **operationalizations** of these construct (specifc outcomes) that may differ from model to model. 

## Bivariate by Study

Number of models with a uniuqe **Physical + Cognitive** combination of constructs **by study**:

```
                       gait grip muscle pulmonary walking
                                                         
eas   attention          .    .      .         .       . 
      block              .    .      .         .       . 
      digitbackward      .    .      .         .       . 
      digitforward       .    .      .         .       . 
      digitsymbol        .    .      .         .       . 
      executive          .    .      .         10      . 
      figurelogic        .    .      .         .       . 
      fluency            .    .      36        30      . 
      fluid              .    .      10        .       . 
      fluidreasoning     .    .      .         .       . 
      global             .    .      10        10      . 
      knowledge          .    .      14        21      . 
      language           .    .      .         .       . 
      memory             .    .      19        20      . 
      memoryattention    .    .      .         .       . 
      mental             .    .      .         .       . 
      mirrecall          .    .      .         .       . 
      proserecall        .    .      .         .       . 
      reasoning          .    .      10        10      . 
      spatial            .    .      .         .       . 
      speed              .    .      10        10      . 
      verbal             .    .      .         .       . 
      verbalfluency      .    .      .         .       . 
      visuospatial       .    .      .         .       . 
habc  attention          .    .      .         .       . 
      block              .    .      .         .       . 
      digitbackward      .    .      .         .       . 
      digitforward       .    .      .         .       . 
      digitsymbol        .    .      .         .       . 
      executive          .    .      .         .       . 
      figurelogic        .    .      .         .       . 
      fluency            .    .      .         .       . 
      fluid              .    .      .         .       . 
      fluidreasoning     .    .      .         .       . 
      global             .    .      .         .       . 
      knowledge          .    .      .         .       . 
      language           .    .      .         .       . 
      memory             .    .      .         .       . 
      memoryattention    .    .      .         .       . 
      mental             .    .      16        .       16
      mirrecall          .    .      .         .       . 
      proserecall        .    .      .         .       . 
      reasoning          .    .      .         .       . 
      spatial            .    .      .         .       . 
      speed              .    .      8         .       8 
      verbal             .    .      .         .       . 
      verbalfluency      .    .      .         .       . 
      visuospatial       .    .      .         .       . 
ilse  attention          .    .      .         .       . 
      block              .    .      .         .       . 
      digitbackward      .    .      .         .       . 
      digitforward       .    .      .         .       . 
      digitsymbol        .    .      .         .       . 
      executive          .    .      .         .       . 
      figurelogic        .    .      .         .       . 
      fluency            .    .      6         .       . 
      fluid              .    .      .         .       . 
      fluidreasoning     .    .      .         .       . 
      global             .    .      .         .       . 
      knowledge          .    .      6         .       . 
      language           .    .      .         .       . 
      memory             .    .      .         .       . 
      memoryattention    .    .      .         .       . 
      mental             .    .      .         .       . 
      mirrecall          .    .      .         .       . 
      proserecall        .    .      .         .       . 
      reasoning          .    .      9         .       . 
      spatial            .    .      .         .       . 
      speed              .    .      6         .       . 
      verbal             .    .      .         .       . 
      verbalfluency      .    .      .         .       . 
      visuospatial       .    .      .         .       . 
nas   attention          .    .      .         .       . 
      block              .    .      .         .       . 
      digitbackward      .    .      .         .       . 
      digitforward       .    .      .         .       . 
      digitsymbol        .    .      .         .       . 
      executive          .    .      .         .       . 
      figurelogic        .    .      .         .       . 
      fluency            .    .      .         .       . 
      fluid              .    .      .         .       . 
      fluidreasoning     .    .      .         12      . 
      global             .    .      .         6       . 
      knowledge          .    .      .         .       . 
      language           .    .      .         .       . 
      memory             .    .      .         .       . 
      memoryattention    .    .      .         17      . 
      mental             .    .      .         .       . 
      mirrecall          .    .      .         .       . 
      proserecall        .    .      .         .       . 
      reasoning          .    .      .         .       . 
      spatial            .    .      .         .       . 
      speed              .    .      .         .       . 
      verbal             .    .      .         .       . 
      verbalfluency      .    .      .         6       . 
      visuospatial       .    .      .         .       . 
nuage attention          .    .      .         .       . 
      block              .    .      .         .       . 
      digitbackward      .    .      .         .       . 
      digitforward       .    .      .         .       . 
      digitsymbol        .    .      .         .       . 
      executive          .    .      .         .       . 
      figurelogic        .    .      .         .       . 
      fluency            .    .      .         .       . 
      fluid              .    .      .         .       . 
      fluidreasoning     .    .      .         .       . 
      global             .    .      6         .       . 
      knowledge          .    .      .         .       . 
      language           .    .      .         .       . 
      memory             .    .      .         .       . 
      memoryattention    .    .      .         .       . 
      mental             .    .      .         .       . 
      mirrecall          .    .      .         .       . 
      proserecall        .    .      .         .       . 
      reasoning          .    .      .         .       . 
      spatial            .    .      .         .       . 
      speed              .    .      .         .       . 
      verbal             .    .      .         .       . 
      verbalfluency      .    .      .         .       . 
      visuospatial       .    .      .         .       . 
obas  attention          .    .      .         .       . 
      block              .    .      .         .       . 
      digitbackward      .    .      .         .       . 
      digitforward       .    .      .         .       . 
      digitsymbol        .    .      .         .       . 
      executive          .    .      .         .       . 
      figurelogic        .    .      .         .       . 
      fluency            .    .      .         .       . 
      fluid              .    .      .         .       . 
      fluidreasoning     .    .      .         .       . 
      global             .    .      .         .       4 
      knowledge          .    .      .         .       . 
      language           .    .      .         .       . 
      memory             .    .      .         .       . 
      memoryattention    .    .      .         .       . 
      mental             .    .      .         .       . 
      mirrecall          .    .      .         .       . 
      proserecall        .    .      .         .       . 
      reasoning          .    .      .         .       . 
      spatial            .    .      .         .       . 
      speed              .    .      .         .       . 
      verbal             .    .      .         .       . 
      verbalfluency      .    .      .         .       . 
      visuospatial       .    .      .         .       . 
octo  attention          .    .      .         .       . 
      block              .    6      .         8       . 
      digitbackward      .    6      .         6       . 
      digitforward       .    6      .         6       . 
      digitsymbol        .    6      .         6       . 
      executive          .    .      .         .       . 
      figurelogic        .    6      .         6       . 
      fluency            .    .      .         .       . 
      fluid              .    .      .         .       . 
      fluidreasoning     .    .      .         .       . 
      global             .    .      4         4       . 
      knowledge          .    .      8         8       . 
      language           .    .      .         .       . 
      memory             .    .      16        16      . 
      memoryattention    .    .      .         .       . 
      mental             .    .      .         .       . 
      mirrecall          .    6      .         6       . 
      proserecall        .    6      .         8       . 
      reasoning          .    .      8         8       . 
      spatial            .    .      .         .       . 
      speed              .    .      8         8       . 
      verbal             .    .      .         .       . 
      verbalfluency      .    .      .         .       . 
      visuospatial       .    .      .         .       . 
radc  attention          .    .      4         3       . 
      block              .    .      .         .       . 
      digitbackward      .    .      .         .       . 
      digitforward       .    .      .         .       . 
      digitsymbol        .    .      .         .       . 
      executive          .    .      12        8       . 
      figurelogic        .    .      .         .       . 
      fluency            .    .      .         .       . 
      fluid              .    .      .         .       . 
      fluidreasoning     .    .      .         .       . 
      global             .    .      4         3       . 
      knowledge          .    .      6         5       . 
      language           .    .      7         6       . 
      memory             .    .      26        21      . 
      memoryattention    .    .      .         .       . 
      mental             .    .      .         .       . 
      mirrecall          .    .      .         .       . 
      proserecall        .    .      .         .       . 
      reasoning          .    .      6         5       . 
      spatial            .    .      .         .       . 
      speed              .    .      10        8       . 
      verbal             .    .      .         .       . 
      verbalfluency      .    .      .         .       . 
      visuospatial       .    .      6         5       . 
satsa attention          .    .      .         .       . 
      block              .    .      .         .       . 
      digitbackward      .    .      .         .       . 
      digitforward       .    .      .         .       . 
      digitsymbol        .    .      .         .       . 
      executive          .    .      .         .       . 
      figurelogic        .    .      .         .       . 
      fluency            .    .      .         .       . 
      fluid              .    .      .         .       . 
      fluidreasoning     .    .      .         .       . 
      global             .    .      .         .       . 
      knowledge          .    .      .         .       . 
      language           .    .      .         .       . 
      memory             5    5      .         5       . 
      memoryattention    .    .      .         .       . 
      mental             .    .      .         .       . 
      mirrecall          .    .      .         .       . 
      proserecall        .    .      .         .       . 
      reasoning          .    .      .         .       . 
      spatial            5    5      .         5       . 
      speed              5    5      .         5       . 
      verbal             5    5      .         4       . 
      verbalfluency      .    .      .         .       . 
      visuospatial       .    .      .         .       . 
```


## Specific Physical 


### muscle
Operationalizations of the physical construct **muscle**: 
```
      
       eas habc ilse nuage octo radc
  gait .   1    .    .     .    .   
  grip 109 .    27   6     44   71  
  hand .   23   .    .     .    .   
```

### pulmonary
Operationalizations of the physical construct **pulmonary**: 
```
      
       eas nas octo radc satsa
  fev  .   .   .    54   .    
  fev1 .   20  .    .    .    
  fevc .   1   .    .    .    
  fvc  .   20  .    .    .    
  pek  111 .   44   .    .    
```

### walking
Operationalizations of the physical construct **walking**: 
```
      
       habc obas
  gait 24   .   
```

### grip
Operationalizations of the physical construct **grip**: 
```
Error in file naming: specific measurement was not specified for physical construct **grip**.*

```

### gait
Operationalizations of the physical construct **gait**: 
```
Error in file naming: specific measurement was not specified for physical construct **gait**.*

```



## Specific Cognitive 

### fluency
Operationalizations of the cognitive construct **fluency**: 
```
                   
                    eas ilse
  bostonnaming      20  .   
  category          20  .   
  fas               20  .   
  information       6   .   
  verbalfluencytest .   6   
```

### fluid
Operationalizations of the cognitive construct **fluid**: 
```
         
          eas
  trailsb 10 
```

### global
Operationalizations of the cognitive construct **global**: 
```
      
       eas nas nuage obas octo radc
  mmms .   .   6     .    .    .   
  mmse 20  6   .     .    8    7   
```

### knowledge
Operationalizations of the cognitive construct **knowledge**: 
```
                      
                       eas ilse octo radc
  information          14  .    8    .   
  nart                 .   .    .    7   
  synonyms             .   .    8    .   
  waisgeneralknowledge .   6    .    .   
  waisvocab            21  .    .    .   
```

### memory
Operationalizations of the cognitive construct **memory**: 
```
                      
                       eas octo radc satsa
  bostonstorydelay     .   .    7    .    
  bostonstoryimmediate .   .    7    .    
  digitspan            8   .    .    .    
  digitspanbackward    .   8    .    .    
  digitspanforward     .   8    .    .    
  digitspantotal       6   .    .    .    
  digitsymbol          5   .    .    .    
  digitsymboltotal     1   .    .    .    
  logicalmemory        10  .    .    .    
  logicalmemorydelay   .   .    7    .    
  logicalmemoryimmed   .   .    5    .    
  logicalmemorytotal   9   .    .    .    
  mirrecall            .   8    .    .    
  proserecall          .   8    .    .    
  wordlistdelay        .   .    7    .    
  wordlistimmed        .   .    7    .    
  wordlistrecog        .   .    7    .    
```

### reasoning
Operationalizations of the cognitive construct **reasoning**: 
```
                       
                        eas ilse octo radc
  block                 20  .    .    .   
  blockdesign           .   .    8    .   
  figurelogic           .   .    8    .   
  lpsspacialability     .   4    .    .   
  matrices              .   .    .    7   
  waispicturecompletion .   5    .    .   
```

### speed
Operationalizations of the cognitive construct **speed**: 
```
                             
                              eas habc ilse octo radc satsa
  digitsymbol                 19  16   .    8    7    .    
  digitsymbolsubstitutiontest .   .    6    .    .    .    
  digitsymol                  1   .    .    .    .    .    
  numbercomparison            .   .    .    .    7    .    
  psif                        .   .    .    8    .    .    
```

### executive
Operationalizations of the cognitive construct **executive**: 
```
                 
                  eas radc
  categoryfluency .   4   
  digitbackward   .   6   
  digitordering   .   6   
  trailsb         10  .   
```

### mental
Operationalizations of the cognitive construct **mental**: 
```
       
        habc
  3ms   16  
  clock 16  
```

### fluidreasoning
Operationalizations of the cognitive construct **fluidreasoning**: 
```
                   
                    nas
  figurecopy        6  
  patterncomparison 6  
```

### memoryattention
Operationalizations of the cognitive construct **memoryattention**: 
```
                   
                    nas
  delayedwordrecall 6  
  digitbackward     5  
  immediaterecall   6  
```

### verbalfluency
Operationalizations of the cognitive construct **verbalfluency**: 
```
         
          nas
  animals 6  
```

### block
Operationalizations of the cognitive construct **block**: 
```
Error in file naming: specific measurement was not specified for cogntive construct **block**.*

```

### digitbackward
Operationalizations of the cognitive construct **digitbackward**: 
```
Error in file naming: specific measurement was not specified for cogntive construct **digitbackward**.*

```

### digitforward
Operationalizations of the cognitive construct **digitforward**: 
```
Error in file naming: specific measurement was not specified for cogntive construct **digitforward**.*

```

### digitsymbol
Operationalizations of the cognitive construct **digitsymbol**: 
```
Error in file naming: specific measurement was not specified for cogntive construct **digitsymbol**.*

```

### figurelogic
Operationalizations of the cognitive construct **figurelogic**: 
```
Error in file naming: specific measurement was not specified for cogntive construct **figurelogic**.*

```

### mirrecall
Operationalizations of the cognitive construct **mirrecall**: 
```
Error in file naming: specific measurement was not specified for cogntive construct **mirrecall**.*

```

### proserecall
Operationalizations of the cognitive construct **proserecall**: 
```
Error in file naming: specific measurement was not specified for cogntive construct **proserecall**.*

```

### attention
Operationalizations of the cognitive construct **attention**: 
```
               
                radc
  digitsforward 7   
```

### language
Operationalizations of the cognitive construct **language**: 
```
              
               radc
  bnt          6   
  complexideas 7   
```

### visuospatial
Operationalizations of the cognitive construct **visuospatial**: 
```
                 
                  radc
  lineorientation 7   
```

### spatial
Operationalizations of the cognitive construct **spatial**: 
```
Error in file naming: specific measurement was not specified for cogntive construct **spatial**.*

```

### verbal
Operationalizations of the cognitive construct **verbal**: 
```
Error in file naming: specific measurement was not specified for cogntive construct **verbal**.*

```





# Session Information
For the sake of documentation and reproducibility, the current report was rendered on a system using the following software.


```
Report rendered by koval_000 at 2015-05-07, 01:56 -0700
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
[1] dplyr_0.4.1        testit_0.4         ggplot2_1.0.1      RColorBrewer_1.1-2 scales_0.2.4       knitr_1.10.5      

loaded via a namespace (and not attached):
 [1] Rcpp_0.11.6       magrittr_1.5      MASS_7.3-40       munsell_0.4.2     colorspace_1.2-6  stringr_1.0.0    
 [7] plyr_1.8.2        tools_3.2.0       parallel_3.2.0    gtable_0.1.2      DBI_0.3.1         htmltools_0.2.6  
[13] yaml_2.1.13       digest_0.6.8      assertthat_0.1    reshape2_1.4.1    formatR_1.2       evaluate_0.7     
[19] rmarkdown_0.5.3.2 stringi_0.4-1     proto_0.3-10     
```
