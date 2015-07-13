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
hrs lasa nshd obas table_1_descriptives table_2_ISR


Presently, the **total number of legally named models** supplied by the participating studies is
**1577**
: they include both *bivariate* and *univariate* models. Strings *"nophys"* and *"nocog"*, imply that the model is univariate (e.i. nocog == The particular cog predictor is "none")

<!-- Frequency counts   -->
Counting valid models in each study:

```

  eas  elsa  habc  ilse   nas nuage  octo  radc satsa 
  484   207    88   135    66    58    88   299   152 
```

```
    
     eas elsa habc ilse nas nuage octo radc satsa
  b1 218 60   48   71   48  12    88   150  152  
  u0 6   60   10   16   6   10    .    .    .    
  u1 129 57   30   48   6   36    .    149  .    
  u2 131 30   .    .    6   .     .    .    .    
```

However, for the present time, we will focus only on 
**1302**
linear models.

```

  eas  elsa  habc  ilse   nas nuage  octo  radc satsa 
  347   117    78   119    54    48    88   299   152 
```

```
    
     eas elsa habc ilse nas nuage octo radc satsa
  b1 218 60   48   71   48  12    88   150  152  
  u1 129 57   30   48   6   36    .    149  .    
```

**LINEAR  MODELS (u1, b1) ONLY BEYOND THIS POINT**

# Physical Domain

## Constructs 

Number of models that use the following **Physical contructs**

```
           
            eas elsa habc ilse nas nuage octo radc satsa
  chair     .   .    .    .    .   6     .    .    .    
  flamingo  .   .    .    .    .   6     .    .    .    
  muscle    119 27   30   41   .   18    44   .    46   
  pulmonary 119 60   .    .    54  .     44   150  106  
  tug       .   .    .    42   .   6     .    .    .    
  Univar    109 30   18   36   .   6     .    149  .    
  walking   .   .    30   .    .   6     .    .    .    
```

## Measures

Number of models that use the following **Physical measures**

```
        
         eas elsa habc ilse nas nuage octo radc satsa
  fev    .   60   .    .    54  .     .    150  106  
  gait   .   .    30   .    .   .     .    .    .    
  grip   119 27   30   41   .   18    44   .    46   
  pek    119 .    .    .    .   .     44   .    .    
  tug    .   .    .    42   .   6     .    .    .    
  univar 109 30   18   36   .   24    .    149  .    
```

## Measures by Constructs

Number of models using this **measure** of the  physical **construct**

```
        
         chair flamingo muscle pulmonary tug Univar walking
  fev    .     .        .      370       .   .      .      
  gait   .     .        .      .         .   .      30     
  grip   .     .        325    .         .   .      .      
  pek    .     .        .      163       .   .      .      
  tug    .     .        .      .         48  .      .      
  univar 6     6        .      .         .   348    6      
```

## Measures by Constructs and Studies

Number of models using this **measure** of the  physical **construct**, by study

```
              chair flamingo muscle pulmonary tug Univar walking
                                                                
eas   fev       .        .      .         .   .      .       .  
      gait      .        .      .         .   .      .       .  
      grip      .        .      119       .   .      .       .  
      pek       .        .      .         119 .      .       .  
      tug       .        .      .         .   .      .       .  
      univar    .        .      .         .   .      109     .  
elsa  fev       .        .      .         60  .      .       .  
      gait      .        .      .         .   .      .       .  
      grip      .        .      27        .   .      .       .  
      pek       .        .      .         .   .      .       .  
      tug       .        .      .         .   .      .       .  
      univar    .        .      .         .   .      30      .  
habc  fev       .        .      .         .   .      .       .  
      gait      .        .      .         .   .      .       30 
      grip      .        .      30        .   .      .       .  
      pek       .        .      .         .   .      .       .  
      tug       .        .      .         .   .      .       .  
      univar    .        .      .         .   .      18      .  
ilse  fev       .        .      .         .   .      .       .  
      gait      .        .      .         .   .      .       .  
      grip      .        .      41        .   .      .       .  
      pek       .        .      .         .   .      .       .  
      tug       .        .      .         .   42     .       .  
      univar    .        .      .         .   .      36      .  
nas   fev       .        .      .         54  .      .       .  
      gait      .        .      .         .   .      .       .  
      grip      .        .      .         .   .      .       .  
      pek       .        .      .         .   .      .       .  
      tug       .        .      .         .   .      .       .  
      univar    .        .      .         .   .      .       .  
nuage fev       .        .      .         .   .      .       .  
      gait      .        .      .         .   .      .       .  
      grip      .        .      18        .   .      .       .  
      pek       .        .      .         .   .      .       .  
      tug       .        .      .         .   6      .       .  
      univar    6        6      .         .   .      6       6  
octo  fev       .        .      .         .   .      .       .  
      gait      .        .      .         .   .      .       .  
      grip      .        .      44        .   .      .       .  
      pek       .        .      .         44  .      .       .  
      tug       .        .      .         .   .      .       .  
      univar    .        .      .         .   .      .       .  
radc  fev       .        .      .         150 .      .       .  
      gait      .        .      .         .   .      .       .  
      grip      .        .      .         .   .      .       .  
      pek       .        .      .         .   .      .       .  
      tug       .        .      .         .   .      .       .  
      univar    .        .      .         .   .      149     .  
satsa fev       .        .      .         106 .      .       .  
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
  executive     28  .    .    .    .   .     8    32   10   
  fluency       60  10   .    30   6   .     .    16   .    
  knowledge     60  .    .    12   .   .     16   16   54   
  language      30  .    .    .    .   .     .    32   .    
  memory        59  80   .    .    12  .     24   123  20   
  mental        30  .    44   .    6   18    8    30   18   
  reasoning     30  .    .    47   6   .     16   16   10   
  speed         30  .    22   18   6   .     16   32   30   
  Univar        20  27   12   12   6   30    .    .    .    
  visuospatial  .   .    .    .    .   .     .    2    10   
  workingmemory .   .    .    .    12  .     .    .    .    
```

## Measures

Number of models that use the following **Cognitive measures**

```
                         
                          eas elsa habc ilse nas nuage octo radc satsa
  3ms                     .   .    22   .    .   12    .    .    .    
  analogies               .   .    .    .    .   .     .    .    18   
  block                   30  .    .    18   .   .     8    .    10   
  bnt                     30  .    .    .    .   .     .    16   .    
  bostonstorydelay        .   .    .    .    .   .     .    16   .    
  bostonstoryimmediate    .   .    .    .    .   .     .    16   .    
  categories              30  10   .    .    6   .     .    16   .    
  clock                   .   .    22   .    .   .     .    .    .    
  complexideas            .   .    .    .    .   .     .    16   .    
  delayedrecall           .   40   .    .    6   .     .    .    .    
  digitbackwardspan       .   .    .    .    6   .     .    .    .    
  digitbackwardtotal      .   .    .    .    6   .     .    .    .    
  digitordering           .   .    .    .    .   .     .    16   .    
  digitsback              .   .    .    .    .   .     8    16   10   
  digitsforward           .   .    .    .    .   .     8    16   10   
  digitspan               30  .    .    .    .   .     .    .    .    
  digitsymbolsubstitution .   .    .    2    .   .     .    .    .    
  figurecopy              .   .    .    .    6   .     .    .    .    
  figureid                .   .    .    .    .   .     .    .    12   
  figurelogic             .   .    .    .    .   .     8    .    .    
  figurememory            .   .    .    .    .   .     .    .    10   
  info                    30  .    .    .    .   .     8    .    18   
  lineorientation         .   .    .    .    .   .     .    18   .    
  logicalmemory           29  .    .    .    .   .     .    .    .    
  logicalmemorydelay      .   .    .    .    .   .     .    12   .    
  logicalmemoryimmed      .   .    .    .    .   .     .    12   .    
  lpsspacialability       .   .    .    6    .   .     .    .    .    
  lpsspatialability       .   .    .    11   .   .     .    .    .    
  matrices                .   .    .    .    .   .     .    16   .    
  mirrecall               .   .    .    .    .   .     8    .    .    
  mmse                    30  .    .    .    6   6     8    14   18   
  nart                    .   .    .    .    .   .     .    16   .    
  nocogm                  .   .    .    .    6   .     .    .    .    
  numbercomparison        .   .    .    .    .   .     .    16   .    
  patterncomparison       .   .    .    .    6   .     .    .    .    
  proserecall             .   .    .    .    .   .     8    .    .    
  psif                    .   .    .    .    .   .     8    .    .    
  rotations               .   .    .    .    .   .     .    .    10   
  symbol                  30  .    22   16   .   .     8    16   18   
  synonyms                .   .    .    .    .   .     8    .    18   
  trailsb                 28  .    .    .    .   .     .    .    .    
  univar                  20  27   12   12   .   30    .    .    .    
  verbalfluency           30  .    .    18   .   .     .    .    .    
  waisgeneralknowledge    .   .    .    18   .   .     .    .    .    
  waispicturecompletion   .   .    .    18   .   .     .    .    .    
  waisvocab               30  .    .    .    .   .     .    .    .    
  wmslmdel                .   .    .    .    .   .     .    4    .    
  wmslmimmed              .   .    .    .    .   .     .    2    .    
  wordlistdelay           .   .    .    .    .   .     .    16   .    
  wordlistimmed           .   40   .    .    6   .     .    16   .    
  wordlistrecog           .   .    .    .    .   .     .    13   .    
```

## Measures by Constructs

Number of models using this **measure** of the  cognitive **construct**

