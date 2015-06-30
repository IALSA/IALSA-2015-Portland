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
hrs lasa nshd obas


Presently, the **total number of legally named models** supplied by the participating studies is
**1275**
: they include both *bivariate* and *univariate* models. Strings *"nophys"* and *"nocog"*, imply that the model is univariate (e.i. nocog == The particular cog predictor is "none")

<!-- Frequency counts   -->
Counting valid models in each study:

```

  eas  elsa  habc  ilse   nas nuage  octo  radc satsa 
  484   207    88    91    32    52    88   141    92 
```

```
    
     eas elsa habc ilse nas nuage octo radc satsa
  b1 218 60   48   35   28  6     88   137  92   
  u0 6   60   10   14   2   10    .    .    .    
  u1 129 57   30   42   2   36    .    4    .    
  u2 131 30   .    .    .   .     .    .    .    
```

However, for the present time, we will focus only on 
**1012**
linear models.

```

  eas  elsa  habc  ilse   nas nuage  octo  radc satsa 
  347   117    78    77    30    42    88   141    92 
```

```
    
     eas elsa habc ilse nas nuage octo radc satsa
  b1 218 60   48   35   28  6     88   137  92   
  u1 129 57   30   42   2   36    .    4    .    
```

**LINEAR  MODELS (u1, b1) ONLY BEYOND THIS POINT**

# Physical Domain

## Constructs 

Number of models that use the following **Physical contructs**

```
           
            eas elsa habc ilse nas nuage octo radc satsa
  chair     .   .    .    .    .   6     .    .    .    
  flamingo  .   .    .    .    .   6     .    .    .    
  muscle    119 27   30   41   .   12    44   79   46   
  pulmonary 119 60   .    .    29  .     44   62   46   
  tug       .   .    .    .    .   6     .    .    .    
  Univar    109 30   18   36   1   6     .    .    .    
  walking   .   .    30   .    .   6     .    .    .    
```

## Measures

Number of models that use the following **Physical measures**

```
        
         eas elsa habc ilse nas nuage octo radc satsa
  fev    .   30   .    .    15  .     .    62   46   
  fvc    .   30   .    .    14  .     .    .    .    
  gait   .   .    30   .    .   .     .    .    .    
  grip   119 27   30   41   .   12    44   79   46   
  pek    119 .    .    .    .   .     44   .    .    
  tug    .   .    .    .    .   6     .    .    .    
  univar 109 30   18   36   1   24    .    .    .    
```

## Measures by Constructs

Number of models using this **measure** of the  physical **construct**

```
        
         chair flamingo muscle pulmonary tug Univar walking
  fev    .     .        .      153       .   .      .      
  fvc    .     .        .      44        .   .      .      
  gait   .     .        .      .         .   .      30     
  grip   .     .        398    .         .   .      .      
  pek    .     .        .      163       .   .      .      
  tug    .     .        .      .         6   .      .      
  univar 6     6        .      .         .   200    6      
```

## Measures by Constructs and Studies

Number of models using this **measure** of the  physical **construct**, by study

```
              chair flamingo muscle pulmonary tug Univar walking
                                                                
eas   fev       .        .      .         .   .      .       .  
      fvc       .        .      .         .   .      .       .  
      gait      .        .      .         .   .      .       .  
      grip      .        .      119       .   .      .       .  
      pek       .        .      .         119 .      .       .  
      tug       .        .      .         .   .      .       .  
      univar    .        .      .         .   .      109     .  
elsa  fev       .        .      .         30  .      .       .  
      fvc       .        .      .         30  .      .       .  
      gait      .        .      .         .   .      .       .  
      grip      .        .      27        .   .      .       .  
      pek       .        .      .         .   .      .       .  
      tug       .        .      .         .   .      .       .  
      univar    .        .      .         .   .      30      .  
habc  fev       .        .      .         .   .      .       .  
      fvc       .        .      .         .   .      .       .  
      gait      .        .      .         .   .      .       30 
      grip      .        .      30        .   .      .       .  
      pek       .        .      .         .   .      .       .  
      tug       .        .      .         .   .      .       .  
      univar    .        .      .         .   .      18      .  
ilse  fev       .        .      .         .   .      .       .  
      fvc       .        .      .         .   .      .       .  
      gait      .        .      .         .   .      .       .  
      grip      .        .      41        .   .      .       .  
      pek       .        .      .         .   .      .       .  
      tug       .        .      .         .   .      .       .  
      univar    .        .      .         .   .      36      .  
nas   fev       .        .      .         15  .      .       .  
      fvc       .        .      .         14  .      .       .  
      gait      .        .      .         .   .      .       .  
      grip      .        .      .         .   .      .       .  
      pek       .        .      .         .   .      .       .  
      tug       .        .      .         .   .      .       .  
      univar    .        .      .         .   .      1       .  
nuage fev       .        .      .         .   .      .       .  
      fvc       .        .      .         .   .      .       .  
      gait      .        .      .         .   .      .       .  
      grip      .        .      12        .   .      .       .  
      pek       .        .      .         .   .      .       .  
      tug       .        .      .         .   6      .       .  
      univar    6        6      .         .   .      6       6  
octo  fev       .        .      .         .   .      .       .  
      fvc       .        .      .         .   .      .       .  
      gait      .        .      .         .   .      .       .  
      grip      .        .      44        .   .      .       .  
      pek       .        .      .         44  .      .       .  
      tug       .        .      .         .   .      .       .  
      univar    .        .      .         .   .      .       .  
radc  fev       .        .      .         62  .      .       .  
      fvc       .        .      .         .   .      .       .  
      gait      .        .      .         .   .      .       .  
      grip      .        .      79        .   .      .       .  
      pek       .        .      .         .   .      .       .  
      tug       .        .      .         .   .      .       .  
      univar    .        .      .         .   .      .       .  
satsa fev       .        .      .         46  .      .       .  
      fvc       .        .      .         .   .      .       .  
      gait      .        .      .         .   .      .       .  
      grip      .        .      46        .   .      .       .  
      pek       .        .      .         .   .      .       .  
      tug       .        .      .         .   .      .       .  
      univar    .        .      .         .   .      .       .  
```


# Cognitive Domain

## Constructs 

Number of models that use the following **Cognitive contructs**

```
              
               eas elsa habc ilse nas nuage octo radc satsa
  executive    28  .    .    .    4   .     8    14   .    
  fluency      60  10   .    24   4   .     .    5    .    
  knowledge    60  .    .    6    .   .     16   9    48   
  language     30  .    .    .    .   .     .    14   .    
  memory       59  80   .    .    9   .     24   54   .    
  mental       30  .    44   .    4   12    8    8    16   
  reasoning    30  .    .    29   4   .     16   9    .    
  speed        30  .    22   12   4   .     16   15   28   
  Univar       20  27   12   6    1   30    .    4    .    
  visuospatial .   .    .    .    .   .     .    9    .    
```

## Measures

Number of models that use the following **Cognitive measures**

```
                       
                        eas elsa habc ilse nas nuage octo radc satsa
  3ms                   .   .    22   .    .   12    .    .    .    
  analogies             .   .    .    .    .   .     .    .    16   
  block                 30  .    .    12   .   .     8    .    .    
  bnt                   30  .    .    .    .   .     .    7    .    
  bostonstorydelay      .   .    .    .    .   .     .    7    .    
  bostonstoryimmediate  .   .    .    .    .   .     .    7    .    
  categories            30  10   .    .    4   .     .    5    .    
  clock                 .   .    22   .    .   .     .    .    .    
  complexideas          .   .    .    .    .   .     .    7    .    
  delayedrecall         .   40   .    .    .   .     .    .    .    
  digitordering         .   .    .    .    .   .     .    6    .    
  digitsback            .   .    .    .    4   .     8    8    .    
  digitsforward         .   .    .    .    .   .     8    7    .    
  digitspan             30  .    .    .    .   .     .    .    .    
  figurecopy            .   .    .    .    4   .     .    .    .    
  figureid              .   .    .    .    .   .     .    .    12   
  figurelogic           .   .    .    .    .   .     8    .    .    
  info                  30  .    .    .    .   .     8    .    16   
  lineorientation       .   .    .    .    .   .     .    9    .    
  logicalmemory         29  .    .    .    .   .     .    .    .    
  logicalmemorydelay    .   .    .    .    .   .     .    7    .    
  logicalmemoryimmed    .   .    .    .    .   .     .    5    .    
  lpsspacialability     .   .    .    5    .   .     .    .    .    
  lpsspatialability     .   .    .    6    .   .     .    .    .    
  matrices              .   .    .    .    .   .     .    9    .    
  mirrecall             .   .    .    .    .   .     8    .    .    
  mmse                  30  .    .    .    4   .     8    8    16   
  nart                  .   .    .    .    .   .     .    9    .    
  numbercomparison      .   .    .    .    .   .     .    7    .    
  patterncomparison     .   .    .    .    4   .     .    .    .    
  proserecall           .   .    .    .    .   .     8    .    .    
  psif                  .   .    .    .    .   .     8    .    .    
  symbol                30  .    22   12   .   .     8    8    16   
  synonyms              .   .    .    .    .   .     8    .    16   
  trailsb               28  .    .    .    .   .     .    .    .    
  univar                20  27   12   6    1   30    .    4    .    
  verbalfluency         30  .    .    12   .   .     .    .    .    
  waisgeneralknowledge  .   .    .    11   .   .     .    .    .    
  waisgenerealknowledge .   .    .    1    .   .     .    .    .    
  waispicturecompletion .   .    .    12   .   .     .    .    .    
  waisvocab             30  .    .    .    .   .     .    .    .    
  wordlistdelay         .   .    .    .    5   .     .    7    .    
  wordlistimmed         .   40   .    .    4   .     .    7    .    
  wordlistrecog         .   .    .    .    .   .     .    7    .    
```

