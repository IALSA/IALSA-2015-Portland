# ILSE : Seed Report
Date: `r Sys.Date()`  
<!-- For instructions, see http://rmarkdown.rstudio.com/word_document_format.html and http://rmarkdown.rstudio.com/articles_docx.html -->

This report contains a searchable table, followed by publication-ready tables.

<!--  Set the working directory to the repository's base directory; this assumes the report is nested inside of two directories.-->


<!-- Set the report-wide options, and point to the external code file. -->


<!-- Load the sources.  Suppress the output when loading sources. --> 


<!-- Load 'sourced' R files.  Suppress the output when loading packages. --> 


<!-- Load any global functions and variables declared in the R file.  Suppress the output. --> 


<!-- Declare any global functions specific to a Rmd output.  Suppress the output. --> 


<!-- Load the datasets.   -->


<!-- Tweak the datasets.   -->





# Available models 

 Study **ILSE** have contributed the following outcome pairs to the IASLA-2015-Portland model pool: 
NULL



process_a   process_b      n_models
----------  ------------  ---------
tug         block                 6
tug         fluency               5
tug         piccomp               6
tug         spatial_ab            6
tug         symbol                6
tug         waisgeneral           6




study_name   subgroup   model_type   process_a   process_b      n_models
-----------  ---------  -----------  ----------  ------------  ---------
ilse         female     a            tug         block                 1
ilse         female     a            tug         fluency               1
ilse         female     a            tug         piccomp               1
ilse         female     a            tug         spatial_ab            1
ilse         female     a            tug         symbol                1
ilse         female     a            tug         waisgeneral           1
ilse         female     aeh          tug         block                 1
ilse         female     aeh          tug         fluency               1
ilse         female     aeh          tug         piccomp               1
ilse         female     aeh          tug         spatial_ab            1
ilse         female     aeh          tug         symbol                1
ilse         female     aeh          tug         waisgeneral           1
ilse         female     aehplus      tug         block                 1
ilse         female     aehplus      tug         fluency               1
ilse         female     aehplus      tug         piccomp               1
ilse         female     aehplus      tug         spatial_ab            1
ilse         female     aehplus      tug         symbol                1
ilse         female     aehplus      tug         waisgeneral           1




study_name   subgroup   model_type   process_a   process_b      n_models
-----------  ---------  -----------  ----------  ------------  ---------
ilse         male       a            tug         block                 1
ilse         male       a            tug         fluency               1
ilse         male       a            tug         piccomp               1
ilse         male       a            tug         spatial_ab            1
ilse         male       a            tug         symbol                1
ilse         male       a            tug         waisgeneral           1
ilse         male       aeh          tug         block                 1
ilse         male       aeh          tug         fluency               1
ilse         male       aeh          tug         piccomp               1
ilse         male       aeh          tug         spatial_ab            1
ilse         male       aeh          tug         symbol                1
ilse         male       aeh          tug         waisgeneral           1
ilse         male       aehplus      tug         block                 1
ilse         male       aehplus      tug         piccomp               1
ilse         male       aehplus      tug         spatial_ab            1
ilse         male       aehplus      tug         symbol                1
ilse         male       aehplus      tug         waisgeneral           1


# female 

 Gender = _female_; Model type: _aehplus_;  Process (a) = _tug_; Process (b): *block*, *fluency*, *piccomp*, *spatial_ab*, *symbol*, *waisgeneral*


 process   label                                      block                fluency                piccomp             spatial_ab                  symbol       waisgeneral        mean(sd)     
---------  -------------------------  ---------------------  ---------------------  ---------------------  ---------------------  ----------------------  ----------------------  -------------
    a      Level                        4.78 (1.65)    <.01    4.79 (1.65)    <.01    4.80 (1.59)    <.01    4.79 (1.65)    <.01     4.86 (1.52)    <.01   4.79 (1.54)    <.01    4.80(0.03)   
    a      Slope                        0.21 (0.20)     .30    0.21 (0.20)     .29    0.21 (0.20)     .30    0.20 (0.20)     .30     0.19 (0.19)     .33   0.21 (0.19)     .27    0.20(0.01)   
    a      Level * age                 -0.16 (0.23)     .49   -0.16 (0.23)     .48   -0.16 (0.22)     .48   -0.16 (0.23)     .48    -0.15 (0.21)     .48   -0.16 (0.21)     .46   -0.16(0.00)  
    a      Level * education           -0.48 (0.42)     .26   -0.48 (0.38)     .21   -0.48 (0.37)     .20   -0.47 (0.37)     .20    -0.49 (0.38)     .19   -0.48 (0.36)     .19   -0.48(0.01)  
    a      Level * height               0.01 (0.03)     .78    0.01 (0.03)     .78    0.01 (0.03)     .75    0.01 (0.03)     .76     0.01 (0.03)     .75   0.01 (0.03)     .76    0.01(0.00)   
    a      Level * smoking             -0.22 (0.37)     .55   -0.20 (0.39)     .60   -0.23 (0.40)     .57   -0.23 (0.39)     .54    -0.23 (0.37)     .52   -0.23 (0.38)     .55   -0.23(0.01)  
    a      Level * cardio               0.66 (0.40)     .10    0.65 (0.40)     .10    0.66 (0.41)     .11    0.66 (0.42)     .12     0.65 (0.42)     .12   0.67 (0.40)     .10    0.66(0.01)   
    a      Level * diabetes                             ---                    ---                    ---                    ---                     ---           ---            ---          
    a      Slope * age                  0.00 (0.03)     .92    0.00 (0.03)     .92    0.00 (0.03)     .89    0.00 (0.03)     .92     0.00 (0.03)     .99   0.00 (0.03)     .88    0.00(0.00)   
    a      Slope * education            0.05 (0.05)     .38    0.04 (0.06)     .42    0.05 (0.05)     .38    0.04 (0.06)     .43     0.05 (0.05)     .36   0.05 (0.05)     .35    0.05(0.00)   
    a      Slope * height               0.00 (0.00)     .88    0.00 (0.00)     .90    0.00 (0.00)     .88    0.00 (0.00)     .87     0.00 (0.00)     .90   -0.00 (0.00)     .86   -0.00(0.00)  
    a      Slope * smoking              0.05 (0.05)     .32    0.04 (0.05)     .42    0.05 (0.05)     .35    0.05 (0.05)     .32     0.05 (0.05)     .32   0.05 (0.05)     .33    0.05(0.00)   
    a      Slope * cardio              -0.04 (0.05)     .40   -0.04 (0.05)     .40   -0.04 (0.05)     .42   -0.04 (0.05)     .41    -0.04 (0.06)     .45   -0.04 (0.05)     .42   -0.04(0.00)  
    a      Slope * diabetes                             ---                    ---                    ---                    ---                     ---           ---            ---          
    b      Level                       19.53 (4.80)    <.01   24.12 (5.39)    <.01    9.20 (2.21)    <.01   11.13 (3.81)    <.01    38.15 (6.74)    <.01   12.00 (2.20)    <.01   ---          
    b      Slope                       -0.17 (0.44)     .70   -0.18 (0.54)     .74    0.34 (0.29)     .23    0.05 (0.30)     .86     0.03 (0.38)     .93   0.35 (0.16)     .03    ---          
    b      Level * age                 -0.64 (0.67)     .34   -0.68 (0.75)     .36   -0.19 (0.30)     .53   -1.14 (0.52)     .03    -0.62 (0.95)     .51   -0.08 (0.30)     .80   ---          
    b      Level * education            5.61 (1.15)    <.01    6.30 (1.30)    <.01    2.26 (0.62)    <.01    3.44 (1.01)    <.01     8.92 (1.57)    <.01   4.27 (0.70)    <.01    ---          
    b      Level * height              -0.01 (0.10)     .95   -0.04 (0.11)     .75   -0.01 (0.05)     .75    0.06 (0.09)     .51     0.06 (0.14)     .65   0.05 (0.05)     .31    ---          
    b      Level * smoking             -2.39 (1.18)     .04    0.14 (1.25)     .91   -0.76 (0.57)     .18   -0.54 (0.96)     .57    -0.15 (1.54)     .92   -0.29 (0.60)     .64   ---          
    b      Level * cardio               1.01 (1.24)     .41   -0.96 (1.42)     .50   -0.43 (0.60)     .47   -0.78 (1.04)     .45    -0.79 (1.88)     .67   -0.07 (0.67)     .92   ---          
    b      Level * diabetes                             ---                    ---                    ---                    ---                     ---           ---            ---          
    b      Slope * age                  0.02 (0.06)     .73   -0.01 (0.07)     .91    0.06 (0.04)     .12    0.04 (0.04)     .39     0.06 (0.05)     .28   0.04 (0.02)     .07    ---          
    b      Slope * education           -0.03 (0.10)     .78    0.12 (0.12)     .34    0.02 (0.07)     .80    0.17 (0.09)     .06    -0.10 (0.10)     .33   -0.02 (0.05)     .69   ---          
    b      Slope * height               0.00 (0.01)     .89    0.01 (0.01)     .41    0.01 (0.01)     .14   -0.02 (0.01)     .02     0.00 (0.01)     .56   0.00 (0.00)     .57    ---          
    b      Slope * smoking             -0.02 (0.10)     .82    0.01 (0.13)     .95    0.05 (0.07)     .47   -0.08 (0.08)     .35    -0.06 (0.10)     .51   0.01 (0.05)     .82    ---          
    b      Slope * cardio               0.11 (0.11)     .35   -0.01 (0.14)     .97    0.04 (0.08)     .60   -0.08 (0.09)     .35    -0.02 (0.11)     .82   -0.04 (0.05)     .43   ---          
    b      Slope * diabetes                             ---                    ---                    ---                    ---                     ---           ---            ---          
    a      Var (Level)                  1.39 (0.59)     .02    1.39 (0.64)     .03    1.36 (0.57)     .02    1.35 (0.64)     .04     1.32 (0.57)     .02   1.37 (0.59)     .02    1.36(0.03)   
    a      Var (Slope)                  0.00 (0.01)     .85    0.00 (0.01)     .88    0.00 (0.01)     .87    0.00 (0.01)     .89     0.00 (0.01)     .85   0.00 (0.01)     .83    0.00(0.00)   
    a      Var (Residual)               1.75 (0.29)    <.01    1.75 (0.32)    <.01    1.75 (0.27)    <.01    1.77 (0.32)    <.01     1.77 (0.27)    <.01   1.74 (0.30)    <.01    1.75(0.01)   
    a      Covar (Level, Slope)        -0.04 (0.07)     .61   -0.03 (0.07)     .65   -0.03 (0.06)     .64   -0.03 (0.07)     .66    -0.03 (0.07)     .65   -0.03 (0.07)     .62   -0.03(0.00)  
    b      Var (Level)                 43.93 (6.10)    <.01   42.67 (6.62)    <.01    7.57 (1.65)    <.01   29.77 (4.34)    <.01   92.94 (10.94)    <.01   14.05 (1.87)    <.01   ---          
    b      Var (Slope)                  0.09 (0.05)     .06    0.03 (0.07)     .65    0.02 (0.02)     .32    0.01 (0.03)     .71     0.06 (0.05)     .20   0.01 (0.01)     .19    ---          
    b      Var (Residual)              14.48 (1.72)    <.01   25.64 (2.40)    <.01    6.45 (0.66)    <.01   11.31 (0.89)    <.01    14.25 (1.13)    <.01   2.99 (0.36)    <.01    ---          
    b      Covar (Level, Slope)        -0.51 (0.38)     .18   -0.28 (0.59)     .64   -0.05 (0.13)     .68    0.08 (0.29)     .79    -0.47 (0.65)     .47   -0.10 (0.11)     .36   ---          
   ab      Covar (Levels)              -0.37 (1.33)     .78    0.11 (1.56)     .94    0.27 (0.84)     .75    0.17 (1.13)     .88    -1.45 (2.00)     .47   0.16 (0.82)     .85    ---          
   ab      Covar (Slopes)              -0.00 (0.01)     .92    0.00 (0.02)     .80    0.00 (0.01)     .90   -0.00 (0.01)     .93    -0.00 (0.02)     .96   0.00 (0.01)     .95    ---          
   ab      Covar (Residuals)            0.25 (0.47)     .60   -0.66 (0.70)     .34   -0.10 (0.31)     .74   -0.35 (0.50)     .48     0.10 (0.58)     .86   -0.07 (0.24)     .76   ---          
    \      Correlation of Levels                     -0.048                  0.015                  0.084                  0.027                  -0.131          0.036           -0.00(0.08)  
    \      Correlation of Slopes                     -0.146                  0.485                  0.171                 -0.302                  -0.091          0.000           0.02(0.28)   
    \      Correlation of Residuals                   0.049                 -0.099                 -0.031                 -0.078                   0.021          -0.031          -0.03(0.06)  
    \      N                                            225                    225                    225                    225                     225           225            225.00(0.00) 
    \      occasions                                      3                      3                      3                      3                       3            3             3.00(0.00)   
    \      parameters                                    37                     37                     37                     37                      37            37            37.00(0.00)  
    \      LL                                        -2,629                 -2,713                 -2,294                 -2,525                  -2,693          -2,206          -2,510(214)  
    \      AIC                                        5,332                  5,500                  4,662                  5,124                   5,459          4,486           5,094(427)   
    \      BIC                                        5,458                  5,627                  4,788                  5,251                   5,586          4,612           5,220(427)   

