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

<!-- Prepare pretty data   -->
Counting valid models in each study:


# Study-Specific Tables
Two tables are created for each study: one for univariate models, another for bivariate models

## eas


Table: Bivariate Results

study_name   subgroup   model<br/>type   outcome<br/>physical   cognitive<br/>outcome   sd<br/>intercept   sd<br/>slope   sd<br/>residual    p<br/>cov<br/>int   p<br/>cov<br/>slope   p<br/>cov<br/>res
-----------  ---------  ---------------  ---------------------  ----------------------  -----------------  -------------  ----------------  ------------------  --------------------  ------------------
eas          female     ae               muscle                 fluency                 0.26               0.07           0.04                           0.017                 0.882               0.537
eas          female     ae               muscle                 fluency                 0.13               0.06           -0.07                          0.270                 0.802               0.248
eas          female     ae               muscle                 fluency                 0.23               0.62           0.05                           0.027                 0.120               0.434
eas          female     aeh              muscle                 fluency                 0.39               0.36           0.01                           0.016                 0.677               0.914
eas          female     aeh              muscle                 fluency                 0.21               0.36           -0.05                          0.137                 0.455               0.493
eas          female     aeh              muscle                 fluency                 0.24               0.23           0.06                           0.088                 0.795               0.450
eas          female     aehplus          muscle                 fluency                 0.33               0.37           0.01                           0.079                 0.673               0.905
eas          female     aehplus          muscle                 fluency                 0.15               0.41           -0.05                          0.322                 0.491               0.519
eas          female     aehplus          muscle                 fluency                 0.16               0.20           0.06                           0.345                 0.841               0.451
eas          female     age              muscle                 fluency                 0.23               0.09           0.04                           0.024                 0.864               0.551
eas          female     age              muscle                 fluency                 0.11               0.06           -0.07                          0.278                 0.824               0.261
eas          female     age              muscle                 fluency                 0.21               0.61           0.04                           0.037                 0.124               0.448
eas          female     age              muscle                 fluency                 -0.06              -0.56          0.02                           0.679                 0.077               0.778
eas          female     full             muscle                 fluency                 0.33               0.37           0.01                           0.084                 0.693               0.887
eas          female     full             muscle                 fluency                 0.16               0.41           -0.05                          0.314                 0.516               0.558
eas          female     full             muscle                 fluency                 0.17               0.17           0.06                           0.331                 0.861               0.500
eas          male       ae               muscle                 fluency                 -0.08              -0.60          -0.08                          0.826                 0.742               0.365
eas          male       ae               muscle                 fluency                 -0.15              -0.28          -0.02                          0.408                 0.501               0.830
eas          male       ae               muscle                 fluency                 0.02               0.00           0.01                           0.896                 0.994               0.858
eas          male       ae               muscle                 fluency                 0.12               -0.97          -0.00                          0.677                 0.059               0.956
eas          male       aeh              muscle                 fluency                 -0.12              -0.12          -0.02                          0.807                 0.917               0.858
eas          male       aeh              muscle                 fluency                 -0.25              -0.57          0.07                           0.362                 0.513               0.524
eas          male       aeh              muscle                 fluency                 -0.29              -0.51          -0.02                          0.223                 0.632               0.888
eas          male       aeh              muscle                 fluency                 0.15               0.36           -0.00                          0.724                 0.910               0.974
eas          male       aehplus          muscle                 fluency                 -0.16              0.18           -0.01                          0.793                 0.943               0.956
eas          male       aehplus          muscle                 fluency                 -0.23              -0.67          0.10                           0.453                 0.618               0.427
eas          male       aehplus          muscle                 fluency                 -0.30              -0.38          -0.03                          0.390                 0.798               0.868
eas          male       aehplus          muscle                 fluency                 0.12               0.22           0.00                           0.854                 0.971               0.998
eas          male       age              muscle                 fluency                 -0.10              -0.43          -0.08                          0.772                 0.744               0.371
eas          male       age              muscle                 fluency                 -0.21              -0.23          -0.02                          0.172                 0.572               0.806
eas          male       age              muscle                 fluency                 -0.07              0.00           0.02                           0.573                 0.994               0.813
eas          male       age              muscle                 fluency                 0.01               -0.76          -0.03                          0.979                 0.080               0.736
eas          male       full             muscle                 fluency                 -0.14              0.36           -0.00                          0.831                 0.887               0.995
eas          male       full             muscle                 fluency                 -0.23              -0.41          0.09                           0.550                 0.790               0.536
eas          male       full             muscle                 fluency                 -0.32              -0.50          -0.03                          0.392                 0.757               0.885
eas          male       full             muscle                 fluency                 0.14               0.35           0.01                           0.843                 0.959               0.949
eas          female     ae               muscle                 fluid                   -0.32              -0.07          0.10                           0.017                 0.900               0.139
eas          female     aeh              muscle                 fluid                   -0.39              -0.58          0.14                           0.018                 0.701               0.084
eas          female     aehplus          muscle                 fluid                   -0.34              -0.71          0.13                           0.056                 0.745               0.114
eas          female     age              muscle                 fluid                   -0.29              -0.09          0.11                           0.025                 0.876               0.116
eas          female     full             muscle                 fluid                   -0.34              -0.69          0.13                           0.059                 0.770               0.125
eas          male       ae               muscle                 fluid                   0.13               -0.15          -0.06                          0.625                 0.767               0.625
eas          male       aeh              muscle                 fluid                   0.21               -0.39          -0.07                          0.570                 0.651               0.668
eas          male       aehplus          muscle                 fluid                   0.25               0.06           -0.07                          0.565                 0.975               0.729
eas          male       age              muscle                 fluid                   0.23               -0.17          -0.06                          0.351                 0.700               0.606
eas          male       full             muscle                 fluid                   0.27               0.56           -0.07                          0.542                 0.928               0.719
eas          female     ae               muscle                 global                  0.29               0.38           -0.00                          0.056                 0.300               0.972
eas          female     aeh              muscle                 global                  0.34               0.34           -0.03                          0.054                 0.487               0.749
eas          female     aehplus          muscle                 global                  0.30               0.40           -0.03                          0.107                 0.559               0.768
eas          female     age              muscle                 global                  0.26               0.35           0.00                           0.061                 0.385               0.999
eas          female     full             muscle                 global                  0.30               0.37           -0.03                          0.106                 0.579               0.760
eas          male       ae               muscle                 global                  -0.04              0.47           0.04                           0.923                 0.758               0.695
eas          male       aeh              muscle                 global                  -0.05              0.59           0.04                           0.913                 0.556               0.719
eas          male       aehplus          muscle                 global                  -0.08              0.63           0.02                           0.902                 0.711               0.866
eas          male       age              muscle                 global                  -0.08              0.26           0.04                           0.822                 0.826               0.677
eas          male       full             muscle                 global                  -0.10              0.67           0.02                           0.890                 0.716               0.868
eas          female     ae               muscle                 knowledge               -0.03              -0.54          0.02                           0.829                 0.100               0.791
eas          female     ae               muscle                 knowledge               0.21               0.56           -0.07                          0.083                 0.257               0.358
eas          female     aeh              muscle                 knowledge               0.05               -0.65          0.11                           0.821                 0.697               0.240
eas          female     aeh              muscle                 knowledge               0.21               0.74           -0.09                          0.115                 0.377               0.303
eas          female     aehplus          muscle                 knowledge               -0.03              -0.54          0.11                           0.892                 0.800               0.255
eas          female     aehplus          muscle                 knowledge               0.15               0.75           -0.09                          0.332                 0.431               0.360
eas          female     age              muscle                 knowledge               0.16               0.41           -0.07                          0.112                 0.376               0.371
eas          female     full             muscle                 knowledge               -0.04              -0.53          0.11                           0.885                 0.806               0.273
eas          female     full             muscle                 knowledge               0.15               0.77           -0.08                          0.344                 0.444               0.392
eas          male       ae               muscle                 knowledge               0.13               0.24           -0.05                          0.620                 0.609               0.624
eas          male       aeh              muscle                 knowledge               -0.06              0.83           -0.06                          0.873                 0.422               0.745
eas          male       aehplus          muscle                 knowledge               -0.11              0.71           -0.06                          0.813                 0.640               0.771
eas          male       age              muscle                 knowledge               -0.03              0.39           -0.06                          0.881                 0.414               0.534
eas          male       full             muscle                 knowledge               -0.12              0.67           -0.06                          0.815                 0.667               0.798
eas          female     ae               muscle                 memory                  -0.09              0.52           0.03                           0.448                 0.046               0.583
eas          female     ae               muscle                 memory                  0.16               0.43           0.03                           0.188                 0.169               0.581
eas          female     aeh              muscle                 memory                  -0.05              -0.19          0.02                           0.744                 0.765               0.800
eas          female     aeh              muscle                 memory                  0.14               0.15           0.06                           0.420                 0.870               0.474
eas          female     aehplus          muscle                 memory                  -0.13              -0.14          0.02                           0.401                 0.842               0.844
eas          female     aehplus          muscle                 memory                  0.10               0.19           0.06                           0.608                 0.873               0.539
eas          female     age              muscle                 memory                  -0.10              0.52           0.03                           0.388                 0.034               0.597
eas          female     age              muscle                 memory                  0.14               0.41           0.03                           0.221                 0.181               0.573
eas          female     full             muscle                 memory                  -0.13              -0.18          0.02                           0.391                 0.800               0.826
eas          female     full             muscle                 memory                  0.11               0.19           0.05                           0.588                 0.881               0.561
eas          male       ae               muscle                 memory                  0.07               0.30           0.04                           0.662                 0.616               0.609
eas          male       ae               muscle                 memory                  -0.11              -0.11          0.15                           0.602                 0.809               0.130
eas          male       aeh              muscle                 memory                  0.18               0.01           -0.03                          0.510                 0.989               0.805
eas          male       aehplus          muscle                 memory                  0.17               -0.01          -0.01                          0.597                 0.994               0.926
eas          male       aehplus          muscle                 memory                  -0.13              -0.63          0.16                           0.770                 0.785               0.367
eas          male       age              muscle                 memory                  0.02               0.42           0.04                           0.908                 0.466               0.580
eas          male       age              muscle                 memory                  -0.18              -0.13          0.15                           0.344                 0.756               0.125
eas          male       full             muscle                 memory                  0.15               -0.19          -0.01                          0.719                 0.935               0.959
eas          male       full             muscle                 memory                  -0.10              -0.55          0.16                           0.842                 0.851               0.439
eas          female     ae               muscle                 reasoning               0.04               0.76           0.01                           0.707                 0.022               0.858
eas          female     aeh              muscle                 reasoning               0.23               0.09           -0.01                          0.107                 0.891               0.889
eas          female     aehplus          muscle                 reasoning               0.16               0.03           -0.01                          0.321                 0.965               0.942
eas          female     age              muscle                 reasoning               0.03               0.72           0.01                           0.809                 0.022               0.895
eas          female     full             muscle                 reasoning               0.16               0.06           -0.01                          0.329                 0.938               0.957
eas          male       ae               muscle                 reasoning               -0.01              0.81           0.03                           0.959                 0.282               0.720
eas          male       aeh              muscle                 reasoning               0.16               0.89           0.00                           0.645                 0.578               0.982
eas          male       aehplus          muscle                 reasoning               0.15               0.80           0.01                           0.731                 0.826               0.976
eas          male       age              muscle                 reasoning               -0.05              0.71           0.03                           0.802                 0.182               0.720
eas          male       full             muscle                 reasoning               0.19               0.70           0.01                           0.696                 0.902               0.959
eas          female     ae               muscle                 speed                   0.19               0.57           -0.03                          0.063                 0.014               0.710
eas          female     aeh              muscle                 speed                   0.32               -0.11          -0.08                          0.025                 0.922               0.362
eas          female     aehplus          muscle                 speed                   0.27               -0.03          -0.08                          0.081                 0.984               0.324
eas          female     age              muscle                 speed                   0.16               0.60           -0.03                          0.088                 0.010               0.666
eas          female     full             muscle                 speed                   0.27               -0.07          -0.09                          0.086                 0.959               0.334
eas          male       ae               muscle                 speed                   0.03               0.58           0.11                           0.890                 0.145               0.174
eas          male       aeh              muscle                 speed                   -0.14              0.60           0.07                           0.588                 0.396               0.559
eas          male       aehplus          muscle                 speed                   -0.16              0.58           0.08                           0.631                 0.501               0.610
eas          male       age              muscle                 speed                   -0.08              0.51           0.11                           0.691                 0.113               0.172
eas          male       full             muscle                 speed                   -0.14              0.67           0.08                           0.721                 0.645               0.652
eas          female     ae               pulmonary              knowledge               0.02               -0.27          0.01                           0.866                 0.574               0.910
eas          female     ae               pulmonary              executive               -0.34              -0.36          --                             0.010                 0.498                  NA
eas          female     aeh              pulmonary              executive               -0.29              -0.28          --                             0.108                 0.846                  NA
eas          female     aehplus          pulmonary              executive               -0.25              -0.08          --                             0.206                 0.964                  NA
eas          female     age              pulmonary              executive               -0.33              -0.38          --                             0.008                 0.463                  NA
eas          female     full             pulmonary              executive               -0.24              -0.07          --                             0.229                 0.970                  NA
eas          male       ae               pulmonary              executive               -0.00              0.25           --                             0.999                 0.489                  NA
eas          male       aeh              pulmonary              executive               0.18               0.10           --                             0.509                 0.888                  NA
eas          male       aehplus          pulmonary              executive               0.25               0.32           --                             0.489                 0.882                  NA
eas          male       full             pulmonary              executive               0.21               0.21           --                             0.577                 0.914                  NA
eas          female     ae               pulmonary              fluency                 0.27               0.03           0.02                           0.039                 0.953               0.757
eas          female     ae               pulmonary              fluency                 0.24               -0.02          -0.03                          0.030                 0.955               0.461
eas          female     ae               pulmonary              fluency                 0.21               0.29           0.00                           0.062                 0.416               0.993
eas          female     aeh              pulmonary              fluency                 0.36               -0.13          0.02                           0.026                 0.822               0.843
eas          female     aeh              pulmonary              fluency                 0.19               -0.09          -0.07                          0.142                 0.830               0.349
eas          female     aeh              pulmonary              fluency                 0.11               -0.32          0.01                           0.366                 0.611               0.964
eas          female     aehplus          pulmonary              fluency                 0.33               -0.16          0.02                           0.080                 0.812               0.885
eas          female     aehplus          pulmonary              fluency                 0.16               -0.18          -0.06                          0.261                 0.740               0.417
eas          female     aehplus          pulmonary              fluency                 0.08               -0.24          -0.00                          0.593                 0.760               0.987
eas          female     age              pulmonary              fluency                 0.27               0.07           0.02                           0.027                 0.895               0.766
eas          female     age              pulmonary              fluency                 0.23               -0.03          -0.03                          0.028                 0.909               0.448
eas          female     age              pulmonary              fluency                 0.21               0.31           0.00                           0.047                 0.361               0.997
eas          female     full             pulmonary              fluency                 0.33               -0.18          0.02                           0.103                 0.813               0.860
eas          female     full             pulmonary              fluency                 0.16               -0.20          -0.06                          0.255                 0.716               0.478
eas          female     full             pulmonary              fluency                 0.08               -0.30          -0.00                          0.563                 0.742               0.983
eas          male       ae               pulmonary              fluency                 0.05               -0.48          0.04                           0.872                 0.595               0.587
eas          male       ae               pulmonary              fluency                 -0.26              -0.28          0.03                           0.207                 0.552               0.723
eas          male       ae               pulmonary              fluency                 0.06               -0.31          -0.02                          0.712                 0.629               0.809
eas          male       aeh              pulmonary              fluency                 -0.13              -0.03          0.06                           0.742                 0.984               0.785
eas          male       aeh              pulmonary              fluency                 -0.21              0.13           0.12                           0.533                 0.822               0.405
eas          male       aeh              pulmonary              fluency                 -0.08              -0.56          0.03                           0.800                 0.629               0.846
eas          male       aehplus          pulmonary              fluency                 -0.10              0.10           0.06                           0.849                 0.955               0.810
eas          male       aehplus          pulmonary              fluency                 -0.18              0.23           0.11                           0.659                 0.808               0.501
eas          male       aehplus          pulmonary              fluency                 -0.09              -0.61          0.03                           0.830                 0.770               0.899
eas          male       age              pulmonary              fluency                 0.05               -0.48          0.04                           0.861                 0.574               0.579
eas          male       age              pulmonary              fluency                 -0.21              -0.28          0.03                           0.292                 0.555               0.685
eas          male       age              pulmonary              fluency                 0.08               -0.34          --                             0.647                 0.528                  NA
eas          male       full             pulmonary              fluency                 -0.09              0.18           0.06                           0.868                 0.937               0.821
eas          male       full             pulmonary              fluency                 -0.22              0.23           0.11                           0.605                 0.812               0.514
eas          male       full             pulmonary              fluency                 -0.11              -0.62          0.03                           0.796                 0.754               0.895
eas          female     ae               pulmonary              global                  0.43               0.57           0.01                           0.003                 0.199               0.921
eas          female     aeh              pulmonary              global                  0.32               0.18           0.00                           0.057                 0.863               0.992
eas          female     aehplus          pulmonary              global                  0.30               0.19           -0.00                          0.090                 0.839               0.986
eas          female     age              pulmonary              global                  0.41               0.58           0.01                           0.003                 0.245               0.922
eas          female     full             pulmonary              global                  0.30               0.25           -0.00                          0.111                 0.866               0.974
eas          male       ae               pulmonary              global                  -0.11              0.77           0.02                           0.769                 0.423               0.870
eas          male       aeh              pulmonary              global                  0.06               0.88           0.09                           0.906                 0.511               0.544
eas          male       aehplus          pulmonary              global                  0.04               0.89           0.08                           0.941                 0.645               0.668
eas          male       age              pulmonary              global                  -0.11              0.76           0.02                           0.765                 0.384               0.870
eas          male       full             pulmonary              global                  0.03               0.89           0.08                           0.972                 0.677               0.679
eas          female     ae               pulmonary              knowledge               -0.24              -0.75          0.12                           0.112                 0.027               0.102
eas          female     ae               pulmonary              knowledge               0.21               0.29           0.00                           0.062                 0.416               0.993
eas          female     aeh              pulmonary              knowledge               0.00               -0.46          0.11                           0.982                 0.781               0.335
eas          female     aeh              pulmonary              knowledge               -0.03              -0.46          0.02                           0.785                 0.679               0.866
eas          female     aehplus          pulmonary              knowledge               0.01               -0.44          0.10                           0.979                 0.836               0.425
eas          female     aehplus          pulmonary              knowledge               -0.07              -0.62          0.02                           0.638                 0.661               0.848
eas          female     age              pulmonary              knowledge               -0.15              -0.73          0.12                           0.297                 0.032               0.091
eas          female     age              pulmonary              knowledge               0.03               -0.31          0.01                           0.743                 0.461               0.914
eas          female     full             pulmonary              knowledge               0.01               -0.44          0.10                           0.958                 0.836               0.442
eas          female     full             pulmonary              knowledge               -0.05              -0.33          0.02                           0.723                 0.767               0.835
eas          male       ae               pulmonary              knowledge               -0.14              -0.86          0.01                           0.543                 0.135               0.859
eas          male       ae               pulmonary              knowledge               0.31               0.62           -0.03                          0.136                 0.288               0.800
eas          male       aeh              pulmonary              knowledge               -0.05              -0.10          -0.02                          0.909                 0.977               0.871
eas          male       aeh              pulmonary              knowledge               0.10               0.88           -0.03                          0.701                 0.419               0.831
eas          male       aehplus          pulmonary              knowledge               -0.05              -0.17          -0.01                          0.929                 0.967               0.934
eas          male       aehplus          pulmonary              knowledge               0.07               0.87           -0.04                          0.844                 0.618               0.857
eas          male       age              pulmonary              knowledge               -0.06              -0.73          0.02                           0.789                 0.212               0.834
eas          male       age              pulmonary              knowledge               0.06               -0.31          -0.02                          0.712                 0.629               0.809
eas          male       full             pulmonary              knowledge               -0.05              -0.16          -0.01                          0.950                 0.974               0.950
eas          male       full             pulmonary              knowledge               0.07               0.85           -0.04                          0.850                 0.633               0.861
eas          female     ae               pulmonary              memory                  -0.00              0.28           --                             0.978                 0.293                  NA
eas          female     ae               pulmonary              memory                  0.24               0.40           0.07                           0.052                 0.263               0.331
eas          female     aeh              pulmonary              memory                  -0.08              -0.41          --                             0.580                 0.493                  NA
eas          female     aeh              pulmonary              memory                  0.20               0.04           0.09                           0.199                 0.950               0.361
eas          female     aehplus          pulmonary              memory                  -0.13              -0.39          --                             0.404                 0.597                  NA
eas          female     aehplus          pulmonary              memory                  0.18               -0.00          0.09                           0.249                 0.996               0.376
eas          female     age              pulmonary              memory                  0.02               0.31           --                             0.901                 0.245                  NA
eas          female     age              pulmonary              memory                  0.23               0.38           0.07                           0.040                 0.285               0.334
eas          female     full             pulmonary              memory                  -0.13              -0.67          --                             0.401                 0.459                  NA
eas          female     full             pulmonary              memory                  0.19               -0.10          0.09                           0.253                 0.920               0.410
eas          male       ae               pulmonary              memory                  -0.17              -0.52          --                             0.409                 0.577                  NA
eas          male       ae               pulmonary              memory                  -0.20              0.37           0.07                           0.258                 0.601               0.398
eas          male       aeh              pulmonary              memory                  -0.24              -0.76          --                             0.438                 0.306                  NA
eas          male       aeh              pulmonary              memory                  -0.29              0.20           0.02                           0.369                 0.872               0.910
eas          male       aehplus          pulmonary              memory                  -0.19              -0.89          --                             0.624                 0.509                  NA
eas          male       aehplus          pulmonary              memory                  -0.28              0.41           0.02                           0.434                 0.804               0.897
eas          male       age              pulmonary              memory                  -0.15              -0.52          --                             0.455                 0.568                  NA
eas          male       age              pulmonary              memory                  -0.16              0.28           0.07                           0.282                 0.615               0.369
eas          male       full             pulmonary              memory                  -0.20              -0.92          --                             0.615                 0.504                  NA
eas          male       full             pulmonary              memory                  -0.28              0.43           0.02                           0.490                 0.827               0.911
eas          female     ae               pulmonary              reasoning               0.19               0.67           --                             0.046                 0.003                  NA
eas          female     aeh              pulmonary              reasoning               0.21               0.08           -0.01                          0.045                 0.850               0.903
eas          female     aehplus          pulmonary              reasoning               0.18               0.11           --                             0.278                 0.889                  NA
eas          female     age              pulmonary              reasoning               0.19               0.66           -0.00                          0.045                 0.001               0.972
eas          female     full             pulmonary              reasoning               0.19               0.20           --                             0.260                 0.833                  NA
eas          male       ae               pulmonary              reasoning               -0.12              -0.01          --                             0.381                 0.988                  NA
eas          male       aeh              pulmonary              reasoning               -0.12              -0.05          0.09                           0.475                 0.995               0.446
eas          male       aehplus          pulmonary              reasoning               -0.21              -0.43          --                             0.635                 0.937                  NA
eas          male       age              pulmonary              reasoning               -0.12              -0.04          0.04                           0.350                 0.958               0.599
eas          male       full             pulmonary              reasoning               -0.19              -0.63          --                             0.698                 0.903                  NA
eas          female     ae               pulmonary              speed                   0.37               0.59           --                             0.001                 0.004                  NA
eas          female     aeh              pulmonary              speed                   0.33               0.52           --                             0.035                 0.400                  NA
eas          female     aehplus          pulmonary              speed                   0.29               0.37           --                             0.070                 0.544                  NA
eas          female     age              pulmonary              speed                   0.33               0.77           --                             0.002                 0.001                  NA
eas          female     full             pulmonary              speed                   0.29               0.36           --                             0.073                 0.570                  NA
eas          male       ae               pulmonary              speed                   0.21               0.90           --                             0.393                 0.185                  NA
eas          male       aeh              pulmonary              speed                   0.04               -0.27          --                             0.880                 0.746                  NA
eas          male       aehplus          pulmonary              speed                   0.00               -0.25          --                             0.995                 0.830                  NA
eas          male       age              pulmonary              speed                   0.14               0.12           --                             0.470                 0.711                  NA
eas          male       full             pulmonary              speed                   -0.00              -0.23          --                             0.995                 0.860                  NA

