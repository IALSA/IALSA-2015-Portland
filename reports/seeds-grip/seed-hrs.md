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


 process   label                                      serial7                     tics                  word_de                  word_im             mean(sd)
---------  -------------------------  -----------------------  -----------------------  -----------------------  -----------------------  -------------------
    a      Level                         23.62 (0.89)    <.01     23.66 (0.89)    <.01     23.63 (0.90)    <.01     23.62 (0.89)    <.01          23.63(0.02)
    a      Slope                         -0.25 (0.19)     .19     -0.27 (0.18)     .14     -0.25 (0.19)     .19     -0.25 (0.19)     .19          -0.25(0.01)
    a      Level * age                   -0.29 (0.07)    <.01     -0.29 (0.07)    <.01     -0.29 (0.07)    <.01     -0.29 (0.07)    <.01          -0.29(0.00)
    a      Level * education              0.22 (0.18)     .23      0.22 (0.18)     .23      0.22 (0.18)     .23      0.22 (0.18)     .23           0.22(0.00)
    a      Level * height                 9.89 (6.14)     .11      9.91 (6.12)     .10      9.90 (6.14)     .11      9.91 (6.14)     .11           9.90(0.01)
    a      Level * smoking               -1.99 (1.07)     .06     -2.01 (1.07)     .06     -2.00 (1.07)     .06     -1.99 (1.07)     .06          -2.00(0.01)
    a      Level * cardio                -1.77 (0.74)     .02     -1.77 (0.74)     .02     -1.78 (0.74)     .02     -1.78 (0.74)     .02          -1.77(0.01)
    a      Level * diabetes              -1.13 (0.69)     .10     -1.17 (0.70)     .10     -1.13 (0.70)     .10     -1.13 (0.70)     .10          -1.14(0.02)
    a      Slope * age                    0.00 (0.01)     .96      0.00 (0.02)     .90      0.00 (0.01)     .94      0.00 (0.01)     .96           0.00(0.00)
    a      Slope * education             -0.06 (0.04)     .17     -0.05 (0.04)     .17     -0.05 (0.04)     .16     -0.05 (0.04)     .15          -0.05(0.00)
    a      Slope * height                 1.84 (1.30)     .16      1.83 (1.26)     .15      1.83 (1.28)     .15      1.82 (1.28)     .15           1.83(0.01)
    a      Slope * smoking                0.10 (0.23)     .66      0.12 (0.23)     .59      0.11 (0.22)     .61      0.10 (0.22)     .63           0.11(0.01)
    a      Slope * cardio                -0.04 (0.16)     .83     -0.03 (0.16)     .84     -0.02 (0.16)     .90     -0.02 (0.16)     .91          -0.03(0.01)
    a      Slope * diabetes               0.03 (0.15)     .84      0.05 (0.15)     .72      0.03 (0.15)     .86      0.03 (0.15)     .83           0.04(0.01)
    b      Level                          2.24 (0.15)    <.01      8.02 (0.28)    <.01      3.69 (0.14)    <.01      4.83 (0.12)    <.01                  ---
    b      Slope                         -0.07 (0.02)    <.01     -0.08 (0.05)     .11     -0.03 (0.02)     .17     -0.08 (0.02)    <.01                  ---
    b      Level * age                   -0.00 (0.01)     .81      0.05 (0.02)    <.01     -0.06 (0.01)    <.01     -0.05 (0.00)    <.01                  ---
    b      Level * education              0.22 (0.02)    <.01      0.15 (0.03)    <.01      0.15 (0.02)    <.01      0.14 (0.02)    <.01                  ---
    b      Level * height                 0.68 (0.97)     .49      0.89 (1.27)     .48      1.22 (0.98)     .21      1.00 (0.77)     .20                  ---
    b      Level * smoking                0.34 (0.18)     .06      1.05 (0.36)    <.01      0.20 (0.19)     .28      0.05 (0.15)     .76                  ---
    b      Level * cardio                -0.23 (0.16)     .15     -0.33 (0.21)     .12     -0.49 (0.16)    <.01     -0.34 (0.13)     .01                  ---
    b      Level * diabetes               0.20 (0.17)     .22      0.11 (0.22)     .61     -0.23 (0.17)     .17     -0.09 (0.13)     .48                  ---
    b      Slope * age                   -0.01 (0.00)    <.01      0.01 (0.00)    <.01     -0.01 (0.00)    <.01     -0.00 (0.00)    <.01                  ---
    b      Slope * education             -0.01 (0.00)    <.01     -0.02 (0.01)     .01     -0.01 (0.00)     .06     -0.00 (0.00)     .87                  ---
    b      Slope * height                 0.20 (0.13)     .13      0.19 (0.27)     .48     -0.08 (0.17)     .61      0.04 (0.14)     .78                  ---
    b      Slope * smoking               -0.10 (0.03)    <.01     -0.23 (0.08)    <.01     -0.09 (0.03)    <.01     -0.04 (0.03)     .09                  ---
    b      Slope * cardio                -0.03 (0.02)     .26     -0.03 (0.05)     .55      0.02 (0.03)     .52      0.00 (0.02)     .84                  ---
    b      Slope * diabetes              -0.04 (0.03)     .15      0.06 (0.04)     .19     -0.04 (0.03)     .23     -0.03 (0.02)     .19                  ---
    a      Var (Level)                 101.89 (52.04)     .05   102.03 (52.10)     .05   102.06 (52.09)     .05   102.05 (52.16)     .05         102.01(0.08)
    a      Var (Slope)                    3.50 (2.11)     .10      3.52 (2.11)     .10      3.52 (2.12)     .10      3.52 (2.13)     .10           3.52(0.01)
    a      Var (Residual)               57.65 (23.67)     .01    57.63 (23.67)     .01    57.44 (23.58)     .01    57.42 (23.54)     .01          57.54(0.12)
    a      Covar (Level, Slope)        -18.83 (11.44)     .10   -18.89 (11.44)     .10   -18.89 (11.43)     .10   -18.88 (11.45)     .10         -18.87(0.03)
    b      Var (Level)                    1.48 (0.12)    <.01      2.33 (0.94)     .01      1.35 (0.17)    <.01      0.76 (0.11)    <.01                  ---
    b      Var (Slope)                    0.02 (0.00)    <.01      0.12 (0.02)    <.01      0.01 (0.00)     .08      0.00 (0.00)     .25                  ---
    b      Var (Residual)                 1.25 (0.06)    <.01      1.79 (0.20)    <.01      1.79 (0.08)    <.01      1.38 (0.06)    <.01                  ---
    b      Covar (Level, Slope)          -0.05 (0.01)    <.01     -0.15 (0.14)     .27     -0.00 (0.02)     .87      0.00 (0.01)     .79                  ---
   ab      Covar (Levels)                 0.37 (0.37)     .33      2.48 (1.40)     .08      0.80 (0.44)     .07      0.79 (0.65)     .22                  ---
   ab      Covar (Slopes)                -0.03 (0.04)     .41      0.10 (0.06)     .08      0.02 (0.02)     .38      0.02 (0.03)     .45                  ---
   ab      Covar (Residuals)             -0.01 (0.32)     .96     -0.40 (0.46)     .39     -0.06 (0.23)     .80      0.03 (0.26)     .92                  ---
    \      Correlation of Levels                       0.0298                    0.161                   0.0682                    0.090           0.09(0.06)
    \      Correlation of Slopes                      -0.1070                    0.158                   0.1401                    0.204           0.10(0.14)
    \      Correlation of Residuals                   -0.0018                   -0.039                  -0.0058                    0.003          -0.01(0.02)
    \      N                                              641                      641                      641                      641         641.00(0.00)
    \      occasions                                        5                        5                        5                        5           5.00(0.00)
    \      parameters                                      41                       41                       41                       41          41.00(0.00)
    \      LL                                         -12,074                  -11,072                  -11,728                  -11,289   -1.154055e+04(448)
    \      AIC                                         24,230                   22,225                   23,538                   22,659    2.316310e+04(897)
    \      BIC                                         24,413                   22,408                   23,721                   22,842    2.334608e+04(897)

