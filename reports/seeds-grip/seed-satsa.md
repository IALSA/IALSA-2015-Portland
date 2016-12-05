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
grip        fig_mem               2
grip        information           8
grip        mmse                  8
grip        rotate                2
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
satsa        female     aehplus      grip        fig_mem               1
satsa        female     aehplus      grip        information           1
satsa        female     aehplus      grip        mmse                  1
satsa        female     aehplus      grip        rotate                1
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
satsa        male       aehplus      grip        fig_mem               1
satsa        male       aehplus      grip        information           1
satsa        male       aehplus      grip        mmse                  1
satsa        male       aehplus      grip        rotate                1
satsa        male       aehplus      grip        symbol                1
satsa        male       aehplus      grip        synonyms              1


# female 

 Gender = _female_; Model type: _aehplus_;  Process (a) = _grip_; Process (b): *analogies*, *block*, *digit_b*, *digit_f*, *fig_id*, *fig_mem*, *information*, *mmse*, *rotate*, *symbol*, *synonyms*


 process   label                                  analogies                  block                digit_b                digit_f                fig_mem       information        mmse                                    rotate                 symbol               synonyms        mean(sd)
---------  -------------------------  ---------------------  ---------------------  ---------------------  ---------------------  ---------------------  ----------------------  ---------------------  -----------------------  ---------------------  ---------------------  --------------
   ab      Covar (Levels)               0.08 (0.96)     .93    4.99 (2.09)     .02    0.45 (0.40)     .26   -0.04 (0.32)     .90    0.30 (1.20)     .80   2.57 (2.39)     .28    0.18 (0.63)     .77        7.00 (5.21)     .18    8.61 (3.14)     .01    1.86 (1.41)     .19             ---
   ab      Covar (Slopes)               0.01 (0.00)     .18    0.00 (0.01)     .68    0.00 (0.00)     .29    0.00 (0.00)     .38    0.00 (0.01)     .77   0.03 (0.01)     .03    0.01 (0.01)     .34        0.01 (0.03)     .65    0.02 (0.01)     .11    0.00 (0.01)     .52             ---
   ab      Covar (Residuals)            1.24 (0.43)    <.01    2.10 (0.61)    <.01    0.25 (0.18)     .16    0.09 (0.12)     .44    1.60 (0.53)    <.01   0.85 (0.57)     .14    1.08 (0.30)    <.01        4.87 (2.00)     .01    2.51 (1.00)     .01    0.63 (0.38)     .10             ---
   er      Corr (Levels)                0.01 (0.10)     .93    0.22 (0.09)     .01    0.13 (0.12)     .26   -0.01 (0.10)     .90    0.02 (0.10)     .80   0.10 (0.10)     .28    0.06 (0.19)     .77        0.14 (0.10)     .17    0.26 (0.09)    <.01    0.12 (0.09)     .18             ---
   er      Corr (Slopes)                0.41 (0.31)     .18    0.15 (0.36)     .68    0.31 (0.28)     .26    0.59 (0.78)     .45    0.12 (0.41)     .76   0.65 (0.25)     .01    0.29 (0.28)     .29        0.31 (0.69)     .65    0.46 (0.24)     .05    0.26 (0.42)     .53             ---
   er      Corr (Residuals)             0.12 (0.04)    <.01    0.14 (0.04)    <.01    0.05 (0.04)     .16    0.02 (0.03)     .44    0.13 (0.04)    <.01   0.05 (0.04)     .13    0.13 (0.04)    <.01        0.10 (0.04)     .01    0.10 (0.04)     .01    0.06 (0.04)     .10             ---
    a      Level                       21.50 (0.44)    <.01   21.47 (0.45)    <.01   21.48 (0.46)    <.01   21.49 (0.45)    <.01   21.51 (0.45)    <.01   21.50 (0.44)    <.01   21.47 (0.45)    <.01      21.50 (0.44)    <.01   21.49 (0.46)    <.01   21.50 (0.45)    <.01     21.49(0.01)
    a      Slope                       -0.57 (0.04)    <.01   -0.57 (0.04)    <.01   -0.57 (0.04)    <.01   -0.57 (0.04)    <.01   -0.57 (0.04)    <.01   -0.57 (0.04)    <.01   -0.57 (0.05)    <.01      -0.57 (0.04)    <.01   -0.57 (0.04)    <.01   -0.57 (0.04)    <.01     -0.57(0.00)
    a      Level * age                 -0.19 (0.04)    <.01   -0.19 (0.04)    <.01   -0.19 (0.03)    <.01   -0.19 (0.04)    <.01   -0.19 (0.04)    <.01   -0.19 (0.04)    <.01   -0.19 (0.03)    <.01      -0.19 (0.04)    <.01   -0.19 (0.04)    <.01   -0.19 (0.03)    <.01     -0.19(0.00)
    a      Level * education            0.31 (0.39)     .42    0.31 (0.39)     .42    0.27 (0.39)     .48    0.27 (0.40)     .50    0.30 (0.40)     .45   0.28 (0.39)     .47    0.30 (0.39)     .43        0.36 (0.39)     .35    0.31 (0.40)     .43    0.30 (0.40)     .45      0.30(0.03)
    a      Level * height               0.15 (0.05)    <.01    0.15 (0.05)    <.01    0.15 (0.05)    <.01    0.15 (0.05)    <.01    0.15 (0.05)    <.01   0.15 (0.05)    <.01    0.15 (0.05)    <.01        0.15 (0.05)    <.01    0.15 (0.05)    <.01    0.15 (0.05)    <.01      0.15(0.00)
    a      Level * smoking              0.23 (0.63)     .71    0.24 (0.63)     .71    0.22 (0.63)     .73    0.23 (0.65)     .72    0.25 (0.63)     .69   0.23 (0.62)     .72    0.26 (0.62)     .67        0.22 (0.63)     .73    0.20 (0.63)     .75    0.25 (0.63)     .69      0.23(0.02)
    a      Level * cardio              -2.24 (0.82)     .01   -2.31 (0.86)     .01   -2.25 (0.82)     .01   -2.24 (0.80)    <.01   -2.23 (0.83)     .01   -2.23 (0.79)    <.01   -2.21 (0.81)     .01      -2.25 (0.89)     .01   -2.26 (0.82)     .01   -2.26 (0.80)    <.01     -2.25(0.03)
    a      Level * diabetes            -1.13 (2.07)     .58   -1.11 (1.82)     .54   -1.11 (1.69)     .51   -1.10 (1.71)     .52   -1.11 (1.83)     .54   -1.12 (1.88)     .55   -1.11 (1.84)     .55      -1.11 (1.74)     .52   -1.11 (1.75)     .52   -1.14 (1.81)     .53     -1.11(0.01)
    a      Slope * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01      -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01     -0.01(0.00)
    a      Slope * education            0.02 (0.03)     .55    0.02 (0.03)     .54    0.02 (0.03)     .49    0.02 (0.03)     .48    0.02 (0.03)     .51   0.02 (0.03)     .47    0.02 (0.03)     .48        0.02 (0.03)     .61    0.02 (0.03)     .55    0.02 (0.03)     .52      0.02(0.00)
    a      Slope * height               0.00 (0.00)     .97    0.00 (0.00)     .95    0.00 (0.00)     .95    0.00 (0.00)     .91    0.00 (0.00)     .94   0.00 (0.00)     .99    0.00 (0.00)     .96        0.00 (0.00)     .96    0.00 (0.00)     .96    0.00 (0.00)     .99      0.00(0.00)
    a      Slope * smoking              0.03 (0.05)     .60    0.03 (0.05)     .62    0.03 (0.06)     .59    0.03 (0.05)     .61    0.02 (0.05)     .65   0.03 (0.05)     .61    0.03 (0.05)     .63        0.03 (0.05)     .57    0.03 (0.05)     .56    0.02 (0.05)     .67      0.03(0.00)
    a      Slope * cardio               0.01 (0.07)     .85    0.02 (0.07)     .81    0.01 (0.07)     .83    0.02 (0.07)     .83    0.01 (0.08)     .89   0.01 (0.07)     .87    0.02 (0.07)     .80        0.01 (0.07)     .84    0.02 (0.07)     .82    0.02 (0.07)     .82      0.01(0.00)
    a      Slope * diabetes            -0.44 (0.33)     .18   -0.46 (0.31)     .14   -0.46 (0.29)     .12   -0.46 (0.38)     .22   -0.46 (0.30)     .13   -0.45 (0.33)     .17   -0.43 (0.31)     .16      -0.46 (0.37)     .21   -0.46 (0.34)     .17   -0.45 (0.32)     .15     -0.45(0.01)
    b      Level                       13.13 (0.30)    <.01   16.51 (0.52)    <.01    3.65 (0.10)    <.01    5.55 (0.10)    <.01   20.46 (0.34)    <.01   27.86 (0.57)    <.01   28.05 (0.14)    <.01      41.44 (1.59)    <.01   34.48 (0.75)    <.01   17.71 (0.34)    <.01             ---
    b      Slope                       -0.12 (0.02)    <.01   -0.37 (0.03)    <.01   -0.04 (0.01)    <.01   -0.03 (0.01)    <.01   -0.18 (0.03)    <.01   -0.29 (0.05)    <.01   -0.29 (0.03)    <.01      -0.94 (0.12)    <.01   -0.82 (0.07)    <.01   -0.13 (0.02)    <.01             ---
    b      Level * age                 -0.12 (0.02)    <.01   -0.28 (0.04)    <.01   -0.01 (0.01)     .16   -0.01 (0.01)     .14   -0.08 (0.03)    <.01   -0.04 (0.05)     .42   -0.03 (0.01)     .01      -0.65 (0.12)    <.01   -0.69 (0.06)    <.01   -0.04 (0.03)     .18             ---
    b      Level * education            1.76 (0.23)    <.01    2.22 (0.50)    <.01    0.50 (0.10)    <.01    0.32 (0.09)    <.01    1.26 (0.33)    <.01   4.03 (0.79)    <.01    0.32 (0.18)     .08        0.88 (1.22)     .47    3.29 (0.70)    <.01    2.72 (0.48)    <.01             ---
    b      Level * height               0.03 (0.03)     .36    0.08 (0.06)     .17    0.01 (0.01)     .36    0.00 (0.01)     .81    0.01 (0.04)     .74   0.01 (0.07)     .83    -0.01 (0.02)     .52       0.20 (0.16)     .22    0.17 (0.09)     .05    0.04 (0.05)     .43             ---
    b      Level * smoking              0.51 (0.38)     .18    0.12 (0.78)     .88    0.25 (0.16)     .13    0.03 (0.12)     .79    0.52 (0.48)     .28   1.08 (1.00)     .28    -0.06 (0.26)     .81       0.51 (1.91)     .79    0.93 (1.19)     .44    1.10 (0.62)     .07             ---
    b      Level * cardio              -0.53 (0.64)     .41   -0.01 (1.20)     .99    0.03 (0.20)     .88   -0.27 (0.23)     .23    0.52 (0.68)     .44   -2.04 (1.12)     .07   -0.08 (0.26)     .74       2.07 (2.81)     .46   -1.79 (1.56)     .25   -1.57 (0.84)     .06             ---
    b      Level * diabetes            -1.22 (1.25)     .33   -5.33 (2.54)     .04    0.14 (0.36)     .70   -0.25 (0.34)     .46   -0.93 (1.54)     .55   0.36 (1.77)     .84    -0.74 (0.51)     .15     -8.10 (11.02)     .46   -6.82 (2.93)     .02   -2.50 (1.15)     .03             ---
    b      Slope * age                 -0.00 (0.00)     .01   -0.01 (0.00)    <.01   -0.00 (0.00)     .03   -0.00 (0.00)     .12   -0.01 (0.00)    <.01   -0.02 (0.00)    <.01   -0.01 (0.00)    <.01      -0.04 (0.01)    <.01   -0.02 (0.00)    <.01   -0.01 (0.00)    <.01             ---
    b      Slope * education            0.01 (0.02)     .46    0.02 (0.03)     .59   -0.01 (0.01)     .28   -0.00 (0.00)     .88   -0.00 (0.02)     .89   -0.03 (0.05)     .53   0.01 (0.03)     .79        0.16 (0.08)     .04    0.05 (0.04)     .23    0.00 (0.02)     .99             ---
    b      Slope * height               0.00 (0.00)     .99   -0.00 (0.00)     .55    0.00 (0.00)     .41    0.00 (0.00)     .07   -0.00 (0.00)     .81   0.00 (0.00)     .61    0.00 (0.00)     .53       -0.01 (0.01)     .19    0.00 (0.01)     .99    0.00 (0.00)     .66             ---
    b      Slope * smoking              0.01 (0.03)     .84   -0.01 (0.05)     .89    0.00 (0.01)     .67    0.00 (0.01)     .74   -0.07 (0.04)     .07   0.04 (0.06)     .54    0.04 (0.04)     .33       -0.10 (0.13)     .46   -0.06 (0.08)     .47   -0.01 (0.03)     .81             ---
    b      Slope * cardio               0.08 (0.06)     .21    0.05 (0.09)     .60    0.02 (0.02)     .26    0.03 (0.01)     .06    0.01 (0.05)     .80   0.09 (0.09)     .33    0.02 (0.05)     .73        0.09 (0.28)     .75   -0.02 (0.16)     .91    0.06 (0.05)     .22             ---
    b      Slope * diabetes             0.06 (0.12)     .63    0.08 (0.17)     .65   -0.02 (0.03)     .62    0.02 (0.06)     .71   -0.21 (0.16)     .20   -0.20 (0.19)     .30   0.14 (0.11)     .21       -0.92 (0.96)     .34   -0.20 (0.55)     .72    0.08 (0.21)     .69             ---
    a      Var (Level)                 13.68 (2.39)    <.01   14.58 (3.01)    <.01   14.73 (3.00)    <.01   14.85 (3.02)    <.01   13.74 (2.37)    <.01   13.76 (2.39)    <.01   13.78 (2.40)    <.01      13.78 (2.38)    <.01   15.27 (3.01)    <.01   13.84 (2.39)    <.01     14.20(0.59)
    a      Var (Slope)                  0.02 (0.01)     .08    0.02 (0.01)     .07    0.02 (0.01)     .06    0.02 (0.01)     .04    0.02 (0.01)     .08   0.02 (0.01)     .07    0.02 (0.01)     .06        0.02 (0.01)     .07    0.03 (0.01)     .04    0.02 (0.01)     .10      0.02(0.00)
    a      Var (Residual)              21.58 (1.06)    <.01   19.69 (2.86)    <.01   19.60 (2.83)    <.01   19.49 (2.85)    <.01   21.58 (1.03)    <.01   21.56 (1.07)    <.01   21.57 (1.05)    <.01      21.54 (1.04)    <.01   18.96 (2.84)    <.01   21.56 (1.06)    <.01     20.71(1.12)
    b      Var (Level)                  6.26 (0.80)    <.01   34.30 (3.66)    <.01    0.81 (0.11)    <.01    0.71 (0.10)    <.01   11.09 (1.24)    <.01   45.67 (4.20)    <.01   0.77 (0.23)    <.01     185.20 (22.27)    <.01   70.38 (6.77)    <.01   18.29 (1.70)    <.01             ---
    b      Var (Slope)                  0.01 (0.00)    <.01    0.03 (0.01)    <.01    0.00 (0.00)     .01    0.00 (0.00)     .54    0.01 (0.00)    <.01   0.10 (0.02)    <.01    0.04 (0.00)    <.01        0.07 (0.09)     .43    0.09 (0.02)    <.01    0.01 (0.00)    <.01             ---
    b      Var (Residual)               5.21 (0.27)    <.01   12.63 (1.65)    <.01    0.82 (0.09)    <.01    0.59 (0.07)    <.01    6.91 (0.34)    <.01   11.45 (0.49)    <.01   3.13 (0.09)    <.01      110.95 (5.14)    <.01   25.31 (1.50)    <.01    4.46 (0.24)    <.01             ---
    a      Covar (Level, Slope)         0.09 (0.14)     .52    0.04 (0.17)     .81    0.02 (0.16)     .88    0.01 (0.16)     .93    0.08 (0.14)     .55   0.07 (0.14)     .62    0.06 (0.14)     .64        0.08 (0.14)     .57   -0.02 (0.17)     .90    0.08 (0.14)     .56      0.05(0.04)
    b      Covar (Level, Slope)        -0.05 (0.05)     .30   -0.30 (0.14)     .03   -0.01 (0.01)     .07   -0.00 (0.00)     .48   -0.14 (0.07)     .06   -0.65 (0.24)     .01   0.06 (0.02)    <.01       -0.14 (1.13)     .90   -0.75 (0.38)     .05   -0.05 (0.07)     .46             ---
    \      Correlation of Levels                     0.0092                   0.22                  0.129                 -0.012                  0.024          0.102           0.056                                     0.14                   0.26                  0.117      0.10(0.09)
    \      Correlation of Slopes                     0.4454                   0.16                  0.295                    Inf                  0.118          0.636           0.280                                     0.33                   0.47                  0.290        Inf(NaN)
    \      Correlation of Residuals                  0.1165                   0.13                  0.061                  0.027                  0.131          0.054           0.131                                     0.10                   0.11                  0.064      0.09(0.04)
    \      N                                            409                    409                    409                    409                    409           410            411                                        409                    409                    409    409.30(0.67)
    \      occasions                                      7                      7                      7                      7                      7            7             7                                            7                      7                      7      7.00(0.00)
    \      parameters                                    41                     43                     43                     43                     41            41            41                                          41                     43                     41     41.80(1.03)
    \      LL                                        -8,127                 -9,089                 -7,154                 -6,804                 -8,493          -9,333          -8,085                                 -10,010                 -9,587                 -8,431   -8,511(1,028)
    \      AIC                                       16,336                 18,264                 14,394                 13,695                 17,067          18,749          16,252                                  20,103                 19,261                 16,944   17,106(2,055)
    \      BIC                                       16,501                 18,436                 14,566                 13,867                 17,232          18,913          16,417                                  20,267                 19,433                 17,108   17,274(2,054)

