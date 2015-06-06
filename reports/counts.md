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
**1064**
: they include both *bivariate* and *univariate* models. Strings *"nophys"* and *"nocog"*, imply that the model is univariate (e.i. nocog == The particular cog predictor is "none")

<!-- Frequency counts   -->
Counting valid models in each study:

```

  eas  habc  ilse   nas nuage  octo  radc satsa 
  485    88   123    41    18    88   129    92 
```

# Physcial Domain

## Constructs 

Number of models that use the following **Physical contructs**

```
           
            eas habc ilse nas nuage octo radc satsa
  muscle    131 32   45   .   12    44   73   46   
  nophys    221 24   34   .   6     .    .    .    
  pulmonary 133 .    .    41  .     44   56   46   
  tug       .   .    44   .   .     .    .    .    
  walking   .   32   .    .   .     .    .    .    
```

## Measures

Number of models that use the following **Physical measures**

```
            
             eas habc ilse nas nuage octo radc satsa
  fev        .   .    .    .   .     .    56   46   
  fev1       .   .    .    20  .     .    .    .    
  fevc       .   .    .    1   .     .    .    .    
  fvc        .   .    .    20  .     .    .    .    
  gait       .   33   .    .   .     .    .    .    
  grip       131 .    44   .   12    44   73   46   
  hand       .   31   .    .   .     .    .    .    
  nophysspec 221 24   79   .   6     .    .    .    
  pek        133 .    .    .   .     44   .    .    
```

## Measures by Constructs

Number of models using this **measure** of the  physical **construct**

```
            
             muscle nophys pulmonary tug walking
  fev        .      .      102       .   .      
  fev1       .      .      20        .   .      
  fevc       .      .      1         .   .      
  fvc        .      .      20        .   .      
  gait       1      .      .         .   32     
  grip       350    .      .         .   .      
  hand       31     .      .         .   .      
  nophysspec 1      285    .         44  .      
  pek        .      .      177       .   .      
```

## Measures by Constructs and Studies

Number of models using this **measure** of the  physical **construct**, by study

```
                  muscle nophys pulmonary tug walking
                                                     
eas   fev            .      .         .   .       .  
      fev1           .      .         .   .       .  
      fevc           .      .         .   .       .  
      fvc            .      .         .   .       .  
      gait           .      .         .   .       .  
      grip           131    .         .   .       .  
      hand           .      .         .   .       .  
      nophysspec     .      221       .   .       .  
      pek            .      .         133 .       .  
habc  fev            .      .         .   .       .  
      fev1           .      .         .   .       .  
      fevc           .      .         .   .       .  
      fvc            .      .         .   .       .  
      gait           1      .         .   .       32 
      grip           .      .         .   .       .  
      hand           31     .         .   .       .  
      nophysspec     .      24        .   .       .  
      pek            .      .         .   .       .  
ilse  fev            .      .         .   .       .  
      fev1           .      .         .   .       .  
      fevc           .      .         .   .       .  
      fvc            .      .         .   .       .  
      gait           .      .         .   .       .  
      grip           44     .         .   .       .  
      hand           .      .         .   .       .  
      nophysspec     1      34        .   44      .  
      pek            .      .         .   .       .  
nas   fev            .      .         .   .       .  
      fev1           .      .         20  .       .  
      fevc           .      .         1   .       .  
      fvc            .      .         20  .       .  
      gait           .      .         .   .       .  
      grip           .      .         .   .       .  
      hand           .      .         .   .       .  
      nophysspec     .      .         .   .       .  
      pek            .      .         .   .       .  
nuage fev            .      .         .   .       .  
      fev1           .      .         .   .       .  
      fevc           .      .         .   .       .  
      fvc            .      .         .   .       .  
      gait           .      .         .   .       .  
      grip           12     .         .   .       .  
      hand           .      .         .   .       .  
      nophysspec     .      6         .   .       .  
      pek            .      .         .   .       .  
octo  fev            .      .         .   .       .  
      fev1           .      .         .   .       .  
      fevc           .      .         .   .       .  
      fvc            .      .         .   .       .  
      gait           .      .         .   .       .  
      grip           44     .         .   .       .  
      hand           .      .         .   .       .  
      nophysspec     .      .         .   .       .  
      pek            .      .         44  .       .  
radc  fev            .      .         56  .       .  
      fev1           .      .         .   .       .  
      fevc           .      .         .   .       .  
      fvc            .      .         .   .       .  
      gait           .      .         .   .       .  
      grip           73     .         .   .       .  
      hand           .      .         .   .       .  
      nophysspec     .      .         .   .       .  
      pek            .      .         .   .       .  
satsa fev            .      .         46  .       .  
      fev1           .      .         .   .       .  
      fevc           .      .         .   .       .  
      fvc            .      .         .   .       .  
      gait           .      .         .   .       .  
      grip           46     .         .   .       .  
      hand           .      .         .   .       .  
      nophysspec     .      .         .   .       .  
      pek            .      .         .   .       .  
```


# Cognitive Domain

## Constructs 

Number of models that use the following **Cognitive contructs**

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

## Measures

Number of models that use the following **Cognitive measures**

```
                             
                              eas habc ilse nas nuage octo radc satsa
  3ms                         .   24   .    .   .     .    .    .    
  anal                        .   .    .    .   .     .    .    16   
  animals                     .   .    .    6   .     .    .    .    
  block                       42  .    .    .   .     .    .    .    
  blockdesign                 .   .    .    .   .     8    .    .    
  bnt                         .   .    .    .   .     .    6    .    
  bostonnaming                40  .    .    .   .     .    .    .    
  bostonstorydelay            .   .    .    .   .     .    7    .    
  bostonstoryimmediate        .   .    .    .   .     .    7    .    
  category                    40  .    .    .   .     .    .    .    
  categoryfluency             .   .    .    .   .     .    4    .    
  clock                       .   24   .    .   .     .    .    .    
  complexideas                .   .    .    .   .     .    7    .    
  delayedwordrecall           .   .    .    6   .     .    .    .    
  digitbackward               .   .    .    5   .     .    .    .    
  digitordering               .   .    .    .   .     .    6    .    
  digitsback                  .   .    .    .   .     .    6    .    
  digitsforward               .   .    .    .   .     .    7    .    
  digitspan                   8   .    .    .   .     .    .    .    
  digitspanbackward           .   .    .    .   .     8    .    .    
  digitspanforward            .   .    .    .   .     8    .    .    
  digitspantotal              25  .    .    .   .     .    .    .    
  digitsymbol                 45  24   .    .   .     8    7    .    
  digitsymbolsubstitutiontest .   .    20   .   .     .    .    .    
  digitsymboltotal            1   .    .    .   .     .    .    .    
  disigtspantotal             1   .    .    .   .     .    .    .    
  fas                         40  .    .    .   .     .    .    .    
  figid                       .   .    .    .   .     .    .    12   
  figurecopy                  .   .    .    6   .     .    .    .    
  figurelogic                 .   .    .    .   .     8    .    .    
  immediaterecall             .   .    .    6   .     .    .    .    
  info                        .   .    .    .   .     .    .    16   
  information                 40  .    .    .   .     8    .    .    
  lineorientation             .   .    .    .   .     .    7    .    
  logicalmemory               30  .    .    .   .     .    .    .    
  logicalmemorydelay          .   .    .    .   .     .    7    .    
  logicalmemoryimmed          .   .    .    .   .     .    5    .    
  logicalmemorytotal          9   .    .    .   .     .    .    .    
  lpsspacialability           .   .    14   .   .     .    .    .    
  matrices                    .   .    .    .   .     .    7    .    
  mirrecall                   .   .    .    .   .     8    .    .    
  mmms                        .   .    .    .   12    .    .    .    
  mmse                        40  .    .    6   .     8    7    16   
  nart                        .   .    .    .   .     .    7    .    
  nocogspec                   44  16   17   .   6     .    4    .    
  numbercomparison            .   .    .    .   .     .    7    .    
  patterncomparison           .   .    .    6   .     .    .    .    
  picturecompletion           .   .    8    .   .     .    .    .    
  proserecall                 .   .    .    .   .     8    .    .    
  psif                        .   .    .    .   .     8    .    .    
  symbol                      .   .    .    .   .     .    .    16   
  synon                       .   .    .    .   .     .    .    16   
  synonyms                    .   .    .    .   .     8    .    .    
  trailsb                     39  .    .    .   .     .    .    .    
  verbalfluencytest           .   .    20   .   .     .    .    .    
  waisblockdesign             .   .    20   .   .     .    .    .    
  waisgeneralknowledge        .   .    12   .   .     .    .    .    
  waispicturecompletion       .   .    12   .   .     .    .    .    
  waisvocab                   41  .    .    .   .     .    .    .    
  wordlistdelay               .   .    .    .   .     .    7    .    
  wordlistimmed               .   .    .    .   .     .    7    .    
  wordlistrecog               .   .    .    .   .     .    7    .    
```

## Measures by Constructs

Number of models using this **measure** of the  cognitive **construct**