```
                         
                          executive fluency knowledge language memory mental reasoning speed Univar visuospatial
  3ms                     .         .       .         .        .      34     .         .     .      .           
  analogies               .         .       18        .        .      .      .         .     .      .           
  block                   .         .       .         .        .      .      66        .     .      .           
  bnt                     .         .       .         46       .      .      .         .     .      .           
  bostonstorydelay        .         .       .         .        16     .      .         .     .      .           
  bostonstoryimmediate    .         .       .         .        16     .      .         .     .      .           
  categories              .         62      .         .        .      .      .         .     .      .           
  clock                   .         .       .         .        .      22     .         .     .      .           
  complexideas            .         .       .         16       .      .      .         .     .      .           
  delayedrecall           .         .       .         .        46     .      .         .     .      .           
  digitbackwardspan       .         .       .         .        .      .      .         .     .      .           
  digitbackwardtotal      .         .       .         .        .      .      .         .     .      .           
  digitordering           16        .       .         .        .      .      .         .     .      .           
  digitsback              34        .       .         .        .      .      .         .     .      .           
  digitsforward           .         .       .         .        34     .      .         .     .      .           
  digitspan               .         .       .         .        30     .      .         .     .      .           
  digitsymbolsubstitution .         .       .         .        .      .      .         2     .      .           
  figurecopy              .         .       .         .        .      .      6         .     .      .           
  figureid                .         .       .         .        .      .      .         12    .      .           
  figurelogic             .         .       .         .        .      .      8         .     .      .           
  figurememory            .         .       .         .        10     .      .         .     .      .           
  info                    .         .       56        .        .      .      .         .     .      .           
  lineorientation         .         .       .         .        .      16     .         .     .      2           
  logicalmemory           .         .       .         .        29     .      .         .     .      .           
  logicalmemorydelay      .         .       .         .        12     .      .         .     .      .           
  logicalmemoryimmed      .         .       .         .        12     .      .         .     .      .           
  lpsspacialability       .         .       .         .        .      .      6         .     .      .           
  lpsspatialability       .         6       .         .        .      .      5         .     .      .           
  matrices                .         .       .         .        .      .      16        .     .      .           
  mirrecall               .         .       .         .        8      .      .         .     .      .           
  mmse                    .         .       .         .        .      82     .         .     .      .           
  nart                    .         .       16        .        .      .      .         .     .      .           
  nocogm                  .         .       .         .        .      .      .         .     6      .           
  numbercomparison        .         .       .         .        .      .      .         16    .      .           
  patterncomparison       .         .       .         .        .      .      .         6     .      .           
  proserecall             .         .       .         .        8      .      .         .     .      .           
  psif                    .         .       .         .        .      .      .         8     .      .           
  rotations               .         .       .         .        .      .      .         .     .      10          
  symbol                  .         .       .         .        .      .      .         110   .      .           
  synonyms                .         .       26        .        .      .      .         .     .      .           
  trailsb                 28        .       .         .        .      .      .         .     .      .           
  univar                  .         .       .         .        .      .      .         .     101    .           
  verbalfluency           .         48      .         .        .      .      .         .     .      .           
  waisgeneralknowledge    .         6       12        .        .      .      .         .     .      .           
  waispicturecompletion   .         .       .         .        .      .      18        .     .      .           
  waisvocab               .         .       30        .        .      .      .         .     .      .           
  wmslmdel                .         .       .         .        4      .      .         .     .      .           
  wmslmimmed              .         .       .         .        2      .      .         .     .      .           
  wordlistdelay           .         .       .         .        16     .      .         .     .      .           
  wordlistimmed           .         .       .         .        62     .      .         .     .      .           
  wordlistrecog           .         .       .         .        13     .      .         .     .      .           
                         
                          workingmemory
  3ms                     .            
  analogies               .            
  block                   .            
  bnt                     .            
  bostonstorydelay        .            
  bostonstoryimmediate    .            
  categories              .            
  clock                   .            
  complexideas            .            
  delayedrecall           .            
  digitbackwardspan       6            
  digitbackwardtotal      6            
  digitordering           .            
  digitsback              .            
  digitsforward           .            
  digitspan               .            
  digitsymbolsubstitution .            
  figurecopy              .            
  figureid                .            
  figurelogic             .            
  figurememory            .            
  info                    .            
  lineorientation         .            
  logicalmemory           .            
  logicalmemorydelay      .            
  logicalmemoryimmed      .            
  lpsspacialability       .            
  lpsspatialability       .            
  matrices                .            
  mirrecall               .            
  mmse                    .            
  nart                    .            
  nocogm                  .            
  numbercomparison        .            
  patterncomparison       .            
  proserecall             .            
  psif                    .            
  rotations               .            
  symbol                  .            
  synonyms                .            
  trailsb                 .            
  univar                  .            
  verbalfluency           .            
  waisgeneralknowledge    .            
  waispicturecompletion   .            
  waisvocab               .            
  wmslmdel                .            
  wmslmimmed              .            
  wordlistdelay           .            
  wordlistimmed           .            
  wordlistrecog           .            
```

## Measures by Constructs and Studies

Number of models using this **measure** of the  cognitive **construct**, by study

