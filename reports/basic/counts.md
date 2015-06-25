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
elsa hrs lasa nshd obas


Presently, the **total number of legally named models** supplied by the participating studies is
**1110**
: they include both *bivariate* and *univariate* models. Strings *"nophys"* and *"nocog"*, imply that the model is univariate (e.i. nocog == The particular cog predictor is "none")

<!-- Frequency counts   -->
Counting valid models in each study:

```

  eas  habc  ilse   nas nuage  octo  radc satsa 
  485    88   123    41    52    88   141    92 
```

# Physcial Domain

## Constructs 

Number of models that use the following **Physical contructs**

```
           
            eas habc ilse nas nuage octo radc satsa
  chair     .   .    .    .   8     .    .    .    
  flamingo  .   .    .    .   8     .    .    .    
  muscle    131 32   45   .   14    44   79   46   
  pulmonary 133 .    .    41  .     44   62   46   
  tug       .   .    44   .   8     .    .    .    
  Univar    221 24   34   .   6     .    .    .    
  walking   .   32   .    .   8     .    .    .    
```

## Measures

Number of models that use the following **Physical measures**

```
        
         eas habc ilse nas nuage octo radc satsa
  fev    .   .    .    21  .     .    62   46   
  fvc    .   .    .    20  .     .    .    .    
  gait   .   33   .    .   .     .    .    .    
  grip   131 31   44   .   15    44   79   46   
  pek    133 .    .    .   .     44   .    .    
  univar 221 24   79   .   37    .    .    .    
```

## Measures by Constructs

Number of models using this **measure** of the  physical **construct**

```
        
         chair flamingo muscle pulmonary tug Univar walking
  fev    .     .        .      129       .   .      .      
  fvc    .     .        .      20        .   .      .      
  gait   .     .        1      .         .   .      32     
  grip   .     .        389    .         .   .      1      
  pek    .     .        .      177       .   .      .      
  univar 8     8        1      .         52  285    7      
```

## Measures by Constructs and Studies

Number of models using this **measure** of the  physical **construct**, by study

```
              chair flamingo muscle pulmonary tug Univar walking
                                                                
eas   fev       .        .      .         .   .      .       .  
      fvc       .        .      .         .   .      .       .  
      gait      .        .      .         .   .      .       .  
      grip      .        .      131       .   .      .       .  
      pek       .        .      .         133 .      .       .  
      univar    .        .      .         .   .      221     .  
habc  fev       .        .      .         .   .      .       .  
      fvc       .        .      .         .   .      .       .  
      gait      .        .      1         .   .      .       32 
      grip      .        .      31        .   .      .       .  
      pek       .        .      .         .   .      .       .  
      univar    .        .      .         .   .      24      .  
ilse  fev       .        .      .         .   .      .       .  
      fvc       .        .      .         .   .      .       .  
      gait      .        .      .         .   .      .       .  
      grip      .        .      44        .   .      .       .  
      pek       .        .      .         .   .      .       .  
      univar    .        .      1         .   44     34      .  
nas   fev       .        .      .         21  .      .       .  
      fvc       .        .      .         20  .      .       .  
      gait      .        .      .         .   .      .       .  
      grip      .        .      .         .   .      .       .  
      pek       .        .      .         .   .      .       .  
      univar    .        .      .         .   .      .       .  
nuage fev       .        .      .         .   .      .       .  
      fvc       .        .      .         .   .      .       .  
      gait      .        .      .         .   .      .       .  
      grip      .        .      14        .   .      .       1  
      pek       .        .      .         .   .      .       .  
      univar    8        8      .         .   8      6       7  
octo  fev       .        .      .         .   .      .       .  
      fvc       .        .      .         .   .      .       .  
      gait      .        .      .         .   .      .       .  
      grip      .        .      44        .   .      .       .  
      pek       .        .      .         44  .      .       .  
      univar    .        .      .         .   .      .       .  
radc  fev       .        .      .         62  .      .       .  
      fvc       .        .      .         .   .      .       .  
      gait      .        .      .         .   .      .       .  
      grip      .        .      79        .   .      .       .  
      pek       .        .      .         .   .      .       .  
      univar    .        .      .         .   .      .       .  
satsa fev       .        .      .         46  .      .       .  
      fvc       .        .      .         .   .      .       .  
      gait      .        .      .         .   .      .       .  
      grip      .        .      46        .   .      .       .  
      pek       .        .      .         .   .      .       .  
      univar    .        .      .         .   .      .       .  
```


# Cognitive Domain

## Constructs 

Number of models that use the following **Cognitive contructs**

```
              
               eas habc ilse nas nuage octo radc satsa
  executive    39  .    .    5   .     8    14   .    
  fluency      80  .    20   6   .     .    5    .    
  knowledge    81  .    12   .   .     16   9    48   
  language     40  .    .    .   .     .    14   .    
  memory       73  .    .    12  .     24   54   .    
  mental       40  48   .    6   12    8    8    16   
  reasoning    42  .    54   6   .     16   9    .    
  speed        46  24   20   6   .     16   15   28   
  Univar       44  16   17   .   40    .    4    .    
  visuospatial .   .    .    .   .     .    9    .    
```

## Measures

Number of models that use the following **Cognitive measures**