```
                             
                              attention executive fluency fluid fluidreasoning global knowledge language memory
  3ms                         .         .         .       .     .              .      .         .        .     
  anal                        .         .         .       .     .              .      16        .        .     
  animals                     .         .         .       .     .              .      .         .        .     
  block                       .         .         .       .     .              .      .         .        .     
  blockdesign                 .         .         .       .     .              .      .         .        .     
  bnt                         .         .         .       .     .              .      .         6        .     
  bostonnaming                .         .         40      .     .              .      .         .        .     
  bostonstorydelay            .         .         .       .     .              .      .         .        7     
  bostonstoryimmediate        .         .         .       .     .              .      .         .        7     
  category                    .         .         40      .     .              .      .         .        .     
  categoryfluency             .         4         .       .     .              .      .         .        .     
  clock                       .         .         .       .     .              .      .         .        .     
  complexideas                .         .         .       .     .              .      .         7        .     
  delayedwordrecall           .         .         .       .     .              .      .         .        .     
  digitbackward               .         .         .       .     .              .      .         .        .     
  digitordering               .         6         .       .     .              .      .         .        .     
  digitsback                  .         6         .       .     .              .      .         .        .     
  digitsforward               7         .         .       .     .              .      .         .        .     
  digitspan                   .         .         .       .     .              .      .         .        8     
  digitspanbackward           .         .         .       .     .              .      .         .        8     
  digitspanforward            .         .         .       .     .              .      .         .        8     
  digitspantotal              .         .         .       .     .              .      .         .        25    
  digitsymbol                 .         .         .       .     .              .      .         .        5     
  digitsymbolsubstitutiontest .         .         .       .     .              .      .         .        .     
  digitsymboltotal            .         .         .       .     .              .      .         .        1     
  disigtspantotal             .         .         .       .     .              .      .         .        1     
  fas                         .         .         40      .     .              .      .         .        .     
  figid                       .         .         .       .     .              .      .         .        .     
  figurecopy                  .         .         .       .     6              .      .         .        .     
  figurelogic                 .         .         .       .     .              .      .         .        .     
  immediaterecall             .         .         .       .     .              .      .         .        .     
  info                        .         .         .       .     .              .      16        .        .     
  information                 .         .         6       .     .              .      42        .        .     
  lineorientation             .         .         .       .     .              .      .         .        .     
  logicalmemory               .         .         .       .     .              .      .         .        30    
  logicalmemorydelay          .         .         .       .     .              .      .         .        7     
  logicalmemoryimmed          .         .         .       .     .              .      .         .        5     
  logicalmemorytotal          .         .         .       .     .              .      .         .        9     
  lpsspacialability           .         .         .       .     .              .      .         .        .     
  matrices                    .         .         .       .     .              .      .         .        .     
  mirrecall                   .         .         .       .     .              .      .         .        8     
  mmms                        .         .         .       .     .              12     .         .        .     
  mmse                        .         .         .       .     .              77     .         .        .     
  nart                        .         .         .       .     .              .      7         .        .     
  nocogspec                   .         .         .       .     .              .      .         .        .     
  numbercomparison            .         .         .       .     .              .      .         .        .     
  patterncomparison           .         .         .       .     6              .      .         .        .     
  picturecompletion           .         .         .       .     .              .      .         .        .     
  proserecall                 .         .         .       .     .              .      .         .        8     
  psif                        .         .         .       .     .              .      .         .        .     
  symbol                      .         .         .       .     .              .      .         .        .     
  synon                       .         .         .       .     .              .      16        .        .     
  synonyms                    .         .         .       .     .              .      8         .        .     
  trailsb                     .         29        .       10    .              .      .         .        .     
  verbalfluencytest           .         .         20      .     .              .      .         .        .     
  waisblockdesign             .         .         .       .     .              .      .         .        .     
  waisgeneralknowledge        .         .         .       .     .              .      12        .        .     
  waispicturecompletion       .         .         .       .     .              .      .         .        .     
  waisvocab                   .         .         .       .     .              .      41        .        .     
  wordlistdelay               .         .         .       .     .              .      .         .        7     
  wordlistimmed               .         .         .       .     .              .      .         .        7     
  wordlistrecog               .         .         .       .     .              .      .         .        7     
                             
                              memoryattention mental nocog reasoning speed verbalfluency visuospatial
  3ms                         .               24     .     .         .     .             .           
  anal                        .               .      .     .         .     .             .           
  animals                     .               .      .     .         .     6             .           
  block                       .               .      .     42        .     .             .           
  blockdesign                 .               .      .     8         .     .             .           
  bnt                         .               .      .     .         .     .             .           
  bostonnaming                .               .      .     .         .     .             .           
  bostonstorydelay            .               .      .     .         .     .             .           
  bostonstoryimmediate        .               .      .     .         .     .             .           
  category                    .               .      .     .         .     .             .           
  categoryfluency             .               .      .     .         .     .             .           
  clock                       .               24     .     .         .     .             .           
  complexideas                .               .      .     .         .     .             .           
  delayedwordrecall           6               .      .     .         .     .             .           
  digitbackward               5               .      .     .         .     .             .           
  digitordering               .               .      .     .         .     .             .           
  digitsback                  .               .      .     .         .     .             .           
  digitsforward               .               .      .     .         .     .             .           
  digitspan                   .               .      .     .         .     .             .           
  digitspanbackward           .               .      .     .         .     .             .           
  digitspanforward            .               .      .     .         .     .             .           
  digitspantotal              .               .      .     .         .     .             .           
  digitsymbol                 .               .      .     .         79    .             .           
  digitsymbolsubstitutiontest .               .      .     .         20    .             .           
  digitsymboltotal            .               .      .     .         .     .             .           
  disigtspantotal             .               .      .     .         .     .             .           
  fas                         .               .      .     .         .     .             .           
  figid                       .               .      .     .         12    .             .           
  figurecopy                  .               .      .     .         .     .             .           
  figurelogic                 .               .      .     8         .     .             .           
  immediaterecall             6               .      .     .         .     .             .           
  info                        .               .      .     .         .     .             .           
  information                 .               .      .     .         .     .             .           
  lineorientation             .               .      .     .         .     .             7           
  logicalmemory               .               .      .     .         .     .             .           
  logicalmemorydelay          .               .      .     .         .     .             .           
  logicalmemoryimmed          .               .      .     .         .     .             .           
  logicalmemorytotal          .               .      .     .         .     .             .           
  lpsspacialability           .               .      .     14        .     .             .           
  matrices                    .               .      .     7         .     .             .           
  mirrecall                   .               .      .     .         .     .             .           
  mmms                        .               .      .     .         .     .             .           
  mmse                        .               .      .     .         .     .             .           
  nart                        .               .      .     .         .     .             .           
  nocogspec                   .               .      87    .         .     .             .           
  numbercomparison            .               .      .     .         7     .             .           
  patterncomparison           .               .      .     .         .     .             .           
  picturecompletion           .               .      .     8         .     .             .           
  proserecall                 .               .      .     .         .     .             .           
  psif                        .               .      .     .         8     .             .           
  symbol                      .               .      .     .         16    .             .           
  synon                       .               .      .     .         .     .             .           
  synonyms                    .               .      .     .         .     .             .           
  trailsb                     .               .      .     .         .     .             .           
  verbalfluencytest           .               .      .     .         .     .             .           
  waisblockdesign             .               .      .     20        .     .             .           
  waisgeneralknowledge        .               .      .     .         .     .             .           
  waispicturecompletion       .               .      .     12        .     .             .           
  waisvocab                   .               .      .     .         .     .             .           
  wordlistdelay               .               .      .     .         .     .             .           
  wordlistimmed               .               .      .     .         .     .             .           
  wordlistrecog               .               .      .     .         .     .             .           
```

## Measures by Constructs and Studies

Number of models using this **measure** of the  cognitive **construct**, by study