```
                               executive fluency knowledge language memory mental reasoning speed Univar visuospatial workingmemory
                                                                                                                                   
eas   3ms                             .       .         .        .      .      .         .     .      .            .             . 
      analogies                       .       .         .        .      .      .         .     .      .            .             . 
      block                           .       .         .        .      .      .         30    .      .            .             . 
      bnt                             .       .         .        30     .      .         .     .      .            .             . 
      bostonstorydelay                .       .         .        .      .      .         .     .      .            .             . 
      bostonstoryimmediate            .       .         .        .      .      .         .     .      .            .             . 
      categories                      .       30        .        .      .      .         .     .      .            .             . 
      clock                           .       .         .        .      .      .         .     .      .            .             . 
      complexideas                    .       .         .        .      .      .         .     .      .            .             . 
      delayedrecall                   .       .         .        .      .      .         .     .      .            .             . 
      digitbackwardspan               .       .         .        .      .      .         .     .      .            .             . 
      digitbackwardtotal              .       .         .        .      .      .         .     .      .            .             . 
      digitordering                   .       .         .        .      .      .         .     .      .            .             . 
      digitsback                      .       .         .        .      .      .         .     .      .            .             . 
      digitsforward                   .       .         .        .      .      .         .     .      .            .             . 
      digitspan                       .       .         .        .      30     .         .     .      .            .             . 
      digitsymbolsubstitution         .       .         .        .      .      .         .     .      .            .             . 
      figurecopy                      .       .         .        .      .      .         .     .      .            .             . 
      figureid                        .       .         .        .      .      .         .     .      .            .             . 
      figurelogic                     .       .         .        .      .      .         .     .      .            .             . 
      figurememory                    .       .         .        .      .      .         .     .      .            .             . 
      info                            .       .         30       .      .      .         .     .      .            .             . 
      lineorientation                 .       .         .        .      .      .         .     .      .            .             . 
      logicalmemory                   .       .         .        .      29     .         .     .      .            .             . 
      logicalmemorydelay              .       .         .        .      .      .         .     .      .            .             . 
      logicalmemoryimmed              .       .         .        .      .      .         .     .      .            .             . 
      lpsspacialability               .       .         .        .      .      .         .     .      .            .             . 
      lpsspatialability               .       .         .        .      .      .         .     .      .            .             . 
      matrices                        .       .         .        .      .      .         .     .      .            .             . 
      mirrecall                       .       .         .        .      .      .         .     .      .            .             . 
      mmse                            .       .         .        .      .      30        .     .      .            .             . 
      nart                            .       .         .        .      .      .         .     .      .            .             . 
      nocogm                          .       .         .        .      .      .         .     .      .            .             . 
      numbercomparison                .       .         .        .      .      .         .     .      .            .             . 
      patterncomparison               .       .         .        .      .      .         .     .      .            .             . 
      proserecall                     .       .         .        .      .      .         .     .      .            .             . 
      psif                            .       .         .        .      .      .         .     .      .            .             . 
      rotations                       .       .         .        .      .      .         .     .      .            .             . 
      symbol                          .       .         .        .      .      .         .     30     .            .             . 
      synonyms                        .       .         .        .      .      .         .     .      .            .             . 
      trailsb                         28      .         .        .      .      .         .     .      .            .             . 
      univar                          .       .         .        .      .      .         .     .      20           .             . 
      verbalfluency                   .       30        .        .      .      .         .     .      .            .             . 
      waisgeneralknowledge            .       .         .        .      .      .         .     .      .            .             . 
      waispicturecompletion           .       .         .        .      .      .         .     .      .            .             . 
      waisvocab                       .       .         30       .      .      .         .     .      .            .             . 
      wmslmdel                        .       .         .        .      .      .         .     .      .            .             . 
      wmslmimmed                      .       .         .        .      .      .         .     .      .            .             . 
      wordlistdelay                   .       .         .        .      .      .         .     .      .            .             . 
      wordlistimmed                   .       .         .        .      .      .         .     .      .            .             . 
      wordlistrecog                   .       .         .        .      .      .         .     .      .            .             . 
elsa  3ms                             .       .         .        .      .      .         .     .      .            .             . 
      analogies                       .       .         .        .      .      .         .     .      .            .             . 
      block                           .       .         .        .      .      .         .     .      .            .             . 
      bnt                             .       .         .        .      .      .         .     .      .            .             . 
      bostonstorydelay                .       .         .        .      .      .         .     .      .            .             . 
      bostonstoryimmediate            .       .         .        .      .      .         .     .      .            .             . 
      categories                      .       10        .        .      .      .         .     .      .            .             . 
      clock                           .       .         .        .      .      .         .     .      .            .             . 
      complexideas                    .       .         .        .      .      .         .     .      .            .             . 
      delayedrecall                   .       .         .        .      40     .         .     .      .            .             . 
      digitbackwardspan               .       .         .        .      .      .         .     .      .            .             . 
      digitbackwardtotal              .       .         .        .      .      .         .     .      .            .             . 
      digitordering                   .       .         .        .      .      .         .     .      .            .             . 
      digitsback                      .       .         .        .      .      .         .     .      .            .             . 
      digitsforward                   .       .         .        .      .      .         .     .      .            .             . 
      digitspan                       .       .         .        .      .      .         .     .      .            .             . 
      digitsymbolsubstitution         .       .         .        .      .      .         .     .      .            .             . 
      figurecopy                      .       .         .        .      .      .         .     .      .            .             . 
      figureid                        .       .         .        .      .      .         .     .      .            .             . 
      figurelogic                     .       .         .        .      .      .         .     .      .            .             . 
      figurememory                    .       .         .        .      .      .         .     .      .            .             . 
      info                            .       .         .        .      .      .         .     .      .            .             . 
      lineorientation                 .       .         .        .      .      .         .     .      .            .             . 
      logicalmemory                   .       .         .        .      .      .         .     .      .            .             . 
      logicalmemorydelay              .       .         .        .      .      .         .     .      .            .             . 
      logicalmemoryimmed              .       .         .        .      .      .         .     .      .            .             . 
      lpsspacialability               .       .         .        .      .      .         .     .      .            .             . 
      lpsspatialability               .       .         .        .      .      .         .     .      .            .             . 
      matrices                        .       .         .        .      .      .         .     .      .            .             . 
      mirrecall                       .       .         .        .      .      .         .     .      .            .             . 
      mmse                            .       .         .        .      .      .         .     .      .            .             . 
      nart                            .       .         .        .      .      .         .     .      .            .             . 
      nocogm                          .       .         .        .      .      .         .     .      .            .             . 
      numbercomparison                .       .         .        .      .      .         .     .      .            .             . 
      patterncomparison               .       .         .        .      .      .         .     .      .            .             . 
      proserecall                     .       .         .        .      .      .         .     .      .            .             . 
      psif                            .       .         .        .      .      .         .     .      .            .             . 
      rotations                       .       .         .        .      .      .         .     .      .            .             . 
      symbol                          .       .         .        .      .      .         .     .      .            .             . 
      synonyms                        .       .         .        .      .      .         .     .      .            .             . 
      trailsb                         .       .         .        .      .      .         .     .      .            .             . 
      univar                          .       .         .        .      .      .         .     .      27           .             . 
      verbalfluency                   .       .         .        .      .      .         .     .      .            .             . 
      waisgeneralknowledge            .       .         .        .      .      .         .     .      .            .             . 
      waispicturecompletion           .       .         .        .      .      .         .     .      .            .             . 
      waisvocab                       .       .         .        .      .      .         .     .      .            .             . 
      wmslmdel                        .       .         .        .      .      .         .     .      .            .             . 
      wmslmimmed                      .       .         .        .      .      .         .     .      .            .             . 
      wordlistdelay                   .       .         .        .      .      .         .     .      .            .             . 
      wordlistimmed                   .       .         .        .      40     .         .     .      .            .             . 
      wordlistrecog                   .       .         .        .      .      .         .     .      .            .             . 
habc  3ms                             .       .         .        .      .      22        .     .      .            .             . 
      analogies                       .       .         .        .      .      .         .     .      .            .             . 
      block                           .       .         .        .      .      .         .     .      .            .             . 
      bnt                             .       .         .        .      .      .         .     .      .            .             . 
      bostonstorydelay                .       .         .        .      .      .         .     .      .            .             . 
      bostonstoryimmediate            .       .         .        .      .      .         .     .      .            .             . 
      categories                      .       .         .        .      .      .         .     .      .            .             . 
      clock                           .       .         .        .      .      22        .     .      .            .             . 
      complexideas                    .       .         .        .      .      .         .     .      .            .             . 
      delayedrecall                   .       .         .        .      .      .         .     .      .            .             . 
      digitbackwardspan               .       .         .        .      .      .         .     .      .            .             . 
      digitbackwardtotal              .       .         .        .      .      .         .     .      .            .             . 
      digitordering                   .       .         .        .      .      .         .     .      .            .             . 
      digitsback                      .       .         .        .      .      .         .     .      .            .             . 
      digitsforward                   .       .         .        .      .      .         .     .      .            .             . 
      digitspan                       .       .         .        .      .      .         .     .      .            .             . 
      digitsymbolsubstitution         .       .         .        .      .      .         .     .      .            .             . 
      figurecopy                      .       .         .        .      .      .         .     .      .            .             . 
      figureid                        .       .         .        .      .      .         .     .      .            .             . 
      figurelogic                     .       .         .        .      .      .         .     .      .            .             . 
      figurememory                    .       .         .        .      .      .         .     .      .            .             . 
      info                            .       .         .        .      .      .         .     .      .            .             . 
      lineorientation                 .       .         .        .      .      .         .     .      .            .             . 
      logicalmemory                   .       .         .        .      .      .         .     .      .            .             . 
      logicalmemorydelay              .       .         .        .      .      .         .     .      .            .             . 
      logicalmemoryimmed              .       .         .        .      .      .         .     .      .            .             . 
      lpsspacialability               .       .         .        .      .      .         .     .      .            .             . 
      lpsspatialability               .       .         .        .      .      .         .     .      .            .             . 
      matrices                        .       .         .        .      .      .         .     .      .            .             . 
      mirrecall                       .       .         .        .      .      .         .     .      .            .             . 
      mmse                            .       .         .        .      .      .         .     .      .            .             . 
      nart                            .       .         .        .      .      .         .     .      .            .             . 
      nocogm                          .       .         .        .      .      .         .     .      .            .             . 
      numbercomparison                .       .         .        .      .      .         .     .      .            .             . 
      patterncomparison               .       .         .        .      .      .         .     .      .            .             . 
      proserecall                     .       .         .        .      .      .         .     .      .            .             . 
      psif                            .       .         .        .      .      .         .     .      .            .             . 
      rotations                       .       .         .        .      .      .         .     .      .            .             . 
      symbol                          .       .         .        .      .      .         .     22     .            .             . 
      synonyms                        .       .         .        .      .      .         .     .      .            .             . 
      trailsb                         .       .         .        .      .      .         .     .      .            .             . 
      univar                          .       .         .        .      .      .         .     .      12           .             . 
      verbalfluency                   .       .         .        .      .      .         .     .      .            .             . 
      waisgeneralknowledge            .       .         .        .      .      .         .     .      .            .             . 
      waispicturecompletion           .       .         .        .      .      .         .     .      .            .             . 
      waisvocab                       .       .         .        .      .      .         .     .      .            .             . 
      wmslmdel                        .       .         .        .      .      .         .     .      .            .             . 
      wmslmimmed                      .       .         .        .      .      .         .     .      .            .             . 
      wordlistdelay                   .       .         .        .      .      .         .     .      .            .             . 
      wordlistimmed                   .       .         .        .      .      .         .     .      .            .             . 
      wordlistrecog                   .       .         .        .      .      .         .     .      .            .             . 
ilse  3ms                             .       .         .        .      .      .         .     .      .            .             . 
      analogies                       .       .         .        .      .      .         .     .      .            .             . 
      block                           .       .         .        .      .      .         18    .      .            .             . 
      bnt                             .       .         .        .      .      .         .     .      .            .             . 
      bostonstorydelay                .       .         .        .      .      .         .     .      .            .             . 
      bostonstoryimmediate            .       .         .        .      .      .         .     .      .            .             . 
      categories                      .       .         .        .      .      .         .     .      .            .             . 
      clock                           .       .         .        .      .      .         .     .      .            .             . 
      complexideas                    .       .         .        .      .      .         .     .      .            .             . 
      delayedrecall                   .       .         .        .      .      .         .     .      .            .             . 
      digitbackwardspan               .       .         .        .      .      .         .     .      .            .             . 
      digitbackwardtotal              .       .         .        .      .      .         .     .      .            .             . 
      digitordering                   .       .         .        .      .      .         .     .      .            .             . 
      digitsback                      .       .         .        .      .      .         .     .      .            .             . 
      digitsforward                   .       .         .        .      .      .         .     .      .            .             . 
      digitspan                       .       .         .        .      .      .         .     .      .            .             . 
      digitsymbolsubstitution         .       .         .        .      .      .         .     2      .            .             . 
      figurecopy                      .       .         .        .      .      .         .     .      .            .             . 
      figureid                        .       .         .        .      .      .         .     .      .            .             . 
      figurelogic                     .       .         .        .      .      .         .     .      .            .             . 
      figurememory                    .       .         .        .      .      .         .     .      .            .             . 
      info                            .       .         .        .      .      .         .     .      .            .             . 
      lineorientation                 .       .         .        .      .      .         .     .      .            .             . 
      logicalmemory                   .       .         .        .      .      .         .     .      .            .             . 
      logicalmemorydelay              .       .         .        .      .      .         .     .      .            .             . 
      logicalmemoryimmed              .       .         .        .      .      .         .     .      .            .             . 
      lpsspacialability               .       .         .        .      .      .         6     .      .            .             . 
      lpsspatialability               .       6         .        .      .      .         5     .      .            .             . 
      matrices                        .       .         .        .      .      .         .     .      .            .             . 
      mirrecall                       .       .         .        .      .      .         .     .      .            .             . 
      mmse                            .       .         .        .      .      .         .     .      .            .             . 
      nart                            .       .         .        .      .      .         .     .      .            .             . 
      nocogm                          .       .         .        .      .      .         .     .      .            .             . 
      numbercomparison                .       .         .        .      .      .         .     .      .            .             . 
      patterncomparison               .       .         .        .      .      .         .     .      .            .             . 
      proserecall                     .       .         .        .      .      .         .     .      .            .             . 
      psif                            .       .         .        .      .      .         .     .      .            .             . 
      rotations                       .       .         .        .      .      .         .     .      .            .             . 
      symbol                          .       .         .        .      .      .         .     16     .            .             . 
      synonyms                        .       .         .        .      .      .         .     .      .            .             . 
      trailsb                         .       .         .        .      .      .         .     .      .            .             . 
      univar                          .       .         .        .      .      .         .     .      12           .             . 
      verbalfluency                   .       18        .        .      .      .         .     .      .            .             . 
      waisgeneralknowledge            .       6         12       .      .      .         .     .      .            .             . 
      waispicturecompletion           .       .         .        .      .      .         18    .      .            .             . 
      waisvocab                       .       .         .        .      .      .         .     .      .            .             . 
      wmslmdel                        .       .         .        .      .      .         .     .      .            .             . 
      wmslmimmed                      .       .         .        .      .      .         .     .      .            .             . 
      wordlistdelay                   .       .         .        .      .      .         .     .      .            .             . 
      wordlistimmed                   .       .         .        .      .      .         .     .      .            .             . 
      wordlistrecog                   .       .         .        .      .      .         .     .      .            .             . 
nas   3ms                             .       .         .        .      .      .         .     .      .            .             . 
      analogies                       .       .         .        .      .      .         .     .      .            .             . 
      block                           .       .         .        .      .      .         .     .      .            .             . 
      bnt                             .       .         .        .      .      .         .     .      .            .             . 
      bostonstorydelay                .       .         .        .      .      .         .     .      .            .             . 
      bostonstoryimmediate            .       .         .        .      .      .         .     .      .            .             . 
      categories                      .       6         .        .      .      .         .     .      .            .             . 
      clock                           .       .         .        .      .      .         .     .      .            .             . 
      complexideas                    .       .         .        .      .      .         .     .      .            .             . 
      delayedrecall                   .       .         .        .      6      .         .     .      .            .             . 
      digitbackwardspan               .       .         .        .      .      .         .     .      .            .             6 
      digitbackwardtotal              .       .         .        .      .      .         .     .      .            .             6 
      digitordering                   .       .         .        .      .      .         .     .      .            .             . 
      digitsback                      .       .         .        .      .      .         .     .      .            .             . 
      digitsforward                   .       .         .        .      .      .         .     .      .            .             . 
      digitspan                       .       .         .        .      .      .         .     .      .            .             . 
      digitsymbolsubstitution         .       .         .        .      .      .         .     .      .            .             . 
      figurecopy                      .       .         .        .      .      .         6     .      .            .             . 
      figureid                        .       .         .        .      .      .         .     .      .            .             . 
      figurelogic                     .       .         .        .      .      .         .     .      .            .             . 
      figurememory                    .       .         .        .      .      .         .     .      .            .             . 
      info                            .       .         .        .      .      .         .     .      .            .             . 
      lineorientation                 .       .         .        .      .      .         .     .      .            .             . 
      logicalmemory                   .       .         .        .      .      .         .     .      .            .             . 
      logicalmemorydelay              .       .         .        .      .      .         .     .      .            .             . 
      logicalmemoryimmed              .       .         .        .      .      .         .     .      .            .             . 
      lpsspacialability               .       .         .        .      .      .         .     .      .            .             . 
      lpsspatialability               .       .         .        .      .      .         .     .      .            .             . 
      matrices                        .       .         .        .      .      .         .     .      .            .             . 
      mirrecall                       .       .         .        .      .      .         .     .      .            .             . 
      mmse                            .       .         .        .      .      6         .     .      .            .             . 
      nart                            .       .         .        .      .      .         .     .      .            .             . 
      nocogm                          .       .         .        .      .      .         .     .      6            .             . 
      numbercomparison                .       .         .        .      .      .         .     .      .            .             . 
      patterncomparison               .       .         .        .      .      .         .     6      .            .             . 
      proserecall                     .       .         .        .      .      .         .     .      .            .             . 
      psif                            .       .         .        .      .      .         .     .      .            .             . 
      rotations                       .       .         .        .      .      .         .     .      .            .             . 
      symbol                          .       .         .        .      .      .         .     .      .            .             . 
      synonyms                        .       .         .        .      .      .         .     .      .            .             . 
      trailsb                         .       .         .        .      .      .         .     .      .            .             . 
      univar                          .       .         .        .      .      .         .     .      .            .             . 
      verbalfluency                   .       .         .        .      .      .         .     .      .            .             . 
      waisgeneralknowledge            .       .         .        .      .      .         .     .      .            .             . 
      waispicturecompletion           .       .         .        .      .      .         .     .      .            .             . 
      waisvocab                       .       .         .        .      .      .         .     .      .            .             . 
      wmslmdel                        .       .         .        .      .      .         .     .      .            .             . 
      wmslmimmed                      .       .         .        .      .      .         .     .      .            .             . 
      wordlistdelay                   .       .         .        .      .      .         .     .      .            .             . 
      wordlistimmed                   .       .         .        .      6      .         .     .      .            .             . 
      wordlistrecog                   .       .         .        .      .      .         .     .      .            .             . 
nuage 3ms                             .       .         .        .      .      12        .     .      .            .             . 
      analogies                       .       .         .        .      .      .         .     .      .            .             . 
      block                           .       .         .        .      .      .         .     .      .            .             . 
      bnt                             .       .         .        .      .      .         .     .      .            .             . 
      bostonstorydelay                .       .         .        .      .      .         .     .      .            .             . 
      bostonstoryimmediate            .       .         .        .      .      .         .     .      .            .             . 
      categories                      .       .         .        .      .      .         .     .      .            .             . 
      clock                           .       .         .        .      .      .         .     .      .            .             . 
      complexideas                    .       .         .        .      .      .         .     .      .            .             . 
      delayedrecall                   .       .         .        .      .      .         .     .      .            .             . 
      digitbackwardspan               .       .         .        .      .      .         .     .      .            .             . 
      digitbackwardtotal              .       .         .        .      .      .         .     .      .            .             . 
      digitordering                   .       .         .        .      .      .         .     .      .            .             . 
      digitsback                      .       .         .        .      .      .         .     .      .            .             . 
      digitsforward                   .       .         .        .      .      .         .     .      .            .             . 
      digitspan                       .       .         .        .      .      .         .     .      .            .             . 
      digitsymbolsubstitution         .       .         .        .      .      .         .     .      .            .             . 
      figurecopy                      .       .         .        .      .      .         .     .      .            .             . 
      figureid                        .       .         .        .      .      .         .     .      .            .             . 
      figurelogic                     .       .         .        .      .      .         .     .      .            .             . 
      figurememory                    .       .         .        .      .      .         .     .      .            .             . 
      info                            .       .         .        .      .      .         .     .      .            .             . 
      lineorientation                 .       .         .        .      .      .         .     .      .            .             . 
      logicalmemory                   .       .         .        .      .      .         .     .      .            .             . 
      logicalmemorydelay              .       .         .        .      .      .         .     .      .            .             . 
      logicalmemoryimmed              .       .         .        .      .      .         .     .      .            .             . 
      lpsspacialability               .       .         .        .      .      .         .     .      .            .             . 
      lpsspatialability               .       .         .        .      .      .         .     .      .            .             . 
      matrices                        .       .         .        .      .      .         .     .      .            .             . 
      mirrecall                       .       .         .        .      .      .         .     .      .            .             . 
      mmse                            .       .         .        .      .      6         .     .      .            .             . 
      nart                            .       .         .        .      .      .         .     .      .            .             . 
      nocogm                          .       .         .        .      .      .         .     .      .            .             . 
      numbercomparison                .       .         .        .      .      .         .     .      .            .             . 
      patterncomparison               .       .         .        .      .      .         .     .      .            .             . 
      proserecall                     .       .         .        .      .      .         .     .      .            .             . 
      psif                            .       .         .        .      .      .         .     .      .            .             . 
      rotations                       .       .         .        .      .      .         .     .      .            .             . 
      symbol                          .       .         .        .      .      .         .     .      .            .             . 
      synonyms                        .       .         .        .      .      .         .     .      .            .             . 
      trailsb                         .       .         .        .      .      .         .     .      .            .             . 
      univar                          .       .         .        .      .      .         .     .      30           .             . 
      verbalfluency                   .       .         .        .      .      .         .     .      .            .             . 
      waisgeneralknowledge            .       .         .        .      .      .         .     .      .            .             . 
      waispicturecompletion           .       .         .        .      .      .         .     .      .            .             . 
      waisvocab                       .       .         .        .      .      .         .     .      .            .             . 
      wmslmdel                        .       .         .        .      .      .         .     .      .            .             . 
      wmslmimmed                      .       .         .        .      .      .         .     .      .            .             . 
      wordlistdelay                   .       .         .        .      .      .         .     .      .            .             . 
      wordlistimmed                   .       .         .        .      .      .         .     .      .            .             . 
      wordlistrecog                   .       .         .        .      .      .         .     .      .            .             . 
octo  3ms                             .       .         .        .      .      .         .     .      .            .             . 
      analogies                       .       .         .        .      .      .         .     .      .            .             . 
      block                           .       .         .        .      .      .         8     .      .            .             . 
      bnt                             .       .         .        .      .      .         .     .      .            .             . 
      bostonstorydelay                .       .         .        .      .      .         .     .      .            .             . 
      bostonstoryimmediate            .       .         .        .      .      .         .     .      .            .             . 
      categories                      .       .         .        .      .      .         .     .      .            .             . 
      clock                           .       .         .        .      .      .         .     .      .            .             . 
      complexideas                    .       .         .        .      .      .         .     .      .            .             . 
      delayedrecall                   .       .         .        .      .      .         .     .      .            .             . 
      digitbackwardspan               .       .         .        .      .      .         .     .      .            .             . 
      digitbackwardtotal              .       .         .        .      .      .         .     .      .            .             . 
      digitordering                   .       .         .        .      .      .         .     .      .            .             . 
      digitsback                      8       .         .        .      .      .         .     .      .            .             . 
      digitsforward                   .       .         .        .      8      .         .     .      .            .             . 
      digitspan                       .       .         .        .      .      .         .     .      .            .             . 
      digitsymbolsubstitution         .       .         .        .      .      .         .     .      .            .             . 
      figurecopy                      .       .         .        .      .      .         .     .      .            .             . 
      figureid                        .       .         .        .      .      .         .     .      .            .             . 
      figurelogic                     .       .         .        .      .      .         8     .      .            .             . 
      figurememory                    .       .         .        .      .      .         .     .      .            .             . 
      info                            .       .         8        .      .      .         .     .      .            .             . 
      lineorientation                 .       .         .        .      .      .         .     .      .            .             . 
      logicalmemory                   .       .         .        .      .      .         .     .      .            .             . 
      logicalmemorydelay              .       .         .        .      .      .         .     .      .            .             . 
      logicalmemoryimmed              .       .         .        .      .      .         .     .      .            .             . 
      lpsspacialability               .       .         .        .      .      .         .     .      .            .             . 
      lpsspatialability               .       .         .        .      .      .         .     .      .            .             . 
      matrices                        .       .         .        .      .      .         .     .      .            .             . 
      mirrecall                       .       .         .        .      8      .         .     .      .            .             . 
      mmse                            .       .         .        .      .      8         .     .      .            .             . 
      nart                            .       .         .        .      .      .         .     .      .            .             . 
      nocogm                          .       .         .        .      .      .         .     .      .            .             . 
      numbercomparison                .       .         .        .      .      .         .     .      .            .             . 
      patterncomparison               .       .         .        .      .      .         .     .      .            .             . 
      proserecall                     .       .         .        .      8      .         .     .      .            .             . 
      psif                            .       .         .        .      .      .         .     8      .            .             . 
      rotations                       .       .         .        .      .      .         .     .      .            .             . 
      symbol                          .       .         .        .      .      .         .     8      .            .             . 
      synonyms                        .       .         8        .      .      .         .     .      .            .             . 
      trailsb                         .       .         .        .      .      .         .     .      .            .             . 
      univar                          .       .         .        .      .      .         .     .      .            .             . 
      verbalfluency                   .       .         .        .      .      .         .     .      .            .             . 
      waisgeneralknowledge            .       .         .        .      .      .         .     .      .            .             . 
      waispicturecompletion           .       .         .        .      .      .         .     .      .            .             . 
      waisvocab                       .       .         .        .      .      .         .     .      .            .             . 
      wmslmdel                        .       .         .        .      .      .         .     .      .            .             . 
      wmslmimmed                      .       .         .        .      .      .         .     .      .            .             . 
      wordlistdelay                   .       .         .        .      .      .         .     .      .            .             . 
      wordlistimmed                   .       .         .        .      .      .         .     .      .            .             . 
      wordlistrecog                   .       .         .        .      .      .         .     .      .            .             . 
radc  3ms                             .       .         .        .      .      .         .     .      .            .             . 
      analogies                       .       .         .        .      .      .         .     .      .            .             . 
      block                           .       .         .        .      .      .         .     .      .            .             . 
      bnt                             .       .         .        16     .      .         .     .      .            .             . 
      bostonstorydelay                .       .         .        .      16     .         .     .      .            .             . 
      bostonstoryimmediate            .       .         .        .      16     .         .     .      .            .             . 
      categories                      .       16        .        .      .      .         .     .      .            .             . 
      clock                           .       .         .        .      .      .         .     .      .            .             . 
      complexideas                    .       .         .        16     .      .         .     .      .            .             . 
      delayedrecall                   .       .         .        .      .      .         .     .      .            .             . 
      digitbackwardspan               .       .         .        .      .      .         .     .      .            .             . 
      digitbackwardtotal              .       .         .        .      .      .         .     .      .            .             . 
      digitordering                   16      .         .        .      .      .         .     .      .            .             . 
      digitsback                      16      .         .        .      .      .         .     .      .            .             . 
      digitsforward                   .       .         .        .      16     .         .     .      .            .             . 
      digitspan                       .       .         .        .      .      .         .     .      .            .             . 
      digitsymbolsubstitution         .       .         .        .      .      .         .     .      .            .             . 
      figurecopy                      .       .         .        .      .      .         .     .      .            .             . 
      figureid                        .       .         .        .      .      .         .     .      .            .             . 
      figurelogic                     .       .         .        .      .      .         .     .      .            .             . 
      figurememory                    .       .         .        .      .      .         .     .      .            .             . 
      info                            .       .         .        .      .      .         .     .      .            .             . 
      lineorientation                 .       .         .        .      .      16        .     .      .            2             . 
      logicalmemory                   .       .         .        .      .      .         .     .      .            .             . 
      logicalmemorydelay              .       .         .        .      12     .         .     .      .            .             . 
      logicalmemoryimmed              .       .         .        .      12     .         .     .      .            .             . 
      lpsspacialability               .       .         .        .      .      .         .     .      .            .             . 
      lpsspatialability               .       .         .        .      .      .         .     .      .            .             . 
      matrices                        .       .         .        .      .      .         16    .      .            .             . 
      mirrecall                       .       .         .        .      .      .         .     .      .            .             . 
      mmse                            .       .         .        .      .      14        .     .      .            .             . 
      nart                            .       .         16       .      .      .         .     .      .            .             . 
      nocogm                          .       .         .        .      .      .         .     .      .            .             . 
      numbercomparison                .       .         .        .      .      .         .     16     .            .             . 
      patterncomparison               .       .         .        .      .      .         .     .      .            .             . 
      proserecall                     .       .         .        .      .      .         .     .      .            .             . 
      psif                            .       .         .        .      .      .         .     .      .            .             . 
      rotations                       .       .         .        .      .      .         .     .      .            .             . 
      symbol                          .       .         .        .      .      .         .     16     .            .             . 
      synonyms                        .       .         .        .      .      .         .     .      .            .             . 
      trailsb                         .       .         .        .      .      .         .     .      .            .             . 
      univar                          .       .         .        .      .      .         .     .      .            .             . 
      verbalfluency                   .       .         .        .      .      .         .     .      .            .             . 
      waisgeneralknowledge            .       .         .        .      .      .         .     .      .            .             . 
      waispicturecompletion           .       .         .        .      .      .         .     .      .            .             . 
      waisvocab                       .       .         .        .      .      .         .     .      .            .             . 
      wmslmdel                        .       .         .        .      4      .         .     .      .            .             . 
      wmslmimmed                      .       .         .        .      2      .         .     .      .            .             . 
      wordlistdelay                   .       .         .        .      16     .         .     .      .            .             . 
      wordlistimmed                   .       .         .        .      16     .         .     .      .            .             . 
      wordlistrecog                   .       .         .        .      13     .         .     .      .            .             . 
satsa 3ms                             .       .         .        .      .      .         .     .      .            .             . 
      analogies                       .       .         18       .      .      .         .     .      .            .             . 
      block                           .       .         .        .      .      .         10    .      .            .             . 
      bnt                             .       .         .        .      .      .         .     .      .            .             . 
      bostonstorydelay                .       .         .        .      .      .         .     .      .            .             . 
      bostonstoryimmediate            .       .         .        .      .      .         .     .      .            .             . 
      categories                      .       .         .        .      .      .         .     .      .            .             . 
      clock                           .       .         .        .      .      .         .     .      .            .             . 
      complexideas                    .       .         .        .      .      .         .     .      .            .             . 
      delayedrecall                   .       .         .        .      .      .         .     .      .            .             . 
      digitbackwardspan               .       .         .        .      .      .         .     .      .            .             . 
      digitbackwardtotal              .       .         .        .      .      .         .     .      .            .             . 
      digitordering                   .       .         .        .      .      .         .     .      .            .             . 
      digitsback                      10      .         .        .      .      .         .     .      .            .             . 
      digitsforward                   .       .         .        .      10     .         .     .      .            .             . 
      digitspan                       .       .         .        .      .      .         .     .      .            .             . 
      digitsymbolsubstitution         .       .         .        .      .      .         .     .      .            .             . 
      figurecopy                      .       .         .        .      .      .         .     .      .            .             . 
      figureid                        .       .         .        .      .      .         .     12     .            .             . 
      figurelogic                     .       .         .        .      .      .         .     .      .            .             . 
      figurememory                    .       .         .        .      10     .         .     .      .            .             . 
      info                            .       .         18       .      .      .         .     .      .            .             . 
      lineorientation                 .       .         .        .      .      .         .     .      .            .             . 
      logicalmemory                   .       .         .        .      .      .         .     .      .            .             . 
      logicalmemorydelay              .       .         .        .      .      .         .     .      .            .             . 
      logicalmemoryimmed              .       .         .        .      .      .         .     .      .            .             . 
      lpsspacialability               .       .         .        .      .      .         .     .      .            .             . 
      lpsspatialability               .       .         .        .      .      .         .     .      .            .             . 
      matrices                        .       .         .        .      .      .         .     .      .            .             . 
      mirrecall                       .       .         .        .      .      .         .     .      .            .             . 
      mmse                            .       .         .        .      .      18        .     .      .            .             . 
      nart                            .       .         .        .      .      .         .     .      .            .             . 
      nocogm                          .       .         .        .      .      .         .     .      .            .             . 
      numbercomparison                .       .         .        .      .      .         .     .      .            .             . 
      patterncomparison               .       .         .        .      .      .         .     .      .            .             . 
      proserecall                     .       .         .        .      .      .         .     .      .            .             . 
      psif                            .       .         .        .      .      .         .     .      .            .             . 
      rotations                       .       .         .        .      .      .         .     .      .            10            . 
      symbol                          .       .         .        .      .      .         .     18     .            .             . 
      synonyms                        .       .         18       .      .      .         .     .      .            .             . 
      trailsb                         .       .         .        .      .      .         .     .      .            .             . 
      univar                          .       .         .        .      .      .         .     .      .            .             . 
      verbalfluency                   .       .         .        .      .      .         .     .      .            .             . 
      waisgeneralknowledge            .       .         .        .      .      .         .     .      .            .             . 
      waispicturecompletion           .       .         .        .      .      .         .     .      .            .             . 
      waisvocab                       .       .         .        .      .      .         .     .      .            .             . 
      wmslmdel                        .       .         .        .      .      .         .     .      .            .             . 
      wmslmimmed                      .       .         .        .      .      .         .     .      .            .             . 
      wordlistdelay                   .       .         .        .      .      .         .     .      .            .             . 
      wordlistimmed                   .       .         .        .      .      .         .     .      .            .             . 
      wordlistrecog                   .       .         .        .      .      .         .     .      .            .             . 
```