```
                       
                        eas habc ilse nas nuage octo radc satsa
  3ms                   .   24   .    .   12    .    .    .    
  analogies             .   .    .    .   .     .    .    16   
  block                 42  .    20   .   .     8    .    .    
  bnt                   40  .    .    .   .     .    7    .    
  bostonstorydelay      .   .    .    .   .     .    7    .    
  bostonstoryimmediate  .   .    .    .   .     .    7    .    
  categories            40  .    .    6   .     .    5    .    
  clock                 .   24   .    .   .     .    .    .    
  complexideas          .   .    .    .   .     .    7    .    
  digitordering         .   .    .    .   .     .    6    .    
  digitsback            .   .    .    5   .     8    8    .    
  digitsforward         .   .    .    .   .     8    7    .    
  digitspan             34  .    .    .   .     .    .    .    
  figurecopy            .   .    .    6   .     .    .    .    
  figureid              .   .    .    .   .     .    .    12   
  figurelogic           .   .    .    .   .     8    .    .    
  info                  40  .    .    .   .     8    .    16   
  lineorientation       .   .    .    .   .     .    9    .    
  logicalmemory         39  .    .    .   .     .    .    .    
  logicalmemorydelay    .   .    .    .   .     .    7    .    
  logicalmemoryimmed    .   .    .    .   .     .    5    .    
  lpsspacialability     .   .    14   .   .     .    .    .    
  matrices              .   .    .    .   .     .    9    .    
  mirrecall             .   .    .    .   .     8    .    .    
  mmse                  40  .    .    6   .     8    8    16   
  nart                  .   .    .    .   .     .    9    .    
  numbercomparison      .   .    .    .   .     .    7    .    
  patterncomparison     .   .    .    6   .     .    .    .    
  picturecompletion     .   .    8    .   .     .    .    .    
  proserecall           .   .    .    .   .     8    .    .    
  psif                  .   .    .    .   .     8    .    .    
  symbol                46  24   20   .   .     8    8    16   
  synonyms              .   .    .    .   .     8    .    16   
  trailsb               39  .    .    .   .     .    .    .    
  univar                44  16   17   .   40    .    4    .    
  verbalfluency         40  .    20   .   .     .    .    .    
  waisgeneralknowledge  .   .    12   .   .     .    .    .    
  waispicturecompletion .   .    12   .   .     .    .    .    
  waisvocab             41  .    .    .   .     .    .    .    
  wordlistdelay         .   .    .    6   .     .    7    .    
  wordlistimmed         .   .    .    6   .     .    7    .    
  wordlistrecog         .   .    .    .   .     .    7    .    
```

## Measures by Constructs

Number of models using this **measure** of the  cognitive **construct**

```
                       
                        executive fluency knowledge language memory mental reasoning speed Univar visuospatial
  3ms                   .         .       .         .        .      36     .         .     .      .           
  analogies             .         .       16        .        .      .      .         .     .      .           
  block                 .         .       .         .        .      .      70        .     .      .           
  bnt                   .         .       .         47       .      .      .         .     .      .           
  bostonstorydelay      .         .       .         .        7      .      .         .     .      .           
  bostonstoryimmediate  .         .       .         .        7      .      .         .     .      .           
  categories            .         51      .         .        .      .      .         .     .      .           
  clock                 .         .       .         .        .      24     .         .     .      .           
  complexideas          .         .       .         7        .      .      .         .     .      .           
  digitordering         6         .       .         .        .      .      .         .     .      .           
  digitsback            21        .       .         .        .      .      .         .     .      .           
  digitsforward         .         .       .         .        15     .      .         .     .      .           
  digitspan             .         .       .         .        34     .      .         .     .      .           
  figurecopy            .         .       .         .        .      .      6         .     .      .           
  figureid              .         .       .         .        .      .      .         12    .      .           
  figurelogic           .         .       .         .        .      .      8         .     .      .           
  info                  .         .       64        .        .      .      .         .     .      .           
  lineorientation       .         .       .         .        .      .      .         .     .      9           
  logicalmemory         .         .       .         .        39     .      .         .     .      .           
  logicalmemorydelay    .         .       .         .        7      .      .         .     .      .           
  logicalmemoryimmed    .         .       .         .        5      .      .         .     .      .           
  lpsspacialability     .         .       .         .        .      .      14        .     .      .           
  matrices              .         .       .         .        .      .      9         .     .      .           
  mirrecall             .         .       .         .        8      .      .         .     .      .           
  mmse                  .         .       .         .        .      78     .         .     .      .           
  nart                  .         .       9         .        .      .      .         .     .      .           
  numbercomparison      .         .       .         .        .      .      .         7     .      .           
  patterncomparison     .         .       .         .        .      .      .         6     .      .           
  picturecompletion     .         .       .         .        .      .      8         .     .      .           
  proserecall           .         .       .         .        8      .      .         .     .      .           
  psif                  .         .       .         .        .      .      .         8     .      .           
  symbol                .         .       .         .        .      .      .         122   .      .           
  synonyms              .         .       24        .        .      .      .         .     .      .           
  trailsb               39        .       .         .        .      .      .         .     .      .           
  univar                .         .       .         .        .      .      .         .     121    .           
  verbalfluency         .         60      .         .        .      .      .         .     .      .           
  waisgeneralknowledge  .         .       12        .        .      .      .         .     .      .           
  waispicturecompletion .         .       .         .        .      .      12        .     .      .           
  waisvocab             .         .       41        .        .      .      .         .     .      .           
  wordlistdelay         .         .       .         .        13     .      .         .     .      .           
  wordlistimmed         .         .       .         .        13     .      .         .     .      .           
  wordlistrecog         .         .       .         .        7      .      .         .     .      .           
```

## Measures by Constructs and Studies

Number of models using this **measure** of the  cognitive **construct**, by study