```
                                   attention executive fluency fluid fluidreasoning global knowledge language memory memoryattention mental nocog reasoning speed verbalfluency visuospatial
                                                                                                                                                                                            
eas   3ms                                 .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      anal                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      animals                             .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      block                               .         .       .     .              .      .         .        .      .               .      .     .         42    .             .            . 
      blockdesign                         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      bnt                                 .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      bostonnaming                        .         .       40    .              .      .         .        .      .               .      .     .         .     .             .            . 
      bostonstorydelay                    .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      bostonstoryimmediate                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      category                            .         .       40    .              .      .         .        .      .               .      .     .         .     .             .            . 
      categoryfluency                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      clock                               .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      complexideas                        .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      delayedwordrecall                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitbackward                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitordering                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitsback                          .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitsforward                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitspan                           .         .       .     .              .      .         .        .      8               .      .     .         .     .             .            . 
      digitspanbackward                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitspanforward                    .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitspantotal                      .         .       .     .              .      .         .        .      25              .      .     .         .     .             .            . 
      digitsymbol                         .         .       .     .              .      .         .        .      5               .      .     .         .     40            .            . 
      digitsymbolsubstitutiontest         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitsymboltotal                    .         .       .     .              .      .         .        .      1               .      .     .         .     .             .            . 
      disigtspantotal                     .         .       .     .              .      .         .        .      1               .      .     .         .     .             .            . 
      fas                                 .         .       40    .              .      .         .        .      .               .      .     .         .     .             .            . 
      figid                               .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      figurecopy                          .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      figurelogic                         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      immediaterecall                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      info                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      information                         .         .       6     .              .      .         34       .      .               .      .     .         .     .             .            . 
      lineorientation                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      logicalmemory                       .         .       .     .              .      .         .        .      30              .      .     .         .     .             .            . 
      logicalmemorydelay                  .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      logicalmemoryimmed                  .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      logicalmemorytotal                  .         .       .     .              .      .         .        .      9               .      .     .         .     .             .            . 
      lpsspacialability                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      matrices                            .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      mirrecall                           .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      mmms                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      mmse                                .         .       .     .              .      40        .        .      .               .      .     .         .     .             .            . 
      nart                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      nocogspec                           .         .       .     .              .      .         .        .      .               .      .     44        .     .             .            . 
      numbercomparison                    .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      patterncomparison                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      picturecompletion                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      proserecall                         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      psif                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      symbol                              .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      synon                               .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      synonyms                            .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      trailsb                             .         29      .     10             .      .         .        .      .               .      .     .         .     .             .            . 
      verbalfluencytest                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      waisblockdesign                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      waisgeneralknowledge                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      waispicturecompletion               .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      waisvocab                           .         .       .     .              .      .         41       .      .               .      .     .         .     .             .            . 
      wordlistdelay                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      wordlistimmed                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      wordlistrecog                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
habc  3ms                                 .         .       .     .              .      .         .        .      .               .      24    .         .     .             .            . 
      anal                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      animals                             .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      block                               .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      blockdesign                         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      bnt                                 .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      bostonnaming                        .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      bostonstorydelay                    .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      bostonstoryimmediate                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      category                            .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      categoryfluency                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      clock                               .         .       .     .              .      .         .        .      .               .      24    .         .     .             .            . 
      complexideas                        .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      delayedwordrecall                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitbackward                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitordering                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitsback                          .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitsforward                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitspan                           .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitspanbackward                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitspanforward                    .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitspantotal                      .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitsymbol                         .         .       .     .              .      .         .        .      .               .      .     .         .     24            .            . 
      digitsymbolsubstitutiontest         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitsymboltotal                    .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      disigtspantotal                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      fas                                 .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      figid                               .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      figurecopy                          .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      figurelogic                         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      immediaterecall                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      info                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      information                         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      lineorientation                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      logicalmemory                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      logicalmemorydelay                  .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      logicalmemoryimmed                  .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      logicalmemorytotal                  .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      lpsspacialability                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      matrices                            .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      mirrecall                           .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      mmms                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      mmse                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      nart                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      nocogspec                           .         .       .     .              .      .         .        .      .               .      .     16        .     .             .            . 
      numbercomparison                    .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      patterncomparison                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      picturecompletion                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      proserecall                         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      psif                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      symbol                              .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      synon                               .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      synonyms                            .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      trailsb                             .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      verbalfluencytest                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      waisblockdesign                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      waisgeneralknowledge                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      waispicturecompletion               .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      waisvocab                           .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      wordlistdelay                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      wordlistimmed                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      wordlistrecog                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
ilse  3ms                                 .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      anal                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      animals                             .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      block                               .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      blockdesign                         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      bnt                                 .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      bostonnaming                        .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      bostonstorydelay                    .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      bostonstoryimmediate                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      category                            .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      categoryfluency                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      clock                               .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      complexideas                        .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      delayedwordrecall                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitbackward                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitordering                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitsback                          .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitsforward                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitspan                           .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitspanbackward                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitspanforward                    .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitspantotal                      .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitsymbol                         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitsymbolsubstitutiontest         .         .       .     .              .      .         .        .      .               .      .     .         .     20            .            . 
      digitsymboltotal                    .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      disigtspantotal                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      fas                                 .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      figid                               .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      figurecopy                          .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      figurelogic                         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      immediaterecall                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      info                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      information                         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      lineorientation                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      logicalmemory                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      logicalmemorydelay                  .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      logicalmemoryimmed                  .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      logicalmemorytotal                  .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      lpsspacialability                   .         .       .     .              .      .         .        .      .               .      .     .         14    .             .            . 
      matrices                            .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      mirrecall                           .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      mmms                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      mmse                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      nart                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      nocogspec                           .         .       .     .              .      .         .        .      .               .      .     17        .     .             .            . 
      numbercomparison                    .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      patterncomparison                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      picturecompletion                   .         .       .     .              .      .         .        .      .               .      .     .         8     .             .            . 
      proserecall                         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      psif                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      symbol                              .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      synon                               .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      synonyms                            .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      trailsb                             .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      verbalfluencytest                   .         .       20    .              .      .         .        .      .               .      .     .         .     .             .            . 
      waisblockdesign                     .         .       .     .              .      .         .        .      .               .      .     .         20    .             .            . 
      waisgeneralknowledge                .         .       .     .              .      .         12       .      .               .      .     .         .     .             .            . 
      waispicturecompletion               .         .       .     .              .      .         .        .      .               .      .     .         12    .             .            . 
      waisvocab                           .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      wordlistdelay                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      wordlistimmed                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      wordlistrecog                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
nas   3ms                                 .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      anal                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      animals                             .         .       .     .              .      .         .        .      .               .      .     .         .     .             6            . 
      block                               .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      blockdesign                         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      bnt                                 .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      bostonnaming                        .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      bostonstorydelay                    .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      bostonstoryimmediate                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      category                            .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      categoryfluency                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      clock                               .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      complexideas                        .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      delayedwordrecall                   .         .       .     .              .      .         .        .      .               6      .     .         .     .             .            . 
      digitbackward                       .         .       .     .              .      .         .        .      .               5      .     .         .     .             .            . 
      digitordering                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitsback                          .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitsforward                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitspan                           .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitspanbackward                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitspanforward                    .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitspantotal                      .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitsymbol                         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitsymbolsubstitutiontest         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitsymboltotal                    .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      disigtspantotal                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      fas                                 .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      figid                               .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      figurecopy                          .         .       .     .              6      .         .        .      .               .      .     .         .     .             .            . 
      figurelogic                         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      immediaterecall                     .         .       .     .              .      .         .        .      .               6      .     .         .     .             .            . 
      info                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      information                         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      lineorientation                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      logicalmemory                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      logicalmemorydelay                  .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      logicalmemoryimmed                  .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      logicalmemorytotal                  .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      lpsspacialability                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      matrices                            .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      mirrecall                           .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      mmms                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      mmse                                .         .       .     .              .      6         .        .      .               .      .     .         .     .             .            . 
      nart                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      nocogspec                           .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      numbercomparison                    .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      patterncomparison                   .         .       .     .              6      .         .        .      .               .      .     .         .     .             .            . 
      picturecompletion                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      proserecall                         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      psif                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      symbol                              .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      synon                               .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      synonyms                            .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      trailsb                             .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      verbalfluencytest                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      waisblockdesign                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      waisgeneralknowledge                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      waispicturecompletion               .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      waisvocab                           .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      wordlistdelay                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      wordlistimmed                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      wordlistrecog                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
nuage 3ms                                 .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      anal                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      animals                             .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      block                               .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      blockdesign                         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      bnt                                 .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      bostonnaming                        .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      bostonstorydelay                    .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      bostonstoryimmediate                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      category                            .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      categoryfluency                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      clock                               .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      complexideas                        .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      delayedwordrecall                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitbackward                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitordering                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitsback                          .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitsforward                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitspan                           .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitspanbackward                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitspanforward                    .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitspantotal                      .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitsymbol                         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitsymbolsubstitutiontest         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitsymboltotal                    .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      disigtspantotal                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      fas                                 .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      figid                               .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      figurecopy                          .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      figurelogic                         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      immediaterecall                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      info                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      information                         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      lineorientation                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      logicalmemory                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      logicalmemorydelay                  .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      logicalmemoryimmed                  .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      logicalmemorytotal                  .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      lpsspacialability                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      matrices                            .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      mirrecall                           .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      mmms                                .         .       .     .              .      12        .        .      .               .      .     .         .     .             .            . 
      mmse                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      nart                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      nocogspec                           .         .       .     .              .      .         .        .      .               .      .     6         .     .             .            . 
      numbercomparison                    .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      patterncomparison                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      picturecompletion                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      proserecall                         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      psif                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      symbol                              .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      synon                               .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      synonyms                            .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      trailsb                             .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      verbalfluencytest                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      waisblockdesign                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      waisgeneralknowledge                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      waispicturecompletion               .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      waisvocab                           .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      wordlistdelay                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      wordlistimmed                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      wordlistrecog                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
octo  3ms                                 .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      anal                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      animals                             .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      block                               .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      blockdesign                         .         .       .     .              .      .         .        .      .               .      .     .         8     .             .            . 
      bnt                                 .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      bostonnaming                        .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      bostonstorydelay                    .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      bostonstoryimmediate                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      category                            .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      categoryfluency                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      clock                               .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      complexideas                        .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      delayedwordrecall                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitbackward                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitordering                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitsback                          .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitsforward                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitspan                           .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitspanbackward                   .         .       .     .              .      .         .        .      8               .      .     .         .     .             .            . 
      digitspanforward                    .         .       .     .              .      .         .        .      8               .      .     .         .     .             .            . 
      digitspantotal                      .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitsymbol                         .         .       .     .              .      .         .        .      .               .      .     .         .     8             .            . 
      digitsymbolsubstitutiontest         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitsymboltotal                    .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      disigtspantotal                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      fas                                 .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      figid                               .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      figurecopy                          .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      figurelogic                         .         .       .     .              .      .         .        .      .               .      .     .         8     .             .            . 
      immediaterecall                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      info                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      information                         .         .       .     .              .      .         8        .      .               .      .     .         .     .             .            . 
      lineorientation                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      logicalmemory                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      logicalmemorydelay                  .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      logicalmemoryimmed                  .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      logicalmemorytotal                  .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      lpsspacialability                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      matrices                            .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      mirrecall                           .         .       .     .              .      .         .        .      8               .      .     .         .     .             .            . 
      mmms                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      mmse                                .         .       .     .              .      8         .        .      .               .      .     .         .     .             .            . 
      nart                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      nocogspec                           .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      numbercomparison                    .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      patterncomparison                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      picturecompletion                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      proserecall                         .         .       .     .              .      .         .        .      8               .      .     .         .     .             .            . 
      psif                                .         .       .     .              .      .         .        .      .               .      .     .         .     8             .            . 
      symbol                              .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      synon                               .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      synonyms                            .         .       .     .              .      .         8        .      .               .      .     .         .     .             .            . 
      trailsb                             .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      verbalfluencytest                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      waisblockdesign                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      waisgeneralknowledge                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      waispicturecompletion               .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      waisvocab                           .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      wordlistdelay                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      wordlistimmed                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      wordlistrecog                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
radc  3ms                                 .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      anal                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      animals                             .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      block                               .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      blockdesign                         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      bnt                                 .         .       .     .              .      .         .        6      .               .      .     .         .     .             .            . 
      bostonnaming                        .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      bostonstorydelay                    .         .       .     .              .      .         .        .      7               .      .     .         .     .             .            . 
      bostonstoryimmediate                .         .       .     .              .      .         .        .      7               .      .     .         .     .             .            . 
      category                            .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      categoryfluency                     .         4       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      clock                               .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      complexideas                        .         .       .     .              .      .         .        7      .               .      .     .         .     .             .            . 
      delayedwordrecall                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitbackward                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitordering                       .         6       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitsback                          .         6       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitsforward                       7         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitspan                           .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitspanbackward                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitspanforward                    .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitspantotal                      .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitsymbol                         .         .       .     .              .      .         .        .      .               .      .     .         .     7             .            . 
      digitsymbolsubstitutiontest         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitsymboltotal                    .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      disigtspantotal                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      fas                                 .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      figid                               .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      figurecopy                          .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      figurelogic                         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      immediaterecall                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      info                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      information                         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      lineorientation                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            7 
      logicalmemory                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      logicalmemorydelay                  .         .       .     .              .      .         .        .      7               .      .     .         .     .             .            . 
      logicalmemoryimmed                  .         .       .     .              .      .         .        .      5               .      .     .         .     .             .            . 
      logicalmemorytotal                  .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      lpsspacialability                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      matrices                            .         .       .     .              .      .         .        .      .               .      .     .         7     .             .            . 
      mirrecall                           .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      mmms                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      mmse                                .         .       .     .              .      7         .        .      .               .      .     .         .     .             .            . 
      nart                                .         .       .     .              .      .         7        .      .               .      .     .         .     .             .            . 
      nocogspec                           .         .       .     .              .      .         .        .      .               .      .     4         .     .             .            . 
      numbercomparison                    .         .       .     .              .      .         .        .      .               .      .     .         .     7             .            . 
      patterncomparison                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      picturecompletion                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      proserecall                         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      psif                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      symbol                              .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      synon                               .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      synonyms                            .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      trailsb                             .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      verbalfluencytest                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      waisblockdesign                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      waisgeneralknowledge                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      waispicturecompletion               .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      waisvocab                           .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      wordlistdelay                       .         .       .     .              .      .         .        .      7               .      .     .         .     .             .            . 
      wordlistimmed                       .         .       .     .              .      .         .        .      7               .      .     .         .     .             .            . 
      wordlistrecog                       .         .       .     .              .      .         .        .      7               .      .     .         .     .             .            . 
satsa 3ms                                 .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      anal                                .         .       .     .              .      .         16       .      .               .      .     .         .     .             .            . 
      animals                             .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      block                               .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      blockdesign                         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      bnt                                 .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      bostonnaming                        .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      bostonstorydelay                    .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      bostonstoryimmediate                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      category                            .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      categoryfluency                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      clock                               .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      complexideas                        .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      delayedwordrecall                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitbackward                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitordering                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitsback                          .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitsforward                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitspan                           .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitspanbackward                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitspanforward                    .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitspantotal                      .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitsymbol                         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitsymbolsubstitutiontest         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      digitsymboltotal                    .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      disigtspantotal                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      fas                                 .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      figid                               .         .       .     .              .      .         .        .      .               .      .     .         .     12            .            . 
      figurecopy                          .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      figurelogic                         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      immediaterecall                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      info                                .         .       .     .              .      .         16       .      .               .      .     .         .     .             .            . 
      information                         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      lineorientation                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      logicalmemory                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      logicalmemorydelay                  .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      logicalmemoryimmed                  .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      logicalmemorytotal                  .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      lpsspacialability                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      matrices                            .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      mirrecall                           .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      mmms                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      mmse                                .         .       .     .              .      16        .        .      .               .      .     .         .     .             .            . 
      nart                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      nocogspec                           .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      numbercomparison                    .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      patterncomparison                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      picturecompletion                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      proserecall                         .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      psif                                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      symbol                              .         .       .     .              .      .         .        .      .               .      .     .         .     16            .            . 
      synon                               .         .       .     .              .      .         16       .      .               .      .     .         .     .             .            . 
      synonyms                            .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      trailsb                             .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      verbalfluencytest                   .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      waisblockdesign                     .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      waisgeneralknowledge                .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      waispicturecompletion               .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      waisvocab                           .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      wordlistdelay                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      wordlistimmed                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
      wordlistrecog                       .         .       .     .              .      .         .        .      .               .      .     .         .     .             .            . 
```







