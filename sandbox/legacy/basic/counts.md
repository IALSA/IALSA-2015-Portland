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
habc nas nshd obas table_1_descriptives table_1_descriptives_physical table_2_ISR


Presently, the **total number of legally named models** supplied by the participating studies is
**1471**
: they include both *bivariate* and *univariate* models. Strings *"nophys"* and *"nocog"*, imply that the model is univariate (e.i. nocog == The particular cog predictor is "none")

<!-- Frequency counts   -->
Counting valid models in each study:

```

  eas  elsa   hrs  ilse  lasa nuage  octo  radc satsa 
  425    18    76    57    18    58   206   451   162 
```

```
    
     eas elsa hrs ilse lasa nuage octo radc satsa
  b1 371 18   76  47   18   12    206  302  162  
  u0 4   .    .   4    .    10    .    .    .    
  u1 20  .    .   6    .    36    .    149  .    
  u2 30  .    .   .    .    .     .    .    .    
```

However, for the present time, we will focus only on 
**1423**
linear models.

```

  eas  elsa   hrs  ilse  lasa nuage  octo  radc satsa 
  391    18    76    53    18    48   206   451   162 
```

```
    
     eas elsa hrs ilse lasa nuage octo radc satsa
  b1 371 18   76  47   18   12    206  302  162  
  u0 .   .    .   .    .    .     .    .    .    
  u1 20  .    .   6    .    36    .    149  .    
  u2 .   .    .   .    .    .     .    .    .    
```

**LINEAR  MODELS (u1, b1) ONLY BEYOND THIS POINT**

# Physical Domain

## Constructs 

Number of models that use the following **Physical contructs**

```
< table of extent 0 x 9 >
```

## Measures

Number of models that use the following **Physical measures**

```
           
            eas elsa hrs ilse lasa nuage octo radc satsa
  chair     .   .    .   .    .    6     .    .    .    
  fev       .   8    .   .    .    .     .    .    .    
  flamingo  .   .    .   .    .    6     .    .    .    
  gait      .   6    .   .    6    .     10   .    .    
  grip      .   4    2   .    6    .     52   .    .    
  muscle    119 .    24  12   .    18    44   149  52   
  nophys    .   .    .   .    .    6     .    149  .    
  pef       .   .    2   .    6    .     10   .    .    
  pulmonary 162 .    24  .    .    .     90   153  110  
  tug       .   .    .   41   .    6     .    .    .    
  walking   110 .    24  .    .    6     .    .    .    
```

## Measures by Constructs

Number of models using this **measure** of the  physical **construct**

```
< table of extent 11 x 0 >
```

## Measures by Constructs and Studies

Number of models using this **measure** of the  physical **construct**, by study

```
                
                
eas   chair     
      fev       
      flamingo  
      gait      
      grip      
      muscle    
      nophys    
      pef       
      pulmonary 
      tug       
      walking   
elsa  chair     
      fev       
      flamingo  
      gait      
      grip      
      muscle    
      nophys    
      pef       
      pulmonary 
      tug       
      walking   
hrs   chair     
      fev       
      flamingo  
      gait      
      grip      
      muscle    
      nophys    
      pef       
      pulmonary 
      tug       
      walking   
ilse  chair     
      fev       
      flamingo  
      gait      
      grip      
      muscle    
      nophys    
      pef       
      pulmonary 
      tug       
      walking   
lasa  chair     
      fev       
      flamingo  
      gait      
      grip      
      muscle    
      nophys    
      pef       
      pulmonary 
      tug       
      walking   
nuage chair     
      fev       
      flamingo  
      gait      
      grip      
      muscle    
      nophys    
      pef       
      pulmonary 
      tug       
      walking   
octo  chair     
      fev       
      flamingo  
      gait      
      grip      
      muscle    
      nophys    
      pef       
      pulmonary 
      tug       
      walking   
radc  chair     
      fev       
      flamingo  
      gait      
      grip      
      muscle    
      nophys    
      pef       
      pulmonary 
      tug       
      walking   
satsa chair     
      fev       
      flamingo  
      gait      
      grip      
      muscle    
      nophys    
      pef       
      pulmonary 
      tug       
      walking   
```


# Cognitive Domain

## Constructs 

Number of models that use the following **Cognitive contructs**

```
           
            eas elsa hrs ilse lasa nuage octo radc satsa
  executive .   .    .   .    .    .     18   .    .    
  reasoning .   .    .   .    .    .     12   .    .    
  speed     .   .    .   .    .    .     18   .    .    
```

## Measures