```
                             executive fluency knowledge language memory mental reasoning speed Univar visuospatial
                                                                                                                   
eas   3ms                           .       .         .        .      .      .         .     .      .            . 
      analogies                     .       .         .        .      .      .         .     .      .            . 
      block                         .       .         .        .      .      .         42    .      .            . 
      bnt                           .       .         .        40     .      .         .     .      .            . 
      bostonstorydelay              .       .         .        .      .      .         .     .      .            . 
      bostonstoryimmediate          .       .         .        .      .      .         .     .      .            . 
      categories                    .       40        .        .      .      .         .     .      .            . 
      clock                         .       .         .        .      .      .         .     .      .            . 
      complexideas                  .       .         .        .      .      .         .     .      .            . 
      digitordering                 .       .         .        .      .      .         .     .      .            . 
      digitsback                    .       .         .        .      .      .         .     .      .            . 
      digitsforward                 .       .         .        .      .      .         .     .      .            . 
      digitspan                     .       .         .        .      34     .         .     .      .            . 
      figurecopy                    .       .         .        .      .      .         .     .      .            . 
      figureid                      .       .         .        .      .      .         .     .      .            . 
      figurelogic                   .       .         .        .      .      .         .     .      .            . 
      info                          .       .         40       .      .      .         .     .      .            . 
      lineorientation               .       .         .        .      .      .         .     .      .            . 
      logicalmemory                 .       .         .        .      39     .         .     .      .            . 
      logicalmemorydelay            .       .         .        .      .      .         .     .      .            . 
      logicalmemoryimmed            .       .         .        .      .      .         .     .      .            . 
      lpsspacialability             .       .         .        .      .      .         .     .      .            . 
      matrices                      .       .         .        .      .      .         .     .      .            . 
      mirrecall                     .       .         .        .      .      .         .     .      .            . 
      mmse                          .       .         .        .      .      40        .     .      .            . 
      nart                          .       .         .        .      .      .         .     .      .            . 
      numbercomparison              .       .         .        .      .      .         .     .      .            . 
      patterncomparison             .       .         .        .      .      .         .     .      .            . 
      picturecompletion             .       .         .        .      .      .         .     .      .            . 
      proserecall                   .       .         .        .      .      .         .     .      .            . 
      psif                          .       .         .        .      .      .         .     .      .            . 
      symbol                        .       .         .        .      .      .         .     46     .            . 
      synonyms                      .       .         .        .      .      .         .     .      .            . 
      trailsb                       39      .         .        .      .      .         .     .      .            . 
      univar                        .       .         .        .      .      .         .     .      44           . 
      verbalfluency                 .       40        .        .      .      .         .     .      .            . 
      waisgeneralknowledge          .       .         .        .      .      .         .     .      .            . 
      waispicturecompletion         .       .         .        .      .      .         .     .      .            . 
      waisvocab                     .       .         41       .      .      .         .     .      .            . 
      wordlistdelay                 .       .         .        .      .      .         .     .      .            . 
      wordlistimmed                 .       .         .        .      .      .         .     .      .            . 
      wordlistrecog                 .       .         .        .      .      .         .     .      .            . 
habc  3ms                           .       .         .        .      .      24        .     .      .            . 
      analogies                     .       .         .        .      .      .         .     .      .            . 
      block                         .       .         .        .      .      .         .     .      .            . 
      bnt                           .       .         .        .      .      .         .     .      .            . 
      bostonstorydelay              .       .         .        .      .      .         .     .      .            . 
      bostonstoryimmediate          .       .         .        .      .      .         .     .      .            . 
      categories                    .       .         .        .      .      .         .     .      .            . 
      clock                         .       .         .        .      .      24        .     .      .            . 
      complexideas                  .       .         .        .      .      .         .     .      .            . 
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
      matrices                      .       .         .        .      .      .         .     .      .            . 
      mirrecall                     .       .         .        .      .      .         .     .      .            . 
      mmse                          .       .         .        .      .      .         .     .      .            . 
      nart                          .       .         .        .      .      .         .     .      .            . 
      numbercomparison              .       .         .        .      .      .         .     .      .            . 
      patterncomparison             .       .         .        .      .      .         .     .      .            . 
      picturecompletion             .       .         .        .      .      .         .     .      .            . 
      proserecall                   .       .         .        .      .      .         .     .      .            . 
      psif                          .       .         .        .      .      .         .     .      .            . 
      symbol                        .       .         .        .      .      .         .     24     .            . 
      synonyms                      .       .         .        .      .      .         .     .      .            . 
      trailsb                       .       .         .        .      .      .         .     .      .            . 
      univar                        .       .         .        .      .      .         .     .      16           . 
      verbalfluency                 .       .         .        .      .      .         .     .      .            . 
      waisgeneralknowledge          .       .         .        .      .      .         .     .      .            . 
      waispicturecompletion         .       .         .        .      .      .         .     .      .            . 
      waisvocab                     .       .         .        .      .      .         .     .      .            . 
      wordlistdelay                 .       .         .        .      .      .         .     .      .            . 
      wordlistimmed                 .       .         .        .      .      .         .     .      .            . 
      wordlistrecog                 .       .         .        .      .      .         .     .      .            . 
ilse  3ms                           .       .         .        .      .      .         .     .      .            . 
      analogies                     .       .         .        .      .      .         .     .      .            . 
      block                         .       .         .        .      .      .         20    .      .            . 
      bnt                           .       .         .        .      .      .         .     .      .            . 
      bostonstorydelay              .       .         .        .      .      .         .     .      .            . 
      bostonstoryimmediate          .       .         .        .      .      .         .     .      .            . 
      categories                    .       .         .        .      .      .         .     .      .            . 
      clock                         .       .         .        .      .      .         .     .      .            . 
      complexideas                  .       .         .        .      .      .         .     .      .            . 
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
      lpsspacialability             .       .         .        .      .      .         14    .      .            . 
      matrices                      .       .         .        .      .      .         .     .      .            . 
      mirrecall                     .       .         .        .      .      .         .     .      .            . 
      mmse                          .       .         .        .      .      .         .     .      .            . 
      nart                          .       .         .        .      .      .         .     .      .            . 
      numbercomparison              .       .         .        .      .      .         .     .      .            . 
      patterncomparison             .       .         .        .      .      .         .     .      .            . 
      picturecompletion             .       .         .        .      .      .         8     .      .            . 
      proserecall                   .       .         .        .      .      .         .     .      .            . 
      psif                          .       .         .        .      .      .         .     .      .            . 
      symbol                        .       .         .        .      .      .         .     20     .            . 
      synonyms                      .       .         .        .      .      .         .     .      .            . 
      trailsb                       .       .         .        .      .      .         .     .      .            . 
      univar                        .       .         .        .      .      .         .     .      17           . 
      verbalfluency                 .       20        .        .      .      .         .     .      .            . 
      waisgeneralknowledge          .       .         12       .      .      .         .     .      .            . 
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
      categories                    .       6         .        .      .      .         .     .      .            . 
      clock                         .       .         .        .      .      .         .     .      .            . 
      complexideas                  .       .         .        .      .      .         .     .      .            . 
      digitordering                 .       .         .        .      .      .         .     .      .            . 
      digitsback                    5       .         .        .      .      .         .     .      .            . 
      digitsforward                 .       .         .        .      .      .         .     .      .            . 
      digitspan                     .       .         .        .      .      .         .     .      .            . 
      figurecopy                    .       .         .        .      .      .         6     .      .            . 
      figureid                      .       .         .        .      .      .         .     .      .            . 
      figurelogic                   .       .         .        .      .      .         .     .      .            . 
      info                          .       .         .        .      .      .         .     .      .            . 
      lineorientation               .       .         .        .      .      .         .     .      .            . 
      logicalmemory                 .       .         .        .      .      .         .     .      .            . 
      logicalmemorydelay            .       .         .        .      .      .         .     .      .            . 
      logicalmemoryimmed            .       .         .        .      .      .         .     .      .            . 
      lpsspacialability             .       .         .        .      .      .         .     .      .            . 
      matrices                      .       .         .        .      .      .         .     .      .            . 
      mirrecall                     .       .         .        .      .      .         .     .      .            . 
      mmse                          .       .         .        .      .      6         .     .      .            . 
      nart                          .       .         .        .      .      .         .     .      .            . 
      numbercomparison              .       .         .        .      .      .         .     .      .            . 
      patterncomparison             .       .         .        .      .      .         .     6      .            . 
      picturecompletion             .       .         .        .      .      .         .     .      .            . 
      proserecall                   .       .         .        .      .      .         .     .      .            . 
      psif                          .       .         .        .      .      .         .     .      .            . 
      symbol                        .       .         .        .      .      .         .     .      .            . 
      synonyms                      .       .         .        .      .      .         .     .      .            . 
      trailsb                       .       .         .        .      .      .         .     .      .            . 
      univar                        .       .         .        .      .      .         .     .      .            . 
      verbalfluency                 .       .         .        .      .      .         .     .      .            . 
      waisgeneralknowledge          .       .         .        .      .      .         .     .      .            . 
      waispicturecompletion         .       .         .        .      .      .         .     .      .            . 
      waisvocab                     .       .         .        .      .      .         .     .      .            . 
      wordlistdelay                 .       .         .        .      6      .         .     .      .            . 
      wordlistimmed                 .       .         .        .      6      .         .     .      .            . 
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
      matrices                      .       .         .        .      .      .         .     .      .            . 
      mirrecall                     .       .         .        .      .      .         .     .      .            . 
      mmse                          .       .         .        .      .      .         .     .      .            . 
      nart                          .       .         .        .      .      .         .     .      .            . 
      numbercomparison              .       .         .        .      .      .         .     .      .            . 
      patterncomparison             .       .         .        .      .      .         .     .      .            . 
      picturecompletion             .       .         .        .      .      .         .     .      .            . 
      proserecall                   .       .         .        .      .      .         .     .      .            . 
      psif                          .       .         .        .      .      .         .     .      .            . 
      symbol                        .       .         .        .      .      .         .     .      .            . 
      synonyms                      .       .         .        .      .      .         .     .      .            . 
      trailsb                       .       .         .        .      .      .         .     .      .            . 
      univar                        .       .         .        .      .      .         .     .      40           . 
      verbalfluency                 .       .         .        .      .      .         .     .      .            . 
      waisgeneralknowledge          .       .         .        .      .      .         .     .      .            . 
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
      matrices                      .       .         .        .      .      .         .     .      .            . 
      mirrecall                     .       .         .        .      8      .         .     .      .            . 
      mmse                          .       .         .        .      .      8         .     .      .            . 
      nart                          .       .         .        .      .      .         .     .      .            . 
      numbercomparison              .       .         .        .      .      .         .     .      .            . 
      patterncomparison             .       .         .        .      .      .         .     .      .            . 
      picturecompletion             .       .         .        .      .      .         .     .      .            . 
      proserecall                   .       .         .        .      8      .         .     .      .            . 
      psif                          .       .         .        .      .      .         .     8      .            . 
      symbol                        .       .         .        .      .      .         .     8      .            . 
      synonyms                      .       .         8        .      .      .         .     .      .            . 
      trailsb                       .       .         .        .      .      .         .     .      .            . 
      univar                        .       .         .        .      .      .         .     .      .            . 
      verbalfluency                 .       .         .        .      .      .         .     .      .            . 
      waisgeneralknowledge          .       .         .        .      .      .         .     .      .            . 
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
      matrices                      .       .         .        .      .      .         9     .      .            . 
      mirrecall                     .       .         .        .      .      .         .     .      .            . 
      mmse                          .       .         .        .      .      8         .     .      .            . 
      nart                          .       .         9        .      .      .         .     .      .            . 
      numbercomparison              .       .         .        .      .      .         .     7      .            . 
      patterncomparison             .       .         .        .      .      .         .     .      .            . 
      picturecompletion             .       .         .        .      .      .         .     .      .            . 
      proserecall                   .       .         .        .      .      .         .     .      .            . 
      psif                          .       .         .        .      .      .         .     .      .            . 
      symbol                        .       .         .        .      .      .         .     8      .            . 
      synonyms                      .       .         .        .      .      .         .     .      .            . 
      trailsb                       .       .         .        .      .      .         .     .      .            . 
      univar                        .       .         .        .      .      .         .     .      4            . 
      verbalfluency                 .       .         .        .      .      .         .     .      .            . 
      waisgeneralknowledge          .       .         .        .      .      .         .     .      .            . 
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
      matrices                      .       .         .        .      .      .         .     .      .            . 
      mirrecall                     .       .         .        .      .      .         .     .      .            . 
      mmse                          .       .         .        .      .      16        .     .      .            . 
      nart                          .       .         .        .      .      .         .     .      .            . 
      numbercomparison              .       .         .        .      .      .         .     .      .            . 
      patterncomparison             .       .         .        .      .      .         .     .      .            . 
      picturecompletion             .       .         .        .      .      .         .     .      .            . 
      proserecall                   .       .         .        .      .      .         .     .      .            . 
      psif                          .       .         .        .      .      .         .     .      .            . 
      symbol                        .       .         .        .      .      .         .     16     .            . 
      synonyms                      .       .         16       .      .      .         .     .      .            . 
      trailsb                       .       .         .        .      .      .         .     .      .            . 
      univar                        .       .         .        .      .      .         .     .      .            . 
      verbalfluency                 .       .         .        .      .      .         .     .      .            . 
      waisgeneralknowledge          .       .         .        .      .      .         .     .      .            . 
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
  executive    .     .        21     26        .   19     .      
  fluency      .     .        31     26        6   48     .      
  knowledge    .     .        63     57        6   40     .      
  language     .     .        18     16        .   20     .      
  memory       .     .        57     66        .   40     .      
  mental       .     .        48     32        .   42     16     
  reasoning    .     .        41     28        18  40     .      
  speed        .     .        58     47        6   36     8      
  Univar       8     8        49     24        16  .      16     
  visuospatial .     .        5      4         .   .      .      
```
It is important to remember that these numbers reflect only the combinations of **constructs**, the  **operationalizations** of these construct (specifc outcomes) that may differ from model to model. 