## Measures by Constructs

Number of models using this **measure** of the  cognitive **construct**

```
                       
                        executive fluency knowledge language memory mental reasoning speed Univar visuospatial
  3ms                   .         .       .         .        .      34     .         .     .      .           
  analogies             .         .       16        .        .      .      .         .     .      .           
  block                 .         .       .         .        .      .      50        .     .      .           
  bnt                   .         .       .         37       .      .      .         .     .      .           
  bostonstorydelay      .         .       .         .        7      .      .         .     .      .           
  bostonstoryimmediate  .         .       .         .        7      .      .         .     .      .           
  categories            .         49      .         .        .      .      .         .     .      .           
  clock                 .         .       .         .        .      22     .         .     .      .           
  complexideas          .         .       .         7        .      .      .         .     .      .           
  delayedrecall         .         .       .         .        40     .      .         .     .      .           
  digitordering         6         .       .         .        .      .      .         .     .      .           
  digitsback            20        .       .         .        .      .      .         .     .      .           
  digitsforward         .         .       .         .        15     .      .         .     .      .           
  digitspan             .         .       .         .        30     .      .         .     .      .           
  figurecopy            .         .       .         .        .      .      4         .     .      .           
  figureid              .         .       .         .        .      .      .         12    .      .           
  figurelogic           .         .       .         .        .      .      8         .     .      .           
  info                  .         .       54        .        .      .      .         .     .      .           
  lineorientation       .         .       .         .        .      .      .         .     .      9           
  logicalmemory         .         .       .         .        29     .      .         .     .      .           
  logicalmemorydelay    .         .       .         .        7      .      .         .     .      .           
  logicalmemoryimmed    .         .       .         .        5      .      .         .     .      .           
  lpsspacialability     .         .       .         .        .      .      5         .     .      .           
  lpsspatialability     .         6       .         .        .      .      .         .     .      .           
  matrices              .         .       .         .        .      .      9         .     .      .           
  mirrecall             .         .       .         .        8      .      .         .     .      .           
  mmse                  .         .       .         .        .      66     .         .     .      .           
  nart                  .         .       9         .        .      .      .         .     .      .           
  numbercomparison      .         .       .         .        .      .      .         7     .      .           
  patterncomparison     .         .       .         .        .      .      .         4     .      .           
  proserecall           .         .       .         .        8      .      .         .     .      .           
  psif                  .         .       .         .        .      .      .         8     .      .           
  symbol                .         .       .         .        .      .      .         96    .      .           
  synonyms              .         .       24        .        .      .      .         .     .      .           
  trailsb               28        .       .         .        .      .      .         .     .      .           
  univar                .         .       .         .        .      .      .         .     100    .           
  verbalfluency         .         42      .         .        .      .      .         .     .      .           
  waisgeneralknowledge  .         5       6         .        .      .      .         .     .      .           
  waisgenerealknowledge .         1       .         .        .      .      .         .     .      .           
  waispicturecompletion .         .       .         .        .      .      12        .     .      .           
  waisvocab             .         .       30        .        .      .      .         .     .      .           
  wordlistdelay         .         .       .         .        12     .      .         .     .      .           
  wordlistimmed         .         .       .         .        51     .      .         .     .      .           
  wordlistrecog         .         .       .         .        7      .      .         .     .      .           
```

## Measures by Constructs and Studies

Number of models using this **measure** of the  cognitive **construct**, by study