##  serial7 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _serial7_


 process   label                                            a                      aeh                  aehplus
---------  -------------------------  -----------------------  -----------------------  -----------------------
    a      Level                         24.15 (0.47)    <.01     22.57 (0.89)    <.01     23.62 (0.89)    <.01
    a      Slope                         -0.52 (0.10)    <.01     -0.26 (0.19)     .16     -0.25 (0.19)     .19
    a      Level * age                   -0.31 (0.06)    <.01     -0.29 (0.06)    <.01     -0.29 (0.07)    <.01
    a      Level * education                              ---      0.26 (0.19)     .17      0.22 (0.18)     .23
    a      Level * height                                 ---     10.46 (6.05)     .08      9.89 (6.14)     .11
    a      Level * smoking                                ---                      ---     -1.99 (1.07)     .06
    a      Level * cardio                                 ---                      ---     -1.77 (0.74)     .02
    a      Level * diabetes                               ---                      ---     -1.13 (0.69)     .10
    a      Slope * age                    0.00 (0.01)     .97      0.00 (0.01)     .96      0.00 (0.01)     .96
    a      Slope * education                              ---     -0.05 (0.04)     .25     -0.06 (0.04)     .17
    a      Slope * height                                 ---      1.67 (1.29)     .20      1.84 (1.30)     .16
    a      Slope * smoking                                ---                      ---      0.10 (0.23)     .66
    a      Slope * cardio                                 ---                      ---     -0.04 (0.16)     .83
    a      Slope * diabetes                               ---                      ---      0.03 (0.15)     .84
    b      Level                          3.54 (0.06)    <.01      2.28 (0.14)    <.01      2.24 (0.15)    <.01
    b      Slope                         -0.15 (0.01)    <.01     -0.11 (0.02)    <.01     -0.07 (0.02)    <.01
    b      Level * age                   -0.01 (0.00)     .02     -0.01 (0.00)     .28     -0.00 (0.01)     .81
    b      Level * education                              ---      0.22 (0.02)    <.01      0.22 (0.02)    <.01
    b      Level * height                                 ---      0.57 (0.97)     .56      0.68 (0.97)     .49
    b      Level * smoking                                ---                      ---      0.34 (0.18)     .06
    b      Level * cardio                                 ---                      ---     -0.23 (0.16)     .15
    b      Level * diabetes                               ---                      ---      0.20 (0.17)     .22
    b      Slope * age                   -0.01 (0.00)    <.01     -0.01 (0.00)    <.01     -0.01 (0.00)    <.01
    b      Slope * education                              ---     -0.01 (0.00)     .01     -0.01 (0.00)    <.01
    b      Slope * height                                 ---      0.22 (0.14)     .10      0.20 (0.13)     .13
    b      Slope * smoking                                ---                      ---     -0.10 (0.03)    <.01
    b      Slope * cardio                                 ---                      ---     -0.03 (0.02)     .26
    b      Slope * diabetes                               ---                      ---     -0.04 (0.03)     .15
    a      Var (Level)                 134.49 (64.90)     .04   133.37 (64.77)     .04   101.89 (52.04)     .05
    a      Var (Slope)                    5.08 (2.55)     .05      5.04 (2.53)     .05      3.50 (2.11)     .10
    a      Var (Residual)                15.01 (6.26)     .02     14.78 (6.17)     .02    57.65 (23.67)     .01
    a      Covar (Level, Slope)        -24.64 (13.27)     .06   -24.58 (13.19)     .06   -18.83 (11.44)     .10
    b      Var (Level)                    0.04 (0.56)     .94      0.02 (0.74)     .97      1.48 (0.12)    <.01
    b      Var (Slope)                    0.00 (0.12)     .99      0.00 (0.10)     .99      0.02 (0.00)    <.01
    b      Var (Residual)                15.01 (6.26)     .02     14.78 (6.17)     .02      1.25 (0.06)    <.01
    b      Covar (Level, Slope)           0.00 (0.11)     .99      0.00 (0.10)     .99     -0.05 (0.01)    <.01
   ab      Covar (Levels)                 0.90 (1.81)     .62      0.36 (1.52)     .81      0.37 (0.37)     .33
   ab      Covar (Slopes)                -0.04 (0.14)     .80     -0.04 (0.12)     .76     -0.03 (0.04)     .41
   ab      Covar (Residuals)              0.01 (0.10)     .93      0.01 (0.09)     .95     -0.01 (0.32)     .96
    \      Correlation of Levels                      0.36833                  0.20010                   0.0298
    \      Correlation of Slopes                     -0.49116                 -0.52102                  -0.1070
    \      Correlation of Residuals                   0.00053                  0.00041                  -0.0018
    \      N                                              641                      641                      641
    \      occasions                                        5                        5                        5
    \      parameters                                      20                       28                       41
    \      LL                                         -14,756                  -14,707                  -12,074
    \      AIC                                         29,552                   29,470                   24,230
    \      BIC                                         29,641                   29,595                   24,413

##  tics 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _tics_


 process   label                                            a                      aeh                  aehplus