Number of models that use the following **Cognitive measures**

```
               
                eas elsa hrs ilse lasa nuage octo radc satsa
  block         .   .    .   .    .    .     20   .    .    
  codingtask    .   .    .   .    6    .     .    .    .    
  delayedrecall .   8    .   .    .    .     .    .    .    
  digitforward  .   .    .   .    .    .     18   .    .    
  digitsback    .   .    .   .    .    .     18   .    .    
  executive     29  .    .   .    .    .     .    50   10   
  figurelogic   .   .    .   .    .    .     12   .    .    
  fluency       87  2    .   7    .    .     .    23   .    
  fluid         10  .    .   .    .    .     .    .    .    
  global        20  .    .   .    .    18    8    .    16   
  knowledge     54  .    .   8    .    .     16   23   54   
  language      10  .    .   .    .    .     .    47   .    
  memory        73  .    36  .    .    .     32   188  28   
  mental        10  .    36  .    .    .     .    45   2    
  mirrecall     .   .    .   .    .    .     12   .    .    
  prose         .   .    .   .    .    .     6    .    .    
  proserecall   .   .    .   .    .    .     14   .    .    
  raven         .   .    .   .    6    .     .    .    .    
  reasoning     38  .    .   24   .    .     16   24   12   
  speed         40  .    .   8    .    .     16   47   30   
  symbol        .   .    .   .    .    .     18   .    .    
  univar        20  .    .   6    .    30    .    .    .    
  visuospatial  .   .    .   .    .    .     .    4    10   
  wordlistimmed .   8    4   .    6    .     .    .    .    
```

## Measures by Constructs

Number of models using this **measure** of the  cognitive **construct**

```
               
                executive reasoning speed
  block         .         .         .    
  codingtask    .         .         .    
  delayedrecall .         .         .    
  digitforward  .         .         .    
  digitsback    18        .         .    
  executive     .         .         .    
  figurelogic   .         12        .    
  fluency       .         .         .    
  fluid         .         .         .    
  global        .         .         .    
  knowledge     .         .         .    
  language      .         .         .    
  memory        .         .         .    
  mental        .         .         .    
  mirrecall     .         .         .    
  prose         .         .         .    
  proserecall   .         .         .    
  raven         .         .         .    
  reasoning     .         .         .    
  speed         .         .         .    
  symbol        .         .         18   
  univar        .         .         .    
  visuospatial  .         .         .    
  wordlistimmed .         .         .    
```

## Measures by Constructs and Studies

Number of models using this **measure** of the  cognitive **construct**, by study