## habc


Table: Bivariate Results

study_name   subgroup   model<br/>type   outcome<br/>physical   cognitive<br/>outcome   sd<br/>intercept   sd<br/>slope   sd<br/>residual    p<br/>cov<br/>int   p<br/>cov<br/>slope   p<br/>cov<br/>res
-----------  ---------  ---------------  ---------------------  ----------------------  -----------------  -------------  ----------------  ------------------  --------------------  ------------------
habc         female     aeh              muscle                 mental                  -0.01              0.46           0.05                           0.773                 0.000               0.166
habc         female     aeh              muscle                 mental                  0.10               0.32           0.11                           0.086                 0.049               0.003
habc         female     aehplus          muscle                 mental                  -0.02              0.45           0.04                           0.627                 0.000               0.188
habc         female     aehplus          muscle                 mental                  0.09               0.33           0.11                           0.115                 0.069               0.003
habc         female     age              muscle                 mental                  -0.11              0.42           0.05                           0.003                 0.000               0.189
habc         female     age              muscle                 mental                  0.02               0.33           0.11                           0.688                 0.039               0.002
habc         female     full             muscle                 mental                  0.09               0.38           0.04                           0.059                 0.001               0.263
habc         female     full             muscle                 mental                  0.14               0.26           0.11                           0.016                 0.168               0.003
habc         male       aeh              muscle                 mental                  -0.01              0.62           0.01                           0.791                 0.000               0.743
habc         male       aeh              muscle                 mental                  -0.04              0.02           0.10                           0.518                 0.897               0.011
habc         male       aehplus          muscle                 mental                  -0.02              0.62           0.01                           0.674                 0.000               0.669
habc         male       aehplus          muscle                 mental                  -0.04              0.04           0.10                           0.486                 0.833               0.013
habc         male       age              muscle                 mental                  -0.08              0.59           0.01                           0.018                 0.000               0.711
habc         male       age              muscle                 mental                  -0.08              0.04           0.10                           0.170                 0.855               0.011
habc         male       full             muscle                 mental                  -0.01              0.06           0.10                           0.848                 0.816               0.014
habc         male       full             muscle                 mental                  0.07               0.59           0.02                           0.131                 0.000               0.543
habc         female     aeh              muscle                 speed                   -0.07              0.36           0.05                           0.036                 0.000               0.130
habc         female     aehplus          muscle                 speed                   -0.08              0.35           0.04                           0.020                 0.000               0.181
habc         female     age              muscle                 speed                   -0.18              0.34           0.05                           0.000                 0.000               0.125
habc         female     full             muscle                 speed                   0.07               0.36           0.04                           0.040                 0.001               0.231
habc         male       aeh              muscle                 speed                   -0.09              0.30           0.05                           0.012                 0.014               0.097
habc         male       aehplus          muscle                 speed                   -0.10              0.31           0.04                           0.004                 0.010               0.135
habc         male       age              muscle                 speed                   -0.13              0.27           0.05                           0.000                 0.023               0.115
habc         male       full             muscle                 speed                   0.02               0.40           0.04                           0.559                 0.004               0.173
habc         female     aeh              walking                mental                  0.28               Inf            -0.00                          0.000                 0.000               0.898
habc         female     aeh              walking                mental                  0.11               Inf            0.03                           0.041                 0.004               0.195
habc         female     aehplus          walking                mental                  0.26               Inf            -0.00                          0.000                 0.000               0.932
habc         female     aehplus          walking                mental                  0.12               Inf            0.03                           0.036                 0.006               0.199
habc         female     age              walking                mental                  0.40               Inf            0.01                           0.000                 0.000               0.770
habc         female     age              walking                mental                  0.23               Inf            0.03                           0.000                 0.003               0.238
habc         female     full             walking                mental                  0.15               Inf            -0.00                          0.003                 0.000               0.905
habc         female     full             walking                mental                  0.08               Inf            0.03                           0.164                 0.012               0.196
habc         male       aeh              walking                mental                  0.16               Inf            -0.01                          0.000                 0.000               0.546
habc         male       aeh              walking                mental                  0.04               NaN            0.01                           0.525                 0.190               0.767
habc         male       aehplus          walking                mental                  0.18               Inf            -0.01                          0.000                 0.000               0.627
habc         male       aehplus          walking                mental                  0.02               NaN            0.01                           0.709                 0.268               0.655
habc         male       age              walking                mental                  0.36               Inf            -0.01                          0.000                 0.001               0.694
habc         male       age              walking                mental                  0.14               NaN            0.02                           0.016                 0.352               0.489
habc         male       full             walking                mental                  0.08               Inf            -0.02                          0.094                 0.000               0.497
habc         male       full             walking                mental                  -0.01              NaN            0.01                           0.847                 0.220               0.696
habc         female     aeh              walking                speed                   0.32               Inf            0.09                           0.000                 0.000               0.000
habc         female     aehplus          walking                speed                   0.30               Inf            0.09                           0.000                 0.000               0.000
habc         female     age              walking                speed                   0.42               Inf            0.09                           0.000                 0.000               0.000
habc         female     full             walking                speed                   0.19               Inf            0.09                           0.000                 0.000               0.000
habc         male       aeh              walking                speed                   0.30               Inf            0.02                           0.000                 0.000               0.406
habc         male       aehplus          walking                speed                   0.29               Inf            0.02                           0.000                 0.000               0.339
habc         male       age              walking                speed                   0.44               Inf            0.02                           0.000                 0.000               0.380
habc         male       full             walking                speed                   0.19               Inf            0.02                           0.000                 0.000               0.328