##  block 

 Gender = _female_;  Process (a) = *tug*; Process (b) = _block_


 process   label                                          a                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------
    a      Level                        5.36 (1.22)    <.01    4.92 (1.53)    <.01    4.78 (1.65)    <.01
    a      Slope                        0.22 (0.12)     .07    0.23 (0.18)     .20    0.21 (0.20)     .30
    a      Level * age                 -0.08 (0.17)     .62   -0.16 (0.21)     .46   -0.16 (0.23)     .49
    a      Level * education                            ---   -0.55 (0.41)     .17   -0.48 (0.42)     .26
    a      Level * height                               ---    0.00 (0.03)     .96    0.01 (0.03)     .78
    a      Level * smoking                              ---                    ---   -0.22 (0.37)     .55
    a      Level * cardio                               ---                    ---    0.66 (0.40)     .10
    a      Level * diabetes                             ---                    ---                    ---
    a      Slope * age                  0.00 (0.02)     .86    0.01 (0.02)     .80    0.00 (0.03)     .92
    a      Slope * education                            ---    0.05 (0.05)     .31    0.05 (0.05)     .38
    a      Slope * height                               ---    0.00 (0.00)     .95    0.00 (0.00)     .88
    a      Slope * smoking                              ---                    ---    0.05 (0.05)     .32
    a      Slope * cardio                               ---                    ---   -0.04 (0.05)     .40
    a      Slope * diabetes                             ---                    ---                    ---
    b      Level                       19.49 (4.71)    <.01   18.09 (4.73)    <.01   19.53 (4.80)    <.01
    b      Slope                       -0.16 (0.39)     .68   -0.18 (0.41)     .66   -0.17 (0.44)     .70
    b      Level * age                 -0.83 (0.66)     .21   -0.78 (0.66)     .24   -0.64 (0.67)     .34
    b      Level * education                            ---    5.19 (1.13)    <.01    5.61 (1.15)    <.01
    b      Level * height                               ---   -0.03 (0.10)     .76   -0.01 (0.10)     .95
    b      Level * smoking                              ---                    ---   -2.39 (1.18)     .04
    b      Level * cardio                               ---                    ---    1.01 (1.24)     .41
    b      Level * diabetes                             ---                    ---                    ---
    b      Slope * age                  0.02 (0.05)     .72    0.01 (0.06)     .79    0.02 (0.06)     .73
    b      Slope * education                            ---   -0.03 (0.10)     .79   -0.03 (0.10)     .78
    b      Slope * height                               ---    0.00 (0.01)     .89    0.00 (0.01)     .89
    b      Slope * smoking                              ---                    ---   -0.02 (0.10)     .82
    b      Slope * cardio                               ---                    ---    0.11 (0.11)     .35
    b      Slope * diabetes                             ---                    ---                    ---
    a      Var (Level)                  1.54 (0.40)    <.01    1.38 (0.58)     .02    1.39 (0.59)     .02
    a      Var (Slope)                  0.01 (0.01)     .28    0.00 (0.01)     .85    0.00 (0.01)     .85
    a      Var (Residual)               0.08 (0.45)     .86    1.77 (0.27)    <.01    1.75 (0.29)    <.01
    a      Covar (Level, Slope)        -0.08 (0.06)     .17   -0.03 (0.06)     .62   -0.04 (0.07)     .61
    b      Var (Level)                 50.92 (6.54)    <.01   45.43 (6.33)    <.01   43.93 (6.10)    <.01
    b      Var (Slope)                  0.09 (0.04)     .04    0.09 (0.05)     .06    0.09 (0.05)     .06
    b      Var (Residual)              14.76 (1.72)    <.01   14.68 (1.72)    <.01   14.48 (1.72)    <.01
    b      Covar (Level, Slope)        -0.50 (0.38)     .19   -0.48 (0.36)     .19   -0.51 (0.38)     .18
   ab      Covar (Levels)              -1.53 (0.97)     .12   -0.28 (1.28)     .83   -0.37 (1.33)     .78
   ab      Covar (Slopes)              -0.01 (0.01)     .34   -0.00 (0.01)     .84   -0.00 (0.01)     .92
   ab      Covar (Residuals)            0.39 (0.45)     .39    0.26 (0.45)     .56    0.25 (0.47)     .60
    \      Correlation of Levels                      -0.17                 -0.035                 -0.048
    \      Correlation of Slopes                      -0.40                 -0.221                 -0.146
    \      Correlation of Residuals                    0.36                  0.052                  0.049
    \      N                                            228                    226                    225
    \      occasions                                      3                      3                      3
    \      parameters                                    23                     29                     37
    \      LL                                        -2,664                 -2,652                 -2,629
    \      AIC                                        5,373                  5,362                  5,332
    \      BIC                                        5,452                  5,462                  5,458

##  fluency 

 Gender = _female_;  Process (a) = *tug*; Process (b) = _fluency_


 process   label                                          a                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------
    a      Level                        5.31 (1.25)    <.01    4.92 (1.56)    <.01    4.79 (1.65)    <.01
    a      Slope                        0.23 (0.14)     .09    0.23 (0.18)     .19    0.21 (0.20)     .29
    a      Level * age                 -0.10 (0.18)     .57   -0.16 (0.22)     .46   -0.16 (0.23)     .48
    a      Level * education                            ---   -0.56 (0.37)     .13   -0.48 (0.38)     .21
    a      Level * height                               ---    0.00 (0.03)     .95    0.01 (0.03)     .78
    a      Level * smoking                              ---                    ---   -0.20 (0.39)     .60
    a      Level * cardio                               ---                    ---    0.65 (0.40)     .10
    a      Level * diabetes                             ---                    ---                    ---
    a      Slope * age                  0.00 (0.02)     .81    0.01 (0.02)     .80    0.00 (0.03)     .92
    a      Slope * education                            ---    0.05 (0.05)     .34    0.04 (0.06)     .42
    a      Slope * height                               ---    0.00 (0.00)     .94    0.00 (0.00)     .90
    a      Slope * smoking                              ---                    ---    0.04 (0.05)     .42
    a      Slope * cardio                               ---                    ---   -0.04 (0.05)     .40
    a      Slope * diabetes                             ---                    ---                    ---
    b      Level                       25.62 (5.18)    <.01   23.79 (5.06)    <.01   24.12 (5.39)    <.01
    b      Slope                       -0.12 (0.44)     .79   -0.22 (0.48)     .64   -0.18 (0.54)     .74
    b      Level * age                 -0.73 (0.73)     .32   -0.69 (0.72)     .34   -0.68 (0.75)     .36
    b      Level * education                            ---    6.37 (1.29)    <.01    6.30 (1.30)    <.01
    b      Level * height                               ---   -0.03 (0.10)     .78   -0.04 (0.11)     .75
    b      Level * smoking                              ---                    ---    0.14 (1.25)     .91
    b      Level * cardio                               ---                    ---   -0.96 (1.42)     .50
    b      Level * diabetes                             ---                    ---                    ---
    b      Slope * age                 -0.01 (0.06)     .92   -0.01 (0.07)     .83   -0.01 (0.07)     .91
    b      Slope * education                            ---    0.10 (0.12)     .42    0.12 (0.12)     .34
    b      Slope * height                               ---    0.01 (0.01)     .38    0.01 (0.01)     .41
    b      Slope * smoking                              ---                    ---    0.01 (0.13)     .95
    b      Slope * cardio                               ---                    ---   -0.01 (0.14)     .97
    b      Slope * diabetes                             ---                    ---                    ---
    a      Var (Level)                  1.49 (0.37)    <.01    1.40 (0.62)     .02    1.39 (0.64)     .03
    a      Var (Slope)                  0.01 (0.01)     .26    0.00 (0.01)     .87    0.00 (0.01)     .88
    a      Var (Residual)               0.13 (0.41)     .75    1.76 (0.29)    <.01    1.75 (0.32)    <.01
    a      Covar (Level, Slope)        -0.07 (0.05)     .18   -0.03 (0.07)     .64   -0.03 (0.07)     .65
    b      Var (Level)                 50.80 (6.97)    <.01   42.39 (6.28)    <.01   42.67 (6.62)    <.01
    b      Var (Slope)                  0.03 (0.07)     .66    0.04 (0.07)     .61    0.03 (0.07)     .65
    b      Var (Residual)              26.20 (2.46)    <.01   25.84 (2.38)    <.01   25.64 (2.40)    <.01
    b      Covar (Level, Slope)        -0.05 (0.59)     .94   -0.22 (0.56)     .69   -0.28 (0.59)     .64
   ab      Covar (Levels)              -1.23 (1.19)     .30    0.08 (1.50)     .96    0.11 (1.56)     .94
   ab      Covar (Slopes)               0.00 (0.02)     .76    0.00 (0.02)     .79    0.00 (0.02)     .80
   ab      Covar (Residuals)           -0.91 (0.69)     .19   -0.72 (0.67)     .28   -0.66 (0.70)     .34
    \      Correlation of Levels                      -0.14                   0.01                  0.015
    \      Correlation of Slopes                       0.27                   0.59                  0.485
    \      Correlation of Residuals                   -0.49                  -0.11                 -0.099
    \      N                                            228                    226                    225
    \      occasions                                      3                      3                      3
    \      parameters                                    23                     29                     37
    \      LL                                        -2,754                 -2,733                 -2,713
    \      AIC                                        5,554                  5,523                  5,500
    \      BIC                                        5,633                  5,622                  5,627