```
                     executive reasoning speed
                                              
eas   block                 .         .     . 
      codingtask            .         .     . 
      delayedrecall         .         .     . 
      digitforward          .         .     . 
      digitsback            .         .     . 
      executive             .         .     . 
      figurelogic           .         .     . 
      fluency               .         .     . 
      fluid                 .         .     . 
      global                .         .     . 
      knowledge             .         .     . 
      language              .         .     . 
      memory                .         .     . 
      mental                .         .     . 
      mirrecall             .         .     . 
      prose                 .         .     . 
      proserecall           .         .     . 
      raven                 .         .     . 
      reasoning             .         .     . 
      speed                 .         .     . 
      symbol                .         .     . 
      univar                .         .     . 
      visuospatial          .         .     . 
      wordlistimmed         .         .     . 
elsa  block                 .         .     . 
      codingtask            .         .     . 
      delayedrecall         .         .     . 
      digitforward          .         .     . 
      digitsback            .         .     . 
      executive             .         .     . 
      figurelogic           .         .     . 
      fluency               .         .     . 
      fluid                 .         .     . 
      global                .         .     . 
      knowledge             .         .     . 
      language              .         .     . 
      memory                .         .     . 
      mental                .         .     . 
      mirrecall             .         .     . 
      prose                 .         .     . 
      proserecall           .         .     . 
      raven                 .         .     . 
      reasoning             .         .     . 
      speed                 .         .     . 
      symbol                .         .     . 
      univar                .         .     . 
      visuospatial          .         .     . 
      wordlistimmed         .         .     . 
hrs   block                 .         .     . 
      codingtask            .         .     . 
      delayedrecall         .         .     . 
      digitforward          .         .     . 
      digitsback            .         .     . 
      executive             .         .     . 
      figurelogic           .         .     . 
      fluency               .         .     . 
      fluid                 .         .     . 
      global                .         .     . 
      knowledge             .         .     . 
      language              .         .     . 
      memory                .         .     . 
      mental                .         .     . 
      mirrecall             .         .     . 
      prose                 .         .     . 
      proserecall           .         .     . 
      raven                 .         .     . 
      reasoning             .         .     . 
      speed                 .         .     . 
      symbol                .         .     . 
      univar                .         .     . 
      visuospatial          .         .     . 
      wordlistimmed         .         .     . 
ilse  block                 .         .     . 
      codingtask            .         .     . 
      delayedrecall         .         .     . 
      digitforward          .         .     . 
      digitsback            .         .     . 
      executive             .         .     . 
      figurelogic           .         .     . 
      fluency               .         .     . 
      fluid                 .         .     . 
      global                .         .     . 
      knowledge             .         .     . 
      language              .         .     . 
      memory                .         .     . 
      mental                .         .     . 
      mirrecall             .         .     . 
      prose                 .         .     . 
      proserecall           .         .     . 
      raven                 .         .     . 
      reasoning             .         .     . 
      speed                 .         .     . 
      symbol                .         .     . 
      univar                .         .     . 
      visuospatial          .         .     . 
      wordlistimmed         .         .     . 
lasa  block                 .         .     . 
      codingtask            .         .     . 
      delayedrecall         .         .     . 
      digitforward          .         .     . 
      digitsback            .         .     . 
      executive             .         .     . 
      figurelogic           .         .     . 
      fluency               .         .     . 
      fluid                 .         .     . 
      global                .         .     . 
      knowledge             .         .     . 
      language              .         .     . 
      memory                .         .     . 
      mental                .         .     . 
      mirrecall             .         .     . 
      prose                 .         .     . 
      proserecall           .         .     . 
      raven                 .         .     . 
      reasoning             .         .     . 
      speed                 .         .     . 
      symbol                .         .     . 
      univar                .         .     . 
      visuospatial          .         .     . 
      wordlistimmed         .         .     . 
nuage block                 .         .     . 
      codingtask            .         .     . 
      delayedrecall         .         .     . 
      digitforward          .         .     . 
      digitsback            .         .     . 
      executive             .         .     . 
      figurelogic           .         .     . 
      fluency               .         .     . 
      fluid                 .         .     . 
      global                .         .     . 
      knowledge             .         .     . 
      language              .         .     . 
      memory                .         .     . 
      mental                .         .     . 
      mirrecall             .         .     . 
      prose                 .         .     . 
      proserecall           .         .     . 
      raven                 .         .     . 
      reasoning             .         .     . 
      speed                 .         .     . 
      symbol                .         .     . 
      univar                .         .     . 
      visuospatial          .         .     . 
      wordlistimmed         .         .     . 
octo  block                 .         .     . 
      codingtask            .         .     . 
      delayedrecall         .         .     . 
      digitforward          .         .     . 
      digitsback            18        .     . 
      executive             .         .     . 
      figurelogic           .         12    . 
      fluency               .         .     . 
      fluid                 .         .     . 
      global                .         .     . 
      knowledge             .         .     . 
      language              .         .     . 
      memory                .         .     . 
      mental                .         .     . 
      mirrecall             .         .     . 
      prose                 .         .     . 
      proserecall           .         .     . 
      raven                 .         .     . 
      reasoning             .         .     . 
      speed                 .         .     . 
      symbol                .         .     18
      univar                .         .     . 
      visuospatial          .         .     . 
      wordlistimmed         .         .     . 
radc  block                 .         .     . 
      codingtask            .         .     . 
      delayedrecall         .         .     . 
      digitforward          .         .     . 
      digitsback            .         .     . 
      executive             .         .     . 
      figurelogic           .         .     . 
      fluency               .         .     . 
      fluid                 .         .     . 
      global                .         .     . 
      knowledge             .         .     . 
      language              .         .     . 
      memory                .         .     . 
      mental                .         .     . 
      mirrecall             .         .     . 
      prose                 .         .     . 
      proserecall           .         .     . 
      raven                 .         .     . 
      reasoning             .         .     . 
      speed                 .         .     . 
      symbol                .         .     . 
      univar                .         .     . 
      visuospatial          .         .     . 
      wordlistimmed         .         .     . 
satsa block                 .         .     . 
      codingtask            .         .     . 
      delayedrecall         .         .     . 
      digitforward          .         .     . 
      digitsback            .         .     . 
      executive             .         .     . 
      figurelogic           .         .     . 
      fluency               .         .     . 
      fluid                 .         .     . 
      global                .         .     . 
      knowledge             .         .     . 
      language              .         .     . 
      memory                .         .     . 
      mental                .         .     . 
      mirrecall             .         .     . 
      prose                 .         .     . 
      proserecall           .         .     . 
      raven                 .         .     . 
      reasoning             .         .     . 
      speed                 .         .     . 
      symbol                .         .     . 
      univar                .         .     . 
      visuospatial          .         .     . 
      wordlistimmed         .         .     . 
```