##  analogies 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _analogies_


 process   label                                          a                     ae                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------  ---------------------
   ab      Covar (Levels)               1.11 (0.94)     .24    0.54 (0.86)     .53    0.58 (0.86)     .50    0.08 (0.96)     .93
   ab      Covar (Slopes)               0.01 (0.00)     .09    0.01 (0.00)     .07    0.01 (0.00)     .07    0.01 (0.00)     .18
   ab      Covar (Residuals)            1.18 (0.36)    <.01    1.30 (0.37)    <.01    1.26 (0.38)    <.01    1.24 (0.43)    <.01
   er      Corr (Levels)                                ---                    ---                    ---    0.01 (0.10)     .93
   er      Corr (Slopes)                                ---                    ---                    ---    0.41 (0.31)     .18
   er      Corr (Residuals)                             ---                    ---                    ---    0.12 (0.04)    <.01
    a      Level                       21.02 (0.32)    <.01   20.84 (0.35)    <.01   20.82 (0.36)    <.01   21.50 (0.44)    <.01
    a      Slope                       -0.57 (0.03)    <.01   -0.58 (0.04)    <.01   -0.58 (0.04)    <.01   -0.57 (0.04)    <.01
    a      Level * age                 -0.27 (0.03)    <.01   -0.26 (0.03)    <.01   -0.24 (0.03)    <.01   -0.19 (0.04)    <.01
    a      Level * education                            ---    0.53 (0.40)     .19    0.40 (0.40)     .31    0.31 (0.39)     .42
    a      Level * height                               ---                    ---    0.13 (0.05)     .01    0.15 (0.05)    <.01
    a      Level * smoking                              ---                    ---                    ---    0.23 (0.63)     .71
    a      Level * cardio                               ---                    ---                    ---   -2.24 (0.82)     .01
    a      Level * diabetes                             ---                    ---                    ---   -1.13 (2.07)     .58
    a      Slope * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01
    a      Slope * education                            ---    0.01 (0.03)     .65    0.01 (0.03)     .67    0.02 (0.03)     .55
    a      Slope * height                               ---                    ---    0.00 (0.00)     .93    0.00 (0.00)     .97
    a      Slope * smoking                              ---                    ---                    ---    0.03 (0.05)     .60
    a      Slope * cardio                               ---                    ---                    ---    0.01 (0.07)     .85
    a      Slope * diabetes                             ---                    ---                    ---   -0.44 (0.33)     .18
    b      Level                       13.72 (0.23)    <.01   13.02 (0.23)    <.01   13.05 (0.24)    <.01   13.13 (0.30)    <.01
    b      Slope                       -0.10 (0.02)    <.01   -0.10 (0.02)    <.01   -0.10 (0.02)    <.01   -0.12 (0.02)    <.01
    b      Level * age                 -0.16 (0.02)    <.01   -0.12 (0.02)    <.01   -0.12 (0.02)    <.01   -0.12 (0.02)    <.01
    b      Level * education                            ---    1.92 (0.21)    <.01    1.89 (0.21)    <.01    1.76 (0.23)    <.01
    b      Level * height                               ---                    ---    0.02 (0.03)     .52    0.03 (0.03)     .36
    b      Level * smoking                              ---                    ---                    ---    0.51 (0.38)     .18
    b      Level * cardio                               ---                    ---                    ---   -0.53 (0.64)     .41
    b      Level * diabetes                             ---                    ---                    ---   -1.22 (1.25)     .33
    b      Slope * age                 -0.00 (0.00)    <.01   -0.00 (0.00)    <.01   -0.00 (0.00)     .01   -0.00 (0.00)     .01
    b      Slope * education                            ---    0.00 (0.02)     .82    0.00 (0.02)     .93    0.01 (0.02)     .46
    b      Slope * height                               ---                    ---    0.00 (0.00)     .49    0.00 (0.00)     .99
    b      Slope * smoking                              ---                    ---                    ---    0.01 (0.03)     .84
    b      Slope * cardio                               ---                    ---                    ---    0.08 (0.06)     .21
    b      Slope * diabetes                             ---                    ---                    ---    0.06 (0.12)     .63
    a      Var (Level)                 17.47 (2.32)    <.01   17.50 (2.35)    <.01   16.97 (2.30)    <.01   13.68 (2.39)    <.01
    a      Var (Slope)                  0.03 (0.01)     .01    0.03 (0.01)     .01    0.03 (0.01)     .01    0.02 (0.01)     .08
    a      Var (Residual)              21.66 (0.93)    <.01   21.57 (0.95)    <.01   21.68 (0.97)    <.01   21.58 (1.06)    <.01
    b      Var (Level)                  7.78 (0.80)    <.01    6.08 (0.69)    <.01    6.08 (0.70)    <.01    6.26 (0.80)    <.01
    b      Var (Slope)                  0.01 (0.00)    <.01    0.01 (0.00)    <.01    0.01 (0.00)    <.01    0.01 (0.00)    <.01
    b      Var (Residual)               5.13 (0.22)    <.01    5.16 (0.23)    <.01    5.17 (0.23)    <.01    5.21 (0.27)    <.01
    a      Covar (Level, Slope)        -0.07 (0.14)     .63   -0.07 (0.14)     .60   -0.05 (0.14)     .70    0.09 (0.14)     .52
    b      Covar (Level, Slope)        -0.03 (0.05)     .53   -0.05 (0.04)     .30   -0.05 (0.05)     .27   -0.05 (0.05)     .30
    \      Correlation of Levels                      0.095                  0.053                  0.058                 0.0092
    \      Correlation of Slopes                      0.377                  0.448                  0.455                 0.4454
    \      Correlation of Residuals                   0.112                  0.123                  0.119                 0.1165
    \      N                                            508                    486                    477                    409
    \      occasions                                      7                      7                      7                      7
    \      parameters                                    21                     25                     29                     41
    \      LL                                       -10,004                 -9,613                 -9,472                 -8,127
    \      AIC                                       20,050                 19,277                 19,002                 16,336
    \      BIC                                       20,139                 19,381                 19,122                 16,501

##  block 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _block_


 process   label                                    aehplus
---------  -------------------------  ---------------------
   ab      Covar (Levels)               4.99 (2.09)     .02
   ab      Covar (Slopes)               0.00 (0.01)     .68
   ab      Covar (Residuals)            2.10 (0.61)    <.01
   er      Corr (Levels)                0.22 (0.09)     .01
   er      Corr (Slopes)                0.15 (0.36)     .68
   er      Corr (Residuals)             0.14 (0.04)    <.01
    a      Level                       21.47 (0.45)    <.01
    a      Slope                       -0.57 (0.04)    <.01
    a      Level * age                 -0.19 (0.04)    <.01
    a      Level * education            0.31 (0.39)     .42
    a      Level * height               0.15 (0.05)    <.01
    a      Level * smoking              0.24 (0.63)     .71
    a      Level * cardio              -2.31 (0.86)     .01
    a      Level * diabetes            -1.11 (1.82)     .54
    a      Slope * age                 -0.01 (0.00)    <.01
    a      Slope * education            0.02 (0.03)     .54
    a      Slope * height               0.00 (0.00)     .95
    a      Slope * smoking              0.03 (0.05)     .62
    a      Slope * cardio               0.02 (0.07)     .81
    a      Slope * diabetes            -0.46 (0.31)     .14
    b      Level                       16.51 (0.52)    <.01
    b      Slope                       -0.37 (0.03)    <.01
    b      Level * age                 -0.28 (0.04)    <.01
    b      Level * education            2.22 (0.50)    <.01
    b      Level * height               0.08 (0.06)     .17
    b      Level * smoking              0.12 (0.78)     .88
    b      Level * cardio              -0.01 (1.20)     .99
    b      Level * diabetes            -5.33 (2.54)     .04
    b      Slope * age                 -0.01 (0.00)    <.01
    b      Slope * education            0.02 (0.03)     .59
    b      Slope * height              -0.00 (0.00)     .55
    b      Slope * smoking             -0.01 (0.05)     .89
    b      Slope * cardio               0.05 (0.09)     .60
    b      Slope * diabetes             0.08 (0.17)     .65
    a      Var (Level)                 14.58 (3.01)    <.01
    a      Var (Slope)                  0.02 (0.01)     .07
    a      Var (Residual)              19.69 (2.86)    <.01
    b      Var (Level)                 34.30 (3.66)    <.01
    b      Var (Slope)                  0.03 (0.01)    <.01
    b      Var (Residual)              12.63 (1.65)    <.01
    a      Covar (Level, Slope)         0.04 (0.17)     .81
    b      Covar (Level, Slope)        -0.30 (0.14)     .03
    \      Correlation of Levels                       0.22
    \      Correlation of Slopes                       0.16
    \      Correlation of Residuals                    0.13
    \      N                                            409
    \      occasions                                      7
    \      parameters                                    43
    \      LL                                        -9,089
    \      AIC                                       18,264
    \      BIC                                       18,436

##  digit_b 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _digit_b_


 process   label                                    aehplus
---------  -------------------------  ---------------------
   ab      Covar (Levels)               0.45 (0.40)     .26
   ab      Covar (Slopes)               0.00 (0.00)     .29
   ab      Covar (Residuals)            0.25 (0.18)     .16
   er      Corr (Levels)                0.13 (0.12)     .26
   er      Corr (Slopes)                0.31 (0.28)     .26
   er      Corr (Residuals)             0.05 (0.04)     .16
    a      Level                       21.48 (0.46)    <.01
    a      Slope                       -0.57 (0.04)    <.01
    a      Level * age                 -0.19 (0.03)    <.01
    a      Level * education            0.27 (0.39)     .48
    a      Level * height               0.15 (0.05)    <.01
    a      Level * smoking              0.22 (0.63)     .73
    a      Level * cardio              -2.25 (0.82)     .01
    a      Level * diabetes            -1.11 (1.69)     .51
    a      Slope * age                 -0.01 (0.00)    <.01
    a      Slope * education            0.02 (0.03)     .49
    a      Slope * height               0.00 (0.00)     .95
    a      Slope * smoking              0.03 (0.06)     .59
    a      Slope * cardio               0.01 (0.07)     .83
    a      Slope * diabetes            -0.46 (0.29)     .12
    b      Level                        3.65 (0.10)    <.01
    b      Slope                       -0.04 (0.01)    <.01
    b      Level * age                 -0.01 (0.01)     .16
    b      Level * education            0.50 (0.10)    <.01
    b      Level * height               0.01 (0.01)     .36
    b      Level * smoking              0.25 (0.16)     .13
    b      Level * cardio               0.03 (0.20)     .88
    b      Level * diabetes             0.14 (0.36)     .70
    b      Slope * age                 -0.00 (0.00)     .03
    b      Slope * education           -0.01 (0.01)     .28
    b      Slope * height               0.00 (0.00)     .41
    b      Slope * smoking              0.00 (0.01)     .67
    b      Slope * cardio               0.02 (0.02)     .26
    b      Slope * diabetes            -0.02 (0.03)     .62
    a      Var (Level)                 14.73 (3.00)    <.01
    a      Var (Slope)                  0.02 (0.01)     .06
    a      Var (Residual)              19.60 (2.83)    <.01
    b      Var (Level)                  0.81 (0.11)    <.01
    b      Var (Slope)                  0.00 (0.00)     .01
    b      Var (Residual)               0.82 (0.09)    <.01
    a      Covar (Level, Slope)         0.02 (0.16)     .88
    b      Covar (Level, Slope)        -0.01 (0.01)     .07
    \      Correlation of Levels                      0.129
    \      Correlation of Slopes                      0.295
    \      Correlation of Residuals                   0.061
    \      N                                            409
    \      occasions                                      7
    \      parameters                                    43
    \      LL                                        -7,154
    \      AIC                                       14,394
    \      BIC                                       14,566

##  digit_f 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _digit_f_


 process   label                                    aehplus
---------  -------------------------  ---------------------
   ab      Covar (Levels)              -0.04 (0.32)     .90
   ab      Covar (Slopes)               0.00 (0.00)     .38
   ab      Covar (Residuals)            0.09 (0.12)     .44
   er      Corr (Levels)               -0.01 (0.10)     .90
   er      Corr (Slopes)                0.59 (0.78)     .45
   er      Corr (Residuals)             0.02 (0.03)     .44
    a      Level                       21.49 (0.45)    <.01
    a      Slope                       -0.57 (0.04)    <.01
    a      Level * age                 -0.19 (0.04)    <.01
    a      Level * education            0.27 (0.40)     .50
    a      Level * height               0.15 (0.05)    <.01
    a      Level * smoking              0.23 (0.65)     .72
    a      Level * cardio              -2.24 (0.80)    <.01
    a      Level * diabetes            -1.10 (1.71)     .52
    a      Slope * age                 -0.01 (0.00)    <.01
    a      Slope * education            0.02 (0.03)     .48
    a      Slope * height               0.00 (0.00)     .91
    a      Slope * smoking              0.03 (0.05)     .61
    a      Slope * cardio               0.02 (0.07)     .83
    a      Slope * diabetes            -0.46 (0.38)     .22
    b      Level                        5.55 (0.10)    <.01
    b      Slope                       -0.03 (0.01)    <.01
    b      Level * age                 -0.01 (0.01)     .14
    b      Level * education            0.32 (0.09)    <.01
    b      Level * height               0.00 (0.01)     .81
    b      Level * smoking              0.03 (0.12)     .79
    b      Level * cardio              -0.27 (0.23)     .23
    b      Level * diabetes            -0.25 (0.34)     .46
    b      Slope * age                 -0.00 (0.00)     .12
    b      Slope * education           -0.00 (0.00)     .88
    b      Slope * height               0.00 (0.00)     .07
    b      Slope * smoking              0.00 (0.01)     .74
    b      Slope * cardio               0.03 (0.01)     .06
    b      Slope * diabetes             0.02 (0.06)     .71
    a      Var (Level)                 14.85 (3.02)    <.01
    a      Var (Slope)                  0.02 (0.01)     .04
    a      Var (Residual)              19.49 (2.85)    <.01
    b      Var (Level)                  0.71 (0.10)    <.01
    b      Var (Slope)                  0.00 (0.00)     .54
    b      Var (Residual)               0.59 (0.07)    <.01
    a      Covar (Level, Slope)         0.01 (0.16)     .93
    b      Covar (Level, Slope)        -0.00 (0.00)     .48
    \      Correlation of Levels                     -0.012
    \      Correlation of Slopes                        Inf
    \      Correlation of Residuals                   0.027
    \      N                                            409
    \      occasions                                      7
    \      parameters                                    43
    \      LL                                        -6,804
    \      AIC                                       13,695
    \      BIC                                       13,867

##  fig_id 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _fig_id_


 process   label                                          a                     ae                    aeh
---------  -------------------------  ---------------------  ---------------------  ---------------------
   ab      Covar (Levels)               6.07 (2.08)    <.01    5.73 (2.10)     .01    5.35 (2.13)     .01
   ab      Covar (Slopes)               0.02 (0.01)     .11    0.02 (0.01)     .13    0.02 (0.01)     .16
   ab      Covar (Residuals)           -0.87 (0.58)     .14   -0.63 (0.60)     .29   -0.62 (0.61)     .31
   er      Corr (Levels)                                ---                    ---                    ---
   er      Corr (Slopes)                                ---                    ---                    ---
   er      Corr (Residuals)                             ---                    ---                    ---
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
    b      Var (Level)                 36.27 (3.47)    <.01   36.23 (3.48)    <.01   36.52 (3.56)    <.01
    b      Var (Slope)                  0.11 (0.02)    <.01    0.10 (0.02)    <.01    0.10 (0.02)    <.01
    b      Var (Residual)              18.03 (0.74)    <.01   17.79 (0.74)    <.01   17.83 (0.75)    <.01
    a      Covar (Level, Slope)        -0.07 (0.14)     .62   -0.08 (0.15)     .58   -0.06 (0.14)     .68
    b      Covar (Level, Slope)        -0.47 (0.21)     .03   -0.51 (0.21)     .01   -0.52 (0.21)     .02
    \      Correlation of Levels                      0.241                  0.227                  0.214
    \      Correlation of Slopes                      0.328                  0.325                  0.297
    \      Correlation of Residuals                  -0.044                 -0.032                 -0.032
    \      N                                            508                    486                    477
    \      occasions                                      7                      7                      7
    \      parameters                                    21                     25                     29
    \      LL                                       -11,485                -11,076                -10,914
    \      AIC                                       23,013                 22,202                 21,886
    \      BIC                                       23,102                 22,307                 22,007

##  fig_mem 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _fig_mem_


 process   label                                    aehplus
