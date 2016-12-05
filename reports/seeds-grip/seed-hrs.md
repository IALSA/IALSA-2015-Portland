# HRS : Seed Report
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

 Study **HRS** have contributed the following outcome pairs to the IASLA-2015-Portland model pool: 
NULL



process_a   process_b    n_models
----------  ----------  ---------
grip        serial7             6
grip        tics                6
grip        word_de             6
grip        word_im             6




study_name   subgroup   model_type   process_a   process_b    n_models
-----------  ---------  -----------  ----------  ----------  ---------
hrs          female     a            grip        serial7             1
hrs          female     a            grip        tics                1
hrs          female     a            grip        word_de             1
hrs          female     a            grip        word_im             1
hrs          female     aeh          grip        serial7             1
hrs          female     aeh          grip        tics                1
hrs          female     aeh          grip        word_de             1
hrs          female     aeh          grip        word_im             1
hrs          female     aehplus      grip        serial7             1
hrs          female     aehplus      grip        tics                1
hrs          female     aehplus      grip        word_de             1
hrs          female     aehplus      grip        word_im             1




study_name   subgroup   model_type   process_a   process_b    n_models
-----------  ---------  -----------  ----------  ----------  ---------
hrs          male       a            grip        serial7             1
hrs          male       a            grip        tics                1
hrs          male       a            grip        word_de             1
hrs          male       a            grip        word_im             1
hrs          male       aeh          grip        serial7             1
hrs          male       aeh          grip        tics                1
hrs          male       aeh          grip        word_de             1
hrs          male       aeh          grip        word_im             1
hrs          male       aehplus      grip        serial7             1
hrs          male       aehplus      grip        tics                1
hrs          male       aehplus      grip        word_de             1
hrs          male       aehplus      grip        word_im             1


# female 

 Gender = _female_; Model type: _aehplus_;  Process (a) = _grip_; Process (b): *serial7*, *tics*, *word_de*, *word_im*


 process   label                                    serial7                     tics                word_de                word_im                      mean(sd)
---------  -------------------------  ---------------------  -----------------------  ---------------------  ---------------------  ----------------------------
   ab      Covar (Levels)               0.13 (0.13)     .32      2.48 (1.40)     .08    0.49 (0.15)    <.01    0.58 (0.12)    <.01                           ---
   ab      Covar (Slopes)               0.01 (0.00)    <.01      0.10 (0.06)     .08    0.00 (0.00)     .92    0.00 (0.00)     .46                           ---
   ab      Covar (Residuals)           -0.08 (0.06)     .18     -0.40 (0.46)     .39    0.17 (0.07)     .01    0.09 (0.06)     .14                           ---
   er      Corr (Levels)                0.03 (0.03)     .32                      ---    0.09 (0.03)    <.01    0.14 (0.03)    <.01                           ---
   er      Corr (Slopes)                0.45 (0.13)    <.01                      ---    0.04 (0.41)     .92    0.32 (0.51)     .53                           ---
   er      Corr (Residuals)            -0.03 (0.02)     .18                      ---    0.05 (0.02)     .01    0.03 (0.02)     .14                           ---
    a      Level                       23.86 (0.20)    <.01     23.66 (0.89)    <.01   23.85 (0.20)    <.01   23.85 (0.20)    <.01                   23.80(0.10)
    a      Slope                       -0.46 (0.03)    <.01     -0.27 (0.18)     .14   -0.46 (0.03)    <.01   -0.46 (0.03)    <.01                   -0.41(0.09)
    a      Level * age                 -0.26 (0.01)    <.01     -0.29 (0.07)    <.01   -0.26 (0.01)    <.01   -0.26 (0.01)    <.01                   -0.27(0.01)
    a      Level * education            0.03 (0.03)     .37      0.22 (0.18)     .23    0.02 (0.03)     .38    0.03 (0.03)     .36                    0.07(0.10)
    a      Level * height               0.22 (0.01)    <.01      9.91 (6.12)     .10    0.22 (0.01)    <.01    0.22 (0.01)    <.01                    2.64(4.84)
    a      Level * smoking             -0.07 (0.15)     .65     -2.01 (1.07)     .06   -0.07 (0.15)     .64   -0.07 (0.15)     .65                   -0.55(0.97)
    a      Level * cardio              -1.21 (0.19)    <.01     -1.77 (0.74)     .02   -1.21 (0.19)    <.01   -1.22 (0.19)    <.01                   -1.35(0.28)
    a      Level * diabetes            -1.19 (0.21)    <.01     -1.17 (0.70)     .10   -1.20 (0.21)    <.01   -1.19 (0.21)    <.01                   -1.19(0.01)
    a      Slope * age                 -0.01 (0.00)    <.01      0.00 (0.02)     .90   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01                   -0.01(0.01)
    a      Slope * education            0.00 (0.00)     .90     -0.05 (0.04)     .17    0.00 (0.00)     .84    0.00 (0.00)     .85                   -0.01(0.03)
    a      Slope * height              -0.00 (0.00)     .14      1.83 (1.26)     .15   -0.00 (0.00)     .19   -0.00 (0.00)     .17                    0.46(0.92)
    a      Slope * smoking             -0.02 (0.02)     .44      0.12 (0.23)     .59   -0.01 (0.02)     .51   -0.01 (0.02)     .54                    0.02(0.07)
    a      Slope * cardio               0.01 (0.03)     .68     -0.03 (0.16)     .84    0.01 (0.03)     .65    0.01 (0.03)     .60                    0.00(0.02)
    a      Slope * diabetes             0.00 (0.03)     .96      0.05 (0.15)     .72    0.00 (0.03)     .94    0.00 (0.03)     .96                    0.01(0.03)
    b      Level                        2.67 (0.06)    <.01      8.02 (0.28)    <.01    3.45 (0.06)    <.01    4.59 (0.05)    <.01                           ---
    b      Slope                       -0.11 (0.01)    <.01     -0.08 (0.05)     .11   -0.08 (0.01)    <.01   -0.08 (0.01)    <.01                           ---
    b      Level * age                 -0.00 (0.00)     .40      0.05 (0.02)    <.01   -0.06 (0.00)    <.01   -0.05 (0.00)    <.01                           ---
    b      Level * education            0.18 (0.01)    <.01      0.15 (0.03)    <.01    0.18 (0.01)    <.01    0.17 (0.01)    <.01                           ---
    b      Level * height               0.01 (0.00)     .01      0.89 (1.27)     .48    0.01 (0.00)     .14    0.00 (0.00)     .26                           ---
    b      Level * smoking             -0.08 (0.05)     .10      1.05 (0.36)    <.01    0.09 (0.05)     .07    0.06 (0.04)     .12                           ---
    b      Level * cardio              -0.01 (0.06)     .92     -0.33 (0.21)     .12   -0.24 (0.06)    <.01   -0.14 (0.05)     .01                           ---
    b      Level * diabetes            -0.20 (0.06)    <.01      0.11 (0.22)     .61   -0.31 (0.07)    <.01   -0.21 (0.05)    <.01                           ---
    b      Slope * age                 -0.01 (0.00)    <.01      0.01 (0.00)    <.01   -0.00 (0.00)    <.01   -0.00 (0.00)    <.01                           ---
    b      Slope * education            0.00 (0.00)     .85     -0.02 (0.01)     .01    0.00 (0.00)     .83    0.00 (0.00)     .82                           ---
    b      Slope * height               0.00 (0.00)     .89      0.19 (0.27)     .48    0.00 (0.00)     .85    0.00 (0.00)     .90                           ---
    b      Slope * smoking             -0.01 (0.01)     .06     -0.23 (0.08)    <.01   -0.01 (0.01)     .09   -0.01 (0.01)     .19                           ---
    b      Slope * cardio              -0.03 (0.01)    <.01     -0.03 (0.05)     .55    0.00 (0.01)     .96    0.00 (0.01)     .99                           ---
    b      Slope * diabetes            -0.02 (0.01)     .07      0.06 (0.04)     .19   -0.02 (0.01)     .06   -0.02 (0.01)     .03                           ---
    a      Var (Level)                 18.41 (0.68)    <.01   102.03 (52.10)     .05   18.42 (0.68)    <.01   18.42 (0.68)    <.01                  39.32(41.80)
    a      Var (Slope)                  0.05 (0.01)    <.01      3.52 (2.11)     .10    0.05 (0.01)    <.01    0.05 (0.01)    <.01                    0.92(1.73)
    a      Var (Residual)               8.20 (0.29)    <.01    57.63 (23.67)     .01    8.21 (0.29)    <.01    8.21 (0.29)    <.01                  20.56(24.71)
    b      Var (Level)                  1.13 (0.05)    <.01      2.33 (0.94)     .01    1.49 (0.08)    <.01    0.87 (0.06)    <.01                           ---
    b      Var (Slope)                  0.02 (0.00)    <.01      0.12 (0.02)    <.01    0.00 (0.00)     .52    0.00 (0.00)     .59                           ---
    b      Var (Residual)               1.23 (0.03)    <.01      1.79 (0.20)    <.01    1.68 (0.05)    <.01    1.25 (0.04)    <.01                           ---
    a      Covar (Level, Slope)        -0.30 (0.08)    <.01   -18.89 (11.44)     .10   -0.30 (0.08)    <.01   -0.30 (0.08)    <.01                   -4.95(9.30)
    b      Covar (Level, Slope)        -0.02 (0.01)    <.01     -0.15 (0.14)     .27    0.01 (0.01)     .56    0.01 (0.01)     .47                           ---
    \      Correlation of Levels                      0.028                    0.161                  0.093                  0.144                    0.11(0.06)
    \      Correlation of Slopes                      0.466                    0.158                  0.000                  0.277                    0.23(0.20)
    \      Correlation of Residuals                  -0.027                   -0.039                  0.047                  0.028                    0.00(0.04)
    \      N                                          4,604                      641                  4,612                  4,612              3617.25(1984.17)
    \      occasions                                      3                        5                      3                      3                    3.50(1.00)
    \      parameters                                    41                       41                     41                     41                   41.00(0.00)
    \      LL                                       -49,990                  -11,072                -51,599                -49,537   -4.054933e+04(1.967179e+04)
    \      AIC                                      100,063                   22,225                103,280                 99,155    8.118066e+04(3.934357e+04)
    \      BIC                                      100,327                   22,408                103,544                 99,419    8.142430e+04(3.938397e+04)