# Bivariate models

## Cross Constructs

Number of models that uses this **physical construct** (column) and  **cognitive construct** (row):

```
< table of extent 3 x 0 >
```
It is important to remember that these numbers reflect only the combinations of **constructs**, the  **operationalizations** of these construct (specifc outcomes) that may differ from model to model. 

## Cross Measures

Number of models that uses this **physical measure** (column) and  **cognitive measure** (row):

```
               
                chair fev flamingo gait grip muscle nophys pef pulmonary tug walking
  block         .     .   .        2    8    .      .      2   8         .   .      
  codingtask    .     .   .        2    2    .      .      2   .         .   .      
  delayedrecall .     4   .        2    2    .      .      .   .         .   .      
  digitforward  .     .   .        2    8    .      .      2   6         .   .      
  digitsback    .     .   .        2    8    .      .      2   6         .   .      
  executive     .     .   .        .    .    18     16     .   45        .   10     
  figurelogic   .     .   .        .    6    .      .      .   6         .   .      
  fluency       .     .   .        2    .    45     8      .   39        5   20     
  fluid         .     .   .        .    .    10     .      .   .         .   .      
  global        .     .   .        .    .    34     6      .   22        .   .      
  knowledge     .     .   .        .    .    55     8      .   66        6   20     
  language      .     .   .        .    .    15     16     .   16        .   10     
  memory        .     .   .        .    .    114    61     .   150       .   32     
  mental        .     .   .        .    .    26     16     .   29        .   22     
  mirrecall     .     .   .        .    6    .      .      .   6         .   .      
  prose         .     .   .        2    2    .      .      2   .         .   .      
  proserecall   .     .   .        .    6    .      .      .   8         .   .      
  raven         .     .   .        2    2    .      .      2   .         .   .      
  reasoning     .     .   .        .    .    34     8      .   44        18  10     
  speed         .     .   .        .    .    49     16     .   60        6   10     
  symbol        .     .   .        2    8    .      .      2   6         .   .      
  univar        6     .   6        .    .    16     .      .   10        12  6      
  visuospatial  .     .   .        .    .    2      .      .   12        .   .      
  wordlistimmed .     4   .        4    6    .      .      4   .         .   .      
```

## Cross Measures (fill)