---------  -------------------------  -----------------------  -----------------------  -----------------------
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
    a      Covar (Level, Slope)        -23.92 (13.01)     .07   -23.82 (12.91)     .06   -18.89 (11.44)     .10
    b      Var (Level)                    0.04 (0.89)     .96      0.04 (0.91)     .97      2.33 (0.94)     .01
    b      Var (Slope)                    0.00 (0.17)     .99      0.00 (0.17)     .99      0.12 (0.02)    <.01
    b      Var (Residual)                20.58 (8.54)     .02     20.52 (8.52)     .02      1.79 (0.20)    <.01
    b      Covar (Level, Slope)          -0.01 (0.29)     .98     -0.00 (0.28)     .99     -0.15 (0.14)     .27
   ab      Covar (Levels)                 1.67 (0.29)    <.01      1.26 (0.20)    <.01      2.48 (1.40)     .08
   ab      Covar (Slopes)                 0.07 (0.13)     .59      0.06 (0.11)     .58      0.10 (0.06)     .08
   ab      Covar (Residuals)              0.29 (0.35)     .41      0.25 (0.32)     .43     -0.40 (0.46)     .39
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


 process   label                                            a                      aeh                  aehplus
---------  -------------------------  -----------------------  -----------------------  -----------------------
    a      Level                         24.14 (0.46)    <.01     22.56 (0.89)    <.01     23.63 (0.90)    <.01
    a      Slope                         -0.51 (0.08)    <.01     -0.25 (0.19)     .18     -0.25 (0.19)     .19
    a      Level * age                   -0.31 (0.06)    <.01     -0.29 (0.06)    <.01     -0.29 (0.07)    <.01
    a      Level * education                              ---      0.26 (0.19)     .17      0.22 (0.18)     .23
    a      Level * height                                 ---     10.45 (6.05)     .08      9.90 (6.14)     .11
    a      Level * smoking                                ---                      ---     -2.00 (1.07)     .06
    a      Level * cardio                                 ---                      ---     -1.78 (0.74)     .02
    a      Level * diabetes                               ---                      ---     -1.13 (0.70)     .10
    a      Slope * age                    0.00 (0.01)     .93      0.00 (0.01)     .94      0.00 (0.01)     .94
    a      Slope * education                              ---     -0.05 (0.04)     .23     -0.05 (0.04)     .16
    a      Slope * height                                 ---      1.67 (1.27)     .19      1.83 (1.28)     .15
    a      Slope * smoking                                ---                      ---      0.11 (0.22)     .61
    a      Slope * cardio                                 ---                      ---     -0.02 (0.16)     .90
    a      Slope * diabetes                               ---                      ---      0.03 (0.15)     .86
    b      Level                          4.43 (0.07)    <.01      3.52 (0.13)    <.01      3.69 (0.14)    <.01
    b      Slope                         -0.06 (0.03)     .05     -0.04 (0.02)     .10     -0.03 (0.02)     .17
    b      Level * age                   -0.07 (0.01)    <.01     -0.07 (0.01)    <.01     -0.06 (0.01)    <.01
    b      Level * education                              ---      0.16 (0.02)    <.01      0.15 (0.02)    <.01
    b      Level * height                                 ---      1.39 (0.98)     .16      1.22 (0.98)     .21
    b      Level * smoking                                ---                      ---      0.20 (0.19)     .28
    b      Level * cardio                                 ---                      ---     -0.49 (0.16)    <.01
    b      Level * diabetes                               ---                      ---     -0.23 (0.17)     .17
    b      Slope * age                   -0.00 (0.00)     .18     -0.00 (0.00)    <.01     -0.01 (0.00)    <.01
    b      Slope * education                              ---     -0.00 (0.00)     .31     -0.01 (0.00)     .06
    b      Slope * height                                 ---     -0.14 (0.18)     .42     -0.08 (0.17)     .61
    b      Slope * smoking                                ---                      ---     -0.09 (0.03)    <.01
    b      Slope * cardio                                 ---                      ---      0.02 (0.03)     .52
    b      Slope * diabetes                               ---                      ---     -0.04 (0.03)     .23
    a      Var (Level)                 133.50 (64.62)     .04   132.29 (64.43)     .04   102.06 (52.09)     .05
    a      Var (Slope)                    5.01 (2.53)     .05      4.97 (2.53)     .05      3.52 (2.12)     .10
    a      Var (Residual)                16.46 (6.86)     .02     16.34 (6.46)     .01    57.44 (23.58)     .01
    a      Covar (Level, Slope)        -24.47 (13.23)     .06   -24.39 (13.15)     .06   -18.89 (11.43)     .10
    b      Var (Level)                    0.07 (1.75)     .97      0.05 (0.32)     .87      1.35 (0.17)    <.01
    b      Var (Slope)                    0.00 (0.07)     .99      0.00 (0.13)     .99      0.01 (0.00)     .08
    b      Var (Residual)                16.46 (6.86)     .02     16.34 (6.46)     .01      1.79 (0.08)    <.01
    b      Covar (Level, Slope)          -0.00 (0.66)     .99     -0.00 (0.48)     .99     -0.00 (0.02)     .87
   ab      Covar (Levels)                 1.35 (1.71)     .43      0.92 (1.44)     .52      0.80 (0.44)     .07
   ab      Covar (Slopes)                 0.02 (0.17)     .89      0.02 (0.09)     .82      0.02 (0.02)     .38
   ab      Covar (Residuals)              0.11 (0.08)     .17      0.09 (0.06)     .13     -0.06 (0.23)     .80
    \      Correlation of Levels                       0.4324                   0.3523                   0.0682
    \      Correlation of Slopes                       0.3248                   0.3121                   0.1401
    \      Correlation of Residuals                    0.0065                   0.0057                  -0.0058
    \      N                                              641                      641                      641
    \      occasions                                        5                        5                        5
    \      parameters                                      20                       28                       41
    \      LL                                         -13,872                  -13,841                  -11,728
    \      AIC                                         27,785                   27,738                   23,538
    \      BIC                                         27,874                   27,863                   23,721

##  word_im 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _word_im_


 process   label                                            a                      aeh                  aehplus