## ilse


Table: Bivariate Results

study_name   subgroup   model<br/>type   outcome<br/>physical   cognitive<br/>outcome   sd<br/>intercept   sd<br/>slope   sd<br/>residual    p<br/>cov<br/>int   p<br/>cov<br/>slope   p<br/>cov<br/>res
-----------  ---------  ---------------  ---------------------  ----------------------  -----------------  -------------  ----------------  ------------------  --------------------  ------------------
ilse         female     aeh              muscle                 fluency                 0.10               0.60           0.16                           0.367                 0.383               0.052
ilse         female     aehplus          muscle                 fluency                 0.09               0.63           0.15                           0.412                 0.371               0.077
ilse         female     age              muscle                 fluency                 0.02               0.45           --                             0.848                 0.590               0.291
ilse         male       aeh              muscle                 fluency                 0.08               0.23           0.21                           0.467                 0.749               0.007
ilse         male       aehplus          muscle                 fluency                 0.08               0.23           0.21                           0.466                 0.787               0.009
ilse         male       age              muscle                 fluency                 0.21               -0.18          --                             0.044                 0.801               0.004
ilse         female     aeh              muscle                 knowledge               0.04               0.44           -0.07                          0.648                 0.241               0.337
ilse         female     aehplus          muscle                 knowledge               0.05               0.45           -0.08                          0.618                 0.263               0.331
ilse         female     age              muscle                 knowledge               -0.01              0.52           --                             0.901                 0.166               0.895
ilse         male       aeh              muscle                 knowledge               0.13               0.22           -0.04                          0.257                 0.810               0.639
ilse         male       aehplus          muscle                 knowledge               0.13               0.24           -0.04                          0.265                 0.835               0.673
ilse         male       age              muscle                 knowledge               0.24               -0.48          --                             0.025                 0.725               0.788
ilse         female     aeh              muscle                 reasoning               0.02               0.33           -0.02                          0.820                 0.580               0.809
ilse         female     aeh              muscle                 reasoning               0.06               0.31           0.01                           0.639                 0.469               0.929
ilse         female     aeh              muscle                 reasoning               -0.16              -0.05          0.15                           0.142                 0.887               0.067
ilse         female     aehplus          muscle                 reasoning               0.03               0.30           0.01                           0.783                 0.527               0.903
ilse         female     aehplus          muscle                 reasoning               -0.20              -0.04          0.14                           0.087                 0.902               0.106
ilse         female     age              muscle                 reasoning               -0.11              -0.19          --                             0.376                 0.761               0.183
ilse         female     age              muscle                 reasoning               -0.13              0.31           --                             0.304                 0.433               0.477
ilse         female     age              muscle                 reasoning               -0.01              0.02           --                             0.962                 0.983               0.388
ilse         male       aeh              muscle                 reasoning               0.19               0.43           -0.04                          0.057                 0.155               0.581
ilse         male       aeh              muscle                 reasoning               0.23               0.32           0.15                           0.070                 0.480               0.114
ilse         male       aeh              muscle                 reasoning               0.10               0.36           -0.09                          0.368                 0.601               0.278
ilse         male       aehplus          muscle                 reasoning               0.22               0.40           0.16                           0.080                 0.478               0.125
ilse         male       age              muscle                 reasoning               0.30               0.35           --                             0.003                 0.238               0.470
ilse         male       age              muscle                 reasoning               0.23               0.31           0.15                           0.077                 0.517               0.121
ilse         female     aeh              muscle                 speed                   -0.22              0.20           -0.02                          0.026                 0.490               0.786
ilse         female     aehplus          muscle                 speed                   -0.23              0.22           -0.02                          0.034                 0.484               0.820
ilse         female     age              muscle                 speed                   -0.22              0.03           --                             0.059                 0.944               0.217
ilse         male       aeh              muscle                 speed                   -0.06              -0.02          0.06                           0.558                 0.940               0.445
ilse         male       aehplus          muscle                 speed                   -0.06              -0.01          0.06                           0.531                 0.965               0.458
ilse         male       age              muscle                 speed                   0.09               -0.29          --                             0.419                 0.374               0.209
ilse         female     aeh              tug                    fluency                 -0.08              0.71           -0.10                          0.656                 0.643               0.353
ilse         female     aehplus          tug                    fluency                 -0.03              0.64           -0.09                          0.856                 0.675               0.424
ilse         female     age              tug                    fluency                 -0.12              0.34           --                             0.392                 0.646               0.181
ilse         male       aeh              tug                    fluency                 -0.62              0.00           -0.01                          0.707                 0.997               0.957
ilse         male       aehplus          tug                    fluency                 -0.63              0.00           -0.01                          0.737                 0.997               0.943
ilse         male       age              tug                    fluency                 -0.36              -0.21          --                             0.250                 0.961               0.980
ilse         female     aeh              tug                    knowledge               -0.03              0.29           -0.01                          0.833                 0.732               0.894
ilse         female     aehplus          tug                    knowledge               -0.02              0.15           -0.02                          0.916                 0.817               0.820
ilse         female     age              tug                    knowledge               -0.14              -0.38          --                             0.305                 0.319               0.647
ilse         male       aeh              tug                    knowledge               -0.43              0.00           -0.06                          0.685                 0.990               0.703
ilse         male       aehplus          tug                    knowledge               -0.54              0.00           -0.06                          0.687                 0.999               0.749
ilse         male       age              tug                    knowledge               -0.33              0.00           --                             0.142                 0.987               0.828
ilse         female     aeh              tug                    reasoning               -0.06              -0.12          -0.05                          0.687                 0.926               0.648
ilse         female     aeh              tug                    reasoning               -0.09              0.06           0.08                           0.552                 0.917               0.384
ilse         female     aeh              tug                    reasoning               -0.05              0.52           -0.01                          0.823                 0.686               0.906
ilse         female     aehplus          tug                    reasoning               -0.01              0.52           -0.01                          0.968                 0.693               0.935
ilse         female     aehplus          tug                    reasoning               -0.03              -0.17          -0.05                          0.845                 0.943               0.657
ilse         female     aehplus          tug                    reasoning               -0.08              0.23           0.07                           0.651                 0.803               0.435
ilse         female     age              tug                    reasoning               -0.14              -0.31          --                             0.292                 0.600               0.656
ilse         female     age              tug                    reasoning               -0.16              -0.35          --                             0.159                 0.394               0.317
ilse         female     age              tug                    reasoning               -0.15              -0.40          --                             0.328                 0.389               0.978
ilse         male       aeh              tug                    reasoning               -0.51              0.00           0.04                           0.701                 0.999               0.848
ilse         male       aeh              tug                    reasoning               -0.29              0.00           -0.05                          0.818                 0.995               0.772
ilse         male       aeh              tug                    reasoning               -0.22              -0.42          0.04                           0.878                 0.931               0.861
ilse         male       aehplus          tug                    reasoning               -0.18              -0.45          0.04                           0.917                 0.943               0.867
ilse         male       aehplus          tug                    reasoning               -0.49              0.07           0.04                           0.753                 0.990               0.854
ilse         male       aehplus          tug                    reasoning               -0.21              0.15           -0.05                          0.897                 0.993               0.808
ilse         male       age              tug                    reasoning               -0.31              0.27           --                             0.178                 0.815               0.510
ilse         male       age              tug                    reasoning               -0.22              0.27           --                             0.380                 0.881               0.383
ilse         male       age              tug                    reasoning               -0.31              -0.60          --                             0.297                 0.703               0.674
ilse         female     aeh              tug                    speed                   -0.19              0.13           0.04                           0.204                 0.901               0.699
ilse         female     aehplus          tug                    speed                   -0.16              0.23           0.04                           0.349                 0.889               0.730
ilse         female     age              tug                    speed                   -0.18              -0.03          --                             0.133                 0.931               0.858
ilse         male       aeh              tug                    speed                   -0.51              -0.62          0.04                           0.687                 0.847               0.809
ilse         male       aehplus          tug                    speed                   -0.48              -0.61          0.04                           0.742                 0.888               0.806
ilse         male       age              tug                    speed                   -0.49              -0.52          --                             0.068                 0.633               0.883