## Cross Measures

Number of models that uses this **physical measure** (column) and  **cognitive measure** (row):

```
                       
                        fev fvc gait grip pek univar
  3ms                   .   .   8    14   .   14    
  analogies             8   .   .    8    .   .     
  block                 .   .   .    20   14  36    
  bnt                   3   .   .    14   10  20    
  bostonstorydelay      3   .   .    4    .   .     
  bostonstoryimmediate  3   .   .    4    .   .     
  categories            3   3   .    15   10  20    
  clock                 .   .   9    7    .   8     
  complexideas          3   .   .    4    .   .     
  digitordering         3   .   .    3    .   .     
  digitsback            7   2   .    8    4   .     
  digitsforward         3   .   .    8    4   .     
  digitspan             .   .   .    6    8   20    
  figurecopy            3   3   .    .    .   .     
  figureid              6   .   .    6    .   .     
  figurelogic           .   .   .    4    4   .     
  info                  8   .   .    22   14  20    
  lineorientation       4   .   .    5    .   .     
  logicalmemory         .   .   .    9    10  20    
  logicalmemorydelay    3   .   .    4    .   .     
  logicalmemoryimmed    3   .   .    2    .   .     
  lpsspacialability     .   .   .    6    .   8     
  matrices              4   .   .    5    .   .     
  mirrecall             .   .   .    4    4   .     
  mmse                  15  3   .    26   14  20    
  nart                  4   .   .    5    .   .     
  numbercomparison      3   .   .    4    .   .     
  patterncomparison     3   3   .    .    .   .     
  picturecompletion     .   .   .    .    .   8     
  proserecall           .   .   .    4    4   .     
  psif                  .   .   .    4    4   .     
  symbol                12  .   8    44   16  42    
  synonyms              8   .   .    12   4   .     
  trailsb               .   .   .    10   10  19    
  univar                2   .   8    49   22  40    
  verbalfluency         .   .   .    16   10  34    
  waisgeneralknowledge  .   .   .    6    .   6     
  waispicturecompletion .   .   .    6    .   6     
  waisvocab             .   .   .    10   11  20    
  wordlistdelay         6   3   .    4    .   .     
  wordlistimmed         6   3   .    4    .   .     
  wordlistrecog         3   .   .    4    .   .     
```

