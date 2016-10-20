# SATSA : Seed Report
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

 Study **SATSA** have contributed the following outcome pairs to the IASLA-2015-Portland model pool: 
NULL



process_a   process_b      n_models
----------  ------------  ---------
grip        analogies             8
grip        block                 2
grip        digit_b               2
grip        digit_f               2
grip        fig_id                6
grip        information           8
grip        mmse                  8
grip        symbol                8
grip        synonyms              8




study_name   subgroup   model_type   process_a   process_b      n_models
-----------  ---------  -----------  ----------  ------------  ---------
satsa        female     a            grip        analogies             1
satsa        female     a            grip        fig_id                1
satsa        female     a            grip        information           1
satsa        female     a            grip        mmse                  1
satsa        female     a            grip        symbol                1
satsa        female     a            grip        synonyms              1
satsa        female     ae           grip        analogies             1
satsa        female     ae           grip        fig_id                1
satsa        female     ae           grip        information           1
satsa        female     ae           grip        mmse                  1
satsa        female     ae           grip        symbol                1
satsa        female     ae           grip        synonyms              1
satsa        female     aeh          grip        analogies             1
satsa        female     aeh          grip        fig_id                1
satsa        female     aeh          grip        information           1
satsa        female     aeh          grip        mmse                  1
satsa        female     aeh          grip        symbol                1
satsa        female     aeh          grip        synonyms              1
satsa        female     aehplus      grip        analogies             1
satsa        female     aehplus      grip        block                 1
satsa        female     aehplus      grip        digit_b               1
satsa        female     aehplus      grip        digit_f               1
satsa        female     aehplus      grip        information           1
satsa        female     aehplus      grip        mmse                  1
satsa        female     aehplus      grip        symbol                1
satsa        female     aehplus      grip        synonyms              1




study_name   subgroup   model_type   process_a   process_b      n_models
-----------  ---------  -----------  ----------  ------------  ---------
satsa        male       a            grip        analogies             1
satsa        male       a            grip        fig_id                1
satsa        male       a            grip        information           1
satsa        male       a            grip        mmse                  1
satsa        male       a            grip        symbol                1
satsa        male       a            grip        synonyms              1
satsa        male       ae           grip        analogies             1
satsa        male       ae           grip        fig_id                1
satsa        male       ae           grip        information           1
satsa        male       ae           grip        mmse                  1
satsa        male       ae           grip        symbol                1
satsa        male       ae           grip        synonyms              1
satsa        male       aeh          grip        analogies             1
satsa        male       aeh          grip        fig_id                1
satsa        male       aeh          grip        information           1
satsa        male       aeh          grip        mmse                  1
satsa        male       aeh          grip        symbol                1
satsa        male       aeh          grip        synonyms              1
satsa        male       aehplus      grip        analogies             1
satsa        male       aehplus      grip        block                 1
satsa        male       aehplus      grip        digit_b               1
satsa        male       aehplus      grip        digit_f               1
satsa        male       aehplus      grip        information           1
satsa        male       aehplus      grip        mmse                  1
satsa        male       aehplus      grip        symbol                1
satsa        male       aehplus      grip        synonyms              1


# female 

 Gender = _female_; Model type: _aehplus_;  Process (a) = _grip_; Process (b): *analogies*, *block*, *digit_b*, *digit_f*, *fig_id*, *information*, *mmse*, *symbol*, *synonyms*


 process   label                                  analogies                  block                digit_b                digit_f            information           mmse           symbol                              synonyms        mean(sd)
---------  -------------------------  ---------------------  ---------------------  ---------------------  ---------------------  ---------------------  ----------------------  ---------------------  ---------------------  --------------
    a      Level                       21.48 (0.45)    <.01   21.50 (0.45)    <.01   21.51 (0.46)    <.01   21.50 (0.45)    <.01   21.47 (0.45)    <.01   21.45 (0.45)    <.01   21.50 (0.46)    <.01    21.48 (0.46)    <.01     21.49(0.02)
    a      Slope                       -0.57 (0.04)    <.01   -0.57 (0.04)    <.01   -0.57 (0.04)    <.01   -0.57 (0.04)    <.01   -0.57 (0.04)    <.01   -0.57 (0.05)    <.01   -0.57 (0.04)    <.01    -0.57 (0.04)    <.01     -0.57(0.00)
    a      Level * age                 -0.19 (0.04)    <.01   -0.19 (0.04)    <.01   -0.19 (0.03)    <.01   -0.19 (0.04)    <.01   -0.19 (0.04)    <.01   -0.19 (0.04)    <.01   -0.19 (0.04)    <.01    -0.19 (0.04)    <.01     -0.19(0.00)
    a      Level * education            0.32 (0.39)     .41    0.36 (0.39)     .35    0.28 (0.38)     .46    0.29 (0.39)     .46    0.29 (0.39)     .45   0.31 (0.39)     .43    0.32 (0.39)     .41      0.31 (0.40)     .44      0.31(0.02)
    a      Level * height               0.15 (0.05)    <.01    0.15 (0.05)    <.01    0.15 (0.05)    <.01    0.15 (0.05)    <.01    0.15 (0.05)    <.01   0.15 (0.05)     .01    0.15 (0.05)    <.01      0.15 (0.05)    <.01      0.15(0.00)
    a      Level * smoking              0.26 (0.64)     .68    0.26 (0.63)     .68    0.22 (0.63)     .72    0.23 (0.64)     .72    0.25 (0.63)     .69   0.29 (0.63)     .65    0.22 (0.62)     .73      0.27 (0.63)     .66      0.25(0.03)
    a      Level * cardio              -2.19 (0.82)     .01   -2.30 (0.85)     .01   -2.25 (0.81)     .01   -2.24 (0.80)    <.01   -2.17 (0.80)     .01   -2.16 (0.81)     .01   -2.27 (0.81)    <.01    -2.20 (0.81)     .01     -2.22(0.05)
    a      Level * diabetes            -2.02 (1.72)     .24   -1.14 (1.79)     .52   -1.13 (1.67)     .50   -1.11 (1.68)     .51   -2.02 (1.64)     .22   -2.01 (1.66)     .23   -1.15 (1.72)     .50    -2.04 (1.68)     .22     -1.58(0.48)
    a      Slope * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01    -0.01 (0.00)    <.01     -0.01(0.00)
    a      Slope * education            0.02 (0.03)     .57    0.02 (0.03)     .59    0.02 (0.03)     .51    0.02 (0.03)     .51    0.02 (0.03)     .48   0.02 (0.03)     .50    0.02 (0.03)     .56      0.02 (0.03)     .53      0.02(0.00)
    a      Slope * height               0.00 (0.00)     .92    0.00 (0.00)     .97    0.00 (0.00)     .94   -0.00 (0.00)     .90    0.00 (0.00)     .95   0.00 (0.00)     .99    0.00 (0.00)     .93      0.00 (0.00)     .93     -0.00(0.00)
    a      Slope * smoking              0.03 (0.06)     .63    0.02 (0.05)     .65    0.03 (0.06)     .59    0.03 (0.05)     .61    0.02 (0.05)     .64   0.02 (0.05)     .66    0.03 (0.05)     .58      0.02 (0.05)     .70      0.03(0.00)
    a      Slope * cardio               0.01 (0.07)     .93    0.01 (0.07)     .84    0.01 (0.07)     .85    0.01 (0.07)     .85    0.00 (0.07)     .96   0.01 (0.07)     .89    0.02 (0.07)     .82      0.01 (0.07)     .91      0.01(0.00)
    a      Slope * diabetes            -0.31 (0.22)     .16   -0.45 (0.31)     .15   -0.46 (0.29)     .12   -0.46 (0.38)     .23   -0.32 (0.21)     .14   -0.30 (0.21)     .16   -0.46 (0.35)     .19    -0.32 (0.22)     .15     -0.38(0.08)
    b      Level                       13.14 (0.30)    <.01   16.49 (0.52)    <.01    3.67 (0.10)    <.01    5.55 (0.10)    <.01   27.86 (0.57)    <.01   28.05 (0.14)    <.01   34.49 (0.74)    <.01    17.72 (0.34)    <.01             ---
    b      Slope                       -0.12 (0.02)    <.01   -0.37 (0.03)    <.01   -0.04 (0.01)    <.01   -0.03 (0.01)    <.01   -0.29 (0.05)    <.01   -0.29 (0.03)    <.01   -0.82 (0.06)    <.01    -0.13 (0.02)    <.01             ---
    b      Level * age                 -0.12 (0.02)    <.01   -0.28 (0.04)    <.01   -0.01 (0.01)     .16   -0.01 (0.01)     .14   -0.04 (0.05)     .42   -0.03 (0.01)     .01   -0.69 (0.06)    <.01    -0.04 (0.03)     .19             ---
    b      Level * education            1.76 (0.23)    <.01    2.23 (0.50)    <.01    0.50 (0.10)    <.01    0.32 (0.09)    <.01    4.03 (0.78)    <.01   0.32 (0.19)     .09    3.29 (0.70)    <.01      2.71 (0.48)    <.01             ---
    b      Level * height               0.03 (0.03)     .33    0.08 (0.06)     .17    0.01 (0.01)     .34    0.00 (0.01)     .81    0.01 (0.07)     .83   -0.01 (0.02)     .55   0.17 (0.09)     .05      0.04 (0.05)     .40             ---
    b      Level * smoking              0.50 (0.38)     .19    0.11 (0.78)     .89    0.24 (0.16)     .13    0.03 (0.12)     .80    1.08 (0.99)     .28   -0.07 (0.26)     .79   0.95 (1.19)     .42      1.09 (0.61)     .08             ---
    b      Level * cardio              -0.56 (0.64)     .38   -0.02 (1.18)     .99    0.03 (0.21)     .87   -0.27 (0.22)     .22   -2.04 (1.12)     .07   -0.10 (0.26)     .70   -1.81 (1.54)     .24    -1.60 (0.84)     .06             ---
    b      Level * diabetes            -0.73 (0.97)     .45   -5.34 (2.46)     .03    0.14 (0.38)     .71   -0.25 (0.34)     .47    0.38 (1.75)     .83   -0.52 (0.50)     .29   -6.88 (2.92)     .02    -2.05 (1.07)     .06             ---
    b      Slope * age                 -0.00 (0.00)     .01   -0.01 (0.00)    <.01   -0.00 (0.00)     .02   -0.00 (0.00)     .12   -0.02 (0.00)    <.01   -0.01 (0.00)    <.01   -0.02 (0.00)    <.01    -0.01 (0.00)    <.01             ---
    b      Slope * education            0.01 (0.02)     .46    0.02 (0.03)     .60   -0.01 (0.01)     .30   -0.00 (0.00)     .87   -0.03 (0.05)     .53   0.01 (0.03)     .78    0.05 (0.04)     .22      0.00 (0.02)     .99             ---
    b      Slope * height               0.00 (0.00)     .97   -0.00 (0.00)     .54    0.00 (0.00)     .42    0.00 (0.00)     .07    0.00 (0.00)     .60   0.00 (0.00)     .55    0.00 (0.01)     .99      0.00 (0.00)     .65             ---
    b      Slope * smoking              0.01 (0.03)     .83   -0.01 (0.05)     .90    0.01 (0.01)     .65    0.00 (0.01)     .73    0.04 (0.06)     .55   0.04 (0.04)     .32    -0.06 (0.08)     .46    -0.01 (0.03)     .81             ---
    b      Slope * cardio               0.08 (0.06)     .21    0.05 (0.09)     .62    0.02 (0.02)     .29    0.03 (0.01)     .06    0.09 (0.09)     .34   0.02 (0.05)     .71    -0.02 (0.16)     .91     0.06 (0.05)     .22             ---
    b      Slope * diabetes             0.05 (0.12)     .69    0.08 (0.16)     .63   -0.02 (0.03)     .64    0.02 (0.06)     .71   -0.17 (0.19)     .38   0.12 (0.11)     .27    -0.18 (0.56)     .74     0.13 (0.15)     .41             ---
    a      Var (Level)                 13.88 (2.42)    <.01   13.72 (2.40)    <.01   13.77 (2.41)    <.01   13.84 (2.37)    <.01   13.98 (2.42)    <.01   13.98 (2.43)    <.01   13.80 (2.37)    <.01    14.06 (2.42)    <.01     13.88(0.12)
    a      Var (Slope)                  0.02 (0.01)     .06    0.02 (0.01)     .08    0.02 (0.01)     .08    0.02 (0.01)     .07    0.02 (0.01)     .05   0.02 (0.01)     .05    0.02 (0.01)     .08      0.02 (0.01)     .08      0.02(0.00)
    a      Var (Residual)              21.60 (1.06)    <.01   21.57 (1.04)    <.01   21.55 (1.03)    <.01   21.50 (1.05)    <.01   21.57 (1.07)    <.01   21.59 (1.05)    <.01   21.55 (1.02)    <.01    21.57 (1.07)    <.01     21.56(0.03)
    a      Covar (Level, Slope)         0.06 (0.14)     .64    0.09 (0.14)     .53    0.08 (0.14)     .53    0.08 (0.14)     .57    0.04 (0.14)     .77   0.04 (0.14)     .76    0.07 (0.14)     .61      0.06 (0.14)     .69      0.07(0.02)
    b      Var (Level)                  6.31 (0.80)    <.01   34.74 (3.61)    <.01    0.74 (0.10)    <.01    0.70 (0.09)    <.01   45.51 (4.18)    <.01   0.78 (0.23)    <.01    69.18 (6.73)    <.01    18.32 (1.70)    <.01             ---
    b      Var (Slope)                  0.01 (0.00)    <.01    0.03 (0.01)    <.01    0.00 (0.00)     .01    0.00 (0.00)     .55    0.10 (0.02)    <.01   0.04 (0.00)    <.01    0.09 (0.02)    <.01      0.01 (0.00)    <.01             ---
    b      Var (Residual)               5.20 (0.27)    <.01   11.26 (0.29)    <.01    1.04 (0.04)    <.01    0.61 (0.03)    <.01   11.45 (0.49)    <.01   3.13 (0.09)    <.01    27.68 (0.83)    <.01     4.45 (0.24)    <.01             ---
    b      Covar (Level, Slope)        -0.06 (0.05)     .28   -0.34 (0.14)     .01   -0.01 (0.01)     .22   -0.00 (0.00)     .51   -0.65 (0.24)     .01   0.06 (0.02)    <.01    -0.69 (0.37)     .06    -0.05 (0.07)     .47             ---
   ab      Covar (Levels)              -0.07 (0.97)     .94    4.25 (2.11)     .04    0.38 (0.41)     .36   -0.10 (0.33)     .77    2.53 (2.40)     .29   0.10 (0.64)     .88    7.15 (3.22)     .03      1.67 (1.43)     .24             ---
   ab      Covar (Slopes)               0.01 (0.00)     .20    0.00 (0.01)     .89    0.00 (0.00)     .34    0.00 (0.00)     .45    0.03 (0.01)     .03   0.01 (0.01)     .34    0.02 (0.01)     .25      0.00 (0.01)     .47             ---
   ab      Covar (Residuals)            1.22 (0.43)    <.01    1.73 (0.61)    <.01    0.18 (0.16)     .27    0.11 (0.11)     .32    0.87 (0.57)     .13   1.07 (0.30)    <.01    2.64 (0.95)    <.01      0.63 (0.38)     .10             ---
    \      Correlation of Levels                     -0.008                  0.195                  0.118                 -0.032                  0.100          0.029           0.23                                   0.104      0.09(0.09)
    \      Correlation of Slopes                      0.363                  0.041                  0.324                    Inf                  0.643          0.268           0.40                                   0.276        Inf(NaN)
    \      Correlation of Residuals                   0.115                  0.111                  0.038                  0.030                  0.056          0.130           0.11                                   0.064      0.08(0.04)
    \      N                                            410                    409                    409                    409                    411           412            409                                      410    409.88(1.13)
    \      occasions                                      7                      7                      7                      7                      7            7             7                                          7      7.00(0.00)
    \      parameters                                    41                     41                     41                     41                     41            41            41                                        41     41.00(0.00)
    \      LL                                        -8,149                 -9,091                 -7,157                 -6,805                 -9,359          -8,109          -9,587                                -8,456   -8,339(1,001)
    \      AIC                                       16,381                 18,265                 14,395                 13,691                 18,801          16,299          19,256                                16,994   16,760(2,003)
    \      BIC                                       16,546                 18,429                 14,560                 13,856                 18,965          16,464          19,420                                17,159   16,925(2,003)