##  serial7 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _serial7_


 process   label                                            a                      aeh                aehplus
---------  -------------------------  -----------------------  -----------------------  ---------------------
   ab      Covar (Levels)                 0.90 (1.81)     .62      0.36 (1.52)     .81    0.13 (0.13)     .32
   ab      Covar (Slopes)                -0.04 (0.14)     .80     -0.04 (0.12)     .76    0.01 (0.00)    <.01
   ab      Covar (Residuals)              0.01 (0.10)     .93      0.01 (0.09)     .95   -0.08 (0.06)     .18
   er      Corr (Levels)                                  ---                      ---    0.03 (0.03)     .32
   er      Corr (Slopes)                                  ---                      ---    0.45 (0.13)    <.01
   er      Corr (Residuals)                               ---                      ---   -0.03 (0.02)     .18
    a      Level                         24.15 (0.47)    <.01     22.57 (0.89)    <.01   23.86 (0.20)    <.01
    a      Slope                         -0.52 (0.10)    <.01     -0.26 (0.19)     .16   -0.46 (0.03)    <.01
    a      Level * age                   -0.31 (0.06)    <.01     -0.29 (0.06)    <.01   -0.26 (0.01)    <.01
    a      Level * education                              ---      0.26 (0.19)     .17    0.03 (0.03)     .37
    a      Level * height                                 ---     10.46 (6.05)     .08    0.22 (0.01)    <.01
    a      Level * smoking                                ---                      ---   -0.07 (0.15)     .65
    a      Level * cardio                                 ---                      ---   -1.21 (0.19)    <.01
    a      Level * diabetes                               ---                      ---   -1.19 (0.21)    <.01
    a      Slope * age                    0.00 (0.01)     .97      0.00 (0.01)     .96   -0.01 (0.00)    <.01
    a      Slope * education                              ---     -0.05 (0.04)     .25    0.00 (0.00)     .90
    a      Slope * height                                 ---      1.67 (1.29)     .20   -0.00 (0.00)     .14
    a      Slope * smoking                                ---                      ---   -0.02 (0.02)     .44
    a      Slope * cardio                                 ---                      ---    0.01 (0.03)     .68
    a      Slope * diabetes                               ---                      ---    0.00 (0.03)     .96
    b      Level                          3.54 (0.06)    <.01      2.28 (0.14)    <.01    2.67 (0.06)    <.01
    b      Slope                         -0.15 (0.01)    <.01     -0.11 (0.02)    <.01   -0.11 (0.01)    <.01
    b      Level * age                   -0.01 (0.00)     .02     -0.01 (0.00)     .28   -0.00 (0.00)     .40
    b      Level * education                              ---      0.22 (0.02)    <.01    0.18 (0.01)    <.01
    b      Level * height                                 ---      0.57 (0.97)     .56    0.01 (0.00)     .01
    b      Level * smoking                                ---                      ---   -0.08 (0.05)     .10
    b      Level * cardio                                 ---                      ---   -0.01 (0.06)     .92
    b      Level * diabetes                               ---                      ---   -0.20 (0.06)    <.01
    b      Slope * age                   -0.01 (0.00)    <.01     -0.01 (0.00)    <.01   -0.01 (0.00)    <.01
    b      Slope * education                              ---     -0.01 (0.00)     .01    0.00 (0.00)     .85
    b      Slope * height                                 ---      0.22 (0.14)     .10    0.00 (0.00)     .89
    b      Slope * smoking                                ---                      ---   -0.01 (0.01)     .06
    b      Slope * cardio                                 ---                      ---   -0.03 (0.01)    <.01
    b      Slope * diabetes                               ---                      ---   -0.02 (0.01)     .07
    a      Var (Level)                 134.49 (64.90)     .04   133.37 (64.77)     .04   18.41 (0.68)    <.01
    a      Var (Slope)                    5.08 (2.55)     .05      5.04 (2.53)     .05    0.05 (0.01)    <.01
    a      Var (Residual)                15.01 (6.26)     .02     14.78 (6.17)     .02    8.20 (0.29)    <.01
    b      Var (Level)                    0.04 (0.56)     .94      0.02 (0.74)     .97    1.13 (0.05)    <.01
    b      Var (Slope)                    0.00 (0.12)     .99      0.00 (0.10)     .99    0.02 (0.00)    <.01
    b      Var (Residual)                15.01 (6.26)     .02     14.78 (6.17)     .02    1.23 (0.03)    <.01
    a      Covar (Level, Slope)        -24.64 (13.27)     .06   -24.58 (13.19)     .06   -0.30 (0.08)    <.01
    b      Covar (Level, Slope)           0.00 (0.11)     .99      0.00 (0.10)     .99   -0.02 (0.01)    <.01
    \      Correlation of Levels                      0.36833                  0.20010                  0.028
    \      Correlation of Slopes                     -0.49116                 -0.52102                  0.466
    \      Correlation of Residuals                   0.00053                  0.00041                 -0.027
    \      N                                              641                      641                  4,604
    \      occasions                                        5                        5                      3
    \      parameters                                      20                       28                     41
    \      LL                                         -14,756                  -14,707                -49,990
    \      AIC                                         29,552                   29,470                100,063
    \      BIC                                         29,641                   29,595                100,327

##  tics 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _tics_


 process   label                                            a                      aeh                  aehplus