# Bivariate models

## Cross Constructs

Number of models that uses this **physical construct** (column) and  **cognitive construct** (row):

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

## Cross Measures

Number of models that uses this **physical measure** (column) and  **cognitive measure** (row):

```
                             
                              fev fev1 fevc fvc gait grip hand nophysspec pek
  3ms                         .   .    .    .   8    .    8    8          .  
  anal                        8   .    .    .   .    8    .    .          .  
  animals                     .   3    .    3   .    .    .    .          .  
  block                       .   .    .    .   .    10   .    22         10 
  blockdesign                 .   .    .    .   .    4    .    .          4  
  bnt                         3   .    .    .   .    3    .    .          .  
  bostonnaming                .   .    .    .   .    10   .    20         10 
  bostonstorydelay            3   .    .    .   .    4    .    .          .  
  bostonstoryimmediate        3   .    .    .   .    4    .    .          .  
  category                    .   .    .    .   .    10   .    20         10 
  categoryfluency             .   .    .    .   .    4    .    .          .  
  clock                       .   .    .    .   9    .    7    8          .  
  complexideas                3   .    .    .   .    4    .    .          .  
  delayedwordrecall           .   3    .    3   .    .    .    .          .  
  digitbackward               .   2    1    2   .    .    .    .          .  
  digitordering               3   .    .    .   .    3    .    .          .  
  digitsback                  3   .    .    .   .    3    .    .          .  
  digitsforward               3   .    .    .   .    4    .    .          .  
  digitspan                   .   .    .    .   .    6    .    .          2  
  digitspanbackward           .   .    .    .   .    4    .    .          4  
  digitspanforward            .   .    .    .   .    4    .    .          4  
  digitspantotal              .   .    .    .   .    .    .    19         6  
  digitsymbol                 3   .    .    .   8    22   8    28         15 
  digitsymbolsubstitutiontest .   .    .    .   .    6    .    14         .  
  digitsymboltotal            .   .    .    .   .    .    .    .          1  
  disigtspantotal             .   .    .    .   .    .    .    1          .  
  fas                         .   .    .    .   .    10   .    20         10 
  figid                       6   .    .    .   .    6    .    .          .  
  figurecopy                  .   3    .    3   .    .    .    .          .  
  figurelogic                 .   .    .    .   .    4    .    .          4  
  immediaterecall             .   3    .    3   .    .    .    .          .  
  info                        8   .    .    .   .    8    .    .          .  
  information                 .   .    .    .   .    14   .    20         14 
  lineorientation             3   .    .    .   .    4    .    .          .  
  logicalmemory               .   .    .    .   .    9    .    20         1  
  logicalmemorydelay          3   .    .    .   .    4    .    .          .  
  logicalmemoryimmed          3   .    .    .   .    2    .    .          .  
  logicalmemorytotal          .   .    .    .   .    .    .    .          9  
  lpsspacialability           .   .    .    .   .    6    .    8          .  
  matrices                    3   .    .    .   .    4    .    .          .  
  mirrecall                   .   .    .    .   .    4    .    .          4  
  mmms                        .   .    .    .   .    6    .    6          .  
  mmse                        11  3    .    3   .    26   .    20         14 
  nart                        3   .    .    .   .    4    .    .          .  
  nocogspec                   2   .    .    .   8    38   8    9          22 
  numbercomparison            3   .    .    .   .    4    .    .          .  
  patterncomparison           .   3    .    3   .    .    .    .          .  
  picturecompletion           .   .    .    .   .    .    .    8          .  
  proserecall                 .   .    .    .   .    4    .    .          4  
  psif                        .   .    .    .   .    4    .    .          4  
  symbol                      8   .    .    .   .    8    .    .          .  
  synon                       8   .    .    .   .    8    .    .          .  
  synonyms                    .   .    .    .   .    4    .    .          4  
  trailsb                     .   .    .    .   .    10   .    19         10 
  verbalfluencytest           .   .    .    .   .    6    .    14         .  
  waisblockdesign             .   .    .    .   .    6    .    14         .  
  waisgeneralknowledge        .   .    .    .   .    6    .    6          .  
  waispicturecompletion       .   .    .    .   .    6    .    6          .  
  waisvocab                   .   .    .    .   .    10   .    20         11 
  wordlistdelay               3   .    .    .   .    4    .    .          .  
  wordlistimmed               3   .    .    .   .    4    .    .          .  
  wordlistrecog               3   .    .    .   .    4    .    .          .  
```