```
                             executive fluency knowledge language memory mental reasoning speed Univar visuospatial
                                                                                                                   
eas   3ms                           .       .         .        .      .      .         .     .      .            . 
      analogies                     .       .         .        .      .      .         .     .      .            . 
      block                         .       .         .        .      .      .         30    .      .            . 
      bnt                           .       .         .        30     .      .         .     .      .            . 
      bostonstorydelay              .       .         .        .      .      .         .     .      .            . 
      bostonstoryimmediate          .       .         .        .      .      .         .     .      .            . 
      categories                    .       30        .        .      .      .         .     .      .            . 
      clock                         .       .         .        .      .      .         .     .      .            . 
      complexideas                  .       .         .        .      .      .         .     .      .            . 
      delayedrecall                 .       .         .        .      .      .         .     .      .            . 
      digitordering                 .       .         .        .      .      .         .     .      .            . 
      digitsback                    .       .         .        .      .      .         .     .      .            . 
      digitsforward                 .       .         .        .      .      .         .     .      .            . 
      digitspan                     .       .         .        .      30     .         .     .      .            . 
      figurecopy                    .       .         .        .      .      .         .     .      .            . 
      figureid                      .       .         .        .      .      .         .     .      .            . 
      figurelogic                   .       .         .        .      .      .         .     .      .            . 
      info                          .       .         30       .      .      .         .     .      .            . 
      lineorientation               .       .         .        .      .      .         .     .      .            . 
      logicalmemory                 .       .         .        .      29     .         .     .      .            . 
      logicalmemorydelay            .       .         .        .      .      .         .     .      .            . 
      logicalmemoryimmed            .       .         .        .      .      .         .     .      .            . 
      lpsspacialability             .       .         .        .      .      .         .     .      .            . 
      lpsspatialability             .       .         .        .      .      .         .     .      .            . 
      matrices                      .       .         .        .      .      .         .     .      .            . 
      mirrecall                     .       .         .        .      .      .         .     .      .            . 
      mmse                          .       .         .        .      .      30        .     .      .            . 
      nart                          .       .         .        .      .      .         .     .      .            . 
      numbercomparison              .       .         .        .      .      .         .     .      .            . 
      patterncomparison             .       .         .        .      .      .         .     .      .            . 
      proserecall                   .       .         .        .      .      .         .     .      .            . 
      psif                          .       .         .        .      .      .         .     .      .            . 
      symbol                        .       .         .        .      .      .         .     30     .            . 
      synonyms                      .       .         .        .      .      .         .     .      .            . 
      trailsb                       28      .         .        .      .      .         .     .      .            . 
      univar                        .       .         .        .      .      .         .     .      20           . 
      verbalfluency                 .       30        .        .      .      .         .     .      .            . 
      waisgeneralknowledge          .       .         .        .      .      .         .     .      .            . 
      waisgenerealknowledge         .       .         .        .      .      .         .     .      .            . 
      waispicturecompletion         .       .         .        .      .      .         .     .      .            . 
      waisvocab                     .       .         30       .      .      .         .     .      .            . 
      wordlistdelay                 .       .         .        .      .      .         .     .      .            . 
      wordlistimmed                 .       .         .        .      .      .         .     .      .            . 
      wordlistrecog                 .       .         .        .      .      .         .     .      .            . 
elsa  3ms                           .       .         .        .      .      .         .     .      .            . 
      analogies                     .       .         .        .      .      .         .     .      .            . 
      block                         .       .         .        .      .      .         .     .      .            . 
      bnt                           .       .         .        .      .      .         .     .      .            . 
      bostonstorydelay              .       .         .        .      .      .         .     .      .            . 
      bostonstoryimmediate          .       .         .        .      .      .         .     .      .            . 
      categories                    .       10        .        .      .      .         .     .      .            . 
      clock                         .       .         .        .      .      .         .     .      .            . 
      complexideas                  .       .         .        .      .      .         .     .      .            . 
      delayedrecall                 .       .         .        .      40     .         .     .      .            . 
      digitordering                 .       .         .        .      .      .         .     .      .            . 
      digitsback                    .       .         .        .      .      .         .     .      .            . 
      digitsforward                 .       .         .        .      .      .         .     .      .            . 
      digitspan                     .       .         .        .      .      .         .     .      .            . 
      figurecopy                    .       .         .        .      .      .         .     .      .            . 
      figureid                      .       .         .        .      .      .         .     .      .            . 
      figurelogic                   .       .         .        .      .      .         .     .      .            . 
      info                          .       .         .        .      .      .         .     .      .            . 
      lineorientation               .       .         .        .      .      .         .     .      .            . 
      logicalmemory                 .       .         .        .      .      .         .     .      .            . 
      logicalmemorydelay            .       .         .        .      .      .         .     .      .            . 
      logicalmemoryimmed            .       .         .        .      .      .         .     .      .            . 
      lpsspacialability             .       .         .        .      .      .         .     .      .            . 
      lpsspatialability             .       .         .        .      .      .         .     .      .            . 
      matrices                      .       .         .        .      .      .         .     .      .            . 
      mirrecall                     .       .         .        .      .      .         .     .      .            . 
      mmse                          .       .         .        .      .      .         .     .      .            . 
      nart                          .       .         .        .      .      .         .     .      .            . 
      numbercomparison              .       .         .        .      .      .         .     .      .            . 
      patterncomparison             .       .         .        .      .      .         .     .      .            . 
      proserecall                   .       .         .        .      .      .         .     .      .            . 
      psif                          .       .         .        .      .      .         .     .      .            . 
      symbol                        .       .         .        .      .      .         .     .      .            . 
      synonyms                      .       .         .        .      .      .         .     .      .            . 
      trailsb                       .       .         .        .      .      .         .     .      .            . 
      univar                        .       .         .        .      .      .         .     .      27           . 
      verbalfluency                 .       .         .        .      .      .         .     .      .            . 
      waisgeneralknowledge          .       .         .        .      .      .         .     .      .            . 
      waisgenerealknowledge         .       .         .        .      .      .         .     .      .            . 
      waispicturecompletion         .       .         .        .      .      .         .     .      .            . 
      waisvocab                     .       .         .        .      .      .         .     .      .            . 
      wordlistdelay                 .       .         .        .      .      .         .     .      .            . 
      wordlistimmed                 .       .         .        .      40     .         .     .      .            . 
      wordlistrecog                 .       .         .        .      .      .         .     .      .            . 
habc  3ms                           .       .         .        .      .      22        .     .      .            . 
      analogies                     .       .         .        .      .      .         .     .      .            . 
      block                         .       .         .        .      .      .         .     .      .            . 
      bnt                           .       .         .        .      .      .         .     .      .            . 
      bostonstorydelay              .       .         .        .      .      .         .     .      .            . 
      bostonstoryimmediate          .       .         .        .      .      .         .     .      .            . 
      categories                    .       .         .        .      .      .         .     .      .            . 
      clock                         .       .         .        .      .      22        .     .      .            . 
      complexideas                  .       .         .        .      .      .         .     .      .            . 
      delayedrecall                 .       .         .        .      .      .         .     .      .            . 
      digitordering                 .       .         .        .      .      .         .     .      .            . 
      digitsback                    .       .         .        .      .      .         .     .      .            . 
      digitsforward                 .       .         .        .      .      .         .     .      .            . 
      digitspan                     .       .         .        .      .      .         .     .      .            . 
      figurecopy                    .       .         .        .      .      .         .     .      .            . 
      figureid                      .       .         .        .      .      .         .     .      .            . 
      figurelogic                   .       .         .        .      .      .         .     .      .            . 
      info                          .       .         .        .      .      .         .     .      .            . 
      lineorientation               .       .         .        .      .      .         .     .      .            . 
      logicalmemory                 .       .         .        .      .      .         .     .      .            . 
      logicalmemorydelay            .       .         .        .      .      .         .     .      .            . 
      logicalmemoryimmed            .       .         .        .      .      .         .     .      .            . 
      lpsspacialability             .       .         .        .      .      .         .     .      .            . 
      lpsspatialability             .       .         .        .      .      .         .     .      .            . 
      matrices                      .       .         .        .      .      .         .     .      .            . 
      mirrecall                     .       .         .        .      .      .         .     .      .            . 
      mmse                          .       .         .        .      .      .         .     .      .            . 
      nart                          .       .         .        .      .      .         .     .      .            . 
      numbercomparison              .       .         .        .      .      .         .     .      .            . 
      patterncomparison             .       .         .        .      .      .         .     .      .            . 
      proserecall                   .       .         .        .      .      .         .     .      .            . 
      psif                          .       .         .        .      .      .         .     .      .            . 
      symbol                        .       .         .        .      .      .         .     22     .            . 
      synonyms                      .       .         .        .      .      .         .     .      .            . 
      trailsb                       .       .         .        .      .      .         .     .      .            . 
      univar                        .       .         .        .      .      .         .     .      12           . 
      verbalfluency                 .       .         .        .      .      .         .     .      .            . 
      waisgeneralknowledge          .       .         .        .      .      .         .     .      .            . 
      waisgenerealknowledge         .       .         .        .      .      .         .     .      .            . 
      waispicturecompletion         .       .         .        .      .      .         .     .      .            . 
      waisvocab                     .       .         .        .      .      .         .     .      .            . 
      wordlistdelay                 .       .         .        .      .      .         .     .      .            . 
      wordlistimmed                 .       .         .        .      .      .         .     .      .            . 
      wordlistrecog                 .       .         .        .      .      .         .     .      .            . 
ilse  3ms                           .       .         .        .      .      .         .     .      .            . 
      analogies                     .       .         .        .      .      .         .     .      .            . 
      block                         .       .         .        .      .      .         12    .      .            . 
      bnt                           .       .         .        .      .      .         .     .      .            . 
      bostonstorydelay              .       .         .        .      .      .         .     .      .            . 
      bostonstoryimmediate          .       .         .        .      .      .         .     .      .            . 
      categories                    .       .         .        .      .      .         .     .      .            . 
      clock                         .       .         .        .      .      .         .     .      .            . 
      complexideas                  .       .         .        .      .      .         .     .      .            . 
      delayedrecall                 .       .         .        .      .      .         .     .      .            . 
      digitordering                 .       .         .        .      .      .         .     .      .            . 
      digitsback                    .       .         .        .      .      .         .     .      .            . 
      digitsforward                 .       .         .        .      .      .         .     .      .            . 
      digitspan                     .       .         .        .      .      .         .     .      .            . 
      figurecopy                    .       .         .        .      .      .         .     .      .            . 
      figureid                      .       .         .        .      .      .         .     .      .            . 
      figurelogic                   .       .         .        .      .      .         .     .      .            . 
      info                          .       .         .        .      .      .         .     .      .            . 
      lineorientation               .       .         .        .      .      .         .     .      .            . 
      logicalmemory                 .       .         .        .      .      .         .     .      .            . 
      logicalmemorydelay            .       .         .        .      .      .         .     .      .            . 
      logicalmemoryimmed            .       .         .        .      .      .         .     .      .            . 
      lpsspacialability             .       .         .        .      .      .         5     .      .            . 
      lpsspatialability             .       6         .        .      .      .         .     .      .            . 
      matrices                      .       .         .        .      .      .         .     .      .            . 
      mirrecall                     .       .         .        .      .      .         .     .      .            . 
      mmse                          .       .         .        .      .      .         .     .      .            . 
      nart                          .       .         .        .      .      .         .     .      .            . 
      numbercomparison              .       .         .        .      .      .         .     .      .            . 
      patterncomparison             .       .         .        .      .      .         .     .      .            . 
      proserecall                   .       .         .        .      .      .         .     .      .            . 
      psif                          .       .         .        .      .      .         .     .      .            . 
      symbol                        .       .         .        .      .      .         .     12     .            . 
      synonyms                      .       .         .        .      .      .         .     .      .            . 
      trailsb                       .       .         .        .      .      .         .     .      .            . 
      univar                        .       .         .        .      .      .         .     .      6            . 
      verbalfluency                 .       12        .        .      .      .         .     .      .            . 
      waisgeneralknowledge          .       5         6        .      .      .         .     .      .            . 
      waisgenerealknowledge         .       1         .        .      .      .         .     .      .            . 
      waispicturecompletion         .       .         .        .      .      .         12    .      .            . 
      waisvocab                     .       .         .        .      .      .         .     .      .            . 
      wordlistdelay                 .       .         .        .      .      .         .     .      .            . 
      wordlistimmed                 .       .         .        .      .      .         .     .      .            . 
      wordlistrecog                 .       .         .        .      .      .         .     .      .            . 
nas   3ms                           .       .         .        .      .      .         .     .      .            . 
      analogies                     .       .         .        .      .      .         .     .      .            . 
      block                         .       .         .        .      .      .         .     .      .            . 
      bnt                           .       .         .        .      .      .         .     .      .            . 
      bostonstorydelay              .       .         .        .      .      .         .     .      .            . 
      bostonstoryimmediate          .       .         .        .      .      .         .     .      .            . 
      categories                    .       4         .        .      .      .         .     .      .            . 
      clock                         .       .         .        .      .      .         .     .      .            . 
      complexideas                  .       .         .        .      .      .         .     .      .            . 
      delayedrecall                 .       .         .        .      .      .         .     .      .            . 
      digitordering                 .       .         .        .      .      .         .     .      .            . 
      digitsback                    4       .         .        .      .      .         .     .      .            . 
      digitsforward                 .       .         .        .      .      .         .     .      .            . 
      digitspan                     .       .         .        .      .      .         .     .      .            . 
      figurecopy                    .       .         .        .      .      .         4     .      .            . 
      figureid                      .       .         .        .      .      .         .     .      .            . 
      figurelogic                   .       .         .        .      .      .         .     .      .            . 
      info                          .       .         .        .      .      .         .     .      .            . 
      lineorientation               .       .         .        .      .      .         .     .      .            . 
      logicalmemory                 .       .         .        .      .      .         .     .      .            . 
      logicalmemorydelay            .       .         .        .      .      .         .     .      .            . 
      logicalmemoryimmed            .       .         .        .      .      .         .     .      .            . 
      lpsspacialability             .       .         .        .      .      .         .     .      .            . 
      lpsspatialability             .       .         .        .      .      .         .     .      .            . 
      matrices                      .       .         .        .      .      .         .     .      .            . 
      mirrecall                     .       .         .        .      .      .         .     .      .            . 
      mmse                          .       .         .        .      .      4         .     .      .            . 
      nart                          .       .         .        .      .      .         .     .      .            . 
      numbercomparison              .       .         .        .      .      .         .     .      .            . 
      patterncomparison             .       .         .        .      .      .         .     4      .            . 
      proserecall                   .       .         .        .      .      .         .     .      .            . 
      psif                          .       .         .        .      .      .         .     .      .            . 
      symbol                        .       .         .        .      .      .         .     .      .            . 
      synonyms                      .       .         .        .      .      .         .     .      .            . 
      trailsb                       .       .         .        .      .      .         .     .      .            . 
      univar                        .       .         .        .      .      .         .     .      1            . 
      verbalfluency                 .       .         .        .      .      .         .     .      .            . 
      waisgeneralknowledge          .       .         .        .      .      .         .     .      .            . 
      waisgenerealknowledge         .       .         .        .      .      .         .     .      .            . 
      waispicturecompletion         .       .         .        .      .      .         .     .      .            . 
      waisvocab                     .       .         .        .      .      .         .     .      .            . 
      wordlistdelay                 .       .         .        .      5      .         .     .      .            . 
      wordlistimmed                 .       .         .        .      4      .         .     .      .            . 
      wordlistrecog                 .       .         .        .      .      .         .     .      .            . 
nuage 3ms                           .       .         .        .      .      12        .     .      .            . 
      analogies                     .       .         .        .      .      .         .     .      .            . 
      block                         .       .         .        .      .      .         .     .      .            . 
      bnt                           .       .         .        .      .      .         .     .      .            . 
      bostonstorydelay              .       .         .        .      .      .         .     .      .            . 
      bostonstoryimmediate          .       .         .        .      .      .         .     .      .            . 
      categories                    .       .         .        .      .      .         .     .      .            . 
      clock                         .       .         .        .      .      .         .     .      .            . 
      complexideas                  .       .         .        .      .      .         .     .      .            . 
      delayedrecall                 .       .         .        .      .      .         .     .      .            . 
      digitordering                 .       .         .        .      .      .         .     .      .            . 
      digitsback                    .       .         .        .      .      .         .     .      .            . 
      digitsforward                 .       .         .        .      .      .         .     .      .            . 
      digitspan                     .       .         .        .      .      .         .     .      .            . 
      figurecopy                    .       .         .        .      .      .         .     .      .            . 
      figureid                      .       .         .        .      .      .         .     .      .            . 
      figurelogic                   .       .         .        .      .      .         .     .      .            . 
      info                          .       .         .        .      .      .         .     .      .            . 
      lineorientation               .       .         .        .      .      .         .     .      .            . 
      logicalmemory                 .       .         .        .      .      .         .     .      .            . 
      logicalmemorydelay            .       .         .        .      .      .         .     .      .            . 
      logicalmemoryimmed            .       .         .        .      .      .         .     .      .            . 
      lpsspacialability             .       .         .        .      .      .         .     .      .            . 
      lpsspatialability             .       .         .        .      .      .         .     .      .            . 
      matrices                      .       .         .        .      .      .         .     .      .            . 
      mirrecall                     .       .         .        .      .      .         .     .      .            . 
      mmse                          .       .         .        .      .      .         .     .      .            . 
      nart                          .       .         .        .      .      .         .     .      .            . 
      numbercomparison              .       .         .        .      .      .         .     .      .            . 
      patterncomparison             .       .         .        .      .      .         .     .      .            . 
      proserecall                   .       .         .        .      .      .         .     .      .            . 
      psif                          .       .         .        .      .      .         .     .      .            . 
      symbol                        .       .         .        .      .      .         .     .      .            . 
      synonyms                      .       .         .        .      .      .         .     .      .            . 
      trailsb                       .       .         .        .      .      .         .     .      .            . 
      univar                        .       .         .        .      .      .         .     .      30           . 
      verbalfluency                 .       .         .        .      .      .         .     .      .            . 
      waisgeneralknowledge          .       .         .        .      .      .         .     .      .            . 
      waisgenerealknowledge         .       .         .        .      .      .         .     .      .            . 
      waispicturecompletion         .       .         .        .      .      .         .     .      .            . 
      waisvocab                     .       .         .        .      .      .         .     .      .            . 
      wordlistdelay                 .       .         .        .      .      .         .     .      .            . 
      wordlistimmed                 .       .         .        .      .      .         .     .      .            . 
      wordlistrecog                 .       .         .        .      .      .         .     .      .            . 
octo  3ms                           .       .         .        .      .      .         .     .      .            . 
      analogies                     .       .         .        .      .      .         .     .      .            . 
      block                         .       .         .        .      .      .         8     .      .            . 
      bnt                           .       .         .        .      .      .         .     .      .            . 
      bostonstorydelay              .       .         .        .      .      .         .     .      .            . 
      bostonstoryimmediate          .       .         .        .      .      .         .     .      .            . 
      categories                    .       .         .        .      .      .         .     .      .            . 
      clock                         .       .         .        .      .      .         .     .      .            . 
      complexideas                  .       .         .        .      .      .         .     .      .            . 
      delayedrecall                 .       .         .        .      .      .         .     .      .            . 
      digitordering                 .       .         .        .      .      .         .     .      .            . 
      digitsback                    8       .         .        .      .      .         .     .      .            . 
      digitsforward                 .       .         .        .      8      .         .     .      .            . 
      digitspan                     .       .         .        .      .      .         .     .      .            . 
      figurecopy                    .       .         .        .      .      .         .     .      .            . 
      figureid                      .       .         .        .      .      .         .     .      .            . 
      figurelogic                   .       .         .        .      .      .         8     .      .            . 
      info                          .       .         8        .      .      .         .     .      .            . 
      lineorientation               .       .         .        .      .      .         .     .      .            . 
      logicalmemory                 .       .         .        .      .      .         .     .      .            . 
      logicalmemorydelay            .       .         .        .      .      .         .     .      .            . 
      logicalmemoryimmed            .       .         .        .      .      .         .     .      .            . 
      lpsspacialability             .       .         .        .      .      .         .     .      .            . 
      lpsspatialability             .       .         .        .      .      .         .     .      .            . 
      matrices                      .       .         .        .      .      .         .     .      .            . 
      mirrecall                     .       .         .        .      8      .         .     .      .            . 
      mmse                          .       .         .        .      .      8         .     .      .            . 
      nart                          .       .         .        .      .      .         .     .      .            . 
      numbercomparison              .       .         .        .      .      .         .     .      .            . 
      patterncomparison             .       .         .        .      .      .         .     .      .            . 
      proserecall                   .       .         .        .      8      .         .     .      .            . 
      psif                          .       .         .        .      .      .         .     8      .            . 
      symbol                        .       .         .        .      .      .         .     8      .            . 
      synonyms                      .       .         8        .      .      .         .     .      .            . 
      trailsb                       .       .         .        .      .      .         .     .      .            . 
      univar                        .       .         .        .      .      .         .     .      .            . 
      verbalfluency                 .       .         .        .      .      .         .     .      .            . 
      waisgeneralknowledge          .       .         .        .      .      .         .     .      .            . 
      waisgenerealknowledge         .       .         .        .      .      .         .     .      .            . 
      waispicturecompletion         .       .         .        .      .      .         .     .      .            . 
      waisvocab                     .       .         .        .      .      .         .     .      .            . 
      wordlistdelay                 .       .         .        .      .      .         .     .      .            . 
      wordlistimmed                 .       .         .        .      .      .         .     .      .            . 
      wordlistrecog                 .       .         .        .      .      .         .     .      .            . 
radc  3ms                           .       .         .        .      .      .         .     .      .            . 
      analogies                     .       .         .        .      .      .         .     .      .            . 
      block                         .       .         .        .      .      .         .     .      .            . 
      bnt                           .       .         .        7      .      .         .     .      .            . 
      bostonstorydelay              .       .         .        .      7      .         .     .      .            . 
      bostonstoryimmediate          .       .         .        .      7      .         .     .      .            . 
      categories                    .       5         .        .      .      .         .     .      .            . 
      clock                         .       .         .        .      .      .         .     .      .            . 
      complexideas                  .       .         .        7      .      .         .     .      .            . 
      delayedrecall                 .       .         .        .      .      .         .     .      .            . 
      digitordering                 6       .         .        .      .      .         .     .      .            . 
      digitsback                    8       .         .        .      .      .         .     .      .            . 
      digitsforward                 .       .         .        .      7      .         .     .      .            . 
      digitspan                     .       .         .        .      .      .         .     .      .            . 
      figurecopy                    .       .         .        .      .      .         .     .      .            . 
      figureid                      .       .         .        .      .      .         .     .      .            . 
      figurelogic                   .       .         .        .      .      .         .     .      .            . 
      info                          .       .         .        .      .      .         .     .      .            . 
      lineorientation               .       .         .        .      .      .         .     .      .            9 
      logicalmemory                 .       .         .        .      .      .         .     .      .            . 
      logicalmemorydelay            .       .         .        .      7      .         .     .      .            . 
      logicalmemoryimmed            .       .         .        .      5      .         .     .      .            . 
      lpsspacialability             .       .         .        .      .      .         .     .      .            . 
      lpsspatialability             .       .         .        .      .      .         .     .      .            . 
      matrices                      .       .         .        .      .      .         9     .      .            . 
      mirrecall                     .       .         .        .      .      .         .     .      .            . 
      mmse                          .       .         .        .      .      8         .     .      .            . 
      nart                          .       .         9        .      .      .         .     .      .            . 
      numbercomparison              .       .         .        .      .      .         .     7      .            . 
      patterncomparison             .       .         .        .      .      .         .     .      .            . 
      proserecall                   .       .         .        .      .      .         .     .      .            . 
      psif                          .       .         .        .      .      .         .     .      .            . 
      symbol                        .       .         .        .      .      .         .     8      .            . 
      synonyms                      .       .         .        .      .      .         .     .      .            . 
      trailsb                       .       .         .        .      .      .         .     .      .            . 
      univar                        .       .         .        .      .      .         .     .      4            . 
      verbalfluency                 .       .         .        .      .      .         .     .      .            . 
      waisgeneralknowledge          .       .         .        .      .      .         .     .      .            . 
      waisgenerealknowledge         .       .         .        .      .      .         .     .      .            . 
      waispicturecompletion         .       .         .        .      .      .         .     .      .            . 
      waisvocab                     .       .         .        .      .      .         .     .      .            . 
      wordlistdelay                 .       .         .        .      7      .         .     .      .            . 
      wordlistimmed                 .       .         .        .      7      .         .     .      .            . 
      wordlistrecog                 .       .         .        .      7      .         .     .      .            . 
satsa 3ms                           .       .         .        .      .      .         .     .      .            . 
      analogies                     .       .         16       .      .      .         .     .      .            . 
      block                         .       .         .        .      .      .         .     .      .            . 
      bnt                           .       .         .        .      .      .         .     .      .            . 
      bostonstorydelay              .       .         .        .      .      .         .     .      .            . 
      bostonstoryimmediate          .       .         .        .      .      .         .     .      .            . 
      categories                    .       .         .        .      .      .         .     .      .            . 
      clock                         .       .         .        .      .      .         .     .      .            . 
      complexideas                  .       .         .        .      .      .         .     .      .            . 
      delayedrecall                 .       .         .        .      .      .         .     .      .            . 
      digitordering                 .       .         .        .      .      .         .     .      .            . 
      digitsback                    .       .         .        .      .      .         .     .      .            . 
      digitsforward                 .       .         .        .      .      .         .     .      .            . 
      digitspan                     .       .         .        .      .      .         .     .      .            . 
      figurecopy                    .       .         .        .      .      .         .     .      .            . 
      figureid                      .       .         .        .      .      .         .     12     .            . 
      figurelogic                   .       .         .        .      .      .         .     .      .            . 
      info                          .       .         16       .      .      .         .     .      .            . 
      lineorientation               .       .         .        .      .      .         .     .      .            . 
      logicalmemory                 .       .         .        .      .      .         .     .      .            . 
      logicalmemorydelay            .       .         .        .      .      .         .     .      .            . 
      logicalmemoryimmed            .       .         .        .      .      .         .     .      .            . 
      lpsspacialability             .       .         .        .      .      .         .     .      .            . 
      lpsspatialability             .       .         .        .      .      .         .     .      .            . 
      matrices                      .       .         .        .      .      .         .     .      .            . 
      mirrecall                     .       .         .        .      .      .         .     .      .            . 
      mmse                          .       .         .        .      .      16        .     .      .            . 
      nart                          .       .         .        .      .      .         .     .      .            . 
      numbercomparison              .       .         .        .      .      .         .     .      .            . 
      patterncomparison             .       .         .        .      .      .         .     .      .            . 
      proserecall                   .       .         .        .      .      .         .     .      .            . 
      psif                          .       .         .        .      .      .         .     .      .            . 
      symbol                        .       .         .        .      .      .         .     16     .            . 
      synonyms                      .       .         16       .      .      .         .     .      .            . 
      trailsb                       .       .         .        .      .      .         .     .      .            . 
      univar                        .       .         .        .      .      .         .     .      .            . 
      verbalfluency                 .       .         .        .      .      .         .     .      .            . 
      waisgeneralknowledge          .       .         .        .      .      .         .     .      .            . 
      waisgenerealknowledge         .       .         .        .      .      .         .     .      .            . 
      waispicturecompletion         .       .         .        .      .      .         .     .      .            . 
      waisvocab                     .       .         .        .      .      .         .     .      .            . 
      wordlistdelay                 .       .         .        .      .      .         .     .      .            . 
      wordlistimmed                 .       .         .        .      .      .         .     .      .            . 
      wordlistrecog                 .       .         .        .      .      .         .     .      .            . 
```