## nas


Table: Bivariate Results

study_name   subgroup   model<br/>type   outcome<br/>physical   cognitive<br/>outcome   sd<br/>intercept   sd<br/>slope   sd<br/>residual    p<br/>cov<br/>int   p<br/>cov<br/>slope   p<br/>cov<br/>res
-----------  ---------  ---------------  ---------------------  ----------------------  -----------------  -------------  ----------------  ------------------  --------------------  ------------------
nas          male       ae               pulmonary              fluidreasoning          0.21               0.52           -0.09                          0.000                 0.178               0.006
nas          male       ae               pulmonary              fluidreasoning          -0.02              -0.29          0.03                           0.682                 0.149               0.325
nas          male       ae               pulmonary              fluidreasoning          0.21               0.58           -0.10                          0.000                 0.084               0.001
nas          male       ae               pulmonary              fluidreasoning          -0.05              -0.22          0.03                           0.456                 0.194               0.306
nas          male       aeplus           pulmonary              fluidreasoning          0.18               0.55           -0.09                          0.002                 0.133               0.006
nas          male       aeplus           pulmonary              fluidreasoning          -0.03              -0.35          0.03                           0.661                 0.164               0.338
nas          male       aeplus           pulmonary              fluidreasoning          0.17               0.58           -0.10                          0.003                 0.060               0.001
nas          male       aeplus           pulmonary              fluidreasoning          -0.05              -0.22          0.04                           0.383                 0.248               0.293
nas          male       age              pulmonary              fluidreasoning          0.22               0.52           -0.09                          0.000                 0.157               0.007
nas          male       age              pulmonary              fluidreasoning          -0.02              -0.29          0.03                           0.692                 0.200               0.313
nas          male       age              pulmonary              fluidreasoning          0.22               0.55           -0.10                          0.000                 0.072               0.001
nas          male       age              pulmonary              fluidreasoning          -0.05              -0.52          0.04                           0.391                 0.151               0.254
nas          male       ae               pulmonary              global                  0.21               -0.58          -0.02                          0.003                 0.233               0.543
nas          male       ae               pulmonary              global                  0.28               -0.50          -0.02                          0.000                 0.418               0.487
nas          male       aeplus           pulmonary              global                  0.17               -0.41          -0.02                          0.019                 0.404               0.511
nas          male       aeplus           pulmonary              global                  0.23               0.00           -0.02                          0.004                 0.606               0.460
nas          male       age              pulmonary              global                  0.22               -0.41          -0.02                          0.002                 0.413               0.492
nas          male       age              pulmonary              global                  0.28               0.00           -0.02                          0.000                 0.595               0.440
nas          male       ae               pulmonary              memoryattention         0.07               0.00           0.01                           0.136                 0.840               0.763
nas          male       ae               pulmonary              memoryattention         0.02               0.00           0.05                           0.728                 0.625               0.124
nas          male       ae               pulmonary              memoryattention         0.10               0.33           -0.06                          0.044                 0.064               0.043
nas          male       ae               pulmonary              memoryattention         0.08               0.19           -0.01                          0.095                 0.362               0.872
nas          male       ae               pulmonary              memoryattention         0.04               0.00           0.05                           0.466                 0.626               0.087
nas          male       ae               pulmonary              memoryattention         0.13               0.43           -0.05                          0.012                 0.018               0.120
nas          male       aeplus           pulmonary              memoryattention         0.08               0.00           0.01                           0.081                 0.933               0.776
nas          male       aeplus           pulmonary              memoryattention         0.11               0.33           -0.06                          0.033                 0.087               0.045
nas          male       aeplus           pulmonary              memoryattention         0.09               0.19           -0.01                          0.070                 0.422               0.824
nas          male       aeplus           pulmonary              memoryattention         0.04               -0.35          0.05                           0.386                 0.447               0.086
nas          male       aeplus           pulmonary              memoryattention         0.14               0.43           -0.05                          0.007                 0.028               0.114
nas          male       age              pulmonary              memoryattention         0.09               0.00           0.01                           0.070                 0.756               0.793
nas          male       age              pulmonary              memoryattention         0.03               0.00           0.05                           0.488                 0.613               0.136
nas          male       age              pulmonary              memoryattention         0.11               0.33           -0.06                          0.022                 0.047               0.044
nas          male       age              pulmonary              memoryattention         0.05               0.00           0.05                           0.307                 0.637               0.091
nas          male       age              pulmonary              memoryattention         0.10               0.19           -0.01                          0.052                 0.317               0.859
nas          male       age              pulmonary              memoryattention         0.14               0.43           -0.05                          0.006                 0.013               0.116
nas          male       ae               pulmonary              verbalfluency           -0.07              0.00           0.03                           0.142                 0.791               0.264
nas          male       ae               pulmonary              verbalfluency           0.00               0.09           0.02                           0.974                 0.717               0.356
nas          male       aeplus           pulmonary              verbalfluency           -0.07              -0.11          0.04                           0.134                 0.662               0.245
nas          male       aeplus           pulmonary              verbalfluency           0.00               0.00           0.03                           0.961                 0.883               0.324
nas          male       age              pulmonary              verbalfluency           -0.05              0.00           0.03                           0.323                 0.774               0.279
nas          male       age              pulmonary              verbalfluency           0.02               0.09           0.02                           0.692                 0.720               0.356

## nuage


Table: Bivariate Results

study_name   subgroup   model<br/>type   outcome<br/>physical   cognitive<br/>outcome   sd<br/>intercept   sd<br/>slope   sd<br/>residual    p<br/>cov<br/>int   p<br/>cov<br/>slope   p<br/>cov<br/>res
-----------  ---------  ---------------  ---------------------  ----------------------  -----------------  -------------  ----------------  ------------------  --------------------  ------------------
nuage        female     aeh              muscle                 global                  0.05               0.28           0.02                           0.365                 0.136               0.342
nuage        female     aehplus          muscle                 global                  0.05               0.27           0.02                           0.341                 0.159               0.340
nuage        female     age              muscle                 global                  0.04               0.35           0.02                           0.407                 0.087               0.442
nuage        male       aeh              muscle                 global                  0.13               0.28           -0.03                          0.007                 0.150               0.134
nuage        male       aehplus          muscle                 global                  0.13               0.28           -0.04                          0.008                 0.164               0.131
nuage        male       age              muscle                 global                  0.18               0.28           -0.04                          0.000                 0.147               0.131

## obas


Table: Bivariate Results