```
                     chair fev flamingo gait grip muscle nophys pef pulmonary tug walking
                                                                                         
eas   block             .   .        .    .    .      .      .   .         .   .       . 
      codingtask        .   .        .    .    .      .      .   .         .   .       . 
      delayedrecall     .   .        .    .    .      .      .   .         .   .       . 
      digitforward      .   .        .    .    .      .      .   .         .   .       . 
      digitsback        .   .        .    .    .      .      .   .         .   .       . 
      executive         .   .        .    .    .      .      .   .         19  .       10
      figurelogic       .   .        .    .    .      .      .   .         .   .       . 
      fluency           .   .        .    .    .      36     .   .         31  .       20
      fluid             .   .        .    .    .      10     .   .         .   .       . 
      global            .   .        .    .    .      10     .   .         10  .       . 
      knowledge         .   .        .    .    .      14     .   .         20  .       20
      language          .   .        .    .    .      .      .   .         .   .       10
      memory            .   .        .    .    .      19     .   .         34  .       20
      mental            .   .        .    .    .      .      .   .         .   .       10
      mirrecall         .   .        .    .    .      .      .   .         .   .       . 
      prose             .   .        .    .    .      .      .   .         .   .       . 
      proserecall       .   .        .    .    .      .      .   .         .   .       . 
      raven             .   .        .    .    .      .      .   .         .   .       . 
      reasoning         .   .        .    .    .      10     .   .         18  .       10
      speed             .   .        .    .    .      10     .   .         20  .       10
      symbol            .   .        .    .    .      .      .   .         .   .       . 
      univar            .   .        .    .    .      10     .   .         10  .       . 
      visuospatial      .   .        .    .    .      .      .   .         .   .       . 
      wordlistimmed     .   .        .    .    .      .      .   .         .   .       . 
elsa  block             .   .        .    .    .      .      .   .         .   .       . 
      codingtask        .   .        .    .    .      .      .   .         .   .       . 
      delayedrecall     .   4        .    2    2      .      .   .         .   .       . 
      digitforward      .   .        .    .    .      .      .   .         .   .       . 
      digitsback        .   .        .    .    .      .      .   .         .   .       . 
      executive         .   .        .    .    .      .      .   .         .   .       . 
      figurelogic       .   .        .    .    .      .      .   .         .   .       . 
      fluency           .   .        .    2    .      .      .   .         .   .       . 
      fluid             .   .        .    .    .      .      .   .         .   .       . 
      global            .   .        .    .    .      .      .   .         .   .       . 
      knowledge         .   .        .    .    .      .      .   .         .   .       . 
      language          .   .        .    .    .      .      .   .         .   .       . 
      memory            .   .        .    .    .      .      .   .         .   .       . 
      mental            .   .        .    .    .      .      .   .         .   .       . 
      mirrecall         .   .        .    .    .      .      .   .         .   .       . 
      prose             .   .        .    .    .      .      .   .         .   .       . 
      proserecall       .   .        .    .    .      .      .   .         .   .       . 
      raven             .   .        .    .    .      .      .   .         .   .       . 
      reasoning         .   .        .    .    .      .      .   .         .   .       . 
      speed             .   .        .    .    .      .      .   .         .   .       . 
      symbol            .   .        .    .    .      .      .   .         .   .       . 
      univar            .   .        .    .    .      .      .   .         .   .       . 
      visuospatial      .   .        .    .    .      .      .   .         .   .       . 
      wordlistimmed     .   4        .    2    2      .      .   .         .   .       . 
hrs   block             .   .        .    .    .      .      .   .         .   .       . 
      codingtask        .   .        .    .    .      .      .   .         .   .       . 
      delayedrecall     .   .        .    .    .      .      .   .         .   .       . 
      digitforward      .   .        .    .    .      .      .   .         .   .       . 
      digitsback        .   .        .    .    .      .      .   .         .   .       . 
      executive         .   .        .    .    .      .      .   .         .   .       . 
      figurelogic       .   .        .    .    .      .      .   .         .   .       . 
      fluency           .   .        .    .    .      .      .   .         .   .       . 
      fluid             .   .        .    .    .      .      .   .         .   .       . 
      global            .   .        .    .    .      .      .   .         .   .       . 
      knowledge         .   .        .    .    .      .      .   .         .   .       . 
      language          .   .        .    .    .      .      .   .         .   .       . 
      memory            .   .        .    .    .      12     .   .         12  .       12
      mental            .   .        .    .    .      12     .   .         12  .       12
      mirrecall         .   .        .    .    .      .      .   .         .   .       . 
      prose             .   .        .    .    .      .      .   .         .   .       . 
      proserecall       .   .        .    .    .      .      .   .         .   .       . 
      raven             .   .        .    .    .      .      .   .         .   .       . 
      reasoning         .   .        .    .    .      .      .   .         .   .       . 
      speed             .   .        .    .    .      .      .   .         .   .       . 
      symbol            .   .        .    .    .      .      .   .         .   .       . 
      univar            .   .        .    .    .      .      .   .         .   .       . 
      visuospatial      .   .        .    .    .      .      .   .         .   .       . 
      wordlistimmed     .   .        .    .    2      .      .   2         .   .       . 
ilse  block             .   .        .    .    .      .      .   .         .   .       . 
      codingtask        .   .        .    .    .      .      .   .         .   .       . 
      delayedrecall     .   .        .    .    .      .      .   .         .   .       . 
      digitforward      .   .        .    .    .      .      .   .         .   .       . 
      digitsback        .   .        .    .    .      .      .   .         .   .       . 
      executive         .   .        .    .    .      .      .   .         .   .       . 
      figurelogic       .   .        .    .    .      .      .   .         .   .       . 
      fluency           .   .        .    .    .      2      .   .         .   5       . 
      fluid             .   .        .    .    .      .      .   .         .   .       . 
      global            .   .        .    .    .      .      .   .         .   .       . 
      knowledge         .   .        .    .    .      2      .   .         .   6       . 
      language          .   .        .    .    .      .      .   .         .   .       . 
      memory            .   .        .    .    .      .      .   .         .   .       . 
      mental            .   .        .    .    .      .      .   .         .   .       . 
      mirrecall         .   .        .    .    .      .      .   .         .   .       . 
      prose             .   .        .    .    .      .      .   .         .   .       . 
      proserecall       .   .        .    .    .      .      .   .         .   .       . 
      raven             .   .        .    .    .      .      .   .         .   .       . 
      reasoning         .   .        .    .    .      6      .   .         .   18      . 
      speed             .   .        .    .    .      2      .   .         .   6       . 
      symbol            .   .        .    .    .      .      .   .         .   .       . 
      univar            .   .        .    .    .      .      .   .         .   6       . 
      visuospatial      .   .        .    .    .      .      .   .         .   .       . 
      wordlistimmed     .   .        .    .    .      .      .   .         .   .       . 
lasa  block             .   .        .    .    .      .      .   .         .   .       . 
      codingtask        .   .        .    2    2      .      .   2         .   .       . 
      delayedrecall     .   .        .    .    .      .      .   .         .   .       . 
      digitforward      .   .        .    .    .      .      .   .         .   .       . 
      digitsback        .   .        .    .    .      .      .   .         .   .       . 
      executive         .   .        .    .    .      .      .   .         .   .       . 
      figurelogic       .   .        .    .    .      .      .   .         .   .       . 
      fluency           .   .        .    .    .      .      .   .         .   .       . 
      fluid             .   .        .    .    .      .      .   .         .   .       . 
      global            .   .        .    .    .      .      .   .         .   .       . 
      knowledge         .   .        .    .    .      .      .   .         .   .       . 
      language          .   .        .    .    .      .      .   .         .   .       . 
      memory            .   .        .    .    .      .      .   .         .   .       . 
      mental            .   .        .    .    .      .      .   .         .   .       . 
      mirrecall         .   .        .    .    .      .      .   .         .   .       . 
      prose             .   .        .    .    .      .      .   .         .   .       . 
      proserecall       .   .        .    .    .      .      .   .         .   .       . 
      raven             .   .        .    2    2      .      .   2         .   .       . 
      reasoning         .   .        .    .    .      .      .   .         .   .       . 
      speed             .   .        .    .    .      .      .   .         .   .       . 
      symbol            .   .        .    .    .      .      .   .         .   .       . 
      univar            .   .        .    .    .      .      .   .         .   .       . 
      visuospatial      .   .        .    .    .      .      .   .         .   .       . 
      wordlistimmed     .   .        .    2    2      .      .   2         .   .       . 
nuage block             .   .        .    .    .      .      .   .         .   .       . 
      codingtask        .   .        .    .    .      .      .   .         .   .       . 
      delayedrecall     .   .        .    .    .      .      .   .         .   .       . 
      digitforward      .   .        .    .    .      .      .   .         .   .       . 
      digitsback        .   .        .    .    .      .      .   .         .   .       . 
      executive         .   .        .    .    .      .      .   .         .   .       . 
      figurelogic       .   .        .    .    .      .      .   .         .   .       . 
      fluency           .   .        .    .    .      .      .   .         .   .       . 
      fluid             .   .        .    .    .      .      .   .         .   .       . 
      global            .   .        .    .    .      12     6   .         .   .       . 
      knowledge         .   .        .    .    .      .      .   .         .   .       . 
      language          .   .        .    .    .      .      .   .         .   .       . 
      memory            .   .        .    .    .      .      .   .         .   .       . 
      mental            .   .        .    .    .      .      .   .         .   .       . 
      mirrecall         .   .        .    .    .      .      .   .         .   .       . 
      prose             .   .        .    .    .      .      .   .         .   .       . 
      proserecall       .   .        .    .    .      .      .   .         .   .       . 
      raven             .   .        .    .    .      .      .   .         .   .       . 
      reasoning         .   .        .    .    .      .      .   .         .   .       . 
      speed             .   .        .    .    .      .      .   .         .   .       . 
      symbol            .   .        .    .    .      .      .   .         .   .       . 
      univar            6   .        6    .    .      6      .   .         .   6       6 
      visuospatial      .   .        .    .    .      .      .   .         .   .       . 
      wordlistimmed     .   .        .    .    .      .      .   .         .   .       . 
octo  block             .   .        .    2    8      .      .   2         8   .       . 
      codingtask        .   .        .    .    .      .      .   .         .   .       . 
      delayedrecall     .   .        .    .    .      .      .   .         .   .       . 
      digitforward      .   .        .    2    8      .      .   2         6   .       . 
      digitsback        .   .        .    2    8      .      .   2         6   .       . 
      executive         .   .        .    .    .      .      .   .         .   .       . 
      figurelogic       .   .        .    .    6      .      .   .         6   .       . 
      fluency           .   .        .    .    .      .      .   .         .   .       . 
      fluid             .   .        .    .    .      .      .   .         .   .       . 
      global            .   .        .    .    .      4      .   .         4   .       . 
      knowledge         .   .        .    .    .      8      .   .         8   .       . 
      language          .   .        .    .    .      .      .   .         .   .       . 
      memory            .   .        .    .    .      16     .   .         16  .       . 
      mental            .   .        .    .    .      .      .   .         .   .       . 
      mirrecall         .   .        .    .    6      .      .   .         6   .       . 
      prose             .   .        .    2    2      .      .   2         .   .       . 
      proserecall       .   .        .    .    6      .      .   .         8   .       . 
      raven             .   .        .    .    .      .      .   .         .   .       . 
      reasoning         .   .        .    .    .      8      .   .         8   .       . 
      speed             .   .        .    .    .      8      .   .         8   .       . 
      symbol            .   .        .    2    8      .      .   2         6   .       . 
      univar            .   .        .    .    .      .      .   .         .   .       . 
      visuospatial      .   .        .    .    .      .      .   .         .   .       . 
      wordlistimmed     .   .        .    .    .      .      .   .         .   .       . 
radc  block             .   .        .    .    .      .      .   .         .   .       . 
      codingtask        .   .        .    .    .      .      .   .         .   .       . 
      delayedrecall     .   .        .    .    .      .      .   .         .   .       . 
      digitforward      .   .        .    .    .      .      .   .         .   .       . 
      digitsback        .   .        .    .    .      .      .   .         .   .       . 
      executive         .   .        .    .    .      18     16  .         16  .       . 
      figurelogic       .   .        .    .    .      .      .   .         .   .       . 
      fluency           .   .        .    .    .      7      8   .         8   .       . 
      fluid             .   .        .    .    .      .      .   .         .   .       . 
      global            .   .        .    .    .      .      .   .         .   .       . 
      knowledge         .   .        .    .    .      7      8   .         8   .       . 
      language          .   .        .    .    .      15     16  .         16  .       . 
      memory            .   .        .    .    .      63     61  .         64  .       . 
      mental            .   .        .    .    .      14     16  .         15  .       . 
      mirrecall         .   .        .    .    .      .      .   .         .   .       . 
      prose             .   .        .    .    .      .      .   .         .   .       . 
      proserecall       .   .        .    .    .      .      .   .         .   .       . 
      raven             .   .        .    .    .      .      .   .         .   .       . 
      reasoning         .   .        .    .    .      8      8   .         8   .       . 
      speed             .   .        .    .    .      15     16  .         16  .       . 
      symbol            .   .        .    .    .      .      .   .         .   .       . 
      univar            .   .        .    .    .      .      .   .         .   .       . 
      visuospatial      .   .        .    .    .      2      .   .         2   .       . 
      wordlistimmed     .   .        .    .    .      .      .   .         .   .       . 
satsa block             .   .        .    .    .      .      .   .         .   .       . 
      codingtask        .   .        .    .    .      .      .   .         .   .       . 
      delayedrecall     .   .        .    .    .      .      .   .         .   .       . 
      digitforward      .   .        .    .    .      .      .   .         .   .       . 
      digitsback        .   .        .    .    .      .      .   .         .   .       . 
      executive         .   .        .    .    .      .      .   .         10  .       . 
      figurelogic       .   .        .    .    .      .      .   .         .   .       . 
      fluency           .   .        .    .    .      .      .   .         .   .       . 
      fluid             .   .        .    .    .      .      .   .         .   .       . 
      global            .   .        .    .    .      8      .   .         8   .       . 
      knowledge         .   .        .    .    .      24     .   .         30  .       . 
      language          .   .        .    .    .      .      .   .         .   .       . 
      memory            .   .        .    .    .      4      .   .         24  .       . 
      mental            .   .        .    .    .      .      .   .         2   .       . 
      mirrecall         .   .        .    .    .      .      .   .         .   .       . 
      prose             .   .        .    .    .      .      .   .         .   .       . 
      proserecall       .   .        .    .    .      .      .   .         .   .       . 
      raven             .   .        .    .    .      .      .   .         .   .       . 
      reasoning         .   .        .    .    .      2      .   .         10  .       . 
      speed             .   .        .    .    .      14     .   .         16  .       . 
      symbol            .   .        .    .    .      .      .   .         .   .       . 
      univar            .   .        .    .    .      .      .   .         .   .       . 
      visuospatial      .   .        .    .    .      .      .   .         10  .       . 
      wordlistimmed     .   .        .    .    .      .      .   .         .   .       . 
```