## Cross Measures (fill)


```
                             fev fvc gait grip pek univar
                                                         
eas   3ms                     .   .    .    .   .      . 
      analogies               .   .    .    .   .      . 
      block                   .   .    .    10  10     22
      bnt                     .   .    .    10  10     20
      bostonstorydelay        .   .    .    .   .      . 
      bostonstoryimmediate    .   .    .    .   .      . 
      categories              .   .    .    10  10     20
      clock                   .   .    .    .   .      . 
      complexideas            .   .    .    .   .      . 
      digitordering           .   .    .    .   .      . 
      digitsback              .   .    .    .   .      . 
      digitsforward           .   .    .    .   .      . 
      digitspan               .   .    .    6   8      20
      figurecopy              .   .    .    .   .      . 
      figureid                .   .    .    .   .      . 
      figurelogic             .   .    .    .   .      . 
      info                    .   .    .    10  10     20
      lineorientation         .   .    .    .   .      . 
      logicalmemory           .   .    .    9   10     20
      logicalmemorydelay      .   .    .    .   .      . 
      logicalmemoryimmed      .   .    .    .   .      . 
      lpsspacialability       .   .    .    .   .      . 
      matrices                .   .    .    .   .      . 
      mirrecall               .   .    .    .   .      . 
      mmse                    .   .    .    10  10     20
      nart                    .   .    .    .   .      . 
      numbercomparison        .   .    .    .   .      . 
      patterncomparison       .   .    .    .   .      . 
      picturecompletion       .   .    .    .   .      . 
      proserecall             .   .    .    .   .      . 
      psif                    .   .    .    .   .      . 
      symbol                  .   .    .    14  12     20
      synonyms                .   .    .    .   .      . 
      trailsb                 .   .    .    10  10     19
      univar                  .   .    .    22  22     . 
      verbalfluency           .   .    .    10  10     20
      waisgeneralknowledge    .   .    .    .   .      . 
      waispicturecompletion   .   .    .    .   .      . 
      waisvocab               .   .    .    10  11     20
      wordlistdelay           .   .    .    .   .      . 
      wordlistimmed           .   .    .    .   .      . 
      wordlistrecog           .   .    .    .   .      . 
habc  3ms                     .   .    8    8   .      8 
      analogies               .   .    .    .   .      . 
      block                   .   .    .    .   .      . 
      bnt                     .   .    .    .   .      . 
      bostonstorydelay        .   .    .    .   .      . 
      bostonstoryimmediate    .   .    .    .   .      . 
      categories              .   .    .    .   .      . 
      clock                   .   .    9    7   .      8 
      complexideas            .   .    .    .   .      . 
      digitordering           .   .    .    .   .      . 
      digitsback              .   .    .    .   .      . 
      digitsforward           .   .    .    .   .      . 
      digitspan               .   .    .    .   .      . 
      figurecopy              .   .    .    .   .      . 
      figureid                .   .    .    .   .      . 
      figurelogic             .   .    .    .   .      . 
      info                    .   .    .    .   .      . 
      lineorientation         .   .    .    .   .      . 
      logicalmemory           .   .    .    .   .      . 
      logicalmemorydelay      .   .    .    .   .      . 
      logicalmemoryimmed      .   .    .    .   .      . 
      lpsspacialability       .   .    .    .   .      . 
      matrices                .   .    .    .   .      . 
      mirrecall               .   .    .    .   .      . 
      mmse                    .   .    .    .   .      . 
      nart                    .   .    .    .   .      . 
      numbercomparison        .   .    .    .   .      . 
      patterncomparison       .   .    .    .   .      . 
      picturecompletion       .   .    .    .   .      . 
      proserecall             .   .    .    .   .      . 
      psif                    .   .    .    .   .      . 
      symbol                  .   .    8    8   .      8 
      synonyms                .   .    .    .   .      . 
      trailsb                 .   .    .    .   .      . 
      univar                  .   .    8    8   .      . 
      verbalfluency           .   .    .    .   .      . 
      waisgeneralknowledge    .   .    .    .   .      . 
      waispicturecompletion   .   .    .    .   .      . 
      waisvocab               .   .    .    .   .      . 
      wordlistdelay           .   .    .    .   .      . 
      wordlistimmed           .   .    .    .   .      . 
      wordlistrecog           .   .    .    .   .      . 
ilse  3ms                     .   .    .    .   .      . 
      analogies               .   .    .    .   .      . 
      block                   .   .    .    6   .      14
      bnt                     .   .    .    .   .      . 
      bostonstorydelay        .   .    .    .   .      . 
      bostonstoryimmediate    .   .    .    .   .      . 
      categories              .   .    .    .   .      . 
      clock                   .   .    .    .   .      . 
      complexideas            .   .    .    .   .      . 
      digitordering           .   .    .    .   .      . 
      digitsback              .   .    .    .   .      . 
      digitsforward           .   .    .    .   .      . 
      digitspan               .   .    .    .   .      . 
      figurecopy              .   .    .    .   .      . 
      figureid                .   .    .    .   .      . 
      figurelogic             .   .    .    .   .      . 
      info                    .   .    .    .   .      . 
      lineorientation         .   .    .    .   .      . 
      logicalmemory           .   .    .    .   .      . 
      logicalmemorydelay      .   .    .    .   .      . 
      logicalmemoryimmed      .   .    .    .   .      . 
      lpsspacialability       .   .    .    6   .      8 
      matrices                .   .    .    .   .      . 
      mirrecall               .   .    .    .   .      . 
      mmse                    .   .    .    .   .      . 
      nart                    .   .    .    .   .      . 
      numbercomparison        .   .    .    .   .      . 
      patterncomparison       .   .    .    .   .      . 
      picturecompletion       .   .    .    .   .      8 
      proserecall             .   .    .    .   .      . 
      psif                    .   .    .    .   .      . 
      symbol                  .   .    .    6   .      14
      synonyms                .   .    .    .   .      . 
      trailsb                 .   .    .    .   .      . 
      univar                  .   .    .    8   .      9 
      verbalfluency           .   .    .    6   .      14
      waisgeneralknowledge    .   .    .    6   .      6 
      waispicturecompletion   .   .    .    6   .      6 
      waisvocab               .   .    .    .   .      . 
      wordlistdelay           .   .    .    .   .      . 
      wordlistimmed           .   .    .    .   .      . 
      wordlistrecog           .   .    .    .   .      . 
nas   3ms                     .   .    .    .   .      . 
      analogies               .   .    .    .   .      . 
      block                   .   .    .    .   .      . 
      bnt                     .   .    .    .   .      . 
      bostonstorydelay        .   .    .    .   .      . 
      bostonstoryimmediate    .   .    .    .   .      . 
      categories              3   3    .    .   .      . 
      clock                   .   .    .    .   .      . 
      complexideas            .   .    .    .   .      . 
      digitordering           .   .    .    .   .      . 
      digitsback              3   2    .    .   .      . 
      digitsforward           .   .    .    .   .      . 
      digitspan               .   .    .    .   .      . 
      figurecopy              3   3    .    .   .      . 
      figureid                .   .    .    .   .      . 
      figurelogic             .   .    .    .   .      . 
      info                    .   .    .    .   .      . 
      lineorientation         .   .    .    .   .      . 
      logicalmemory           .   .    .    .   .      . 
      logicalmemorydelay      .   .    .    .   .      . 
      logicalmemoryimmed      .   .    .    .   .      . 
      lpsspacialability       .   .    .    .   .      . 
      matrices                .   .    .    .   .      . 
      mirrecall               .   .    .    .   .      . 
      mmse                    3   3    .    .   .      . 
      nart                    .   .    .    .   .      . 
      numbercomparison        .   .    .    .   .      . 
      patterncomparison       3   3    .    .   .      . 
      picturecompletion       .   .    .    .   .      . 
      proserecall             .   .    .    .   .      . 
      psif                    .   .    .    .   .      . 
      symbol                  .   .    .    .   .      . 
      synonyms                .   .    .    .   .      . 
      trailsb                 .   .    .    .   .      . 
      univar                  .   .    .    .   .      . 
      verbalfluency           .   .    .    .   .      . 
      waisgeneralknowledge    .   .    .    .   .      . 
      waispicturecompletion   .   .    .    .   .      . 
      waisvocab               .   .    .    .   .      . 
      wordlistdelay           3   3    .    .   .      . 
      wordlistimmed           3   3    .    .   .      . 
      wordlistrecog           .   .    .    .   .      . 
nuage 3ms                     .   .    .    6   .      6 
      analogies               .   .    .    .   .      . 
      block                   .   .    .    .   .      . 
      bnt                     .   .    .    .   .      . 
      bostonstorydelay        .   .    .    .   .      . 
      bostonstoryimmediate    .   .    .    .   .      . 
      categories              .   .    .    .   .      . 
      clock                   .   .    .    .   .      . 
      complexideas            .   .    .    .   .      . 
      digitordering           .   .    .    .   .      . 
      digitsback              .   .    .    .   .      . 
      digitsforward           .   .    .    .   .      . 
      digitspan               .   .    .    .   .      . 
      figurecopy              .   .    .    .   .      . 
      figureid                .   .    .    .   .      . 
      figurelogic             .   .    .    .   .      . 
      info                    .   .    .    .   .      . 
      lineorientation         .   .    .    .   .      . 
      logicalmemory           .   .    .    .   .      . 
      logicalmemorydelay      .   .    .    .   .      . 
      logicalmemoryimmed      .   .    .    .   .      . 
      lpsspacialability       .   .    .    .   .      . 
      matrices                .   .    .    .   .      . 
      mirrecall               .   .    .    .   .      . 
      mmse                    .   .    .    .   .      . 
      nart                    .   .    .    .   .      . 
      numbercomparison        .   .    .    .   .      . 
      patterncomparison       .   .    .    .   .      . 
      picturecompletion       .   .    .    .   .      . 
      proserecall             .   .    .    .   .      . 
      psif                    .   .    .    .   .      . 
      symbol                  .   .    .    .   .      . 
      synonyms                .   .    .    .   .      . 
      trailsb                 .   .    .    .   .      . 
      univar                  .   .    .    9   .      31
      verbalfluency           .   .    .    .   .      . 
      waisgeneralknowledge    .   .    .    .   .      . 
      waispicturecompletion   .   .    .    .   .      . 
      waisvocab               .   .    .    .   .      . 
      wordlistdelay           .   .    .    .   .      . 
      wordlistimmed           .   .    .    .   .      . 
      wordlistrecog           .   .    .    .   .      . 
octo  3ms                     .   .    .    .   .      . 
      analogies               .   .    .    .   .      . 
      block                   .   .    .    4   4      . 
      bnt                     .   .    .    .   .      . 
      bostonstorydelay        .   .    .    .   .      . 
      bostonstoryimmediate    .   .    .    .   .      . 
      categories              .   .    .    .   .      . 
      clock                   .   .    .    .   .      . 
      complexideas            .   .    .    .   .      . 
      digitordering           .   .    .    .   .      . 
      digitsback              .   .    .    4   4      . 
      digitsforward           .   .    .    4   4      . 
      digitspan               .   .    .    .   .      . 
      figurecopy              .   .    .    .   .      . 
      figureid                .   .    .    .   .      . 
      figurelogic             .   .    .    4   4      . 
      info                    .   .    .    4   4      . 
      lineorientation         .   .    .    .   .      . 
      logicalmemory           .   .    .    .   .      . 
      logicalmemorydelay      .   .    .    .   .      . 
      logicalmemoryimmed      .   .    .    .   .      . 
      lpsspacialability       .   .    .    .   .      . 
      matrices                .   .    .    .   .      . 
      mirrecall               .   .    .    4   4      . 
      mmse                    .   .    .    4   4      . 
      nart                    .   .    .    .   .      . 
      numbercomparison        .   .    .    .   .      . 
      patterncomparison       .   .    .    .   .      . 
      picturecompletion       .   .    .    .   .      . 
      proserecall             .   .    .    4   4      . 
      psif                    .   .    .    4   4      . 
      symbol                  .   .    .    4   4      . 
      synonyms                .   .    .    4   4      . 
      trailsb                 .   .    .    .   .      . 
      univar                  .   .    .    .   .      . 
      verbalfluency           .   .    .    .   .      . 
      waisgeneralknowledge    .   .    .    .   .      . 
      waispicturecompletion   .   .    .    .   .      . 
      waisvocab               .   .    .    .   .      . 
      wordlistdelay           .   .    .    .   .      . 
      wordlistimmed           .   .    .    .   .      . 
      wordlistrecog           .   .    .    .   .      . 
radc  3ms                     .   .    .    .   .      . 
      analogies               .   .    .    .   .      . 
      block                   .   .    .    .   .      . 
      bnt                     3   .    .    4   .      . 
      bostonstorydelay        3   .    .    4   .      . 
      bostonstoryimmediate    3   .    .    4   .      . 
      categories              .   .    .    5   .      . 
      clock                   .   .    .    .   .      . 
      complexideas            3   .    .    4   .      . 
      digitordering           3   .    .    3   .      . 
      digitsback              4   .    .    4   .      . 
      digitsforward           3   .    .    4   .      . 
      digitspan               .   .    .    .   .      . 
      figurecopy              .   .    .    .   .      . 
      figureid                .   .    .    .   .      . 
      figurelogic             .   .    .    .   .      . 
      info                    .   .    .    .   .      . 
      lineorientation         4   .    .    5   .      . 
      logicalmemory           .   .    .    .   .      . 
      logicalmemorydelay      3   .    .    4   .      . 
      logicalmemoryimmed      3   .    .    2   .      . 
      lpsspacialability       .   .    .    .   .      . 
      matrices                4   .    .    5   .      . 
      mirrecall               .   .    .    .   .      . 
      mmse                    4   .    .    4   .      . 
      nart                    4   .    .    5   .      . 
      numbercomparison        3   .    .    4   .      . 
      patterncomparison       .   .    .    .   .      . 
      picturecompletion       .   .    .    .   .      . 
      proserecall             .   .    .    .   .      . 
      psif                    .   .    .    .   .      . 
      symbol                  4   .    .    4   .      . 
      synonyms                .   .    .    .   .      . 
      trailsb                 .   .    .    .   .      . 
      univar                  2   .    .    2   .      . 
      verbalfluency           .   .    .    .   .      . 
      waisgeneralknowledge    .   .    .    .   .      . 
      waispicturecompletion   .   .    .    .   .      . 
      waisvocab               .   .    .    .   .      . 
      wordlistdelay           3   .    .    4   .      . 
      wordlistimmed           3   .    .    4   .      . 
      wordlistrecog           3   .    .    4   .      . 
satsa 3ms                     .   .    .    .   .      . 
      analogies               8   .    .    8   .      . 
      block                   .   .    .    .   .      . 
      bnt                     .   .    .    .   .      . 
      bostonstorydelay        .   .    .    .   .      . 
      bostonstoryimmediate    .   .    .    .   .      . 
      categories              .   .    .    .   .      . 
      clock                   .   .    .    .   .      . 
      complexideas            .   .    .    .   .      . 
      digitordering           .   .    .    .   .      . 
      digitsback              .   .    .    .   .      . 
      digitsforward           .   .    .    .   .      . 
      digitspan               .   .    .    .   .      . 
      figurecopy              .   .    .    .   .      . 
      figureid                6   .    .    6   .      . 
      figurelogic             .   .    .    .   .      . 
      info                    8   .    .    8   .      . 
      lineorientation         .   .    .    .   .      . 
      logicalmemory           .   .    .    .   .      . 
      logicalmemorydelay      .   .    .    .   .      . 
      logicalmemoryimmed      .   .    .    .   .      . 
      lpsspacialability       .   .    .    .   .      . 
      matrices                .   .    .    .   .      . 
      mirrecall               .   .    .    .   .      . 
      mmse                    8   .    .    8   .      . 
      nart                    .   .    .    .   .      . 
      numbercomparison        .   .    .    .   .      . 
      patterncomparison       .   .    .    .   .      . 
      picturecompletion       .   .    .    .   .      . 
      proserecall             .   .    .    .   .      . 
      psif                    .   .    .    .   .      . 
      symbol                  8   .    .    8   .      . 
      synonyms                8   .    .    8   .      . 
      trailsb                 .   .    .    .   .      . 
      univar                  .   .    .    .   .      . 
      verbalfluency           .   .    .    .   .      . 
      waisgeneralknowledge    .   .    .    .   .      . 
      waispicturecompletion   .   .    .    .   .      . 
      waisvocab               .   .    .    .   .      . 
      wordlistdelay           .   .    .    .   .      . 
      wordlistimmed           .   .    .    .   .      . 
      wordlistrecog           .   .    .    .   .      . 
```