##  analogies 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _analogies_


 process   label                                          a                     ae                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------  ---------------------
    a      Level                       21.02 (0.32)    <.01   20.84 (0.35)    <.01   20.82 (0.36)    <.01   21.48 (0.45)    <.01
    a      Slope                       -0.57 (0.03)    <.01   -0.58 (0.04)    <.01   -0.58 (0.04)    <.01   -0.57 (0.04)    <.01
    a      Level * age                 -0.27 (0.03)    <.01   -0.26 (0.03)    <.01   -0.24 (0.03)    <.01   -0.19 (0.04)    <.01
    a      Level * education                            ---    0.53 (0.40)     .19    0.40 (0.40)     .31    0.32 (0.39)     .41
    a      Level * height                               ---                    ---    0.13 (0.05)     .01    0.15 (0.05)    <.01
    a      Level * smoking                              ---                    ---                    ---    0.26 (0.64)     .68
    a      Level * cardio                               ---                    ---                    ---   -2.19 (0.82)     .01
    a      Level * diabetes                             ---                    ---                    ---   -2.02 (1.72)     .24
    a      Slope * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01
    a      Slope * education                            ---    0.01 (0.03)     .65    0.01 (0.03)     .67    0.02 (0.03)     .57
    a      Slope * height                               ---                    ---    0.00 (0.00)     .93    0.00 (0.00)     .92
    a      Slope * smoking                              ---                    ---                    ---    0.03 (0.06)     .63
    a      Slope * cardio                               ---                    ---                    ---    0.01 (0.07)     .93
    a      Slope * diabetes                             ---                    ---                    ---   -0.31 (0.22)     .16
    b      Level                       13.72 (0.23)    <.01   13.02 (0.23)    <.01   13.05 (0.24)    <.01   13.14 (0.30)    <.01
    b      Slope                       -0.10 (0.02)    <.01   -0.10 (0.02)    <.01   -0.10 (0.02)    <.01   -0.12 (0.02)    <.01
    b      Level * age                 -0.16 (0.02)    <.01   -0.12 (0.02)    <.01   -0.12 (0.02)    <.01   -0.12 (0.02)    <.01
    b      Level * education                            ---    1.92 (0.21)    <.01    1.89 (0.21)    <.01    1.76 (0.23)    <.01
    b      Level * height                               ---                    ---    0.02 (0.03)     .52    0.03 (0.03)     .33
    b      Level * smoking                              ---                    ---                    ---    0.50 (0.38)     .19
    b      Level * cardio                               ---                    ---                    ---   -0.56 (0.64)     .38
    b      Level * diabetes                             ---                    ---                    ---   -0.73 (0.97)     .45
    b      Slope * age                 -0.00 (0.00)    <.01   -0.00 (0.00)    <.01   -0.00 (0.00)     .01   -0.00 (0.00)     .01
    b      Slope * education                            ---    0.00 (0.02)     .82    0.00 (0.02)     .93    0.01 (0.02)     .46
    b      Slope * height                               ---                    ---    0.00 (0.00)     .49    0.00 (0.00)     .97
    b      Slope * smoking                              ---                    ---                    ---    0.01 (0.03)     .83
    b      Slope * cardio                               ---                    ---                    ---    0.08 (0.06)     .21
    b      Slope * diabetes                             ---                    ---                    ---    0.05 (0.12)     .69
    a      Var (Level)                 17.47 (2.32)    <.01   17.50 (2.35)    <.01   16.97 (2.30)    <.01   13.88 (2.42)    <.01
    a      Var (Slope)                  0.03 (0.01)     .01    0.03 (0.01)     .01    0.03 (0.01)     .01    0.02 (0.01)     .06
    a      Var (Residual)              21.66 (0.93)    <.01   21.57 (0.95)    <.01   21.68 (0.97)    <.01   21.60 (1.06)    <.01
    a      Covar (Level, Slope)        -0.07 (0.14)     .63   -0.07 (0.14)     .60   -0.05 (0.14)     .70    0.06 (0.14)     .64
    b      Var (Level)                  7.78 (0.80)    <.01    6.08 (0.69)    <.01    6.08 (0.70)    <.01    6.31 (0.80)    <.01
    b      Var (Slope)                  0.01 (0.00)    <.01    0.01 (0.00)    <.01    0.01 (0.00)    <.01    0.01 (0.00)    <.01
    b      Var (Residual)               5.13 (0.22)    <.01    5.16 (0.23)    <.01    5.17 (0.23)    <.01    5.20 (0.27)    <.01
    b      Covar (Level, Slope)        -0.03 (0.05)     .53   -0.05 (0.04)     .30   -0.05 (0.05)     .27   -0.06 (0.05)     .28
   ab      Covar (Levels)               1.11 (0.94)     .24    0.54 (0.86)     .53    0.58 (0.86)     .50   -0.07 (0.97)     .94
   ab      Covar (Slopes)               0.01 (0.00)     .09    0.01 (0.00)     .07    0.01 (0.00)     .07    0.01 (0.00)     .20
   ab      Covar (Residuals)            1.18 (0.36)    <.01    1.30 (0.37)    <.01    1.26 (0.38)    <.01    1.22 (0.43)    <.01
    \      Correlation of Levels                      0.095                  0.053                  0.058                 -0.008
    \      Correlation of Slopes                      0.377                  0.448                  0.455                  0.363
    \      Correlation of Residuals                   0.112                  0.123                  0.119                  0.115
    \      N                                            508                    486                    477                    410
    \      occasions                                      7                      7                      7                      7
    \      parameters                                    21                     25                     29                     41
    \      LL                                       -10,004                 -9,613                 -9,472                 -8,149
    \      AIC                                       20,050                 19,277                 19,002                 16,381
    \      BIC                                       20,139                 19,381                 19,122                 16,546

##  block 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _block_


 process   label                                    aehplus
---------  -------------------------  ---------------------
    a      Level                       21.50 (0.45)    <.01
    a      Slope                       -0.57 (0.04)    <.01
    a      Level * age                 -0.19 (0.04)    <.01
    a      Level * education            0.36 (0.39)     .35
    a      Level * height               0.15 (0.05)    <.01
    a      Level * smoking              0.26 (0.63)     .68
    a      Level * cardio              -2.30 (0.85)     .01
    a      Level * diabetes            -1.14 (1.79)     .52
    a      Slope * age                 -0.01 (0.00)    <.01
    a      Slope * education            0.02 (0.03)     .59
    a      Slope * height               0.00 (0.00)     .97
    a      Slope * smoking              0.02 (0.05)     .65
    a      Slope * cardio               0.01 (0.07)     .84
    a      Slope * diabetes            -0.45 (0.31)     .15
    b      Level                       16.49 (0.52)    <.01
    b      Slope                       -0.37 (0.03)    <.01
    b      Level * age                 -0.28 (0.04)    <.01
    b      Level * education            2.23 (0.50)    <.01
    b      Level * height               0.08 (0.06)     .17
    b      Level * smoking              0.11 (0.78)     .89
    b      Level * cardio              -0.02 (1.18)     .99
    b      Level * diabetes            -5.34 (2.46)     .03
    b      Slope * age                 -0.01 (0.00)    <.01
    b      Slope * education            0.02 (0.03)     .60
    b      Slope * height              -0.00 (0.00)     .54
    b      Slope * smoking             -0.01 (0.05)     .90
    b      Slope * cardio               0.05 (0.09)     .62
    b      Slope * diabetes             0.08 (0.16)     .63
    a      Var (Level)                 13.72 (2.40)    <.01
    a      Var (Slope)                  0.02 (0.01)     .08
    a      Var (Residual)              21.57 (1.04)    <.01
    a      Covar (Level, Slope)         0.09 (0.14)     .53
    b      Var (Level)                 34.74 (3.61)    <.01
    b      Var (Slope)                  0.03 (0.01)    <.01
    b      Var (Residual)              11.26 (0.29)    <.01
    b      Covar (Level, Slope)        -0.34 (0.14)     .01
   ab      Covar (Levels)               4.25 (2.11)     .04
   ab      Covar (Slopes)               0.00 (0.01)     .89
   ab      Covar (Residuals)            1.73 (0.61)    <.01
    \      Correlation of Levels                      0.195
    \      Correlation of Slopes                      0.041
    \      Correlation of Residuals                   0.111
    \      N                                            409
    \      occasions                                      7
    \      parameters                                    41
    \      LL                                        -9,091
    \      AIC                                       18,265
    \      BIC                                       18,429

##  digit_b 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _digit_b_


 process   label                                    aehplus
---------  -------------------------  ---------------------
    a      Level                       21.51 (0.46)    <.01
    a      Slope                       -0.57 (0.04)    <.01
    a      Level * age                 -0.19 (0.03)    <.01
    a      Level * education            0.28 (0.38)     .46
    a      Level * height               0.15 (0.05)    <.01
    a      Level * smoking              0.22 (0.63)     .72
    a      Level * cardio              -2.25 (0.81)     .01
    a      Level * diabetes            -1.13 (1.67)     .50
    a      Slope * age                 -0.01 (0.00)    <.01
    a      Slope * education            0.02 (0.03)     .51
    a      Slope * height               0.00 (0.00)     .94
    a      Slope * smoking              0.03 (0.06)     .59
    a      Slope * cardio               0.01 (0.07)     .85
    a      Slope * diabetes            -0.46 (0.29)     .12
    b      Level                        3.67 (0.10)    <.01
    b      Slope                       -0.04 (0.01)    <.01
    b      Level * age                 -0.01 (0.01)     .16
    b      Level * education            0.50 (0.10)    <.01
    b      Level * height               0.01 (0.01)     .34
    b      Level * smoking              0.24 (0.16)     .13
    b      Level * cardio               0.03 (0.21)     .87
    b      Level * diabetes             0.14 (0.38)     .71
    b      Slope * age                 -0.00 (0.00)     .02
    b      Slope * education           -0.01 (0.01)     .30
    b      Slope * height               0.00 (0.00)     .42
    b      Slope * smoking              0.01 (0.01)     .65
    b      Slope * cardio               0.02 (0.02)     .29
    b      Slope * diabetes            -0.02 (0.03)     .64
    a      Var (Level)                 13.77 (2.41)    <.01
    a      Var (Slope)                  0.02 (0.01)     .08
    a      Var (Residual)              21.55 (1.03)    <.01
    a      Covar (Level, Slope)         0.08 (0.14)     .53
    b      Var (Level)                  0.74 (0.10)    <.01
    b      Var (Slope)                  0.00 (0.00)     .01
    b      Var (Residual)               1.04 (0.04)    <.01
    b      Covar (Level, Slope)        -0.01 (0.01)     .22
   ab      Covar (Levels)               0.38 (0.41)     .36
   ab      Covar (Slopes)               0.00 (0.00)     .34
   ab      Covar (Residuals)            0.18 (0.16)     .27
    \      Correlation of Levels                      0.118
    \      Correlation of Slopes                      0.324
    \      Correlation of Residuals                   0.038
    \      N                                            409
    \      occasions                                      7
    \      parameters                                    41
    \      LL                                        -7,157
    \      AIC                                       14,395
    \      BIC                                       14,560

##  digit_f 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _digit_f_


 process   label                                    aehplus
---------  -------------------------  ---------------------
    a      Level                       21.50 (0.45)    <.01
    a      Slope                       -0.57 (0.04)    <.01
    a      Level * age                 -0.19 (0.04)    <.01
    a      Level * education            0.29 (0.39)     .46
    a      Level * height               0.15 (0.05)    <.01
    a      Level * smoking              0.23 (0.64)     .72
    a      Level * cardio              -2.24 (0.80)    <.01
    a      Level * diabetes            -1.11 (1.68)     .51
    a      Slope * age                 -0.01 (0.00)    <.01
    a      Slope * education            0.02 (0.03)     .51
    a      Slope * height              -0.00 (0.00)     .90
    a      Slope * smoking              0.03 (0.05)     .61
    a      Slope * cardio               0.01 (0.07)     .85
    a      Slope * diabetes            -0.46 (0.38)     .23
    b      Level                        5.55 (0.10)    <.01
    b      Slope                       -0.03 (0.01)    <.01
    b      Level * age                 -0.01 (0.01)     .14
    b      Level * education            0.32 (0.09)    <.01
    b      Level * height               0.00 (0.01)     .81
    b      Level * smoking              0.03 (0.12)     .80
    b      Level * cardio              -0.27 (0.22)     .22
    b      Level * diabetes            -0.25 (0.34)     .47
    b      Slope * age                 -0.00 (0.00)     .12
    b      Slope * education           -0.00 (0.00)     .87
    b      Slope * height               0.00 (0.00)     .07
    b      Slope * smoking              0.00 (0.01)     .73
    b      Slope * cardio               0.03 (0.01)     .06
    b      Slope * diabetes             0.02 (0.06)     .71
    a      Var (Level)                 13.84 (2.37)    <.01
    a      Var (Slope)                  0.02 (0.01)     .07
    a      Var (Residual)              21.50 (1.05)    <.01
    a      Covar (Level, Slope)         0.08 (0.14)     .57
    b      Var (Level)                  0.70 (0.09)    <.01
    b      Var (Slope)                  0.00 (0.00)     .55
    b      Var (Residual)               0.61 (0.03)    <.01
    b      Covar (Level, Slope)        -0.00 (0.00)     .51
   ab      Covar (Levels)              -0.10 (0.33)     .77
   ab      Covar (Slopes)               0.00 (0.00)     .45
   ab      Covar (Residuals)            0.11 (0.11)     .32
    \      Correlation of Levels                     -0.032
    \      Correlation of Slopes                        Inf
    \      Correlation of Residuals                   0.030
    \      N                                            409
    \      occasions                                      7
    \      parameters                                    41
    \      LL                                        -6,805
    \      AIC                                       13,691
    \      BIC                                       13,856

##  fig_id 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _fig_id_


 process   label                                          a                     ae                    aeh