##  piccomp 

 Gender = _female_;  Process (a) = *tug*; Process (b) = _piccomp_


 process   label                                          a                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------
    a      Level                        5.35 (1.20)    <.01    4.93 (1.48)    <.01    4.80 (1.59)    <.01
    a      Slope                        0.24 (0.13)     .06    0.24 (0.18)     .20    0.21 (0.20)     .30
    a      Level * age                 -0.10 (0.17)     .57   -0.16 (0.21)     .45   -0.16 (0.22)     .48
    a      Level * education                            ---   -0.56 (0.37)     .13   -0.48 (0.37)     .20
    a      Level * height                               ---    0.00 (0.03)     .94    0.01 (0.03)     .75
    a      Level * smoking                              ---                    ---   -0.23 (0.40)     .57
    a      Level * cardio                               ---                    ---    0.66 (0.41)     .11
    a      Level * diabetes                             ---                    ---                    ---
    a      Slope * age                  0.01 (0.02)     .72    0.01 (0.02)     .77    0.00 (0.03)     .89
    a      Slope * education                            ---    0.06 (0.05)     .29    0.05 (0.05)     .38
    a      Slope * height                               ---    0.00 (0.00)     .92    0.00 (0.00)     .88
    a      Slope * smoking                              ---                    ---    0.05 (0.05)     .35
    a      Slope * cardio                               ---                    ---   -0.04 (0.05)     .42
    a      Slope * diabetes                             ---                    ---                    ---
    b      Level                        9.11 (2.14)    <.01    8.46 (2.08)    <.01    9.20 (2.21)    <.01
    b      Slope                        0.45 (0.24)     .06    0.38 (0.24)     .11    0.34 (0.29)     .23
    b      Level * age                 -0.25 (0.30)     .41   -0.24 (0.29)     .41   -0.19 (0.30)     .53
    b      Level * education                            ---    2.21 (0.60)    <.01    2.26 (0.62)    <.01
    b      Level * height                               ---   -0.02 (0.05)     .69   -0.01 (0.05)     .75
    b      Level * smoking                              ---                    ---   -0.76 (0.57)     .18
    b      Level * cardio                               ---                    ---   -0.43 (0.60)     .47
    b      Level * diabetes                             ---                    ---                    ---
    b      Slope * age                  0.07 (0.03)     .04    0.06 (0.03)     .06    0.06 (0.04)     .12
    b      Slope * education                            ---    0.02 (0.07)     .76    0.02 (0.07)     .80
    b      Slope * height                               ---    0.01 (0.00)     .10    0.01 (0.01)     .14
    b      Slope * smoking                              ---                    ---    0.05 (0.07)     .47
    b      Slope * cardio                               ---                    ---    0.04 (0.08)     .60
    b      Slope * diabetes                             ---                    ---                    ---
    a      Var (Level)                  1.57 (0.41)    <.01    1.36 (0.56)     .02    1.36 (0.57)     .02
    a      Var (Slope)                  0.01 (0.01)     .32    0.00 (0.01)     .87    0.00 (0.01)     .87
    a      Var (Residual)               0.07 (0.46)     .88    1.77 (0.25)    <.01    1.75 (0.27)    <.01
    a      Covar (Level, Slope)        -0.08 (0.06)     .19   -0.03 (0.06)     .65   -0.03 (0.06)     .64
    b      Var (Level)                  8.84 (1.74)    <.01    7.72 (1.65)    <.01    7.57 (1.65)    <.01
    b      Var (Slope)                  0.02 (0.02)     .24    0.02 (0.02)     .32    0.02 (0.02)     .32
    b      Var (Residual)               6.45 (0.63)    <.01    6.45 (0.63)    <.01    6.45 (0.66)    <.01
    b      Covar (Level, Slope)        -0.05 (0.12)     .70   -0.06 (0.11)     .59   -0.05 (0.13)     .68
   ab      Covar (Levels)              -0.44 (0.58)     .45    0.25 (0.73)     .74    0.27 (0.84)     .75
   ab      Covar (Slopes)              -0.01 (0.01)     .35    0.00 (0.01)     .91    0.00 (0.01)     .90
   ab      Covar (Residuals)            0.00 (0.31)     .99   -0.12 (0.30)     .67   -0.10 (0.31)     .74
    \      Correlation of Levels                      -0.12                  0.076                  0.084
    \      Correlation of Slopes                      -0.49                  0.243                  0.171
    \      Correlation of Residuals                    0.00                 -0.037                 -0.031
    \      N                                            228                    226                    225
    \      occasions                                      3                      3                      3
    \      parameters                                    23                     29                     37
    \      LL                                        -2,325                 -2,310                 -2,294
    \      AIC                                        4,697                  4,679                  4,662
    \      BIC                                        4,776                  4,778                  4,788

##  spatial_ab 

 Gender = _female_;  Process (a) = *tug*; Process (b) = _spatial_ab_


 process   label                                          a                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------
    a      Level                        5.41 (1.22)    <.01    4.89 (1.61)    <.01    4.79 (1.65)    <.01
    a      Slope                        0.23 (0.12)     .06    0.23 (0.18)     .20    0.20 (0.20)     .30
    a      Level * age                 -0.08 (0.17)     .63   -0.16 (0.22)     .47   -0.16 (0.23)     .48
    a      Level * education                            ---   -0.55 (0.37)     .13   -0.47 (0.37)     .20
    a      Level * height                               ---    0.00 (0.03)     .94    0.01 (0.03)     .76
    a      Level * smoking                              ---                    ---   -0.23 (0.39)     .54
    a      Level * cardio                               ---                    ---    0.66 (0.42)     .12
    a      Level * diabetes                             ---                    ---                    ---
    a      Slope * age                  0.00 (0.02)     .81    0.01 (0.02)     .79    0.00 (0.03)     .92
    a      Slope * education                            ---    0.05 (0.06)     .34    0.04 (0.06)     .43
    a      Slope * height                               ---    0.00 (0.00)     .95    0.00 (0.00)     .87
    a      Slope * smoking                              ---                    ---    0.05 (0.05)     .32
    a      Slope * cardio                               ---                    ---   -0.04 (0.05)     .41
    a      Slope * diabetes                             ---                    ---                    ---
    b      Level                       11.36 (3.75)    <.01   10.12 (3.66)     .01   11.13 (3.81)    <.01
    b      Slope                        0.10 (0.32)     .76    0.02 (0.29)     .94    0.05 (0.30)     .86
    b      Level * age                 -1.23 (0.52)     .02   -1.23 (0.51)     .02   -1.14 (0.52)     .03
    b      Level * education                            ---    3.35 (0.97)    <.01    3.44 (1.01)    <.01
    b      Level * height                               ---    0.06 (0.08)     .48    0.06 (0.09)     .51
    b      Level * smoking                              ---                    ---   -0.54 (0.96)     .57
    b      Level * cardio                               ---                    ---   -0.78 (1.04)     .45
    b      Level * diabetes                             ---                    ---                    ---
    b      Slope * age                  0.04 (0.04)     .32    0.04 (0.04)     .35    0.04 (0.04)     .39
    b      Slope * education                            ---    0.18 (0.08)     .03    0.17 (0.09)     .06
    b      Slope * height                               ---   -0.02 (0.01)     .01   -0.02 (0.01)     .02
    b      Slope * smoking                              ---                    ---   -0.08 (0.08)     .35
    b      Slope * cardio                               ---                    ---   -0.08 (0.09)     .35
    b      Slope * diabetes                             ---                    ---                    ---
    a      Var (Level)                  1.49 (0.37)    <.01    1.35 (0.64)     .03    1.35 (0.64)     .04
    a      Var (Slope)                  0.01 (0.01)     .26    0.00 (0.01)     .88    0.00 (0.01)     .89
    a      Var (Residual)               0.10 (0.41)     .81    1.78 (0.31)    <.01    1.77 (0.32)    <.01
    a      Covar (Level, Slope)        -0.07 (0.05)     .16   -0.03 (0.07)     .68   -0.03 (0.07)     .66
    b      Var (Level)                 33.12 (4.62)    <.01   30.23 (4.33)    <.01   29.77 (4.34)    <.01
    b      Var (Slope)                  0.03 (0.03)     .34    0.01 (0.03)     .60    0.01 (0.03)     .71
    b      Var (Residual)              11.49 (0.88)    <.01   11.40 (0.88)    <.01   11.31 (0.89)    <.01
    b      Covar (Level, Slope)         0.13 (0.33)     .69    0.06 (0.28)     .84    0.08 (0.29)     .79
   ab      Covar (Levels)              -1.23 (0.91)     .18    0.01 (1.09)     .99    0.17 (1.13)     .88
   ab      Covar (Slopes)              -0.00 (0.01)     .63   -0.00 (0.01)     .89   -0.00 (0.01)     .93
   ab      Covar (Residuals)           -0.21 (0.48)     .66   -0.35 (0.50)     .49   -0.35 (0.50)     .48
    \      Correlation of Levels                      -0.18                 0.0017                  0.027
    \      Correlation of Slopes                      -0.28                -0.5164                 -0.302
    \      Correlation of Residuals                   -0.20                -0.0768                 -0.078
    \      N                                            228                    226                    225
    \      occasions                                      3                      3                      3
    \      parameters                                    23                     29                     37
    \      LL                                        -2,562                 -2,546                 -2,525
    \      AIC                                        5,170                  5,150                  5,124
    \      BIC                                        5,249                  5,249                  5,251