# Bivariate models

## Cross Constructs

Number of models that uses this **physical construct** (column) and  **cognitive construct** (row):

```
              
               chair flamingo muscle pulmonary tug Univar walking
  executive    .     .        21     24        .   9      .      
  fluency      .     .        31     24        .   48     .      
  knowledge    .     .        63     56        .   20     .      
  language     .     .        18     16        .   10     .      
  memory       .     .        81     104       .   41     .      
  mental       .     .        48     30        .   28     16     
  reasoning    .     .        40     26        .   22     .      
  speed        .     .        54     43        .   22     8      
  Univar       6     6        37     33        6   .      12     
  visuospatial .     .        5      4         .   .      .      
```
It is important to remember that these numbers reflect only the combinations of **constructs**, the  **operationalizations** of these construct (specifc outcomes) that may differ from model to model. 

## Cross Measures

Number of models that uses this **physical measure** (column) and  **cognitive measure** (row):

```
                       
                        fev fvc gait grip pek tug univar
  3ms                   .   .   8    14   .   .   12    
  analogies             8   .   .    8    .   .   .     
  block                 .   .   .    20   14  .   16    
  bnt                   3   .   .    14   10  .   10    
  bostonstorydelay      3   .   .    4    .   .   .     
  bostonstoryimmediate  3   .   .    4    .   .   .     
  categories            2   2   .    15   10  .   20    
  clock                 .   .   8    8    .   .   6     
  complexideas          3   .   .    4    .   .   .     
  delayedrecall         10  10  .    10   .   .   10    
  digitordering         3   .   .    3    .   .   .     
  digitsback            6   2   .    8    4   .   .     
  digitsforward         3   .   .    8    4   .   .     
  digitspan             .   .   .    10   10  .   10    
  figurecopy            2   2   .    .    .   .   .     
  figureid              6   .   .    6    .   .   .     
  figurelogic           .   .   .    4    4   .   .     
  info                  8   .   .    22   14  .   10    
  lineorientation       4   .   .    5    .   .   .     
  logicalmemory         .   .   .    9    10  .   10    
  logicalmemorydelay    3   .   .    4    .   .   .     
  logicalmemoryimmed    3   .   .    2    .   .   .     
  lpsspacialability     .   .   .    5    .   .   .     
  lpsspatialability     .   .   .    .    .   .   6     
  matrices              4   .   .    5    .   .   .     
  mirrecall             .   .   .    4    4   .   .     
  mmse                  14  2   .    26   14  .   10    
  nart                  4   .   .    5    .   .   .     
  numbercomparison      3   .   .    4    .   .   .     
  patterncomparison     2   2   .    .    .   .   .     
  proserecall           .   .   .    4    4   .   .     
  psif                  .   .   .    4    4   .   .     
  symbol                12  .   8    40   14  .   22    
  synonyms              8   .   .    12   4   .   .     
  trailsb               .   .   .    10   9   .   9     
  univar                13  10  6    37   10  6   18    
  verbalfluency         .   .   .    16   10  .   16    
  waisgeneralknowledge  .   .   .    6    .   .   5     
  waisgenerealknowledge .   .   .    .    .   .   1     
  waispicturecompletion .   .   .    6    .   .   6     
  waisvocab             .   .   .    10   10  .   10    
  wordlistdelay         5   2   .    4    .   .   1     
  wordlistimmed         15  12  .    14   .   .   10    
  wordlistrecog         3   .   .    4    .   .   .     
```