---------  -------------------------  ---------------------  ---------------------  ---------------------
    a      Level                       21.04 (0.33)    <.01   20.86 (0.36)    <.01   20.83 (0.36)    <.01
    a      Slope                       -0.57 (0.03)    <.01   -0.58 (0.04)    <.01   -0.58 (0.04)    <.01
    a      Level * age                 -0.27 (0.03)    <.01   -0.26 (0.03)    <.01   -0.24 (0.03)    <.01
    a      Level * education                            ---    0.54 (0.40)     .18    0.41 (0.40)     .30
    a      Level * height                               ---                    ---    0.13 (0.05)     .01
    a      Level * smoking                              ---                    ---                    ---
    a      Level * cardio                               ---                    ---                    ---
    a      Level * diabetes                             ---                    ---                    ---
    a      Slope * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01
    a      Slope * education                            ---    0.02 (0.03)     .61    0.01 (0.03)     .65
    a      Slope * height                               ---                    ---    0.00 (0.00)     .92
    a      Slope * smoking                              ---                    ---                    ---
    a      Slope * cardio                               ---                    ---                    ---
    a      Slope * diabetes                             ---                    ---                    ---
    b      Level                       27.98 (0.40)    <.01   27.62 (0.44)    <.01   27.62 (0.44)    <.01
    b      Slope                       -0.53 (0.04)    <.01   -0.56 (0.04)    <.01   -0.56 (0.05)    <.01
    b      Level * age                 -0.49 (0.04)    <.01   -0.48 (0.04)    <.01   -0.47 (0.04)    <.01
    b      Level * education                            ---    0.79 (0.53)     .13    0.75 (0.54)     .16
    b      Level * height                               ---                    ---    0.04 (0.06)     .49
    b      Level * smoking                              ---                    ---                    ---
    b      Level * cardio                               ---                    ---                    ---
    b      Level * diabetes                             ---                    ---                    ---
    b      Slope * age                 -0.02 (0.00)    <.01   -0.02 (0.00)    <.01   -0.02 (0.00)    <.01
    b      Slope * education                            ---    0.07 (0.03)     .04    0.06 (0.03)     .07
    b      Slope * height                               ---                    ---    0.00 (0.00)     .50
    b      Slope * smoking                              ---                    ---                    ---
    b      Slope * cardio                               ---                    ---                    ---
    b      Slope * diabetes                             ---                    ---                    ---
    a      Var (Level)                 17.51 (2.33)    <.01   17.63 (2.38)    <.01   17.08 (2.33)    <.01
    a      Var (Slope)                  0.03 (0.01)     .01    0.03 (0.01)     .01    0.03 (0.01)     .01
    a      Var (Residual)              21.64 (0.93)    <.01   21.53 (0.95)    <.01   21.64 (0.96)    <.01
    a      Covar (Level, Slope)        -0.07 (0.14)     .62   -0.08 (0.15)     .58   -0.06 (0.14)     .68
    b      Var (Level)                 36.27 (3.47)    <.01   36.23 (3.48)    <.01   36.52 (3.56)    <.01
    b      Var (Slope)                  0.11 (0.02)    <.01    0.10 (0.02)    <.01    0.10 (0.02)    <.01
    b      Var (Residual)              18.03 (0.74)    <.01   17.79 (0.74)    <.01   17.83 (0.75)    <.01
    b      Covar (Level, Slope)        -0.47 (0.21)     .03   -0.51 (0.21)     .01   -0.52 (0.21)     .02
   ab      Covar (Levels)               6.07 (2.08)    <.01    5.73 (2.10)     .01    5.35 (2.13)     .01
   ab      Covar (Slopes)               0.02 (0.01)     .11    0.02 (0.01)     .13    0.02 (0.01)     .16
   ab      Covar (Residuals)           -0.87 (0.58)     .14   -0.63 (0.60)     .29   -0.62 (0.61)     .31
    \      Correlation of Levels                      0.241                  0.227                  0.214
    \      Correlation of Slopes                      0.328                  0.325                  0.297
    \      Correlation of Residuals                  -0.044                 -0.032                 -0.032
    \      N                                            508                    486                    477
    \      occasions                                      7                      7                      7
    \      parameters                                    21                     25                     29
    \      LL                                       -11,485                -11,076                -10,914
    \      AIC                                       23,013                 22,202                 21,886
    \      BIC                                       23,102                 22,307                 22,007

##  information 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _information_


 process   label                                          a                     ae                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------  ---------------------
    a      Level                       21.04 (0.33)    <.01   20.86 (0.36)    <.01   20.83 (0.36)    <.01   21.47 (0.45)    <.01
    a      Slope                       -0.58 (0.03)    <.01   -0.59 (0.04)    <.01   -0.59 (0.04)    <.01   -0.57 (0.04)    <.01
    a      Level * age                 -0.27 (0.03)    <.01   -0.26 (0.03)    <.01   -0.24 (0.03)    <.01   -0.19 (0.04)    <.01
    a      Level * education                            ---    0.50 (0.40)     .22    0.37 (0.40)     .36    0.29 (0.39)     .45
    a      Level * height                               ---                    ---    0.13 (0.05)     .01    0.15 (0.05)    <.01
    a      Level * smoking                              ---                    ---                    ---    0.25 (0.63)     .69
    a      Level * cardio                               ---                    ---                    ---   -2.17 (0.80)     .01
    a      Level * diabetes                             ---                    ---                    ---   -2.02 (1.64)     .22
    a      Slope * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01
    a      Slope * education                            ---    0.02 (0.03)     .53    0.02 (0.03)     .56    0.02 (0.03)     .48
    a      Slope * height                               ---                    ---    0.00 (0.00)     .88    0.00 (0.00)     .95
    a      Slope * smoking                              ---                    ---                    ---    0.02 (0.05)     .64
    a      Slope * cardio                               ---                    ---                    ---    0.00 (0.07)     .96
    a      Slope * diabetes                             ---                    ---                    ---   -0.32 (0.21)     .14
    b      Level                       29.02 (0.46)    <.01   27.59 (0.44)    <.01   27.71 (0.43)    <.01   27.86 (0.57)    <.01
    b      Slope                       -0.31 (0.03)    <.01   -0.30 (0.04)    <.01   -0.30 (0.04)    <.01   -0.29 (0.05)    <.01
    b      Level * age                 -0.14 (0.04)    <.01   -0.05 (0.04)     .23   -0.04 (0.04)     .33   -0.04 (0.05)     .42
    b      Level * education                            ---    4.14 (0.64)    <.01    4.26 (0.66)    <.01    4.03 (0.78)    <.01
    b      Level * height                               ---                    ---    0.01 (0.06)     .86    0.01 (0.07)     .83
    b      Level * smoking                              ---                    ---                    ---    1.08 (0.99)     .28
    b      Level * cardio                               ---                    ---                    ---   -2.04 (1.12)     .07
    b      Level * diabetes                             ---                    ---                    ---    0.38 (1.75)     .83
    b      Slope * age                 -0.03 (0.00)    <.01   -0.03 (0.00)    <.01   -0.03 (0.00)    <.01   -0.02 (0.00)    <.01
    b      Slope * education                            ---   -0.03 (0.04)     .39   -0.04 (0.04)     .31   -0.03 (0.05)     .53
    b      Slope * height                               ---                    ---    0.00 (0.00)     .45    0.00 (0.00)     .60
    b      Slope * smoking                              ---                    ---                    ---    0.04 (0.06)     .55
    b      Slope * cardio                               ---                    ---                    ---    0.09 (0.09)     .34
    b      Slope * diabetes                             ---                    ---                    ---   -0.17 (0.19)     .38
    a      Var (Level)                 17.52 (2.32)    <.01   17.63 (2.36)    <.01   17.07 (2.32)    <.01   13.98 (2.42)    <.01
    a      Var (Slope)                  0.03 (0.01)     .01    0.03 (0.01)     .01    0.03 (0.01)     .01    0.02 (0.01)     .05
    a      Var (Residual)              21.63 (0.93)    <.01   21.55 (0.97)    <.01   21.66 (0.99)    <.01   21.57 (1.07)    <.01
    a      Covar (Level, Slope)        -0.09 (0.14)     .53   -0.10 (0.14)     .49   -0.08 (0.14)     .57    0.04 (0.14)     .77
    b      Var (Level)                 57.22 (4.60)    <.01   46.92 (3.74)    <.01   44.95 (3.65)    <.01   45.51 (4.18)    <.01
    b      Var (Slope)                  0.11 (0.01)    <.01    0.10 (0.01)    <.01    0.10 (0.01)    <.01    0.10 (0.02)    <.01
    b      Var (Residual)              10.92 (0.40)    <.01   10.97 (0.41)    <.01   11.05 (0.43)    <.01   11.45 (0.49)    <.01
    b      Covar (Level, Slope)        -0.59 (0.23)     .01   -0.51 (0.21)     .02   -0.48 (0.21)     .02   -0.65 (0.24)     .01
   ab      Covar (Levels)               4.33 (2.31)     .06    2.93 (2.20)     .18    2.89 (2.21)     .19    2.53 (2.40)     .29
   ab      Covar (Slopes)               0.04 (0.01)    <.01    0.03 (0.01)     .01    0.03 (0.01)     .01    0.03 (0.01)     .03
   ab      Covar (Residuals)            0.96 (0.49)     .05    0.89 (0.50)     .07    0.85 (0.51)     .10    0.87 (0.57)     .13
    \      Correlation of Levels                      0.137                  0.102                  0.104                  0.100
    \      Correlation of Slopes                      0.583                  0.569                  0.602                  0.643
    \      Correlation of Residuals                   0.062                  0.058                  0.055                  0.056
    \      N                                            510                    488                    479                    411
    \      occasions                                      7                      7                      7                      7
    \      parameters                                    21                     25                     29                     41
    \      LL                                       -11,516                -11,074                -10,909                 -9,359
    \      AIC                                       23,074                 22,198                 21,875                 18,801
    \      BIC                                       23,163                 22,303                 21,996                 18,965

##  mmse 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _mmse_


 process   label                                          a                     ae                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------  ---------------------
    a      Level                       21.02 (0.32)    <.01   20.85 (0.35)    <.01   20.82 (0.36)    <.01   21.45 (0.45)    <.01
    a      Slope                       -0.57 (0.04)    <.01   -0.58 (0.04)    <.01   -0.58 (0.04)    <.01   -0.57 (0.05)    <.01
    a      Level * age                 -0.27 (0.03)    <.01   -0.26 (0.03)    <.01   -0.24 (0.03)    <.01   -0.19 (0.04)    <.01
    a      Level * education                            ---    0.51 (0.40)     .20    0.38 (0.40)     .33    0.31 (0.39)     .43
    a      Level * height                               ---                    ---    0.13 (0.05)     .01    0.15 (0.05)     .01
    a      Level * smoking                              ---                    ---                    ---    0.29 (0.63)     .65
    a      Level * cardio                               ---                    ---                    ---   -2.16 (0.81)     .01
    a      Level * diabetes                             ---                    ---                    ---   -2.01 (1.66)     .23
    a      Slope * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01
    a      Slope * education                            ---    0.02 (0.03)     .57    0.02 (0.03)     .59    0.02 (0.03)     .50
    a      Slope * height                               ---                    ---    0.00 (0.00)     .99    0.00 (0.00)     .99
    a      Slope * smoking                              ---                    ---                    ---    0.02 (0.05)     .66
    a      Slope * cardio                               ---                    ---                    ---    0.01 (0.07)     .89
    a      Slope * diabetes                             ---                    ---                    ---   -0.30 (0.21)     .16
    b      Level                       28.10 (0.10)    <.01   27.94 (0.11)    <.01   27.97 (0.11)    <.01   28.05 (0.14)    <.01
    b      Slope                       -0.27 (0.02)    <.01   -0.27 (0.02)    <.01   -0.27 (0.02)    <.01   -0.29 (0.03)    <.01
    b      Level * age                 -0.04 (0.01)    <.01   -0.03 (0.01)    <.01   -0.03 (0.01)    <.01   -0.03 (0.01)     .01
    b      Level * education                            ---    0.37 (0.14)     .01    0.40 (0.14)     .01    0.32 (0.19)     .09
    b      Level * height                               ---                    ---   -0.02 (0.02)     .30   -0.01 (0.02)     .55
    b      Level * smoking                              ---                    ---                    ---   -0.07 (0.26)     .79
    b      Level * cardio                               ---                    ---                    ---   -0.10 (0.26)     .70
    b      Level * diabetes                             ---                    ---                    ---   -0.52 (0.50)     .29
    b      Slope * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01
    b      Slope * education                            ---   -0.00 (0.02)     .97   -0.00 (0.02)     .92    0.01 (0.03)     .78
    b      Slope * height                               ---                    ---    0.00 (0.00)     .71    0.00 (0.00)     .55
    b      Slope * smoking                              ---                    ---                    ---    0.04 (0.04)     .32
    b      Slope * cardio                               ---                    ---                    ---    0.02 (0.05)     .71
    b      Slope * diabetes                             ---                    ---                    ---    0.12 (0.11)     .27
    a      Var (Level)                 17.51 (2.32)    <.01   17.59 (2.35)    <.01   17.07 (2.31)    <.01   13.98 (2.43)    <.01
    a      Var (Slope)                  0.03 (0.01)     .01    0.03 (0.01)     .01    0.03 (0.01)     .01    0.02 (0.01)     .05
    a      Var (Residual)              21.66 (0.94)    <.01   21.57 (0.96)    <.01   21.67 (0.97)    <.01   21.59 (1.05)    <.01
    a      Covar (Level, Slope)        -0.09 (0.14)     .54   -0.09 (0.14)     .51   -0.07 (0.14)     .59    0.04 (0.14)     .76
    b      Var (Level)                  0.76 (0.20)    <.01    0.74 (0.20)    <.01    0.74 (0.20)    <.01    0.78 (0.23)    <.01
    b      Var (Slope)                  0.05 (0.00)    <.01    0.04 (0.00)    <.01    0.04 (0.00)    <.01    0.04 (0.00)    <.01
    b      Var (Residual)               3.13 (0.07)    <.01    3.07 (0.07)    <.01    3.08 (0.08)    <.01    3.13 (0.09)    <.01
    b      Covar (Level, Slope)         0.05 (0.02)    <.01    0.05 (0.02)    <.01    0.05 (0.02)    <.01    0.06 (0.02)    <.01
   ab      Covar (Levels)               0.24 (0.54)     .65    0.11 (0.55)     .84    0.16 (0.56)     .77    0.10 (0.64)     .88
   ab      Covar (Slopes)               0.01 (0.01)     .14    0.01 (0.01)     .23    0.01 (0.01)     .26    0.01 (0.01)     .34
   ab      Covar (Residuals)            0.89 (0.25)    <.01    0.90 (0.26)    <.01    0.91 (0.27)    <.01    1.07 (0.30)    <.01
    \      Correlation of Levels                      0.067                  0.031                  0.046                  0.029
    \      Correlation of Slopes                      0.329                  0.284                  0.295                  0.268
    \      Correlation of Residuals                   0.108                  0.111                  0.112                  0.130
    \      N                                            511                    489                    480                    412
    \      occasions                                      7                      7                      7                      7
    \      parameters                                    21                     25                     29                     41
    \      LL                                        -9,977                 -9,604                 -9,470                 -8,109
    \      AIC                                       19,995                 19,258                 18,998                 16,299
    \      BIC                                       20,084                 19,363                 19,119                 16,464