##  symbol 

 Gender = _female_;  Process (a) = *tug*; Process (b) = _symbol_


 process   label                                            a                     aeh                 aehplus
---------  -------------------------  -----------------------  ----------------------  ----------------------
    a      Level                          5.46 (1.17)    <.01     4.96 (1.40)    <.01     4.86 (1.52)    <.01
    a      Slope                          0.20 (0.12)     .09     0.22 (0.18)     .22     0.19 (0.19)     .33
    a      Level * age                   -0.07 (0.16)     .66    -0.15 (0.20)     .44    -0.15 (0.21)     .48
    a      Level * education                              ---    -0.56 (0.36)     .12    -0.49 (0.38)     .19
    a      Level * height                                 ---     0.00 (0.02)     .94     0.01 (0.03)     .75
    a      Level * smoking                                ---                     ---    -0.23 (0.37)     .52
    a      Level * cardio                                 ---                     ---     0.65 (0.42)     .12
    a      Level * diabetes                               ---                     ---                     ---
    a      Slope * age                    0.00 (0.02)     .99     0.00 (0.02)     .86     0.00 (0.03)     .99
    a      Slope * education                              ---     0.06 (0.05)     .29     0.05 (0.05)     .36
    a      Slope * height                                 ---     0.00 (0.00)     .92     0.00 (0.00)     .90
    a      Slope * smoking                                ---                     ---     0.05 (0.05)     .32
    a      Slope * cardio                                 ---                     ---    -0.04 (0.06)     .45
    a      Slope * diabetes                               ---                     ---                     ---
    b      Level                         39.79 (6.71)    <.01    37.10 (6.44)    <.01    38.15 (6.74)    <.01
    b      Slope                         -0.03 (0.39)     .95    -0.02 (0.37)     .96     0.03 (0.38)     .93
    b      Level * age                   -0.79 (0.96)     .41    -0.73 (0.93)     .43    -0.62 (0.95)     .51
    b      Level * education                              ---     8.68 (1.55)    <.01     8.92 (1.57)    <.01
    b      Level * height                                 ---     0.07 (0.14)     .60     0.06 (0.14)     .65
    b      Level * smoking                                ---                     ---    -0.15 (1.54)     .92
    b      Level * cardio                                 ---                     ---    -0.79 (1.88)     .67
    b      Level * diabetes                               ---                     ---                     ---
    b      Slope * age                    0.06 (0.05)     .29     0.05 (0.05)     .29     0.06 (0.05)     .28
    b      Slope * education                              ---    -0.10 (0.09)     .32    -0.10 (0.10)     .33
    b      Slope * height                                 ---     0.00 (0.01)     .58     0.00 (0.01)     .56
    b      Slope * smoking                                ---                     ---    -0.06 (0.10)     .51
    b      Slope * cardio                                 ---                     ---    -0.02 (0.11)     .82
    b      Slope * diabetes                               ---                     ---                     ---
    a      Var (Level)                    1.49 (0.37)    <.01     1.31 (0.56)     .02     1.32 (0.57)     .02
    a      Var (Slope)                    0.01 (0.01)     .23     0.00 (0.01)     .85     0.00 (0.01)     .85
    a      Var (Residual)                 0.12 (0.40)     .76     1.78 (0.25)    <.01     1.77 (0.27)    <.01
    a      Covar (Level, Slope)          -0.07 (0.05)     .17    -0.03 (0.06)     .66    -0.03 (0.07)     .65
    b      Var (Level)                 111.86 (13.30)    <.01   95.12 (11.07)    <.01   92.94 (10.94)    <.01
    b      Var (Slope)                    0.06 (0.04)     .14     0.06 (0.04)     .17     0.06 (0.05)     .20
    b      Var (Residual)                14.27 (1.11)    <.01    14.21 (1.10)    <.01    14.25 (1.13)    <.01
    b      Covar (Level, Slope)          -0.57 (0.62)     .36    -0.48 (0.62)     .44    -0.47 (0.65)     .47
   ab      Covar (Levels)                -2.53 (1.49)     .09    -1.60 (1.84)     .38    -1.45 (2.00)     .47
   ab      Covar (Slopes)                -0.00 (0.01)     .89    -0.00 (0.02)     .94    -0.00 (0.02)     .96
   ab      Covar (Residuals)             -0.18 (0.60)     .76     0.08 (0.55)     .88     0.10 (0.58)     .86
    \      Correlation of Levels                       -0.197                  -0.143                  -0.131
    \      Correlation of Slopes                       -0.072                  -0.091                  -0.091
    \      Correlation of Residuals                    -0.137                   0.016                   0.021
    \      N                                              228                     226                     225
    \      occasions                                        3                       3                       3
    \      parameters                                      23                      29                      37
    \      LL                                          -2,730                  -2,712                  -2,693
    \      AIC                                          5,505                   5,481                   5,459
    \      BIC                                          5,584                   5,581                   5,586

##  waisgeneral 

 Gender = _female_;  Process (a) = *tug*; Process (b) = _waisgeneral_


 process   label                                          a                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------
    a      Level                        5.53 (1.18)    <.01    4.89 (1.46)    <.01    4.79 (1.54)    <.01
    a      Slope                        0.21 (0.12)     .08    0.24 (0.17)     .17    0.21 (0.19)     .27
    a      Level * age                 -0.07 (0.16)     .68   -0.16 (0.21)     .44   -0.16 (0.21)     .46
    a      Level * education                            ---   -0.55 (0.36)     .12   -0.48 (0.36)     .19
    a      Level * height                               ---    0.00 (0.02)     .95    0.01 (0.03)     .76
    a      Level * smoking                              ---                    ---   -0.23 (0.38)     .55
    a      Level * cardio                               ---                    ---    0.67 (0.40)     .10
    a      Level * diabetes                             ---                    ---                    ---
    a      Slope * age                  0.00 (0.02)     .88    0.01 (0.02)     .75    0.00 (0.03)     .88
    a      Slope * education                            ---    0.06 (0.05)     .29    0.05 (0.05)     .35
    a      Slope * height                               ---    0.00 (0.00)     .95   -0.00 (0.00)     .86
    a      Slope * smoking                              ---                    ---    0.05 (0.05)     .33
    a      Slope * cardio                               ---                    ---   -0.04 (0.05)     .42
    a      Slope * diabetes                             ---                    ---                    ---
    b      Level                       13.00 (2.39)    <.01   11.59 (2.13)    <.01   12.00 (2.20)    <.01
    b      Slope                        0.38 (0.17)     .02    0.35 (0.16)     .02    0.35 (0.16)     .03
    b      Level * age                 -0.13 (0.33)     .69   -0.12 (0.30)     .69   -0.08 (0.30)     .80
    b      Level * education                            ---    4.17 (0.67)    <.01    4.27 (0.70)    <.01
    b      Level * height                               ---    0.05 (0.04)     .31    0.05 (0.05)     .31
    b      Level * smoking                              ---                    ---   -0.29 (0.60)     .64
    b      Level * cardio                               ---                    ---   -0.07 (0.67)     .92
    b      Level * diabetes                             ---                    ---                    ---
    b      Slope * age                  0.05 (0.02)     .04    0.04 (0.02)     .05    0.04 (0.02)     .07
    b      Slope * education                            ---   -0.02 (0.05)     .72   -0.02 (0.05)     .69
    b      Slope * height                               ---    0.00 (0.00)     .53    0.00 (0.00)     .57
    b      Slope * smoking                              ---                    ---    0.01 (0.05)     .82
    b      Slope * cardio                               ---                    ---   -0.04 (0.05)     .43
    b      Slope * diabetes                             ---                    ---                    ---
    a      Var (Level)                  1.52 (0.43)    <.01    1.35 (0.57)     .02    1.37 (0.59)     .02
    a      Var (Slope)                  0.01 (0.01)     .29    0.00 (0.01)     .85    0.00 (0.01)     .83
    a      Var (Residual)               0.09 (0.46)     .85    1.76 (0.28)    <.01    1.74 (0.30)    <.01
    a      Covar (Level, Slope)        -0.07 (0.06)     .19   -0.03 (0.06)     .64   -0.03 (0.07)     .62
    b      Var (Level)                 18.53 (2.48)    <.01   14.20 (1.84)    <.01   14.05 (1.87)    <.01
    b      Var (Slope)                  0.01 (0.01)     .07    0.01 (0.01)     .17    0.01 (0.01)     .19
    b      Var (Residual)               2.94 (0.35)    <.01    2.98 (0.35)    <.01    2.99 (0.36)    <.01
    b      Covar (Level, Slope)        -0.12 (0.13)     .36   -0.10 (0.11)     .34   -0.10 (0.11)     .36
   ab      Covar (Levels)              -0.99 (0.68)     .15    0.12 (0.76)     .88    0.16 (0.82)     .85
   ab      Covar (Slopes)              -0.01 (0.00)     .20    0.00 (0.00)     .96    0.00 (0.01)     .95
   ab      Covar (Residuals)            0.05 (0.22)     .81   -0.05 (0.23)     .84   -0.07 (0.24)     .76
    \      Correlation of Levels                      -0.19                  0.027                  0.036
    \      Correlation of Slopes                      -0.47                  0.000                  0.000
    \      Correlation of Residuals                    0.10                 -0.020                 -0.031
    \      N                                            228                    226                    225
    \      occasions                                      3                      3                      3
    \      parameters                                    23                     29                     37
    \      LL                                        -2,248                 -2,221                 -2,206
    \      AIC                                        4,541                  4,501                  4,486
    \      BIC                                        4,620                  4,600                  4,612

## Summary 

 Study = _ILSE_; Gender = _female_; Process (a) = _tug_

 Computed correlations:

 

label                      process_b       a     aeh   aehplus
----------------------  ------------  ------  ------  --------
Correlation of Levels          block   -0.17   -0.03     -0.05
Correlation of Levels        fluency   -0.14    0.01      0.01
Correlation of Levels        piccomp   -0.12    0.08      0.08
Correlation of Levels     spatial_ab   -0.18    0.00      0.03
Correlation of Levels         symbol   -0.20   -0.14     -0.13
Correlation of Levels    waisgeneral   -0.19    0.03      0.04



label                      process_b       a     aeh   aehplus
----------------------  ------------  ------  ------  --------
Correlation of Slopes          block   -0.40   -0.22     -0.15
Correlation of Slopes        fluency    0.27    0.59      0.49
Correlation of Slopes        piccomp   -0.49    0.24      0.17
Correlation of Slopes     spatial_ab   -0.28   -0.52     -0.30
Correlation of Slopes         symbol   -0.07   -0.09     -0.09
Correlation of Slopes    waisgeneral   -0.47    0.00      0.00