## Cross Measures (fill)


```
                             fev fvc gait grip pek tug univar
                                                             
eas   3ms                     .   .    .    .   .   .      . 
      analogies               .   .    .    .   .   .      . 
      block                   .   .    .    10  10  .      10
      bnt                     .   .    .    10  10  .      10
      bostonstorydelay        .   .    .    .   .   .      . 
      bostonstoryimmediate    .   .    .    .   .   .      . 
      categories              .   .    .    10  10  .      10
      clock                   .   .    .    .   .   .      . 
      complexideas            .   .    .    .   .   .      . 
      delayedrecall           .   .    .    .   .   .      . 
      digitordering           .   .    .    .   .   .      . 
      digitsback              .   .    .    .   .   .      . 
      digitsforward           .   .    .    .   .   .      . 
      digitspan               .   .    .    10  10  .      10
      figurecopy              .   .    .    .   .   .      . 
      figureid                .   .    .    .   .   .      . 
      figurelogic             .   .    .    .   .   .      . 
      info                    .   .    .    10  10  .      10
      lineorientation         .   .    .    .   .   .      . 
      logicalmemory           .   .    .    9   10  .      10
      logicalmemorydelay      .   .    .    .   .   .      . 
      logicalmemoryimmed      .   .    .    .   .   .      . 
      lpsspacialability       .   .    .    .   .   .      . 
      lpsspatialability       .   .    .    .   .   .      . 
      matrices                .   .    .    .   .   .      . 
      mirrecall               .   .    .    .   .   .      . 
      mmse                    .   .    .    10  10  .      10
      nart                    .   .    .    .   .   .      . 
      numbercomparison        .   .    .    .   .   .      . 
      patterncomparison       .   .    .    .   .   .      . 
      proserecall             .   .    .    .   .   .      . 
      psif                    .   .    .    .   .   .      . 
      symbol                  .   .    .    10  10  .      10
      synonyms                .   .    .    .   .   .      . 
      trailsb                 .   .    .    10  9   .      9 
      univar                  .   .    .    10  10  .      . 
      verbalfluency           .   .    .    10  10  .      10
      waisgeneralknowledge    .   .    .    .   .   .      . 
      waisgenerealknowledge   .   .    .    .   .   .      . 
      waispicturecompletion   .   .    .    .   .   .      . 
      waisvocab               .   .    .    10  10  .      10
      wordlistdelay           .   .    .    .   .   .      . 
      wordlistimmed           .   .    .    .   .   .      . 
      wordlistrecog           .   .    .    .   .   .      . 
elsa  3ms                     .   .    .    .   .   .      . 
      analogies               .   .    .    .   .   .      . 
      block                   .   .    .    .   .   .      . 
      bnt                     .   .    .    .   .   .      . 
      bostonstorydelay        .   .    .    .   .   .      . 
      bostonstoryimmediate    .   .    .    .   .   .      . 
      categories              .   .    .    .   .   .      10
      clock                   .   .    .    .   .   .      . 
      complexideas            .   .    .    .   .   .      . 
      delayedrecall           10  10   .    10  .   .      10
      digitordering           .   .    .    .   .   .      . 
      digitsback              .   .    .    .   .   .      . 
      digitsforward           .   .    .    .   .   .      . 
      digitspan               .   .    .    .   .   .      . 
      figurecopy              .   .    .    .   .   .      . 
      figureid                .   .    .    .   .   .      . 
      figurelogic             .   .    .    .   .   .      . 
      info                    .   .    .    .   .   .      . 
      lineorientation         .   .    .    .   .   .      . 
      logicalmemory           .   .    .    .   .   .      . 
      logicalmemorydelay      .   .    .    .   .   .      . 
      logicalmemoryimmed      .   .    .    .   .   .      . 
      lpsspacialability       .   .    .    .   .   .      . 
      lpsspatialability       .   .    .    .   .   .      . 
      matrices                .   .    .    .   .   .      . 
      mirrecall               .   .    .    .   .   .      . 
      mmse                    .   .    .    .   .   .      . 
      nart                    .   .    .    .   .   .      . 
      numbercomparison        .   .    .    .   .   .      . 
      patterncomparison       .   .    .    .   .   .      . 
      proserecall             .   .    .    .   .   .      . 
      psif                    .   .    .    .   .   .      . 
      symbol                  .   .    .    .   .   .      . 
      synonyms                .   .    .    .   .   .      . 
      trailsb                 .   .    .    .   .   .      . 
      univar                  10  10   .    7   .   .      . 
      verbalfluency           .   .    .    .   .   .      . 
      waisgeneralknowledge    .   .    .    .   .   .      . 
      waisgenerealknowledge   .   .    .    .   .   .      . 
      waispicturecompletion   .   .    .    .   .   .      . 
      waisvocab               .   .    .    .   .   .      . 
      wordlistdelay           .   .    .    .   .   .      . 
      wordlistimmed           10  10   .    10  .   .      10
      wordlistrecog           .   .    .    .   .   .      . 
habc  3ms                     .   .    8    8   .   .      6 
      analogies               .   .    .    .   .   .      . 
      block                   .   .    .    .   .   .      . 
      bnt                     .   .    .    .   .   .      . 
      bostonstorydelay        .   .    .    .   .   .      . 
      bostonstoryimmediate    .   .    .    .   .   .      . 
      categories              .   .    .    .   .   .      . 
      clock                   .   .    8    8   .   .      6 
      complexideas            .   .    .    .   .   .      . 
      delayedrecall           .   .    .    .   .   .      . 
      digitordering           .   .    .    .   .   .      . 
      digitsback              .   .    .    .   .   .      . 
      digitsforward           .   .    .    .   .   .      . 
      digitspan               .   .    .    .   .   .      . 
      figurecopy              .   .    .    .   .   .      . 
      figureid                .   .    .    .   .   .      . 
      figurelogic             .   .    .    .   .   .      . 
      info                    .   .    .    .   .   .      . 
      lineorientation         .   .    .    .   .   .      . 
      logicalmemory           .   .    .    .   .   .      . 
      logicalmemorydelay      .   .    .    .   .   .      . 
      logicalmemoryimmed      .   .    .    .   .   .      . 
      lpsspacialability       .   .    .    .   .   .      . 
      lpsspatialability       .   .    .    .   .   .      . 
      matrices                .   .    .    .   .   .      . 
      mirrecall               .   .    .    .   .   .      . 
      mmse                    .   .    .    .   .   .      . 
      nart                    .   .    .    .   .   .      . 
      numbercomparison        .   .    .    .   .   .      . 
      patterncomparison       .   .    .    .   .   .      . 
      proserecall             .   .    .    .   .   .      . 
      psif                    .   .    .    .   .   .      . 
      symbol                  .   .    8    8   .   .      6 
      synonyms                .   .    .    .   .   .      . 
      trailsb                 .   .    .    .   .   .      . 
      univar                  .   .    6    6   .   .      . 
      verbalfluency           .   .    .    .   .   .      . 
      waisgeneralknowledge    .   .    .    .   .   .      . 
      waisgenerealknowledge   .   .    .    .   .   .      . 
      waispicturecompletion   .   .    .    .   .   .      . 
      waisvocab               .   .    .    .   .   .      . 
      wordlistdelay           .   .    .    .   .   .      . 
      wordlistimmed           .   .    .    .   .   .      . 
      wordlistrecog           .   .    .    .   .   .      . 
ilse  3ms                     .   .    .    .   .   .      . 
      analogies               .   .    .    .   .   .      . 
      block                   .   .    .    6   .   .      6 
      bnt                     .   .    .    .   .   .      . 
      bostonstorydelay        .   .    .    .   .   .      . 
      bostonstoryimmediate    .   .    .    .   .   .      . 
      categories              .   .    .    .   .   .      . 
      clock                   .   .    .    .   .   .      . 
      complexideas            .   .    .    .   .   .      . 
      delayedrecall           .   .    .    .   .   .      . 
      digitordering           .   .    .    .   .   .      . 
      digitsback              .   .    .    .   .   .      . 
      digitsforward           .   .    .    .   .   .      . 
      digitspan               .   .    .    .   .   .      . 
      figurecopy              .   .    .    .   .   .      . 
      figureid                .   .    .    .   .   .      . 
      figurelogic             .   .    .    .   .   .      . 
      info                    .   .    .    .   .   .      . 
      lineorientation         .   .    .    .   .   .      . 
      logicalmemory           .   .    .    .   .   .      . 
      logicalmemorydelay      .   .    .    .   .   .      . 
      logicalmemoryimmed      .   .    .    .   .   .      . 
      lpsspacialability       .   .    .    5   .   .      . 
      lpsspatialability       .   .    .    .   .   .      6 
      matrices                .   .    .    .   .   .      . 
      mirrecall               .   .    .    .   .   .      . 
      mmse                    .   .    .    .   .   .      . 
      nart                    .   .    .    .   .   .      . 
      numbercomparison        .   .    .    .   .   .      . 
      patterncomparison       .   .    .    .   .   .      . 
      proserecall             .   .    .    .   .   .      . 
      psif                    .   .    .    .   .   .      . 
      symbol                  .   .    .    6   .   .      6 
      synonyms                .   .    .    .   .   .      . 
      trailsb                 .   .    .    .   .   .      . 
      univar                  .   .    .    6   .   .      . 
      verbalfluency           .   .    .    6   .   .      6 
      waisgeneralknowledge    .   .    .    6   .   .      5 
      waisgenerealknowledge   .   .    .    .   .   .      1 
      waispicturecompletion   .   .    .    6   .   .      6 
      waisvocab               .   .    .    .   .   .      . 
      wordlistdelay           .   .    .    .   .   .      . 
      wordlistimmed           .   .    .    .   .   .      . 
      wordlistrecog           .   .    .    .   .   .      . 
nas   3ms                     .   .    .    .   .   .      . 
      analogies               .   .    .    .   .   .      . 
      block                   .   .    .    .   .   .      . 
      bnt                     .   .    .    .   .   .      . 
      bostonstorydelay        .   .    .    .   .   .      . 
      bostonstoryimmediate    .   .    .    .   .   .      . 
      categories              2   2    .    .   .   .      . 
      clock                   .   .    .    .   .   .      . 
      complexideas            .   .    .    .   .   .      . 
      delayedrecall           .   .    .    .   .   .      . 
      digitordering           .   .    .    .   .   .      . 
      digitsback              2   2    .    .   .   .      . 
      digitsforward           .   .    .    .   .   .      . 
      digitspan               .   .    .    .   .   .      . 
      figurecopy              2   2    .    .   .   .      . 
      figureid                .   .    .    .   .   .      . 
      figurelogic             .   .    .    .   .   .      . 
      info                    .   .    .    .   .   .      . 
      lineorientation         .   .    .    .   .   .      . 
      logicalmemory           .   .    .    .   .   .      . 
      logicalmemorydelay      .   .    .    .   .   .      . 
      logicalmemoryimmed      .   .    .    .   .   .      . 
      lpsspacialability       .   .    .    .   .   .      . 
      lpsspatialability       .   .    .    .   .   .      . 
      matrices                .   .    .    .   .   .      . 
      mirrecall               .   .    .    .   .   .      . 
      mmse                    2   2    .    .   .   .      . 
      nart                    .   .    .    .   .   .      . 
      numbercomparison        .   .    .    .   .   .      . 
      patterncomparison       2   2    .    .   .   .      . 
      proserecall             .   .    .    .   .   .      . 
      psif                    .   .    .    .   .   .      . 
      symbol                  .   .    .    .   .   .      . 
      synonyms                .   .    .    .   .   .      . 
      trailsb                 .   .    .    .   .   .      . 
      univar                  1   .    .    .   .   .      . 
      verbalfluency           .   .    .    .   .   .      . 
      waisgeneralknowledge    .   .    .    .   .   .      . 
      waisgenerealknowledge   .   .    .    .   .   .      . 
      waispicturecompletion   .   .    .    .   .   .      . 
      waisvocab               .   .    .    .   .   .      . 
      wordlistdelay           2   2    .    .   .   .      1 
      wordlistimmed           2   2    .    .   .   .      . 
      wordlistrecog           .   .    .    .   .   .      . 
nuage 3ms                     .   .    .    6   .   .      6 
      analogies               .   .    .    .   .   .      . 
      block                   .   .    .    .   .   .      . 
      bnt                     .   .    .    .   .   .      . 
      bostonstorydelay        .   .    .    .   .   .      . 
      bostonstoryimmediate    .   .    .    .   .   .      . 
      categories              .   .    .    .   .   .      . 
      clock                   .   .    .    .   .   .      . 
      complexideas            .   .    .    .   .   .      . 
      delayedrecall           .   .    .    .   .   .      . 
      digitordering           .   .    .    .   .   .      . 
      digitsback              .   .    .    .   .   .      . 
      digitsforward           .   .    .    .   .   .      . 
      digitspan               .   .    .    .   .   .      . 
      figurecopy              .   .    .    .   .   .      . 
      figureid                .   .    .    .   .   .      . 
      figurelogic             .   .    .    .   .   .      . 
      info                    .   .    .    .   .   .      . 
      lineorientation         .   .    .    .   .   .      . 
      logicalmemory           .   .    .    .   .   .      . 
      logicalmemorydelay      .   .    .    .   .   .      . 
      logicalmemoryimmed      .   .    .    .   .   .      . 
      lpsspacialability       .   .    .    .   .   .      . 
      lpsspatialability       .   .    .    .   .   .      . 
      matrices                .   .    .    .   .   .      . 
      mirrecall               .   .    .    .   .   .      . 
      mmse                    .   .    .    .   .   .      . 
      nart                    .   .    .    .   .   .      . 
      numbercomparison        .   .    .    .   .   .      . 
      patterncomparison       .   .    .    .   .   .      . 
      proserecall             .   .    .    .   .   .      . 
      psif                    .   .    .    .   .   .      . 
      symbol                  .   .    .    .   .   .      . 
      synonyms                .   .    .    .   .   .      . 
      trailsb                 .   .    .    .   .   .      . 
      univar                  .   .    .    6   .   6      18
      verbalfluency           .   .    .    .   .   .      . 
      waisgeneralknowledge    .   .    .    .   .   .      . 
      waisgenerealknowledge   .   .    .    .   .   .      . 
      waispicturecompletion   .   .    .    .   .   .      . 
      waisvocab               .   .    .    .   .   .      . 
      wordlistdelay           .   .    .    .   .   .      . 
      wordlistimmed           .   .    .    .   .   .      . 
      wordlistrecog           .   .    .    .   .   .      . 
octo  3ms                     .   .    .    .   .   .      . 
      analogies               .   .    .    .   .   .      . 
      block                   .   .    .    4   4   .      . 
      bnt                     .   .    .    .   .   .      . 
      bostonstorydelay        .   .    .    .   .   .      . 
      bostonstoryimmediate    .   .    .    .   .   .      . 
      categories              .   .    .    .   .   .      . 
      clock                   .   .    .    .   .   .      . 
      complexideas            .   .    .    .   .   .      . 
      delayedrecall           .   .    .    .   .   .      . 
      digitordering           .   .    .    .   .   .      . 
      digitsback              .   .    .    4   4   .      . 
      digitsforward           .   .    .    4   4   .      . 
      digitspan               .   .    .    .   .   .      . 
      figurecopy              .   .    .    .   .   .      . 
      figureid                .   .    .    .   .   .      . 
      figurelogic             .   .    .    4   4   .      . 
      info                    .   .    .    4   4   .      . 
      lineorientation         .   .    .    .   .   .      . 
      logicalmemory           .   .    .    .   .   .      . 
      logicalmemorydelay      .   .    .    .   .   .      . 
      logicalmemoryimmed      .   .    .    .   .   .      . 
      lpsspacialability       .   .    .    .   .   .      . 
      lpsspatialability       .   .    .    .   .   .      . 
      matrices                .   .    .    .   .   .      . 
      mirrecall               .   .    .    4   4   .      . 
      mmse                    .   .    .    4   4   .      . 
      nart                    .   .    .    .   .   .      . 
      numbercomparison        .   .    .    .   .   .      . 
      patterncomparison       .   .    .    .   .   .      . 
      proserecall             .   .    .    4   4   .      . 
      psif                    .   .    .    4   4   .      . 
      symbol                  .   .    .    4   4   .      . 
      synonyms                .   .    .    4   4   .      . 
      trailsb                 .   .    .    .   .   .      . 
      univar                  .   .    .    .   .   .      . 
      verbalfluency           .   .    .    .   .   .      . 
      waisgeneralknowledge    .   .    .    .   .   .      . 
      waisgenerealknowledge   .   .    .    .   .   .      . 
      waispicturecompletion   .   .    .    .   .   .      . 
      waisvocab               .   .    .    .   .   .      . 
      wordlistdelay           .   .    .    .   .   .      . 
      wordlistimmed           .   .    .    .   .   .      . 
      wordlistrecog           .   .    .    .   .   .      . 
radc  3ms                     .   .    .    .   .   .      . 
      analogies               .   .    .    .   .   .      . 
      block                   .   .    .    .   .   .      . 
      bnt                     3   .    .    4   .   .      . 
      bostonstorydelay        3   .    .    4   .   .      . 
      bostonstoryimmediate    3   .    .    4   .   .      . 
      categories              .   .    .    5   .   .      . 
      clock                   .   .    .    .   .   .      . 
      complexideas            3   .    .    4   .   .      . 
      delayedrecall           .   .    .    .   .   .      . 
      digitordering           3   .    .    3   .   .      . 
      digitsback              4   .    .    4   .   .      . 
      digitsforward           3   .    .    4   .   .      . 
      digitspan               .   .    .    .   .   .      . 
      figurecopy              .   .    .    .   .   .      . 
      figureid                .   .    .    .   .   .      . 
      figurelogic             .   .    .    .   .   .      . 
      info                    .   .    .    .   .   .      . 
      lineorientation         4   .    .    5   .   .      . 
      logicalmemory           .   .    .    .   .   .      . 
      logicalmemorydelay      3   .    .    4   .   .      . 
      logicalmemoryimmed      3   .    .    2   .   .      . 
      lpsspacialability       .   .    .    .   .   .      . 
      lpsspatialability       .   .    .    .   .   .      . 
      matrices                4   .    .    5   .   .      . 
      mirrecall               .   .    .    .   .   .      . 
      mmse                    4   .    .    4   .   .      . 
      nart                    4   .    .    5   .   .      . 
      numbercomparison        3   .    .    4   .   .      . 
      patterncomparison       .   .    .    .   .   .      . 
      proserecall             .   .    .    .   .   .      . 
      psif                    .   .    .    .   .   .      . 
      symbol                  4   .    .    4   .   .      . 
      synonyms                .   .    .    .   .   .      . 
      trailsb                 .   .    .    .   .   .      . 
      univar                  2   .    .    2   .   .      . 
      verbalfluency           .   .    .    .   .   .      . 
      waisgeneralknowledge    .   .    .    .   .   .      . 
      waisgenerealknowledge   .   .    .    .   .   .      . 
      waispicturecompletion   .   .    .    .   .   .      . 
      waisvocab               .   .    .    .   .   .      . 
      wordlistdelay           3   .    .    4   .   .      . 
      wordlistimmed           3   .    .    4   .   .      . 
      wordlistrecog           3   .    .    4   .   .      . 
satsa 3ms                     .   .    .    .   .   .      . 
      analogies               8   .    .    8   .   .      . 
      block                   .   .    .    .   .   .      . 
      bnt                     .   .    .    .   .   .      . 
      bostonstorydelay        .   .    .    .   .   .      . 
      bostonstoryimmediate    .   .    .    .   .   .      . 
      categories              .   .    .    .   .   .      . 
      clock                   .   .    .    .   .   .      . 
      complexideas            .   .    .    .   .   .      . 
      delayedrecall           .   .    .    .   .   .      . 
      digitordering           .   .    .    .   .   .      . 
      digitsback              .   .    .    .   .   .      . 
      digitsforward           .   .    .    .   .   .      . 
      digitspan               .   .    .    .   .   .      . 
      figurecopy              .   .    .    .   .   .      . 
      figureid                6   .    .    6   .   .      . 
      figurelogic             .   .    .    .   .   .      . 
      info                    8   .    .    8   .   .      . 
      lineorientation         .   .    .    .   .   .      . 
      logicalmemory           .   .    .    .   .   .      . 
      logicalmemorydelay      .   .    .    .   .   .      . 
      logicalmemoryimmed      .   .    .    .   .   .      . 
      lpsspacialability       .   .    .    .   .   .      . 
      lpsspatialability       .   .    .    .   .   .      . 
      matrices                .   .    .    .   .   .      . 
      mirrecall               .   .    .    .   .   .      . 
      mmse                    8   .    .    8   .   .      . 
      nart                    .   .    .    .   .   .      . 
      numbercomparison        .   .    .    .   .   .      . 
      patterncomparison       .   .    .    .   .   .      . 
      proserecall             .   .    .    .   .   .      . 
      psif                    .   .    .    .   .   .      . 
      symbol                  8   .    .    8   .   .      . 
      synonyms                8   .    .    8   .   .      . 
      trailsb                 .   .    .    .   .   .      . 
      univar                  .   .    .    .   .   .      . 
      verbalfluency           .   .    .    .   .   .      . 
      waisgeneralknowledge    .   .    .    .   .   .      . 
      waisgenerealknowledge   .   .    .    .   .   .      . 
      waispicturecompletion   .   .    .    .   .   .      . 
      waisvocab               .   .    .    .   .   .      . 
      wordlistdelay           .   .    .    .   .   .      . 
      wordlistimmed           .   .    .    .   .   .      . 
      wordlistrecog           .   .    .    .   .   .      . 
```