##  symbol 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _symbol_


 process   label                                          a                     ae                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------  ---------------------
    a      Level                       21.04 (0.30)    <.01   20.85 (0.34)    <.01   20.82 (0.33)    <.01   21.50 (0.46)    <.01
    a      Slope                       -0.57 (0.03)    <.01   -0.58 (0.03)    <.01   -0.58 (0.03)    <.01   -0.57 (0.04)    <.01
    a      Level * age                 -0.27 (0.03)    <.01   -0.26 (0.03)    <.01   -0.24 (0.03)    <.01   -0.19 (0.04)    <.01
    a      Level * education                            ---    0.53 (0.39)     .17    0.40 (0.40)     .31    0.32 (0.39)     .41
    a      Level * height                               ---                    ---    0.13 (0.04)    <.01    0.15 (0.05)    <.01
    a      Level * smoking                              ---                    ---                    ---    0.22 (0.62)     .73
    a      Level * cardio                               ---                    ---                    ---   -2.27 (0.81)    <.01
    a      Level * diabetes                             ---                    ---                    ---   -1.15 (1.72)     .50
    a      Slope * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01
    a      Slope * education                            ---    0.01 (0.02)     .51    0.01 (0.02)     .56    0.02 (0.03)     .56
    a      Slope * height                               ---                    ---    0.00 (0.00)     .94    0.00 (0.00)     .93
    a      Slope * smoking                              ---                    ---                    ---    0.03 (0.05)     .58
    a      Slope * cardio                               ---                    ---                    ---    0.02 (0.07)     .82
    a      Slope * diabetes                             ---                    ---                    ---   -0.46 (0.35)     .19
    b      Level                       35.41 (0.55)    <.01   33.80 (0.59)    <.01   33.84 (0.59)    <.01   34.49 (0.74)    <.01
    b      Slope                       -0.85 (0.04)    <.01   -0.86 (0.04)    <.01   -0.86 (0.04)    <.01   -0.82 (0.06)    <.01
    b      Level * age                 -0.83 (0.05)    <.01   -0.75 (0.05)    <.01   -0.73 (0.05)    <.01   -0.69 (0.06)    <.01
    b      Level * education                            ---    4.06 (0.69)    <.01    3.96 (0.70)    <.01    3.29 (0.70)    <.01
    b      Level * height                               ---                    ---    0.10 (0.08)     .22    0.17 (0.09)     .05
    b      Level * smoking                              ---                    ---                    ---    0.95 (1.19)     .42
    b      Level * cardio                               ---                    ---                    ---   -1.81 (1.54)     .24
    b      Level * diabetes                             ---                    ---                    ---   -6.88 (2.92)     .02
    b      Slope * age                 -0.03 (0.00)    <.01   -0.02 (0.00)    <.01   -0.02 (0.00)    <.01   -0.02 (0.00)    <.01
    b      Slope * education                            ---    0.01 (0.04)     .80    0.00 (0.04)     .93    0.05 (0.04)     .22
    b      Slope * height                               ---                    ---    0.00 (0.00)     .35    0.00 (0.01)     .99
    b      Slope * smoking                              ---                    ---                    ---   -0.06 (0.08)     .46
    b      Slope * cardio                               ---                    ---                    ---   -0.02 (0.16)     .91
    b      Slope * diabetes                             ---                    ---                    ---   -0.18 (0.56)     .74
    a      Var (Level)                 17.51 (2.27)    <.01   17.65 (2.30)    <.01   17.10 (2.35)    <.01   13.80 (2.37)    <.01
    a      Var (Slope)                  0.03 (0.01)     .03    0.03 (0.01)     .03    0.03 (0.01)     .04    0.02 (0.01)     .08
    a      Var (Residual)              21.65 (1.00)    <.01   21.54 (1.02)    <.01   21.64 (1.03)    <.01   21.55 (1.02)    <.01
    a      Covar (Level, Slope)        -0.06 (0.14)     .65   -0.08 (0.14)     .58   -0.06 (0.14)     .67    0.07 (0.14)     .61
    b      Var (Level)                 80.63 (7.05)    <.01   73.03 (6.75)    <.01   72.57 (6.80)    <.01   69.18 (6.73)    <.01
    b      Var (Slope)                  0.10 (0.03)    <.01    0.09 (0.03)    <.01    0.09 (0.03)    <.01    0.09 (0.02)    <.01
    b      Var (Residual)              27.39 (2.34)    <.01   27.54 (2.45)    <.01   27.44 (2.45)    <.01   27.68 (0.83)    <.01
    b      Covar (Level, Slope)        -0.36 (0.34)     .28   -0.55 (0.33)     .09   -0.57 (0.33)     .08   -0.69 (0.37)     .06
   ab      Covar (Levels)               9.29 (2.71)    <.01    8.50 (2.63)    <.01    7.69 (2.58)    <.01    7.15 (3.22)     .03
   ab      Covar (Slopes)               0.02 (0.01)     .05    0.02 (0.01)     .04    0.02 (0.01)     .05    0.02 (0.01)     .25
   ab      Covar (Residuals)            2.33 (0.77)    <.01    2.37 (0.80)    <.01    2.45 (0.80)    <.01    2.64 (0.95)    <.01
    \      Correlation of Levels                      0.247                  0.237                   0.22                   0.23
    \      Correlation of Slopes                      0.443                  0.473                   0.46                   0.40
    \      Correlation of Residuals                   0.096                  0.097                   0.10                   0.11
    \      N                                            508                    486                    477                    409
    \      occasions                                      7                      7                      7                      7
    \      parameters                                    21                     25                     29                     41
    \      LL                                       -11,783                -11,348                -11,181                 -9,587
    \      AIC                                       23,608                 22,745                 22,421                 19,256
    \      BIC                                       23,697                 22,850                 22,542                 19,420

##  synonyms 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _synonyms_


 process   label                                          a                     ae                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------  ---------------------
    a      Level                       21.04 (0.32)    <.01   20.86 (0.36)    <.01   20.83 (0.36)    <.01   21.48 (0.46)    <.01
    a      Slope                       -0.57 (0.03)    <.01   -0.59 (0.04)    <.01   -0.59 (0.04)    <.01   -0.57 (0.04)    <.01
    a      Level * age                 -0.27 (0.03)    <.01   -0.26 (0.03)    <.01   -0.24 (0.03)    <.01   -0.19 (0.04)    <.01
    a      Level * education                            ---    0.52 (0.41)     .20    0.39 (0.41)     .34    0.31 (0.40)     .44
    a      Level * height                               ---                    ---    0.13 (0.05)     .01    0.15 (0.05)    <.01
    a      Level * smoking                              ---                    ---                    ---    0.27 (0.63)     .66
    a      Level * cardio                               ---                    ---                    ---   -2.20 (0.81)     .01
    a      Level * diabetes                             ---                    ---                    ---   -2.04 (1.68)     .22
    a      Slope * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01
    a      Slope * education                            ---    0.02 (0.03)     .57    0.02 (0.03)     .59    0.02 (0.03)     .53
    a      Slope * height                               ---                    ---    0.00 (0.00)     .92    0.00 (0.00)     .93
    a      Slope * smoking                              ---                    ---                    ---    0.02 (0.05)     .70
    a      Slope * cardio                               ---                    ---                    ---    0.01 (0.07)     .91
    a      Slope * diabetes                             ---                    ---                    ---   -0.32 (0.22)     .15
    b      Level                       18.37 (0.29)    <.01   17.33 (0.28)    <.01   17.41 (0.28)    <.01   17.72 (0.34)    <.01
    b      Slope                       -0.11 (0.02)    <.01   -0.11 (0.02)    <.01   -0.11 (0.02)    <.01   -0.13 (0.02)    <.01
    b      Level * age                 -0.12 (0.03)    <.01   -0.06 (0.02)     .01   -0.05 (0.03)     .04   -0.04 (0.03)     .19
    b      Level * education                            ---    2.91 (0.41)    <.01    2.94 (0.42)    <.01    2.71 (0.48)    <.01
    b      Level * height                               ---                    ---    0.01 (0.04)     .75    0.04 (0.05)     .40
    b      Level * smoking                              ---                    ---                    ---    1.09 (0.61)     .08
    b      Level * cardio                               ---                    ---                    ---   -1.60 (0.84)     .06
    b      Level * diabetes                             ---                    ---                    ---   -2.05 (1.07)     .06
    b      Slope * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01
    b      Slope * education                            ---   -0.00 (0.02)     .81   -0.01 (0.02)     .78    0.00 (0.02)     .99
    b      Slope * height                               ---                    ---    0.00 (0.00)     .31    0.00 (0.00)     .65
    b      Slope * smoking                              ---                    ---                    ---   -0.01 (0.03)     .81
    b      Slope * cardio                               ---                    ---                    ---    0.06 (0.05)     .22
    b      Slope * diabetes                             ---                    ---                    ---    0.13 (0.15)     .41
    a      Var (Level)                 17.59 (2.33)    <.01   17.68 (2.38)    <.01   17.13 (2.33)    <.01   14.06 (2.42)    <.01
    a      Var (Slope)                  0.03 (0.01)     .01    0.03 (0.01)     .01    0.03 (0.01)     .01    0.02 (0.01)     .08
    a      Var (Residual)              21.66 (0.93)    <.01   21.55 (0.96)    <.01   21.65 (0.97)    <.01   21.57 (1.07)    <.01
    a      Covar (Level, Slope)        -0.08 (0.14)     .59   -0.09 (0.14)     .53   -0.07 (0.14)     .62    0.06 (0.14)     .69
    b      Var (Level)                 24.59 (2.09)    <.01   20.10 (1.76)    <.01   19.83 (1.75)    <.01   18.32 (1.70)    <.01
    b      Var (Slope)                  0.01 (0.00)    <.01    0.01 (0.00)    <.01    0.01 (0.00)    <.01    0.01 (0.00)    <.01
    b      Var (Residual)               4.53 (0.20)    <.01    4.49 (0.21)    <.01    4.50 (0.21)    <.01    4.45 (0.24)    <.01
    b      Covar (Level, Slope)        -0.04 (0.07)     .56   -0.05 (0.06)     .42   -0.05 (0.07)     .49   -0.05 (0.07)     .47
   ab      Covar (Levels)               3.02 (1.49)     .04    2.00 (1.37)     .14    1.83 (1.37)     .18    1.67 (1.43)     .24
   ab      Covar (Slopes)               0.01 (0.00)     .20    0.01 (0.00)     .17    0.01 (0.00)     .15    0.00 (0.01)     .47
   ab      Covar (Residuals)            0.64 (0.36)     .07    0.64 (0.36)     .08    0.63 (0.36)     .08    0.63 (0.38)     .10
    \      Correlation of Levels                      0.145                  0.106                  0.099                  0.104
    \      Correlation of Slopes                      0.379                  0.373                  0.392                  0.276
    \      Correlation of Residuals                   0.064                  0.065                  0.064                  0.064
    \      N                                            508                    486                    477                    410
    \      occasions                                      7                      7                      7                      7
    \      parameters                                    21                     25                     29                     41
    \      LL                                       -10,426                -10,019                 -9,869                 -8,456
    \      AIC                                       20,894                 20,088                 19,796                 16,994
    \      BIC                                       20,983                 20,193                 19,917                 17,159

## Summary 

 Study = _SATSA_; Gender = _female_; Process (a) = _grip_

 Computed correlations:

 

label                      process_b      a     ae    aeh   aehplus
----------------------  ------------  -----  -----  -----  --------
Correlation of Levels      analogies   0.10   0.05   0.06     -0.01
Correlation of Levels          block      .      .      .      0.19
Correlation of Levels        digit_b      .      .      .      0.12
Correlation of Levels        digit_f      .      .      .     -0.03
Correlation of Levels         fig_id   0.24   0.23   0.21         .
Correlation of Levels    information   0.14   0.10   0.10      0.10
Correlation of Levels           mmse   0.07   0.03   0.05      0.03
Correlation of Levels         symbol   0.25   0.24   0.22      0.23
Correlation of Levels       synonyms   0.15   0.11   0.10      0.10



label                      process_b      a     ae    aeh   aehplus
----------------------  ------------  -----  -----  -----  --------
Correlation of Slopes      analogies   0.38   0.45   0.45      0.36
Correlation of Slopes          block      .      .      .      0.04
Correlation of Slopes        digit_b      .      .      .      0.32
Correlation of Slopes        digit_f      .      .      .       Inf
Correlation of Slopes         fig_id   0.33   0.32   0.30         .
Correlation of Slopes    information   0.58   0.57   0.60      0.64
Correlation of Slopes           mmse   0.33   0.28   0.29      0.27
Correlation of Slopes         symbol   0.44   0.47   0.46      0.40
Correlation of Slopes       synonyms   0.38   0.37   0.39      0.28



label                         process_b       a      ae     aeh   aehplus
-------------------------  ------------  ------  ------  ------  --------
Correlation of Residuals      analogies    0.11    0.12    0.12      0.12
Correlation of Residuals          block       .       .       .      0.11
Correlation of Residuals        digit_b       .       .       .      0.04
Correlation of Residuals        digit_f       .       .       .      0.03
Correlation of Residuals         fig_id   -0.04   -0.03   -0.03         .
Correlation of Residuals    information    0.06    0.06    0.06      0.06
Correlation of Residuals           mmse    0.11    0.11    0.11      0.13
Correlation of Residuals         symbol    0.10    0.10    0.10      0.11
Correlation of Residuals       synonyms    0.06    0.06    0.06      0.06


P-values for corresponding covariances: 

 

label                     process_b      a     ae    aeh   aehplus
---------------------  ------------  -----  -----  -----  --------
Covariance of Levels      analogies   0.24   0.53   0.50      0.94
Covariance of Levels          block      .      .      .      0.04
Covariance of Levels        digit_b      .      .      .      0.36
Covariance of Levels        digit_f      .      .      .      0.77
Covariance of Levels         fig_id   0.00   0.01   0.01         .
Covariance of Levels    information   0.06   0.18   0.19      0.29
Covariance of Levels           mmse   0.65   0.84   0.77      0.88
Covariance of Levels         symbol   0.00   0.00   0.00      0.03
Covariance of Levels       synonyms   0.04   0.14   0.18      0.24



label                     process_b      a     ae    aeh   aehplus
---------------------  ------------  -----  -----  -----  --------
Covariance of Slopes      analogies   0.09   0.07   0.07      0.20
Covariance of Slopes          block      .      .      .      0.89
Covariance of Slopes        digit_b      .      .      .      0.34
Covariance of Slopes        digit_f      .      .      .      0.45
Covariance of Slopes         fig_id   0.11   0.13   0.16         .
Covariance of Slopes    information   0.00   0.01   0.01      0.03
Covariance of Slopes           mmse   0.14   0.23   0.26      0.34
Covariance of Slopes         symbol   0.05   0.04   0.05      0.25
Covariance of Slopes       synonyms   0.20   0.17   0.15      0.47