# Bivariate models

## Cross Constructs

Number of models that uses this **physical construct** (column) and  **cognitive construct** (row):

```
               
                chair flamingo muscle pulmonary tug Univar walking
  executive     .     .        14     39        .   25     .      
  fluency       .     .        26     34        6   56     .      
  knowledge     .     .        58     66        6   28     .      
  language      .     .        10     26        .   26     .      
  memory        .     .        51     166       .   101    .      
  mental        .     .        50     44        .   44     16     
  reasoning     .     .        35     42        18  30     .      
  speed         .     .        46     56        6   38     8      
  Univar        6     6        35     36        12  .      12     
  visuospatial  .     .        .      12        .   .      .      
  workingmemory .     .        .      12        .   .      .      
```
It is important to remember that these numbers reflect only the combinations of **constructs**, the  **operationalizations** of these construct (specifc outcomes) that may differ from model to model. 

## Cross Measures

Number of models that uses this **physical measure** (column) and  **cognitive measure** (row):

```
                         
                          fev gait grip pek tug univar
  3ms                     .   8    14   .   .   12    
  analogies               10  .    8    .   .   .     
  block                   10  .    20   14  6   16    
  bnt                     8   .    10   10  .   18    
  bostonstorydelay        8   .    .    .   .   8     
  bostonstoryimmediate    8   .    .    .   .   8     
  categories              14  .    10   10  .   28    
  clock                   .   8    8    .   .   6     
  complexideas            8   .    .    .   .   8     
  delayedrecall           26  .    10   .   .   10    
  digitbackwardspan       6   .    .    .   .   .     
  digitbackwardtotal      6   .    .    .   .   .     
  digitordering           8   .    .    .   .   8     
  digitsback              18  .    4    4   .   8     
  digitsforward           18  .    4    4   .   8     
  digitspan               .   .    10   10  .   10    
  digitsymbolsubstitution .   .    .    .   2   .     
  figurecopy              6   .    .    .   .   .     
  figureid                6   .    6    .   .   .     
  figurelogic             .   .    4    4   .   .     
  figurememory            10  .    .    .   .   .     
  info                    10  .    22   14  .   10    
  lineorientation         10  .    .    .   .   8     
  logicalmemory           .   .    9    10  .   10    
  logicalmemorydelay      6   .    .    .   .   6     
  logicalmemoryimmed      6   .    .    .   .   6     
  lpsspacialability       .   .    .    .   6   .     
  lpsspatialability       .   .    5    .   .   6     
  matrices                8   .    .    .   .   8     
  mirrecall               .   .    4    4   .   .     
  mmse                    22  .    28   14  .   18    
  nart                    8   .    .    .   .   8     
  nocogm                  6   .    .    .   .   .     
  numbercomparison        8   .    .    .   .   8     
  patterncomparison       6   .    .    .   .   .     
  proserecall             .   .    4    4   .   .     
  psif                    .   .    4    4   .   .     
  rotations               10  .    .    .   .   .     
  symbol                  18  8    36   14  4   30    
  synonyms                10  .    12   4   .   .     
  trailsb                 .   .    10   9   .   9     
  univar                  20  6    35   10  12  18    
  verbalfluency           .   .    16   10  6   16    
  waisgeneralknowledge    .   .    6    .   6   6     
  waispicturecompletion   .   .    6    .   6   6     
  waisvocab               .   .    10   10  .   10    
  wmslmdel                2   .    .    .   .   2     
  wmslmimmed              .   .    .    .   .   2     
  wordlistdelay           8   .    .    .   .   8     
  wordlistimmed           34  .    10   .   .   18    
  wordlistrecog           8   .    .    .   .   5     
```