## Cross Measures by Study

### habc
Number of models in the **habc** study with the following combination of physical measures (columns) and cognitive measure (rows) 
```
        
         gait grip univar
  3ms    8    8    6     
  clock  8    8    6     
  symbol 8    8    6     
  univar 6    6    .     
```

### satsa
Number of models in the **satsa** study with the following combination of physical measures (columns) and cognitive measure (rows) 
```
           
            fev grip
  analogies 8   8   
  figureid  6   6   
  info      8   8   
  mmse      8   8   
  symbol    8   8   
  synonyms  8   8   
```

### elsa
Number of models in the **elsa** study with the following combination of physical measures (columns) and cognitive measure (rows) 
```
               
                fev fvc grip univar
  categories    .   .   .    10    
  delayedrecall 10  10  10   10    
  univar        10  10  7    .     
  wordlistimmed 10  10  10   10    
```

### nas
Number of models in the **nas** study with the following combination of physical measures (columns) and cognitive measure (rows) 
```
                   
                    fev fvc univar
  categories        2   2   .     
  digitsback        2   2   .     
  figurecopy        2   2   .     
  mmse              2   2   .     
  patterncomparison 2   2   .     
  univar            1   .   .     
  wordlistdelay     2   2   1     
  wordlistimmed     2   2   .     
```