label                         process_b      a     ae    aeh   aehplus
-------------------------  ------------  -----  -----  -----  --------
Covariance of  Residuals      analogies   0.00   0.00   0.00      0.00
Covariance of  Residuals          block      .      .      .      0.00
Covariance of  Residuals        digit_b      .      .      .      0.27
Covariance of  Residuals        digit_f      .      .      .      0.32
Covariance of  Residuals         fig_id   0.14   0.29   0.31         .
Covariance of  Residuals    information   0.05   0.07   0.10      0.13
Covariance of  Residuals           mmse   0.00   0.00   0.00      0.00
Covariance of  Residuals         symbol   0.00   0.00   0.00      0.00
Covariance of  Residuals       synonyms   0.07   0.08   0.08      0.10


# male 

 Gender = _male_; Model type: _aehplus_;  Process (a) = _grip_; Process (b): *analogies*, *block*, *digit_b*, *digit_f*, *fig_id*, *information*, *mmse*, *symbol*, *synonyms*


 process   label                                   analogies                  block                digit_b                digit_f             information           mmse            symbol                                synonyms        mean(sd)
---------  -------------------------  ----------------------  ---------------------  ---------------------  ---------------------  ----------------------  -----------------------  ----------------------  ----------------------  --------------
    a      Level                        37.73 (1.50)    <.01   36.86 (0.85)    <.01   36.86 (0.83)    <.01   36.83 (0.82)    <.01    37.69 (1.54)    <.01   37.57 (1.58)    <.01    36.84 (0.83)    <.01      37.67 (1.60)    <.01     37.26(0.44)
    a      Slope                        -0.87 (0.20)    <.01   -0.96 (0.08)    <.01   -0.95 (0.08)    <.01   -0.95 (0.08)    <.01    -0.87 (0.20)    <.01   -0.87 (0.22)    <.01    -0.95 (0.08)    <.01      -0.86 (0.20)    <.01     -0.91(0.05)
    a      Level * age                  -0.51 (0.12)    <.01   -0.47 (0.06)    <.01   -0.46 (0.06)    <.01   -0.47 (0.06)    <.01    -0.50 (0.12)    <.01   -0.51 (0.12)    <.01    -0.47 (0.06)    <.01      -0.50 (0.13)    <.01     -0.49(0.02)
    a      Level * education            -0.08 (0.99)     .93    0.10 (0.57)     .86    0.08 (0.56)     .89    0.07 (0.56)     .90    -0.09 (1.00)     .93   -0.08 (0.99)     .94    0.06 (0.57)     .92       -0.09 (1.02)     .93     -0.00(0.09)
    a      Level * height                0.30 (0.17)     .09    0.37 (0.09)    <.01    0.38 (0.09)    <.01    0.37 (0.09)    <.01     0.30 (0.16)     .07    0.30 (0.17)     .07    0.37 (0.09)    <.01        0.31 (0.17)     .07      0.34(0.04)
    a      Level * smoking               0.64 (1.88)     .73    1.68 (1.04)     .11    1.65 (1.03)     .11    1.68 (1.02)     .10     0.70 (1.89)     .71    0.74 (1.85)     .69    1.74 (1.04)     .10        0.69 (1.95)     .72      1.19(0.53)
    a      Level * cardio               -0.94 (2.77)     .73   -0.41 (1.50)     .78   -0.40 (1.49)     .79   -0.35 (1.50)     .81    -0.93 (2.71)     .73   -0.89 (2.68)     .74    -0.38 (1.43)     .79      -0.93 (2.89)     .75     -0.65(0.29)
    a      Level * diabetes             -1.81 (5.96)     .76   -2.66 (3.13)     .40   -2.50 (4.97)     .62   -2.51 (3.94)     .52    -1.81 (6.42)     .78   -1.78 (8.71)     .84    -2.56 (3.08)     .41      -1.92 (5.58)     .73     -2.19(0.39)
    a      Slope * age                  -0.02 (0.02)     .30   -0.02 (0.01)    <.01   -0.02 (0.01)    <.01   -0.02 (0.01)    <.01    -0.02 (0.01)     .25   -0.02 (0.01)     .27    -0.02 (0.01)    <.01      -0.02 (0.01)     .25     -0.02(0.00)
    a      Slope * education            -0.00 (0.10)     .99   -0.01 (0.04)     .82   -0.00 (0.04)     .94   -0.00 (0.04)     .95    -0.00 (0.10)     .99    0.00 (0.10)     .99    -0.00 (0.04)     .95       0.00 (0.10)     .99     -0.00(0.00)
    a      Slope * height               -0.00 (0.02)     .87   -0.00 (0.01)     .78   -0.00 (0.01)     .71   -0.00 (0.01)     .75    -0.00 (0.02)     .88   -0.00 (0.02)     .91    -0.00 (0.01)     .68      -0.00 (0.02)     .84     -0.00(0.00)
    a      Slope * smoking               0.02 (0.21)     .93    0.01 (0.08)     .86    0.02 (0.08)     .79    0.02 (0.08)     .80     0.01 (0.20)     .95    0.00 (0.20)     .98    0.01 (0.08)     .94        0.00 (0.20)     .99      0.01(0.01)
    a      Slope * cardio                0.06 (0.26)     .81    0.05 (0.10)     .62    0.05 (0.10)     .62    0.05 (0.11)     .62     0.06 (0.25)     .80    0.05 (0.25)     .84    0.04 (0.10)     .66        0.04 (0.25)     .87      0.05(0.01)
    a      Slope * diabetes             -0.19 (1.01)     .85   -0.11 (0.44)     .81   -0.18 (0.81)     .82   -0.19 (0.51)     .71    -0.21 (1.29)     .87   -0.23 (1.12)     .84    -0.19 (0.90)     .83      -0.17 (1.01)     .87     -0.18(0.04)
    b      Level                        13.13 (0.47)    <.01   15.97 (0.77)    <.01    3.83 (0.18)    <.01    5.34 (0.14)    <.01    30.60 (0.85)    <.01   27.13 (0.24)    <.01    32.62 (1.15)    <.01      15.91 (0.59)    <.01             ---
    b      Slope                        -0.11 (0.04)    <.01   -0.41 (0.06)    <.01   -0.05 (0.01)    <.01   -0.02 (0.01)     .08    -0.16 (0.06)    <.01   -0.14 (0.03)    <.01    -0.89 (0.08)    <.01      -0.07 (0.04)     .05             ---
    b      Level * age                  -0.17 (0.03)    <.01   -0.38 (0.06)    <.01   -0.02 (0.01)     .05   -0.01 (0.01)     .20    -0.14 (0.06)     .03   -0.07 (0.02)    <.01    -0.70 (0.08)    <.01      -0.10 (0.04)     .02             ---
    b      Level * education             1.58 (0.23)    <.01    2.31 (0.47)    <.01    0.31 (0.09)    <.01    0.25 (0.07)    <.01     2.60 (0.60)    <.01    0.29 (0.18)     .10    3.72 (0.66)    <.01        2.37 (0.37)    <.01             ---
    b      Level * height                0.10 (0.04)    <.01    0.10 (0.07)     .16    0.04 (0.01)    <.01    0.05 (0.01)    <.01     0.10 (0.08)     .19    0.06 (0.03)     .04    0.23 (0.10)     .02        0.15 (0.06)     .01             ---
    b      Level * smoking               0.02 (0.47)     .96    0.32 (0.85)     .70    0.03 (0.17)     .85    0.01 (0.14)     .97     0.91 (0.91)     .32    0.67 (0.28)     .02    -0.42 (1.27)     .74       1.20 (0.66)     .07             ---
    b      Level * cardio               -0.19 (0.66)     .77   -0.24 (1.06)     .82   -0.22 (0.21)     .30   -0.06 (0.22)     .78    -2.67 (1.18)     .02   -0.42 (0.32)     .19    -1.12 (1.94)     .56      -2.05 (0.91)     .02             ---
    b      Level * diabetes             -1.32 (2.11)     .53   -4.29 (5.79)     .46   -0.25 (1.30)     .84   -0.74 (0.61)     .22     1.56 (3.32)     .64    0.13 (1.46)     .93    -0.74 (12.06)     .95     -0.93 (2.54)     .71             ---
    b      Slope * age                  -0.00 (0.00)     .23   -0.02 (0.00)    <.01   -0.00 (0.00)     .02   -0.00 (0.00)     .20    -0.01 (0.00)    <.01   -0.01 (0.00)     .03    -0.03 (0.01)    <.01      -0.00 (0.00)     .02             ---
    b      Slope * education             0.00 (0.02)     .77   -0.03 (0.02)     .26   -0.01 (0.01)     .05   -0.00 (0.01)     .35    -0.02 (0.03)     .45    0.01 (0.01)     .64    0.01 (0.04)     .87       -0.04 (0.01)     .02             ---
    b      Slope * height                0.00 (0.00)     .57    0.01 (0.00)     .21    0.00 (0.00)     .91   -0.00 (0.00)     .40     0.00 (0.00)     .52    0.00 (0.00)     .98    0.00 (0.01)     .36       -0.00 (0.00)     .84             ---
    b      Slope * smoking               0.01 (0.04)     .73   -0.04 (0.06)     .56    0.01 (0.01)     .41    0.01 (0.01)     .60     0.02 (0.05)     .73   -0.03 (0.04)     .37    -0.13 (0.09)     .14      -0.02 (0.03)     .63             ---
    b      Slope * cardio                0.02 (0.05)     .69   -0.00 (0.11)     .97   -0.01 (0.02)     .65   -0.01 (0.02)     .48     0.01 (0.06)     .85    0.00 (0.04)     .93    -0.02 (0.14)     .91       0.04 (0.05)     .46             ---
    b      Slope * diabetes             -0.14 (0.21)     .51    0.16 (0.48)     .74    0.03 (0.23)     .91    0.03 (0.13)     .81     0.05 (0.31)     .86    0.07 (0.16)     .67    -0.03 (1.02)     .98       0.10 (0.32)     .76             ---
    a      Var (Level)                 27.40 (14.95)     .07   35.60 (5.67)    <.01   35.40 (5.38)    <.01   35.36 (5.23)    <.01   26.19 (15.02)     .08   27.57 (15.46)     .07   35.59 (5.30)    <.01     27.49 (16.13)     .09     31.32(4.47)
    a      Var (Slope)                   0.04 (0.12)     .77    0.03 (0.03)     .31    0.04 (0.03)     .21    0.04 (0.03)     .22     0.04 (0.12)     .74    0.04 (0.12)     .75    0.04 (0.03)     .25        0.03 (0.12)     .79      0.04(0.00)
    a      Var (Residual)              117.10 (3.67)    <.01   35.19 (2.28)    <.01   34.99 (2.26)    <.01   34.98 (2.30)    <.01   117.55 (3.29)    <.01   117.01 (3.57)    <.01   35.02 (2.32)    <.01     117.27 (3.04)    <.01    76.14(43.93)
    a      Covar (Level, Slope)          0.79 (1.11)     .48    0.34 (0.39)     .37    0.29 (0.36)     .42    0.30 (0.35)     .39     0.81 (1.09)     .46    0.81 (1.14)     .48    0.33 (0.35)     .35        0.81 (1.11)     .46      0.56(0.26)
    b      Var (Level)                   6.86 (1.05)    <.01   32.88 (3.93)    <.01    0.67 (0.11)    <.01    0.64 (0.11)    <.01    40.09 (4.55)    <.01    1.85 (0.26)    <.01    76.28 (9.30)    <.01      20.59 (2.51)    <.01             ---
    b      Var (Slope)                   0.00 (0.00)     .40    0.04 (0.01)    <.01    0.00 (0.00)     .59    0.00 (0.00)     .66     0.04 (0.01)    <.01    0.01 (0.00)    <.01    0.07 (0.03)     .01        0.01 (0.00)     .08             ---
    b      Var (Residual)                5.59 (0.31)    <.01    9.73 (0.56)    <.01    0.84 (0.04)    <.01    0.70 (0.03)    <.01     7.40 (0.36)    <.01    1.87 (0.08)    <.01    23.70 (1.06)    <.01       4.00 (0.26)    <.01             ---
    b      Covar (Level, Slope)         -0.04 (0.07)     .58   -0.28 (0.20)     .15   -0.00 (0.01)     .78   -0.00 (0.01)     .82    -0.45 (0.20)     .02   -0.04 (0.03)     .20    -0.85 (0.39)     .03      -0.07 (0.09)     .46             ---
   ab      Covar (Levels)                1.15 (3.39)     .73   12.35 (3.77)    <.01    1.43 (0.64)     .03    0.84 (0.66)     .20     4.48 (7.53)     .55    2.19 (2.13)     .30    14.81 (5.05)    <.01       6.52 (4.91)     .18             ---
   ab      Covar (Slopes)                0.01 (0.02)     .79    0.02 (0.01)     .09    0.00 (0.00)     .71    0.00 (0.00)     .70     0.02 (0.04)     .59    0.01 (0.02)     .59    -0.00 (0.02)     .91      -0.00 (0.02)     .90             ---
   ab      Covar (Residuals)             3.61 (2.34)     .12    2.10 (0.87)     .01   -0.14 (0.26)     .58    0.16 (0.23)     .47     1.04 (2.71)     .70    0.74 (1.33)     .58    3.38 (1.36)     .01       -0.71 (1.82)     .70             ---
    \      Correlation of Levels                       0.084                   0.36                  0.295                  0.177                   0.138           0.31            0.284                                    0.274      0.24(0.10)
    \      Correlation of Slopes                       0.500                   0.66                    Inf                    Inf                   0.562           0.46            -0.038                                  -0.191        Inf(NaN)
    \      Correlation of Residuals                    0.141                   0.11                 -0.026                  0.033                   0.035           0.05            0.117                                   -0.033      0.05(0.07)
    \      N                                             300                    298                    299                    299                     300            300            299                                        300    299.38(0.74)
    \      occasions                                       7                      7                      7                      7                       7             7             7                                            7      7.00(0.00)
    \      parameters                                     41                     41                     41                     41                      41            41             41                                          41     41.00(0.00)
    \      LL                                         -6,705                 -6,738                 -5,280                 -5,201                  -7,277          -6,355           -7,127                                  -6,844   -6,441(  791)
    \      AIC                                        13,492                 13,557                 10,642                 10,484                  14,637          12,793           14,335                                  13,769   12,964(1,582)
    \      BIC                                        13,644                 13,709                 10,794                 10,636                  14,789          12,945           14,487                                  13,921   13,116(1,582)

##  analogies 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _analogies_


 process   label                                           a                      ae                     aeh                 aehplus