## Cross Measures by Study

### habc
Number of models in the **habc** study with the following combination of physical measures (columns) and cognitive measure (rows) 
```
        
         gait grip univar
  3ms    8    8    8     
  clock  9    7    8     
  symbol 8    8    8     
  univar 8    8    .     
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

### nas
Number of models in the **nas** study with the following combination of physical measures (columns) and cognitive measure (rows) 
```
                   
                    fev fvc
  categories        3   3  
  digitsback        3   2  
  figurecopy        3   3  
  mmse              3   3  
  patterncomparison 3   3  
  wordlistdelay     3   3  
  wordlistimmed     3   3  
```

### eas
Number of models in the **eas** study with the following combination of physical measures (columns) and cognitive measure (rows) 
```
               
                grip pek univar
  block         10   10  22    
  bnt           10   10  20    
  categories    10   10  20    
  digitspan     6    8   20    
  info          10   10  20    
  logicalmemory 9    10  20    
  mmse          10   10  20    
  symbol        14   12  20    
  trailsb       10   10  19    
  univar        22   22  .     
  verbalfluency 10   10  20    
  waisvocab     10   11  20    
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
  block                 6    14    
  lpsspacialability     6    8     
  picturecompletion     .    8     
  symbol                6    14    
  univar                8    9     
  verbalfluency         6    14    
  waisgeneralknowledge  6    6     
  waispicturecompletion 6    6     