---------  -------------------------  -----------------------  -----------------------  -----------------------
    a      Level                         24.14 (0.46)    <.01     22.56 (0.89)    <.01     23.62 (0.89)    <.01
    a      Slope                         -0.51 (0.08)    <.01     -0.26 (0.19)     .18     -0.25 (0.19)     .19
    a      Level * age                   -0.31 (0.06)    <.01     -0.29 (0.06)    <.01     -0.29 (0.07)    <.01
    a      Level * education                              ---      0.26 (0.19)     .17      0.22 (0.18)     .23
    a      Level * height                                 ---     10.46 (6.05)     .08      9.91 (6.14)     .11
    a      Level * smoking                                ---                      ---     -1.99 (1.07)     .06
    a      Level * cardio                                 ---                      ---     -1.78 (0.74)     .02
    a      Level * diabetes                               ---                      ---     -1.13 (0.70)     .10
    a      Slope * age                    0.00 (0.01)     .93      0.00 (0.01)     .94      0.00 (0.01)     .96
    a      Slope * education                              ---     -0.05 (0.04)     .23     -0.05 (0.04)     .15
    a      Slope * height                                 ---      1.66 (1.26)     .19      1.82 (1.28)     .15
    a      Slope * smoking                                ---                      ---      0.10 (0.22)     .63
    a      Slope * cardio                                 ---                      ---     -0.02 (0.16)     .91
    a      Slope * diabetes                               ---                      ---      0.03 (0.15)     .83
    b      Level                          5.57 (0.05)    <.01      4.72 (0.10)    <.01      4.83 (0.12)    <.01
    b      Slope                         -0.08 (0.01)    <.01     -0.08 (0.02)    <.01     -0.08 (0.02)    <.01
    b      Level * age                   -0.06 (0.00)    <.01     -0.05 (0.00)    <.01     -0.05 (0.00)    <.01
    b      Level * education                              ---      0.15 (0.02)    <.01      0.14 (0.02)    <.01
    b      Level * height                                 ---      1.08 (0.77)     .16      1.00 (0.77)     .20
    b      Level * smoking                                ---                      ---      0.05 (0.15)     .76
    b      Level * cardio                                 ---                      ---     -0.34 (0.13)     .01
    b      Level * diabetes                               ---                      ---     -0.09 (0.13)     .48
    b      Slope * age                   -0.00 (0.00)    <.01     -0.00 (0.00)    <.01     -0.00 (0.00)    <.01
    b      Slope * education                              ---      0.00 (0.00)     .78     -0.00 (0.00)     .87
    b      Slope * height                                 ---      0.03 (0.14)     .86      0.04 (0.14)     .78
    b      Slope * smoking                                ---                      ---     -0.04 (0.03)     .09
    b      Slope * cardio                                 ---                      ---      0.00 (0.02)     .84
    b      Slope * diabetes                               ---                      ---     -0.03 (0.02)     .19
    a      Var (Level)                 134.08 (64.87)     .04   132.89 (64.69)     .04   102.05 (52.16)     .05
    a      Var (Slope)                    5.05 (2.56)     .05      5.01 (2.54)     .05      3.52 (2.13)     .10
    a      Var (Residual)                15.64 (6.37)     .01     15.49 (6.29)     .01    57.42 (23.54)     .01
    a      Covar (Level, Slope)        -24.58 (13.28)     .06   -24.50 (13.20)     .06   -18.88 (11.45)     .10
    b      Var (Level)                    0.05 (0.82)     .95      0.04 (0.85)     .97      0.76 (0.11)    <.01
    b      Var (Slope)                    0.00 (0.10)     .99      0.00 (0.09)     .99      0.00 (0.00)     .25
    b      Var (Residual)                15.64 (6.37)     .01     15.49 (6.29)     .01      1.38 (0.06)    <.01
    b      Covar (Level, Slope)          -0.00 (0.21)     .99     -0.00 (0.18)     .99      0.00 (0.01)     .79
   ab      Covar (Levels)                 1.29 (3.15)     .68      0.91 (2.83)     .75      0.79 (0.65)     .22
   ab      Covar (Slopes)                 0.02 (0.15)     .90      0.02 (0.14)     .89      0.02 (0.03)     .45
   ab      Covar (Residuals)              0.10 (0.08)     .26      0.08 (0.08)     .33      0.03 (0.26)     .92
    \      Correlation of Levels                       0.5041                   0.4201                    0.090
    \      Correlation of Slopes                       0.2813                   0.2825                    0.204
    \      Correlation of Residuals                    0.0061                   0.0051                    0.003
    \      N                                              641                      641                      641
    \      occasions                                        5                        5                        5
    \      parameters                                      20                       28                       41
    \      LL                                         -13,794                  -13,759                  -11,289
    \      AIC                                         27,627                   27,574                   22,659
    \      BIC                                         27,717                   27,699                   22,842

## Summary 

 Study = _HRS_; Gender = _female_; Process (a) = _grip_

 Computed correlations:

 

label                    process_b      a    aeh   aehplus
----------------------  ----------  -----  -----  --------
Correlation of Levels      serial7   0.37   0.20      0.03
Correlation of Levels         tics   0.69   0.59      0.16
Correlation of Levels      word_de   0.43   0.35      0.07
Correlation of Levels      word_im   0.50   0.42      0.09



label                    process_b       a     aeh   aehplus
----------------------  ----------  ------  ------  --------
Correlation of Slopes      serial7   -0.49   -0.52     -0.11
Correlation of Slopes         tics    0.72    0.65      0.16
Correlation of Slopes      word_de    0.32    0.31      0.14
Correlation of Slopes      word_im    0.28    0.28      0.20



label                       process_b      a    aeh   aehplus
-------------------------  ----------  -----  -----  --------
Correlation of Residuals      serial7   0.00   0.00     -0.00
Correlation of Residuals         tics   0.01   0.01     -0.04
Correlation of Residuals      word_de   0.01   0.01     -0.01
Correlation of Residuals      word_im   0.01   0.01      0.00


P-values for corresponding covariances: 

 

label                   process_b      a    aeh   aehplus
---------------------  ----------  -----  -----  --------
Covariance of Levels      serial7   0.62   0.81      0.33
Covariance of Levels         tics   0.00   0.00      0.08
Covariance of Levels      word_de   0.43   0.52      0.07
Covariance of Levels      word_im   0.68   0.75      0.22



label                   process_b      a    aeh   aehplus
---------------------  ----------  -----  -----  --------
Covariance of Slopes      serial7   0.80   0.76      0.41
Covariance of Slopes         tics   0.59   0.58      0.08
Covariance of Slopes      word_de   0.89   0.82      0.38
Covariance of Slopes      word_im   0.90   0.89      0.45



label                       process_b      a    aeh   aehplus
-------------------------  ----------  -----  -----  --------
Covariance of  Residuals      serial7   0.93   0.95      0.96
Covariance of  Residuals         tics   0.41   0.43      0.39
Covariance of  Residuals      word_de   0.17   0.13      0.80
Covariance of  Residuals      word_im   0.26   0.33      0.92