---------  -------------------------  ---------------------
   ab      Covar (Levels)               0.30 (1.20)     .80
   ab      Covar (Slopes)               0.00 (0.01)     .77
   ab      Covar (Residuals)            1.60 (0.53)    <.01
   er      Corr (Levels)                0.02 (0.10)     .80
   er      Corr (Slopes)                0.12 (0.41)     .76
   er      Corr (Residuals)             0.13 (0.04)    <.01
    a      Level                       21.51 (0.45)    <.01
    a      Slope                       -0.57 (0.04)    <.01
    a      Level * age                 -0.19 (0.04)    <.01
    a      Level * education            0.30 (0.40)     .45
    a      Level * height               0.15 (0.05)    <.01
    a      Level * smoking              0.25 (0.63)     .69
    a      Level * cardio              -2.23 (0.83)     .01
    a      Level * diabetes            -1.11 (1.83)     .54
    a      Slope * age                 -0.01 (0.00)    <.01
    a      Slope * education            0.02 (0.03)     .51
    a      Slope * height               0.00 (0.00)     .94
    a      Slope * smoking              0.02 (0.05)     .65
    a      Slope * cardio               0.01 (0.08)     .89
    a      Slope * diabetes            -0.46 (0.30)     .13
    b      Level                       20.46 (0.34)    <.01
    b      Slope                       -0.18 (0.03)    <.01
    b      Level * age                 -0.08 (0.03)    <.01
    b      Level * education            1.26 (0.33)    <.01
    b      Level * height               0.01 (0.04)     .74
    b      Level * smoking              0.52 (0.48)     .28
    b      Level * cardio               0.52 (0.68)     .44
    b      Level * diabetes            -0.93 (1.54)     .55
    b      Slope * age                 -0.01 (0.00)    <.01
    b      Slope * education           -0.00 (0.02)     .89
    b      Slope * height              -0.00 (0.00)     .81
    b      Slope * smoking             -0.07 (0.04)     .07
    b      Slope * cardio               0.01 (0.05)     .80
    b      Slope * diabetes            -0.21 (0.16)     .20
    a      Var (Level)                 13.74 (2.37)    <.01
    a      Var (Slope)                  0.02 (0.01)     .08
    a      Var (Residual)              21.58 (1.03)    <.01
    b      Var (Level)                 11.09 (1.24)    <.01
    b      Var (Slope)                  0.01 (0.00)    <.01
    b      Var (Residual)               6.91 (0.34)    <.01
    a      Covar (Level, Slope)         0.08 (0.14)     .55
    b      Covar (Level, Slope)        -0.14 (0.07)     .06
    \      Correlation of Levels                      0.024
    \      Correlation of Slopes                      0.118
    \      Correlation of Residuals                   0.131
    \      N                                            409
    \      occasions                                      7
    \      parameters                                    41
    \      LL                                        -8,493
    \      AIC                                       17,067
    \      BIC                                       17,232

##  information 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _information_


 process   label                                          a                     ae                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------  ---------------------
   ab      Covar (Levels)               4.33 (2.31)     .06    2.93 (2.20)     .18    2.89 (2.21)     .19    2.57 (2.39)     .28
   ab      Covar (Slopes)               0.04 (0.01)    <.01    0.03 (0.01)     .01    0.03 (0.01)     .01    0.03 (0.01)     .03
   ab      Covar (Residuals)            0.96 (0.49)     .05    0.89 (0.50)     .07    0.85 (0.51)     .10    0.85 (0.57)     .14
   er      Corr (Levels)                                ---                    ---                    ---    0.10 (0.10)     .28
   er      Corr (Slopes)                                ---                    ---                    ---    0.65 (0.25)     .01
   er      Corr (Residuals)                             ---                    ---                    ---    0.05 (0.04)     .13
    a      Level                       21.04 (0.33)    <.01   20.86 (0.36)    <.01   20.83 (0.36)    <.01   21.50 (0.44)    <.01
    a      Slope                       -0.58 (0.03)    <.01   -0.59 (0.04)    <.01   -0.59 (0.04)    <.01   -0.57 (0.04)    <.01
    a      Level * age                 -0.27 (0.03)    <.01   -0.26 (0.03)    <.01   -0.24 (0.03)    <.01   -0.19 (0.04)    <.01
    a      Level * education                            ---    0.50 (0.40)     .22    0.37 (0.40)     .36    0.28 (0.39)     .47
    a      Level * height                               ---                    ---    0.13 (0.05)     .01    0.15 (0.05)    <.01
    a      Level * smoking                              ---                    ---                    ---    0.23 (0.62)     .72
    a      Level * cardio                               ---                    ---                    ---   -2.23 (0.79)    <.01
    a      Level * diabetes                             ---                    ---                    ---   -1.12 (1.88)     .55
    a      Slope * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01
    a      Slope * education                            ---    0.02 (0.03)     .53    0.02 (0.03)     .56    0.02 (0.03)     .47
    a      Slope * height                               ---                    ---    0.00 (0.00)     .88    0.00 (0.00)     .99
    a      Slope * smoking                              ---                    ---                    ---    0.03 (0.05)     .61
    a      Slope * cardio                               ---                    ---                    ---    0.01 (0.07)     .87
    a      Slope * diabetes                             ---                    ---                    ---   -0.45 (0.33)     .17
    b      Level                       29.02 (0.46)    <.01   27.59 (0.44)    <.01   27.71 (0.43)    <.01   27.86 (0.57)    <.01
    b      Slope                       -0.31 (0.03)    <.01   -0.30 (0.04)    <.01   -0.30 (0.04)    <.01   -0.29 (0.05)    <.01
    b      Level * age                 -0.14 (0.04)    <.01   -0.05 (0.04)     .23   -0.04 (0.04)     .33   -0.04 (0.05)     .42
    b      Level * education                            ---    4.14 (0.64)    <.01    4.26 (0.66)    <.01    4.03 (0.79)    <.01
    b      Level * height                               ---                    ---    0.01 (0.06)     .86    0.01 (0.07)     .83
    b      Level * smoking                              ---                    ---                    ---    1.08 (1.00)     .28
    b      Level * cardio                               ---                    ---                    ---   -2.04 (1.12)     .07
    b      Level * diabetes                             ---                    ---                    ---    0.36 (1.77)     .84
    b      Slope * age                 -0.03 (0.00)    <.01   -0.03 (0.00)    <.01   -0.03 (0.00)    <.01   -0.02 (0.00)    <.01
    b      Slope * education                            ---   -0.03 (0.04)     .39   -0.04 (0.04)     .31   -0.03 (0.05)     .53
    b      Slope * height                               ---                    ---    0.00 (0.00)     .45    0.00 (0.00)     .61
    b      Slope * smoking                              ---                    ---                    ---    0.04 (0.06)     .54
    b      Slope * cardio                               ---                    ---                    ---    0.09 (0.09)     .33
    b      Slope * diabetes                             ---                    ---                    ---   -0.20 (0.19)     .30
    a      Var (Level)                 17.52 (2.32)    <.01   17.63 (2.36)    <.01   17.07 (2.32)    <.01   13.76 (2.39)    <.01
    a      Var (Slope)                  0.03 (0.01)     .01    0.03 (0.01)     .01    0.03 (0.01)     .01    0.02 (0.01)     .07
    a      Var (Residual)              21.63 (0.93)    <.01   21.55 (0.97)    <.01   21.66 (0.99)    <.01   21.56 (1.07)    <.01
    b      Var (Level)                 57.22 (4.60)    <.01   46.92 (3.74)    <.01   44.95 (3.65)    <.01   45.67 (4.20)    <.01
    b      Var (Slope)                  0.11 (0.01)    <.01    0.10 (0.01)    <.01    0.10 (0.01)    <.01    0.10 (0.02)    <.01
    b      Var (Residual)              10.92 (0.40)    <.01   10.97 (0.41)    <.01   11.05 (0.43)    <.01   11.45 (0.49)    <.01
    a      Covar (Level, Slope)        -0.09 (0.14)     .53   -0.10 (0.14)     .49   -0.08 (0.14)     .57    0.07 (0.14)     .62
    b      Covar (Level, Slope)        -0.59 (0.23)     .01   -0.51 (0.21)     .02   -0.48 (0.21)     .02   -0.65 (0.24)     .01
    \      Correlation of Levels                      0.137                  0.102                  0.104                  0.102
    \      Correlation of Slopes                      0.583                  0.569                  0.602                  0.636
    \      Correlation of Residuals                   0.062                  0.058                  0.055                  0.054
    \      N                                            510                    488                    479                    410
    \      occasions                                      7                      7                      7                      7
    \      parameters                                    21                     25                     29                     41
    \      LL                                       -11,516                -11,074                -10,909                 -9,333
    \      AIC                                       23,074                 22,198                 21,875                 18,749
    \      BIC                                       23,163                 22,303                 21,996                 18,913

##  mmse 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _mmse_


 process   label                                          a                     ae                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------  ---------------------
   ab      Covar (Levels)               0.24 (0.54)     .65    0.11 (0.55)     .84    0.16 (0.56)     .77    0.18 (0.63)     .77
   ab      Covar (Slopes)               0.01 (0.01)     .14    0.01 (0.01)     .23    0.01 (0.01)     .26    0.01 (0.01)     .34
   ab      Covar (Residuals)            0.89 (0.25)    <.01    0.90 (0.26)    <.01    0.91 (0.27)    <.01    1.08 (0.30)    <.01
   er      Corr (Levels)                                ---                    ---                    ---    0.06 (0.19)     .77
   er      Corr (Slopes)                                ---                    ---                    ---    0.29 (0.28)     .29
   er      Corr (Residuals)                             ---                    ---                    ---    0.13 (0.04)    <.01
    a      Level                       21.02 (0.32)    <.01   20.85 (0.35)    <.01   20.82 (0.36)    <.01   21.47 (0.45)    <.01
    a      Slope                       -0.57 (0.04)    <.01   -0.58 (0.04)    <.01   -0.58 (0.04)    <.01   -0.57 (0.05)    <.01
    a      Level * age                 -0.27 (0.03)    <.01   -0.26 (0.03)    <.01   -0.24 (0.03)    <.01   -0.19 (0.03)    <.01
    a      Level * education                            ---    0.51 (0.40)     .20    0.38 (0.40)     .33    0.30 (0.39)     .43
    a      Level * height                               ---                    ---    0.13 (0.05)     .01    0.15 (0.05)    <.01
    a      Level * smoking                              ---                    ---                    ---    0.26 (0.62)     .67
    a      Level * cardio                               ---                    ---                    ---   -2.21 (0.81)     .01
    a      Level * diabetes                             ---                    ---                    ---   -1.11 (1.84)     .55
    a      Slope * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01
    a      Slope * education                            ---    0.02 (0.03)     .57    0.02 (0.03)     .59    0.02 (0.03)     .48
    a      Slope * height                               ---                    ---    0.00 (0.00)     .99    0.00 (0.00)     .96
    a      Slope * smoking                              ---                    ---                    ---    0.03 (0.05)     .63
    a      Slope * cardio                               ---                    ---                    ---    0.02 (0.07)     .80
    a      Slope * diabetes                             ---                    ---                    ---   -0.43 (0.31)     .16
    b      Level                       28.10 (0.10)    <.01   27.94 (0.11)    <.01   27.97 (0.11)    <.01   28.05 (0.14)    <.01
    b      Slope                       -0.27 (0.02)    <.01   -0.27 (0.02)    <.01   -0.27 (0.02)    <.01   -0.29 (0.03)    <.01
    b      Level * age                 -0.04 (0.01)    <.01   -0.03 (0.01)    <.01   -0.03 (0.01)    <.01   -0.03 (0.01)     .01
    b      Level * education                            ---    0.37 (0.14)     .01    0.40 (0.14)     .01    0.32 (0.18)     .08
    b      Level * height                               ---                    ---   -0.02 (0.02)     .30   -0.01 (0.02)     .52
    b      Level * smoking                              ---                    ---                    ---   -0.06 (0.26)     .81
    b      Level * cardio                               ---                    ---                    ---   -0.08 (0.26)     .74
    b      Level * diabetes                             ---                    ---                    ---   -0.74 (0.51)     .15
    b      Slope * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01
    b      Slope * education                            ---   -0.00 (0.02)     .97   -0.00 (0.02)     .92    0.01 (0.03)     .79
    b      Slope * height                               ---                    ---    0.00 (0.00)     .71    0.00 (0.00)     .53
    b      Slope * smoking                              ---                    ---                    ---    0.04 (0.04)     .33
    b      Slope * cardio                               ---                    ---                    ---    0.02 (0.05)     .73
    b      Slope * diabetes                             ---                    ---                    ---    0.14 (0.11)     .21
    a      Var (Level)                 17.51 (2.32)    <.01   17.59 (2.35)    <.01   17.07 (2.31)    <.01   13.78 (2.40)    <.01
    a      Var (Slope)                  0.03 (0.01)     .01    0.03 (0.01)     .01    0.03 (0.01)     .01    0.02 (0.01)     .06
    a      Var (Residual)              21.66 (0.94)    <.01   21.57 (0.96)    <.01   21.67 (0.97)    <.01   21.57 (1.05)    <.01
    b      Var (Level)                  0.76 (0.20)    <.01    0.74 (0.20)    <.01    0.74 (0.20)    <.01    0.77 (0.23)    <.01
    b      Var (Slope)                  0.05 (0.00)    <.01    0.04 (0.00)    <.01    0.04 (0.00)    <.01    0.04 (0.00)    <.01
    b      Var (Residual)               3.13 (0.07)    <.01    3.07 (0.07)    <.01    3.08 (0.08)    <.01    3.13 (0.09)    <.01
    a      Covar (Level, Slope)        -0.09 (0.14)     .54   -0.09 (0.14)     .51   -0.07 (0.14)     .59    0.06 (0.14)     .64
    b      Covar (Level, Slope)         0.05 (0.02)    <.01    0.05 (0.02)    <.01    0.05 (0.02)    <.01    0.06 (0.02)    <.01
    \      Correlation of Levels                      0.067                  0.031                  0.046                  0.056
    \      Correlation of Slopes                      0.329                  0.284                  0.295                  0.280
    \      Correlation of Residuals                   0.108                  0.111                  0.112                  0.131
    \      N                                            511                    489                    480                    411
    \      occasions                                      7                      7                      7                      7
    \      parameters                                    21                     25                     29                     41
    \      LL                                        -9,977                 -9,604                 -9,470                 -8,085
    \      AIC                                       19,995                 19,258                 18,998                 16,252
    \      BIC                                       20,084                 19,363                 19,119                 16,417

##  rotate 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _rotate_


 process   label                                      aehplus
---------  -------------------------  -----------------------
   ab      Covar (Levels)                 7.00 (5.21)     .18
   ab      Covar (Slopes)                 0.01 (0.03)     .65
   ab      Covar (Residuals)              4.87 (2.00)     .01
   er      Corr (Levels)                  0.14 (0.10)     .17
   er      Corr (Slopes)                  0.31 (0.69)     .65
   er      Corr (Residuals)               0.10 (0.04)     .01
    a      Level                         21.50 (0.44)    <.01
    a      Slope                         -0.57 (0.04)    <.01
    a      Level * age                   -0.19 (0.04)    <.01
    a      Level * education              0.36 (0.39)     .35
    a      Level * height                 0.15 (0.05)    <.01
    a      Level * smoking                0.22 (0.63)     .73
    a      Level * cardio                -2.25 (0.89)     .01
    a      Level * diabetes              -1.11 (1.74)     .52
    a      Slope * age                   -0.01 (0.00)    <.01
    a      Slope * education              0.02 (0.03)     .61
    a      Slope * height                 0.00 (0.00)     .96
    a      Slope * smoking                0.03 (0.05)     .57
    a      Slope * cardio                 0.01 (0.07)     .84
    a      Slope * diabetes              -0.46 (0.37)     .21
    b      Level                         41.44 (1.59)    <.01
    b      Slope                         -0.94 (0.12)    <.01
    b      Level * age                   -0.65 (0.12)    <.01
    b      Level * education              0.88 (1.22)     .47
    b      Level * height                 0.20 (0.16)     .22
    b      Level * smoking                0.51 (1.91)     .79
    b      Level * cardio                 2.07 (2.81)     .46
    b      Level * diabetes             -8.10 (11.02)     .46
    b      Slope * age                   -0.04 (0.01)    <.01
    b      Slope * education              0.16 (0.08)     .04
    b      Slope * height                -0.01 (0.01)     .19
    b      Slope * smoking               -0.10 (0.13)     .46
    b      Slope * cardio                 0.09 (0.28)     .75
    b      Slope * diabetes              -0.92 (0.96)     .34
    a      Var (Level)                   13.78 (2.38)    <.01
    a      Var (Slope)                    0.02 (0.01)     .07
    a      Var (Residual)                21.54 (1.04)    <.01
    b      Var (Level)                 185.20 (22.27)    <.01
    b      Var (Slope)                    0.07 (0.09)     .43
    b      Var (Residual)               110.95 (5.14)    <.01
    a      Covar (Level, Slope)           0.08 (0.14)     .57
    b      Covar (Level, Slope)          -0.14 (1.13)     .90
    \      Correlation of Levels                         0.14
    \      Correlation of Slopes                         0.33
    \      Correlation of Residuals                      0.10
    \      N                                              409
    \      occasions                                        7
    \      parameters                                      41
    \      LL                                         -10,010
    \      AIC                                         20,103
    \      BIC                                         20,267