---------  -------------------------  ----------------------  ----------------------  ----------------------  ----------------------
    a      Level                        38.58 (0.94)    <.01    38.57 (1.06)    <.01    38.20 (1.05)    <.01    37.73 (1.50)    <.01
    a      Slope                        -0.90 (0.13)    <.01    -0.90 (0.14)    <.01    -0.90 (0.14)    <.01    -0.87 (0.20)    <.01
    a      Level * age                  -0.57 (0.10)    <.01    -0.58 (0.10)    <.01    -0.52 (0.10)    <.01    -0.51 (0.12)    <.01
    a      Level * education                             ---     0.00 (0.83)     .99    -0.32 (0.88)     .72    -0.08 (0.99)     .93
    a      Level * height                                ---                     ---     0.27 (0.15)     .07     0.30 (0.17)     .09
    a      Level * smoking                               ---                     ---                     ---     0.64 (1.88)     .73
    a      Level * cardio                                ---                     ---                     ---    -0.94 (2.77)     .73
    a      Level * diabetes                              ---                     ---                     ---    -1.81 (5.96)     .76
    a      Slope * age                  -0.02 (0.01)     .14    -0.02 (0.01)     .18    -0.02 (0.01)     .18    -0.02 (0.02)     .30
    a      Slope * education                             ---     0.02 (0.07)     .81     0.02 (0.08)     .82    -0.00 (0.10)     .99
    a      Slope * height                                ---                     ---    -0.00 (0.01)     .89    -0.00 (0.02)     .87
    a      Slope * smoking                               ---                     ---                     ---     0.02 (0.21)     .93
    a      Slope * cardio                                ---                     ---                     ---     0.06 (0.26)     .81
    a      Slope * diabetes                              ---                     ---                     ---    -0.19 (1.01)     .85
    b      Level                        14.22 (0.33)    <.01    13.17 (0.35)    <.01    13.04 (0.35)    <.01    13.13 (0.47)    <.01
    b      Slope                        -0.11 (0.02)    <.01    -0.11 (0.03)    <.01    -0.11 (0.03)    <.01    -0.11 (0.04)    <.01
    b      Level * age                  -0.22 (0.03)    <.01    -0.20 (0.03)    <.01    -0.18 (0.03)    <.01    -0.17 (0.03)    <.01
    b      Level * education                             ---     1.74 (0.19)    <.01     1.60 (0.20)    <.01     1.58 (0.23)    <.01
    b      Level * height                                ---                     ---     0.10 (0.03)    <.01     0.10 (0.04)    <.01
    b      Level * smoking                               ---                     ---                     ---     0.02 (0.47)     .96
    b      Level * cardio                                ---                     ---                     ---    -0.19 (0.66)     .77
    b      Level * diabetes                              ---                     ---                     ---    -1.32 (2.11)     .53
    b      Slope * age                  -0.00 (0.00)     .02    -0.00 (0.00)     .06    -0.00 (0.00)     .05    -0.00 (0.00)     .23
    b      Slope * education                             ---     0.01 (0.02)     .62     0.01 (0.02)     .66     0.00 (0.02)     .77
    b      Slope * height                                ---                     ---     0.00 (0.00)     .82     0.00 (0.00)     .57
    b      Slope * smoking                               ---                     ---                     ---     0.01 (0.04)     .73
    b      Slope * cardio                                ---                     ---                     ---     0.02 (0.05)     .69
    b      Slope * diabetes                              ---                     ---                     ---    -0.14 (0.21)     .51
    a      Var (Level)                 35.66 (12.61)    <.01   36.14 (13.06)     .01   31.87 (13.37)     .02   27.40 (14.95)     .07
    a      Var (Slope)                   0.02 (0.09)     .81     0.02 (0.09)     .82     0.02 (0.10)     .80     0.04 (0.12)     .77
    a      Var (Residual)              103.07 (2.08)    <.01   104.43 (2.18)    <.01   105.56 (2.77)    <.01   117.10 (3.67)    <.01
    a      Covar (Level, Slope)          0.64 (0.93)     .49     0.64 (0.95)     .50     0.67 (0.94)     .48     0.79 (1.11)     .48
    b      Var (Level)                  10.25 (1.41)    <.01     7.20 (1.01)    <.01     6.88 (0.96)    <.01     6.86 (1.05)    <.01
    b      Var (Slope)                   0.00 (0.00)     .33     0.00 (0.00)     .40     0.00 (0.00)     .41     0.00 (0.00)     .40
    b      Var (Residual)                5.53 (0.29)    <.01     5.56 (0.29)    <.01     5.59 (0.29)    <.01     5.59 (0.31)    <.01
    b      Covar (Level, Slope)         -0.02 (0.07)     .78    -0.02 (0.06)     .76    -0.03 (0.06)     .63    -0.04 (0.07)     .58
   ab      Covar (Levels)                2.09 (3.13)     .50     1.99 (2.93)     .50     0.98 (2.93)     .74     1.15 (3.39)     .73
   ab      Covar (Slopes)                0.00 (0.02)     .76     0.00 (0.02)     .79     0.00 (0.02)     .79     0.01 (0.02)     .79
   ab      Covar (Residuals)             3.24 (1.82)     .07     3.28 (1.88)     .08     3.32 (1.93)     .08     3.61 (2.34)     .12
    \      Correlation of Levels                        0.11                    0.12                   0.066                   0.084
    \      Correlation of Slopes                        0.53                    0.53                   0.500                   0.500
    \      Correlation of Residuals                     0.14                    0.14                   0.137                   0.141
    \      N                                             347                     341                     338                     300
    \      occasions                                       7                       7                       7                       7
    \      parameters                                     21                      25                      29                      41
    \      LL                                         -7,870                  -7,703                  -7,630                  -6,705
    \      AIC                                        15,782                  15,456                  15,317                  13,492
    \      BIC                                        15,863                  15,552                  15,428                  13,644

##  block 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _block_


 process   label                                    aehplus
---------  -------------------------  ---------------------
    a      Level                       36.86 (0.85)    <.01
    a      Slope                       -0.96 (0.08)    <.01
    a      Level * age                 -0.47 (0.06)    <.01
    a      Level * education            0.10 (0.57)     .86
    a      Level * height               0.37 (0.09)    <.01
    a      Level * smoking              1.68 (1.04)     .11
    a      Level * cardio              -0.41 (1.50)     .78
    a      Level * diabetes            -2.66 (3.13)     .40
    a      Slope * age                 -0.02 (0.01)    <.01
    a      Slope * education           -0.01 (0.04)     .82
    a      Slope * height              -0.00 (0.01)     .78
    a      Slope * smoking              0.01 (0.08)     .86
    a      Slope * cardio               0.05 (0.10)     .62
    a      Slope * diabetes            -0.11 (0.44)     .81
    b      Level                       15.97 (0.77)    <.01
    b      Slope                       -0.41 (0.06)    <.01
    b      Level * age                 -0.38 (0.06)    <.01
    b      Level * education            2.31 (0.47)    <.01
    b      Level * height               0.10 (0.07)     .16
    b      Level * smoking              0.32 (0.85)     .70
    b      Level * cardio              -0.24 (1.06)     .82
    b      Level * diabetes            -4.29 (5.79)     .46
    b      Slope * age                 -0.02 (0.00)    <.01
    b      Slope * education           -0.03 (0.02)     .26
    b      Slope * height               0.01 (0.00)     .21
    b      Slope * smoking             -0.04 (0.06)     .56
    b      Slope * cardio              -0.00 (0.11)     .97
    b      Slope * diabetes             0.16 (0.48)     .74
    a      Var (Level)                 35.60 (5.67)    <.01
    a      Var (Slope)                  0.03 (0.03)     .31
    a      Var (Residual)              35.19 (2.28)    <.01
    a      Covar (Level, Slope)         0.34 (0.39)     .37
    b      Var (Level)                 32.88 (3.93)    <.01
    b      Var (Slope)                  0.04 (0.01)    <.01
    b      Var (Residual)               9.73 (0.56)    <.01
    b      Covar (Level, Slope)        -0.28 (0.20)     .15
   ab      Covar (Levels)              12.35 (3.77)    <.01
   ab      Covar (Slopes)               0.02 (0.01)     .09
   ab      Covar (Residuals)            2.10 (0.87)     .01
    \      Correlation of Levels                       0.36
    \      Correlation of Slopes                       0.66
    \      Correlation of Residuals                    0.11
    \      N                                            298
    \      occasions                                      7
    \      parameters                                    41
    \      LL                                        -6,738
    \      AIC                                       13,557
    \      BIC                                       13,709

##  digit_b 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _digit_b_


 process   label                                    aehplus
---------  -------------------------  ---------------------
    a      Level                       36.86 (0.83)    <.01
    a      Slope                       -0.95 (0.08)    <.01
    a      Level * age                 -0.46 (0.06)    <.01
    a      Level * education            0.08 (0.56)     .89
    a      Level * height               0.38 (0.09)    <.01
    a      Level * smoking              1.65 (1.03)     .11
    a      Level * cardio              -0.40 (1.49)     .79
    a      Level * diabetes            -2.50 (4.97)     .62
    a      Slope * age                 -0.02 (0.01)    <.01
    a      Slope * education           -0.00 (0.04)     .94
    a      Slope * height              -0.00 (0.01)     .71
    a      Slope * smoking              0.02 (0.08)     .79
    a      Slope * cardio               0.05 (0.10)     .62
    a      Slope * diabetes            -0.18 (0.81)     .82
    b      Level                        3.83 (0.18)    <.01
    b      Slope                       -0.05 (0.01)    <.01
    b      Level * age                 -0.02 (0.01)     .05
    b      Level * education            0.31 (0.09)    <.01
    b      Level * height               0.04 (0.01)    <.01
    b      Level * smoking              0.03 (0.17)     .85
    b      Level * cardio              -0.22 (0.21)     .30
    b      Level * diabetes            -0.25 (1.30)     .84
    b      Slope * age                 -0.00 (0.00)     .02
    b      Slope * education           -0.01 (0.01)     .05
    b      Slope * height               0.00 (0.00)     .91
    b      Slope * smoking              0.01 (0.01)     .41
    b      Slope * cardio              -0.01 (0.02)     .65
    b      Slope * diabetes             0.03 (0.23)     .91
    a      Var (Level)                 35.40 (5.38)    <.01
    a      Var (Slope)                  0.04 (0.03)     .21
    a      Var (Residual)              34.99 (2.26)    <.01
    a      Covar (Level, Slope)         0.29 (0.36)     .42
    b      Var (Level)                  0.67 (0.11)    <.01
    b      Var (Slope)                  0.00 (0.00)     .59
    b      Var (Residual)               0.84 (0.04)    <.01
    b      Covar (Level, Slope)        -0.00 (0.01)     .78
   ab      Covar (Levels)               1.43 (0.64)     .03
   ab      Covar (Slopes)               0.00 (0.00)     .71
   ab      Covar (Residuals)           -0.14 (0.26)     .58
    \      Correlation of Levels                      0.295
    \      Correlation of Slopes                        Inf
    \      Correlation of Residuals                  -0.026
    \      N                                            299
    \      occasions                                      7
    \      parameters                                    41
    \      LL                                        -5,280
    \      AIC                                       10,642
    \      BIC                                       10,794

##  digit_f 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _digit_f_


 process   label                                    aehplus
---------  -------------------------  ---------------------
    a      Level                       36.83 (0.82)    <.01
    a      Slope                       -0.95 (0.08)    <.01
    a      Level * age                 -0.47 (0.06)    <.01
    a      Level * education            0.07 (0.56)     .90
    a      Level * height               0.37 (0.09)    <.01
    a      Level * smoking              1.68 (1.02)     .10
    a      Level * cardio              -0.35 (1.50)     .81
    a      Level * diabetes            -2.51 (3.94)     .52
    a      Slope * age                 -0.02 (0.01)    <.01
    a      Slope * education           -0.00 (0.04)     .95
    a      Slope * height              -0.00 (0.01)     .75
    a      Slope * smoking              0.02 (0.08)     .80
    a      Slope * cardio               0.05 (0.11)     .62
    a      Slope * diabetes            -0.19 (0.51)     .71
    b      Level                        5.34 (0.14)    <.01
    b      Slope                       -0.02 (0.01)     .08
    b      Level * age                 -0.01 (0.01)     .20
    b      Level * education            0.25 (0.07)    <.01
    b      Level * height               0.05 (0.01)    <.01
    b      Level * smoking              0.01 (0.14)     .97
    b      Level * cardio              -0.06 (0.22)     .78
    b      Level * diabetes            -0.74 (0.61)     .22
    b      Slope * age                 -0.00 (0.00)     .20
    b      Slope * education           -0.00 (0.01)     .35
    b      Slope * height              -0.00 (0.00)     .40
    b      Slope * smoking              0.01 (0.01)     .60
    b      Slope * cardio              -0.01 (0.02)     .48
    b      Slope * diabetes             0.03 (0.13)     .81
    a      Var (Level)                 35.36 (5.23)    <.01
    a      Var (Slope)                  0.04 (0.03)     .22
    a      Var (Residual)              34.98 (2.30)    <.01
    a      Covar (Level, Slope)         0.30 (0.35)     .39
    b      Var (Level)                  0.64 (0.11)    <.01
    b      Var (Slope)                  0.00 (0.00)     .66
    b      Var (Residual)               0.70 (0.03)    <.01
    b      Covar (Level, Slope)        -0.00 (0.01)     .82
   ab      Covar (Levels)               0.84 (0.66)     .20
   ab      Covar (Slopes)               0.00 (0.00)     .70
   ab      Covar (Residuals)            0.16 (0.23)     .47
    \      Correlation of Levels                      0.177
    \      Correlation of Slopes                        Inf
    \      Correlation of Residuals                   0.033
    \      N                                            299
    \      occasions                                      7
    \      parameters                                    41
    \      LL                                        -5,201
    \      AIC                                       10,484
    \      BIC                                       10,636

##  fig_id 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _fig_id_


 process   label                                           a                      ae                     aeh