# male 

 Gender = _male_; Model type: _aehplus_;  Process (a) = _grip_; Process (b): *serial7*, *tics*, *word_de*, *word_im*


 process   label                                       serial7                      tics                   word_de                   word_im       mean(sd)
---------  -------------------------  ------------------------  ------------------------  ------------------------  ------------------------  -------------
    a      Level                          35.25 (1.11)    <.01      35.26 (1.13)    <.01      35.21 (1.12)    <.01      35.23 (1.12)    <.01    35.24(0.02)
    a      Slope                          -0.57 (0.24)     .02      -0.59 (0.23)     .01      -0.51 (0.23)     .02      -0.55 (0.23)     .01    -0.56(0.04)
    a      Level * age                    -0.51 (0.05)    <.01      -0.52 (0.05)    <.01      -0.51 (0.05)    <.01      -0.51 (0.05)    <.01    -0.51(0.01)
    a      Level * education               0.00 (0.14)     .97       0.01 (0.14)     .95       0.01 (0.14)     .94       0.01 (0.14)     .94     0.01(0.00)
    a      Level * height                 25.70 (5.05)    <.01      25.69 (4.97)    <.01      25.59 (4.94)    <.01      25.50 (4.91)    <.01    25.62(0.09)
    a      Level * smoking                 1.01 (2.80)     .72       1.02 (2.83)     .72       1.10 (2.88)     .70       1.13 (2.90)     .70     1.07(0.06)
    a      Level * cardio                  0.24 (0.88)     .78       0.25 (0.88)     .78       0.22 (0.90)     .81       0.21 (0.90)     .82     0.23(0.02)
    a      Level * diabetes               -2.04 (0.80)     .01      -2.04 (0.80)     .01      -2.04 (0.80)     .01      -2.02 (0.80)     .01    -2.03(0.01)
    a      Slope * age                    -0.01 (0.01)     .30      -0.01 (0.01)     .60      -0.02 (0.01)     .10      -0.02 (0.01)     .10    -0.01(0.00)
    a      Slope * education              -0.02 (0.03)     .58      -0.01 (0.03)     .58      -0.02 (0.03)     .49      -0.02 (0.03)     .53    -0.02(0.00)
    a      Slope * height                 -0.74 (1.06)     .48      -0.79 (0.99)     .43      -0.83 (1.02)     .42      -0.64 (0.96)     .51    -0.75(0.08)
    a      Slope * smoking                -0.53 (0.48)     .27      -0.53 (0.51)     .30      -0.64 (0.58)     .28      -0.64 (0.58)     .27    -0.58(0.06)
    a      Slope * cardio                 -0.05 (0.16)     .75      -0.07 (0.17)     .68      -0.03 (0.18)     .87      -0.03 (0.18)     .85    -0.05(0.02)
    a      Slope * diabetes               -0.18 (0.19)     .32      -0.18 (0.19)     .33      -0.21 (0.19)     .26      -0.21 (0.19)     .26    -0.20(0.02)
    b      Level                           3.26 (0.22)    <.01       8.74 (0.23)    <.01       2.97 (0.20)    <.01       4.32 (0.17)    <.01            ---
    b      Slope                          -0.20 (0.04)    <.01      -0.19 (0.05)    <.01      -0.07 (0.03)     .03      -0.12 (0.03)    <.01            ---
    b      Level * age                     0.01 (0.01)     .11       0.02 (0.01)     .01      -0.05 (0.01)    <.01      -0.05 (0.01)    <.01            ---
    b      Level * education               0.15 (0.02)    <.01       0.09 (0.02)    <.01       0.16 (0.02)    <.01       0.13 (0.02)    <.01            ---
    b      Level * height                 -0.03 (0.84)     .97       0.60 (0.61)     .33       1.65 (0.83)     .04       1.23 (0.77)     .11            ---
    b      Level * smoking                 0.06 (0.17)     .72       0.07 (0.21)     .73      -0.25 (0.19)     .18      -0.38 (0.15)     .01            ---
    b      Level * cardio                 -0.09 (0.14)     .53       0.06 (0.10)     .51      -0.14 (0.14)     .31       0.06 (0.12)     .64            ---
    b      Level * diabetes               -0.01 (0.16)     .92       0.06 (0.11)     .58      -0.40 (0.18)     .03      -0.36 (0.16)     .02            ---
    b      Slope * age                    -0.01 (0.00)    <.01       0.02 (0.00)    <.01      -0.00 (0.00)    <.01      -0.00 (0.00)     .01            ---
    b      Slope * education              -0.01 (0.00)     .03      -0.01 (0.00)     .05      -0.00 (0.00)     .14       0.00 (0.00)     .64            ---
    b      Slope * height                  0.42 (0.16)     .01       0.20 (0.22)     .35      -0.06 (0.15)     .71       0.04 (0.14)     .80            ---
    b      Slope * smoking                -0.10 (0.03)    <.01      -0.27 (0.06)    <.01      -0.04 (0.03)     .20       0.02 (0.03)     .50            ---
    b      Slope * cardio                 -0.01 (0.03)     .80       0.00 (0.04)     .88       0.00 (0.02)     .88      -0.04 (0.02)     .05            ---
    b      Slope * diabetes               -0.05 (0.03)     .10      -0.04 (0.04)     .27       0.02 (0.03)     .47       0.01 (0.03)     .69            ---
    a      Var (Level)                 150.93 (118.99)     .20   151.05 (119.20)     .20   151.31 (119.72)     .21   150.36 (118.04)     .20   150.91(0.40)
    a      Var (Slope)                     4.26 (3.92)     .28       4.29 (3.96)     .28       4.26 (3.98)     .28       4.24 (3.95)     .28     4.26(0.02)
    a      Var (Residual)                95.87 (66.99)     .15     95.86 (66.72)     .15     95.78 (66.43)     .15     95.63 (66.24)     .15    95.78(0.11)
    a      Covar (Level, Slope)         -25.23 (25.59)     .32    -25.30 (25.59)     .32    -25.27 (25.55)     .32    -25.04 (25.18)     .32   -25.21(0.12)
    b      Var (Level)                     1.02 (0.14)    <.01       0.18 (0.37)     .62       0.95 (0.14)    <.01       0.61 (0.09)    <.01            ---
    b      Var (Slope)                     0.04 (0.00)    <.01       0.07 (0.01)    <.01       0.00 (0.00)     .73       0.00 (0.00)     .28            ---
    b      Var (Residual)                  1.20 (0.06)    <.01       1.38 (0.18)    <.01       1.57 (0.07)    <.01       1.26 (0.07)    <.01            ---
    b      Covar (Level, Slope)           -0.02 (0.01)     .18       0.06 (0.06)     .31       0.02 (0.02)     .26       0.00 (0.01)     .86            ---
   ab      Covar (Levels)                  0.91 (0.93)     .33       0.67 (1.48)     .65       0.54 (0.90)     .55       0.08 (1.02)     .94            ---
   ab      Covar (Slopes)                  0.00 (0.05)     .93       0.06 (0.06)     .31      -0.00 (0.04)     .92      -0.01 (0.04)     .77            ---
   ab      Covar (Residuals)              -0.04 (0.37)     .91      -1.11 (0.97)     .25      -1.42 (1.02)     .16      -1.50 (1.06)     .16            ---
    \      Correlation of Levels                        0.0732                     0.128                     0.045                    0.0079     0.06(0.05)
    \      Correlation of Slopes                        0.0126                     0.112                    -0.061                   -0.1064    -0.01(0.10)
    \      Correlation of Residuals                    -0.0041                    -0.096                    -0.116                   -0.1361    -0.09(0.06)
    \      N                                               507                       507                       507                       507   507.00(0.00)
    \      occasions                                         5                         5                         5                         5     5.00(0.00)
    \      parameters                                       41                        41                        41                        41    41.00(0.00)
    \      LL                                           -9,849                    -8,733                    -9,287                    -9,013    -9,221(476)
    \      AIC                                          19,780                    17,549                    18,656                    18,109    18,523(952)
    \      BIC                                          19,953                    17,722                    18,829                    18,282    18,697(952)