##  symbol 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _symbol_


 process   label                                          a                     ae                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------  ---------------------
   ab      Covar (Levels)               9.29 (2.71)    <.01    8.50 (2.63)    <.01    7.69 (2.58)    <.01    8.61 (3.14)     .01
   ab      Covar (Slopes)               0.02 (0.01)     .05    0.02 (0.01)     .04    0.02 (0.01)     .05    0.02 (0.01)     .11
   ab      Covar (Residuals)            2.33 (0.77)    <.01    2.37 (0.80)    <.01    2.45 (0.80)    <.01    2.51 (1.00)     .01
   er      Corr (Levels)                                ---                    ---                    ---    0.26 (0.09)    <.01
   er      Corr (Slopes)                                ---                    ---                    ---    0.46 (0.24)     .05
   er      Corr (Residuals)                             ---                    ---                    ---    0.10 (0.04)     .01
    a      Level                       21.04 (0.30)    <.01   20.85 (0.34)    <.01   20.82 (0.33)    <.01   21.49 (0.46)    <.01
    a      Slope                       -0.57 (0.03)    <.01   -0.58 (0.03)    <.01   -0.58 (0.03)    <.01   -0.57 (0.04)    <.01
    a      Level * age                 -0.27 (0.03)    <.01   -0.26 (0.03)    <.01   -0.24 (0.03)    <.01   -0.19 (0.04)    <.01
    a      Level * education                            ---    0.53 (0.39)     .17    0.40 (0.40)     .31    0.31 (0.40)     .43
    a      Level * height                               ---                    ---    0.13 (0.04)    <.01    0.15 (0.05)    <.01
    a      Level * smoking                              ---                    ---                    ---    0.20 (0.63)     .75
    a      Level * cardio                               ---                    ---                    ---   -2.26 (0.82)     .01
    a      Level * diabetes                             ---                    ---                    ---   -1.11 (1.75)     .52
    a      Slope * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01
    a      Slope * education                            ---    0.01 (0.02)     .51    0.01 (0.02)     .56    0.02 (0.03)     .55
    a      Slope * height                               ---                    ---    0.00 (0.00)     .94    0.00 (0.00)     .96
    a      Slope * smoking                              ---                    ---                    ---    0.03 (0.05)     .56
    a      Slope * cardio                               ---                    ---                    ---    0.02 (0.07)     .82
    a      Slope * diabetes                             ---                    ---                    ---   -0.46 (0.34)     .17
    b      Level                       35.41 (0.55)    <.01   33.80 (0.59)    <.01   33.84 (0.59)    <.01   34.48 (0.75)    <.01
    b      Slope                       -0.85 (0.04)    <.01   -0.86 (0.04)    <.01   -0.86 (0.04)    <.01   -0.82 (0.07)    <.01
    b      Level * age                 -0.83 (0.05)    <.01   -0.75 (0.05)    <.01   -0.73 (0.05)    <.01   -0.69 (0.06)    <.01
    b      Level * education                            ---    4.06 (0.69)    <.01    3.96 (0.70)    <.01    3.29 (0.70)    <.01
    b      Level * height                               ---                    ---    0.10 (0.08)     .22    0.17 (0.09)     .05
    b      Level * smoking                              ---                    ---                    ---    0.93 (1.19)     .44
    b      Level * cardio                               ---                    ---                    ---   -1.79 (1.56)     .25
    b      Level * diabetes                             ---                    ---                    ---   -6.82 (2.93)     .02
    b      Slope * age                 -0.03 (0.00)    <.01   -0.02 (0.00)    <.01   -0.02 (0.00)    <.01   -0.02 (0.00)    <.01
    b      Slope * education                            ---    0.01 (0.04)     .80    0.00 (0.04)     .93    0.05 (0.04)     .23
    b      Slope * height                               ---                    ---    0.00 (0.00)     .35    0.00 (0.01)     .99
    b      Slope * smoking                              ---                    ---                    ---   -0.06 (0.08)     .47
    b      Slope * cardio                               ---                    ---                    ---   -0.02 (0.16)     .91
    b      Slope * diabetes                             ---                    ---                    ---   -0.20 (0.55)     .72
    a      Var (Level)                 17.51 (2.27)    <.01   17.65 (2.30)    <.01   17.10 (2.35)    <.01   15.27 (3.01)    <.01
    a      Var (Slope)                  0.03 (0.01)     .03    0.03 (0.01)     .03    0.03 (0.01)     .04    0.03 (0.01)     .04
    a      Var (Residual)              21.65 (1.00)    <.01   21.54 (1.02)    <.01   21.64 (1.03)    <.01   18.96 (2.84)    <.01
    b      Var (Level)                 80.63 (7.05)    <.01   73.03 (6.75)    <.01   72.57 (6.80)    <.01   70.38 (6.77)    <.01
    b      Var (Slope)                  0.10 (0.03)    <.01    0.09 (0.03)    <.01    0.09 (0.03)    <.01    0.09 (0.02)    <.01
    b      Var (Residual)              27.39 (2.34)    <.01   27.54 (2.45)    <.01   27.44 (2.45)    <.01   25.31 (1.50)    <.01
    a      Covar (Level, Slope)        -0.06 (0.14)     .65   -0.08 (0.14)     .58   -0.06 (0.14)     .67   -0.02 (0.17)     .90
    b      Covar (Level, Slope)        -0.36 (0.34)     .28   -0.55 (0.33)     .09   -0.57 (0.33)     .08   -0.75 (0.38)     .05
    \      Correlation of Levels                      0.247                  0.237                   0.22                   0.26
    \      Correlation of Slopes                      0.443                  0.473                   0.46                   0.47
    \      Correlation of Residuals                   0.096                  0.097                   0.10                   0.11
    \      N                                            508                    486                    477                    409
    \      occasions                                      7                      7                      7                      7
    \      parameters                                    21                     25                     29                     43
    \      LL                                       -11,783                -11,348                -11,181                 -9,587
    \      AIC                                       23,608                 22,745                 22,421                 19,261
    \      BIC                                       23,697                 22,850                 22,542                 19,433

##  synonyms 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _synonyms_


 process   label                                          a                     ae                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------  ---------------------
   ab      Covar (Levels)               3.02 (1.49)     .04    2.00 (1.37)     .14    1.83 (1.37)     .18    1.86 (1.41)     .19
   ab      Covar (Slopes)               0.01 (0.00)     .20    0.01 (0.00)     .17    0.01 (0.00)     .15    0.00 (0.01)     .52
   ab      Covar (Residuals)            0.64 (0.36)     .07    0.64 (0.36)     .08    0.63 (0.36)     .08    0.63 (0.38)     .10
   er      Corr (Levels)                                ---                    ---                    ---    0.12 (0.09)     .18
   er      Corr (Slopes)                                ---                    ---                    ---    0.26 (0.42)     .53
   er      Corr (Residuals)                             ---                    ---                    ---    0.06 (0.04)     .10
    a      Level                       21.04 (0.32)    <.01   20.86 (0.36)    <.01   20.83 (0.36)    <.01   21.50 (0.45)    <.01
    a      Slope                       -0.57 (0.03)    <.01   -0.59 (0.04)    <.01   -0.59 (0.04)    <.01   -0.57 (0.04)    <.01
    a      Level * age                 -0.27 (0.03)    <.01   -0.26 (0.03)    <.01   -0.24 (0.03)    <.01   -0.19 (0.03)    <.01
    a      Level * education                            ---    0.52 (0.41)     .20    0.39 (0.41)     .34    0.30 (0.40)     .45
    a      Level * height                               ---                    ---    0.13 (0.05)     .01    0.15 (0.05)    <.01
    a      Level * smoking                              ---                    ---                    ---    0.25 (0.63)     .69
    a      Level * cardio                               ---                    ---                    ---   -2.26 (0.80)    <.01
    a      Level * diabetes                             ---                    ---                    ---   -1.14 (1.81)     .53
    a      Slope * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01
    a      Slope * education                            ---    0.02 (0.03)     .57    0.02 (0.03)     .59    0.02 (0.03)     .52
    a      Slope * height                               ---                    ---    0.00 (0.00)     .92    0.00 (0.00)     .99
    a      Slope * smoking                              ---                    ---                    ---    0.02 (0.05)     .67
    a      Slope * cardio                               ---                    ---                    ---    0.02 (0.07)     .82
    a      Slope * diabetes                             ---                    ---                    ---   -0.45 (0.32)     .15
    b      Level                       18.37 (0.29)    <.01   17.33 (0.28)    <.01   17.41 (0.28)    <.01   17.71 (0.34)    <.01
    b      Slope                       -0.11 (0.02)    <.01   -0.11 (0.02)    <.01   -0.11 (0.02)    <.01   -0.13 (0.02)    <.01
    b      Level * age                 -0.12 (0.03)    <.01   -0.06 (0.02)     .01   -0.05 (0.03)     .04   -0.04 (0.03)     .18
    b      Level * education                            ---    2.91 (0.41)    <.01    2.94 (0.42)    <.01    2.72 (0.48)    <.01
    b      Level * height                               ---                    ---    0.01 (0.04)     .75    0.04 (0.05)     .43
    b      Level * smoking                              ---                    ---                    ---    1.10 (0.62)     .07
    b      Level * cardio                               ---                    ---                    ---   -1.57 (0.84)     .06
    b      Level * diabetes                             ---                    ---                    ---   -2.50 (1.15)     .03
    b      Slope * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01
    b      Slope * education                            ---   -0.00 (0.02)     .81   -0.01 (0.02)     .78    0.00 (0.02)     .99
    b      Slope * height                               ---                    ---    0.00 (0.00)     .31    0.00 (0.00)     .66
    b      Slope * smoking                              ---                    ---                    ---   -0.01 (0.03)     .81
    b      Slope * cardio                               ---                    ---                    ---    0.06 (0.05)     .22
    b      Slope * diabetes                             ---                    ---                    ---    0.08 (0.21)     .69
    a      Var (Level)                 17.59 (2.33)    <.01   17.68 (2.38)    <.01   17.13 (2.33)    <.01   13.84 (2.39)    <.01
    a      Var (Slope)                  0.03 (0.01)     .01    0.03 (0.01)     .01    0.03 (0.01)     .01    0.02 (0.01)     .10
    a      Var (Residual)              21.66 (0.93)    <.01   21.55 (0.96)    <.01   21.65 (0.97)    <.01   21.56 (1.06)    <.01
    b      Var (Level)                 24.59 (2.09)    <.01   20.10 (1.76)    <.01   19.83 (1.75)    <.01   18.29 (1.70)    <.01
    b      Var (Slope)                  0.01 (0.00)    <.01    0.01 (0.00)    <.01    0.01 (0.00)    <.01    0.01 (0.00)    <.01
    b      Var (Residual)               4.53 (0.20)    <.01    4.49 (0.21)    <.01    4.50 (0.21)    <.01    4.46 (0.24)    <.01
    a      Covar (Level, Slope)        -0.08 (0.14)     .59   -0.09 (0.14)     .53   -0.07 (0.14)     .62    0.08 (0.14)     .56
    b      Covar (Level, Slope)        -0.04 (0.07)     .56   -0.05 (0.06)     .42   -0.05 (0.07)     .49   -0.05 (0.07)     .46
    \      Correlation of Levels                      0.145                  0.106                  0.099                  0.117
    \      Correlation of Slopes                      0.379                  0.373                  0.392                  0.290
    \      Correlation of Residuals                   0.064                  0.065                  0.064                  0.064
    \      N                                            508                    486                    477                    409
    \      occasions                                      7                      7                      7                      7
    \      parameters                                    21                     25                     29                     41
    \      LL                                       -10,426                -10,019                 -9,869                 -8,431
    \      AIC                                       20,894                 20,088                 19,796                 16,944
    \      BIC                                       20,983                 20,193                 19,917                 17,108

## Summary 

 Study = _SATSA_; Gender = _female_; Process (a) = _grip_

 Computed correlations:

 

label                      process_b      a     ae    aeh   aehplus
----------------------  ------------  -----  -----  -----  --------
Correlation of Levels      analogies   0.10   0.05   0.06      0.01
Correlation of Levels          block      .      .      .      0.22
Correlation of Levels        digit_b      .      .      .      0.13
Correlation of Levels        digit_f      .      .      .     -0.01
Correlation of Levels         fig_id   0.24   0.23   0.21         .
Correlation of Levels        fig_mem      .      .      .      0.02
Correlation of Levels    information   0.14   0.10   0.10      0.10
Correlation of Levels           mmse   0.07   0.03   0.05      0.06
Correlation of Levels         rotate      .      .      .      0.14
Correlation of Levels         symbol   0.25   0.24   0.22      0.26
Correlation of Levels       synonyms   0.15   0.11   0.10      0.12




label                      process_b      a     ae    aeh   aehplus
----------------------  ------------  -----  -----  -----  --------
Correlation of Slopes      analogies   0.38   0.45   0.45      0.45
Correlation of Slopes          block      .      .      .      0.16
Correlation of Slopes        digit_b      .      .      .      0.29
Correlation of Slopes        digit_f      .      .      .       Inf
Correlation of Slopes         fig_id   0.33   0.32   0.30         .
Correlation of Slopes        fig_mem      .      .      .      0.12
Correlation of Slopes    information   0.58   0.57   0.60      0.64
Correlation of Slopes           mmse   0.33   0.28   0.29      0.28
Correlation of Slopes         rotate      .      .      .      0.33
Correlation of Slopes         symbol   0.44   0.47   0.46      0.47
Correlation of Slopes       synonyms   0.38   0.37   0.39      0.29




label                         process_b       a      ae     aeh   aehplus
-------------------------  ------------  ------  ------  ------  --------
Correlation of Residuals      analogies    0.11    0.12    0.12      0.12
Correlation of Residuals          block       .       .       .      0.13
Correlation of Residuals        digit_b       .       .       .      0.06
Correlation of Residuals        digit_f       .       .       .      0.03
Correlation of Residuals         fig_id   -0.04   -0.03   -0.03         .
Correlation of Residuals        fig_mem       .       .       .      0.13
Correlation of Residuals    information    0.06    0.06    0.06      0.05
Correlation of Residuals           mmse    0.11    0.11    0.11      0.13
Correlation of Residuals         rotate       .       .       .      0.10
Correlation of Residuals         symbol    0.10    0.10    0.10      0.11
Correlation of Residuals       synonyms    0.06    0.06    0.06      0.06



P-values for corresponding covariances: 

 

label                     process_b      a     ae    aeh   aehplus
---------------------  ------------  -----  -----  -----  --------
Covariance of Levels      analogies   0.24   0.53   0.50      0.93
Covariance of Levels          block      .      .      .      0.02
Covariance of Levels        digit_b      .      .      .      0.26
Covariance of Levels        digit_f      .      .      .      0.90
Covariance of Levels         fig_id   0.00   0.01   0.01         .
Covariance of Levels        fig_mem      .      .      .      0.80
Covariance of Levels    information   0.06   0.18   0.19      0.28
Covariance of Levels           mmse   0.65   0.84   0.77      0.77
Covariance of Levels         rotate      .      .      .      0.18
Covariance of Levels         symbol   0.00   0.00   0.00      0.01
Covariance of Levels       synonyms   0.04   0.14   0.18      0.19




label                     process_b      a     ae    aeh   aehplus
---------------------  ------------  -----  -----  -----  --------
Covariance of Slopes      analogies   0.09   0.07   0.07      0.18
Covariance of Slopes          block      .      .      .      0.68
Covariance of Slopes        digit_b      .      .      .      0.29
Covariance of Slopes        digit_f      .      .      .      0.38
Covariance of Slopes         fig_id   0.11   0.13   0.16         .
Covariance of Slopes        fig_mem      .      .      .      0.77
Covariance of Slopes    information   0.00   0.01   0.01      0.03
Covariance of Slopes           mmse   0.14   0.23   0.26      0.34
Covariance of Slopes         rotate      .      .      .      0.65
Covariance of Slopes         symbol   0.05   0.04   0.05      0.11
Covariance of Slopes       synonyms   0.20   0.17   0.15      0.52




label                         process_b      a     ae    aeh   aehplus
-------------------------  ------------  -----  -----  -----  --------
Covariance of  Residuals      analogies   0.00   0.00   0.00      0.00
Covariance of  Residuals          block      .      .      .      0.00
Covariance of  Residuals        digit_b      .      .      .      0.16
Covariance of  Residuals        digit_f      .      .      .      0.44
Covariance of  Residuals         fig_id   0.14   0.29   0.31         .
Covariance of  Residuals        fig_mem      .      .      .      0.00
Covariance of  Residuals    information   0.05   0.07   0.10      0.14
Covariance of  Residuals           mmse   0.00   0.00   0.00      0.00
Covariance of  Residuals         rotate      .      .      .      0.01
Covariance of  Residuals         symbol   0.00   0.00   0.00      0.01
Covariance of  Residuals       synonyms   0.07   0.08   0.08      0.10



# male 

 Gender = _male_; Model type: _aehplus_;  Process (a) = _grip_; Process (b): *analogies*, *block*, *digit_b*, *digit_f*, *fig_id*, *fig_mem*, *information*, *mmse*, *rotate*, *symbol*, *synonyms*


 process   label                                  analogies                  block                digit_b                digit_f                fig_mem       information        mmse                                    rotate                  symbol               synonyms        mean(sd)