## Cross Measures (fill)


```
                               fev gait grip pek tug univar
                                                           
eas   3ms                       .    .    .   .   .      . 
      analogies                 .    .    .   .   .      . 
      block                     .    .    10  10  .      10
      bnt                       .    .    10  10  .      10
      bostonstorydelay          .    .    .   .   .      . 
      bostonstoryimmediate      .    .    .   .   .      . 
      categories                .    .    10  10  .      10
      clock                     .    .    .   .   .      . 
      complexideas              .    .    .   .   .      . 
      delayedrecall             .    .    .   .   .      . 
      digitbackwardspan         .    .    .   .   .      . 
      digitbackwardtotal        .    .    .   .   .      . 
      digitordering             .    .    .   .   .      . 
      digitsback                .    .    .   .   .      . 
      digitsforward             .    .    .   .   .      . 
      digitspan                 .    .    10  10  .      10
      digitsymbolsubstitution   .    .    .   .   .      . 
      figurecopy                .    .    .   .   .      . 
      figureid                  .    .    .   .   .      . 
      figurelogic               .    .    .   .   .      . 
      figurememory              .    .    .   .   .      . 
      info                      .    .    10  10  .      10
      lineorientation           .    .    .   .   .      . 
      logicalmemory             .    .    9   10  .      10
      logicalmemorydelay        .    .    .   .   .      . 
      logicalmemoryimmed        .    .    .   .   .      . 
      lpsspacialability         .    .    .   .   .      . 
      lpsspatialability         .    .    .   .   .      . 
      matrices                  .    .    .   .   .      . 
      mirrecall                 .    .    .   .   .      . 
      mmse                      .    .    10  10  .      10
      nart                      .    .    .   .   .      . 
      nocogm                    .    .    .   .   .      . 
      numbercomparison          .    .    .   .   .      . 
      patterncomparison         .    .    .   .   .      . 
      proserecall               .    .    .   .   .      . 
      psif                      .    .    .   .   .      . 
      rotations                 .    .    .   .   .      . 
      symbol                    .    .    10  10  .      10
      synonyms                  .    .    .   .   .      . 
      trailsb                   .    .    10  9   .      9 
      univar                    .    .    10  10  .      . 
      verbalfluency             .    .    10  10  .      10
      waisgeneralknowledge      .    .    .   .   .      . 
      waispicturecompletion     .    .    .   .   .      . 
      waisvocab                 .    .    10  10  .      10
      wmslmdel                  .    .    .   .   .      . 
      wmslmimmed                .    .    .   .   .      . 
      wordlistdelay             .    .    .   .   .      . 
      wordlistimmed             .    .    .   .   .      . 
      wordlistrecog             .    .    .   .   .      . 
elsa  3ms                       .    .    .   .   .      . 
      analogies                 .    .    .   .   .      . 
      block                     .    .    .   .   .      . 
      bnt                       .    .    .   .   .      . 
      bostonstorydelay          .    .    .   .   .      . 
      bostonstoryimmediate      .    .    .   .   .      . 
      categories                .    .    .   .   .      10
      clock                     .    .    .   .   .      . 
      complexideas              .    .    .   .   .      . 
      delayedrecall             20   .    10  .   .      10
      digitbackwardspan         .    .    .   .   .      . 
      digitbackwardtotal        .    .    .   .   .      . 
      digitordering             .    .    .   .   .      . 
      digitsback                .    .    .   .   .      . 
      digitsforward             .    .    .   .   .      . 
      digitspan                 .    .    .   .   .      . 
      digitsymbolsubstitution   .    .    .   .   .      . 
      figurecopy                .    .    .   .   .      . 
      figureid                  .    .    .   .   .      . 
      figurelogic               .    .    .   .   .      . 
      figurememory              .    .    .   .   .      . 
      info                      .    .    .   .   .      . 
      lineorientation           .    .    .   .   .      . 
      logicalmemory             .    .    .   .   .      . 
      logicalmemorydelay        .    .    .   .   .      . 
      logicalmemoryimmed        .    .    .   .   .      . 
      lpsspacialability         .    .    .   .   .      . 
      lpsspatialability         .    .    .   .   .      . 
      matrices                  .    .    .   .   .      . 
      mirrecall                 .    .    .   .   .      . 
      mmse                      .    .    .   .   .      . 
      nart                      .    .    .   .   .      . 
      nocogm                    .    .    .   .   .      . 
      numbercomparison          .    .    .   .   .      . 
      patterncomparison         .    .    .   .   .      . 
      proserecall               .    .    .   .   .      . 
      psif                      .    .    .   .   .      . 
      rotations                 .    .    .   .   .      . 
      symbol                    .    .    .   .   .      . 
      synonyms                  .    .    .   .   .      . 
      trailsb                   .    .    .   .   .      . 
      univar                    20   .    7   .   .      . 
      verbalfluency             .    .    .   .   .      . 
      waisgeneralknowledge      .    .    .   .   .      . 
      waispicturecompletion     .    .    .   .   .      . 
      waisvocab                 .    .    .   .   .      . 
      wmslmdel                  .    .    .   .   .      . 
      wmslmimmed                .    .    .   .   .      . 
      wordlistdelay             .    .    .   .   .      . 
      wordlistimmed             20   .    10  .   .      10
      wordlistrecog             .    .    .   .   .      . 
habc  3ms                       .    8    8   .   .      6 
      analogies                 .    .    .   .   .      . 
      block                     .    .    .   .   .      . 
      bnt                       .    .    .   .   .      . 
      bostonstorydelay          .    .    .   .   .      . 
      bostonstoryimmediate      .    .    .   .   .      . 
      categories                .    .    .   .   .      . 
      clock                     .    8    8   .   .      6 
      complexideas              .    .    .   .   .      . 
      delayedrecall             .    .    .   .   .      . 
      digitbackwardspan         .    .    .   .   .      . 
      digitbackwardtotal        .    .    .   .   .      . 
      digitordering             .    .    .   .   .      . 
      digitsback                .    .    .   .   .      . 
      digitsforward             .    .    .   .   .      . 
      digitspan                 .    .    .   .   .      . 
      digitsymbolsubstitution   .    .    .   .   .      . 
      figurecopy                .    .    .   .   .      . 
      figureid                  .    .    .   .   .      . 
      figurelogic               .    .    .   .   .      . 
      figurememory              .    .    .   .   .      . 
      info                      .    .    .   .   .      . 
      lineorientation           .    .    .   .   .      . 
      logicalmemory             .    .    .   .   .      . 
      logicalmemorydelay        .    .    .   .   .      . 
      logicalmemoryimmed        .    .    .   .   .      . 
      lpsspacialability         .    .    .   .   .      . 
      lpsspatialability         .    .    .   .   .      . 
      matrices                  .    .    .   .   .      . 
      mirrecall                 .    .    .   .   .      . 
      mmse                      .    .    .   .   .      . 
      nart                      .    .    .   .   .      . 
      nocogm                    .    .    .   .   .      . 
      numbercomparison          .    .    .   .   .      . 
      patterncomparison         .    .    .   .   .      . 
      proserecall               .    .    .   .   .      . 
      psif                      .    .    .   .   .      . 
      rotations                 .    .    .   .   .      . 
      symbol                    .    8    8   .   .      6 
      synonyms                  .    .    .   .   .      . 
      trailsb                   .    .    .   .   .      . 
      univar                    .    6    6   .   .      . 
      verbalfluency             .    .    .   .   .      . 
      waisgeneralknowledge      .    .    .   .   .      . 
      waispicturecompletion     .    .    .   .   .      . 
      waisvocab                 .    .    .   .   .      . 
      wmslmdel                  .    .    .   .   .      . 
      wmslmimmed                .    .    .   .   .      . 
      wordlistdelay             .    .    .   .   .      . 
      wordlistimmed             .    .    .   .   .      . 
      wordlistrecog             .    .    .   .   .      . 
ilse  3ms                       .    .    .   .   .      . 
      analogies                 .    .    .   .   .      . 
      block                     .    .    6   .   6      6 
      bnt                       .    .    .   .   .      . 
      bostonstorydelay          .    .    .   .   .      . 
      bostonstoryimmediate      .    .    .   .   .      . 
      categories                .    .    .   .   .      . 
      clock                     .    .    .   .   .      . 
      complexideas              .    .    .   .   .      . 
      delayedrecall             .    .    .   .   .      . 
      digitbackwardspan         .    .    .   .   .      . 
      digitbackwardtotal        .    .    .   .   .      . 
      digitordering             .    .    .   .   .      . 
      digitsback                .    .    .   .   .      . 
      digitsforward             .    .    .   .   .      . 
      digitspan                 .    .    .   .   .      . 
      digitsymbolsubstitution   .    .    .   .   2      . 
      figurecopy                .    .    .   .   .      . 
      figureid                  .    .    .   .   .      . 
      figurelogic               .    .    .   .   .      . 
      figurememory              .    .    .   .   .      . 
      info                      .    .    .   .   .      . 
      lineorientation           .    .    .   .   .      . 
      logicalmemory             .    .    .   .   .      . 
      logicalmemorydelay        .    .    .   .   .      . 
      logicalmemoryimmed        .    .    .   .   .      . 
      lpsspacialability         .    .    .   .   6      . 
      lpsspatialability         .    .    5   .   .      6 
      matrices                  .    .    .   .   .      . 
      mirrecall                 .    .    .   .   .      . 
      mmse                      .    .    .   .   .      . 
      nart                      .    .    .   .   .      . 
      nocogm                    .    .    .   .   .      . 
      numbercomparison          .    .    .   .   .      . 
      patterncomparison         .    .    .   .   .      . 
      proserecall               .    .    .   .   .      . 
      psif                      .    .    .   .   .      . 
      rotations                 .    .    .   .   .      . 
      symbol                    .    .    6   .   4      6 
      synonyms                  .    .    .   .   .      . 
      trailsb                   .    .    .   .   .      . 
      univar                    .    .    6   .   6      . 
      verbalfluency             .    .    6   .   6      6 
      waisgeneralknowledge      .    .    6   .   6      6 
      waispicturecompletion     .    .    6   .   6      6 
      waisvocab                 .    .    .   .   .      . 
      wmslmdel                  .    .    .   .   .      . 
      wmslmimmed                .    .    .   .   .      . 
      wordlistdelay             .    .    .   .   .      . 
      wordlistimmed             .    .    .   .   .      . 
      wordlistrecog             .    .    .   .   .      . 
nas   3ms                       .    .    .   .   .      . 
      analogies                 .    .    .   .   .      . 
      block                     .    .    .   .   .      . 
      bnt                       .    .    .   .   .      . 
      bostonstorydelay          .    .    .   .   .      . 
      bostonstoryimmediate      .    .    .   .   .      . 
      categories                6    .    .   .   .      . 
      clock                     .    .    .   .   .      . 
      complexideas              .    .    .   .   .      . 
      delayedrecall             6    .    .   .   .      . 
      digitbackwardspan         6    .    .   .   .      . 
      digitbackwardtotal        6    .    .   .   .      . 
      digitordering             .    .    .   .   .      . 
      digitsback                .    .    .   .   .      . 
      digitsforward             .    .    .   .   .      . 
      digitspan                 .    .    .   .   .      . 
      digitsymbolsubstitution   .    .    .   .   .      . 
      figurecopy                6    .    .   .   .      . 
      figureid                  .    .    .   .   .      . 
      figurelogic               .    .    .   .   .      . 
      figurememory              .    .    .   .   .      . 
      info                      .    .    .   .   .      . 
      lineorientation           .    .    .   .   .      . 
      logicalmemory             .    .    .   .   .      . 
      logicalmemorydelay        .    .    .   .   .      . 
      logicalmemoryimmed        .    .    .   .   .      . 
      lpsspacialability         .    .    .   .   .      . 
      lpsspatialability         .    .    .   .   .      . 
      matrices                  .    .    .   .   .      . 
      mirrecall                 .    .    .   .   .      . 
      mmse                      6    .    .   .   .      . 
      nart                      .    .    .   .   .      . 
      nocogm                    6    .    .   .   .      . 
      numbercomparison          .    .    .   .   .      . 
      patterncomparison         6    .    .   .   .      . 
      proserecall               .    .    .   .   .      . 
      psif                      .    .    .   .   .      . 
      rotations                 .    .    .   .   .      . 
      symbol                    .    .    .   .   .      . 
      synonyms                  .    .    .   .   .      . 
      trailsb                   .    .    .   .   .      . 
      univar                    .    .    .   .   .      . 
      verbalfluency             .    .    .   .   .      . 
      waisgeneralknowledge      .    .    .   .   .      . 
      waispicturecompletion     .    .    .   .   .      . 
      waisvocab                 .    .    .   .   .      . 
      wmslmdel                  .    .    .   .   .      . 
      wmslmimmed                .    .    .   .   .      . 
      wordlistdelay             .    .    .   .   .      . 
      wordlistimmed             6    .    .   .   .      . 
      wordlistrecog             .    .    .   .   .      . 
nuage 3ms                       .    .    6   .   .      6 
      analogies                 .    .    .   .   .      . 
      block                     .    .    .   .   .      . 
      bnt                       .    .    .   .   .      . 
      bostonstorydelay          .    .    .   .   .      . 
      bostonstoryimmediate      .    .    .   .   .      . 
      categories                .    .    .   .   .      . 
      clock                     .    .    .   .   .      . 
      complexideas              .    .    .   .   .      . 
      delayedrecall             .    .    .   .   .      . 
      digitbackwardspan         .    .    .   .   .      . 
      digitbackwardtotal        .    .    .   .   .      . 
      digitordering             .    .    .   .   .      . 
      digitsback                .    .    .   .   .      . 
      digitsforward             .    .    .   .   .      . 
      digitspan                 .    .    .   .   .      . 
      digitsymbolsubstitution   .    .    .   .   .      . 
      figurecopy                .    .    .   .   .      . 
      figureid                  .    .    .   .   .      . 
      figurelogic               .    .    .   .   .      . 
      figurememory              .    .    .   .   .      . 
      info                      .    .    .   .   .      . 
      lineorientation           .    .    .   .   .      . 
      logicalmemory             .    .    .   .   .      . 
      logicalmemorydelay        .    .    .   .   .      . 
      logicalmemoryimmed        .    .    .   .   .      . 
      lpsspacialability         .    .    .   .   .      . 
      lpsspatialability         .    .    .   .   .      . 
      matrices                  .    .    .   .   .      . 
      mirrecall                 .    .    .   .   .      . 
      mmse                      .    .    6   .   .      . 
      nart                      .    .    .   .   .      . 
      nocogm                    .    .    .   .   .      . 
      numbercomparison          .    .    .   .   .      . 
      patterncomparison         .    .    .   .   .      . 
      proserecall               .    .    .   .   .      . 
      psif                      .    .    .   .   .      . 
      rotations                 .    .    .   .   .      . 
      symbol                    .    .    .   .   .      . 
      synonyms                  .    .    .   .   .      . 
      trailsb                   .    .    .   .   .      . 
      univar                    .    .    6   .   6      18
      verbalfluency             .    .    .   .   .      . 
      waisgeneralknowledge      .    .    .   .   .      . 
      waispicturecompletion     .    .    .   .   .      . 
      waisvocab                 .    .    .   .   .      . 
      wmslmdel                  .    .    .   .   .      . 
      wmslmimmed                .    .    .   .   .      . 
      wordlistdelay             .    .    .   .   .      . 
      wordlistimmed             .    .    .   .   .      . 
      wordlistrecog             .    .    .   .   .      . 
octo  3ms                       .    .    .   .   .      . 
      analogies                 .    .    .   .   .      . 
      block                     .    .    4   4   .      . 
      bnt                       .    .    .   .   .      . 
      bostonstorydelay          .    .    .   .   .      . 
      bostonstoryimmediate      .    .    .   .   .      . 
      categories                .    .    .   .   .      . 
      clock                     .    .    .   .   .      . 
      complexideas              .    .    .   .   .      . 
      delayedrecall             .    .    .   .   .      . 
      digitbackwardspan         .    .    .   .   .      . 
      digitbackwardtotal        .    .    .   .   .      . 
      digitordering             .    .    .   .   .      . 
      digitsback                .    .    4   4   .      . 
      digitsforward             .    .    4   4   .      . 
      digitspan                 .    .    .   .   .      . 
      digitsymbolsubstitution   .    .    .   .   .      . 
      figurecopy                .    .    .   .   .      . 
      figureid                  .    .    .   .   .      . 
      figurelogic               .    .    4   4   .      . 
      figurememory              .    .    .   .   .      . 
      info                      .    .    4   4   .      . 
      lineorientation           .    .    .   .   .      . 
      logicalmemory             .    .    .   .   .      . 
      logicalmemorydelay        .    .    .   .   .      . 
      logicalmemoryimmed        .    .    .   .   .      . 
      lpsspacialability         .    .    .   .   .      . 
      lpsspatialability         .    .    .   .   .      . 
      matrices                  .    .    .   .   .      . 
      mirrecall                 .    .    4   4   .      . 
      mmse                      .    .    4   4   .      . 
      nart                      .    .    .   .   .      . 
      nocogm                    .    .    .   .   .      . 
      numbercomparison          .    .    .   .   .      . 
      patterncomparison         .    .    .   .   .      . 
      proserecall               .    .    4   4   .      . 
      psif                      .    .    4   4   .      . 
      rotations                 .    .    .   .   .      . 
      symbol                    .    .    4   4   .      . 
      synonyms                  .    .    4   4   .      . 
      trailsb                   .    .    .   .   .      . 
      univar                    .    .    .   .   .      . 
      verbalfluency             .    .    .   .   .      . 
      waisgeneralknowledge      .    .    .   .   .      . 
      waispicturecompletion     .    .    .   .   .      . 
      waisvocab                 .    .    .   .   .      . 
      wmslmdel                  .    .    .   .   .      . 
      wmslmimmed                .    .    .   .   .      . 
      wordlistdelay             .    .    .   .   .      . 
      wordlistimmed             .    .    .   .   .      . 
      wordlistrecog             .    .    .   .   .      . 
radc  3ms                       .    .    .   .   .      . 
      analogies                 .    .    .   .   .      . 
      block                     .    .    .   .   .      . 
      bnt                       8    .    .   .   .      8 
      bostonstorydelay          8    .    .   .   .      8 
      bostonstoryimmediate      8    .    .   .   .      8 
      categories                8    .    .   .   .      8 
      clock                     .    .    .   .   .      . 
      complexideas              8    .    .   .   .      8 
      delayedrecall             .    .    .   .   .      . 
      digitbackwardspan         .    .    .   .   .      . 
      digitbackwardtotal        .    .    .   .   .      . 
      digitordering             8    .    .   .   .      8 
      digitsback                8    .    .   .   .      8 
      digitsforward             8    .    .   .   .      8 
      digitspan                 .    .    .   .   .      . 
      digitsymbolsubstitution   .    .    .   .   .      . 
      figurecopy                .    .    .   .   .      . 
      figureid                  .    .    .   .   .      . 
      figurelogic               .    .    .   .   .      . 
      figurememory              .    .    .   .   .      . 
      info                      .    .    .   .   .      . 
      lineorientation           10   .    .   .   .      8 
      logicalmemory             .    .    .   .   .      . 
      logicalmemorydelay        6    .    .   .   .      6 
      logicalmemoryimmed        6    .    .   .   .      6 
      lpsspacialability         .    .    .   .   .      . 
      lpsspatialability         .    .    .   .   .      . 
      matrices                  8    .    .   .   .      8 
      mirrecall                 .    .    .   .   .      . 
      mmse                      6    .    .   .   .      8 
      nart                      8    .    .   .   .      8 
      nocogm                    .    .    .   .   .      . 
      numbercomparison          8    .    .   .   .      8 
      patterncomparison         .    .    .   .   .      . 
      proserecall               .    .    .   .   .      . 
      psif                      .    .    .   .   .      . 
      rotations                 .    .    .   .   .      . 
      symbol                    8    .    .   .   .      8 
      synonyms                  .    .    .   .   .      . 
      trailsb                   .    .    .   .   .      . 
      univar                    .    .    .   .   .      . 
      verbalfluency             .    .    .   .   .      . 
      waisgeneralknowledge      .    .    .   .   .      . 
      waispicturecompletion     .    .    .   .   .      . 
      waisvocab                 .    .    .   .   .      . 
      wmslmdel                  2    .    .   .   .      2 
      wmslmimmed                .    .    .   .   .      2 
      wordlistdelay             8    .    .   .   .      8 
      wordlistimmed             8    .    .   .   .      8 
      wordlistrecog             8    .    .   .   .      5 
satsa 3ms                       .    .    .   .   .      . 
      analogies                 10   .    8   .   .      . 
      block                     10   .    .   .   .      . 
      bnt                       .    .    .   .   .      . 
      bostonstorydelay          .    .    .   .   .      . 
      bostonstoryimmediate      .    .    .   .   .      . 
      categories                .    .    .   .   .      . 
      clock                     .    .    .   .   .      . 
      complexideas              .    .    .   .   .      . 
      delayedrecall             .    .    .   .   .      . 
      digitbackwardspan         .    .    .   .   .      . 
      digitbackwardtotal        .    .    .   .   .      . 
      digitordering             .    .    .   .   .      . 
      digitsback                10   .    .   .   .      . 
      digitsforward             10   .    .   .   .      . 
      digitspan                 .    .    .   .   .      . 
      digitsymbolsubstitution   .    .    .   .   .      . 
      figurecopy                .    .    .   .   .      . 
      figureid                  6    .    6   .   .      . 
      figurelogic               .    .    .   .   .      . 
      figurememory              10   .    .   .   .      . 
      info                      10   .    8   .   .      . 
      lineorientation           .    .    .   .   .      . 
      logicalmemory             .    .    .   .   .      . 
      logicalmemorydelay        .    .    .   .   .      . 
      logicalmemoryimmed        .    .    .   .   .      . 
      lpsspacialability         .    .    .   .   .      . 
      lpsspatialability         .    .    .   .   .      . 
      matrices                  .    .    .   .   .      . 
      mirrecall                 .    .    .   .   .      . 
      mmse                      10   .    8   .   .      . 
      nart                      .    .    .   .   .      . 
      nocogm                    .    .    .   .   .      . 
      numbercomparison          .    .    .   .   .      . 
      patterncomparison         .    .    .   .   .      . 
      proserecall               .    .    .   .   .      . 
      psif                      .    .    .   .   .      . 
      rotations                 10   .    .   .   .      . 
      symbol                    10   .    8   .   .      . 
      synonyms                  10   .    8   .   .      . 
      trailsb                   .    .    .   .   .      . 
      univar                    .    .    .   .   .      . 
      verbalfluency             .    .    .   .   .      . 
      waisgeneralknowledge      .    .    .   .   .      . 
      waispicturecompletion     .    .    .   .   .      . 
      waisvocab                 .    .    .   .   .      . 
      wmslmdel                  .    .    .   .   .      . 
      wmslmimmed                .    .    .   .   .      . 
      wordlistdelay             .    .    .   .   .      . 
      wordlistimmed             .    .    .   .   .      . 
      wordlistrecog             .    .    .   .   .      . 
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
  analogies     10  8   
  block         10  .   
  digitsback    10  .   
  digitsforward 10  .   
  figureid      6   6   
  figurememory  10  .   
  info          10  8   
  mmse          10  8   
  rotations     10  .   
  symbol        10  8   
  synonyms      10  8   
```