---------  -------------------------  -----------------------  -----------------------  -----------------------
   ab      Covar (Levels)                 1.67 (0.29)    <.01      1.26 (0.20)    <.01      2.48 (1.40)     .08
   ab      Covar (Slopes)                 0.07 (0.13)     .59      0.06 (0.11)     .58      0.10 (0.06)     .08
   ab      Covar (Residuals)              0.29 (0.35)     .41      0.25 (0.32)     .43     -0.40 (0.46)     .39
   er      Corr (Levels)                                  ---                      ---                      ---
   er      Corr (Slopes)                                  ---                      ---                      ---
   er      Corr (Residuals)                               ---                      ---                      ---
    a      Level                         24.14 (0.46)    <.01     22.56 (0.89)    <.01     23.66 (0.89)    <.01
    a      Slope                         -0.50 (0.08)    <.01     -0.25 (0.19)     .18     -0.27 (0.18)     .14
    a      Level * age                   -0.31 (0.06)    <.01     -0.29 (0.06)    <.01     -0.29 (0.07)    <.01
    a      Level * education                              ---      0.26 (0.19)     .17      0.22 (0.18)     .23
    a      Level * height                                 ---     10.42 (6.05)     .08      9.91 (6.12)     .10
    a      Level * smoking                                ---                      ---     -2.01 (1.07)     .06
    a      Level * cardio                                 ---                      ---     -1.77 (0.74)     .02
    a      Level * diabetes                               ---                      ---     -1.17 (0.70)     .10
    a      Slope * age                    0.00 (0.01)     .94      0.00 (0.01)     .95      0.00 (0.02)     .90
    a      Slope * education                              ---     -0.05 (0.04)     .23     -0.05 (0.04)     .17
    a      Slope * height                                 ---      1.71 (1.27)     .18      1.83 (1.26)     .15
    a      Slope * smoking                                ---                      ---      0.12 (0.23)     .59
    a      Slope * cardio                                 ---                      ---     -0.03 (0.16)     .84
    a      Slope * diabetes                               ---                      ---      0.05 (0.15)     .72
    b      Level                          9.14 (0.14)    <.01      8.36 (0.23)    <.01      8.02 (0.28)    <.01
    b      Slope                         -0.16 (0.02)    <.01     -0.08 (0.04)     .04     -0.08 (0.05)     .11
    b      Level * age                   -0.01 (0.02)     .62     -0.00 (0.02)     .79      0.05 (0.02)    <.01
    b      Level * education                              ---      0.14 (0.03)    <.01      0.15 (0.03)    <.01
    b      Level * height                                 ---      1.01 (1.29)     .43      0.89 (1.27)     .48
    b      Level * smoking                                ---                      ---      1.05 (0.36)    <.01
    b      Level * cardio                                 ---                      ---     -0.33 (0.21)     .12
    b      Level * diabetes                               ---                      ---      0.11 (0.22)     .61
    b      Slope * age                    0.02 (0.00)    <.01      0.02 (0.00)    <.01      0.01 (0.00)    <.01
    b      Slope * education                              ---     -0.01 (0.01)     .02     -0.02 (0.01)     .01
    b      Slope * height                                 ---      0.07 (0.29)     .81      0.19 (0.27)     .48
    b      Slope * smoking                                ---                      ---     -0.23 (0.08)    <.01
    b      Slope * cardio                                 ---                      ---     -0.03 (0.05)     .55
    b      Slope * diabetes                               ---                      ---      0.06 (0.04)     .19
    a      Var (Level)                 130.60 (63.46)     .04   129.34 (63.23)     .04   102.03 (52.10)     .05
    a      Var (Slope)                    4.80 (2.46)     .05      4.75 (2.42)     .05      3.52 (2.11)     .10
    a      Var (Residual)                20.58 (8.54)     .02     20.52 (8.52)     .02    57.63 (23.67)     .01
    b      Var (Level)                    0.04 (0.89)     .96      0.04 (0.91)     .97      2.33 (0.94)     .01
    b      Var (Slope)                    0.00 (0.17)     .99      0.00 (0.17)     .99      0.12 (0.02)    <.01
    b      Var (Residual)                20.58 (8.54)     .02     20.52 (8.52)     .02      1.79 (0.20)    <.01
    a      Covar (Level, Slope)        -23.92 (13.01)     .07   -23.82 (12.91)     .06   -18.89 (11.44)     .10
    b      Covar (Level, Slope)          -0.01 (0.29)     .98     -0.00 (0.28)     .99     -0.15 (0.14)     .27
    \      Correlation of Levels                        0.689                    0.591                    0.161
    \      Correlation of Slopes                        0.725                    0.646                    0.158
    \      Correlation of Residuals                     0.014                    0.012                   -0.039
    \      N                                              641                      641                      641
    \      occasions                                        5                        5                        5
    \      parameters                                      20                       28                       41
    \      LL                                         -12,582                  -12,560                  -11,072
    \      AIC                                         25,203                   25,175                   22,225
    \      BIC                                         25,293                   25,300                   22,408

##  word_de 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _word_de_


 process   label                                            a                      aeh                aehplus
---------  -------------------------  -----------------------  -----------------------  ---------------------
   ab      Covar (Levels)                 1.35 (1.71)     .43      0.92 (1.44)     .52    0.49 (0.15)    <.01
   ab      Covar (Slopes)                 0.02 (0.17)     .89      0.02 (0.09)     .82    0.00 (0.00)     .92
   ab      Covar (Residuals)              0.11 (0.08)     .17      0.09 (0.06)     .13    0.17 (0.07)     .01
   er      Corr (Levels)                                  ---                      ---    0.09 (0.03)    <.01
   er      Corr (Slopes)                                  ---                      ---    0.04 (0.41)     .92
   er      Corr (Residuals)                               ---                      ---    0.05 (0.02)     .01
    a      Level                         24.14 (0.46)    <.01     22.56 (0.89)    <.01   23.85 (0.20)    <.01
    a      Slope                         -0.51 (0.08)    <.01     -0.25 (0.19)     .18   -0.46 (0.03)    <.01
    a      Level * age                   -0.31 (0.06)    <.01     -0.29 (0.06)    <.01   -0.26 (0.01)    <.01
    a      Level * education                              ---      0.26 (0.19)     .17    0.02 (0.03)     .38
    a      Level * height                                 ---     10.45 (6.05)     .08    0.22 (0.01)    <.01
    a      Level * smoking                                ---                      ---   -0.07 (0.15)     .64
    a      Level * cardio                                 ---                      ---   -1.21 (0.19)    <.01
    a      Level * diabetes                               ---                      ---   -1.20 (0.21)    <.01
    a      Slope * age                    0.00 (0.01)     .93      0.00 (0.01)     .94   -0.01 (0.00)    <.01
    a      Slope * education                              ---     -0.05 (0.04)     .23    0.00 (0.00)     .84
    a      Slope * height                                 ---      1.67 (1.27)     .19   -0.00 (0.00)     .19
    a      Slope * smoking                                ---                      ---   -0.01 (0.02)     .51
    a      Slope * cardio                                 ---                      ---    0.01 (0.03)     .65
    a      Slope * diabetes                               ---                      ---    0.00 (0.03)     .94
    b      Level                          4.43 (0.07)    <.01      3.52 (0.13)    <.01    3.45 (0.06)    <.01
    b      Slope                         -0.06 (0.03)     .05     -0.04 (0.02)     .10   -0.08 (0.01)    <.01
    b      Level * age                   -0.07 (0.01)    <.01     -0.07 (0.01)    <.01   -0.06 (0.00)    <.01
    b      Level * education                              ---      0.16 (0.02)    <.01    0.18 (0.01)    <.01
    b      Level * height                                 ---      1.39 (0.98)     .16    0.01 (0.00)     .14
    b      Level * smoking                                ---                      ---    0.09 (0.05)     .07
    b      Level * cardio                                 ---                      ---   -0.24 (0.06)    <.01
    b      Level * diabetes                               ---                      ---   -0.31 (0.07)    <.01
    b      Slope * age                   -0.00 (0.00)     .18     -0.00 (0.00)    <.01   -0.00 (0.00)    <.01
    b      Slope * education                              ---     -0.00 (0.00)     .31    0.00 (0.00)     .83
    b      Slope * height                                 ---     -0.14 (0.18)     .42    0.00 (0.00)     .85
    b      Slope * smoking                                ---                      ---   -0.01 (0.01)     .09
    b      Slope * cardio                                 ---                      ---    0.00 (0.01)     .96
    b      Slope * diabetes                               ---                      ---   -0.02 (0.01)     .06
    a      Var (Level)                 133.50 (64.62)     .04   132.29 (64.43)     .04   18.42 (0.68)    <.01
    a      Var (Slope)                    5.01 (2.53)     .05      4.97 (2.53)     .05    0.05 (0.01)    <.01
    a      Var (Residual)                16.46 (6.86)     .02     16.34 (6.46)     .01    8.21 (0.29)    <.01
    b      Var (Level)                    0.07 (1.75)     .97      0.05 (0.32)     .87    1.49 (0.08)    <.01
    b      Var (Slope)                    0.00 (0.07)     .99      0.00 (0.13)     .99    0.00 (0.00)     .52
    b      Var (Residual)                16.46 (6.86)     .02     16.34 (6.46)     .01    1.68 (0.05)    <.01
    a      Covar (Level, Slope)        -24.47 (13.23)     .06   -24.39 (13.15)     .06   -0.30 (0.08)    <.01
    b      Covar (Level, Slope)          -0.00 (0.66)     .99     -0.00 (0.48)     .99    0.01 (0.01)     .56
    \      Correlation of Levels                       0.4324                   0.3523                  0.093
    \      Correlation of Slopes                       0.3248                   0.3121                  0.000
    \      Correlation of Residuals                    0.0065                   0.0057                  0.047
    \      N                                              641                      641                  4,612
    \      occasions                                        5                        5                      3
    \      parameters                                      20                       28                     41
    \      LL                                         -13,872                  -13,841                -51,599
    \      AIC                                         27,785                   27,738                103,280
    \      BIC                                         27,874                   27,863                103,544