##  serial7 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _serial7_


 process   label                                             a                       aeh                   aehplus
---------  -------------------------  ------------------------  ------------------------  ------------------------
    a      Level                          39.42 (0.53)    <.01      35.24 (1.29)    <.01      35.25 (1.11)    <.01
    a      Slope                          -0.93 (0.07)    <.01      -0.81 (0.22)    <.01      -0.57 (0.24)     .02
    a      Level * age                    -0.56 (0.08)    <.01      -0.53 (0.08)    <.01      -0.51 (0.05)    <.01
    a      Level * education                               ---      -0.03 (0.17)     .85       0.00 (0.14)     .97
    a      Level * height                                  ---      26.41 (4.49)    <.01      25.70 (5.05)    <.01
    a      Level * smoking                                 ---                       ---       1.01 (2.80)     .72
    a      Level * cardio                                  ---                       ---       0.24 (0.88)     .78
    a      Level * diabetes                                ---                       ---      -2.04 (0.80)     .01
    a      Slope * age                    -0.00 (0.02)     .77      -0.01 (0.02)     .69      -0.01 (0.01)     .30
    a      Slope * education                               ---       0.00 (0.03)     .95      -0.02 (0.03)     .58
    a      Slope * height                                  ---      -0.86 (0.88)     .33      -0.74 (1.06)     .48
    a      Slope * smoking                                 ---                       ---      -0.53 (0.48)     .27
    a      Slope * cardio                                  ---                       ---      -0.05 (0.16)     .75
    a      Slope * diabetes                                ---                       ---      -0.18 (0.19)     .32
    b      Level                           4.12 (0.06)    <.01       3.25 (0.21)    <.01       3.26 (0.22)    <.01
    b      Slope                          -0.19 (0.01)    <.01      -0.24 (0.03)    <.01      -0.20 (0.04)    <.01
    b      Level * age                     0.00 (0.01)     .65       0.01 (0.01)     .15       0.01 (0.01)     .11
    b      Level * education                               ---       0.15 (0.02)    <.01       0.15 (0.02)    <.01
    b      Level * height                                  ---      -0.04 (0.82)     .97      -0.03 (0.84)     .97
    b      Level * smoking                                 ---                       ---       0.06 (0.17)     .72
    b      Level * cardio                                  ---                       ---      -0.09 (0.14)     .53
    b      Level * diabetes                                ---                       ---      -0.01 (0.16)     .92
    b      Slope * age                    -0.01 (0.00)    <.01      -0.01 (0.00)    <.01      -0.01 (0.00)    <.01
    b      Slope * education                               ---      -0.00 (0.00)     .12      -0.01 (0.00)     .03
    b      Slope * height                                  ---       0.48 (0.16)    <.01       0.42 (0.16)     .01
    b      Slope * smoking                                 ---                       ---      -0.10 (0.03)    <.01
    b      Slope * cardio                                  ---                       ---      -0.01 (0.03)     .80
    b      Slope * diabetes                                ---                       ---      -0.05 (0.03)     .10
    a      Var (Level)                 207.51 (155.83)     .18   203.75 (155.32)     .19   150.93 (118.99)     .20
    a      Var (Slope)                     7.33 (5.85)     .21       7.30 (5.84)     .21       4.26 (3.92)     .28
    a      Var (Residual)                21.25 (14.43)     .14     21.09 (14.30)     .14     95.87 (66.99)     .15
    a      Covar (Level, Slope)         -34.92 (31.48)     .27    -34.69 (31.37)     .27    -25.23 (25.59)     .32
    b      Var (Level)                     0.02 (1.66)     .99       0.02 (1.86)     .99       1.02 (0.14)    <.01
    b      Var (Slope)                     0.00 (0.23)     .99       0.00 (0.22)     .99       0.04 (0.00)    <.01
    b      Var (Residual)                21.25 (14.43)     .14     21.09 (14.30)     .14       1.20 (0.06)    <.01
    b      Covar (Level, Slope)           -0.00 (0.64)     .99      -0.00 (0.51)     .99      -0.02 (0.01)     .18
   ab      Covar (Levels)                  0.87 (3.47)     .80       0.84 (3.64)     .82       0.91 (0.93)     .33
   ab      Covar (Slopes)                  0.00 (0.19)     .99       0.01 (0.18)     .97       0.00 (0.05)     .93
   ab      Covar (Residuals)               0.01 (0.04)     .77       0.01 (0.04)     .81      -0.04 (0.37)     .91
    \      Correlation of Levels                       0.43915                   0.42947                    0.0732
    \      Correlation of Slopes                       0.00000                   0.07024                    0.0126
    \      Correlation of Residuals                    0.00061                   0.00047                   -0.0041
    \      N                                               507                       507                       507
    \      occasions                                         5                         5                         5
    \      parameters                                       20                        28                        41
    \      LL                                          -12,435                   -12,412                    -9,849
    \      AIC                                          24,910                    24,879                    19,780
    \      BIC                                          24,994                    24,998                    19,953

##  tics 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _tics_


 process   label                                             a                       aeh                   aehplus