label                         process_b       a     aeh   aehplus
-------------------------  ------------  ------  ------  --------
Correlation of Residuals          block    0.36    0.05      0.05
Correlation of Residuals        fluency   -0.49   -0.11     -0.10
Correlation of Residuals        piccomp    0.00   -0.04     -0.03
Correlation of Residuals     spatial_ab   -0.20   -0.08     -0.08
Correlation of Residuals         symbol   -0.14    0.02      0.02
Correlation of Residuals    waisgeneral    0.10   -0.02     -0.03


P-values for corresponding covariances: 

 

label                     process_b      a    aeh   aehplus
---------------------  ------------  -----  -----  --------
Covariance of Levels          block   0.12   0.83      0.78
Covariance of Levels        fluency   0.30   0.96      0.94
Covariance of Levels        piccomp   0.45   0.74      0.75
Covariance of Levels     spatial_ab   0.18   0.99      0.88
Covariance of Levels         symbol   0.09   0.38      0.47
Covariance of Levels    waisgeneral   0.15   0.88      0.85



label                     process_b      a    aeh   aehplus
---------------------  ------------  -----  -----  --------
Covariance of Slopes          block   0.34   0.84      0.92
Covariance of Slopes        fluency   0.76   0.79      0.80
Covariance of Slopes        piccomp   0.35   0.91      0.90
Covariance of Slopes     spatial_ab   0.63   0.89      0.93
Covariance of Slopes         symbol   0.89   0.94      0.96
Covariance of Slopes    waisgeneral   0.20   0.96      0.95



label                         process_b      a    aeh   aehplus
-------------------------  ------------  -----  -----  --------
Covariance of  Residuals          block   0.39   0.56      0.60
Covariance of  Residuals        fluency   0.19   0.28      0.34
Covariance of  Residuals        piccomp   1.00   0.67      0.74
Covariance of  Residuals     spatial_ab   0.66   0.49      0.48
Covariance of  Residuals         symbol   0.76   0.88      0.86
Covariance of  Residuals    waisgeneral   0.81   0.84      0.76


# male 

 Gender = _male_; Model type: _aehplus_;  Process (a) = _tug_; Process (b): *block*, *fluency*, *piccomp*, *spatial_ab*, *symbol*, *waisgeneral*


 process   label                                      block                piccomp             spatial_ab                  symbol            waisgeneral     mean(sd)   
---------  -------------------------  ---------------------  ---------------------  ---------------------  ----------------------  ---------------------  --------------
    a      Level                        4.71 (1.10)    <.01    4.87 (1.13)    <.01    4.66 (1.15)    <.01     4.92 (1.10)    <.01    4.88 (1.13)    <.01    4.81(0.11)  
    a      Slope                        0.28 (0.18)     .11    0.27 (0.17)     .13    0.30 (0.18)     .09     0.27 (0.18)     .13    0.26 (0.19)     .16    0.28(0.02)  
    a      Level * age                 -0.05 (0.16)     .77   -0.03 (0.15)     .86   -0.05 (0.16)     .74    -0.03 (0.15)     .86   -0.03 (0.16)     .85   -0.04(0.01)  
    a      Level * education           -0.16 (0.26)     .54   -0.16 (0.26)     .54   -0.18 (0.27)     .51    -0.19 (0.27)     .49   -0.21 (0.26)     .42   -0.18(0.02)  
    a      Level * height              -0.02 (0.02)     .27   -0.02 (0.02)     .30   -0.02 (0.02)     .29    -0.02 (0.02)     .27   -0.02 (0.02)     .35   -0.02(0.00)  
    a      Level * smoking              0.05 (0.30)     .87    0.04 (0.31)     .88    0.06 (0.32)     .85     0.02 (0.32)     .96    0.04 (0.32)     .90    0.04(0.02)  
    a      Level * cardio               0.46 (0.28)     .11    0.46 (0.27)     .09    0.48 (0.27)     .08     0.43 (0.27)     .12    0.47 (0.27)     .08    0.46(0.02)  
    a      Level * diabetes                             ---                    ---                    ---                     ---                    ---       ---      
    a      Slope * age                  0.01 (0.02)     .74    0.00 (0.02)     .82    0.01 (0.02)     .66     0.01 (0.02)     .78    0.01 (0.02)     .82    0.01(0.00)  
    a      Slope * education            0.01 (0.04)     .75    0.01 (0.04)     .81    0.01 (0.04)     .79     0.01 (0.04)     .80    0.02 (0.04)     .69    0.01(0.00)  
    a      Slope * height               0.00 (0.00)     .78    0.00 (0.00)     .84    0.00 (0.00)     .81     0.00 (0.00)     .70    0.00 (0.00)     .92    0.00(0.00)  
    a      Slope * smoking             -0.02 (0.04)     .66   -0.02 (0.04)     .58   -0.03 (0.04)     .54    -0.01 (0.05)     .74   -0.02 (0.05)     .72   -0.02(0.00)  
    a      Slope * cardio               0.02 (0.05)     .69    0.02 (0.05)     .66    0.01 (0.05)     .76     0.02 (0.05)     .61    0.01 (0.05)     .76    0.02(0.00)  
    a      Slope * diabetes                             ---                    ---                    ---                     ---                    ---       ---      
    b      Level                       22.73 (3.92)    <.01   11.49 (1.82)    <.01   21.55 (3.23)    <.01    37.48 (5.52)    <.01   14.29 (2.07)    <.01       ---      
    b      Slope                       -0.75 (0.45)     .10    0.05 (0.24)     .83   -0.74 (0.33)     .03     0.04 (0.50)     .94    0.04 (0.19)     .84       ---      
    b      Level * age                 -0.43 (0.54)     .43   -0.01 (0.25)     .96    0.04 (0.46)     .93    -0.06 (0.74)     .94   -0.24 (0.30)     .41       ---      
    b      Level * education            6.06 (1.15)    <.01    1.91 (0.62)    <.01    3.47 (0.93)    <.01     8.78 (1.49)    <.01    3.46 (0.70)    <.01       ---      
    b      Level * height               0.15 (0.08)     .06    0.04 (0.03)     .27    0.08 (0.07)     .22     0.19 (0.10)     .06    0.02 (0.04)     .66       ---      
    b      Level * smoking             -1.28 (1.16)     .27    0.43 (0.48)     .37   -0.18 (0.92)     .84     0.12 (1.58)     .94   -0.33 (0.57)     .57       ---      
    b      Level * cardio              -0.54 (1.11)     .62   -0.18 (0.48)     .71   -0.39 (0.88)     .66    -0.42 (1.49)     .78    0.73 (0.56)     .19       ---      
    b      Level * diabetes                             ---                    ---                    ---                     ---                    ---       ---      
    b      Slope * age                 -0.06 (0.06)     .29   -0.00 (0.03)     .91   -0.06 (0.05)     .21     0.06 (0.07)     .38    0.01 (0.03)     .79       ---      
    b      Slope * education           -0.20 (0.11)     .07   -0.07 (0.06)     .24   -0.06 (0.10)     .56    -0.06 (0.12)     .63   -0.06 (0.05)     .23       ---      
    b      Slope * height               0.00 (0.01)     .96    0.00 (0.00)     .88    0.01 (0.01)     .33    -0.01 (0.01)     .56    0.00 (0.00)     .32       ---      
    b      Slope * smoking              0.04 (0.12)     .76   -0.07 (0.06)     .26    0.11 (0.09)     .22    -0.03 (0.13)     .83    0.03 (0.04)     .52       ---      
    b      Slope * cardio              -0.17 (0.11)     .12   -0.05 (0.06)     .41    0.03 (0.10)     .79    -0.05 (0.13)     .70   -0.06 (0.05)     .21       ---      
    b      Slope * diabetes                             ---                    ---                    ---                     ---                    ---       ---      
    a      Var (Level)                  0.40 (0.49)     .42    0.26 (0.45)     .57    0.30 (0.47)     .52     0.27 (0.44)     .54    0.25 (0.43)     .56    0.29(0.06)  
    a      Var (Slope)                  0.00 (0.01)     .61    0.00 (0.01)     .73    0.00 (0.01)     .69     0.00 (0.01)     .77    0.00 (0.01)     .77    0.00(0.00)  
    a      Var (Residual)               1.82 (0.28)    <.01    1.90 (0.26)    <.01    1.88 (0.27)    <.01     1.86 (0.24)    <.01    1.88 (0.24)    <.01    1.87(0.03)  
    a      Covar (Level, Slope)        -0.02 (0.06)     .75   -0.00 (0.05)     .92   -0.01 (0.06)     .85    -0.00 (0.05)     .98   -0.00 (0.05)     .99   -0.01(0.01)  
    b      Var (Level)                 40.95 (6.15)    <.01    7.50 (1.15)    <.01   27.59 (3.69)    <.01   86.88 (10.78)    <.01   11.55 (1.51)    <.01       ---      
    b      Var (Slope)                  0.06 (0.05)     .26    0.02 (0.01)     .04    0.10 (0.02)    <.01     0.18 (0.06)    <.01    0.01 (0.01)     .38       ---      
    b      Var (Residual)              17.64 (1.74)    <.01    3.85 (0.36)    <.01    8.03 (0.65)    <.01    15.43 (1.43)    <.01    2.81 (0.22)    <.01       ---      
    b      Covar (Level, Slope)         0.25 (0.43)     .56   -0.03 (0.10)     .78   -0.17 (0.28)     .54    -0.26 (0.64)     .68    0.00 (0.08)     .99       ---      
   ab      Covar (Levels)              -1.75 (1.14)     .12   -0.32 (0.47)     .50   -1.18 (0.78)     .13    -2.28 (1.38)     .10   -0.41 (0.47)     .38       ---      
   ab      Covar (Slopes)               0.00 (0.02)     .90    0.00 (0.01)     .98   -0.00 (0.01)     .85    -0.01 (0.02)     .68   -0.00 (0.01)     .80       ---      
   ab      Covar (Residuals)            0.25 (0.53)     .64   -0.07 (0.28)     .79    0.18 (0.39)     .64    -0.49 (0.46)     .28   -0.20 (0.19)     .29       ---      
    \      Correlation of Levels                     -0.434                 -0.231                 -0.408                  -0.473                 -0.241   -0.36(0.11)  
    \      Correlation of Slopes                      0.132                  0.000                 -0.118                  -0.419                 -0.267   -0.13(0.22)  
    \      Correlation of Residuals                   0.044                 -0.027                  0.047                  -0.091                 -0.088   -0.02(0.07)  
    \      N                                            252                    252                    252                     252                    252   252.00(0.00) 
    \      occasions                                      3                      3                      3                       3                      3    3.00(0.00)  
    \      parameters                                    37                     37                     37                      37                     37   37.00(0.00)  
    \      LL                                        -2,882                 -2,379                 -2,696                  -2,947                 -2,353   -2,651(276)  
    \      AIC                                        5,838                  4,833                  5,466                   5,968                  4,781    5,377(553)  
    \      BIC                                        5,968                  4,963                  5,596                   6,099                  4,911    5,508(553)  