##  word_im 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _word_im_


 process   label                                            a                      aeh                aehplus
---------  -------------------------  -----------------------  -----------------------  ---------------------
   ab      Covar (Levels)                 1.29 (3.15)     .68      0.91 (2.83)     .75    0.58 (0.12)    <.01
   ab      Covar (Slopes)                 0.02 (0.15)     .90      0.02 (0.14)     .89    0.00 (0.00)     .46
   ab      Covar (Residuals)              0.10 (0.08)     .26      0.08 (0.08)     .33    0.09 (0.06)     .14
   er      Corr (Levels)                                  ---                      ---    0.14 (0.03)    <.01
   er      Corr (Slopes)                                  ---                      ---    0.32 (0.51)     .53
   er      Corr (Residuals)                               ---                      ---    0.03 (0.02)     .14
    a      Level                         24.14 (0.46)    <.01     22.56 (0.89)    <.01   23.85 (0.20)    <.01
    a      Slope                         -0.51 (0.08)    <.01     -0.26 (0.19)     .18   -0.46 (0.03)    <.01
    a      Level * age                   -0.31 (0.06)    <.01     -0.29 (0.06)    <.01   -0.26 (0.01)    <.01
    a      Level * education                              ---      0.26 (0.19)     .17    0.03 (0.03)     .36
    a      Level * height                                 ---     10.46 (6.05)     .08    0.22 (0.01)    <.01
    a      Level * smoking                                ---                      ---   -0.07 (0.15)     .65
    a      Level * cardio                                 ---                      ---   -1.22 (0.19)    <.01
    a      Level * diabetes                               ---                      ---   -1.19 (0.21)    <.01
    a      Slope * age                    0.00 (0.01)     .93      0.00 (0.01)     .94   -0.01 (0.00)    <.01
    a      Slope * education                              ---     -0.05 (0.04)     .23    0.00 (0.00)     .85
    a      Slope * height                                 ---      1.66 (1.26)     .19   -0.00 (0.00)     .17
    a      Slope * smoking                                ---                      ---   -0.01 (0.02)     .54
    a      Slope * cardio                                 ---                      ---    0.01 (0.03)     .60
    a      Slope * diabetes                               ---                      ---    0.00 (0.03)     .96
    b      Level                          5.57 (0.05)    <.01      4.72 (0.10)    <.01    4.59 (0.05)    <.01
    b      Slope                         -0.08 (0.01)    <.01     -0.08 (0.02)    <.01   -0.08 (0.01)    <.01
    b      Level * age                   -0.06 (0.00)    <.01     -0.05 (0.00)    <.01   -0.05 (0.00)    <.01
    b      Level * education                              ---      0.15 (0.02)    <.01    0.17 (0.01)    <.01
    b      Level * height                                 ---      1.08 (0.77)     .16    0.00 (0.00)     .26
    b      Level * smoking                                ---                      ---    0.06 (0.04)     .12
    b      Level * cardio                                 ---                      ---   -0.14 (0.05)     .01
    b      Level * diabetes                               ---                      ---   -0.21 (0.05)    <.01
    b      Slope * age                   -0.00 (0.00)    <.01     -0.00 (0.00)    <.01   -0.00 (0.00)    <.01
    b      Slope * education                              ---      0.00 (0.00)     .78    0.00 (0.00)     .82
    b      Slope * height                                 ---      0.03 (0.14)     .86    0.00 (0.00)     .90
    b      Slope * smoking                                ---                      ---   -0.01 (0.01)     .19
    b      Slope * cardio                                 ---                      ---    0.00 (0.01)     .99
    b      Slope * diabetes                               ---                      ---   -0.02 (0.01)     .03
    a      Var (Level)                 134.08 (64.87)     .04   132.89 (64.69)     .04   18.42 (0.68)    <.01
    a      Var (Slope)                    5.05 (2.56)     .05      5.01 (2.54)     .05    0.05 (0.01)    <.01
    a      Var (Residual)                15.64 (6.37)     .01     15.49 (6.29)     .01    8.21 (0.29)    <.01
    b      Var (Level)                    0.05 (0.82)     .95      0.04 (0.85)     .97    0.87 (0.06)    <.01
    b      Var (Slope)                    0.00 (0.10)     .99      0.00 (0.09)     .99    0.00 (0.00)     .59
    b      Var (Residual)                15.64 (6.37)     .01     15.49 (6.29)     .01    1.25 (0.04)    <.01
    a      Covar (Level, Slope)        -24.58 (13.28)     .06   -24.50 (13.20)     .06   -0.30 (0.08)    <.01
    b      Covar (Level, Slope)          -0.00 (0.21)     .99     -0.00 (0.18)     .99    0.01 (0.01)     .47
    \      Correlation of Levels                       0.5041                   0.4201                  0.144
    \      Correlation of Slopes                       0.2813                   0.2825                  0.277
    \      Correlation of Residuals                    0.0061                   0.0051                  0.028
    \      N                                              641                      641                  4,612
    \      occasions                                        5                        5                      3
    \      parameters                                      20                       28                     41
    \      LL                                         -13,794                  -13,759                -49,537
    \      AIC                                         27,627                   27,574                 99,155
    \      BIC                                         27,717                   27,699                 99,419

## Summary 

 Study = _HRS_; Gender = _female_; Process (a) = _grip_

 Computed correlations:

 

label                    process_b      a    aeh   aehplus
----------------------  ----------  -----  -----  --------
Correlation of Levels      serial7   0.37   0.20      0.03
Correlation of Levels         tics   0.69   0.59      0.16
Correlation of Levels      word_de   0.43   0.35      0.09
Correlation of Levels      word_im   0.50   0.42      0.14




label                    process_b       a     aeh   aehplus
----------------------  ----------  ------  ------  --------
Correlation of Slopes      serial7   -0.49   -0.52      0.47
Correlation of Slopes         tics    0.72    0.65      0.16
Correlation of Slopes      word_de    0.32    0.31      0.00
Correlation of Slopes      word_im    0.28    0.28      0.28




label                       process_b      a    aeh   aehplus
-------------------------  ----------  -----  -----  --------
Correlation of Residuals      serial7   0.00   0.00     -0.03
Correlation of Residuals         tics   0.01   0.01     -0.04
Correlation of Residuals      word_de   0.01   0.01      0.05
Correlation of Residuals      word_im   0.01   0.01      0.03



P-values for corresponding covariances: 

 

label                   process_b      a    aeh   aehplus
---------------------  ----------  -----  -----  --------
Covariance of Levels      serial7   0.62   0.81      0.32
Covariance of Levels         tics   0.00   0.00      0.08
Covariance of Levels      word_de   0.43   0.52      0.00
Covariance of Levels      word_im   0.68   0.75      0.00