---------  -------------------------  ---------------------  ---------------------  ---------------------  ---------------------  ---------------------  ----------------------  ---------------------  -----------------------  ----------------------  ---------------------  --------------
   ab      Covar (Levels)               1.99 (1.84)     .28   13.31 (3.74)    <.01    1.36 (0.62)     .03    0.92 (0.62)     .14    4.79 (2.55)     .06   2.57 (2.39)     .28    2.17 (1.12)     .05       32.45 (9.82)    <.01    15.98 (4.96)    <.01    5.13 (2.75)     .06             ---
   ab      Covar (Slopes)               0.01 (0.01)     .15    0.03 (0.01)     .05    0.00 (0.00)     .75    0.00 (0.00)     .61    0.01 (0.01)     .39   0.03 (0.01)     .03    0.01 (0.01)     .31       -0.01 (0.05)     .80     0.00 (0.02)     .92   -0.01 (0.01)     .37             ---
   ab      Covar (Residuals)            2.35 (0.69)    <.01    2.52 (0.90)    <.01   -0.11 (0.26)     .67    0.17 (0.25)     .49    1.91 (0.81)     .02   0.85 (0.57)     .14    1.04 (0.41)     .01        6.04 (3.15)     .06     4.53 (1.42)    <.01    0.15 (0.55)     .79             ---
   er      Corr (Levels)                0.13 (0.11)     .27    0.40 (0.09)    <.01    0.29 (0.13)     .02    0.19 (0.12)     .12    0.24 (0.12)     .04   0.10 (0.10)     .28    0.27 (0.13)     .04        0.36 (0.09)    <.01     0.32 (0.09)    <.01    0.19 (0.10)     .05             ---
   er      Corr (Slopes)                0.69 (0.53)     .19    0.79 (0.44)     .07    0.36 (1.13)     .75    0.40 (0.77)     .60    0.50 (0.50)     .32   0.65 (0.25)     .01    0.34 (0.30)     .27       -0.13 (0.55)     .81     0.04 (0.44)     .92   -0.42 (0.51)     .41             ---
   er      Corr (Residuals)             0.17 (0.05)    <.01    0.14 (0.05)    <.01   -0.02 (0.05)     .67    0.04 (0.05)     .49    0.12 (0.05)     .02   0.05 (0.04)     .13    0.13 (0.05)     .01        0.10 (0.05)     .05     0.16 (0.05)    <.01    0.01 (0.05)     .79             ---
    a      Level                       36.82 (0.83)    <.01   36.89 (0.87)    <.01   36.88 (0.84)    <.01   36.85 (0.84)    <.01   36.83 (0.83)    <.01   21.50 (0.44)    <.01   36.79 (0.88)    <.01      36.87 (0.85)    <.01    36.92 (0.84)    <.01   36.81 (0.90)    <.01     35.31(4.86)
    a      Slope                       -0.95 (0.08)    <.01   -0.96 (0.08)    <.01   -0.95 (0.08)    <.01   -0.95 (0.08)    <.01   -0.95 (0.08)    <.01   -0.57 (0.04)    <.01   -0.94 (0.09)    <.01      -0.95 (0.08)    <.01    -0.96 (0.08)    <.01   -0.95 (0.08)    <.01     -0.91(0.12)
    a      Level * age                 -0.47 (0.06)    <.01   -0.47 (0.06)    <.01   -0.46 (0.06)    <.01   -0.46 (0.06)    <.01   -0.47 (0.06)    <.01   -0.19 (0.04)    <.01   -0.47 (0.06)    <.01      -0.47 (0.06)    <.01    -0.47 (0.06)    <.01   -0.47 (0.06)    <.01     -0.44(0.09)
    a      Level * education            0.07 (0.55)     .90    0.14 (0.57)     .81    0.10 (0.56)     .86    0.09 (0.56)     .87    0.08 (0.56)     .88   0.28 (0.39)     .47    0.07 (0.56)     .90        0.08 (0.56)     .88     0.07 (0.56)     .90    0.06 (0.57)     .92      0.11(0.07)
    a      Level * height               0.36 (0.09)    <.01    0.37 (0.09)    <.01    0.38 (0.09)    <.01    0.37 (0.09)    <.01    0.37 (0.09)    <.01   0.15 (0.05)    <.01    0.37 (0.09)    <.01        0.38 (0.09)    <.01     0.37 (0.09)    <.01    0.37 (0.09)    <.01      0.35(0.07)
    a      Level * smoking              1.64 (1.02)     .11    1.70 (1.04)     .10    1.69 (1.03)     .10    1.70 (1.01)     .09    1.68 (1.01)     .10   0.23 (0.62)     .72    1.72 (1.02)     .09        1.66 (1.03)     .11     1.78 (1.03)     .08    1.70 (1.09)     .12      1.55(0.47)
    a      Level * cardio              -0.37 (1.50)     .81   -0.46 (1.46)     .75   -0.38 (1.48)     .80   -0.34 (1.49)     .82   -0.31 (1.55)     .84   -2.23 (0.79)    <.01   -0.34 (1.48)     .82      -0.27 (1.45)     .85    -0.41 (1.40)     .77   -0.32 (1.52)     .83     -0.54(0.59)
    a      Level * diabetes            -2.44 (3.38)     .47   -2.51 (3.24)     .44   -2.50 (5.13)     .63   -2.44 (4.02)     .54   -2.61 (3.69)     .48   -1.12 (1.88)     .55   -2.45 (5.16)     .63      -2.70 (3.61)     .45    -2.56 (3.14)     .41   -2.57 (3.27)     .43     -2.39(0.45)
    a      Slope * age                 -0.02 (0.01)    <.01   -0.02 (0.01)    <.01   -0.02 (0.01)    <.01   -0.02 (0.01)    <.01   -0.02 (0.01)    <.01   -0.01 (0.00)    <.01   -0.02 (0.01)    <.01      -0.02 (0.01)    <.01    -0.02 (0.01)    <.01   -0.02 (0.01)    <.01     -0.02(0.00)
    a      Slope * education           -0.00 (0.04)     .97   -0.01 (0.04)     .79   -0.00 (0.04)     .90   -0.00 (0.04)     .94   -0.00 (0.04)     .93   0.02 (0.03)     .47    -0.00 (0.04)     .94      -0.01 (0.04)     .86    -0.00 (0.04)     .94   -0.00 (0.04)     .94     -0.00(0.01)
    a      Slope * height              -0.00 (0.01)     .80   -0.00 (0.01)     .79   -0.00 (0.01)     .70   -0.00 (0.01)     .75   -0.00 (0.01)     .80   0.00 (0.00)     .99    -0.00 (0.01)     .82      -0.00 (0.01)     .65    -0.00 (0.01)     .68   -0.00 (0.01)     .72     -0.00(0.00)
    a      Slope * smoking              0.03 (0.09)     .72    0.01 (0.08)     .86    0.02 (0.08)     .83    0.02 (0.08)     .82    0.02 (0.08)     .80   0.03 (0.05)     .61    0.02 (0.08)     .84        0.02 (0.08)     .80     0.00 (0.08)     .97    0.01 (0.08)     .86      0.02(0.01)
    a      Slope * cardio               0.05 (0.10)     .61    0.04 (0.10)     .64    0.05 (0.10)     .64    0.05 (0.11)     .65    0.04 (0.10)     .72   0.01 (0.07)     .87    0.05 (0.10)     .64        0.04 (0.10)     .71     0.04 (0.10)     .68    0.03 (0.10)     .74      0.04(0.01)
    a      Slope * diabetes            -0.21 (0.39)     .59   -0.15 (0.44)     .73   -0.19 (0.84)     .82   -0.21 (0.50)     .67   -0.16 (0.39)     .67   -0.45 (0.33)     .17   -0.23 (0.35)     .52      -0.16 (0.43)     .71    -0.20 (0.90)     .82   -0.18 (0.35)     .62     -0.21(0.09)
    b      Level                       13.13 (0.47)    <.01   15.97 (0.77)    <.01    3.83 (0.18)    <.01    5.34 (0.13)    <.01   18.42 (0.51)    <.01   27.86 (0.57)    <.01   27.13 (0.24)    <.01      49.15 (2.65)    <.01    32.60 (1.15)    <.01   15.84 (0.58)    <.01             ---
    b      Slope                       -0.11 (0.04)    <.01   -0.41 (0.06)    <.01   -0.05 (0.01)    <.01   -0.02 (0.01)     .07   -0.15 (0.04)    <.01   -0.29 (0.05)    <.01   -0.14 (0.03)    <.01      -1.57 (0.20)    <.01    -0.89 (0.08)    <.01   -0.07 (0.04)     .06             ---
    b      Level * age                 -0.17 (0.03)    <.01   -0.38 (0.06)    <.01   -0.02 (0.01)     .05   -0.01 (0.01)     .18   -0.17 (0.04)    <.01   -0.04 (0.05)     .42   -0.07 (0.02)    <.01      -1.01 (0.16)    <.01    -0.70 (0.08)    <.01   -0.10 (0.04)     .03             ---
    b      Level * education            1.57 (0.24)    <.01    2.29 (0.47)    <.01    0.32 (0.09)    <.01    0.25 (0.07)    <.01    1.06 (0.30)    <.01   4.03 (0.79)    <.01    0.29 (0.18)     .10        4.13 (1.20)    <.01     3.69 (0.66)    <.01    2.39 (0.37)    <.01             ---
    b      Level * height               0.10 (0.04)     .01    0.10 (0.07)     .17    0.04 (0.01)    <.01    0.05 (0.01)    <.01    0.00 (0.04)     .97   0.01 (0.07)     .83    0.06 (0.03)     .04        0.10 (0.18)     .55     0.23 (0.10)     .03    0.15 (0.06)     .01             ---
    b      Level * smoking              0.01 (0.48)     .98    0.30 (0.84)     .72    0.04 (0.17)     .82   -0.01 (0.14)     .95    0.24 (0.57)     .67   1.08 (1.00)     .28    0.67 (0.28)     .02       -2.20 (2.49)     .38    -0.48 (1.27)     .71    1.27 (0.65)     .05             ---
    b      Level * cardio              -0.19 (0.68)     .78   -0.23 (1.07)     .83   -0.21 (0.21)     .32   -0.07 (0.22)     .74    0.05 (0.86)     .95   -2.04 (1.12)     .07   -0.40 (0.32)     .20       0.86 (3.35)     .80    -1.12 (1.97)     .57   -2.00 (0.90)     .03             ---
    b      Level * diabetes            -1.26 (2.12)     .55   -4.31 (5.84)     .46   -0.27 (1.34)     .84   -0.68 (0.55)     .22   -1.69 (2.57)     .51   0.36 (1.77)     .84    0.10 (1.61)     .95      -5.12 (10.98)     .64   -0.77 (12.96)     .95   -0.99 (2.47)     .69             ---
    b      Slope * age                 -0.00 (0.00)     .20   -0.02 (0.00)    <.01   -0.00 (0.00)     .02   -0.00 (0.00)     .22   -0.01 (0.00)    <.01   -0.02 (0.00)    <.01   -0.01 (0.00)     .01      -0.06 (0.01)    <.01    -0.03 (0.01)    <.01   -0.01 (0.00)     .02             ---
    b      Slope * education            0.00 (0.02)     .77   -0.03 (0.02)     .30   -0.01 (0.01)     .05   -0.00 (0.01)     .36   -0.00 (0.02)     .90   -0.03 (0.05)     .53   0.00 (0.01)     .79       -0.00 (0.09)     .97     0.01 (0.04)     .82   -0.04 (0.01)     .01             ---
    b      Slope * height               0.00 (0.00)     .58    0.01 (0.00)     .21    0.00 (0.00)     .90   -0.00 (0.00)     .40    0.00 (0.00)     .26   0.00 (0.00)     .61    0.00 (0.00)     .87        0.03 (0.01)     .03     0.01 (0.01)     .37   -0.00 (0.00)     .74             ---
    b      Slope * smoking              0.01 (0.04)     .73   -0.03 (0.06)     .59    0.01 (0.01)     .44    0.01 (0.01)     .53   -0.04 (0.04)     .31   0.04 (0.06)     .54    -0.03 (0.03)     .31       0.11 (0.17)     .50    -0.12 (0.09)     .16   -0.02 (0.03)     .54             ---
    b      Slope * cardio               0.02 (0.05)     .67   -0.00 (0.11)     .98   -0.01 (0.02)     .64   -0.01 (0.02)     .47   -0.09 (0.09)     .35   0.09 (0.09)     .33    0.00 (0.04)     .99       -0.01 (0.26)     .97    -0.01 (0.14)     .92    0.04 (0.05)     .51             ---
    b      Slope * diabetes            -0.14 (0.21)     .48    0.16 (0.49)     .74    0.03 (0.25)     .91    0.02 (0.11)     .84    0.08 (0.60)     .90   -0.20 (0.19)     .30   0.08 (0.18)     .64       -0.11 (1.39)     .94    -0.03 (1.07)     .98    0.11 (0.31)     .71             ---
    a      Var (Level)                 35.93 (5.26)    <.01   33.55 (6.30)    <.01   33.89 (6.28)    <.01   34.01 (6.20)    <.01   35.47 (5.44)    <.01   13.76 (2.39)    <.01   35.55 (5.29)    <.01      35.82 (5.24)    <.01    33.16 (5.99)    <.01   35.33 (5.63)    <.01     32.65(6.71)
    a      Var (Slope)                  0.05 (0.04)     .15    0.03 (0.03)     .35    0.04 (0.03)     .25    0.04 (0.04)     .26    0.04 (0.03)     .24   0.02 (0.01)     .07    0.04 (0.03)     .22        0.03 (0.03)     .33     0.03 (0.03)     .33    0.04 (0.03)     .22      0.04(0.01)
    a      Var (Residual)              34.62 (2.31)    <.01   39.89 (6.10)    <.01   38.25 (6.10)    <.01   38.10 (6.39)    <.01   34.99 (2.35)    <.01   21.56 (1.07)    <.01   34.94 (2.30)    <.01      35.24 (2.28)    <.01    39.82 (6.13)    <.01   34.96 (2.36)    <.01     35.24(5.24)
    b      Var (Level)                  6.90 (1.06)    <.01   32.59 (4.04)    <.01    0.64 (0.12)    <.01    0.69 (0.12)    <.01   11.58 (1.81)    <.01   45.67 (4.20)    <.01   1.86 (0.26)    <.01     229.29 (31.06)    <.01    75.98 (9.48)    <.01   20.57 (2.51)    <.01             ---
    b      Var (Slope)                  0.01 (0.01)     .30    0.04 (0.01)    <.01    0.00 (0.00)     .64    0.00 (0.00)     .59    0.01 (0.01)     .17   0.10 (0.02)    <.01    0.01 (0.00)    <.01        0.27 (0.14)     .04     0.07 (0.03)     .02    0.01 (0.00)     .08             ---
    b      Var (Residual)               5.56 (0.30)    <.01   10.25 (1.50)    <.01    0.94 (0.12)    <.01    0.50 (0.10)    <.01    7.57 (0.38)    <.01   11.45 (0.49)    <.01   1.88 (0.08)    <.01      109.86 (5.95)    <.01    24.32 (4.75)    <.01    3.99 (0.25)    <.01             ---
    a      Covar (Level, Slope)         0.17 (0.38)     .65    0.44 (0.41)     .28    0.37 (0.40)     .35    0.36 (0.40)     .37    0.30 (0.38)     .44   0.07 (0.14)     .62    0.30 (0.38)     .43        0.36 (0.34)     .30     0.47 (0.38)     .22    0.32 (0.36)     .37      0.32(0.12)
    b      Covar (Level, Slope)        -0.05 (0.08)     .54   -0.26 (0.20)     .21    0.00 (0.01)     .96   -0.00 (0.01)     .56   -0.07 (0.09)     .46   -0.65 (0.24)     .01   -0.04 (0.03)     .21      -1.05 (1.59)     .51    -0.81 (0.40)     .04   -0.06 (0.09)     .49             ---
    \      Correlation of Levels                       0.13                   0.40                  0.292                   0.19                   0.24          0.102           0.27                                     0.358                   0.318                  0.190      0.25(0.10)
    \      Correlation of Slopes                       0.67                   0.78                    Inf                    Inf                   0.50          0.636           0.33                                    -0.132                   0.043                 -0.391        Inf(NaN)
    \      Correlation of Residuals                    0.17                   0.12                 -0.018                   0.04                   0.12          0.054           0.13                                     0.097                   0.146                  0.013      0.09(0.06)
    \      N                                            299                    298                    299                    299                    299           410            299                                        299                     299                    299   310.00(35.14)
    \      occasions                                      7                      7                      7                      7                      7            7             7                                            7                       7                      7      7.00(0.00)
    \      parameters                                    41                     43                     43                     43                     41            41            41                                          41                      43                     41     41.80(1.03)
    \      LL                                        -6,160                 -6,736                 -5,280                 -5,198                 -6,427          -9,333          -5,808                                  -7,625                  -7,124                 -6,308   -6,600(1,223)
    \      AIC                                       12,402                 13,558                 10,645                 10,483                 12,937          18,749          11,698                                  15,332                  14,333                 12,699   13,284(2,445)
    \      BIC                                       12,554                 13,717                 10,804                 10,642                 13,089          18,913          11,850                                  15,484                  14,492                 12,850   13,440(2,447)

##  analogies 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _analogies_


 process   label                                           a                      ae                     aeh                aehplus