## Cross Measures (fill)


```
                                   fev fev1 fevc fvc gait grip hand nophysspec pek
                                                                                  
eas   3ms                           .    .    .   .    .    .    .          .   . 
      anal                          .    .    .   .    .    .    .          .   . 
      animals                       .    .    .   .    .    .    .          .   . 
      block                         .    .    .   .    .    10   .          22  10
      blockdesign                   .    .    .   .    .    .    .          .   . 
      bnt                           .    .    .   .    .    .    .          .   . 
      bostonnaming                  .    .    .   .    .    10   .          20  10
      bostonstorydelay              .    .    .   .    .    .    .          .   . 
      bostonstoryimmediate          .    .    .   .    .    .    .          .   . 
      category                      .    .    .   .    .    10   .          20  10
      categoryfluency               .    .    .   .    .    .    .          .   . 
      clock                         .    .    .   .    .    .    .          .   . 
      complexideas                  .    .    .   .    .    .    .          .   . 
      delayedwordrecall             .    .    .   .    .    .    .          .   . 
      digitbackward                 .    .    .   .    .    .    .          .   . 
      digitordering                 .    .    .   .    .    .    .          .   . 
      digitsback                    .    .    .   .    .    .    .          .   . 
      digitsforward                 .    .    .   .    .    .    .          .   . 
      digitspan                     .    .    .   .    .    6    .          .   2 
      digitspanbackward             .    .    .   .    .    .    .          .   . 
      digitspanforward              .    .    .   .    .    .    .          .   . 
      digitspantotal                .    .    .   .    .    .    .          19  6 
      digitsymbol                   .    .    .   .    .    14   .          20  11
      digitsymbolsubstitutiontest   .    .    .   .    .    .    .          .   . 
      digitsymboltotal              .    .    .   .    .    .    .          .   1 
      disigtspantotal               .    .    .   .    .    .    .          1   . 
      fas                           .    .    .   .    .    10   .          20  10
      figid                         .    .    .   .    .    .    .          .   . 
      figurecopy                    .    .    .   .    .    .    .          .   . 
      figurelogic                   .    .    .   .    .    .    .          .   . 
      immediaterecall               .    .    .   .    .    .    .          .   . 
      info                          .    .    .   .    .    .    .          .   . 
      information                   .    .    .   .    .    10   .          20  10
      lineorientation               .    .    .   .    .    .    .          .   . 
      logicalmemory                 .    .    .   .    .    9    .          20  1 
      logicalmemorydelay            .    .    .   .    .    .    .          .   . 
      logicalmemoryimmed            .    .    .   .    .    .    .          .   . 
      logicalmemorytotal            .    .    .   .    .    .    .          .   9 
      lpsspacialability             .    .    .   .    .    .    .          .   . 
      matrices                      .    .    .   .    .    .    .          .   . 
      mirrecall                     .    .    .   .    .    .    .          .   . 
      mmms                          .    .    .   .    .    .    .          .   . 
      mmse                          .    .    .   .    .    10   .          20  10
      nart                          .    .    .   .    .    .    .          .   . 
      nocogspec                     .    .    .   .    .    22   .          .   22
      numbercomparison              .    .    .   .    .    .    .          .   . 
      patterncomparison             .    .    .   .    .    .    .          .   . 
      picturecompletion             .    .    .   .    .    .    .          .   . 
      proserecall                   .    .    .   .    .    .    .          .   . 
      psif                          .    .    .   .    .    .    .          .   . 
      symbol                        .    .    .   .    .    .    .          .   . 
      synon                         .    .    .   .    .    .    .          .   . 
      synonyms                      .    .    .   .    .    .    .          .   . 
      trailsb                       .    .    .   .    .    10   .          19  10
      verbalfluencytest             .    .    .   .    .    .    .          .   . 
      waisblockdesign               .    .    .   .    .    .    .          .   . 
      waisgeneralknowledge          .    .    .   .    .    .    .          .   . 
      waispicturecompletion         .    .    .   .    .    .    .          .   . 
      waisvocab                     .    .    .   .    .    10   .          20  11
      wordlistdelay                 .    .    .   .    .    .    .          .   . 
      wordlistimmed                 .    .    .   .    .    .    .          .   . 
      wordlistrecog                 .    .    .   .    .    .    .          .   . 
habc  3ms                           .    .    .   .    8    .    8          8   . 
      anal                          .    .    .   .    .    .    .          .   . 
      animals                       .    .    .   .    .    .    .          .   . 
      block                         .    .    .   .    .    .    .          .   . 
      blockdesign                   .    .    .   .    .    .    .          .   . 
      bnt                           .    .    .   .    .    .    .          .   . 
      bostonnaming                  .    .    .   .    .    .    .          .   . 
      bostonstorydelay              .    .    .   .    .    .    .          .   . 
      bostonstoryimmediate          .    .    .   .    .    .    .          .   . 
      category                      .    .    .   .    .    .    .          .   . 
      categoryfluency               .    .    .   .    .    .    .          .   . 
      clock                         .    .    .   .    9    .    7          8   . 
      complexideas                  .    .    .   .    .    .    .          .   . 
      delayedwordrecall             .    .    .   .    .    .    .          .   . 
      digitbackward                 .    .    .   .    .    .    .          .   . 
      digitordering                 .    .    .   .    .    .    .          .   . 
      digitsback                    .    .    .   .    .    .    .          .   . 
      digitsforward                 .    .    .   .    .    .    .          .   . 
      digitspan                     .    .    .   .    .    .    .          .   . 
      digitspanbackward             .    .    .   .    .    .    .          .   . 
      digitspanforward              .    .    .   .    .    .    .          .   . 
      digitspantotal                .    .    .   .    .    .    .          .   . 
      digitsymbol                   .    .    .   .    8    .    8          8   . 
      digitsymbolsubstitutiontest   .    .    .   .    .    .    .          .   . 
      digitsymboltotal              .    .    .   .    .    .    .          .   . 
      disigtspantotal               .    .    .   .    .    .    .          .   . 
      fas                           .    .    .   .    .    .    .          .   . 
      figid                         .    .    .   .    .    .    .          .   . 
      figurecopy                    .    .    .   .    .    .    .          .   . 
      figurelogic                   .    .    .   .    .    .    .          .   . 
      immediaterecall               .    .    .   .    .    .    .          .   . 
      info                          .    .    .   .    .    .    .          .   . 
      information                   .    .    .   .    .    .    .          .   . 
      lineorientation               .    .    .   .    .    .    .          .   . 
      logicalmemory                 .    .    .   .    .    .    .          .   . 
      logicalmemorydelay            .    .    .   .    .    .    .          .   . 
      logicalmemoryimmed            .    .    .   .    .    .    .          .   . 
      logicalmemorytotal            .    .    .   .    .    .    .          .   . 
      lpsspacialability             .    .    .   .    .    .    .          .   . 
      matrices                      .    .    .   .    .    .    .          .   . 
      mirrecall                     .    .    .   .    .    .    .          .   . 
      mmms                          .    .    .   .    .    .    .          .   . 
      mmse                          .    .    .   .    .    .    .          .   . 
      nart                          .    .    .   .    .    .    .          .   . 
      nocogspec                     .    .    .   .    8    .    8          .   . 
      numbercomparison              .    .    .   .    .    .    .          .   . 
      patterncomparison             .    .    .   .    .    .    .          .   . 
      picturecompletion             .    .    .   .    .    .    .          .   . 
      proserecall                   .    .    .   .    .    .    .          .   . 
      psif                          .    .    .   .    .    .    .          .   . 
      symbol                        .    .    .   .    .    .    .          .   . 
      synon                         .    .    .   .    .    .    .          .   . 
      synonyms                      .    .    .   .    .    .    .          .   . 
      trailsb                       .    .    .   .    .    .    .          .   . 
      verbalfluencytest             .    .    .   .    .    .    .          .   . 
      waisblockdesign               .    .    .   .    .    .    .          .   . 
      waisgeneralknowledge          .    .    .   .    .    .    .          .   . 
      waispicturecompletion         .    .    .   .    .    .    .          .   . 
      waisvocab                     .    .    .   .    .    .    .          .   . 
      wordlistdelay                 .    .    .   .    .    .    .          .   . 
      wordlistimmed                 .    .    .   .    .    .    .          .   . 
      wordlistrecog                 .    .    .   .    .    .    .          .   . 
ilse  3ms                           .    .    .   .    .    .    .          .   . 
      anal                          .    .    .   .    .    .    .          .   . 
      animals                       .    .    .   .    .    .    .          .   . 
      block                         .    .    .   .    .    .    .          .   . 
      blockdesign                   .    .    .   .    .    .    .          .   . 
      bnt                           .    .    .   .    .    .    .          .   . 
      bostonnaming                  .    .    .   .    .    .    .          .   . 
      bostonstorydelay              .    .    .   .    .    .    .          .   . 
      bostonstoryimmediate          .    .    .   .    .    .    .          .   . 
      category                      .    .    .   .    .    .    .          .   . 
      categoryfluency               .    .    .   .    .    .    .          .   . 
      clock                         .    .    .   .    .    .    .          .   . 
      complexideas                  .    .    .   .    .    .    .          .   . 
      delayedwordrecall             .    .    .   .    .    .    .          .   . 
      digitbackward                 .    .    .   .    .    .    .          .   . 
      digitordering                 .    .    .   .    .    .    .          .   . 
      digitsback                    .    .    .   .    .    .    .          .   . 
      digitsforward                 .    .    .   .    .    .    .          .   . 
      digitspan                     .    .    .   .    .    .    .          .   . 
      digitspanbackward             .    .    .   .    .    .    .          .   . 
      digitspanforward              .    .    .   .    .    .    .          .   . 
      digitspantotal                .    .    .   .    .    .    .          .   . 
      digitsymbol                   .    .    .   .    .    .    .          .   . 
      digitsymbolsubstitutiontest   .    .    .   .    .    6    .          14  . 
      digitsymboltotal              .    .    .   .    .    .    .          .   . 
      disigtspantotal               .    .    .   .    .    .    .          .   . 
      fas                           .    .    .   .    .    .    .          .   . 
      figid                         .    .    .   .    .    .    .          .   . 
      figurecopy                    .    .    .   .    .    .    .          .   . 
      figurelogic                   .    .    .   .    .    .    .          .   . 
      immediaterecall               .    .    .   .    .    .    .          .   . 
      info                          .    .    .   .    .    .    .          .   . 
      information                   .    .    .   .    .    .    .          .   . 
      lineorientation               .    .    .   .    .    .    .          .   . 
      logicalmemory                 .    .    .   .    .    .    .          .   . 
      logicalmemorydelay            .    .    .   .    .    .    .          .   . 
      logicalmemoryimmed            .    .    .   .    .    .    .          .   . 
      logicalmemorytotal            .    .    .   .    .    .    .          .   . 
      lpsspacialability             .    .    .   .    .    6    .          8   . 
      matrices                      .    .    .   .    .    .    .          .   . 
      mirrecall                     .    .    .   .    .    .    .          .   . 
      mmms                          .    .    .   .    .    .    .          .   . 
      mmse                          .    .    .   .    .    .    .          .   . 
      nart                          .    .    .   .    .    .    .          .   . 
      nocogspec                     .    .    .   .    .    8    .          9   . 
      numbercomparison              .    .    .   .    .    .    .          .   . 
      patterncomparison             .    .    .   .    .    .    .          .   . 
      picturecompletion             .    .    .   .    .    .    .          8   . 
      proserecall                   .    .    .   .    .    .    .          .   . 
      psif                          .    .    .   .    .    .    .          .   . 
      symbol                        .    .    .   .    .    .    .          .   . 
      synon                         .    .    .   .    .    .    .          .   . 
      synonyms                      .    .    .   .    .    .    .          .   . 
      trailsb                       .    .    .   .    .    .    .          .   . 
      verbalfluencytest             .    .    .   .    .    6    .          14  . 
      waisblockdesign               .    .    .   .    .    6    .          14  . 
      waisgeneralknowledge          .    .    .   .    .    6    .          6   . 
      waispicturecompletion         .    .    .   .    .    6    .          6   . 
      waisvocab                     .    .    .   .    .    .    .          .   . 
      wordlistdelay                 .    .    .   .    .    .    .          .   . 
      wordlistimmed                 .    .    .   .    .    .    .          .   . 
      wordlistrecog                 .    .    .   .    .    .    .          .   . 
nas   3ms                           .    .    .   .    .    .    .          .   . 
      anal                          .    .    .   .    .    .    .          .   . 
      animals                       .    3    .   3    .    .    .          .   . 
      block                         .    .    .   .    .    .    .          .   . 
      blockdesign                   .    .    .   .    .    .    .          .   . 
      bnt                           .    .    .   .    .    .    .          .   . 
      bostonnaming                  .    .    .   .    .    .    .          .   . 
      bostonstorydelay              .    .    .   .    .    .    .          .   . 
      bostonstoryimmediate          .    .    .   .    .    .    .          .   . 
      category                      .    .    .   .    .    .    .          .   . 
      categoryfluency               .    .    .   .    .    .    .          .   . 
      clock                         .    .    .   .    .    .    .          .   . 
      complexideas                  .    .    .   .    .    .    .          .   . 
      delayedwordrecall             .    3    .   3    .    .    .          .   . 
      digitbackward                 .    2    1   2    .    .    .          .   . 
      digitordering                 .    .    .   .    .    .    .          .   . 
      digitsback                    .    .    .   .    .    .    .          .   . 
      digitsforward                 .    .    .   .    .    .    .          .   . 
      digitspan                     .    .    .   .    .    .    .          .   . 
      digitspanbackward             .    .    .   .    .    .    .          .   . 
      digitspanforward              .    .    .   .    .    .    .          .   . 
      digitspantotal                .    .    .   .    .    .    .          .   . 
      digitsymbol                   .    .    .   .    .    .    .          .   . 
      digitsymbolsubstitutiontest   .    .    .   .    .    .    .          .   . 
      digitsymboltotal              .    .    .   .    .    .    .          .   . 
      disigtspantotal               .    .    .   .    .    .    .          .   . 
      fas                           .    .    .   .    .    .    .          .   . 
      figid                         .    .    .   .    .    .    .          .   . 
      figurecopy                    .    3    .   3    .    .    .          .   . 
      figurelogic                   .    .    .   .    .    .    .          .   . 
      immediaterecall               .    3    .   3    .    .    .          .   . 
      info                          .    .    .   .    .    .    .          .   . 
      information                   .    .    .   .    .    .    .          .   . 
      lineorientation               .    .    .   .    .    .    .          .   . 
      logicalmemory                 .    .    .   .    .    .    .          .   . 
      logicalmemorydelay            .    .    .   .    .    .    .          .   . 
      logicalmemoryimmed            .    .    .   .    .    .    .          .   . 
      logicalmemorytotal            .    .    .   .    .    .    .          .   . 
      lpsspacialability             .    .    .   .    .    .    .          .   . 
      matrices                      .    .    .   .    .    .    .          .   . 
      mirrecall                     .    .    .   .    .    .    .          .   . 
      mmms                          .    .    .   .    .    .    .          .   . 
      mmse                          .    3    .   3    .    .    .          .   . 
      nart                          .    .    .   .    .    .    .          .   . 
      nocogspec                     .    .    .   .    .    .    .          .   . 
      numbercomparison              .    .    .   .    .    .    .          .   . 
      patterncomparison             .    3    .   3    .    .    .          .   . 
      picturecompletion             .    .    .   .    .    .    .          .   . 
      proserecall                   .    .    .   .    .    .    .          .   . 
      psif                          .    .    .   .    .    .    .          .   . 
      symbol                        .    .    .   .    .    .    .          .   . 
      synon                         .    .    .   .    .    .    .          .   . 
      synonyms                      .    .    .   .    .    .    .          .   . 
      trailsb                       .    .    .   .    .    .    .          .   . 
      verbalfluencytest             .    .    .   .    .    .    .          .   . 
      waisblockdesign               .    .    .   .    .    .    .          .   . 
      waisgeneralknowledge          .    .    .   .    .    .    .          .   . 
      waispicturecompletion         .    .    .   .    .    .    .          .   . 
      waisvocab                     .    .    .   .    .    .    .          .   . 
      wordlistdelay                 .    .    .   .    .    .    .          .   . 
      wordlistimmed                 .    .    .   .    .    .    .          .   . 
      wordlistrecog                 .    .    .   .    .    .    .          .   . 
nuage 3ms                           .    .    .   .    .    .    .          .   . 
      anal                          .    .    .   .    .    .    .          .   . 
      animals                       .    .    .   .    .    .    .          .   . 
      block                         .    .    .   .    .    .    .          .   . 
      blockdesign                   .    .    .   .    .    .    .          .   . 
      bnt                           .    .    .   .    .    .    .          .   . 
      bostonnaming                  .    .    .   .    .    .    .          .   . 
      bostonstorydelay              .    .    .   .    .    .    .          .   . 
      bostonstoryimmediate          .    .    .   .    .    .    .          .   . 
      category                      .    .    .   .    .    .    .          .   . 
      categoryfluency               .    .    .   .    .    .    .          .   . 
      clock                         .    .    .   .    .    .    .          .   . 
      complexideas                  .    .    .   .    .    .    .          .   . 
      delayedwordrecall             .    .    .   .    .    .    .          .   . 
      digitbackward                 .    .    .   .    .    .    .          .   . 
      digitordering                 .    .    .   .    .    .    .          .   . 
      digitsback                    .    .    .   .    .    .    .          .   . 
      digitsforward                 .    .    .   .    .    .    .          .   . 
      digitspan                     .    .    .   .    .    .    .          .   . 
      digitspanbackward             .    .    .   .    .    .    .          .   . 
      digitspanforward              .    .    .   .    .    .    .          .   . 
      digitspantotal                .    .    .   .    .    .    .          .   . 
      digitsymbol                   .    .    .   .    .    .    .          .   . 
      digitsymbolsubstitutiontest   .    .    .   .    .    .    .          .   . 
      digitsymboltotal              .    .    .   .    .    .    .          .   . 
      disigtspantotal               .    .    .   .    .    .    .          .   . 
      fas                           .    .    .   .    .    .    .          .   . 
      figid                         .    .    .   .    .    .    .          .   . 
      figurecopy                    .    .    .   .    .    .    .          .   . 
      figurelogic                   .    .    .   .    .    .    .          .   . 
      immediaterecall               .    .    .   .    .    .    .          .   . 
      info                          .    .    .   .    .    .    .          .   . 
      information                   .    .    .   .    .    .    .          .   . 
      lineorientation               .    .    .   .    .    .    .          .   . 
      logicalmemory                 .    .    .   .    .    .    .          .   . 
      logicalmemorydelay            .    .    .   .    .    .    .          .   . 
      logicalmemoryimmed            .    .    .   .    .    .    .          .   . 
      logicalmemorytotal            .    .    .   .    .    .    .          .   . 
      lpsspacialability             .    .    .   .    .    .    .          .   . 
      matrices                      .    .    .   .    .    .    .          .   . 
      mirrecall                     .    .    .   .    .    .    .          .   . 
      mmms                          .    .    .   .    .    6    .          6   . 
      mmse                          .    .    .   .    .    .    .          .   . 
      nart                          .    .    .   .    .    .    .          .   . 
      nocogspec                     .    .    .   .    .    6    .          .   . 
      numbercomparison              .    .    .   .    .    .    .          .   . 
      patterncomparison             .    .    .   .    .    .    .          .   . 
      picturecompletion             .    .    .   .    .    .    .          .   . 
      proserecall                   .    .    .   .    .    .    .          .   . 
      psif                          .    .    .   .    .    .    .          .   . 
      symbol                        .    .    .   .    .    .    .          .   . 
      synon                         .    .    .   .    .    .    .          .   . 
      synonyms                      .    .    .   .    .    .    .          .   . 
      trailsb                       .    .    .   .    .    .    .          .   . 
      verbalfluencytest             .    .    .   .    .    .    .          .   . 
      waisblockdesign               .    .    .   .    .    .    .          .   . 
      waisgeneralknowledge          .    .    .   .    .    .    .          .   . 
      waispicturecompletion         .    .    .   .    .    .    .          .   . 
      waisvocab                     .    .    .   .    .    .    .          .   . 
      wordlistdelay                 .    .    .   .    .    .    .          .   . 
      wordlistimmed                 .    .    .   .    .    .    .          .   . 
      wordlistrecog                 .    .    .   .    .    .    .          .   . 
octo  3ms                           .    .    .   .    .    .    .          .   . 
      anal                          .    .    .   .    .    .    .          .   . 
      animals                       .    .    .   .    .    .    .          .   . 
      block                         .    .    .   .    .    .    .          .   . 
      blockdesign                   .    .    .   .    .    4    .          .   4 
      bnt                           .    .    .   .    .    .    .          .   . 
      bostonnaming                  .    .    .   .    .    .    .          .   . 
      bostonstorydelay              .    .    .   .    .    .    .          .   . 
      bostonstoryimmediate          .    .    .   .    .    .    .          .   . 
      category                      .    .    .   .    .    .    .          .   . 
      categoryfluency               .    .    .   .    .    .    .          .   . 
      clock                         .    .    .   .    .    .    .          .   . 
      complexideas                  .    .    .   .    .    .    .          .   . 
      delayedwordrecall             .    .    .   .    .    .    .          .   . 
      digitbackward                 .    .    .   .    .    .    .          .   . 
      digitordering                 .    .    .   .    .    .    .          .   . 
      digitsback                    .    .    .   .    .    .    .          .   . 
      digitsforward                 .    .    .   .    .    .    .          .   . 
      digitspan                     .    .    .   .    .    .    .          .   . 
      digitspanbackward             .    .    .   .    .    4    .          .   4 
      digitspanforward              .    .    .   .    .    4    .          .   4 
      digitspantotal                .    .    .   .    .    .    .          .   . 
      digitsymbol                   .    .    .   .    .    4    .          .   4 
      digitsymbolsubstitutiontest   .    .    .   .    .    .    .          .   . 
      digitsymboltotal              .    .    .   .    .    .    .          .   . 
      disigtspantotal               .    .    .   .    .    .    .          .   . 
      fas                           .    .    .   .    .    .    .          .   . 
      figid                         .    .    .   .    .    .    .          .   . 
      figurecopy                    .    .    .   .    .    .    .          .   . 
      figurelogic                   .    .    .   .    .    4    .          .   4 
      immediaterecall               .    .    .   .    .    .    .          .   . 
      info                          .    .    .   .    .    .    .          .   . 
      information                   .    .    .   .    .    4    .          .   4 
      lineorientation               .    .    .   .    .    .    .          .   . 
      logicalmemory                 .    .    .   .    .    .    .          .   . 
      logicalmemorydelay            .    .    .   .    .    .    .          .   . 
      logicalmemoryimmed            .    .    .   .    .    .    .          .   . 
      logicalmemorytotal            .    .    .   .    .    .    .          .   . 
      lpsspacialability             .    .    .   .    .    .    .          .   . 
      matrices                      .    .    .   .    .    .    .          .   . 
      mirrecall                     .    .    .   .    .    4    .          .   4 
      mmms                          .    .    .   .    .    .    .          .   . 
      mmse                          .    .    .   .    .    4    .          .   4 
      nart                          .    .    .   .    .    .    .          .   . 
      nocogspec                     .    .    .   .    .    .    .          .   . 
      numbercomparison              .    .    .   .    .    .    .          .   . 
      patterncomparison             .    .    .   .    .    .    .          .   . 
      picturecompletion             .    .    .   .    .    .    .          .   . 
      proserecall                   .    .    .   .    .    4    .          .   4 
      psif                          .    .    .   .    .    4    .          .   4 
      symbol                        .    .    .   .    .    .    .          .   . 
      synon                         .    .    .   .    .    .    .          .   . 
      synonyms                      .    .    .   .    .    4    .          .   4 
      trailsb                       .    .    .   .    .    .    .          .   . 
      verbalfluencytest             .    .    .   .    .    .    .          .   . 
      waisblockdesign               .    .    .   .    .    .    .          .   . 
      waisgeneralknowledge          .    .    .   .    .    .    .          .   . 
      waispicturecompletion         .    .    .   .    .    .    .          .   . 
      waisvocab                     .    .    .   .    .    .    .          .   . 
      wordlistdelay                 .    .    .   .    .    .    .          .   . 
      wordlistimmed                 .    .    .   .    .    .    .          .   . 
      wordlistrecog                 .    .    .   .    .    .    .          .   . 
radc  3ms                           .    .    .   .    .    .    .          .   . 
      anal                          .    .    .   .    .    .    .          .   . 
      animals                       .    .    .   .    .    .    .          .   . 
      block                         .    .    .   .    .    .    .          .   . 
      blockdesign                   .    .    .   .    .    .    .          .   . 
      bnt                           3    .    .   .    .    3    .          .   . 
      bostonnaming                  .    .    .   .    .    .    .          .   . 
      bostonstorydelay              3    .    .   .    .    4    .          .   . 
      bostonstoryimmediate          3    .    .   .    .    4    .          .   . 
      category                      .    .    .   .    .    .    .          .   . 
      categoryfluency               .    .    .   .    .    4    .          .   . 
      clock                         .    .    .   .    .    .    .          .   . 
      complexideas                  3    .    .   .    .    4    .          .   . 
      delayedwordrecall             .    .    .   .    .    .    .          .   . 
      digitbackward                 .    .    .   .    .    .    .          .   . 
      digitordering                 3    .    .   .    .    3    .          .   . 
      digitsback                    3    .    .   .    .    3    .          .   . 
      digitsforward                 3    .    .   .    .    4    .          .   . 
      digitspan                     .    .    .   .    .    .    .          .   . 
      digitspanbackward             .    .    .   .    .    .    .          .   . 
      digitspanforward              .    .    .   .    .    .    .          .   . 
      digitspantotal                .    .    .   .    .    .    .          .   . 
      digitsymbol                   3    .    .   .    .    4    .          .   . 
      digitsymbolsubstitutiontest   .    .    .   .    .    .    .          .   . 
      digitsymboltotal              .    .    .   .    .    .    .          .   . 
      disigtspantotal               .    .    .   .    .    .    .          .   . 
      fas                           .    .    .   .    .    .    .          .   . 
      figid                         .    .    .   .    .    .    .          .   . 
      figurecopy                    .    .    .   .    .    .    .          .   . 
      figurelogic                   .    .    .   .    .    .    .          .   . 
      immediaterecall               .    .    .   .    .    .    .          .   . 
      info                          .    .    .   .    .    .    .          .   . 
      information                   .    .    .   .    .    .    .          .   . 
      lineorientation               3    .    .   .    .    4    .          .   . 
      logicalmemory                 .    .    .   .    .    .    .          .   . 
      logicalmemorydelay            3    .    .   .    .    4    .          .   . 
      logicalmemoryimmed            3    .    .   .    .    2    .          .   . 
      logicalmemorytotal            .    .    .   .    .    .    .          .   . 
      lpsspacialability             .    .    .   .    .    .    .          .   . 
      matrices                      3    .    .   .    .    4    .          .   . 
      mirrecall                     .    .    .   .    .    .    .          .   . 
      mmms                          .    .    .   .    .    .    .          .   . 
      mmse                          3    .    .   .    .    4    .          .   . 
      nart                          3    .    .   .    .    4    .          .   . 
      nocogspec                     2    .    .   .    .    2    .          .   . 
      numbercomparison              3    .    .   .    .    4    .          .   . 
      patterncomparison             .    .    .   .    .    .    .          .   . 
      picturecompletion             .    .    .   .    .    .    .          .   . 
      proserecall                   .    .    .   .    .    .    .          .   . 
      psif                          .    .    .   .    .    .    .          .   . 
      symbol                        .    .    .   .    .    .    .          .   . 
      synon                         .    .    .   .    .    .    .          .   . 
      synonyms                      .    .    .   .    .    .    .          .   . 
      trailsb                       .    .    .   .    .    .    .          .   . 
      verbalfluencytest             .    .    .   .    .    .    .          .   . 
      waisblockdesign               .    .    .   .    .    .    .          .   . 
      waisgeneralknowledge          .    .    .   .    .    .    .          .   . 
      waispicturecompletion         .    .    .   .    .    .    .          .   . 
      waisvocab                     .    .    .   .    .    .    .          .   . 
      wordlistdelay                 3    .    .   .    .    4    .          .   . 
      wordlistimmed                 3    .    .   .    .    4    .          .   . 
      wordlistrecog                 3    .    .   .    .    4    .          .   . 
satsa 3ms                           .    .    .   .    .    .    .          .   . 
      anal                          8    .    .   .    .    8    .          .   . 
      animals                       .    .    .   .    .    .    .          .   . 
      block                         .    .    .   .    .    .    .          .   . 
      blockdesign                   .    .    .   .    .    .    .          .   . 
      bnt                           .    .    .   .    .    .    .          .   . 
      bostonnaming                  .    .    .   .    .    .    .          .   . 
      bostonstorydelay              .    .    .   .    .    .    .          .   . 
      bostonstoryimmediate          .    .    .   .    .    .    .          .   . 
      category                      .    .    .   .    .    .    .          .   . 
      categoryfluency               .    .    .   .    .    .    .          .   . 
      clock                         .    .    .   .    .    .    .          .   . 
      complexideas                  .    .    .   .    .    .    .          .   . 
      delayedwordrecall             .    .    .   .    .    .    .          .   . 
      digitbackward                 .    .    .   .    .    .    .          .   . 
      digitordering                 .    .    .   .    .    .    .          .   . 
      digitsback                    .    .    .   .    .    .    .          .   . 
      digitsforward                 .    .    .   .    .    .    .          .   . 
      digitspan                     .    .    .   .    .    .    .          .   . 
      digitspanbackward             .    .    .   .    .    .    .          .   . 
      digitspanforward              .    .    .   .    .    .    .          .   . 
      digitspantotal                .    .    .   .    .    .    .          .   . 
      digitsymbol                   .    .    .   .    .    .    .          .   . 
      digitsymbolsubstitutiontest   .    .    .   .    .    .    .          .   . 
      digitsymboltotal              .    .    .   .    .    .    .          .   . 
      disigtspantotal               .    .    .   .    .    .    .          .   . 
      fas                           .    .    .   .    .    .    .          .   . 
      figid                         6    .    .   .    .    6    .          .   . 
      figurecopy                    .    .    .   .    .    .    .          .   . 
      figurelogic                   .    .    .   .    .    .    .          .   . 
      immediaterecall               .    .    .   .    .    .    .          .   . 
      info                          8    .    .   .    .    8    .          .   . 
      information                   .    .    .   .    .    .    .          .   . 
      lineorientation               .    .    .   .    .    .    .          .   . 
      logicalmemory                 .    .    .   .    .    .    .          .   . 
      logicalmemorydelay            .    .    .   .    .    .    .          .   . 
      logicalmemoryimmed            .    .    .   .    .    .    .          .   . 
      logicalmemorytotal            .    .    .   .    .    .    .          .   . 
      lpsspacialability             .    .    .   .    .    .    .          .   . 
      matrices                      .    .    .   .    .    .    .          .   . 
      mirrecall                     .    .    .   .    .    .    .          .   . 
      mmms                          .    .    .   .    .    .    .          .   . 
      mmse                          8    .    .   .    .    8    .          .   . 
      nart                          .    .    .   .    .    .    .          .   . 
      nocogspec                     .    .    .   .    .    .    .          .   . 
      numbercomparison              .    .    .   .    .    .    .          .   . 
      patterncomparison             .    .    .   .    .    .    .          .   . 
      picturecompletion             .    .    .   .    .    .    .          .   . 
      proserecall                   .    .    .   .    .    .    .          .   . 
      psif                          .    .    .   .    .    .    .          .   . 
      symbol                        8    .    .   .    .    8    .          .   . 
      synon                         8    .    .   .    .    8    .          .   . 
      synonyms                      .    .    .   .    .    .    .          .   . 
      trailsb                       .    .    .   .    .    .    .          .   . 
      verbalfluencytest             .    .    .   .    .    .    .          .   . 
      waisblockdesign               .    .    .   .    .    .    .          .   . 
      waisgeneralknowledge          .    .    .   .    .    .    .          .   . 
      waispicturecompletion         .    .    .   .    .    .    .          .   . 
      waisvocab                     .    .    .   .    .    .    .          .   . 
      wordlistdelay                 .    .    .   .    .    .    .          .   . 
      wordlistimmed                 .    .    .   .    .    .    .          .   . 
      wordlistrecog                 .    .    .   .    .    .    .          .   . 
```