## Cross Measures by Study

### eas
Number of models in the **eas** study with the following combination of physical measures (columns) and cognitive measure (rows) 
```
           
            muscle pulmonary walking
  executive .      19        10     
  fluency   36     31        20     
  fluid     10     .         .      
  global    10     10        .      
  knowledge 14     20        20     
  language  .      .         10     
  memory    19     34        20     
  mental    .      .         10     
  reasoning 10     18        10     
  speed     10     20        10     
  univar    10     10        .      
```

### octo
Number of models in the **octo** study with the following combination of physical measures (columns) and cognitive measure (rows) 
```
              
               gait grip muscle pef pulmonary
  block        2    8    .      2   8        
  digitforward 2    8    .      2   6        
  digitsback   2    8    .      2   6        
  figurelogic  .    6    .      .   6        
  global       .    .    4      .   4        
  knowledge    .    .    8      .   8        
  memory       .    .    16     .   16       
  mirrecall    .    6    .      .   6        
  prose        2    2    .      2   .        
  proserecall  .    6    .      .   8        
  reasoning    .    .    8      .   8        
  speed        .    .    8      .   8        
  symbol       2    8    .      2   6        
```

### lasa
Number of models in the **lasa** study with the following combination of physical measures (columns) and cognitive measure (rows) 
```
               
                gait grip pef
  codingtask    2    2    2  
  raven         2    2    2  
  wordlistimmed 2    2    2  
```