---------  -------------------------  ----------------------  ----------------------  ----------------------  ---------------------
   ab      Covar (Levels)                2.09 (3.13)     .50     1.99 (2.93)     .50     0.98 (2.93)     .74    1.99 (1.84)     .28
   ab      Covar (Slopes)                0.00 (0.02)     .76     0.00 (0.02)     .79     0.00 (0.02)     .79    0.01 (0.01)     .15
   ab      Covar (Residuals)             3.24 (1.82)     .07     3.28 (1.88)     .08     3.32 (1.93)     .08    2.35 (0.69)    <.01
   er      Corr (Levels)                                 ---                     ---                     ---    0.13 (0.11)     .27
   er      Corr (Slopes)                                 ---                     ---                     ---    0.69 (0.53)     .19
   er      Corr (Residuals)                              ---                     ---                     ---    0.17 (0.05)    <.01
    a      Level                        38.58 (0.94)    <.01    38.57 (1.06)    <.01    38.20 (1.05)    <.01   36.82 (0.83)    <.01
    a      Slope                        -0.90 (0.13)    <.01    -0.90 (0.14)    <.01    -0.90 (0.14)    <.01   -0.95 (0.08)    <.01
    a      Level * age                  -0.57 (0.10)    <.01    -0.58 (0.10)    <.01    -0.52 (0.10)    <.01   -0.47 (0.06)    <.01
    a      Level * education                             ---     0.00 (0.83)     .99    -0.32 (0.88)     .72    0.07 (0.55)     .90
    a      Level * height                                ---                     ---     0.27 (0.15)     .07    0.36 (0.09)    <.01
    a      Level * smoking                               ---                     ---                     ---    1.64 (1.02)     .11
    a      Level * cardio                                ---                     ---                     ---   -0.37 (1.50)     .81
    a      Level * diabetes                              ---                     ---                     ---   -2.44 (3.38)     .47
    a      Slope * age                  -0.02 (0.01)     .14    -0.02 (0.01)     .18    -0.02 (0.01)     .18   -0.02 (0.01)    <.01
    a      Slope * education                             ---     0.02 (0.07)     .81     0.02 (0.08)     .82   -0.00 (0.04)     .97
    a      Slope * height                                ---                     ---    -0.00 (0.01)     .89   -0.00 (0.01)     .80
    a      Slope * smoking                               ---                     ---                     ---    0.03 (0.09)     .72
    a      Slope * cardio                                ---                     ---                     ---    0.05 (0.10)     .61
    a      Slope * diabetes                              ---                     ---                     ---   -0.21 (0.39)     .59
    b      Level                        14.22 (0.33)    <.01    13.17 (0.35)    <.01    13.04 (0.35)    <.01   13.13 (0.47)    <.01
    b      Slope                        -0.11 (0.02)    <.01    -0.11 (0.03)    <.01    -0.11 (0.03)    <.01   -0.11 (0.04)    <.01
    b      Level * age                  -0.22 (0.03)    <.01    -0.20 (0.03)    <.01    -0.18 (0.03)    <.01   -0.17 (0.03)    <.01
    b      Level * education                             ---     1.74 (0.19)    <.01     1.60 (0.20)    <.01    1.57 (0.24)    <.01
    b      Level * height                                ---                     ---     0.10 (0.03)    <.01    0.10 (0.04)     .01
    b      Level * smoking                               ---                     ---                     ---    0.01 (0.48)     .98
    b      Level * cardio                                ---                     ---                     ---   -0.19 (0.68)     .78
    b      Level * diabetes                              ---                     ---                     ---   -1.26 (2.12)     .55
    b      Slope * age                  -0.00 (0.00)     .02    -0.00 (0.00)     .06    -0.00 (0.00)     .05   -0.00 (0.00)     .20
    b      Slope * education                             ---     0.01 (0.02)     .62     0.01 (0.02)     .66    0.00 (0.02)     .77
    b      Slope * height                                ---                     ---     0.00 (0.00)     .82    0.00 (0.00)     .58
    b      Slope * smoking                               ---                     ---                     ---    0.01 (0.04)     .73
    b      Slope * cardio                                ---                     ---                     ---    0.02 (0.05)     .67
    b      Slope * diabetes                              ---                     ---                     ---   -0.14 (0.21)     .48
    a      Var (Level)                 35.66 (12.61)    <.01   36.14 (13.06)     .01   31.87 (13.37)     .02   35.93 (5.26)    <.01
    a      Var (Slope)                   0.02 (0.09)     .81     0.02 (0.09)     .82     0.02 (0.10)     .80    0.05 (0.04)     .15
    a      Var (Residual)              103.07 (2.08)    <.01   104.43 (2.18)    <.01   105.56 (2.77)    <.01   34.62 (2.31)    <.01
    b      Var (Level)                  10.25 (1.41)    <.01     7.20 (1.01)    <.01     6.88 (0.96)    <.01    6.90 (1.06)    <.01
    b      Var (Slope)                   0.00 (0.00)     .33     0.00 (0.00)     .40     0.00 (0.00)     .41    0.01 (0.01)     .30
    b      Var (Residual)                5.53 (0.29)    <.01     5.56 (0.29)    <.01     5.59 (0.29)    <.01    5.56 (0.30)    <.01
    a      Covar (Level, Slope)          0.64 (0.93)     .49     0.64 (0.95)     .50     0.67 (0.94)     .48    0.17 (0.38)     .65
    b      Covar (Level, Slope)         -0.02 (0.07)     .78    -0.02 (0.06)     .76    -0.03 (0.06)     .63   -0.05 (0.08)     .54
    \      Correlation of Levels                        0.11                    0.12                   0.066                   0.13
    \      Correlation of Slopes                        0.53                    0.53                   0.500                   0.67
    \      Correlation of Residuals                     0.14                    0.14                   0.137                   0.17
    \      N                                             347                     341                     338                    299
    \      occasions                                       7                       7                       7                      7
    \      parameters                                     21                      25                      29                     41
    \      LL                                         -7,870                  -7,703                  -7,630                 -6,160
    \      AIC                                        15,782                  15,456                  15,317                 12,402
    \      BIC                                        15,863                  15,552                  15,428                 12,554

##  block 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _block_


 process   label                                    aehplus
---------  -------------------------  ---------------------
   ab      Covar (Levels)              13.31 (3.74)    <.01
   ab      Covar (Slopes)               0.03 (0.01)     .05
   ab      Covar (Residuals)            2.52 (0.90)    <.01
   er      Corr (Levels)                0.40 (0.09)    <.01
   er      Corr (Slopes)                0.79 (0.44)     .07
   er      Corr (Residuals)             0.14 (0.05)    <.01
    a      Level                       36.89 (0.87)    <.01
    a      Slope                       -0.96 (0.08)    <.01
    a      Level * age                 -0.47 (0.06)    <.01
    a      Level * education            0.14 (0.57)     .81
    a      Level * height               0.37 (0.09)    <.01
    a      Level * smoking              1.70 (1.04)     .10
    a      Level * cardio              -0.46 (1.46)     .75
    a      Level * diabetes            -2.51 (3.24)     .44
    a      Slope * age                 -0.02 (0.01)    <.01
    a      Slope * education           -0.01 (0.04)     .79
    a      Slope * height              -0.00 (0.01)     .79
    a      Slope * smoking              0.01 (0.08)     .86
    a      Slope * cardio               0.04 (0.10)     .64
    a      Slope * diabetes            -0.15 (0.44)     .73
    b      Level                       15.97 (0.77)    <.01
    b      Slope                       -0.41 (0.06)    <.01
    b      Level * age                 -0.38 (0.06)    <.01
    b      Level * education            2.29 (0.47)    <.01
    b      Level * height               0.10 (0.07)     .17
    b      Level * smoking              0.30 (0.84)     .72
    b      Level * cardio              -0.23 (1.07)     .83
    b      Level * diabetes            -4.31 (5.84)     .46
    b      Slope * age                 -0.02 (0.00)    <.01
    b      Slope * education           -0.03 (0.02)     .30
    b      Slope * height               0.01 (0.00)     .21
    b      Slope * smoking             -0.03 (0.06)     .59
    b      Slope * cardio              -0.00 (0.11)     .98
    b      Slope * diabetes             0.16 (0.49)     .74
    a      Var (Level)                 33.55 (6.30)    <.01
    a      Var (Slope)                  0.03 (0.03)     .35
    a      Var (Residual)              39.89 (6.10)    <.01
    b      Var (Level)                 32.59 (4.04)    <.01
    b      Var (Slope)                  0.04 (0.01)    <.01
    b      Var (Residual)              10.25 (1.50)    <.01
    a      Covar (Level, Slope)         0.44 (0.41)     .28
    b      Covar (Level, Slope)        -0.26 (0.20)     .21
    \      Correlation of Levels                       0.40
    \      Correlation of Slopes                       0.78
    \      Correlation of Residuals                    0.12
    \      N                                            298
    \      occasions                                      7
    \      parameters                                    43
    \      LL                                        -6,736
    \      AIC                                       13,558
    \      BIC                                       13,717

##  digit_b 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _digit_b_


 process   label                                    aehplus
---------  -------------------------  ---------------------
   ab      Covar (Levels)               1.36 (0.62)     .03
   ab      Covar (Slopes)               0.00 (0.00)     .75
   ab      Covar (Residuals)           -0.11 (0.26)     .67
   er      Corr (Levels)                0.29 (0.13)     .02
   er      Corr (Slopes)                0.36 (1.13)     .75
   er      Corr (Residuals)            -0.02 (0.05)     .67
    a      Level                       36.88 (0.84)    <.01
    a      Slope                       -0.95 (0.08)    <.01
    a      Level * age                 -0.46 (0.06)    <.01
    a      Level * education            0.10 (0.56)     .86
    a      Level * height               0.38 (0.09)    <.01
    a      Level * smoking              1.69 (1.03)     .10
    a      Level * cardio              -0.38 (1.48)     .80
    a      Level * diabetes            -2.50 (5.13)     .63
    a      Slope * age                 -0.02 (0.01)    <.01
    a      Slope * education           -0.00 (0.04)     .90
    a      Slope * height              -0.00 (0.01)     .70
    a      Slope * smoking              0.02 (0.08)     .83
    a      Slope * cardio               0.05 (0.10)     .64
    a      Slope * diabetes            -0.19 (0.84)     .82
    b      Level                        3.83 (0.18)    <.01
    b      Slope                       -0.05 (0.01)    <.01
    b      Level * age                 -0.02 (0.01)     .05
    b      Level * education            0.32 (0.09)    <.01
    b      Level * height               0.04 (0.01)    <.01
    b      Level * smoking              0.04 (0.17)     .82
    b      Level * cardio              -0.21 (0.21)     .32
    b      Level * diabetes            -0.27 (1.34)     .84
    b      Slope * age                 -0.00 (0.00)     .02
    b      Slope * education           -0.01 (0.01)     .05
    b      Slope * height               0.00 (0.00)     .90
    b      Slope * smoking              0.01 (0.01)     .44
    b      Slope * cardio              -0.01 (0.02)     .64
    b      Slope * diabetes             0.03 (0.25)     .91
    a      Var (Level)                 33.89 (6.28)    <.01
    a      Var (Slope)                  0.04 (0.03)     .25
    a      Var (Residual)              38.25 (6.10)    <.01
    b      Var (Level)                  0.64 (0.12)    <.01
    b      Var (Slope)                  0.00 (0.00)     .64
    b      Var (Residual)               0.94 (0.12)    <.01
    a      Covar (Level, Slope)         0.37 (0.40)     .35
    b      Covar (Level, Slope)         0.00 (0.01)     .96
    \      Correlation of Levels                      0.292
    \      Correlation of Slopes                        Inf
    \      Correlation of Residuals                  -0.018
    \      N                                            299
    \      occasions                                      7
    \      parameters                                    43
    \      LL                                        -5,280
    \      AIC                                       10,645
    \      BIC                                       10,804

##  digit_f 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _digit_f_


 process   label                                    aehplus
---------  -------------------------  ---------------------
   ab      Covar (Levels)               0.92 (0.62)     .14
   ab      Covar (Slopes)               0.00 (0.00)     .61
   ab      Covar (Residuals)            0.17 (0.25)     .49
   er      Corr (Levels)                0.19 (0.12)     .12
   er      Corr (Slopes)                0.40 (0.77)     .60
   er      Corr (Residuals)             0.04 (0.05)     .49
    a      Level                       36.85 (0.84)    <.01
    a      Slope                       -0.95 (0.08)    <.01
    a      Level * age                 -0.46 (0.06)    <.01
    a      Level * education            0.09 (0.56)     .87
    a      Level * height               0.37 (0.09)    <.01
    a      Level * smoking              1.70 (1.01)     .09
    a      Level * cardio              -0.34 (1.49)     .82
    a      Level * diabetes            -2.44 (4.02)     .54
    a      Slope * age                 -0.02 (0.01)    <.01
    a      Slope * education           -0.00 (0.04)     .94
    a      Slope * height              -0.00 (0.01)     .75
    a      Slope * smoking              0.02 (0.08)     .82
    a      Slope * cardio               0.05 (0.11)     .65
    a      Slope * diabetes            -0.21 (0.50)     .67
    b      Level                        5.34 (0.13)    <.01
    b      Slope                       -0.02 (0.01)     .07
    b      Level * age                 -0.01 (0.01)     .18
    b      Level * education            0.25 (0.07)    <.01
    b      Level * height               0.05 (0.01)    <.01
    b      Level * smoking             -0.01 (0.14)     .95
    b      Level * cardio              -0.07 (0.22)     .74
    b      Level * diabetes            -0.68 (0.55)     .22
    b      Slope * age                 -0.00 (0.00)     .22
    b      Slope * education           -0.00 (0.01)     .36
    b      Slope * height              -0.00 (0.00)     .40
    b      Slope * smoking              0.01 (0.01)     .53
    b      Slope * cardio              -0.01 (0.02)     .47
    b      Slope * diabetes             0.02 (0.11)     .84
    a      Var (Level)                 34.01 (6.20)    <.01
    a      Var (Slope)                  0.04 (0.04)     .26
    a      Var (Residual)              38.10 (6.39)    <.01
    b      Var (Level)                  0.69 (0.12)    <.01
    b      Var (Slope)                  0.00 (0.00)     .59
    b      Var (Residual)               0.50 (0.10)    <.01
    a      Covar (Level, Slope)         0.36 (0.40)     .37
    b      Covar (Level, Slope)        -0.00 (0.01)     .56
    \      Correlation of Levels                       0.19
    \      Correlation of Slopes                        Inf
    \      Correlation of Residuals                    0.04
    \      N                                            299
    \      occasions                                      7
    \      parameters                                    43
    \      LL                                        -5,198
    \      AIC                                       10,483
    \      BIC                                       10,642

##  fig_id 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _fig_id_


 process   label                                           a                      ae                     aeh
---------  -------------------------  ----------------------  ----------------------  ----------------------
   ab      Covar (Levels)               13.34 (5.31)     .01    13.59 (5.11)     .01    12.04 (5.04)     .02
   ab      Covar (Slopes)                0.02 (0.04)     .68     0.02 (0.05)     .69     0.02 (0.05)     .71
   ab      Covar (Residuals)            -4.44 (2.54)     .08    -4.46 (2.65)     .09    -4.39 (2.71)     .10
   er      Corr (Levels)                                 ---                     ---                     ---
   er      Corr (Slopes)                                 ---                     ---                     ---
   er      Corr (Residuals)                              ---                     ---                     ---
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
    b      Var (Level)                  34.33 (3.91)    <.01    30.19 (3.68)    <.01    29.73 (3.75)    <.01
    b      Var (Slope)                   0.07 (0.02)    <.01     0.07 (0.02)    <.01     0.07 (0.02)    <.01
    b      Var (Residual)               15.79 (0.77)    <.01    15.90 (0.80)    <.01    16.01 (0.81)    <.01
    a      Covar (Level, Slope)          0.61 (0.93)     .51     0.60 (0.96)     .53     0.64 (0.98)     .51
    b      Covar (Level, Slope)         -0.03 (0.19)     .88    -0.13 (0.21)     .53    -0.20 (0.21)     .34
    \      Correlation of Levels                        0.37                    0.40                    0.38
    \      Correlation of Slopes                        0.47                    0.47                    0.44
    \      Correlation of Residuals                    -0.11                   -0.11                   -0.11
    \      N                                             347                     341                     338
    \      occasions                                       7                       7                       7
    \      parameters                                     21                      25                      29
    \      LL                                         -8,731                  -8,580                  -8,501
    \      AIC                                        17,504                  17,210                  17,059
    \      BIC                                        17,585                  17,306                  17,170

##  fig_mem 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _fig_mem_


 process   label                                    aehplus
---------  -------------------------  ---------------------
   ab      Covar (Levels)               4.79 (2.55)     .06
   ab      Covar (Slopes)               0.01 (0.01)     .39
   ab      Covar (Residuals)            1.91 (0.81)     .02
   er      Corr (Levels)                0.24 (0.12)     .04
   er      Corr (Slopes)                0.50 (0.50)     .32
   er      Corr (Residuals)             0.12 (0.05)     .02
    a      Level                       36.83 (0.83)    <.01
    a      Slope                       -0.95 (0.08)    <.01
    a      Level * age                 -0.47 (0.06)    <.01
    a      Level * education            0.08 (0.56)     .88
    a      Level * height               0.37 (0.09)    <.01
    a      Level * smoking              1.68 (1.01)     .10
    a      Level * cardio              -0.31 (1.55)     .84
    a      Level * diabetes            -2.61 (3.69)     .48
    a      Slope * age                 -0.02 (0.01)    <.01
    a      Slope * education           -0.00 (0.04)     .93
    a      Slope * height              -0.00 (0.01)     .80
    a      Slope * smoking              0.02 (0.08)     .80
    a      Slope * cardio               0.04 (0.10)     .72
    a      Slope * diabetes            -0.16 (0.39)     .67
    b      Level                       18.42 (0.51)    <.01
    b      Slope                       -0.15 (0.04)    <.01
    b      Level * age                 -0.17 (0.04)    <.01
    b      Level * education            1.06 (0.30)    <.01
    b      Level * height               0.00 (0.04)     .97
    b      Level * smoking              0.24 (0.57)     .67
    b      Level * cardio               0.05 (0.86)     .95
    b      Level * diabetes            -1.69 (2.57)     .51
    b      Slope * age                 -0.01 (0.00)    <.01
    b      Slope * education           -0.00 (0.02)     .90
    b      Slope * height               0.00 (0.00)     .26
    b      Slope * smoking             -0.04 (0.04)     .31
    b      Slope * cardio              -0.09 (0.09)     .35
    b      Slope * diabetes             0.08 (0.60)     .90
    a      Var (Level)                 35.47 (5.44)    <.01
    a      Var (Slope)                  0.04 (0.03)     .24
    a      Var (Residual)              34.99 (2.35)    <.01
    b      Var (Level)                 11.58 (1.81)    <.01
    b      Var (Slope)                  0.01 (0.01)     .17
    b      Var (Residual)               7.57 (0.38)    <.01
    a      Covar (Level, Slope)         0.30 (0.38)     .44
    b      Covar (Level, Slope)        -0.07 (0.09)     .46
    \      Correlation of Levels                       0.24
    \      Correlation of Slopes                       0.50
    \      Correlation of Residuals                    0.12
    \      N                                            299
    \      occasions                                      7
    \      parameters                                    41
    \      LL                                        -6,427
    \      AIC                                       12,937
    \      BIC                                       13,089