## Cross Measures by Study

### eas
Number of models in the **eas** study with the following combination of physical measures (columns) and cognitive measure (rows) 
```
                    
                     grip nophysspec pek
  block              10   22         10 
  bostonnaming       10   20         10 
  category           10   20         10 
  digitspan          6    .          2  
  digitspantotal     .    19         6  
  digitsymbol        14   20         11 
  digitsymboltotal   .    .          1  
  disigtspantotal    .    1          .  
  fas                10   20         10 
  information        10   20         10 
  logicalmemory      9    20         1  
  logicalmemorytotal .    .          9  
  mmse               10   20         10 
  nocogspec          22   .          22 
  trailsb            10   19         10 
  waisvocab          10   20         11 
```

### habc
Number of models in the **habc** study with the following combination of physical measures (columns) and cognitive measure (rows) 
```
             
              gait hand nophysspec
  3ms         8    8    8         
  clock       9    7    8         
  digitsymbol 8    8    8         
  nocogspec   8    8    .         
```

### ilse
Number of models in the **ilse** study with the following combination of physical measures (columns) and cognitive measure (rows) 
```
                             
                              grip nophysspec
  digitsymbolsubstitutiontest 6    14        
  lpsspacialability           6    8         
  nocogspec                   8    9         
  picturecompletion           .    8         
  verbalfluencytest           6    14        
  waisblockdesign             6    14        
  waisgeneralknowledge        6    6         
  waispicturecompletion       6    6         
```