##  block 

 Gender = _male_;  Process (a) = *tug*; Process (b) = _block_


 process   label                                          a                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------
    a      Level                        5.26 (0.96)    <.01    5.02 (1.04)    <.01    4.71 (1.10)    <.01
    a      Slope                        0.22 (0.15)     .14    0.26 (0.17)     .14    0.28 (0.18)     .11
    a      Level * age                  0.01 (0.14)     .94   -0.03 (0.15)     .85   -0.05 (0.16)     .77
    a      Level * education                            ---   -0.18 (0.26)     .50   -0.16 (0.26)     .54
    a      Level * height                               ---   -0.03 (0.02)     .20   -0.02 (0.02)     .27
    a      Level * smoking                              ---                    ---    0.05 (0.30)     .87
    a      Level * cardio                               ---                    ---    0.46 (0.28)     .11
    a      Level * diabetes                             ---                    ---                    ---
    a      Slope * age                  0.00 (0.02)     .93    0.01 (0.02)     .81    0.01 (0.02)     .74
    a      Slope * education                            ---    0.02 (0.04)     .67    0.01 (0.04)     .75
    a      Slope * height                               ---    0.00 (0.00)     .78    0.00 (0.00)     .78
    a      Slope * smoking                              ---                    ---   -0.02 (0.04)     .66
    a      Slope * cardio                               ---                    ---    0.02 (0.05)     .69
    a      Slope * diabetes                             ---                    ---                    ---
    b      Level                       22.28 (3.89)    <.01   21.41 (3.70)    <.01   22.73 (3.92)    <.01
    b      Slope                       -0.77 (0.38)     .04   -0.74 (0.42)     .08   -0.75 (0.45)     .10
    b      Level * age                 -0.72 (0.56)     .20   -0.46 (0.53)     .39   -0.43 (0.54)     .43
    b      Level * education                            ---    6.02 (1.12)    <.01    6.06 (1.15)    <.01
    b      Level * height                               ---    0.16 (0.07)     .03    0.15 (0.08)     .06
    b      Level * smoking                              ---                    ---   -1.28 (1.16)     .27
    b      Level * cardio                               ---                    ---   -0.54 (1.11)     .62
    b      Level * diabetes                             ---                    ---                    ---
    b      Slope * age                 -0.05 (0.05)     .31   -0.06 (0.06)     .30   -0.06 (0.06)     .29
    b      Slope * education                            ---   -0.20 (0.11)     .07   -0.20 (0.11)     .07
    b      Slope * height                               ---    0.00 (0.01)     .98    0.00 (0.01)     .96
    b      Slope * smoking                              ---                    ---    0.04 (0.12)     .76
    b      Slope * cardio                               ---                    ---   -0.17 (0.11)     .12
    b      Slope * diabetes                             ---                    ---                    ---
    a      Var (Level)                  0.70 (0.41)     .09    0.43 (0.47)     .36    0.40 (0.49)     .42
    a      Var (Slope)                  0.00 (0.01)     .75    0.00 (0.01)     .58    0.00 (0.01)     .61
    a      Var (Residual)               1.02 (0.32)    <.01    1.81 (0.27)    <.01    1.82 (0.28)    <.01
    a      Covar (Level, Slope)        -0.04 (0.06)     .47   -0.01 (0.05)     .78   -0.02 (0.06)     .75
    b      Var (Level)                 52.31 (7.40)    <.01   41.16 (6.05)    <.01   40.95 (6.15)    <.01
    b      Var (Slope)                  0.06 (0.05)     .25    0.06 (0.05)     .22    0.06 (0.05)     .26
    b      Var (Residual)              18.11 (1.75)    <.01   17.68 (1.73)    <.01   17.64 (1.74)    <.01
    b      Covar (Level, Slope)        -0.00 (0.44)     .99    0.24 (0.42)     .57    0.25 (0.43)     .56
   ab      Covar (Levels)              -2.18 (1.08)     .04   -1.87 (1.14)     .10   -1.75 (1.14)     .12
   ab      Covar (Slopes)               0.00 (0.01)     .69    0.00 (0.01)     .98    0.00 (0.02)     .90
   ab      Covar (Residuals)            0.05 (0.47)     .91    0.22 (0.52)     .67    0.25 (0.53)     .64
    \      Correlation of Levels                     -0.360                 -0.445                 -0.434
    \      Correlation of Slopes                      0.337                  0.000                  0.132
    \      Correlation of Residuals                   0.012                  0.039                  0.044
    \      N                                            253                    253                    252
    \      occasions                                      3                      3                      3
    \      parameters                                    23                     29                     37
    \      LL                                        -2,919                 -2,898                 -2,882
    \      AIC                                        5,885                  5,853                  5,838
    \      BIC                                        5,966                  5,956                  5,968

##  fluency 

 Gender = _male_;  Process (a) = *tug*; Process (b) = _fluency_


 process   label                                          a                    aeh
---------  -------------------------  ---------------------  ---------------------
    a      Level                        5.43 (0.95)    <.01    5.15 (1.10)    <.01
    a      Slope                        0.21 (0.16)     .19    0.25 (0.18)     .17
    a      Level * age                  0.03 (0.14)     .85   -0.02 (0.16)     .90
    a      Level * education                            ---   -0.19 (0.26)     .45
    a      Level * height                               ---   -0.03 (0.02)     .19
    a      Level * smoking                              ---                    ---
    a      Level * cardio                               ---                    ---
    a      Level * diabetes                             ---                    ---
    a      Slope * age                  0.00 (0.02)     .97    0.00 (0.02)     .83
    a      Slope * education                            ---    0.01 (0.04)     .74
    a      Slope * height                               ---    0.00 (0.00)     .77
    a      Slope * smoking                              ---                    ---
    a      Slope * cardio                               ---                    ---
    a      Slope * diabetes                             ---                    ---
    b      Level                       24.74 (4.76)    <.01   23.91 (4.64)    <.01
    b      Slope                       -0.08 (0.41)     .85   -0.07 (0.43)     .88
    b      Level * age                 -0.52 (0.68)     .45   -0.27 (0.65)     .67
    b      Level * education                            ---    5.46 (1.23)    <.01
    b      Level * height                               ---    0.15 (0.09)     .10
    b      Level * smoking                              ---                    ---
    b      Level * cardio                               ---                    ---
    b      Level * diabetes                             ---                    ---
    b      Slope * age                  0.01 (0.06)     .82    0.01 (0.06)     .84
    b      Slope * education                            ---    0.01 (0.11)     .94
    b      Slope * height                               ---   -0.01 (0.01)     .36
    b      Slope * smoking                              ---                    ---
    b      Slope * cardio                               ---                    ---
    b      Slope * diabetes                             ---                    ---
    a      Var (Level)                  0.65 (0.40)     .11    0.25 (0.44)     .58
    a      Var (Slope)                  0.00 (0.01)     .72    0.00 (0.01)     .72
    a      Var (Residual)               0.98 (0.31)    <.01    1.93 (0.24)    <.01
    a      Covar (Level, Slope)        -0.04 (0.05)     .44   -0.00 (0.05)     .97
    b      Var (Level)                 55.70 (8.53)    <.01   46.32 (7.90)    <.01
    b      Var (Slope)                  0.03 (0.07)     .70    0.03 (0.07)     .67
    b      Var (Residual)              23.16 (2.46)    <.01   22.93 (2.42)    <.01
    b      Covar (Level, Slope)         0.58 (0.52)     .26    0.64 (0.52)     .22
   ab      Covar (Levels)              -1.25 (1.06)     .24   -0.79 (1.15)     .49
   ab      Covar (Slopes)               0.00 (0.02)     .93   -0.00 (0.02)     .84
   ab      Covar (Residuals)           -0.39 (0.62)     .53   -0.37 (0.58)     .52
    \      Correlation of Levels                     -0.208                 -0.235
    \      Correlation of Slopes                      0.192                 -0.311
    \      Correlation of Residuals                  -0.082                 -0.056
    \      N                                            253                    253
    \      occasions                                      3                      3
    \      parameters                                    23                     29
    \      LL                                        -2,967                 -2,951
    \      AIC                                        5,980                  5,960
    \      BIC                                        6,062                  6,063