label                   process_b      a    aeh   aehplus
---------------------  ----------  -----  -----  --------
Covariance of Slopes      serial7   0.80   0.76      0.00
Covariance of Slopes         tics   0.59   0.58      0.08
Covariance of Slopes      word_de   0.89   0.82      0.92
Covariance of Slopes      word_im   0.90   0.89      0.46




label                       process_b      a    aeh   aehplus
-------------------------  ----------  -----  -----  --------
Covariance of  Residuals      serial7   0.93   0.95      0.18
Covariance of  Residuals         tics   0.41   0.43      0.39
Covariance of  Residuals      word_de   0.17   0.13      0.01
Covariance of  Residuals      word_im   0.26   0.33      0.14



# male 

 Gender = _male_; Model type: _aehplus_;  Process (a) = _grip_; Process (b): *serial7*, *tics*, *word_de*, *word_im*


 process   label                                    serial7                      tics                word_de                word_im                      mean(sd)
---------  -------------------------  ---------------------  ------------------------  ---------------------  ---------------------  ----------------------------
   ab      Covar (Levels)               0.82 (0.21)    <.01       0.67 (1.48)     .65    1.04 (0.23)    <.01    0.81 (0.20)    <.01                           ---
   ab      Covar (Slopes)               0.02 (0.01)    <.01       0.06 (0.06)     .31    0.00 (0.01)     .39    0.00 (0.00)     .85                           ---
   ab      Covar (Residuals)           -0.17 (0.12)     .17      -1.11 (0.97)     .25    0.14 (0.12)     .22    0.25 (0.10)     .01                           ---
   er      Corr (Levels)                0.15 (0.04)    <.01                       ---    0.15 (0.03)    <.01    0.14 (0.03)    <.01                           ---
   er      Corr (Slopes)                0.30 (0.11)     .01                       ---    0.28 (0.35)     .42    0.08 (0.40)     .84                           ---
   er      Corr (Residuals)            -0.04 (0.03)     .17                       ---    0.03 (0.02)     .22    0.06 (0.02)     .01                           ---
    a      Level                       38.25 (0.38)    <.01      35.26 (1.13)    <.01   38.25 (0.38)    <.01   38.24 (0.38)    <.01                   37.50(1.49)
    a      Slope                       -0.78 (0.06)    <.01      -0.59 (0.23)     .01   -0.77 (0.06)    <.01   -0.77 (0.06)    <.01                   -0.73(0.09)
    a      Level * age                 -0.43 (0.01)    <.01      -0.52 (0.05)    <.01   -0.43 (0.01)    <.01   -0.43 (0.01)    <.01                   -0.45(0.04)
    a      Level * education            0.13 (0.04)    <.01       0.01 (0.14)     .95    0.13 (0.04)    <.01    0.13 (0.04)    <.01                    0.10(0.06)
    a      Level * height               0.35 (0.02)    <.01      25.69 (4.97)    <.01    0.35 (0.02)    <.01    0.35 (0.02)    <.01                   6.68(12.67)
    a      Level * smoking             -0.26 (0.29)     .37       1.02 (2.83)     .72   -0.26 (0.29)     .37   -0.26 (0.29)     .38                    0.06(0.64)
    a      Level * cardio              -1.15 (0.32)    <.01       0.25 (0.88)     .78   -1.14 (0.32)    <.01   -1.14 (0.32)    <.01                   -0.79(0.69)
    a      Level * diabetes            -1.59 (0.34)    <.01      -2.04 (0.80)     .01   -1.59 (0.34)    <.01   -1.60 (0.34)    <.01                   -1.71(0.22)
    a      Slope * age                 -0.01 (0.00)    <.01      -0.01 (0.01)     .60   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01                   -0.01(0.00)
    a      Slope * education            0.01 (0.01)     .11      -0.01 (0.03)     .58    0.01 (0.01)     .10    0.01 (0.01)     .10                    0.00(0.01)
    a      Slope * height              -0.01 (0.00)     .01      -0.79 (0.99)     .43   -0.01 (0.00)     .01   -0.01 (0.00)     .01                   -0.20(0.39)
    a      Slope * smoking             -0.12 (0.04)    <.01      -0.53 (0.51)     .30   -0.12 (0.04)    <.01   -0.12 (0.04)    <.01                   -0.22(0.21)
    a      Slope * cardio               0.01 (0.04)     .81      -0.07 (0.17)     .68    0.01 (0.04)     .84    0.01 (0.04)     .84                   -0.01(0.04)
    a      Slope * diabetes            -0.07 (0.05)     .13      -0.18 (0.19)     .33   -0.07 (0.05)     .13   -0.07 (0.05)     .14                   -0.10(0.06)
    b      Level                        3.22 (0.08)    <.01       8.74 (0.23)    <.01    3.08 (0.08)    <.01    4.23 (0.07)    <.01                           ---
    b      Slope                       -0.14 (0.01)    <.01      -0.19 (0.05)    <.01   -0.10 (0.01)    <.01   -0.10 (0.01)    <.01                           ---
    b      Level * age                  0.00 (0.00)     .99       0.02 (0.01)     .01   -0.06 (0.00)    <.01   -0.05 (0.00)    <.01                           ---
    b      Level * education            0.14 (0.01)    <.01       0.09 (0.02)    <.01    0.16 (0.01)    <.01    0.15 (0.01)    <.01                           ---
    b      Level * height               0.01 (0.00)     .07       0.60 (0.61)     .33    0.02 (0.00)    <.01    0.01 (0.00)    <.01                           ---
    b      Level * smoking              0.02 (0.05)     .71       0.07 (0.21)     .73   -0.01 (0.06)     .85    0.03 (0.05)     .57                           ---
    b      Level * cardio              -0.10 (0.06)     .06       0.06 (0.10)     .51   -0.09 (0.06)     .16   -0.12 (0.06)     .03                           ---
    b      Level * diabetes            -0.06 (0.06)     .35       0.06 (0.11)     .58   -0.16 (0.07)     .02   -0.20 (0.06)    <.01                           ---
    b      Slope * age                 -0.01 (0.00)    <.01       0.02 (0.00)    <.01   -0.00 (0.00)    <.01   -0.00 (0.00)    <.01                           ---
    b      Slope * education            0.00 (0.00)     .25      -0.01 (0.00)     .05    0.00 (0.00)     .23    0.00 (0.00)     .11                           ---
    b      Slope * height               0.00 (0.00)     .88       0.20 (0.22)     .35    0.00 (0.00)     .65    0.00 (0.00)     .96                           ---
    b      Slope * smoking             -0.02 (0.01)     .01      -0.27 (0.06)    <.01   -0.02 (0.01)     .08   -0.02 (0.01)     .04                           ---
    b      Slope * cardio              -0.00 (0.01)     .96       0.00 (0.04)     .88    0.00 (0.01)     .78    0.00 (0.01)     .75                           ---
    b      Slope * diabetes            -0.02 (0.01)     .06      -0.04 (0.04)     .27   -0.00 (0.01)     .68    0.01 (0.01)     .12                           ---
    a      Var (Level)                 41.72 (1.77)    <.01   151.05 (119.20)     .20   41.63 (1.77)    <.01   41.61 (1.77)    <.01                  69.00(54.70)
    a      Var (Slope)                  0.15 (0.04)    <.01       4.29 (3.96)     .28    0.15 (0.04)    <.01    0.15 (0.04)    <.01                    1.18(2.07)
    a      Var (Residual)              16.73 (0.76)    <.01     95.86 (66.72)     .15   16.80 (0.77)    <.01   16.83 (0.78)    <.01                  36.55(39.53)
    b      Var (Level)                  0.67 (0.06)    <.01       0.18 (0.37)     .62    1.16 (0.08)    <.01    0.81 (0.06)    <.01                           ---
    b      Var (Slope)                  0.02 (0.00)    <.01       0.07 (0.01)    <.01    0.00 (0.00)     .36    0.00 (0.00)     .57                           ---
    b      Var (Residual)               1.20 (0.04)    <.01       1.38 (0.18)    <.01    1.53 (0.05)    <.01    1.14 (0.04)    <.01                           ---
    a      Covar (Level, Slope)        -0.57 (0.20)    <.01    -25.30 (25.59)     .32   -0.56 (0.20)    <.01   -0.56 (0.20)    <.01                  -6.75(12.37)
    b      Covar (Level, Slope)        -0.01 (0.01)     .17       0.06 (0.06)     .31    0.01 (0.01)     .24    0.01 (0.01)     .39                           ---
    \      Correlation of Levels                      0.155                     0.128                  0.150                  0.139                    0.14(0.01)
    \      Correlation of Slopes                      0.309                     0.112                  0.289                  0.082                    0.20(0.12)
    \      Correlation of Residuals                  -0.038                    -0.096                  0.028                  0.057                   -0.01(0.07)
    \      N                                          3,288                       507                  3,290                  3,290              2593.75(1391.17)
    \      occasions                                      3                         5                      3                      3                    3.50(1.00)
    \      parameters                                    41                        41                     41                     41                   41.00(0.00)
    \      LL                                       -38,370                    -8,733                -38,552                -37,311   -3.074160e+04(1.468234e+04)
    \      AIC                                       76,822                    17,549                 77,187                 74,704    6.156520e+04(2.936469e+04)
    \      BIC                                       77,072                    17,722                 77,437                 74,954    6.179607e+04(2.940299e+04)