### nas
Number of models in the **nas** study with the following combination of physical measures (columns) and cognitive measure (rows) 
```
                   
                    fev1 fevc fvc
  animals           3    .    3  
  delayedwordrecall 3    .    3  
  digitbackward     2    1    2  
  figurecopy        3    .    3  
  immediaterecall   3    .    3  
  mmse              3    .    3  
  patterncomparison 3    .    3  
```

### nuage
Number of models in the **nuage** study with the following combination of physical measures (columns) and cognitive measure (rows) 
```
           
            grip nophysspec
  mmms      6    6         
  nocogspec 6    .         
```

### octo
Number of models in the **octo** study with the following combination of physical measures (columns) and cognitive measure (rows) 
```
                   
                    grip pek
  blockdesign       4    4  
  digitspanbackward 4    4  
  digitspanforward  4    4  
  digitsymbol       4    4  
  figurelogic       4    4  
  information       4    4  
  mirrecall         4    4  
  mmse              4    4  
  proserecall       4    4  
  psif              4    4  
  synonyms          4    4  
```

### radc
Number of models in the **radc** study with the following combination of physical measures (columns) and cognitive measure (rows) 
```
                      
                       fev grip
  bnt                  3   3   
  bostonstorydelay     3   4   
  bostonstoryimmediate 3   4   
  categoryfluency      .   4   
  complexideas         3   4   
  digitordering        3   3   
  digitsback           3   3   
  digitsforward        3   4   
  digitsymbol          3   4   
  lineorientation      3   4   
  logicalmemorydelay   3   4   
  logicalmemoryimmed   3   2   
  matrices             3   4   
  mmse                 3   4   
  nart                 3   4   
  nocogspec            2   2   
  numbercomparison     3   4   
  wordlistdelay        3   4   
  wordlistimmed        3   4   
  wordlistrecog        3   4   
```

### satsa
Number of models in the **satsa** study with the following combination of physical measures (columns) and cognitive measure (rows) 
```
        
         fev grip
  anal   8   8   
  figid  6   6   
  info   8   8   
  mmse   8   8   
  symbol 8   8   
  synon  8   8   
```






# Session Information
For the sake of documentation and reproducibility, the current report was rendered on a system using the following software.


```
Report rendered by koval_000 at 2015-06-05, 15:18 -0700
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
 [1] Rcpp_0.11.6      magrittr_1.5     MASS_7.3-40      munsell_0.4.2    colorspace_1.2-6 stringr_1.0.0   
 [7] plyr_1.8.2       tools_3.2.0      parallel_3.2.0   gtable_0.1.2     DBI_0.3.1        htmltools_0.2.6 
[13] yaml_2.1.13      digest_0.6.8     assertthat_0.1   reshape2_1.4.1   formatR_1.2      evaluate_0.7    
[19] rmarkdown_0.6.1  stringi_0.4-1    proto_0.3-10    
```