##  piccomp 

 Gender = _male_;  Process (a) = *tug*; Process (b) = _piccomp_


 process   label                                          a                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------
    a      Level                        5.50 (0.95)    <.01    5.18 (1.06)    <.01    4.87 (1.13)    <.01
    a      Slope                        0.20 (0.15)     .19    0.24 (0.16)     .15    0.27 (0.17)     .13
    a      Level * age                  0.04 (0.14)     .78   -0.01 (0.15)     .95   -0.03 (0.15)     .86
    a      Level * education                            ---   -0.18 (0.26)     .48   -0.16 (0.26)     .54
    a      Level * height                               ---   -0.03 (0.02)     .22   -0.02 (0.02)     .30
    a      Level * smoking                              ---                    ---    0.04 (0.31)     .88
    a      Level * cardio                               ---                    ---    0.46 (0.27)     .09
    a      Level * diabetes                             ---                    ---                    ---
    a      Slope * age                 -0.00 (0.02)     .95    0.00 (0.02)     .89    0.00 (0.02)     .82
    a      Slope * education                            ---    0.01 (0.04)     .73    0.01 (0.04)     .81
    a      Slope * height                               ---    0.00 (0.00)     .85    0.00 (0.00)     .84
    a      Slope * smoking                              ---                    ---   -0.02 (0.04)     .58
    a      Slope * cardio                               ---                    ---    0.02 (0.05)     .66
    a      Slope * diabetes                             ---                    ---                    ---
    b      Level                       11.88 (1.77)    <.01   11.59 (1.69)    <.01   11.49 (1.82)    <.01
    b      Slope                       -0.02 (0.22)     .91   -0.01 (0.22)     .96    0.05 (0.24)     .83
    b      Level * age                 -0.12 (0.25)     .64   -0.04 (0.24)     .88   -0.01 (0.25)     .96
    b      Level * education                            ---    1.91 (0.61)    <.01    1.91 (0.62)    <.01
    b      Level * height                               ---    0.04 (0.03)     .26    0.04 (0.03)     .27
    b      Level * smoking                              ---                    ---    0.43 (0.48)     .37
    b      Level * cardio                               ---                    ---   -0.18 (0.48)     .71
    b      Level * diabetes                             ---                    ---                    ---
    b      Slope * age                 -0.00 (0.03)     .97   -0.00 (0.03)     .92   -0.00 (0.03)     .91
    b      Slope * education                            ---   -0.07 (0.06)     .24   -0.07 (0.06)     .24
    b      Slope * height                               ---    0.00 (0.00)     .84    0.00 (0.00)     .88
    b      Slope * smoking                              ---                    ---   -0.07 (0.06)     .26
    b      Slope * cardio                               ---                    ---   -0.05 (0.06)     .41
    b      Slope * diabetes                             ---                    ---                    ---
    a      Var (Level)                  0.60 (0.39)     .12    0.29 (0.44)     .51    0.26 (0.45)     .57
    a      Var (Slope)                  0.00 (0.01)     .79    0.00 (0.01)     .72    0.00 (0.01)     .73
    a      Var (Residual)               1.00 (0.30)    <.01    1.90 (0.25)    <.01    1.90 (0.26)    <.01
    a      Covar (Level, Slope)        -0.03 (0.05)     .57   -0.00 (0.05)     .95   -0.00 (0.05)     .92
    b      Var (Level)                  8.58 (1.21)    <.01    7.53 (1.10)    <.01    7.50 (1.15)    <.01
    b      Var (Slope)                  0.02 (0.01)     .02    0.02 (0.01)     .02    0.02 (0.01)     .04
    b      Var (Residual)               3.85 (0.35)    <.01    3.84 (0.35)    <.01    3.85 (0.36)    <.01
    b      Covar (Level, Slope)        -0.06 (0.09)     .51   -0.03 (0.10)     .74   -0.03 (0.10)     .78
   ab      Covar (Levels)              -0.52 (0.42)     .21   -0.35 (0.48)     .47   -0.32 (0.47)     .50
   ab      Covar (Slopes)               0.00 (0.01)     .91   -0.00 (0.01)     .92    0.00 (0.01)     .98
   ab      Covar (Residuals)           -0.09 (0.25)     .72   -0.09 (0.27)     .74   -0.07 (0.28)     .79
    \      Correlation of Levels                     -0.227                 -0.236                 -0.231
    \      Correlation of Slopes                      0.115                 -0.118                  0.000
    \      Correlation of Residuals                  -0.046                 -0.033                 -0.027
    \      N                                            253                    253                    252
    \      occasions                                      3                      3                      3
    \      parameters                                    23                     29                     37
    \      LL                                        -2,404                 -2,394                 -2,379
    \      AIC                                        4,853                  4,846                  4,833
    \      BIC                                        4,935                  4,948                  4,963

##  spatial_ab 

 Gender = _male_;  Process (a) = *tug*; Process (b) = _spatial_ab_


 process   label                                          a                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------
    a      Level                        5.34 (0.97)    <.01    5.04 (1.06)    <.01    4.66 (1.15)    <.01
    a      Slope                        0.23 (0.16)     .15    0.27 (0.17)     .12    0.30 (0.18)     .09
    a      Level * age                  0.02 (0.14)     .90   -0.03 (0.15)     .84   -0.05 (0.16)     .74
    a      Level * education                            ---   -0.20 (0.26)     .45   -0.18 (0.27)     .51
    a      Level * height                               ---   -0.03 (0.02)     .20   -0.02 (0.02)     .29
    a      Level * smoking                              ---                    ---    0.06 (0.32)     .85
    a      Level * cardio                               ---                    ---    0.48 (0.27)     .08
    a      Level * diabetes                             ---                    ---                    ---
    a      Slope * age                  0.00 (0.02)     .90    0.01 (0.02)     .74    0.01 (0.02)     .66
    a      Slope * education                            ---    0.02 (0.04)     .70    0.01 (0.04)     .79
    a      Slope * height                               ---    0.00 (0.00)     .79    0.00 (0.00)     .81
    a      Slope * smoking                              ---                    ---   -0.03 (0.04)     .54
    a      Slope * cardio                               ---                    ---    0.01 (0.05)     .76
    a      Slope * diabetes                             ---                    ---                    ---
    b      Level                       21.77 (3.03)    <.01   21.23 (3.05)    <.01   21.55 (3.23)    <.01
    b      Slope                       -0.68 (0.31)     .03   -0.65 (0.32)     .04   -0.74 (0.33)     .03
    b      Level * age                 -0.12 (0.43)     .79    0.03 (0.43)     .94    0.04 (0.46)     .93
    b      Level * education                            ---    3.47 (0.92)    <.01    3.47 (0.93)    <.01
    b      Level * height                               ---    0.08 (0.07)     .20    0.08 (0.07)     .22
    b      Level * smoking                              ---                    ---   -0.18 (0.92)     .84
    b      Level * cardio                               ---                    ---   -0.39 (0.88)     .66
    b      Level * diabetes                             ---                    ---                    ---
    b      Slope * age                 -0.06 (0.04)     .15   -0.06 (0.05)     .19   -0.06 (0.05)     .21
    b      Slope * education                            ---   -0.06 (0.10)     .56   -0.06 (0.10)     .56
    b      Slope * height                               ---    0.01 (0.01)     .31    0.01 (0.01)     .33
    b      Slope * smoking                              ---                    ---    0.11 (0.09)     .22
    b      Slope * cardio                               ---                    ---    0.03 (0.10)     .79
    b      Slope * diabetes                             ---                    ---                    ---
    a      Var (Level)                  0.65 (0.39)     .09    0.33 (0.45)     .46    0.30 (0.47)     .52
    a      Var (Slope)                  0.00 (0.01)     .71    0.00 (0.01)     .64    0.00 (0.01)     .69
    a      Var (Residual)               1.03 (0.30)    <.01    1.87 (0.26)    <.01    1.88 (0.27)    <.01
    a      Covar (Level, Slope)        -0.04 (0.05)     .48   -0.01 (0.05)     .87   -0.01 (0.06)     .85
    b      Var (Level)                 31.21 (4.24)    <.01   27.47 (3.64)    <.01   27.59 (3.69)    <.01
    b      Var (Slope)                  0.10 (0.02)    <.01    0.10 (0.02)    <.01    0.10 (0.02)    <.01
    b      Var (Residual)               8.03 (0.63)    <.01    8.07 (0.64)    <.01    8.03 (0.65)    <.01
    b      Covar (Level, Slope)        -0.15 (0.28)     .58   -0.18 (0.27)     .51   -0.17 (0.28)     .54
   ab      Covar (Levels)              -1.55 (0.74)     .04   -1.29 (0.79)     .10   -1.18 (0.78)     .13
   ab      Covar (Slopes)              -0.00 (0.01)     .88   -0.00 (0.01)     .72   -0.00 (0.01)     .85
   ab      Covar (Residuals)           -0.00 (0.38)     .99    0.22 (0.39)     .57    0.18 (0.39)     .64
    \      Correlation of Levels                    -0.3450                 -0.426                 -0.408
    \      Correlation of Slopes                    -0.1000                 -0.204                 -0.118
    \      Correlation of Residuals                 -0.0017                  0.056                  0.047
    \      N                                            253                    253                    252
    \      occasions                                      3                      3                      3
    \      parameters                                    23                     29                     37
    \      LL                                        -2,724                 -2,711                 -2,696
    \      AIC                                        5,493                  5,479                  5,466
    \      BIC                                        5,574                  5,582                  5,596

##  symbol 

 Gender = _male_;  Process (a) = *tug*; Process (b) = _symbol_


 process   label                                            a                     aeh                 aehplus
---------  -------------------------  -----------------------  ----------------------  ----------------------
    a      Level                          5.43 (0.92)    <.01     5.18 (1.04)    <.01     4.92 (1.10)    <.01
    a      Slope                          0.22 (0.15)     .14     0.25 (0.17)     .14     0.27 (0.18)     .13
    a      Level * age                    0.03 (0.13)     .83    -0.01 (0.15)     .94    -0.03 (0.15)     .86
    a      Level * education                              ---    -0.21 (0.27)     .43    -0.19 (0.27)     .49
    a      Level * height                                 ---    -0.03 (0.02)     .21    -0.02 (0.02)     .27
    a      Level * smoking                                ---                     ---     0.02 (0.32)     .96
    a      Level * cardio                                 ---                     ---     0.43 (0.27)     .12
    a      Level * diabetes                               ---                     ---                     ---
    a      Slope * age                    0.00 (0.02)     .94     0.00 (0.02)     .83     0.01 (0.02)     .78
    a      Slope * education                              ---     0.02 (0.04)     .69     0.01 (0.04)     .80
    a      Slope * height                                 ---     0.00 (0.00)     .72     0.00 (0.00)     .70
    a      Slope * smoking                                ---                     ---    -0.01 (0.05)     .74
    a      Slope * cardio                                 ---                     ---     0.02 (0.05)     .61
    a      Slope * diabetes                               ---                     ---                     ---
    b      Level                         38.45 (5.53)    <.01    37.09 (5.06)    <.01    37.48 (5.52)    <.01
    b      Slope                         -0.03 (0.45)     .95    -0.00 (0.46)     .99     0.04 (0.50)     .94
    b      Level * age                   -0.48 (0.78)     .54    -0.11 (0.71)     .88    -0.06 (0.74)     .94
    b      Level * education                              ---     8.75 (1.43)    <.01     8.78 (1.49)    <.01
    b      Level * height                                 ---     0.19 (0.10)     .05     0.19 (0.10)     .06
    b      Level * smoking                                ---                     ---     0.12 (1.58)     .94
    b      Level * cardio                                 ---                     ---    -0.42 (1.49)     .78
    b      Level * diabetes                               ---                     ---                     ---
    b      Slope * age                    0.06 (0.06)     .34     0.06 (0.06)     .37     0.06 (0.07)     .38
    b      Slope * education                              ---    -0.06 (0.12)     .62    -0.06 (0.12)     .63
    b      Slope * height                                 ---    -0.00 (0.01)     .57    -0.01 (0.01)     .56
    b      Slope * smoking                                ---                     ---    -0.03 (0.13)     .83
    b      Slope * cardio                                 ---                     ---    -0.05 (0.13)     .70
    b      Slope * diabetes                               ---                     ---                     ---
    a      Var (Level)                    0.55 (0.38)     .14     0.29 (0.43)     .49     0.27 (0.44)     .54
    a      Var (Slope)                    0.00 (0.01)     .73     0.00 (0.01)     .74     0.00 (0.01)     .77
    a      Var (Residual)                 1.06 (0.29)    <.01     1.87 (0.23)    <.01     1.86 (0.24)    <.01
    a      Covar (Level, Slope)          -0.02 (0.05)     .63     0.00 (0.05)     .99    -0.00 (0.05)     .98
    b      Var (Level)                 109.81 (12.28)    <.01   86.57 (10.03)    <.01   86.88 (10.78)    <.01
    b      Var (Slope)                    0.18 (0.05)    <.01     0.18 (0.06)    <.01     0.18 (0.06)    <.01
    b      Var (Residual)                15.42 (1.39)    <.01    15.43 (1.40)    <.01    15.43 (1.43)    <.01
    b      Covar (Level, Slope)          -0.46 (0.66)     .49    -0.24 (0.61)     .69    -0.26 (0.64)     .68
   ab      Covar (Levels)                -3.19 (1.36)     .02    -2.49 (1.34)     .06    -2.28 (1.38)     .10
   ab      Covar (Slopes)                -0.00 (0.02)     .79    -0.01 (0.02)     .60    -0.01 (0.02)     .68
   ab      Covar (Residuals)             -0.61 (0.43)     .15    -0.45 (0.44)     .31    -0.49 (0.46)     .28
    \      Correlation of Levels                        -0.41                  -0.493                  -0.473
    \      Correlation of Slopes                        -0.17                  -0.526                  -0.419
    \      Correlation of Residuals                     -0.15                  -0.084                  -0.091
    \      N                                              253                     253                     252
    \      occasions                                        3                       3                       3
    \      parameters                                      23                      29                      37
    \      LL                                          -2,986                  -2,961                  -2,947
    \      AIC                                          6,017                   5,981                   5,968
    \      BIC                                          6,098                   6,083                   6,099