##  information 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _information_


 process   label                                           a                      ae                     aeh                aehplus
---------  -------------------------  ----------------------  ----------------------  ----------------------  ---------------------
   ab      Covar (Levels)                4.70 (6.45)     .47     4.70 (6.25)     .45     3.73 (6.22)     .55    2.57 (2.39)     .28
   ab      Covar (Slopes)                0.02 (0.03)     .57     0.02 (0.03)     .60     0.02 (0.04)     .60    0.03 (0.01)     .03
   ab      Covar (Residuals)             1.13 (1.93)     .56     1.18 (1.98)     .55     1.22 (2.02)     .54    0.85 (0.57)     .14
   er      Corr (Levels)                                 ---                     ---                     ---    0.10 (0.10)     .28
   er      Corr (Slopes)                                 ---                     ---                     ---    0.65 (0.25)     .01
   er      Corr (Residuals)                              ---                     ---                     ---    0.05 (0.04)     .13
    a      Level                        38.55 (0.93)    <.01    38.53 (1.06)    <.01    38.17 (1.06)    <.01   21.50 (0.44)    <.01
    a      Slope                        -0.89 (0.13)    <.01    -0.90 (0.14)    <.01    -0.89 (0.14)    <.01   -0.57 (0.04)    <.01
    a      Level * age                  -0.57 (0.09)    <.01    -0.57 (0.10)    <.01    -0.52 (0.10)    <.01   -0.19 (0.04)    <.01
    a      Level * education                             ---     0.01 (0.82)     .99    -0.31 (0.88)     .72    0.28 (0.39)     .47
    a      Level * height                                ---                     ---     0.27 (0.14)     .06    0.15 (0.05)    <.01
    a      Level * smoking                               ---                     ---                     ---    0.23 (0.62)     .72
    a      Level * cardio                                ---                     ---                     ---   -2.23 (0.79)    <.01
    a      Level * diabetes                              ---                     ---                     ---   -1.12 (1.88)     .55
    a      Slope * age                  -0.02 (0.01)     .14    -0.02 (0.01)     .16    -0.02 (0.01)     .16   -0.01 (0.00)    <.01
    a      Slope * education                             ---     0.01 (0.07)     .83     0.02 (0.08)     .84    0.02 (0.03)     .47
    a      Slope * height                                ---                     ---    -0.00 (0.01)     .93    0.00 (0.00)     .99
    a      Slope * smoking                               ---                     ---                     ---    0.03 (0.05)     .61
    a      Slope * cardio                                ---                     ---                     ---    0.01 (0.07)     .87
    a      Slope * diabetes                              ---                     ---                     ---   -0.45 (0.33)     .17
    b      Level                        32.66 (0.55)    <.01    30.86 (0.55)    <.01    30.70 (0.55)    <.01   27.86 (0.57)    <.01
    b      Slope                        -0.20 (0.04)    <.01    -0.18 (0.04)    <.01    -0.19 (0.04)    <.01   -0.29 (0.05)    <.01
    b      Level * age                  -0.19 (0.06)    <.01    -0.16 (0.05)    <.01    -0.14 (0.06)     .01   -0.04 (0.05)     .42
    b      Level * education                             ---     2.86 (0.52)    <.01     2.71 (0.55)    <.01    4.03 (0.79)    <.01
    b      Level * height                                ---                     ---     0.12 (0.07)     .10    0.01 (0.07)     .83
    b      Level * smoking                               ---                     ---                     ---    1.08 (1.00)     .28
    b      Level * cardio                                ---                     ---                     ---   -2.04 (1.12)     .07
    b      Level * diabetes                              ---                     ---                     ---    0.36 (1.77)     .84
    b      Slope * age                  -0.02 (0.00)    <.01    -0.02 (0.00)    <.01    -0.02 (0.00)    <.01   -0.02 (0.00)    <.01
    b      Slope * education                             ---    -0.02 (0.03)     .54    -0.02 (0.03)     .53   -0.03 (0.05)     .53
    b      Slope * height                                ---                     ---     0.00 (0.00)     .78    0.00 (0.00)     .61
    b      Slope * smoking                               ---                     ---                     ---    0.04 (0.06)     .54
    b      Slope * cardio                                ---                     ---                     ---    0.09 (0.09)     .33
    b      Slope * diabetes                              ---                     ---                     ---   -0.20 (0.19)     .30
    a      Var (Level)                 34.62 (12.35)    <.01   34.91 (12.80)     .01   30.80 (13.16)     .02   13.76 (2.39)    <.01
    a      Var (Slope)                   0.02 (0.09)     .82     0.02 (0.09)     .82     0.02 (0.10)     .80    0.02 (0.01)     .07
    a      Var (Residual)              103.47 (1.93)    <.01   104.88 (2.03)    <.01   105.98 (2.52)    <.01   21.56 (1.07)    <.01
    b      Var (Level)                  46.83 (4.57)    <.01    39.81 (3.95)    <.01    39.55 (3.93)    <.01   45.67 (4.20)    <.01
    b      Var (Slope)                   0.05 (0.01)    <.01     0.05 (0.01)    <.01     0.05 (0.01)    <.01    0.10 (0.02)    <.01
    b      Var (Residual)                7.07 (0.30)    <.01     7.04 (0.30)    <.01     7.04 (0.30)    <.01   11.45 (0.49)    <.01
    a      Covar (Level, Slope)          0.67 (0.92)     .46     0.68 (0.94)     .47     0.69 (0.93)     .46    0.07 (0.14)     .62
    b      Covar (Level, Slope)         -0.39 (0.19)     .04    -0.35 (0.17)     .04    -0.37 (0.17)     .04   -0.65 (0.24)     .01
    \      Correlation of Levels                       0.117                   0.126                   0.107                  0.102
    \      Correlation of Slopes                       0.545                   0.484                   0.517                  0.636
    \      Correlation of Residuals                    0.042                   0.043                   0.045                  0.054
    \      N                                             347                     341                     338                    410
    \      occasions                                       7                       7                       7                      7
    \      parameters                                     21                      25                      29                     41
    \      LL                                         -8,506                  -8,352                  -8,276                 -9,333
    \      AIC                                        17,055                  16,754                  16,610                 18,749
    \      BIC                                        17,135                  16,849                  16,721                 18,913

##  mmse 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _mmse_


 process   label                                           a                      ae                     aeh                aehplus
---------  -------------------------  ----------------------  ----------------------  ----------------------  ---------------------
   ab      Covar (Levels)                4.21 (1.78)     .02     4.25 (1.84)     .02     3.40 (1.83)     .06    2.17 (1.12)     .05
   ab      Covar (Slopes)                0.01 (0.01)     .48     0.01 (0.01)     .52     0.01 (0.02)     .55    0.01 (0.01)     .31
   ab      Covar (Residuals)             0.21 (0.94)     .82     0.20 (0.98)     .84     0.30 (1.02)     .76    1.04 (0.41)     .01
   er      Corr (Levels)                                 ---                     ---                     ---    0.27 (0.13)     .04
   er      Corr (Slopes)                                 ---                     ---                     ---    0.34 (0.30)     .27
   er      Corr (Residuals)                              ---                     ---                     ---    0.13 (0.05)     .01
    a      Level                        38.47 (0.98)    <.01    38.45 (1.10)    <.01    38.09 (1.09)    <.01   36.79 (0.88)    <.01
    a      Slope                        -0.92 (0.14)    <.01    -0.94 (0.15)    <.01    -0.92 (0.15)    <.01   -0.94 (0.09)    <.01
    a      Level * age                  -0.58 (0.10)    <.01    -0.58 (0.10)    <.01    -0.52 (0.11)    <.01   -0.47 (0.06)    <.01
    a      Level * education                             ---     0.02 (0.83)     .98    -0.30 (0.88)     .73    0.07 (0.56)     .90
    a      Level * height                                ---                     ---     0.27 (0.14)     .06    0.37 (0.09)    <.01
    a      Level * smoking                               ---                     ---                     ---    1.72 (1.02)     .09
    a      Level * cardio                                ---                     ---                     ---   -0.34 (1.48)     .82
    a      Level * diabetes                              ---                     ---                     ---   -2.45 (5.16)     .63
    a      Slope * age                  -0.02 (0.01)     .11    -0.02 (0.01)     .13    -0.02 (0.01)     .15   -0.02 (0.01)    <.01
    a      Slope * education                             ---     0.02 (0.07)     .76     0.02 (0.08)     .80   -0.00 (0.04)     .94
    a      Slope * height                                ---                     ---     0.00 (0.01)     .99   -0.00 (0.01)     .82
    a      Slope * smoking                               ---                     ---                     ---    0.02 (0.08)     .84
    a      Slope * cardio                                ---                     ---                     ---    0.05 (0.10)     .64
    a      Slope * diabetes                              ---                     ---                     ---   -0.23 (0.35)     .52
    b      Level                        27.75 (0.18)    <.01    27.59 (0.19)    <.01    27.52 (0.18)    <.01   27.13 (0.24)    <.01
    b      Slope                        -0.15 (0.02)    <.01    -0.15 (0.02)    <.01    -0.15 (0.02)    <.01   -0.14 (0.03)    <.01
    b      Level * age                  -0.09 (0.01)    <.01    -0.09 (0.01)    <.01    -0.08 (0.01)    <.01   -0.07 (0.02)    <.01
    b      Level * education                             ---     0.31 (0.17)     .07     0.26 (0.17)     .13    0.29 (0.18)     .10
    b      Level * height                                ---                     ---     0.05 (0.02)     .05    0.06 (0.03)     .04
    b      Level * smoking                               ---                     ---                     ---    0.67 (0.28)     .02
    b      Level * cardio                                ---                     ---                     ---   -0.40 (0.32)     .20
    b      Level * diabetes                              ---                     ---                     ---    0.10 (1.61)     .95
    b      Slope * age                  -0.00 (0.00)    <.01    -0.00 (0.00)     .01    -0.00 (0.00)     .02   -0.01 (0.00)     .01
    b      Slope * education                             ---     0.02 (0.01)     .20     0.02 (0.01)     .26    0.00 (0.01)     .79
    b      Slope * height                                ---                     ---     0.00 (0.00)     .63    0.00 (0.00)     .87
    b      Slope * smoking                               ---                     ---                     ---   -0.03 (0.03)     .31
    b      Slope * cardio                                ---                     ---                     ---    0.00 (0.04)     .99
    b      Slope * diabetes                              ---                     ---                     ---    0.08 (0.18)     .64
    a      Var (Level)                 37.08 (13.03)    <.01   37.61 (13.44)    <.01   33.15 (13.65)     .01   35.55 (5.29)    <.01
    a      Var (Slope)                   0.02 (0.09)     .78     0.02 (0.09)     .80     0.03 (0.10)     .78    0.04 (0.03)     .22
    a      Var (Residual)              102.68 (2.13)    <.01   104.07 (2.23)    <.01   105.22 (2.62)    <.01   34.94 (2.30)    <.01
    b      Var (Level)                   2.10 (0.22)    <.01     2.00 (0.23)    <.01     1.92 (0.23)    <.01    1.86 (0.26)    <.01
    b      Var (Slope)                   0.02 (0.00)    <.01     0.02 (0.00)    <.01     0.02 (0.00)    <.01    0.01 (0.00)    <.01
    b      Var (Residual)                1.85 (0.06)    <.01     1.87 (0.07)    <.01     1.87 (0.07)    <.01    1.88 (0.08)    <.01
    a      Covar (Level, Slope)          0.66 (0.95)     .48     0.67 (0.97)     .49     0.68 (0.96)     .48    0.30 (0.38)     .43
    b      Covar (Level, Slope)         -0.04 (0.02)     .05    -0.05 (0.02)     .03    -0.05 (0.02)     .03   -0.04 (0.03)     .21
    \      Correlation of Levels                       0.477                   0.489                   0.426                   0.27
    \      Correlation of Slopes                       0.500                   0.510                   0.490                   0.33
    \      Correlation of Residuals                    0.015                   0.014                   0.022                   0.13
    \      N                                             347                     341                     338                    299
    \      occasions                                       7                       7                       7                      7
    \      parameters                                     21                      25                      29                     41
    \      LL                                         -7,412                  -7,296                  -7,227                 -5,808
    \      AIC                                        14,866                  14,641                  14,512                 11,698
    \      BIC                                        14,947                  14,737                  14,623                 11,850

##  rotate 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _rotate_


 process   label                                      aehplus
---------  -------------------------  -----------------------
   ab      Covar (Levels)                32.45 (9.82)    <.01
   ab      Covar (Slopes)                -0.01 (0.05)     .80
   ab      Covar (Residuals)              6.04 (3.15)     .06
   er      Corr (Levels)                  0.36 (0.09)    <.01
   er      Corr (Slopes)                 -0.13 (0.55)     .81
   er      Corr (Residuals)               0.10 (0.05)     .05
    a      Level                         36.87 (0.85)    <.01
    a      Slope                         -0.95 (0.08)    <.01
    a      Level * age                   -0.47 (0.06)    <.01
    a      Level * education              0.08 (0.56)     .88
    a      Level * height                 0.38 (0.09)    <.01
    a      Level * smoking                1.66 (1.03)     .11
    a      Level * cardio                -0.27 (1.45)     .85
    a      Level * diabetes              -2.70 (3.61)     .45
    a      Slope * age                   -0.02 (0.01)    <.01
    a      Slope * education             -0.01 (0.04)     .86
    a      Slope * height                -0.00 (0.01)     .65
    a      Slope * smoking                0.02 (0.08)     .80
    a      Slope * cardio                 0.04 (0.10)     .71
    a      Slope * diabetes              -0.16 (0.43)     .71
    b      Level                         49.15 (2.65)    <.01
    b      Slope                         -1.57 (0.20)    <.01
    b      Level * age                   -1.01 (0.16)    <.01
    b      Level * education              4.13 (1.20)    <.01
    b      Level * height                 0.10 (0.18)     .55
    b      Level * smoking               -2.20 (2.49)     .38
    b      Level * cardio                 0.86 (3.35)     .80
    b      Level * diabetes             -5.12 (10.98)     .64
    b      Slope * age                   -0.06 (0.01)    <.01
    b      Slope * education             -0.00 (0.09)     .97
    b      Slope * height                 0.03 (0.01)     .03
    b      Slope * smoking                0.11 (0.17)     .50
    b      Slope * cardio                -0.01 (0.26)     .97
    b      Slope * diabetes              -0.11 (1.39)     .94
    a      Var (Level)                   35.82 (5.24)    <.01
    a      Var (Slope)                    0.03 (0.03)     .33
    a      Var (Residual)                35.24 (2.28)    <.01
    b      Var (Level)                 229.29 (31.06)    <.01
    b      Var (Slope)                    0.27 (0.14)     .04
    b      Var (Residual)               109.86 (5.95)    <.01
    a      Covar (Level, Slope)           0.36 (0.34)     .30
    b      Covar (Level, Slope)          -1.05 (1.59)     .51
    \      Correlation of Levels                        0.358
    \      Correlation of Slopes                       -0.132
    \      Correlation of Residuals                     0.097
    \      N                                              299
    \      occasions                                        7
    \      parameters                                      41
    \      LL                                          -7,625
    \      AIC                                         15,332
    \      BIC                                         15,484

##  symbol 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _symbol_


 process   label                                           a                      ae                     aeh                 aehplus