---------  -------------------------  ------------------------  ------------------------  ------------------------
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
    a      Covar (Level, Slope)         -34.27 (30.96)     .27    -34.01 (30.83)     .27    -25.30 (25.59)     .32
    b      Var (Level)                     0.02 (2.86)     .99       0.02 (2.85)     .99       0.18 (0.37)     .62
    b      Var (Slope)                     0.00 (0.29)     .99       0.00 (0.24)     .99       0.07 (0.01)    <.01
    b      Var (Residual)                27.27 (18.42)     .14     27.23 (18.37)     .14       1.38 (0.18)    <.01
    b      Covar (Level, Slope)           -0.00 (0.66)     .99      -0.00 (0.46)     .99       0.06 (0.06)     .31
   ab      Covar (Levels)                 0.62 (60.56)     .99       0.06 (1.97)     .97       0.67 (1.48)     .65
   ab      Covar (Slopes)                  0.06 (2.00)     .98       0.05 (0.07)     .52       0.06 (0.06)     .31
   ab      Covar (Residuals)              -0.51 (0.52)     .33      -0.30 (0.47)     .52      -1.11 (0.97)     .25
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


 process   label                                             a                       aeh                   aehplus
---------  -------------------------  ------------------------  ------------------------  ------------------------
    a      Level                          39.41 (0.55)    <.01      35.23 (1.30)    <.01      35.21 (1.12)    <.01
    a      Slope                          -0.91 (0.07)    <.01      -0.80 (0.23)    <.01      -0.51 (0.23)     .02
    a      Level * age                    -0.56 (0.08)    <.01      -0.53 (0.08)    <.01      -0.51 (0.05)    <.01
    a      Level * education                               ---      -0.03 (0.17)     .86       0.01 (0.14)     .94
    a      Level * height                                  ---      26.39 (4.49)    <.01      25.59 (4.94)    <.01
    a      Level * smoking                                 ---                       ---       1.10 (2.88)     .70
    a      Level * cardio                                  ---                       ---       0.22 (0.90)     .81
    a      Level * diabetes                                ---                       ---      -2.04 (0.80)     .01
    a      Slope * age                    -0.00 (0.02)     .79      -0.01 (0.02)     .70      -0.02 (0.01)     .10
    a      Slope * education                               ---       0.00 (0.03)     .96      -0.02 (0.03)     .49
    a      Slope * height                                  ---      -0.85 (0.87)     .33      -0.83 (1.02)     .42
    a      Slope * smoking                                 ---                       ---      -0.64 (0.58)     .28
    a      Slope * cardio                                  ---                       ---      -0.03 (0.18)     .87
    a      Slope * diabetes                                ---                       ---      -0.21 (0.19)     .26
    b      Level                           4.02 (0.07)    <.01       2.75 (0.19)    <.01       2.97 (0.20)    <.01
    b      Slope                          -0.07 (0.02)    <.01      -0.05 (0.03)     .14      -0.07 (0.03)     .03
    b      Level * age                    -0.06 (0.01)    <.01      -0.05 (0.01)    <.01      -0.05 (0.01)    <.01
    b      Level * education                               ---       0.16 (0.02)    <.01       0.16 (0.02)    <.01
    b      Level * height                                  ---       1.88 (0.82)     .02       1.65 (0.83)     .04
    b      Level * smoking                                 ---                       ---      -0.25 (0.19)     .18
    b      Level * cardio                                  ---                       ---      -0.14 (0.14)     .31
    b      Level * diabetes                                ---                       ---      -0.40 (0.18)     .03
    b      Slope * age                    -0.00 (0.00)     .02      -0.00 (0.00)     .02      -0.00 (0.00)    <.01
    b      Slope * education                               ---      -0.00 (0.00)     .75      -0.00 (0.00)     .14
    b      Slope * height                                  ---      -0.13 (0.16)     .43      -0.06 (0.15)     .71
    b      Slope * smoking                                 ---                       ---      -0.04 (0.03)     .20
    b      Slope * cardio                                  ---                       ---       0.00 (0.02)     .88
    b      Slope * diabetes                                ---                       ---       0.02 (0.03)     .47
    a      Var (Level)                 205.99 (155.15)     .18   202.26 (154.66)     .19   151.31 (119.72)     .21
    a      Var (Slope)                     7.21 (5.81)     .21       7.18 (5.80)     .22       4.26 (3.98)     .28
    a      Var (Residual)                23.60 (15.71)     .13     23.37 (15.50)     .13     95.78 (66.43)     .15
    a      Covar (Level, Slope)         -34.68 (31.30)     .27    -34.45 (31.20)     .27    -25.27 (25.55)     .32
    b      Var (Level)                     0.02 (2.08)     .99       0.02 (2.16)     .99       0.95 (0.14)    <.01
    b      Var (Slope)                     0.00 (0.24)     .99       0.00 (0.22)     .99       0.00 (0.00)     .73
    b      Var (Residual)                23.60 (15.71)     .13     23.37 (15.50)     .13       1.57 (0.07)    <.01
    b      Covar (Level, Slope)           -0.00 (0.50)     .99      -0.00 (0.45)     .99       0.02 (0.02)     .26
   ab      Covar (Levels)                  0.28 (7.56)     .97      -0.01 (6.55)     .99       0.54 (0.90)     .55
   ab      Covar (Slopes)                 -0.00 (0.23)     .99      -0.01 (0.22)     .98      -0.00 (0.04)     .92
   ab      Covar (Residuals)              -0.50 (0.31)     .11      -0.50 (0.31)     .11      -1.42 (1.02)     .16
    \      Correlation of Levels                         0.123                   -0.0044                     0.045
    \      Correlation of Slopes                        -0.047                   -0.0708                    -0.061
    \      Correlation of Residuals                     -0.021                   -0.0213                    -0.116
    \      N                                               507                       507                       507
    \      occasions                                         5                         5                         5
    \      parameters                                       20                        28                        41
    \      LL                                          -11,507                   -11,483                    -9,287
    \      AIC                                          23,055                    23,022                    18,656
    \      BIC                                          23,139                    23,140                    18,829

##  word_im 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _word_im_


 process   label                                             a                       aeh                   aehplus