### elsa
Number of models in the **elsa** study with the following combination of physical measures (columns) and cognitive measure (rows) 
```
               
                fev grip univar
  categories    .   .    10    
  delayedrecall 20  10   10    
  univar        20  7    .     
  wordlistimmed 20  10   10    
```

### nas
Number of models in the **nas** study with the following combination of physical measures (columns) and cognitive measure (rows) 
```
                    
                     fev
  categories         6  
  delayedrecall      6  
  digitbackwardspan  6  
  digitbackwardtotal 6  
  figurecopy         6  
  mmse               6  
  nocogm             6  
  patterncomparison  6  
  wordlistimmed      6  
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
                      
                       fev univar
  bnt                  8   8     
  bostonstorydelay     8   8     
  bostonstoryimmediate 8   8     
  categories           8   8     
  complexideas         8   8     
  digitordering        8   8     
  digitsback           8   8     
  digitsforward        8   8     
  lineorientation      10  8     
  logicalmemorydelay   6   6     
  logicalmemoryimmed   6   6     
  matrices             8   8     
  mmse                 6   8     
  nart                 8   8     
  numbercomparison     8   8     
  symbol               8   8     
  wmslmdel             2   2     
  wmslmimmed           .   2     
  wordlistdelay        8   8     
  wordlistimmed        8   8     
  wordlistrecog        8   5     
```