### eas
Number of models in the **eas** study with the following combination of physical measures (columns) and cognitive measure (rows) 
```
               
                grip pek univar
  block         10   10  10    
  bnt           10   10  10    
  categories    10   10  10    
  digitspan     10   10  10    
  info          10   10  10    
  logicalmemory 9    10  10    
  mmse          10   10  10    
  symbol        10   10  10    
  trailsb       10   9   9     
  univar        10   10  .     
  verbalfluency 10   10  10    
  waisvocab     10   10  10    
```

### octo
Number of models in the **octo** study with the following combination of physical measures (columns) and cognitive measure (rows) 
```
               
                grip pek
  block         4    4  
  digitsback    4    4  
  digitsforward 4    4  
  figurelogic   4    4  
  info          4    4  
  mirrecall     4    4  
  mmse          4    4  
  proserecall   4    4  
  psif          4    4  
  symbol        4    4  
  synonyms      4    4  
```

### radc
Number of models in the **radc** study with the following combination of physical measures (columns) and cognitive measure (rows) 
```
                      
                       fev grip
  bnt                  3   4   
  bostonstorydelay     3   4   
  bostonstoryimmediate 3   4   
  categories           .   5   
  complexideas         3   4   
  digitordering        3   3   
  digitsback           4   4   
  digitsforward        3   4   
  lineorientation      4   5   
  logicalmemorydelay   3   4   
  logicalmemoryimmed   3   2   
  matrices             4   5   
  mmse                 4   4   
  nart                 4   5   
  numbercomparison     3   4   
  symbol               4   4   
  univar               2   2   
  wordlistdelay        3   4   
  wordlistimmed        3   4   
  wordlistrecog        3   4   
```