study_name   subgroup   model<br/>type   outcome<br/>physical   cognitive<br/>outcome   sd<br/>intercept   sd<br/>slope   sd<br/>residual    p<br/>cov<br/>int   p<br/>cov<br/>slope   p<br/>cov<br/>res
-----------  ---------  ---------------  ---------------------  ----------------------  -----------------  -------------  ----------------  ------------------  --------------------  ------------------
obas         female     aeh              walking                global                  0.30               Inf            0.00                           0.028                 0.034               0.940
obas         female     age              walking                global                  0.40               Inf            -0.01                          0.003                 0.039               0.796
obas         male       aeh              walking                global                  0.15               Inf            -0.01                          0.267                 0.085               0.641
obas         male       age              walking                global                  0.17               Inf            -0.02                          0.221                 0.073               0.526

## octo


Table: Bivariate Results

study_name   subgroup   model<br/>type   outcome<br/>physical   cognitive<br/>outcome   sd<br/>intercept   sd<br/>slope   sd<br/>residual    p<br/>cov<br/>int   p<br/>cov<br/>slope   p<br/>cov<br/>res
-----------  ---------  ---------------  ---------------------  ----------------------  -----------------  -------------  ----------------  ------------------  --------------------  ------------------
octo         female     aeh              grip                   block                   0.32               0.86           0.04                           0.000                 0.001               0.447
octo         female     aehplus          grip                   block                   0.31               0.88           0.04                           0.000                 0.001               0.445
octo         female     age              grip                   block                   0.38               0.86           0.05                           0.000                 0.002               0.359
octo         male       aeh              grip                   block                   0.31               -0.27          0.13                           0.001                 0.772               0.061
octo         male       aehplus          grip                   block                   0.30               -0.07          0.13                           0.002                 0.940               0.057
octo         male       age              grip                   block                   0.36               -0.49          0.13                           0.000                 0.491               0.031
octo         female     aeh              grip                   digitbackward           0.01               -0.49          0.05                           0.917                 0.352               0.320
octo         female     aehplus          grip                   digitbackward           -0.01              -0.49          0.05                           0.917                 0.341               0.309
octo         female     age              grip                   digitbackward           0.03               -0.43          0.06                           0.766                 0.297               0.224
octo         male       aeh              grip                   digitbackward           0.09               0.03           -0.13                          0.404                 0.924               0.075
octo         male       aehplus          grip                   digitbackward           0.08               0.07           -0.14                          0.474                 0.885               0.070
octo         male       age              grip                   digitbackward           0.23               0.03           -0.11                          0.091                 0.954               0.140
octo         female     aeh              grip                   digitforward            -0.05              0.10           0.05                           0.554                 0.661               0.349
octo         female     aehplus          grip                   digitforward            -0.06              0.10           0.05                           0.528                 0.689               0.341
octo         female     age              grip                   digitforward            0.05               0.09           0.06                           0.584                 0.718               0.226
octo         male       aeh              grip                   digitforward            -0.14              0.29           -0.08                          0.305                 0.405               0.288
octo         male       aehplus          grip                   digitforward            -0.15              0.34           -0.08                          0.283                 0.374               0.274
octo         male       age              grip                   digitforward            0.04               0.43           -0.08                          0.736                 0.226               0.236
octo         female     aeh              grip                   digitsymbol             0.16               0.10           0.12                           0.065                 0.688               0.030
octo         female     aehplus          grip                   digitsymbol             0.17               0.12           0.12                           0.054                 0.649               0.029
octo         female     age              grip                   digitsymbol             0.27               0.08           0.12                           0.001                 0.753               0.022
octo         male       aeh              grip                   digitsymbol             0.25               0.01           0.14                           0.011                 0.985               0.102
octo         male       aehplus          grip                   digitsymbol             0.23               0.02           0.14                           0.019                 0.964               0.098
octo         male       age              grip                   digitsymbol             0.28               0.09           0.08                           0.005                 0.824               0.405
octo         female     aeh              grip                   figurelogic             0.31               0.56           0.07                           0.001                 0.088               0.195
octo         female     aehplus          grip                   figurelogic             0.33               0.64           0.07                           0.000                 0.066               0.171
octo         female     age              grip                   figurelogic             0.37               0.55           0.08                           0.000                 0.106               0.099
octo         male       aeh              grip                   figurelogic             0.56               0.64           -0.06                          0.000                 0.355               0.335
octo         male       aehplus          grip                   figurelogic             0.57               0.71           -0.05                          0.002                 0.354               0.476
octo         male       age              grip                   figurelogic             0.62               0.63           -0.08                          0.000                 0.273               0.218
octo         female     aeh              grip                   mirrecall               0.16               0.59           0.05                           0.054                 0.001               0.332
octo         female     aehplus          grip                   mirrecall               0.16               0.63           0.04                           0.055                 0.001               0.351
octo         female     age              grip                   mirrecall               0.19               0.63           0.04                           0.018                 0.001               0.363
octo         male       aeh              grip                   mirrecall               0.37               0.53           0.02                           0.020                 0.053               0.850
octo         male       aehplus          grip                   mirrecall               0.36               0.57           0.02                           0.027                 0.034               0.852
octo         male       age              grip                   mirrecall               0.39               0.29           0.03                           0.010                 0.252               0.769
octo         female     aeh              grip                   proserecall             0.13               0.35           0.06                           0.104                 0.339               0.413
octo         female     aehplus          grip                   proserecall             0.13               0.35           0.06                           0.110                 0.341               0.406
octo         female     age              grip                   proserecall             0.20               0.29           0.07                           0.008                 0.369               0.283
octo         male       aeh              grip                   proserecall             0.34               -0.26          0.14                           0.011                 0.873               0.152
octo         male       aehplus          grip                   proserecall             0.35               -0.43          0.14                           0.007                 0.782               0.159
octo         male       age              grip                   proserecall             0.38               -0.33          0.08                           0.000                 0.814               0.374
octo         female     aeh              muscle                 global                  0.06               0.75           0.16                           0.596                 0.005               0.049
octo         female     age              muscle                 global                  0.31               0.74           0.19                           0.011                 0.006               0.023
octo         male       aeh              muscle                 global                  0.34               -0.08          0.15                           0.063                 0.790               0.064
octo         male       age              muscle                 global                  0.41               0.21           0.15                           0.022                 0.573               0.072
octo         female     aeh              muscle                 knowledge               0.18               0.70           -0.02                          0.013                 0.015               0.716
octo         female     aeh              muscle                 knowledge               0.12               0.70           -0.01                          0.207                 0.040               0.813
octo         female     age              muscle                 knowledge               0.27               0.67           -0.01                          0.000                 0.016               0.768
octo         female     age              muscle                 knowledge               0.23               0.70           -0.03                          0.007                 0.046               0.597
octo         male       aeh              muscle                 knowledge               0.04               -0.26          0.17                           0.694                 0.422               0.067
octo         male       aeh              muscle                 knowledge               0.10               0.00           0.14                           0.306                 1.000               0.131
octo         male       age              muscle                 knowledge               0.14               -0.29          0.17                           0.134                 0.343               0.067
octo         male       age              muscle                 knowledge               0.10               -0.21          0.15                           0.333                 0.718               0.099
octo         female     aeh              muscle                 memory                  0.01               -0.49          0.05                           0.917                 0.352               0.320
octo         female     aeh              muscle                 memory                  -0.05              0.10           0.05                           0.554                 0.661               0.349
octo         female     aeh              muscle                 memory                  0.16               0.59           0.05                           0.054                 0.001               0.332
octo         female     aeh              muscle                 memory                  0.13               0.35           0.06                           0.104                 0.339               0.413
octo         female     age              muscle                 memory                  0.03               -0.61          0.06                           0.784                 0.265               0.215
octo         female     age              muscle                 memory                  0.05               0.09           0.06                           0.594                 0.709               0.215
octo         female     age              muscle                 memory                  0.19               0.63           0.04                           0.015                 0.001               0.362
octo         female     age              muscle                 memory                  0.20               0.29           0.07                           0.011                 0.373               0.292
octo         male       aeh              muscle                 memory                  0.09               0.03           -0.13                          0.404                 0.924               0.075
octo         male       aeh              muscle                 memory                  -0.14              0.29           -0.08                          0.305                 0.405               0.288
octo         male       aeh              muscle                 memory                  0.37               0.53           0.02                           0.020                 0.053               0.850
octo         male       aeh              muscle                 memory                  0.34               -0.26          0.14                           0.011                 0.873               0.152
octo         male       age              muscle                 memory                  0.23               0.03           -0.11                          0.124                 0.956               0.124
octo         male       age              muscle                 memory                  0.04               0.43           -0.08                          0.754                 0.230               0.246
octo         male       age              muscle                 memory                  0.39               0.29           0.03                           0.021                 0.275               0.775
octo         male       age              muscle                 memory                  0.38               -0.40          0.08                           0.002                 0.791               0.379
octo         female     aeh              muscle                 reasoning               0.32               0.86           0.04                           0.000                 0.001               0.447
octo         female     aeh              muscle                 reasoning               0.31               0.56           0.07                           0.001                 0.088               0.195
octo         female     age              muscle                 reasoning               0.38               0.86           0.05                           0.000                 0.001               0.383
octo         female     age              muscle                 reasoning               0.37               0.55           0.08                           0.000                 0.114               0.137
octo         male       aeh              muscle                 reasoning               0.31               -0.27          0.13                           0.001                 0.772               0.061
octo         male       aeh              muscle                 reasoning               0.56               0.64           -0.06                          0.000                 0.355               0.335
octo         male       age              muscle                 reasoning               0.36               -0.49          0.13                           0.000                 0.536               0.048
octo         male       age              muscle                 reasoning               0.62               0.68           -0.08                          0.000                 0.212               0.220
octo         female     aeh              muscle                 speed                   0.16               0.10           0.12                           0.065                 0.688               0.030
octo         female     aeh              muscle                 speed                   0.18               0.50           0.07                           0.159                 0.502               0.384
octo         female     age              muscle                 speed                   0.27               0.08           0.12                           0.004                 0.746               0.025
octo         female     age              muscle                 speed                   0.28               0.56           0.06                           0.020                 0.509               0.468
octo         male       aeh              muscle                 speed                   0.25               0.01           0.14                           0.011                 0.985               0.102
octo         male       aeh              muscle                 speed                   0.08               0.00           0.14                           0.630                 0.992               0.323
octo         male       age              muscle                 speed                   0.28               0.09           0.08                           0.006                 0.833               0.388
octo         male       age              muscle                 speed                   0.13               0.25           0.12                           0.404                 0.551               0.438
octo         female     aeh              pulmonary              block                   0.25               0.12           0.15                           0.009                 0.677               0.017
octo         female     aehplus          pulmonary              block                   0.22               0.08           0.15                           0.023                 0.785               0.019
octo         female     age              pulmonary              block                   0.29               0.11           0.15                           0.002                 0.700               0.018
octo         female     full             pulmonary              block                   0.24               0.06           0.14                           0.011                 0.842               0.022
octo         male       aeh              pulmonary              block                   0.33               0.85           0.10                           0.004                 0.130               0.158
octo         male       aehplus          pulmonary              block                   0.30               0.83           0.11                           0.009                 0.140               0.108
octo         male       age              pulmonary              block                   0.43               0.66           0.09                           0.000                 0.228               0.156
octo         male       full             pulmonary              block                   0.38               0.52           0.09                           0.002                 0.368               0.129
octo         female     aeh              pulmonary              digitbackward           0.21               0.18           0.01                           0.101                 0.769               0.850
octo         female     aehplus          pulmonary              digitbackward           0.19               0.24           0.01                           0.142                 0.694               0.822
octo         female     age              pulmonary              digitbackward           0.20               0.06           0.01                           0.097                 0.921               0.899
octo         male       aeh              pulmonary              digitbackward           0.33               0.28           -0.09                          0.013                 0.561               0.356
octo         male       aehplus          pulmonary              digitbackward           0.32               0.30           -0.09                          0.016                 0.567               0.334
octo         male       age              pulmonary              digitbackward           0.40               0.41           -0.09                          0.003                 0.401               0.297
octo         female     aeh              pulmonary              digitforward            0.03               -0.29          0.01                           0.793                 0.292               0.871
octo         female     aehplus          pulmonary              digitforward            0.00               -0.28          0.01                           0.988                 0.334               0.844
octo         female     age              pulmonary              digitforward            0.03               -0.29          0.01                           0.793                 0.292               0.871
octo         male       aeh              pulmonary              digitforward            -0.04              0.34           0.01                           0.751                 0.428               0.865
octo         male       aehplus          pulmonary              digitforward            -0.08              0.58           0.01                           0.569                 0.114               0.893
octo         male       age              pulmonary              digitforward            0.03               0.29           0.01                           0.844                 0.477               0.839
octo         female     aeh              pulmonary              digitsymbol             0.37               0.68           0.04                           0.000                 0.006               0.494
octo         female     aehplus          pulmonary              digitsymbol             0.37               0.66           0.04                           0.000                 0.011               0.519
octo         female     age              pulmonary              digitsymbol             0.39               0.67           0.04                           0.000                 0.006               0.500
octo         male       aeh              pulmonary              digitsymbol             0.34               0.72           -0.05                          0.007                 0.060               0.523
octo         male       aehplus          pulmonary              digitsymbol             0.32               0.76           -0.05                          0.006                 0.043               0.516
octo         male       age              pulmonary              digitsymbol             0.39               0.63           -0.03                          0.000                 0.114               0.710
octo         female     aeh              pulmonary              figurelogic             0.22               0.06           0.02                           0.083                 0.884               0.704
octo         female     aehplus          pulmonary              figurelogic             0.17               0.13           0.02                           0.195                 0.777               0.689
octo         female     age              pulmonary              figurelogic             0.24               0.05           0.03                           0.029                 0.898               0.628
octo         male       aeh              pulmonary              figurelogic             0.33               0.85           -0.00                          0.019                 0.105               0.965
octo         male       aehplus          pulmonary              figurelogic             0.28               0.84           0.01                           0.047                 0.124               0.939
octo         male       age              pulmonary              figurelogic             0.42               0.72           -0.00                          0.005                 0.164               0.981
octo         female     aeh              pulmonary              global                  0.11               0.26           0.20                           0.389                 0.380               0.013
octo         female     age              pulmonary              global                  0.31               0.15           0.22                           0.050                 0.580               0.020
octo         male       aeh              pulmonary              global                  0.69               0.26           0.16                           0.001                 0.461               0.376
octo         male       age              pulmonary              global                  0.75               -0.03          0.16                           0.004                 0.943               0.388
octo         female     aeh              pulmonary              knowledge               0.09               0.27           0.06                           0.284                 0.370               0.354
octo         female     aeh              pulmonary              knowledge               0.15               0.24           -0.06                          0.145                 0.383               0.312
octo         female     age              pulmonary              knowledge               0.12               0.23           0.06                           0.140                 0.420               0.345
octo         female     age              pulmonary              knowledge               0.19               0.19           -0.05                          0.038                 0.451               0.413
octo         male       aeh              pulmonary              knowledge               0.08               0.02           0.04                           0.518                 0.953               0.606
octo         male       aeh              pulmonary              knowledge               0.14               -0.08          0.03                           0.288                 0.893               0.792
octo         male       age              pulmonary              knowledge               0.17               -0.06          0.05                           0.119                 0.879               0.549
octo         male       age              pulmonary              knowledge               0.18               -0.24          0.02                           0.140                 0.665               0.847
octo         female     aeh              pulmonary              memory                  0.21               0.18           0.01                           0.101                 0.769               0.850
octo         female     aeh              pulmonary              memory                  0.03               -0.29          0.01                           0.793                 0.292               0.871
octo         female     aeh              pulmonary              memory                  0.13               0.26           0.06                           0.212                 0.317               0.376
octo         female     aeh              pulmonary              memory                  0.12               0.06           0.07                           0.188                 0.861               0.253
octo         female     age              pulmonary              memory                  0.20               0.06           0.01                           0.111                 0.922               0.906
octo         female     age              pulmonary              memory                  0.04               -0.26          0.02                           0.706                 0.323               0.760
octo         female     age              pulmonary              memory                  0.16               0.24           0.06                           0.136                 0.330               0.359
octo         female     age              pulmonary              memory                  0.16               0.05           0.08                           0.089                 0.856               0.252
octo         male       aeh              pulmonary              memory                  0.33               0.28           -0.09                          0.013                 0.561               0.356
octo         male       aeh              pulmonary              memory                  -0.04              0.34           0.01                           0.751                 0.428               0.865
octo         male       aeh              pulmonary              memory                  0.61               0.45           -0.02                          0.000                 0.077               0.833
octo         male       aeh              pulmonary              memory                  0.25               -0.55          0.12                           0.077                 0.486               0.412
octo         male       age              pulmonary              memory                  0.40               0.41           -0.09                          0.003                 0.408               0.343
octo         male       age              pulmonary              memory                  0.03               0.29           0.01                           0.851                 0.505               0.865
octo         male       age              pulmonary              memory                  0.61               0.34           -0.02                          0.000                 0.209               0.839
octo         male       age              pulmonary              memory                  0.32               -0.70          0.13                           0.013                 0.179               0.387
octo         female     aeh              pulmonary              mirrecall               0.13               0.26           0.06                           0.212                 0.317               0.376
octo         female     aehplus          pulmonary              mirrecall               0.12               0.25           0.05                           0.264                 0.359               0.382
octo         female     age              pulmonary              mirrecall               0.16               0.24           0.06                           0.114                 0.328               0.321
octo         male       aeh              pulmonary              mirrecall               0.61               0.45           -0.02                          0.000                 0.077               0.833
octo         male       aehplus          pulmonary              mirrecall               0.59               0.43           -0.02                          0.000                 0.069               0.863
octo         male       age              pulmonary              mirrecall               0.61               0.34           -0.02                          0.000                 0.222               0.814
octo         female     aeh              pulmonary              proserecall             0.12               0.06           0.07                           0.188                 0.861               0.253
octo         female     aehplus          pulmonary              proserecall             0.14               -0.01          0.08                           0.143                 0.981               0.238
octo         female     age              pulmonary              proserecall             0.16               0.05           0.08                           0.073                 0.850               0.196
octo         female     full             pulmonary              proserecall             0.12               -0.00          0.07                           0.167                 0.991               0.262
octo         male       aeh              pulmonary              proserecall             0.25               -0.55          0.12                           0.077                 0.486               0.412
octo         male       aehplus          pulmonary              proserecall             0.21               -0.54          0.12                           0.113                 0.538               0.434
octo         male       age              pulmonary              proserecall             0.32               -0.61          0.13                           0.012                 0.345               0.293
octo         male       full             pulmonary              proserecall             0.27               -0.75          0.14                           0.039                 0.000               0.226
octo         female     aeh              pulmonary              reasoning               0.25               0.12           0.15                           0.009                 0.677               0.017
octo         female     aeh              pulmonary              reasoning               0.22               0.06           0.02                           0.083                 0.884               0.704
octo         female     age              pulmonary              reasoning               0.29               0.11           0.15                           0.002                 0.689               0.022
octo         female     age              pulmonary              reasoning               0.24               0.05           0.03                           0.042                 0.901               0.640
octo         male       aeh              pulmonary              reasoning               0.33               0.85           0.10                           0.004                 0.130               0.158
octo         male       aeh              pulmonary              reasoning               0.33               0.85           -0.00                          0.019                 0.105               0.965
octo         male       age              pulmonary              reasoning               0.43               0.76           0.09                           0.000                 0.184               0.227
octo         male       age              pulmonary              reasoning               0.42               0.81           -0.00                          0.004                 0.108               0.962
octo         female     aeh              pulmonary              speed                   0.37               0.68           0.04                           0.000                 0.006               0.494
octo         female     aeh              pulmonary              speed                   0.10               0.24           0.03                           0.403                 0.524               0.775
octo         female     age              pulmonary              speed                   0.39               0.67           0.04                           0.000                 0.004               0.526
octo         female     age              pulmonary              speed                   0.13               0.17           0.03                           0.250                 0.603               0.707
octo         male       aeh              pulmonary              speed                   0.34               0.72           -0.05                          0.007                 0.060               0.523
octo         male       aeh              pulmonary              speed                   0.37               0.77           -0.12                          0.020                 0.052               0.247
octo         male       age              pulmonary              speed                   0.39               0.64           -0.03                          0.001                 0.106               0.726
octo         male       age              pulmonary              speed                   0.44               0.71           -0.11                          0.002                 0.047               0.291