### elsa
Number of models in the **elsa** study with the following combination of physical measures (columns) and cognitive measure (rows) 
```
               
                fev gait grip
  delayedrecall 4   2    2   
  fluency       .   2    .   
  wordlistimmed 4   2    2   
```

### radc
Number of models in the **radc** study with the following combination of physical measures (columns) and cognitive measure (rows) 
```
              
               muscle nophys pulmonary
  executive    18     16     16       
  fluency      7      8      8        
  knowledge    7      8      8        
  language     15     16     16       
  memory       63     61     64       
  mental       14     16     15       
  reasoning    8      8      8        
  speed        15     16     16       
  visuospatial 2      .      2        
```

### satsa
Number of models in the **satsa** study with the following combination of physical measures (columns) and cognitive measure (rows) 
```
              
               muscle pulmonary
  executive    .      10       
  global       8      8        
  knowledge    24     30       
  memory       4      24       
  mental       .      2        
  reasoning    2      10       
  speed        14     16       
  visuospatial .      10       
```

### ilse
Number of models in the **ilse** study with the following combination of physical measures (columns) and cognitive measure (rows) 
```
           
            muscle tug
  fluency   2      5  
  knowledge 2      6  
  reasoning 6      18 
  speed     2      6  
  univar    .      6  
```