##  serial7 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _serial7_


 process   label                                             a                       aeh                aehplus
---------  -------------------------  ------------------------  ------------------------  ---------------------
   ab      Covar (Levels)                  0.87 (3.47)     .80       0.84 (3.64)     .82    0.82 (0.21)    <.01
   ab      Covar (Slopes)                  0.00 (0.19)     .99       0.01 (0.18)     .97    0.02 (0.01)    <.01
   ab      Covar (Residuals)               0.01 (0.04)     .77       0.01 (0.04)     .81   -0.17 (0.12)     .17
   er      Corr (Levels)                                   ---                       ---    0.15 (0.04)    <.01
   er      Corr (Slopes)                                   ---                       ---    0.30 (0.11)     .01
   er      Corr (Residuals)                                ---                       ---   -0.04 (0.03)     .17
    a      Level                          39.42 (0.53)    <.01      35.24 (1.29)    <.01   38.25 (0.38)    <.01
    a      Slope                          -0.93 (0.07)    <.01      -0.81 (0.22)    <.01   -0.78 (0.06)    <.01
    a      Level * age                    -0.56 (0.08)    <.01      -0.53 (0.08)    <.01   -0.43 (0.01)    <.01
    a      Level * education                               ---      -0.03 (0.17)     .85    0.13 (0.04)    <.01
    a      Level * height                                  ---      26.41 (4.49)    <.01    0.35 (0.02)    <.01
    a      Level * smoking                                 ---                       ---   -0.26 (0.29)     .37
    a      Level * cardio                                  ---                       ---   -1.15 (0.32)    <.01
    a      Level * diabetes                                ---                       ---   -1.59 (0.34)    <.01
    a      Slope * age                    -0.00 (0.02)     .77      -0.01 (0.02)     .69   -0.01 (0.00)    <.01
    a      Slope * education                               ---       0.00 (0.03)     .95    0.01 (0.01)     .11
    a      Slope * height                                  ---      -0.86 (0.88)     .33   -0.01 (0.00)     .01
    a      Slope * smoking                                 ---                       ---   -0.12 (0.04)    <.01
    a      Slope * cardio                                  ---                       ---    0.01 (0.04)     .81
    a      Slope * diabetes                                ---                       ---   -0.07 (0.05)     .13
    b      Level                           4.12 (0.06)    <.01       3.25 (0.21)    <.01    3.22 (0.08)    <.01
    b      Slope                          -0.19 (0.01)    <.01      -0.24 (0.03)    <.01   -0.14 (0.01)    <.01
    b      Level * age                     0.00 (0.01)     .65       0.01 (0.01)     .15    0.00 (0.00)     .99
    b      Level * education                               ---       0.15 (0.02)    <.01    0.14 (0.01)    <.01
    b      Level * height                                  ---      -0.04 (0.82)     .97    0.01 (0.00)     .07
    b      Level * smoking                                 ---                       ---    0.02 (0.05)     .71
    b      Level * cardio                                  ---                       ---   -0.10 (0.06)     .06
    b      Level * diabetes                                ---                       ---   -0.06 (0.06)     .35
    b      Slope * age                    -0.01 (0.00)    <.01      -0.01 (0.00)    <.01   -0.01 (0.00)    <.01
    b      Slope * education                               ---      -0.00 (0.00)     .12    0.00 (0.00)     .25
    b      Slope * height                                  ---       0.48 (0.16)    <.01    0.00 (0.00)     .88
    b      Slope * smoking                                 ---                       ---   -0.02 (0.01)     .01
    b      Slope * cardio                                  ---                       ---   -0.00 (0.01)     .96
    b      Slope * diabetes                                ---                       ---   -0.02 (0.01)     .06
    a      Var (Level)                 207.51 (155.83)     .18   203.75 (155.32)     .19   41.72 (1.77)    <.01
    a      Var (Slope)                     7.33 (5.85)     .21       7.30 (5.84)     .21    0.15 (0.04)    <.01
    a      Var (Residual)                21.25 (14.43)     .14     21.09 (14.30)     .14   16.73 (0.76)    <.01
    b      Var (Level)                     0.02 (1.66)     .99       0.02 (1.86)     .99    0.67 (0.06)    <.01
    b      Var (Slope)                     0.00 (0.23)     .99       0.00 (0.22)     .99    0.02 (0.00)    <.01
    b      Var (Residual)                21.25 (14.43)     .14     21.09 (14.30)     .14    1.20 (0.04)    <.01
    a      Covar (Level, Slope)         -34.92 (31.48)     .27    -34.69 (31.37)     .27   -0.57 (0.20)    <.01
    b      Covar (Level, Slope)           -0.00 (0.64)     .99      -0.00 (0.51)     .99   -0.01 (0.01)     .17
    \      Correlation of Levels                       0.43915                   0.42947                  0.155
    \      Correlation of Slopes                       0.00000                   0.07024                  0.309
    \      Correlation of Residuals                    0.00061                   0.00047                 -0.038
    \      N                                               507                       507                  3,288
    \      occasions                                         5                         5                      3
    \      parameters                                       20                        28                     41
    \      LL                                          -12,435                   -12,412                -38,370
    \      AIC                                          24,910                    24,879                 76,822
    \      BIC                                          24,994                    24,998                 77,072

##  tics 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _tics_


 process   label                                             a                       aeh                   aehplus