## radc


Table: Bivariate Results

study_name   subgroup   model<br/>type   outcome<br/>physical   cognitive<br/>outcome   sd<br/>intercept   sd<br/>slope   sd<br/>residual    p<br/>cov<br/>int   p<br/>cov<br/>slope   p<br/>cov<br/>res
-----------  ---------  ---------------  ---------------------  ----------------------  -----------------  -------------  ----------------  ------------------  --------------------  ------------------
radc         female     aeh              muscle                 attention               0.01               0.15           0.04                           0.866                 0.705               0.137
radc         female     aehplus          muscle                 attention               0.01               0.16           0.04                           0.883                 0.681               0.145
radc         male       aeh              muscle                 attention               0.08               0.05           0.04                           0.266                 0.886               0.478
radc         male       aehplus          muscle                 attention               0.08               -0.02          0.03                           0.306                 0.965               0.532
radc         female     aeh              muscle                 executive               0.05               0.24           0.04                           0.235                 0.208               0.212
radc         female     aeh              muscle                 executive               0.03               0.18           0.01                           0.522                 0.565               0.660
radc         female     aeh              muscle                 executive               0.16               Inf            -0.05                          0.001                 0.047               0.056
radc         female     aehplus          muscle                 executive               0.05               0.25           0.04                           0.217                 0.201               0.191
radc         female     aehplus          muscle                 executive               0.03               0.22           0.01                           0.537                 0.516               0.612
radc         female     aehplus          muscle                 executive               0.14               0.51           -0.05                          0.002                 0.097               0.087
radc         female     age              muscle                 executive               0.10               -0.37          0.07                           0.002                 0.177               0.000
radc         male       aeh              muscle                 executive               0.06               0.13           0.02                           0.365                 0.667               0.712
radc         male       aehplus          muscle                 executive               0.07               0.21           0.01                           0.315                 0.536               0.812
radc         male       aehplus          muscle                 executive               0.12               0.09           -0.01                          0.219                 0.874               0.767
radc         male       aehplus          muscle                 executive               0.01               0.24           0.16                           0.920                 0.431               0.001
radc         male       age              muscle                 executive               0.09               0.74           0.10                           0.088                 0.003               0.004
radc         female     aeh              muscle                 global                  0.01               0.45           0.02                           0.830                 0.103               0.412
radc         female     aehplus          muscle                 global                  0.01               0.47           0.02                           0.866                 0.094               0.502
radc         male       aeh              muscle                 global                  0.14               0.05           0.06                           0.014                 0.895               0.278
radc         male       aehplus          muscle                 global                  0.16               0.07           0.06                           0.012                 0.853               0.334
radc         female     aeh              muscle                 knowledge               0.00               0.00           -0.01                          0.967                 0.994               0.835
radc         female     aehplus          muscle                 knowledge               0.00               0.01           -0.01                          0.990                 0.983               0.816
radc         female     age              muscle                 knowledge               0.10               0.23           0.00                           0.003                 0.403               0.931
radc         male       aeh              muscle                 knowledge               0.08               0.36           -0.01                          0.195                 0.373               0.790
radc         male       aehplus          muscle                 knowledge               0.05               0.24           -0.01                          0.369                 0.513               0.879
radc         male       age              muscle                 knowledge               0.11               0.11           0.02                           0.045                 0.671               0.494
radc         female     aeh              muscle                 language                0.08               0.03           -0.02                          0.072                 0.860               0.413
radc         female     aeh              muscle                 language                -0.04              0.04           0.02                           0.503                 0.905               0.509
radc         female     aehplus          muscle                 language                0.08               0.05           -0.02                          0.082                 0.780               0.404
radc         female     aehplus          muscle                 language                -0.04              0.05           0.02                           0.491                 0.859               0.493
radc         male       aeh              muscle                 language                0.22               -0.03          -0.01                          0.001                 0.935               0.918
radc         male       aeh              muscle                 language                0.16               0.21           -0.01                          0.036                 0.282               0.820
radc         male       aehplus          muscle                 language                0.17               0.26           -0.02                          0.034                 0.182               0.549
radc         female     aeh              muscle                 memory                  0.02               0.24           0.01                           0.703                 0.353               0.822
radc         female     aeh              muscle                 memory                  0.08               -Inf           -0.04                          0.143                 0.465               0.114
radc         female     aeh              muscle                 memory                  -0.00              0.45           0.00                           0.969                 0.033               0.891
radc         female     aeh              muscle                 memory                  0.17               0.29           -0.01                          0.000                 0.166               0.842
radc         female     aeh              muscle                 memory                  0.17               0.31           0.03                           0.000                 0.113               0.254
radc         female     aeh              muscle                 memory                  0.07               0.50           0.00                           0.212                 0.678               0.936
radc         female     aehplus          muscle                 memory                  0.02               0.26           0.01                           0.781                 0.321               0.777
radc         female     aehplus          muscle                 memory                  -0.01              0.29           -0.01                          0.884                 0.287               0.837
radc         female     aehplus          muscle                 memory                  -0.00              0.49           0.00                           0.957                 0.024               0.889
radc         female     aehplus          muscle                 memory                  -0.02              0.39           -0.02                          0.576                 0.073               0.441
radc         female     aehplus          muscle                 memory                  0.17               0.30           -0.01                          0.000                 0.158               0.803
radc         female     aehplus          muscle                 memory                  0.17               0.33           0.03                           0.000                 0.098               0.249
radc         female     aehplus          muscle                 memory                  0.15               0.31           -0.01                          0.000                 0.589               0.629
radc         male       aeh              muscle                 memory                  0.13               -0.39          0.03                           0.099                 0.532               0.520
radc         male       aeh              muscle                 memory                  0.05               0.70           -0.07                          0.632                 0.099               0.145
radc         male       aeh              muscle                 memory                  -0.05              -0.25          0.07                           0.543                 0.199               0.132
radc         male       aeh              muscle                 memory                  -0.10              -0.73          0.04                           0.241                 0.001               0.323
radc         male       aeh              muscle                 memory                  0.02               0.02           -0.03                          0.791                 0.971               0.536
radc         male       aeh              muscle                 memory                  0.08               -0.12          0.04                           0.320                 0.823               0.428
radc         male       aeh              muscle                 memory                  -0.03              -0.43          0.06                           0.639                 0.215               0.255
radc         male       aehplus          muscle                 memory                  0.13               -0.40          0.02                           0.104                 0.516               0.613
radc         male       aehplus          muscle                 memory                  --                 --             --                                NA                    NA                  NA
radc         male       aehplus          muscle                 memory                  -0.03              -0.22          0.07                           0.762                 0.296               0.143
radc         male       aehplus          muscle                 memory                  0.05               0.15           -0.03                          0.503                 0.771               0.502
radc         male       aehplus          muscle                 memory                  0.11               -0.16          0.05                           0.198                 0.779               0.340
radc         male       aehplus          muscle                 memory                  0.11               0.01           -0.05                          0.070                 0.984               0.438
radc         female     aeh              muscle                 reasoning               0.09               0.42           -0.01                          0.096                 0.388               0.795
radc         female     aehplus          muscle                 reasoning               0.09               0.44           -0.01                          0.098                 0.371               0.781
radc         female     age              muscle                 reasoning               0.11               0.53           -0.01                          0.000                 0.039               0.695
radc         male       aeh              muscle                 reasoning               0.13               0.68           -0.00                          0.095                 0.024               0.938
radc         male       aehplus          muscle                 reasoning               0.14               0.69           -0.01                          0.083                 0.024               0.858
radc         male       age              muscle                 reasoning               0.14               0.49           -0.04                          0.007                 0.024               0.228
radc         female     aeh              muscle                 speed                   0.07               -0.02          -0.01                          0.094                 0.934               0.760
radc         female     aeh              muscle                 speed                   0.04               0.32           0.01                           0.421                 0.209               0.725
radc         female     aehplus          muscle                 speed                   0.07               -0.03          -0.01                          0.100                 0.902               0.766
radc         female     aehplus          muscle                 speed                   0.04               0.34           0.01                           0.424                 0.188               0.715
radc         female     age              muscle                 speed                   0.10               0.08           0.02                           0.002                 0.794               0.209
radc         male       aeh              muscle                 speed                   0.15               0.29           0.04                           0.043                 0.391               0.396
radc         male       aeh              muscle                 speed                   0.06               -0.04          -0.00                          0.381                 0.874               0.917
radc         male       aehplus          muscle                 speed                   0.15               0.36           0.04                           0.037                 0.332               0.362
radc         male       aehplus          muscle                 speed                   0.07               -0.00          -0.01                          0.293                 0.989               0.891
radc         male       age              muscle                 speed                   0.16               -0.14          0.01                           0.001                 0.526               0.788
radc         female     aeh              muscle                 visuospatial            0.06               0.25           0.03                           0.251                 0.630               0.246
radc         female     aehplus          muscle                 visuospatial            0.06               0.27           0.03                           0.267                 0.602               0.239
radc         female     age              muscle                 visuospatial            0.10               0.08           0.02                           0.002                 0.794               0.209
radc         male       aeh              muscle                 visuospatial            0.09               -0.03          -0.02                          0.175                 0.923               0.690
radc         male       aehplus          muscle                 visuospatial            0.10               0.01           -0.03                          0.118                 0.975               0.595
radc         male       age              muscle                 visuospatial            0.16               -0.14          0.01                           0.001                 0.526               0.788
radc         female     aehplus          pulmonary              attention               0.13               NaN            0.03                           0.003                 0.999               0.239
radc         male       aeh              pulmonary              attention               0.03               0.88           -0.02                          0.678                 0.175               0.640
radc         male       aehplus          pulmonary              attention               0.04               0.51           -0.02                          0.554                 0.370               0.772
radc         female     aehplus          pulmonary              executive               0.17               -Inf           0.03                           0.001                 0.266               0.322
radc         female     aehplus          pulmonary              executive               0.14               0.51           -0.05                          0.002                 0.097               0.087
radc         female     age              pulmonary              executive               0.26               0.42           -0.04                          0.000                 0.194               0.138
radc         male       aeh              pulmonary              executive               -0.04              0.24           -0.02                          0.599                 0.822               0.696
radc         male       aeh              pulmonary              executive               0.08               -0.11          -0.02                          0.308                 0.794               0.741
radc         male       aehplus          pulmonary              executive               -0.04              0.25           -0.02                          0.621                 0.903               0.799
radc         male       aehplus          pulmonary              executive               0.10               0.00           -0.01                          0.162                 0.908               0.810
radc         male       age              pulmonary              executive               0.17               -0.29          -0.01                          0.014                 0.641               0.820
radc         female     aehplus          pulmonary              global                  0.05               -Inf           0.00                           0.334                 0.752               0.837
radc         male       aeh              pulmonary              global                  0.00               -0.33          0.03                           0.979                 0.326               0.531
radc         male       aehplus          pulmonary              global                  -0.01              -0.41          0.04                           0.934                 0.290               0.486
radc         female     aehplus          pulmonary              knowledge               0.16               NaN            0.00                           0.000                 0.687               0.959
radc         female     age              pulmonary              knowledge               0.25               NaN            0.00                           0.000                 0.629               0.964
radc         male       aeh              pulmonary              knowledge               0.08               -0.27          -0.01                          0.156                 0.738               0.888
radc         male       aehplus          pulmonary              knowledge               0.08               -0.32          -0.02                          0.165                 0.666               0.743
radc         male       age              pulmonary              knowledge               0.20               -0.25          -0.01                          0.000                 0.649               0.879
radc         female     aehplus          pulmonary              language                0.04               Inf            -0.03                          0.462                 0.646               0.400
radc         female     aehplus          pulmonary              language                0.14               NaN            -0.01                          0.011                 0.440               0.558
radc         male       aeh              pulmonary              language                0.04               -0.39          -0.05                          0.520                 0.345               0.381
radc         male       aeh              pulmonary              language                -0.04              -0.27          0.03                           0.591                 0.208               0.584
radc         male       aehplus          pulmonary              language                0.02               -0.60          -0.05                          0.805                 0.190               0.361
radc         male       aehplus          pulmonary              language                -0.08              -0.42          0.03                           0.346                 0.160               0.597
radc         female     aehplus          pulmonary              memory                  0.01               -Inf           -0.05                          0.815                 0.443               0.094
radc         female     aehplus          pulmonary              memory                  0.07               -Inf           -0.04                          0.219                 0.426               0.127
radc         female     aehplus          pulmonary              memory                  0.02               -Inf           -0.02                          0.608                 0.257               0.560
radc         female     aehplus          pulmonary              memory                  0.05               -Inf           -0.02                          0.269                 0.591               0.436
radc         female     aehplus          pulmonary              memory                  0.04               -Inf           0.00                           0.340                 0.719               0.979
radc         female     aehplus          pulmonary              memory                  0.12               -0.48          0.04                           0.007                 0.126               0.233
radc         female     aehplus          pulmonary              memory                  0.05               0.50           0.00                           0.379                 0.673               0.973
radc         male       aeh              pulmonary              memory                  0.03               0.70           -0.05                          0.757                 0.354               0.261
radc         male       aeh              pulmonary              memory                  0.05               0.70           -0.07                          0.632                 0.099               0.145
radc         male       aeh              pulmonary              memory                  0.07               -0.19          -0.02                          0.320                 0.531               0.676
radc         male       aeh              pulmonary              memory                  0.02               -0.41          -0.01                          0.748                 0.357               0.844
radc         male       aeh              pulmonary              memory                  0.03               0.00           0.01                           0.680                 0.937               0.814
radc         male       aeh              pulmonary              memory                  0.04               -0.47          0.10                           0.601                 0.543               0.038
radc         male       aeh              pulmonary              memory                  -0.03              -0.43          0.06                           0.639                 0.215               0.255
radc         male       aehplus          pulmonary              memory                  0.02               0.67           -0.05                          0.852                 0.448               0.305
radc         male       aehplus          pulmonary              memory                  0.05               0.73           -0.07                          0.579                 0.118               0.181
radc         male       aehplus          pulmonary              memory                  0.09               -0.23          -0.02                          0.230                 0.406               0.723
radc         male       aehplus          pulmonary              memory                  0.04               -0.55          -0.01                          0.612                 0.308               0.835
radc         male       aehplus          pulmonary              memory                  0.04               0.18           0.01                           0.657                 0.901               0.780
radc         male       aehplus          pulmonary              memory                  0.05               -0.46          0.10                           0.520                 0.592               0.043
radc         male       aehplus          pulmonary              memory                  -0.04              -0.44          0.06                           0.571                 0.287               0.209
radc         female     aehplus          pulmonary              reasoning               0.19               Inf            -0.05                          0.000                 0.372               0.095
radc         female     age              pulmonary              reasoning               0.32               Inf            -0.05                          0.000                 0.327               0.113
radc         male       aeh              pulmonary              reasoning               0.14               0.29           -0.01                          0.062                 0.647               0.867
radc         male       aehplus          pulmonary              reasoning               0.12               0.29           -0.01                          0.092                 0.575               0.909
radc         male       age              pulmonary              reasoning               0.34               0.52           -0.03                          0.000                 0.339               0.528
radc         female     aehplus          pulmonary              speed                   0.17               -Inf           0.01                           0.000                 0.581               0.735
radc         female     aehplus          pulmonary              speed                   0.14               -Inf           -0.00                          0.001                 0.534               0.956
radc         female     age              pulmonary              speed                   0.24               NaN            -0.04                          0.000                 0.916               0.078
radc         male       aeh              pulmonary              speed                   0.16               0.19           0.01                           0.033                 0.651               0.816
radc         male       aeh              pulmonary              speed                   0.02               -0.44          0.00                           0.721                 0.332               0.993
radc         male       aehplus          pulmonary              speed                   0.17               0.00           0.04                           0.017                 0.986               0.396
radc         male       aehplus          pulmonary              speed                   0.05               -0.49          -0.01                          0.490                 0.332               0.916
radc         male       age              pulmonary              speed                   0.29               -0.29          0.05                           0.000                 0.650               0.340
radc         female     aehplus          pulmonary              visuospatial            0.12               NaN            -0.04                          0.012                 0.968               0.078
radc         female     age              pulmonary              visuospatial            0.24               NaN            -0.04                          0.000                 0.916               0.078
radc         male       aeh              pulmonary              visuospatial            0.16               0.19           0.01                           0.033                 0.651               0.816
radc         male       aehplus          pulmonary              visuospatial            0.12               0.20           0.02                           0.094                 0.637               0.753
radc         male       age              pulmonary              visuospatial            0.28               0.30           0.00                           0.000                 0.495               0.964