### nuage
Number of models in the **nuage** study with the following combination of physical measures (columns) and cognitive measure (rows) 
```
        
         chair flamingo muscle nophys tug walking
  global .     .        12     6      .   .      
  univar 6     6        6      .      6   6      
```

### hrs
Number of models in the **hrs** study with the following combination of physical measures (columns) and cognitive measure (rows) 
```
               
                grip muscle pef pulmonary walking
  memory        .    12     .   12        12     
  mental        .    12     .   12        12     
  wordlistimmed 2    .      2   .         .      
```






# Session Information
For the sake of documentation and reproducibility, the current report was rendered on a system using the following software.


```
Report rendered by koval_000 at 2015-12-15, 15:01 -0800
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
[1] RColorBrewer_1.1-2    scales_0.2.5          tidyr_0.2.0           ggplot2_1.0.1         IalsaSynthesis_0.1.8 
[6] MplusAutomation_0.6-3 dplyr_0.4.1           testit_0.4            knitr_1.10.5         

loaded via a namespace (and not attached):
 [1] Rcpp_0.11.6      formatR_1.2      plyr_1.8.3       tools_3.2.2      boot_1.3-17      digest_0.6.8    
 [7] evaluate_0.7     gtable_0.1.2     lattice_0.20-33  texreg_1.35      DBI_0.3.1        yaml_2.1.13     
[13] parallel_3.2.2   proto_0.3-10     coda_0.17-1      stringr_1.0.0    R6_2.0.1         tcltk_3.2.2     
[19] gsubfn_0.6-6     rmarkdown_0.7    reshape2_1.4.1   magrittr_1.5     htmltools_0.2.6  MASS_7.3-44     
[25] assertthat_0.1   xtable_1.7-4     colorspace_1.2-6 stringi_0.4-1    lazyeval_0.1.10  munsell_0.4.2   
```