---------  -------------------------  ------------------------  ------------------------  ------------------------
   ab      Covar (Levels)                 0.62 (60.56)     .99       0.06 (1.97)     .97       0.67 (1.48)     .65
   ab      Covar (Slopes)                  0.06 (2.00)     .98       0.05 (0.07)     .52       0.06 (0.06)     .31
   ab      Covar (Residuals)              -0.51 (0.52)     .33      -0.30 (0.47)     .52      -1.11 (0.97)     .25
   er      Corr (Levels)                                   ---                       ---                       ---
   er      Corr (Slopes)                                   ---                       ---                       ---
   er      Corr (Residuals)                                ---                       ---                       ---
    a      Level                          39.40 (0.56)    <.01      35.22 (1.31)    <.01      35.26 (1.13)    <.01
    a      Slope                          -0.90 (0.20)    <.01      -0.79 (0.24)    <.01      -0.59 (0.23)     .01
    a      Level * age                    -0.56 (0.08)    <.01      -0.53 (0.08)    <.01      -0.52 (0.05)    <.01
    a      Level * education                               ---      -0.03 (0.17)     .86       0.01 (0.14)     .95
    a      Level * height                                  ---      26.36 (4.51)    <.01      25.69 (4.97)    <.01
    a      Level * smoking                                 ---                       ---       1.02 (2.83)     .72
    a      Level * cardio                                  ---                       ---       0.25 (0.88)     .78
    a      Level * diabetes                                ---                       ---      -2.04 (0.80)     .01
    a      Slope * age                    -0.00 (0.02)     .84      -0.01 (0.02)     .71      -0.01 (0.01)     .60
    a      Slope * education                               ---       0.00 (0.03)     .99      -0.01 (0.03)     .58
    a      Slope * height                                  ---      -0.81 (0.87)     .36      -0.79 (0.99)     .43
    a      Slope * smoking                                 ---                       ---      -0.53 (0.51)     .30
    a      Slope * cardio                                  ---                       ---      -0.07 (0.17)     .68
    a      Slope * diabetes                                ---                       ---      -0.18 (0.19)     .33
    b      Level                           9.42 (0.26)    <.01       8.79 (0.21)    <.01       8.74 (0.23)    <.01
    b      Slope                          -0.22 (0.03)    <.01      -0.22 (0.06)    <.01      -0.19 (0.05)    <.01
    b      Level * age                    -0.00 (0.03)     .88       0.00 (0.02)     .99       0.02 (0.01)     .01
    b      Level * education                               ---       0.09 (0.02)    <.01       0.09 (0.02)    <.01
    b      Level * height                                  ---       0.59 (0.73)     .41       0.60 (0.61)     .33
    b      Level * smoking                                 ---                       ---       0.07 (0.21)     .73
    b      Level * cardio                                  ---                       ---       0.06 (0.10)     .51
    b      Level * diabetes                                ---                       ---       0.06 (0.11)     .58
    b      Slope * age                     0.03 (0.01)    <.01       0.03 (0.00)    <.01       0.02 (0.00)    <.01
    b      Slope * education                               ---      -0.01 (0.01)     .37      -0.01 (0.00)     .05
    b      Slope * height                                  ---       0.23 (0.27)     .39       0.20 (0.22)     .35
    b      Slope * smoking                                 ---                       ---      -0.27 (0.06)    <.01
    b      Slope * cardio                                  ---                       ---       0.00 (0.04)     .88
    b      Slope * diabetes                                ---                       ---      -0.04 (0.04)     .27
    a      Var (Level)                 203.53 (153.38)     .18   199.66 (152.76)     .19   151.05 (119.20)     .20
    a      Var (Slope)                     7.03 (5.70)     .22       6.99 (5.68)     .22       4.29 (3.96)     .28
    a      Var (Residual)                27.27 (18.42)     .14     27.23 (18.37)     .14     95.86 (66.72)     .15
    b      Var (Level)                     0.02 (2.86)     .99       0.02 (2.85)     .99       0.18 (0.37)     .62
    b      Var (Slope)                     0.00 (0.29)     .99       0.00 (0.24)     .99       0.07 (0.01)    <.01
    b      Var (Residual)                27.27 (18.42)     .14     27.23 (18.37)     .14       1.38 (0.18)    <.01
    a      Covar (Level, Slope)         -34.27 (30.96)     .27    -34.01 (30.83)     .27    -25.30 (25.59)     .32
    b      Covar (Level, Slope)           -0.00 (0.66)     .99      -0.00 (0.46)     .99       0.06 (0.06)     .31
    \      Correlation of Levels                         0.279                     0.031                     0.128
    \      Correlation of Slopes                         0.472                     0.389                     0.112
    \      Correlation of Residuals                     -0.019                    -0.011                    -0.096
    \      N                                               507                       507                       507
    \      occasions                                         5                         5                         5
    \      parameters                                       20                        28                        41
    \      LL                                          -10,653                   -10,640                    -8,733
    \      AIC                                          21,346                    21,336                    17,549
    \      BIC                                          21,431                    21,454                    17,722

##  word_de 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _word_de_


 process   label                                             a                       aeh                aehplus
---------  -------------------------  ------------------------  ------------------------  ---------------------
   ab      Covar (Levels)                  0.28 (7.56)     .97      -0.01 (6.55)     .99    1.04 (0.23)    <.01
   ab      Covar (Slopes)                 -0.00 (0.23)     .99      -0.01 (0.22)     .98    0.00 (0.01)     .39
   ab      Covar (Residuals)              -0.50 (0.31)     .11      -0.50 (0.31)     .11    0.14 (0.12)     .22
   er      Corr (Levels)                                   ---                       ---    0.15 (0.03)    <.01
   er      Corr (Slopes)                                   ---                       ---    0.28 (0.35)     .42
   er      Corr (Residuals)                                ---                       ---    0.03 (0.02)     .22
    a      Level                          39.41 (0.55)    <.01      35.23 (1.30)    <.01   38.25 (0.38)    <.01
    a      Slope                          -0.91 (0.07)    <.01      -0.80 (0.23)    <.01   -0.77 (0.06)    <.01
    a      Level * age                    -0.56 (0.08)    <.01      -0.53 (0.08)    <.01   -0.43 (0.01)    <.01
    a      Level * education                               ---      -0.03 (0.17)     .86    0.13 (0.04)    <.01
    a      Level * height                                  ---      26.39 (4.49)    <.01    0.35 (0.02)    <.01
    a      Level * smoking                                 ---                       ---   -0.26 (0.29)     .37
    a      Level * cardio                                  ---                       ---   -1.14 (0.32)    <.01
    a      Level * diabetes                                ---                       ---   -1.59 (0.34)    <.01
    a      Slope * age                    -0.00 (0.02)     .79      -0.01 (0.02)     .70   -0.01 (0.00)    <.01
    a      Slope * education                               ---       0.00 (0.03)     .96    0.01 (0.01)     .10
    a      Slope * height                                  ---      -0.85 (0.87)     .33   -0.01 (0.00)     .01
    a      Slope * smoking                                 ---                       ---   -0.12 (0.04)    <.01
    a      Slope * cardio                                  ---                       ---    0.01 (0.04)     .84
    a      Slope * diabetes                                ---                       ---   -0.07 (0.05)     .13
    b      Level                           4.02 (0.07)    <.01       2.75 (0.19)    <.01    3.08 (0.08)    <.01
    b      Slope                          -0.07 (0.02)    <.01      -0.05 (0.03)     .14   -0.10 (0.01)    <.01
    b      Level * age                    -0.06 (0.01)    <.01      -0.05 (0.01)    <.01   -0.06 (0.00)    <.01
    b      Level * education                               ---       0.16 (0.02)    <.01    0.16 (0.01)    <.01
    b      Level * height                                  ---       1.88 (0.82)     .02    0.02 (0.00)    <.01
    b      Level * smoking                                 ---                       ---   -0.01 (0.06)     .85
    b      Level * cardio                                  ---                       ---   -0.09 (0.06)     .16
    b      Level * diabetes                                ---                       ---   -0.16 (0.07)     .02
    b      Slope * age                    -0.00 (0.00)     .02      -0.00 (0.00)     .02   -0.00 (0.00)    <.01
    b      Slope * education                               ---      -0.00 (0.00)     .75    0.00 (0.00)     .23
    b      Slope * height                                  ---      -0.13 (0.16)     .43    0.00 (0.00)     .65
    b      Slope * smoking                                 ---                       ---   -0.02 (0.01)     .08
    b      Slope * cardio                                  ---                       ---    0.00 (0.01)     .78
    b      Slope * diabetes                                ---                       ---   -0.00 (0.01)     .68
    a      Var (Level)                 205.99 (155.15)     .18   202.26 (154.66)     .19   41.63 (1.77)    <.01
    a      Var (Slope)                     7.21 (5.81)     .21       7.18 (5.80)     .22    0.15 (0.04)    <.01
    a      Var (Residual)                23.60 (15.71)     .13     23.37 (15.50)     .13   16.80 (0.77)    <.01
    b      Var (Level)                     0.02 (2.08)     .99       0.02 (2.16)     .99    1.16 (0.08)    <.01
    b      Var (Slope)                     0.00 (0.24)     .99       0.00 (0.22)     .99    0.00 (0.00)     .36
    b      Var (Residual)                23.60 (15.71)     .13     23.37 (15.50)     .13    1.53 (0.05)    <.01
    a      Covar (Level, Slope)         -34.68 (31.30)     .27    -34.45 (31.20)     .27   -0.56 (0.20)    <.01
    b      Covar (Level, Slope)           -0.00 (0.50)     .99      -0.00 (0.45)     .99    0.01 (0.01)     .24
    \      Correlation of Levels                         0.123                   -0.0044                  0.150
    \      Correlation of Slopes                        -0.047                   -0.0708                  0.289
    \      Correlation of Residuals                     -0.021                   -0.0213                  0.028
    \      N                                               507                       507                  3,290
    \      occasions                                         5                         5                      3
    \      parameters                                       20                        28                     41
    \      LL                                          -11,507                   -11,483                -38,552
    \      AIC                                          23,055                    23,022                 77,187
    \      BIC                                          23,139                    23,140                 77,437