##  waisgeneral 

 Gender = _male_;  Process (a) = *tug*; Process (b) = _waisgeneral_


 process   label                                          a                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------
    a      Level                        5.44 (0.94)    <.01    5.19 (1.05)    <.01    4.88 (1.13)    <.01
    a      Slope                        0.21 (0.16)     .19    0.23 (0.18)     .18    0.26 (0.19)     .16
    a      Level * age                  0.03 (0.13)     .84   -0.01 (0.15)     .93   -0.03 (0.16)     .85
    a      Level * education                            ---   -0.23 (0.26)     .36   -0.21 (0.26)     .42
    a      Level * height                               ---   -0.02 (0.02)     .26   -0.02 (0.02)     .35
    a      Level * smoking                              ---                    ---    0.04 (0.32)     .90
    a      Level * cardio                               ---                    ---    0.47 (0.27)     .08
    a      Level * diabetes                             ---                    ---                    ---
    a      Slope * age                  0.00 (0.02)     .98    0.00 (0.02)     .88    0.01 (0.02)     .82
    a      Slope * education                            ---    0.02 (0.04)     .58    0.02 (0.04)     .69
    a      Slope * height                               ---    0.00 (0.00)     .91    0.00 (0.00)     .92
    a      Slope * smoking                              ---                    ---   -0.02 (0.05)     .72
    a      Slope * cardio                               ---                    ---    0.01 (0.05)     .76
    a      Slope * diabetes                             ---                    ---                    ---
    b      Level                       15.00 (2.17)    <.01   14.39 (2.02)    <.01   14.29 (2.07)    <.01
    b      Slope                        0.03 (0.18)     .86    0.05 (0.19)     .78    0.04 (0.19)     .84
    b      Level * age                 -0.34 (0.31)     .27   -0.23 (0.29)     .43   -0.24 (0.30)     .41
    b      Level * education                            ---    3.46 (0.68)    <.01    3.46 (0.70)    <.01
    b      Level * height                               ---    0.01 (0.04)     .73    0.02 (0.04)     .66
    b      Level * smoking                              ---                    ---   -0.33 (0.57)     .57
    b      Level * cardio                               ---                    ---    0.73 (0.56)     .19
    b      Level * diabetes                             ---                    ---                    ---
    b      Slope * age                  0.01 (0.03)     .74    0.01 (0.03)     .74    0.01 (0.03)     .79
    b      Slope * education                            ---   -0.06 (0.05)     .23   -0.06 (0.05)     .23
    b      Slope * height                               ---    0.00 (0.00)     .28    0.00 (0.00)     .32
    b      Slope * smoking                              ---                    ---    0.03 (0.04)     .52
    b      Slope * cardio                               ---                    ---   -0.06 (0.05)     .21
    b      Slope * diabetes                             ---                    ---                    ---
    a      Var (Level)                  0.58 (0.37)     .12    0.28 (0.42)     .50    0.25 (0.43)     .56
    a      Var (Slope)                  0.00 (0.01)     .74    0.00 (0.01)     .75    0.00 (0.01)     .77
    a      Var (Residual)               1.05 (0.30)    <.01    1.87 (0.24)    <.01    1.88 (0.24)    <.01
    a      Covar (Level, Slope)        -0.02 (0.05)     .64    0.00 (0.05)     .97   -0.00 (0.05)     .99
    b      Var (Level)                 14.58 (2.09)    <.01   11.62 (1.49)    <.01   11.55 (1.51)    <.01
    b      Var (Slope)                  0.01 (0.01)     .25    0.01 (0.01)     .31    0.01 (0.01)     .38
    b      Var (Residual)               2.81 (0.21)    <.01    2.80 (0.21)    <.01    2.81 (0.22)    <.01
    b      Covar (Level, Slope)        -0.04 (0.09)     .67   -0.01 (0.08)     .92    0.00 (0.08)     .99
   ab      Covar (Levels)              -0.67 (0.47)     .16   -0.32 (0.46)     .48   -0.41 (0.47)     .38
   ab      Covar (Slopes)               0.00 (0.00)     .97   -0.00 (0.00)     .69   -0.00 (0.01)     .80
   ab      Covar (Residuals)           -0.21 (0.18)     .26   -0.20 (0.19)     .28   -0.20 (0.19)     .29
    \      Correlation of Levels                      -0.23                 -0.177                 -0.241
    \      Correlation of Slopes                       0.00                 -0.471                 -0.267
    \      Correlation of Residuals                   -0.12                 -0.089                 -0.088
    \      N                                            253                    253                    252
    \      occasions                                      3                      3                      3
    \      parameters                                    23                     29                     37
    \      LL                                        -2,392                 -2,368                 -2,353
    \      AIC                                        4,830                  4,794                  4,781
    \      BIC                                        4,911                  4,897                  4,911

## Summary 

 Study = _ILSE_; Gender = _male_; Process (a) = _tug_

 Computed correlations:

 

label                      process_b       a     aeh   aehplus
----------------------  ------------  ------  ------  --------
Correlation of Levels          block   -0.36   -0.45     -0.43
Correlation of Levels        fluency   -0.21   -0.23         .
Correlation of Levels        piccomp   -0.23   -0.24     -0.23
Correlation of Levels     spatial_ab   -0.34   -0.43     -0.41
Correlation of Levels         symbol   -0.41   -0.49     -0.47
Correlation of Levels    waisgeneral   -0.23   -0.18     -0.24



label                      process_b       a     aeh   aehplus
----------------------  ------------  ------  ------  --------
Correlation of Slopes          block    0.34    0.00      0.13
Correlation of Slopes        fluency    0.19   -0.31         .
Correlation of Slopes        piccomp    0.12   -0.12      0.00
Correlation of Slopes     spatial_ab   -0.10   -0.20     -0.12
Correlation of Slopes         symbol   -0.17   -0.53     -0.42
Correlation of Slopes    waisgeneral    0.00   -0.47     -0.27



label                         process_b       a     aeh   aehplus
-------------------------  ------------  ------  ------  --------
Correlation of Residuals          block    0.01    0.04      0.04
Correlation of Residuals        fluency   -0.08   -0.06         .
Correlation of Residuals        piccomp   -0.05   -0.03     -0.03
Correlation of Residuals     spatial_ab   -0.00    0.06      0.05
Correlation of Residuals         symbol   -0.15   -0.08     -0.09
Correlation of Residuals    waisgeneral   -0.12   -0.09     -0.09


P-values for corresponding covariances: 

 

label                     process_b      a    aeh   aehplus
---------------------  ------------  -----  -----  --------
Covariance of Levels          block   0.04   0.10      0.12
Covariance of Levels        fluency   0.24   0.49         .
Covariance of Levels        piccomp   0.21   0.47      0.50
Covariance of Levels     spatial_ab   0.04   0.10      0.13
Covariance of Levels         symbol   0.02   0.06      0.10
Covariance of Levels    waisgeneral   0.16   0.48      0.38



label                     process_b      a    aeh   aehplus
---------------------  ------------  -----  -----  --------
Covariance of Slopes          block   0.69   0.98      0.90
Covariance of Slopes        fluency   0.93   0.84         .
Covariance of Slopes        piccomp   0.91   0.92      0.98
Covariance of Slopes     spatial_ab   0.88   0.72      0.85
Covariance of Slopes         symbol   0.79   0.60      0.68
Covariance of Slopes    waisgeneral   0.97   0.69      0.80



label                         process_b      a    aeh   aehplus
-------------------------  ------------  -----  -----  --------
Covariance of  Residuals          block   0.91   0.67      0.64
Covariance of  Residuals        fluency   0.53   0.52         .
Covariance of  Residuals        piccomp   0.72   0.74      0.79
Covariance of  Residuals     spatial_ab   0.99   0.57      0.64
Covariance of  Residuals         symbol   0.15   0.31      0.28
Covariance of  Residuals    waisgeneral   0.26   0.28      0.29


```

#Session Info
```

```
R version 3.3.1 (2016-06-21)
Platform: x86_64-w64-mingw32/x64 (64-bit)
Running under: Windows >= 8 x64 (build 9200)

locale:
[1] LC_COLLATE=English_United States.1252  LC_CTYPE=English_United States.1252    LC_MONETARY=English_United States.1252
[4] LC_NUMERIC=C                           LC_TIME=English_United States.1252    

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] knitr_1.14    ggplot2_2.1.0 magrittr_1.5 

loaded via a namespace (and not attached):
 [1] Rcpp_0.12.7      munsell_0.4.3    testit_0.5       colorspace_1.2-7 R6_2.2.0         stringr_1.1.0   
 [7] highr_0.6        plyr_1.8.4       dplyr_0.5.0      tools_3.3.1      DT_0.2           grid_3.3.1      
[13] gtable_0.2.0     DBI_0.5-1        htmltools_0.3.5  yaml_2.1.13      lazyeval_0.2.0   assertthat_0.1  
[19] digest_0.6.10    tibble_1.2       formatR_1.4      readr_1.0.0      tidyr_0.6.0      htmlwidgets_0.7 
[25] rsconnect_0.5    evaluate_0.10    rmarkdown_1.1    stringi_1.1.2    scales_0.4.0    
```