### ilse
Number of models in the **ilse** study with the following combination of physical measures (columns) and cognitive measure (rows) 
```
                       
                        grip univar
  block                 6    6     
  lpsspacialability     5    .     
  lpsspatialability     .    6     
  symbol                6    6     
  univar                6    .     
  verbalfluency         6    6     
  waisgeneralknowledge  6    5     
  waisgenerealknowledge .    1     
  waispicturecompletion 6    6     
```

### nuage
Number of models in the **nuage** study with the following combination of physical measures (columns) and cognitive measure (rows) 
```
        
         grip tug univar
  3ms    6    .   6     
  univar 6    6   18    
```






# Session Information
For the sake of documentation and reproducibility, the current report was rendered on a system using the following software.


```
Report rendered by koval_000 at 2015-06-26, 08:54 -0700
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
 [1] MplusAutomation_0.6-3 RColorBrewer_1.1-2    scales_0.2.5          testit_0.4            knitr_1.10.5         
 [6] rpivotTable_0.1.4.1   lattice_0.20-31       ggplot2_1.0.1         dplyr_0.4.1           shiny_0.12.1         

loaded via a namespace (and not attached):
 [1] Rcpp_0.11.6       highr_0.5         formatR_1.2       plyr_1.8.2        tools_3.2.0       boot_1.3-16      
 [7] digest_0.6.8      jsonlite_0.9.16   evaluate_0.7      gtable_0.1.2      texreg_1.35       DBI_0.3.1        
[13] rstudioapi_0.3.1  yaml_2.1.13       parallel_3.2.0    proto_0.3-10      coda_0.17-1       stringr_1.0.0    
[19] htmlwidgets_0.4.2 R6_2.0.1          tcltk_3.2.0       gsubfn_0.6-6      rmarkdown_0.7     tidyr_0.2.0      
[25] reshape2_1.4.1    magrittr_1.5      htmltools_0.2.6   MASS_7.3-40       rsconnect_0.3.79  assertthat_0.1   
[31] mime_0.3          xtable_1.7-4      colorspace_1.2-6  httpuv_1.3.2      labeling_0.3      stringi_0.4-1    
[37] lazyeval_0.1.10   munsell_0.4.2    
```