##  word_im 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _word_im_


 process   label                                             a                       aeh                aehplus
---------  -------------------------  ------------------------  ------------------------  ---------------------
   ab      Covar (Levels)                 -0.30 (8.22)     .97      -0.53 (7.08)     .94    0.81 (0.20)    <.01
   ab      Covar (Slopes)                 -0.02 (0.21)     .91      -0.02 (0.20)     .90    0.00 (0.00)     .85
   ab      Covar (Residuals)              -0.46 (0.28)     .10      -0.46 (0.29)     .11    0.25 (0.10)     .01
   er      Corr (Levels)                                   ---                       ---    0.14 (0.03)    <.01
   er      Corr (Slopes)                                   ---                       ---    0.08 (0.40)     .84
   er      Corr (Residuals)                                ---                       ---    0.06 (0.02)     .01
    a      Level                          39.41 (0.55)    <.01      35.23 (1.30)    <.01   38.24 (0.38)    <.01
    a      Slope                          -0.91 (0.07)    <.01      -0.80 (0.23)    <.01   -0.77 (0.06)    <.01
    a      Level * age                    -0.56 (0.08)    <.01      -0.53 (0.08)    <.01   -0.43 (0.01)    <.01
    a      Level * education                               ---      -0.03 (0.17)     .85    0.13 (0.04)    <.01
    a      Level * height                                  ---      26.40 (4.49)    <.01    0.35 (0.02)    <.01
    a      Level * smoking                                 ---                       ---   -0.26 (0.29)     .38
    a      Level * cardio                                  ---                       ---   -1.14 (0.32)    <.01
    a      Level * diabetes                                ---                       ---   -1.60 (0.34)    <.01
    a      Slope * age                    -0.00 (0.02)     .79      -0.01 (0.02)     .70   -0.01 (0.00)    <.01
    a      Slope * education                               ---       0.00 (0.03)     .95    0.01 (0.01)     .10
    a      Slope * height                                  ---      -0.85 (0.87)     .33   -0.01 (0.00)     .01
    a      Slope * smoking                                 ---                       ---   -0.12 (0.04)    <.01
    a      Slope * cardio                                  ---                       ---    0.01 (0.04)     .84
    a      Slope * diabetes                                ---                       ---   -0.07 (0.05)     .14
    b      Level                           5.18 (0.06)    <.01       4.14 (0.17)    <.01    4.23 (0.07)    <.01
    b      Slope                          -0.09 (0.02)    <.01      -0.10 (0.03)    <.01   -0.10 (0.01)    <.01
    b      Level * age                    -0.05 (0.00)    <.01      -0.05 (0.00)    <.01   -0.05 (0.00)    <.01
    b      Level * education                               ---       0.14 (0.02)    <.01    0.15 (0.01)    <.01
    b      Level * height                                  ---       1.50 (0.77)     .05    0.01 (0.00)    <.01
    b      Level * smoking                                 ---                       ---    0.03 (0.05)     .57
    b      Level * cardio                                  ---                       ---   -0.12 (0.06)     .03
    b      Level * diabetes                                ---                       ---   -0.20 (0.06)    <.01
    b      Slope * age                    -0.00 (0.00)     .01      -0.00 (0.00)     .01   -0.00 (0.00)    <.01
    b      Slope * education                               ---       0.00 (0.00)     .38    0.00 (0.00)     .11
    b      Slope * height                                  ---      -0.05 (0.14)     .74    0.00 (0.00)     .96
    b      Slope * smoking                                 ---                       ---   -0.02 (0.01)     .04
    b      Slope * cardio                                  ---                       ---    0.00 (0.01)     .75
    b      Slope * diabetes                                ---                       ---    0.01 (0.01)     .12
    a      Var (Level)                 206.43 (155.43)     .18   202.67 (154.91)     .19   41.61 (1.77)    <.01
    a      Var (Slope)                     7.25 (5.82)     .21       7.21 (5.81)     .21    0.15 (0.04)    <.01
    a      Var (Residual)                22.91 (15.27)     .13     22.72 (15.09)     .13   16.83 (0.78)    <.01
    b      Var (Level)                     0.02 (2.24)     .99       0.02 (2.25)     .99    0.81 (0.06)    <.01
    b      Var (Slope)                     0.00 (0.21)     .99       0.00 (0.20)     .99    0.00 (0.00)     .57
    b      Var (Residual)                22.91 (15.27)     .13     22.72 (15.09)     .13    1.14 (0.04)    <.01
    a      Covar (Level, Slope)         -34.75 (31.34)     .27    -34.51 (31.24)     .27   -0.56 (0.20)    <.01
    b      Covar (Level, Slope)           -0.00 (0.42)     .99      -0.00 (0.39)     .99    0.01 (0.01)     .39
    \      Correlation of Levels                         -0.13                     -0.25                  0.139
    \      Correlation of Slopes                         -0.26                     -0.28                  0.082
    \      Correlation of Residuals                      -0.02                     -0.02                  0.057
    \      N                                               507                       507                  3,290
    \      occasions                                         5                         5                      3
    \      parameters                                       20                        28                     41
    \      LL                                          -11,480                   -11,458                -37,311
    \      AIC                                          23,000                    22,972                 74,704
    \      BIC                                          23,085                    23,090                 74,954

## Summary 

 Study = _HRS_; Gender = _male_; Process (a) = _grip_

 Computed correlations:

 

label                    process_b       a     aeh   aehplus
----------------------  ----------  ------  ------  --------
Correlation of Levels      serial7    0.44    0.43      0.16
Correlation of Levels         tics    0.28    0.03      0.13
Correlation of Levels      word_de    0.12   -0.00      0.15
Correlation of Levels      word_im   -0.13   -0.25      0.14




label                    process_b       a     aeh   aehplus
----------------------  ----------  ------  ------  --------
Correlation of Slopes      serial7    0.00    0.07      0.31
Correlation of Slopes         tics    0.47    0.39      0.11
Correlation of Slopes      word_de   -0.05   -0.07      0.29
Correlation of Slopes      word_im   -0.26   -0.28      0.08




label                       process_b       a     aeh   aehplus
-------------------------  ----------  ------  ------  --------
Correlation of Residuals      serial7    0.00    0.00     -0.04
Correlation of Residuals         tics   -0.02   -0.01     -0.10
Correlation of Residuals      word_de   -0.02   -0.02      0.03
Correlation of Residuals      word_im   -0.02   -0.02      0.06



P-values for corresponding covariances: 

 

label                   process_b      a    aeh   aehplus
---------------------  ----------  -----  -----  --------
Covariance of Levels      serial7   0.80   0.82      0.00
Covariance of Levels         tics   0.99   0.97      0.65
Covariance of Levels      word_de   0.97   1.00      0.00
Covariance of Levels      word_im   0.97   0.94      0.00




label                   process_b      a    aeh   aehplus
---------------------  ----------  -----  -----  --------
Covariance of Slopes      serial7   1.00   0.97      0.00
Covariance of Slopes         tics   0.98   0.52      0.31
Covariance of Slopes      word_de   0.99   0.98      0.39
Covariance of Slopes      word_im   0.91   0.90      0.85




label                       process_b      a    aeh   aehplus
-------------------------  ----------  -----  -----  --------
Covariance of  Residuals      serial7   0.77   0.81      0.17
Covariance of  Residuals         tics   0.33   0.52      0.25
Covariance of  Residuals      word_de   0.11   0.11      0.22
Covariance of  Residuals      word_im   0.10   0.11      0.01


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