```

### nuage
Number of models in the **nuage** study with the following combination of physical measures (columns) and cognitive measure (rows) 
```
        
         grip univar
  3ms    6    6     
  univar 9    31    
```






# Session Information
For the sake of documentation and reproducibility, the current report was rendered on a system using the following software.


```
Report rendered by koval_000 at 2015-06-24, 21:31 -0700
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
[1] ggplot2_1.0.1         RColorBrewer_1.1-2    scales_0.2.5          testit_0.4            knitr_1.10.5         
[6] dplyr_0.4.1           MplusAutomation_0.6-3

loaded via a namespace (and not attached):
 [1] Rcpp_0.11.6      magrittr_1.5     MASS_7.3-40      munsell_0.4.2    colorspace_1.2-6 xtable_1.7-4    
 [7] lattice_0.20-31  stringr_1.0.0    plyr_1.8.2       tcltk_3.2.0      tools_3.2.0      parallel_3.2.0  
[13] gtable_0.1.2     texreg_1.35      coda_0.17-1      DBI_0.3.1        htmltools_0.2.6  yaml_2.1.13     
[19] lazyeval_0.1.10  digest_0.6.8     assertthat_0.1   reshape2_1.4.1   formatR_1.2      rsconnect_0.3.79
[25] evaluate_0.7     gsubfn_0.6-6     rmarkdown_0.7    stringi_0.4-1    boot_1.3-16      proto_0.3-10    
```