---------  -------------------------  ----------------------  ----------------------  ----------------------  ----------------------
   ab      Covar (Levels)               19.38 (8.73)     .03    19.15 (8.52)     .02    16.77 (8.31)     .04    15.98 (4.96)    <.01
   ab      Covar (Slopes)                0.01 (0.04)     .81     0.01 (0.05)     .83     0.01 (0.05)     .83     0.00 (0.02)     .92
   ab      Covar (Residuals)             4.35 (3.69)     .24     4.39 (3.77)     .24     4.44 (3.83)     .25     4.53 (1.42)    <.01
   er      Corr (Levels)                                 ---                     ---                     ---     0.32 (0.09)    <.01
   er      Corr (Slopes)                                 ---                     ---                     ---     0.04 (0.44)     .92
   er      Corr (Residuals)                              ---                     ---                     ---     0.16 (0.05)    <.01
    a      Level                        38.62 (0.94)    <.01    38.61 (1.06)    <.01    38.23 (1.05)    <.01    36.92 (0.84)    <.01
    a      Slope                        -0.92 (0.13)    <.01    -0.93 (0.13)    <.01    -0.92 (0.14)    <.01    -0.96 (0.08)    <.01
    a      Level * age                  -0.57 (0.10)    <.01    -0.58 (0.10)    <.01    -0.52 (0.11)    <.01    -0.47 (0.06)    <.01
    a      Level * education                             ---    -0.01 (0.83)     .99    -0.34 (0.91)     .71     0.07 (0.56)     .90
    a      Level * height                                ---                     ---     0.28 (0.15)     .06     0.37 (0.09)    <.01
    a      Level * smoking                               ---                     ---                     ---     1.78 (1.03)     .08
    a      Level * cardio                                ---                     ---                     ---    -0.41 (1.40)     .77
    a      Level * diabetes                              ---                     ---                     ---    -2.56 (3.14)     .41
    a      Slope * age                  -0.02 (0.01)     .11    -0.02 (0.01)     .12    -0.02 (0.01)     .12    -0.02 (0.01)    <.01
    a      Slope * education                             ---     0.02 (0.07)     .81     0.02 (0.08)     .80    -0.00 (0.04)     .94
    a      Slope * height                                ---                     ---    -0.00 (0.01)     .81    -0.00 (0.01)     .68
    a      Slope * smoking                               ---                     ---                     ---     0.00 (0.08)     .97
    a      Slope * cardio                                ---                     ---                     ---     0.04 (0.10)     .68
    a      Slope * diabetes                              ---                     ---                     ---    -0.20 (0.90)     .82
    b      Level                        34.49 (0.75)    <.01    32.22 (0.76)    <.01    31.91 (0.80)    <.01    32.60 (1.15)    <.01
    b      Slope                        -0.94 (0.06)    <.01    -0.95 (0.06)    <.01    -0.96 (0.06)    <.01    -0.89 (0.08)    <.01
    b      Level * age                  -0.86 (0.08)    <.01    -0.80 (0.07)    <.01    -0.75 (0.07)    <.01    -0.70 (0.08)    <.01
    b      Level * education                             ---     3.91 (0.56)    <.01     3.63 (0.57)    <.01     3.69 (0.66)    <.01
    b      Level * height                                ---                     ---     0.23 (0.10)     .01     0.23 (0.10)     .03
    b      Level * smoking                               ---                     ---                     ---    -0.48 (1.27)     .71
    b      Level * cardio                                ---                     ---                     ---    -1.12 (1.97)     .57
    b      Level * diabetes                              ---                     ---                     ---   -0.77 (12.96)     .95
    b      Slope * age                  -0.03 (0.00)    <.01    -0.03 (0.00)    <.01    -0.03 (0.00)    <.01    -0.03 (0.01)    <.01
    b      Slope * education                             ---     0.05 (0.04)     .24     0.04 (0.04)     .30     0.01 (0.04)     .82
    b      Slope * height                                ---                     ---     0.00 (0.00)     .37     0.01 (0.01)     .37
    b      Slope * smoking                               ---                     ---                     ---    -0.12 (0.09)     .16
    b      Slope * cardio                                ---                     ---                     ---    -0.01 (0.14)     .92
    b      Slope * diabetes                              ---                     ---                     ---    -0.03 (1.07)     .98
    a      Var (Level)                 35.65 (12.45)    <.01   36.20 (12.94)    <.01   32.08 (13.34)     .02    33.16 (5.99)    <.01
    a      Var (Slope)                   0.02 (0.09)     .83     0.02 (0.09)     .84     0.02 (0.10)     .82     0.03 (0.03)     .33
    a      Var (Residual)              103.22 (1.72)    <.01   104.59 (1.81)    <.01   105.61 (2.34)    <.01    39.82 (6.13)    <.01
    b      Var (Level)                  92.38 (9.88)    <.01    77.93 (8.39)    <.01    75.84 (8.64)    <.01    75.98 (9.48)    <.01
    b      Var (Slope)                   0.08 (0.03)    <.01     0.08 (0.03)    <.01     0.08 (0.03)    <.01     0.07 (0.03)     .02
    b      Var (Residual)               24.06 (1.01)    <.01    24.20 (1.02)    <.01    24.32 (1.04)    <.01    24.32 (4.75)    <.01
    a      Covar (Level, Slope)          0.66 (0.91)     .47     0.66 (0.93)     .48     0.69 (0.93)     .46     0.47 (0.38)     .22
    b      Covar (Level, Slope)         -0.61 (0.38)     .10    -0.83 (0.36)     .02    -0.90 (0.36)     .01    -0.81 (0.40)     .04
    \      Correlation of Levels                       0.338                   0.361                   0.340                   0.318
    \      Correlation of Slopes                       0.280                   0.269                   0.241                   0.043
    \      Correlation of Residuals                    0.087                   0.087                   0.088                   0.146
    \      N                                             347                     341                     338                     299
    \      occasions                                       7                       7                       7                       7
    \      parameters                                     21                      25                      29                      43
    \      LL                                         -8,988                  -8,819                  -8,739                  -7,124
    \      AIC                                        18,018                  17,687                  17,536                  14,333
    \      BIC                                        18,099                  17,783                  17,646                  14,492

##  synonyms 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _synonyms_


 process   label                                           a                      ae                     aeh                aehplus
---------  -------------------------  ----------------------  ----------------------  ----------------------  ---------------------
   ab      Covar (Levels)                7.67 (4.53)     .09     7.57 (4.27)     .08     5.96 (4.10)     .15    5.13 (2.75)     .06
   ab      Covar (Slopes)               -0.00 (0.02)     .97    -0.00 (0.02)     .93    -0.00 (0.02)     .95   -0.01 (0.01)     .37
   ab      Covar (Residuals)            -0.59 (1.41)     .68    -0.64 (1.44)     .66    -0.57 (1.47)     .69    0.15 (0.55)     .79
   er      Corr (Levels)                                 ---                     ---                     ---    0.19 (0.10)     .05
   er      Corr (Slopes)                                 ---                     ---                     ---   -0.42 (0.51)     .41
   er      Corr (Residuals)                              ---                     ---                     ---    0.01 (0.05)     .79
    a      Level                        38.57 (0.94)    <.01    38.54 (1.07)    <.01    38.17 (1.07)    <.01   36.81 (0.90)    <.01
    a      Slope                        -0.90 (0.13)    <.01    -0.91 (0.14)    <.01    -0.90 (0.14)    <.01   -0.95 (0.08)    <.01
    a      Level * age                  -0.57 (0.10)    <.01    -0.58 (0.10)    <.01    -0.52 (0.10)    <.01   -0.47 (0.06)    <.01
    a      Level * education                             ---     0.02 (0.85)     .98    -0.31 (0.90)     .73    0.06 (0.57)     .92
    a      Level * height                                ---                     ---     0.27 (0.14)     .06    0.37 (0.09)    <.01
    a      Level * smoking                               ---                     ---                     ---    1.70 (1.09)     .12
    a      Level * cardio                                ---                     ---                     ---   -0.32 (1.52)     .83
    a      Level * diabetes                              ---                     ---                     ---   -2.57 (3.27)     .43
    a      Slope * age                  -0.02 (0.01)     .14    -0.02 (0.01)     .17    -0.02 (0.01)     .16   -0.02 (0.01)    <.01
    a      Slope * education                             ---     0.02 (0.07)     .81     0.02 (0.08)     .82   -0.00 (0.04)     .94
    a      Slope * height                                ---                     ---    -0.00 (0.01)     .88   -0.00 (0.01)     .72
    a      Slope * smoking                               ---                     ---                     ---    0.01 (0.08)     .86
    a      Slope * cardio                                ---                     ---                     ---    0.03 (0.10)     .74
    a      Slope * diabetes                              ---                     ---                     ---   -0.18 (0.35)     .62
    b      Level                        17.79 (0.40)    <.01    16.24 (0.40)    <.01    16.03 (0.41)    <.01   15.84 (0.58)    <.01
    b      Slope                        -0.11 (0.02)    <.01    -0.09 (0.02)    <.01    -0.08 (0.02)    <.01   -0.07 (0.04)     .06
    b      Level * age                  -0.20 (0.04)    <.01    -0.16 (0.04)    <.01    -0.13 (0.04)    <.01   -0.10 (0.04)     .03
    b      Level * education                             ---     2.60 (0.32)    <.01     2.40 (0.32)    <.01    2.39 (0.37)    <.01
    b      Level * height                                ---                     ---     0.16 (0.05)    <.01    0.15 (0.06)     .01
    b      Level * smoking                               ---                     ---                     ---    1.27 (0.65)     .05
    b      Level * cardio                                ---                     ---                     ---   -2.00 (0.90)     .03
    b      Level * diabetes                              ---                     ---                     ---   -0.99 (2.47)     .69
    b      Slope * age                  -0.01 (0.00)    <.01    -0.01 (0.00)    <.01    -0.01 (0.00)    <.01   -0.01 (0.00)     .02
    b      Slope * education                             ---    -0.03 (0.01)     .03    -0.03 (0.01)     .04   -0.04 (0.01)     .01
    b      Slope * height                                ---                     ---    -0.00 (0.00)     .68   -0.00 (0.00)     .74
    b      Slope * smoking                               ---                     ---                     ---   -0.02 (0.03)     .54
    b      Slope * cardio                                ---                     ---                     ---    0.04 (0.05)     .51
    b      Slope * diabetes                              ---                     ---                     ---    0.11 (0.31)     .71
    a      Var (Level)                 35.59 (12.71)    <.01   36.10 (13.17)     .01   31.96 (13.67)     .02   35.33 (5.63)    <.01
    a      Var (Slope)                   0.02 (0.09)     .85     0.02 (0.09)     .85     0.02 (0.10)     .83    0.04 (0.03)     .22
    a      Var (Residual)              103.30 (1.54)    <.01   104.64 (1.66)    <.01   105.70 (2.25)    <.01   34.96 (2.36)    <.01
    b      Var (Level)                  28.85 (3.06)    <.01    22.65 (2.43)    <.01    21.91 (2.38)    <.01   20.57 (2.51)    <.01
    b      Var (Slope)                   0.01 (0.00)     .05     0.01 (0.00)     .06     0.01 (0.00)     .06    0.01 (0.00)     .08
    b      Var (Residual)                3.91 (0.22)    <.01     3.87 (0.22)    <.01     3.87 (0.23)    <.01    3.99 (0.25)    <.01
    a      Covar (Level, Slope)          0.66 (0.92)     .47     0.66 (0.94)     .48     0.69 (0.94)     .46    0.32 (0.36)     .37
    b      Covar (Level, Slope)         -0.10 (0.09)     .27    -0.05 (0.08)     .54    -0.04 (0.07)     .59   -0.06 (0.09)     .49
    \      Correlation of Levels                       0.239                   0.265                   0.225                  0.190
    \      Correlation of Slopes                      -0.092                  -0.092                  -0.085                 -0.391
    \      Correlation of Residuals                   -0.029                  -0.032                  -0.028                  0.013
    \      N                                             347                     341                     338                    299
    \      occasions                                       7                       7                       7                      7
    \      parameters                                     21                      25                      29                     41
    \      LL                                         -8,016                  -7,854                  -7,783                 -6,308
    \      AIC                                        16,075                  15,759                  15,624                 12,699
    \      BIC                                        16,155                  15,854                  15,735                 12,850

## Summary 

 Study = _SATSA_; Gender = _male_; Process (a) = _grip_

 Computed correlations:

 

label                      process_b      a     ae    aeh   aehplus
----------------------  ------------  -----  -----  -----  --------
Correlation of Levels      analogies   0.11   0.12   0.07      0.13
Correlation of Levels          block      .      .      .      0.40
Correlation of Levels        digit_b      .      .      .      0.29
Correlation of Levels        digit_f      .      .      .      0.19
Correlation of Levels         fig_id   0.37   0.40   0.38         .
Correlation of Levels        fig_mem      .      .      .      0.24
Correlation of Levels    information   0.12   0.13   0.11      0.10
Correlation of Levels           mmse   0.48   0.49   0.43      0.27
Correlation of Levels         rotate      .      .      .      0.36
Correlation of Levels         symbol   0.34   0.36   0.34      0.32
Correlation of Levels       synonyms   0.24   0.26   0.23      0.19




label                      process_b       a      ae     aeh   aehplus
----------------------  ------------  ------  ------  ------  --------
Correlation of Slopes      analogies    0.53    0.53    0.50      0.67
Correlation of Slopes          block       .       .       .      0.78
Correlation of Slopes        digit_b       .       .       .       Inf
Correlation of Slopes        digit_f       .       .       .       Inf
Correlation of Slopes         fig_id    0.47    0.47    0.44         .
Correlation of Slopes        fig_mem       .       .       .      0.50
Correlation of Slopes    information    0.54    0.48    0.52      0.64
Correlation of Slopes           mmse    0.50    0.51    0.49      0.33
Correlation of Slopes         rotate       .       .       .     -0.13
Correlation of Slopes         symbol    0.28    0.27    0.24      0.04
Correlation of Slopes       synonyms   -0.09   -0.09   -0.08     -0.39




label                         process_b       a      ae     aeh   aehplus
-------------------------  ------------  ------  ------  ------  --------
Correlation of Residuals      analogies    0.14    0.14    0.14      0.17
Correlation of Residuals          block       .       .       .      0.12
Correlation of Residuals        digit_b       .       .       .     -0.02
Correlation of Residuals        digit_f       .       .       .      0.04
Correlation of Residuals         fig_id   -0.11   -0.11   -0.11         .
Correlation of Residuals        fig_mem       .       .       .      0.12
Correlation of Residuals    information    0.04    0.04    0.04      0.05
Correlation of Residuals           mmse    0.02    0.01    0.02      0.13
Correlation of Residuals         rotate       .       .       .      0.10
Correlation of Residuals         symbol    0.09    0.09    0.09      0.15
Correlation of Residuals       synonyms   -0.03   -0.03   -0.03      0.01



P-values for corresponding covariances: 

 

label                     process_b      a     ae    aeh   aehplus
---------------------  ------------  -----  -----  -----  --------
Covariance of Levels      analogies   0.50   0.50   0.74      0.28
Covariance of Levels          block      .      .      .      0.00
Covariance of Levels        digit_b      .      .      .      0.03
Covariance of Levels        digit_f      .      .      .      0.14
Covariance of Levels         fig_id   0.01   0.01   0.02         .
Covariance of Levels        fig_mem      .      .      .      0.06
Covariance of Levels    information   0.47   0.45   0.55      0.28
Covariance of Levels           mmse   0.02   0.02   0.06      0.05
Covariance of Levels         rotate      .      .      .      0.00
Covariance of Levels         symbol   0.03   0.02   0.04      0.00
Covariance of Levels       synonyms   0.09   0.08   0.15      0.06




label                     process_b      a     ae    aeh   aehplus
---------------------  ------------  -----  -----  -----  --------
Covariance of Slopes      analogies   0.76   0.79   0.79      0.15
Covariance of Slopes          block      .      .      .      0.05
Covariance of Slopes        digit_b      .      .      .      0.75
Covariance of Slopes        digit_f      .      .      .      0.61
Covariance of Slopes         fig_id   0.68   0.69   0.71         .
Covariance of Slopes        fig_mem      .      .      .      0.39
Covariance of Slopes    information   0.57   0.60   0.60      0.03
Covariance of Slopes           mmse   0.48   0.52   0.55      0.31
Covariance of Slopes         rotate      .      .      .      0.80
Covariance of Slopes         symbol   0.81   0.83   0.83      0.92
Covariance of Slopes       synonyms   0.97   0.93   0.95      0.37




label                         process_b      a     ae    aeh   aehplus
-------------------------  ------------  -----  -----  -----  --------
Covariance of  Residuals      analogies   0.07   0.08   0.08      0.00
Covariance of  Residuals          block      .      .      .      0.00
Covariance of  Residuals        digit_b      .      .      .      0.67
Covariance of  Residuals        digit_f      .      .      .      0.49
Covariance of  Residuals         fig_id   0.08   0.09   0.10         .
Covariance of  Residuals        fig_mem      .      .      .      0.02
Covariance of  Residuals    information   0.56   0.55   0.54      0.14
Covariance of  Residuals           mmse   0.82   0.84   0.76      0.01
Covariance of  Residuals         rotate      .      .      .      0.06
Covariance of  Residuals         symbol   0.24   0.24   0.25      0.00
Covariance of  Residuals       synonyms   0.68   0.66   0.69      0.79


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
[1] knitr_1.14                ggplot2_2.2.0             IalsaSynthesis_0.1.8.9000 MplusAutomation_0.6-4    
[5] magrittr_1.5             

loaded via a namespace (and not attached):
 [1] Rcpp_0.12.7      formatR_1.4      plyr_1.8.4       highr_0.6        tools_3.3.1      boot_1.3-18     
 [7] digest_0.6.10    evaluate_0.10    tibble_1.2       gtable_0.2.0     lattice_0.20-34  texreg_1.36.7   
[13] DBI_0.5-1        yaml_2.1.13      proto_0.3-10     coda_0.18-1      dplyr_0.5.0      stringr_1.1.0   
[19] htmlwidgets_0.7  grid_3.3.1       DT_0.2           data.table_1.9.6 R6_2.2.0         rmarkdown_1.1   
[25] gsubfn_0.6-6     pander_0.6.0     tidyr_0.6.0      reshape2_1.4.1   readr_1.0.0      scales_0.4.1    
[31] htmltools_0.3.5  rsconnect_0.5    assertthat_0.1   testit_0.5       colorspace_1.2-7 xtable_1.8-2    
[37] stringi_1.1.2    lazyeval_0.2.0   munsell_0.4.3    chron_2.3-47    
```