---------  -------------------------  ----------------------  ----------------------  ----------------------
    a      Level                        38.65 (0.94)    <.01    38.61 (1.06)    <.01    38.24 (1.05)    <.01
    a      Slope                        -0.92 (0.13)    <.01    -0.94 (0.14)    <.01    -0.93 (0.14)    <.01
    a      Level * age                  -0.57 (0.10)    <.01    -0.58 (0.10)    <.01    -0.52 (0.11)    <.01
    a      Level * education                             ---     0.04 (0.85)     .96    -0.29 (0.92)     .75
    a      Level * height                                ---                     ---     0.27 (0.15)     .06
    a      Level * smoking                               ---                     ---                     ---
    a      Level * cardio                                ---                     ---                     ---
    a      Level * diabetes                              ---                     ---                     ---
    a      Slope * age                  -0.02 (0.01)     .10    -0.02 (0.01)     .12    -0.02 (0.01)     .12
    a      Slope * education                             ---     0.01 (0.08)     .88     0.01 (0.09)     .87
    a      Slope * height                                ---                     ---    -0.00 (0.01)     .81
    a      Slope * smoking                               ---                     ---                     ---
    a      Slope * cardio                                ---                     ---                     ---
    a      Slope * diabetes                              ---                     ---                     ---
    b      Level                        26.79 (0.51)    <.01    25.52 (0.60)    <.01    25.37 (0.62)    <.01
    b      Slope                        -0.57 (0.06)    <.01    -0.58 (0.06)    <.01    -0.59 (0.06)    <.01
    b      Level * age                  -0.44 (0.05)    <.01    -0.41 (0.05)    <.01    -0.38 (0.05)    <.01
    b      Level * education                             ---     2.15 (0.34)    <.01     1.96 (0.35)    <.01
    b      Level * height                                ---                     ---     0.13 (0.06)     .04
    b      Level * smoking                               ---                     ---                     ---
    b      Level * cardio                                ---                     ---                     ---
    b      Level * diabetes                              ---                     ---                     ---
    b      Slope * age                  -0.02 (0.00)    <.01    -0.02 (0.00)    <.01    -0.02 (0.00)    <.01
    b      Slope * education                             ---     0.03 (0.03)     .23     0.03 (0.03)     .35
    b      Slope * height                                ---                     ---     0.01 (0.00)     .10
    b      Slope * smoking                               ---                     ---                     ---
    b      Slope * cardio                                ---                     ---                     ---
    b      Slope * diabetes                              ---                     ---                     ---
    a      Var (Level)                 37.06 (12.91)    <.01   37.78 (13.55)    <.01   33.62 (14.32)     .02
    a      Var (Slope)                   0.02 (0.09)     .83     0.02 (0.09)     .83     0.02 (0.10)     .81
    a      Var (Residual)              102.87 (1.63)    <.01   104.19 (1.72)    <.01   105.21 (2.27)    <.01
    a      Covar (Level, Slope)          0.61 (0.93)     .51     0.60 (0.96)     .53     0.64 (0.98)     .51
    b      Var (Level)                  34.33 (3.91)    <.01    30.19 (3.68)    <.01    29.73 (3.75)    <.01
    b      Var (Slope)                   0.07 (0.02)    <.01     0.07 (0.02)    <.01     0.07 (0.02)    <.01
    b      Var (Residual)               15.79 (0.77)    <.01    15.90 (0.80)    <.01    16.01 (0.81)    <.01
    b      Covar (Level, Slope)         -0.03 (0.19)     .88    -0.13 (0.21)     .53    -0.20 (0.21)     .34
   ab      Covar (Levels)               13.34 (5.31)     .01    13.59 (5.11)     .01    12.04 (5.04)     .02
   ab      Covar (Slopes)                0.02 (0.04)     .68     0.02 (0.05)     .69     0.02 (0.05)     .71
   ab      Covar (Residuals)            -4.44 (2.54)     .08    -4.46 (2.65)     .09    -4.39 (2.71)     .10
    \      Correlation of Levels                        0.37                    0.40                    0.38
    \      Correlation of Slopes                        0.47                    0.47                    0.44
    \      Correlation of Residuals                    -0.11                   -0.11                   -0.11
    \      N                                             347                     341                     338
    \      occasions                                       7                       7                       7
    \      parameters                                     21                      25                      29
    \      LL                                         -8,731                  -8,580                  -8,501
    \      AIC                                        17,504                  17,210                  17,059
    \      BIC                                        17,585                  17,306                  17,170

##  information 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _information_


 process   label                                           a                      ae                     aeh                 aehplus
---------  -------------------------  ----------------------  ----------------------  ----------------------  ----------------------
    a      Level                        38.55 (0.93)    <.01    38.53 (1.06)    <.01    38.17 (1.06)    <.01    37.69 (1.54)    <.01
    a      Slope                        -0.89 (0.13)    <.01    -0.90 (0.14)    <.01    -0.89 (0.14)    <.01    -0.87 (0.20)    <.01
    a      Level * age                  -0.57 (0.09)    <.01    -0.57 (0.10)    <.01    -0.52 (0.10)    <.01    -0.50 (0.12)    <.01
    a      Level * education                             ---     0.01 (0.82)     .99    -0.31 (0.88)     .72    -0.09 (1.00)     .93
    a      Level * height                                ---                     ---     0.27 (0.14)     .06     0.30 (0.16)     .07
    a      Level * smoking                               ---                     ---                     ---     0.70 (1.89)     .71
    a      Level * cardio                                ---                     ---                     ---    -0.93 (2.71)     .73
    a      Level * diabetes                              ---                     ---                     ---    -1.81 (6.42)     .78
    a      Slope * age                  -0.02 (0.01)     .14    -0.02 (0.01)     .16    -0.02 (0.01)     .16    -0.02 (0.01)     .25
    a      Slope * education                             ---     0.01 (0.07)     .83     0.02 (0.08)     .84    -0.00 (0.10)     .99
    a      Slope * height                                ---                     ---    -0.00 (0.01)     .93    -0.00 (0.02)     .88
    a      Slope * smoking                               ---                     ---                     ---     0.01 (0.20)     .95
    a      Slope * cardio                                ---                     ---                     ---     0.06 (0.25)     .80
    a      Slope * diabetes                              ---                     ---                     ---    -0.21 (1.29)     .87
    b      Level                        32.66 (0.55)    <.01    30.86 (0.55)    <.01    30.70 (0.55)    <.01    30.60 (0.85)    <.01
    b      Slope                        -0.20 (0.04)    <.01    -0.18 (0.04)    <.01    -0.19 (0.04)    <.01    -0.16 (0.06)    <.01
    b      Level * age                  -0.19 (0.06)    <.01    -0.16 (0.05)    <.01    -0.14 (0.06)     .01    -0.14 (0.06)     .03
    b      Level * education                             ---     2.86 (0.52)    <.01     2.71 (0.55)    <.01     2.60 (0.60)    <.01
    b      Level * height                                ---                     ---     0.12 (0.07)     .10     0.10 (0.08)     .19
    b      Level * smoking                               ---                     ---                     ---     0.91 (0.91)     .32
    b      Level * cardio                                ---                     ---                     ---    -2.67 (1.18)     .02
    b      Level * diabetes                              ---                     ---                     ---     1.56 (3.32)     .64
    b      Slope * age                  -0.02 (0.00)    <.01    -0.02 (0.00)    <.01    -0.02 (0.00)    <.01    -0.01 (0.00)    <.01
    b      Slope * education                             ---    -0.02 (0.03)     .54    -0.02 (0.03)     .53    -0.02 (0.03)     .45
    b      Slope * height                                ---                     ---     0.00 (0.00)     .78     0.00 (0.00)     .52
    b      Slope * smoking                               ---                     ---                     ---     0.02 (0.05)     .73
    b      Slope * cardio                                ---                     ---                     ---     0.01 (0.06)     .85
    b      Slope * diabetes                              ---                     ---                     ---     0.05 (0.31)     .86
    a      Var (Level)                 34.62 (12.35)    <.01   34.91 (12.80)     .01   30.80 (13.16)     .02   26.19 (15.02)     .08
    a      Var (Slope)                   0.02 (0.09)     .82     0.02 (0.09)     .82     0.02 (0.10)     .80     0.04 (0.12)     .74
    a      Var (Residual)              103.47 (1.93)    <.01   104.88 (2.03)    <.01   105.98 (2.52)    <.01   117.55 (3.29)    <.01
    a      Covar (Level, Slope)          0.67 (0.92)     .46     0.68 (0.94)     .47     0.69 (0.93)     .46     0.81 (1.09)     .46
    b      Var (Level)                  46.83 (4.57)    <.01    39.81 (3.95)    <.01    39.55 (3.93)    <.01    40.09 (4.55)    <.01
    b      Var (Slope)                   0.05 (0.01)    <.01     0.05 (0.01)    <.01     0.05 (0.01)    <.01     0.04 (0.01)    <.01
    b      Var (Residual)                7.07 (0.30)    <.01     7.04 (0.30)    <.01     7.04 (0.30)    <.01     7.40 (0.36)    <.01
    b      Covar (Level, Slope)         -0.39 (0.19)     .04    -0.35 (0.17)     .04    -0.37 (0.17)     .04    -0.45 (0.20)     .02
   ab      Covar (Levels)                4.70 (6.45)     .47     4.70 (6.25)     .45     3.73 (6.22)     .55     4.48 (7.53)     .55
   ab      Covar (Slopes)                0.02 (0.03)     .57     0.02 (0.03)     .60     0.02 (0.04)     .60     0.02 (0.04)     .59
   ab      Covar (Residuals)             1.13 (1.93)     .56     1.18 (1.98)     .55     1.22 (2.02)     .54     1.04 (2.71)     .70
    \      Correlation of Levels                       0.117                   0.126                   0.107                   0.138
    \      Correlation of Slopes                       0.545                   0.484                   0.517                   0.562
    \      Correlation of Residuals                    0.042                   0.043                   0.045                   0.035
    \      N                                             347                     341                     338                     300
    \      occasions                                       7                       7                       7                       7
    \      parameters                                     21                      25                      29                      41
    \      LL                                         -8,506                  -8,352                  -8,276                  -7,277
    \      AIC                                        17,055                  16,754                  16,610                  14,637
    \      BIC                                        17,135                  16,849                  16,721                  14,789

##  mmse 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _mmse_


 process   label                                           a                      ae                     aeh                 aehplus
---------  -------------------------  ----------------------  ----------------------  ----------------------  ----------------------
    a      Level                        38.47 (0.98)    <.01    38.45 (1.10)    <.01    38.09 (1.09)    <.01    37.57 (1.58)    <.01
    a      Slope                        -0.92 (0.14)    <.01    -0.94 (0.15)    <.01    -0.92 (0.15)    <.01    -0.87 (0.22)    <.01
    a      Level * age                  -0.58 (0.10)    <.01    -0.58 (0.10)    <.01    -0.52 (0.11)    <.01    -0.51 (0.12)    <.01
    a      Level * education                             ---     0.02 (0.83)     .98    -0.30 (0.88)     .73    -0.08 (0.99)     .94
    a      Level * height                                ---                     ---     0.27 (0.14)     .06     0.30 (0.17)     .07
    a      Level * smoking                               ---                     ---                     ---     0.74 (1.85)     .69
    a      Level * cardio                                ---                     ---                     ---    -0.89 (2.68)     .74
    a      Level * diabetes                              ---                     ---                     ---    -1.78 (8.71)     .84
    a      Slope * age                  -0.02 (0.01)     .11    -0.02 (0.01)     .13    -0.02 (0.01)     .15    -0.02 (0.01)     .27
    a      Slope * education                             ---     0.02 (0.07)     .76     0.02 (0.08)     .80     0.00 (0.10)     .99
    a      Slope * height                                ---                     ---     0.00 (0.01)     .99    -0.00 (0.02)     .91
    a      Slope * smoking                               ---                     ---                     ---     0.00 (0.20)     .98
    a      Slope * cardio                                ---                     ---                     ---     0.05 (0.25)     .84
    a      Slope * diabetes                              ---                     ---                     ---    -0.23 (1.12)     .84
    b      Level                        27.75 (0.18)    <.01    27.59 (0.19)    <.01    27.52 (0.18)    <.01    27.13 (0.24)    <.01
    b      Slope                        -0.15 (0.02)    <.01    -0.15 (0.02)    <.01    -0.15 (0.02)    <.01    -0.14 (0.03)    <.01
    b      Level * age                  -0.09 (0.01)    <.01    -0.09 (0.01)    <.01    -0.08 (0.01)    <.01    -0.07 (0.02)    <.01
    b      Level * education                             ---     0.31 (0.17)     .07     0.26 (0.17)     .13     0.29 (0.18)     .10
    b      Level * height                                ---                     ---     0.05 (0.02)     .05     0.06 (0.03)     .04
    b      Level * smoking                               ---                     ---                     ---     0.67 (0.28)     .02
    b      Level * cardio                                ---                     ---                     ---    -0.42 (0.32)     .19
    b      Level * diabetes                              ---                     ---                     ---     0.13 (1.46)     .93
    b      Slope * age                  -0.00 (0.00)    <.01    -0.00 (0.00)     .01    -0.00 (0.00)     .02    -0.01 (0.00)     .03
    b      Slope * education                             ---     0.02 (0.01)     .20     0.02 (0.01)     .26     0.01 (0.01)     .64
    b      Slope * height                                ---                     ---     0.00 (0.00)     .63     0.00 (0.00)     .98
    b      Slope * smoking                               ---                     ---                     ---    -0.03 (0.04)     .37
    b      Slope * cardio                                ---                     ---                     ---     0.00 (0.04)     .93
    b      Slope * diabetes                              ---                     ---                     ---     0.07 (0.16)     .67
    a      Var (Level)                 37.08 (13.03)    <.01   37.61 (13.44)    <.01   33.15 (13.65)     .01   27.57 (15.46)     .07
    a      Var (Slope)                   0.02 (0.09)     .78     0.02 (0.09)     .80     0.03 (0.10)     .78     0.04 (0.12)     .75
    a      Var (Residual)              102.68 (2.13)    <.01   104.07 (2.23)    <.01   105.22 (2.62)    <.01   117.01 (3.57)    <.01
    a      Covar (Level, Slope)          0.66 (0.95)     .48     0.67 (0.97)     .49     0.68 (0.96)     .48     0.81 (1.14)     .48
    b      Var (Level)                   2.10 (0.22)    <.01     2.00 (0.23)    <.01     1.92 (0.23)    <.01     1.85 (0.26)    <.01
    b      Var (Slope)                   0.02 (0.00)    <.01     0.02 (0.00)    <.01     0.02 (0.00)    <.01     0.01 (0.00)    <.01
    b      Var (Residual)                1.85 (0.06)    <.01     1.87 (0.07)    <.01     1.87 (0.07)    <.01     1.87 (0.08)    <.01
    b      Covar (Level, Slope)         -0.04 (0.02)     .05    -0.05 (0.02)     .03    -0.05 (0.02)     .03    -0.04 (0.03)     .20
   ab      Covar (Levels)                4.21 (1.78)     .02     4.25 (1.84)     .02     3.40 (1.83)     .06     2.19 (2.13)     .30
   ab      Covar (Slopes)                0.01 (0.01)     .48     0.01 (0.01)     .52     0.01 (0.02)     .55     0.01 (0.02)     .59
   ab      Covar (Residuals)             0.21 (0.94)     .82     0.20 (0.98)     .84     0.30 (1.02)     .76     0.74 (1.33)     .58
    \      Correlation of Levels                       0.477                   0.489                   0.426                    0.31
    \      Correlation of Slopes                       0.500                   0.510                   0.490                    0.46
    \      Correlation of Residuals                    0.015                   0.014                   0.022                    0.05
    \      N                                             347                     341                     338                     300
    \      occasions                                       7                       7                       7                       7
    \      parameters                                     21                      25                      29                      41
    \      LL                                         -7,412                  -7,296                  -7,227                  -6,355
    \      AIC                                        14,866                  14,641                  14,512                  12,793
    \      BIC                                        14,947                  14,737                  14,623                  12,945

##  symbol 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _symbol_


 process   label                                           a                      ae                     aeh                 aehplus