### ilse
Number of models in the **ilse** study with the following combination of physical measures (columns) and cognitive measure (rows) 
```
                         
                          grip tug univar
  block                   6    6   6     
  digitsymbolsubstitution .    2   .     
  lpsspacialability       .    6   .     
  lpsspatialability       5    .   6     
  symbol                  6    4   6     
  univar                  6    6   .     
  verbalfluency           6    6   6     
  waisgeneralknowledge    6    6   6     
  waispicturecompletion   6    6   6     
```

### nuage
Number of models in the **nuage** study with the following combination of physical measures (columns) and cognitive measure (rows) 
```
        
         grip tug univar
  3ms    6    .   6     
  mmse   6    .   .     
  univar 6    6   18    
```






# Session Information
For the sake of documentation and reproducibility, the current report was rendered on a system using the following software.


```
Report rendered by koval_000 at 2015-07-12, 23:11 -0700
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
[1] dplyr_0.4.1           testit_0.4            ggplot2_1.0.1         RColorBrewer_1.1-2    scales_0.2.5         
[6] knitr_1.10.5          MplusAutomation_0.6-3

loaded via a namespace (and not attached):
 [1] Rcpp_0.11.6      magrittr_1.5     MASS_7.3-40      munsell_0.4.2    colorspace_1.2-6 xtable_1.7-4    
 [7] lattice_0.20-31  stringr_1.0.0    plyr_1.8.2       tcltk_3.2.0      tools_3.2.0      parallel_3.2.0  
[13] gtable_0.1.2     texreg_1.35      coda_0.17-1      DBI_0.3.1        htmltools_0.2.6  yaml_2.1.13     
[19] lazyeval_0.1.10  assertthat_0.1   digest_0.6.8     formatR_1.2      reshape2_1.4.1   rsconnect_0.3.79
[25] evaluate_0.7     rmarkdown_0.7    gsubfn_0.6-6     stringi_0.4-1    boot_1.3-16      proto_0.3-10    
```