---------  -------------------------  ------------------------  ------------------------  ------------------------
    a      Level                          39.41 (0.55)    <.01      35.23 (1.30)    <.01      35.23 (1.12)    <.01
    a      Slope                          -0.91 (0.07)    <.01      -0.80 (0.23)    <.01      -0.55 (0.23)     .01
    a      Level * age                    -0.56 (0.08)    <.01      -0.53 (0.08)    <.01      -0.51 (0.05)    <.01
    a      Level * education                               ---      -0.03 (0.17)     .85       0.01 (0.14)     .94
    a      Level * height                                  ---      26.40 (4.49)    <.01      25.50 (4.91)    <.01
    a      Level * smoking                                 ---                       ---       1.13 (2.90)     .70
    a      Level * cardio                                  ---                       ---       0.21 (0.90)     .82
    a      Level * diabetes                                ---                       ---      -2.02 (0.80)     .01
    a      Slope * age                    -0.00 (0.02)     .79      -0.01 (0.02)     .70      -0.02 (0.01)     .10
    a      Slope * education                               ---       0.00 (0.03)     .95      -0.02 (0.03)     .53
    a      Slope * height                                  ---      -0.85 (0.87)     .33      -0.64 (0.96)     .51
    a      Slope * smoking                                 ---                       ---      -0.64 (0.58)     .27
    a      Slope * cardio                                  ---                       ---      -0.03 (0.18)     .85
    a      Slope * diabetes                                ---                       ---      -0.21 (0.19)     .26
    b      Level                           5.18 (0.06)    <.01       4.14 (0.17)    <.01       4.32 (0.17)    <.01
    b      Slope                          -0.09 (0.02)    <.01      -0.10 (0.03)    <.01      -0.12 (0.03)    <.01
    b      Level * age                    -0.05 (0.00)    <.01      -0.05 (0.00)    <.01      -0.05 (0.01)    <.01
    b      Level * education                               ---       0.14 (0.02)    <.01       0.13 (0.02)    <.01
    b      Level * height                                  ---       1.50 (0.77)     .05       1.23 (0.77)     .11
    b      Level * smoking                                 ---                       ---      -0.38 (0.15)     .01
    b      Level * cardio                                  ---                       ---       0.06 (0.12)     .64
    b      Level * diabetes                                ---                       ---      -0.36 (0.16)     .02
    b      Slope * age                    -0.00 (0.00)     .01      -0.00 (0.00)     .01      -0.00 (0.00)     .01
    b      Slope * education                               ---       0.00 (0.00)     .38       0.00 (0.00)     .64
    b      Slope * height                                  ---      -0.05 (0.14)     .74       0.04 (0.14)     .80
    b      Slope * smoking                                 ---                       ---       0.02 (0.03)     .50
    b      Slope * cardio                                  ---                       ---      -0.04 (0.02)     .05
    b      Slope * diabetes                                ---                       ---       0.01 (0.03)     .69
    a      Var (Level)                 206.43 (155.43)     .18   202.67 (154.91)     .19   150.36 (118.04)     .20
    a      Var (Slope)                     7.25 (5.82)     .21       7.21 (5.81)     .21       4.24 (3.95)     .28
    a      Var (Residual)                22.91 (15.27)     .13     22.72 (15.09)     .13     95.63 (66.24)     .15
    a      Covar (Level, Slope)         -34.75 (31.34)     .27    -34.51 (31.24)     .27    -25.04 (25.18)     .32
    b      Var (Level)                     0.02 (2.24)     .99       0.02 (2.25)     .99       0.61 (0.09)    <.01
    b      Var (Slope)                     0.00 (0.21)     .99       0.00 (0.20)     .99       0.00 (0.00)     .28
    b      Var (Residual)                22.91 (15.27)     .13     22.72 (15.09)     .13       1.26 (0.07)    <.01
    b      Covar (Level, Slope)           -0.00 (0.42)     .99      -0.00 (0.39)     .99       0.00 (0.01)     .86
   ab      Covar (Levels)                 -0.30 (8.22)     .97      -0.53 (7.08)     .94       0.08 (1.02)     .94
   ab      Covar (Slopes)                 -0.02 (0.21)     .91      -0.02 (0.20)     .90      -0.01 (0.04)     .77
   ab      Covar (Residuals)              -0.46 (0.28)     .10      -0.46 (0.29)     .11      -1.50 (1.06)     .16
    \      Correlation of Levels                         -0.13                     -0.25                    0.0079
    \      Correlation of Slopes                         -0.26                     -0.28                   -0.1064
    \      Correlation of Residuals                      -0.02                     -0.02                   -0.1361
    \      N                                               507                       507                       507
    \      occasions                                         5                         5                         5
    \      parameters                                       20                        28                        41
    \      LL                                          -11,480                   -11,458                    -9,013
    \      AIC                                          23,000                    22,972                    18,109
    \      BIC                                          23,085                    23,090                    18,282

## Summary 

 Study = _HRS_; Gender = _male_; Process (a) = _grip_

 Computed correlations:

 

label                    process_b       a     aeh   aehplus
----------------------  ----------  ------  ------  --------
Correlation of Levels      serial7    0.44    0.43      0.07
Correlation of Levels         tics    0.28    0.03      0.13
Correlation of Levels      word_de    0.12   -0.00      0.04
Correlation of Levels      word_im   -0.13   -0.25      0.01



label                    process_b       a     aeh   aehplus
----------------------  ----------  ------  ------  --------
Correlation of Slopes      serial7    0.00    0.07      0.01
Correlation of Slopes         tics    0.47    0.39      0.11
Correlation of Slopes      word_de   -0.05   -0.07     -0.06
Correlation of Slopes      word_im   -0.26   -0.28     -0.11



label                       process_b       a     aeh   aehplus
-------------------------  ----------  ------  ------  --------
Correlation of Residuals      serial7    0.00    0.00     -0.00
Correlation of Residuals         tics   -0.02   -0.01     -0.10
Correlation of Residuals      word_de   -0.02   -0.02     -0.12
Correlation of Residuals      word_im   -0.02   -0.02     -0.14


P-values for corresponding covariances: 

 

label                   process_b      a    aeh   aehplus
---------------------  ----------  -----  -----  --------
Covariance of Levels      serial7   0.80   0.82      0.33
Covariance of Levels         tics   0.99   0.97      0.65
Covariance of Levels      word_de   0.97   1.00      0.55
Covariance of Levels      word_im   0.97   0.94      0.94



label                   process_b      a    aeh   aehplus
---------------------  ----------  -----  -----  --------
Covariance of Slopes      serial7   1.00   0.97      0.93
Covariance of Slopes         tics   0.98   0.52      0.31
Covariance of Slopes      word_de   0.99   0.98      0.92
Covariance of Slopes      word_im   0.91   0.90      0.77



label                       process_b      a    aeh   aehplus
-------------------------  ----------  -----  -----  --------
Covariance of  Residuals      serial7   0.77   0.81      0.91
Covariance of  Residuals         tics   0.33   0.52      0.25
Covariance of  Residuals      word_de   0.11   0.11      0.16
Covariance of  Residuals      word_im   0.10   0.11      0.16


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