## satsa


Table: Bivariate Results

study_name   subgroup   model<br/>type   outcome<br/>physical   cognitive<br/>outcome   sd<br/>intercept   sd<br/>slope   sd<br/>residual    p<br/>cov<br/>int   p<br/>cov<br/>slope   p<br/>cov<br/>res
-----------  ---------  ---------------  ---------------------  ----------------------  -----------------  -------------  ----------------  ------------------  --------------------  ------------------
satsa        female     ae               gait                   memory                  -0.31              -0.33          -0.07                          0.045                 0.137               0.091
satsa        female     aec              gait                   memory                  -0.39              -0.39          -0.07                          0.040                 0.086               0.116
satsa        female     age              gait                   memory                  -0.50              -0.28          -0.10                          0.031                 0.356               0.037
satsa        male       ae               gait                   memory                  -0.45              -0.44          -0.10                          0.008                 0.137               0.180
satsa        male       age              gait                   memory                  -0.55              -0.30          -0.15                          0.020                 0.239               0.148
satsa        female     ae               gait                   spatial                 -0.36              -0.63          -0.06                          0.095                 0.376               0.395
satsa        female     aec              gait                   spatial                 -0.27              -0.56          -0.16                          0.152                 0.175               0.005
satsa        female     age              gait                   spatial                 -0.36              -0.63          -0.06                          0.095                 0.376               0.395
satsa        male       ae               gait                   spatial                 -0.25              -0.29          -0.13                          0.309                 0.247               0.146
satsa        male       age              gait                   spatial                 -0.25              -0.29          -0.13                          0.309                 0.247               0.146
satsa        female     ae               gait                   speed                   -0.39              -0.43          -0.09                          0.034                 0.060               0.036
satsa        female     aec              gait                   speed                   -0.40              -0.57          -0.08                          0.066                 0.014               0.038
satsa        female     age              gait                   speed                   -0.47              -0.45          -0.06                          0.068                 0.146               0.205
satsa        male       ae               gait                   speed                   -0.28              -0.56          -0.22                          0.089                 0.125               0.001
satsa        male       age              gait                   speed                   -0.37              -0.46          -0.22                          0.065                 0.203               0.003
satsa        female     ae               gait                   verbal                  -0.51              -0.30          0.10                           0.001                 0.332               0.149
satsa        female     aec              gait                   verbal                  -0.52              -0.42          0.10                           0.002                 0.220               0.156
satsa        female     age              gait                   verbal                  -0.67              -0.54          0.09                           0.006                 0.276               0.284
satsa        male       ae               gait                   verbal                  -0.16              -0.36          -0.08                          0.360                 0.254               0.329
satsa        male       age              gait                   verbal                  -0.29              -0.16          -0.06                          0.234                 0.723               0.507
satsa        female     ae               grip                   memory                  0.11               0.47           0.12                           0.149                 0.076               0.002
satsa        female     aec              grip                   memory                  0.09               0.55           --                             0.340                 0.102               0.008
satsa        female     age              grip                   memory                  0.13               0.26           0.12                           0.112                 0.307               0.007
satsa        male       ae               grip                   memory                  0.30               0.53           0.07                           0.039                 0.772               0.020
satsa        male       age              grip                   memory                  0.27               0.66           0.06                           0.002                 0.145               0.179
satsa        female     ae               grip                   spatial                 0.17               0.35           0.14                           0.028                 0.126               0.000
satsa        female     aec              grip                   spatial                 0.16               0.21           0.14                           0.048                 0.355               0.000
satsa        female     age              grip                   spatial                 0.17               0.29           0.14                           0.024                 0.170               0.001
satsa        male       ae               grip                   spatial                 0.40               0.61           0.10                           0.003                 0.657               0.002
satsa        male       age              grip                   spatial                 0.31               0.24           0.04                           0.000                 0.467               0.366
satsa        female     ae               grip                   speed                   0.24               0.39           0.02                           0.001                 0.060               0.589
satsa        female     aec              grip                   speed                   0.13               Inf            --                             0.156                 0.297               0.203
satsa        female     age              grip                   speed                   0.26               0.20           0.10                           0.000                 0.268               0.017
satsa        male       ae               grip                   speed                   0.42               0.39           -0.03                          0.008                 0.728               0.446
satsa        male       age              grip                   speed                   0.28               0.21           -0.01                          0.002                 0.451               0.736
satsa        female     ae               grip                   verbal                  0.11               0.69           0.13                           0.124                 0.005               0.000
satsa        female     aec              grip                   verbal                  0.08               0.59           0.12                           0.292                 0.028               0.001
satsa        female     age              grip                   verbal                  0.07               0.54           0.10                           0.289                 0.012               0.007
satsa        male       ae               grip                   verbal                  0.20               0.60           0.10                           0.138                 0.679               0.000
satsa        male       age              grip                   verbal                  0.19               0.33           0.17                           0.018                 0.326               0.000
satsa        female     ae               pulmonary              memory                  0.18               Inf            0.04                           0.018                 0.103               0.196
satsa        female     aec              pulmonary              memory                  0.22               Inf            --                             0.020                 0.138               0.164
satsa        female     age              pulmonary              memory                  0.18               Inf            0.03                           0.017                 0.115               0.458
satsa        male       ae               pulmonary              memory                  0.27               NaN            0.02                           0.000                 0.727               0.574
satsa        male       age              pulmonary              memory                  0.27               -Inf           0.01                           0.000                 0.629               0.874
satsa        female     ae               pulmonary              spatial                 0.22               Inf            0.05                           0.001                 0.238               0.250
satsa        female     aec              pulmonary              spatial                 0.28               NaN            0.05                           0.000                 0.462               0.285
satsa        female     age              pulmonary              spatial                 0.15               Inf            0.04                           0.026                 0.305               0.402
satsa        male       ae               pulmonary              spatial                 0.26               Inf            0.04                           0.001                 0.202               0.344
satsa        male       age              pulmonary              spatial                 0.25               Inf            0.05                           0.002                 0.273               0.244
satsa        female     ae               pulmonary              speed                   0.10               NaN            -0.01                          0.190                 0.815               0.753
satsa        female     aec              pulmonary              speed                   0.13               Inf            --                             0.156                 0.297               0.203
satsa        female     age              pulmonary              speed                   0.02               NaN            -0.00                          0.760                 0.907               0.906
satsa        male       ae               pulmonary              speed                   0.28               NaN            -0.04                          0.000                 0.610               0.412
satsa        male       age              pulmonary              speed                   0.25               Inf            0.05                           0.001                 0.505               0.299
satsa        female     ae               pulmonary              verbal                  0.20               Inf            0.06                           0.002                 0.240               0.055
satsa        female     aec              pulmonary              verbal                  0.19               Inf            0.05                           0.007                 0.178               0.131
satsa        male       ae               pulmonary              verbal                  0.17               NaN            0.12                           0.009                 0.980               0.003
satsa        male       age              pulmonary              verbal                  0.22               NaN            0.11                           0.001                 0.657               0.020



# Session Information
For the sake of documentation and reproducibility, the current report was rendered on a system using the following software.


```
Report rendered by andkov at 2015-05-05, 16:10 -0700
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
 [7] magrittr_1.5     evaluate_0.7     highr_0.5        stringi_0.4-1    reshape2_1.4.1   rmarkdown_0.5.1 
[13] proto_0.3-10     tools_3.2.0      stringr_1.0.0    munsell_0.4.2    yaml_2.1.13      colorspace_1.2-6
[19] htmltools_0.2.6 
```