---------  -------------------------  ----------------------  ----------------------  ----------------------  ----------------------
    a      Level                        38.62 (0.94)    <.01    38.61 (1.06)    <.01    38.23 (1.05)    <.01    36.84 (0.83)    <.01
    a      Slope                        -0.92 (0.13)    <.01    -0.93 (0.13)    <.01    -0.92 (0.14)    <.01    -0.95 (0.08)    <.01
    a      Level * age                  -0.57 (0.10)    <.01    -0.58 (0.10)    <.01    -0.52 (0.11)    <.01    -0.47 (0.06)    <.01
    a      Level * education                             ---    -0.01 (0.83)     .99    -0.34 (0.91)     .71     0.06 (0.57)     .92
    a      Level * height                                ---                     ---     0.28 (0.15)     .06     0.37 (0.09)    <.01
    a      Level * smoking                               ---                     ---                     ---     1.74 (1.04)     .10
    a      Level * cardio                                ---                     ---                     ---    -0.38 (1.43)     .79
    a      Level * diabetes                              ---                     ---                     ---    -2.56 (3.08)     .41
    a      Slope * age                  -0.02 (0.01)     .11    -0.02 (0.01)     .12    -0.02 (0.01)     .12    -0.02 (0.01)    <.01
    a      Slope * education                             ---     0.02 (0.07)     .81     0.02 (0.08)     .80    -0.00 (0.04)     .95
    a      Slope * height                                ---                     ---    -0.00 (0.01)     .81    -0.00 (0.01)     .68
    a      Slope * smoking                               ---                     ---                     ---     0.01 (0.08)     .94
    a      Slope * cardio                                ---                     ---                     ---     0.04 (0.10)     .66
    a      Slope * diabetes                              ---                     ---                     ---    -0.19 (0.90)     .83
    b      Level                        34.49 (0.75)    <.01    32.22 (0.76)    <.01    31.91 (0.80)    <.01    32.62 (1.15)    <.01
    b      Slope                        -0.94 (0.06)    <.01    -0.95 (0.06)    <.01    -0.96 (0.06)    <.01    -0.89 (0.08)    <.01
    b      Level * age                  -0.86 (0.08)    <.01    -0.80 (0.07)    <.01    -0.75 (0.07)    <.01    -0.70 (0.08)    <.01
    b      Level * education                             ---     3.91 (0.56)    <.01     3.63 (0.57)    <.01     3.72 (0.66)    <.01
    b      Level * height                                ---                     ---     0.23 (0.10)     .01     0.23 (0.10)     .02
    b      Level * smoking                               ---                     ---                     ---    -0.42 (1.27)     .74
    b      Level * cardio                                ---                     ---                     ---    -1.12 (1.94)     .56
    b      Level * diabetes                              ---                     ---                     ---   -0.74 (12.06)     .95
    b      Slope * age                  -0.03 (0.00)    <.01    -0.03 (0.00)    <.01    -0.03 (0.00)    <.01    -0.03 (0.01)    <.01
    b      Slope * education                             ---     0.05 (0.04)     .24     0.04 (0.04)     .30     0.01 (0.04)     .87
    b      Slope * height                                ---                     ---     0.00 (0.00)     .37     0.00 (0.01)     .36
    b      Slope * smoking                               ---                     ---                     ---    -0.13 (0.09)     .14
    b      Slope * cardio                                ---                     ---                     ---    -0.02 (0.14)     .91
    b      Slope * diabetes                              ---                     ---                     ---    -0.03 (1.02)     .98
    a      Var (Level)                 35.65 (12.45)    <.01   36.20 (12.94)    <.01   32.08 (13.34)     .02    35.59 (5.30)    <.01
    a      Var (Slope)                   0.02 (0.09)     .83     0.02 (0.09)     .84     0.02 (0.10)     .82     0.04 (0.03)     .25
    a      Var (Residual)              103.22 (1.72)    <.01   104.59 (1.81)    <.01   105.61 (2.34)    <.01    35.02 (2.32)    <.01
    a      Covar (Level, Slope)          0.66 (0.91)     .47     0.66 (0.93)     .48     0.69 (0.93)     .46     0.33 (0.35)     .35
    b      Var (Level)                  92.38 (9.88)    <.01    77.93 (8.39)    <.01    75.84 (8.64)    <.01    76.28 (9.30)    <.01
    b      Var (Slope)                   0.08 (0.03)    <.01     0.08 (0.03)    <.01     0.08 (0.03)    <.01     0.07 (0.03)     .01
    b      Var (Residual)               24.06 (1.01)    <.01    24.20 (1.02)    <.01    24.32 (1.04)    <.01    23.70 (1.06)    <.01
    b      Covar (Level, Slope)         -0.61 (0.38)     .10    -0.83 (0.36)     .02    -0.90 (0.36)     .01    -0.85 (0.39)     .03
   ab      Covar (Levels)               19.38 (8.73)     .03    19.15 (8.52)     .02    16.77 (8.31)     .04    14.81 (5.05)    <.01
   ab      Covar (Slopes)                0.01 (0.04)     .81     0.01 (0.05)     .83     0.01 (0.05)     .83    -0.00 (0.02)     .91
   ab      Covar (Residuals)             4.35 (3.69)     .24     4.39 (3.77)     .24     4.44 (3.83)     .25     3.38 (1.36)     .01
    \      Correlation of Levels                       0.338                   0.361                   0.340                   0.284
    \      Correlation of Slopes                       0.280                   0.269                   0.241                  -0.038
    \      Correlation of Residuals                    0.087                   0.087                   0.088                   0.117
    \      N                                             347                     341                     338                     299
    \      occasions                                       7                       7                       7                       7
    \      parameters                                     21                      25                      29                      41
    \      LL                                         -8,988                  -8,819                  -8,739                  -7,127
    \      AIC                                        18,018                  17,687                  17,536                  14,335
    \      BIC                                        18,099                  17,783                  17,646                  14,487

##  synonyms 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _synonyms_


 process   label                                           a                      ae                     aeh                 aehplus
---------  -------------------------  ----------------------  ----------------------  ----------------------  ----------------------
    a      Level                        38.57 (0.94)    <.01    38.54 (1.07)    <.01    38.17 (1.07)    <.01    37.67 (1.60)    <.01
    a      Slope                        -0.90 (0.13)    <.01    -0.91 (0.14)    <.01    -0.90 (0.14)    <.01    -0.86 (0.20)    <.01
    a      Level * age                  -0.57 (0.10)    <.01    -0.58 (0.10)    <.01    -0.52 (0.10)    <.01    -0.50 (0.13)    <.01
    a      Level * education                             ---     0.02 (0.85)     .98    -0.31 (0.90)     .73    -0.09 (1.02)     .93
    a      Level * height                                ---                     ---     0.27 (0.14)     .06     0.31 (0.17)     .07
    a      Level * smoking                               ---                     ---                     ---     0.69 (1.95)     .72
    a      Level * cardio                                ---                     ---                     ---    -0.93 (2.89)     .75
    a      Level * diabetes                              ---                     ---                     ---    -1.92 (5.58)     .73
    a      Slope * age                  -0.02 (0.01)     .14    -0.02 (0.01)     .17    -0.02 (0.01)     .16    -0.02 (0.01)     .25
    a      Slope * education                             ---     0.02 (0.07)     .81     0.02 (0.08)     .82     0.00 (0.10)     .99
    a      Slope * height                                ---                     ---    -0.00 (0.01)     .88    -0.00 (0.02)     .84
    a      Slope * smoking                               ---                     ---                     ---     0.00 (0.20)     .99
    a      Slope * cardio                                ---                     ---                     ---     0.04 (0.25)     .87
    a      Slope * diabetes                              ---                     ---                     ---    -0.17 (1.01)     .87
    b      Level                        17.79 (0.40)    <.01    16.24 (0.40)    <.01    16.03 (0.41)    <.01    15.91 (0.59)    <.01
    b      Slope                        -0.11 (0.02)    <.01    -0.09 (0.02)    <.01    -0.08 (0.02)    <.01    -0.07 (0.04)     .05
    b      Level * age                  -0.20 (0.04)    <.01    -0.16 (0.04)    <.01    -0.13 (0.04)    <.01    -0.10 (0.04)     .02
    b      Level * education                             ---     2.60 (0.32)    <.01     2.40 (0.32)    <.01     2.37 (0.37)    <.01
    b      Level * height                                ---                     ---     0.16 (0.05)    <.01     0.15 (0.06)     .01
    b      Level * smoking                               ---                     ---                     ---     1.20 (0.66)     .07
    b      Level * cardio                                ---                     ---                     ---    -2.05 (0.91)     .02
    b      Level * diabetes                              ---                     ---                     ---    -0.93 (2.54)     .71
    b      Slope * age                  -0.01 (0.00)    <.01    -0.01 (0.00)    <.01    -0.01 (0.00)    <.01    -0.00 (0.00)     .02
    b      Slope * education                             ---    -0.03 (0.01)     .03    -0.03 (0.01)     .04    -0.04 (0.01)     .02
    b      Slope * height                                ---                     ---    -0.00 (0.00)     .68    -0.00 (0.00)     .84
    b      Slope * smoking                               ---                     ---                     ---    -0.02 (0.03)     .63
    b      Slope * cardio                                ---                     ---                     ---     0.04 (0.05)     .46
    b      Slope * diabetes                              ---                     ---                     ---     0.10 (0.32)     .76
    a      Var (Level)                 35.59 (12.71)    <.01   36.10 (13.17)     .01   31.96 (13.67)     .02   27.49 (16.13)     .09
    a      Var (Slope)                   0.02 (0.09)     .85     0.02 (0.09)     .85     0.02 (0.10)     .83     0.03 (0.12)     .79
    a      Var (Residual)              103.30 (1.54)    <.01   104.64 (1.66)    <.01   105.70 (2.25)    <.01   117.27 (3.04)    <.01
    a      Covar (Level, Slope)          0.66 (0.92)     .47     0.66 (0.94)     .48     0.69 (0.94)     .46     0.81 (1.11)     .46
    b      Var (Level)                  28.85 (3.06)    <.01    22.65 (2.43)    <.01    21.91 (2.38)    <.01    20.59 (2.51)    <.01
    b      Var (Slope)                   0.01 (0.00)     .05     0.01 (0.00)     .06     0.01 (0.00)     .06     0.01 (0.00)     .08
    b      Var (Residual)                3.91 (0.22)    <.01     3.87 (0.22)    <.01     3.87 (0.23)    <.01     4.00 (0.26)    <.01
    b      Covar (Level, Slope)         -0.10 (0.09)     .27    -0.05 (0.08)     .54    -0.04 (0.07)     .59    -0.07 (0.09)     .46
   ab      Covar (Levels)                7.67 (4.53)     .09     7.57 (4.27)     .08     5.96 (4.10)     .15     6.52 (4.91)     .18
   ab      Covar (Slopes)               -0.00 (0.02)     .97    -0.00 (0.02)     .93    -0.00 (0.02)     .95    -0.00 (0.02)     .90
   ab      Covar (Residuals)            -0.59 (1.41)     .68    -0.64 (1.44)     .66    -0.57 (1.47)     .69    -0.71 (1.82)     .70
    \      Correlation of Levels                       0.239                   0.265                   0.225                   0.274
    \      Correlation of Slopes                      -0.092                  -0.092                  -0.085                  -0.191
    \      Correlation of Residuals                   -0.029                  -0.032                  -0.028                  -0.033
    \      N                                             347                     341                     338                     300
    \      occasions                                       7                       7                       7                       7
    \      parameters                                     21                      25                      29                      41
    \      LL                                         -8,016                  -7,854                  -7,783                  -6,844
    \      AIC                                        16,075                  15,759                  15,624                  13,769
    \      BIC                                        16,155                  15,854                  15,735                  13,921

## Summary 

 Study = _SATSA_; Gender = _male_; Process (a) = _grip_

 Computed correlations:

 

label                      process_b      a     ae    aeh   aehplus
----------------------  ------------  -----  -----  -----  --------
Correlation of Levels      analogies   0.11   0.12   0.07      0.08
Correlation of Levels          block      .      .      .      0.36
Correlation of Levels        digit_b      .      .      .      0.29
Correlation of Levels        digit_f      .      .      .      0.18
Correlation of Levels         fig_id   0.37   0.40   0.38         .
Correlation of Levels    information   0.12   0.13   0.11      0.14
Correlation of Levels           mmse   0.48   0.49   0.43      0.31
Correlation of Levels         symbol   0.34   0.36   0.34      0.28
Correlation of Levels       synonyms   0.24   0.26   0.23      0.27



label                      process_b       a      ae     aeh   aehplus
----------------------  ------------  ------  ------  ------  --------
Correlation of Slopes      analogies    0.53    0.53    0.50      0.50
Correlation of Slopes          block       .       .       .      0.66
Correlation of Slopes        digit_b       .       .       .       Inf
Correlation of Slopes        digit_f       .       .       .       Inf
Correlation of Slopes         fig_id    0.47    0.47    0.44         .
Correlation of Slopes    information    0.54    0.48    0.52      0.56
Correlation of Slopes           mmse    0.50    0.51    0.49      0.46
Correlation of Slopes         symbol    0.28    0.27    0.24     -0.04
Correlation of Slopes       synonyms   -0.09   -0.09   -0.08     -0.19



label                         process_b       a      ae     aeh   aehplus
-------------------------  ------------  ------  ------  ------  --------
Correlation of Residuals      analogies    0.14    0.14    0.14      0.14
Correlation of Residuals          block       .       .       .      0.11
Correlation of Residuals        digit_b       .       .       .     -0.03
Correlation of Residuals        digit_f       .       .       .      0.03
Correlation of Residuals         fig_id   -0.11   -0.11   -0.11         .
Correlation of Residuals    information    0.04    0.04    0.04      0.04
Correlation of Residuals           mmse    0.02    0.01    0.02      0.05
Correlation of Residuals         symbol    0.09    0.09    0.09      0.12
Correlation of Residuals       synonyms   -0.03   -0.03   -0.03     -0.03


P-values for corresponding covariances: 

 

label                     process_b      a     ae    aeh   aehplus
---------------------  ------------  -----  -----  -----  --------
Covariance of Levels      analogies   0.50   0.50   0.74      0.73
Covariance of Levels          block      .      .      .      0.00
Covariance of Levels        digit_b      .      .      .      0.03
Covariance of Levels        digit_f      .      .      .      0.20
Covariance of Levels         fig_id   0.01   0.01   0.02         .
Covariance of Levels    information   0.47   0.45   0.55      0.55
Covariance of Levels           mmse   0.02   0.02   0.06      0.30
Covariance of Levels         symbol   0.03   0.02   0.04      0.00
Covariance of Levels       synonyms   0.09   0.08   0.15      0.18



label                     process_b      a     ae    aeh   aehplus
---------------------  ------------  -----  -----  -----  --------
Covariance of Slopes      analogies   0.76   0.79   0.79      0.79
Covariance of Slopes          block      .      .      .      0.09
Covariance of Slopes        digit_b      .      .      .      0.71
Covariance of Slopes        digit_f      .      .      .      0.70
Covariance of Slopes         fig_id   0.68   0.69   0.71         .
Covariance of Slopes    information   0.57   0.60   0.60      0.59
Covariance of Slopes           mmse   0.48   0.52   0.55      0.59
Covariance of Slopes         symbol   0.81   0.83   0.83      0.91
Covariance of Slopes       synonyms   0.97   0.93   0.95      0.90



label                         process_b      a     ae    aeh   aehplus
-------------------------  ------------  -----  -----  -----  --------
Covariance of  Residuals      analogies   0.07   0.08   0.08      0.12
Covariance of  Residuals          block      .      .      .      0.01
Covariance of  Residuals        digit_b      .      .      .      0.58
Covariance of  Residuals        digit_f      .      .      .      0.47
Covariance of  Residuals         fig_id   0.08   0.09   0.10         .
Covariance of  Residuals    information   0.56   0.55   0.54      0.70
Covariance of  Residuals           mmse   0.82   0.84   0.76      0.58
Covariance of  Residuals         symbol   0.24   0.24   0.25      0.01
Covariance of  Residuals       synonyms   0.68   0.66   0.69      0.70


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
