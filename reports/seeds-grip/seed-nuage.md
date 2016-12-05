# NuAge : Seed Report
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

 Study **NUAGE** have contributed the following outcome pairs to the IASLA-2015-Portland model pool: 
NULL



process_a   process_b    n_models
----------  ----------  ---------
grip        mmms                6
grip        mmse                6




study_name   subgroup   model_type   process_a   process_b    n_models
-----------  ---------  -----------  ----------  ----------  ---------
nuage        female     a            grip        mmms                1
nuage        female     a            grip        mmse                1
nuage        female     aeh          grip        mmms                1
nuage        female     aeh          grip        mmse                1
nuage        female     aehplus      grip        mmms                1
nuage        female     aehplus      grip        mmse                1




study_name   subgroup   model_type   process_a   process_b    n_models
-----------  ---------  -----------  ----------  ----------  ---------
nuage        male       a            grip        mmms                1
nuage        male       a            grip        mmse                1
nuage        male       aeh          grip        mmms                1
nuage        male       aeh          grip        mmse                1
nuage        male       aehplus      grip        mmms                1
nuage        male       aehplus      grip        mmse                1


# female 

 Gender = _female_; Model type: _aehplus_;  Process (a) = _grip_; Process (b): *mmms*, *mmse*


 process   label                                         mmms                     mmse               mean(sd)
---------  -------------------------  -----------------------  -----------------------  ---------------------
   ab      Covar (Levels)                 1.64 (1.87)     .38      0.86 (0.65)     .18                    ---
   ab      Covar (Slopes)                 0.40 (0.28)     .15      0.05 (0.10)     .60                    ---
   ab      Covar (Residuals)              0.39 (0.41)     .34     -0.02 (0.19)     .92                    ---
   er      Corr (Levels)                  0.04 (0.05)     .38      0.08 (0.06)     .20                    ---
   er      Corr (Slopes)                  0.28 (0.16)     .09      0.16 (0.33)     .62                    ---
   er      Corr (Residuals)               0.02 (0.02)     .34     -0.00 (0.02)     .92                    ---
    a      Level                         59.87 (1.06)    <.01     59.86 (1.06)    <.01            59.86(0.00)
    a      Slope                         -2.08 (0.28)    <.01     -2.08 (0.28)    <.01            -2.08(0.00)
    a      Level * age                   -0.95 (0.11)    <.01     -0.95 (0.11)    <.01            -0.95(0.00)
    a      Level * education              0.02 (0.13)     .88      0.02 (0.13)     .88             0.02(0.00)
    a      Level * height                -9.32 (7.96)     .24     -9.35 (7.95)     .24            -9.33(0.02)
    a      Level * smoking                1.10 (1.00)     .27      1.10 (1.00)     .27             1.10(0.00)
    a      Level * cardio                 2.61 (1.26)     .04      2.61 (1.26)     .04             2.61(0.00)
    a      Level * diabetes              -0.34 (1.86)     .86     -0.34 (1.87)     .85            -0.34(0.00)
    a      Slope * age                    0.02 (0.03)     .48      0.02 (0.03)     .45             0.02(0.00)
    a      Slope * education             -0.02 (0.03)     .55     -0.02 (0.03)     .54            -0.02(0.00)
    a      Slope * height                -1.16 (1.98)     .56     -1.17 (1.97)     .55            -1.16(0.00)
    a      Slope * smoking                0.49 (0.25)     .05      0.49 (0.25)     .05             0.49(0.00)
    a      Slope * cardio                -0.51 (0.31)     .10     -0.50 (0.31)     .10            -0.51(0.01)
    a      Slope * diabetes              -0.45 (0.49)     .36     -0.43 (0.49)     .37            -0.44(0.01)
    b      Level                         93.92 (0.28)    <.01     28.57 (0.09)    <.01                    ---
    b      Slope                         -0.36 (0.13)    <.01     -0.11 (0.05)     .03                    ---
    b      Level * age                   -0.22 (0.03)    <.01     -0.08 (0.01)    <.01                    ---
    b      Level * education              0.37 (0.03)    <.01      0.06 (0.01)    <.01                    ---
    b      Level * height                 6.48 (1.99)    <.01     -0.00 (0.69)     .99                    ---
    b      Level * smoking                0.20 (0.25)     .41     -0.03 (0.09)     .75                    ---
    b      Level * cardio                -0.05 (0.31)     .86     -0.14 (0.11)     .21                    ---
    b      Level * diabetes              -0.92 (0.48)     .06     -0.09 (0.16)     .58                    ---
    b      Slope * age                   -0.06 (0.01)    <.01     -0.01 (0.00)     .01                    ---
    b      Slope * education              0.01 (0.01)     .71      0.00 (0.01)     .71                    ---
    b      Slope * height                -0.79 (1.08)     .47      0.01 (0.38)     .98                    ---
    b      Slope * smoking                0.12 (0.12)     .28      0.04 (0.04)     .33                    ---
    b      Slope * cardio                -0.11 (0.15)     .47      0.01 (0.06)     .86                    ---
    b      Slope * diabetes               0.01 (0.20)     .95      0.03 (0.08)     .73                    ---
    a      Var (Level)                 176.91 (10.91)    <.01   176.92 (10.91)    <.01           176.92(0.01)
    a      Var (Slope)                    2.69 (0.88)    <.01      2.69 (0.88)    <.01             2.69(0.00)
    a      Var (Residual)                37.88 (2.67)    <.01     37.87 (2.67)    <.01            37.87(0.00)
    b      Var (Level)                    7.74 (0.74)    <.01      0.65 (0.19)    <.01                    ---
    b      Var (Slope)                    0.76 (0.33)     .02      0.04 (0.07)     .59                    ---
    b      Var (Residual)                 8.54 (0.41)    <.01      1.64 (0.32)    <.01                    ---
    a      Covar (Level, Slope)          -2.43 (2.04)     .23     -2.40 (2.04)     .24            -2.42(0.02)
    b      Covar (Level, Slope)           2.14 (0.38)    <.01      0.14 (0.10)     .17                    ---
    \      Correlation of Levels                        0.044                   0.0804             0.06(0.03)
    \      Correlation of Slopes                        0.277                   0.1606             0.22(0.08)
    \      Correlation of Residuals                     0.022                  -0.0024             0.01(0.02)
    \      N                                              934                      934           934.00(0.00)
    \      occasions                                        4                        4             4.00(0.00)
    \      parameters                                      NA                       NA                    ---
    \      LL                                         -21,013                  -17,959   -1.948633e+04(2,159)
    \      AIC                                         42,108                   36,001    3.905465e+04(4,319)
    \      BIC                                         42,307                   36,199    3.925307e+04(4,319)

##  mmms 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _mmms_


 process   label                                            a                      aeh                  aehplus
---------  -------------------------  -----------------------  -----------------------  -----------------------
   ab      Covar (Levels)                 1.65 (2.00)     .41      1.69 (1.87)     .36      1.64 (1.87)     .38
   ab      Covar (Slopes)                 0.47 (0.27)     .09      0.41 (0.28)     .14      0.40 (0.28)     .15
   ab      Covar (Residuals)              0.32 (0.42)     .44      0.39 (0.41)     .34      0.39 (0.41)     .34
   er      Corr (Levels)                                  ---                      ---      0.04 (0.05)     .38
   er      Corr (Slopes)                                  ---                      ---      0.28 (0.16)     .09
   er      Corr (Residuals)                               ---                      ---      0.02 (0.02)     .34
    a      Level                         60.95 (0.71)    <.01     60.54 (0.99)    <.01     59.87 (1.06)    <.01
    a      Slope                         -2.05 (0.18)    <.01     -2.00 (0.26)    <.01     -2.08 (0.28)    <.01
    a      Level * age                   -0.90 (0.11)    <.01     -0.94 (0.11)    <.01     -0.95 (0.11)    <.01
    a      Level * education                              ---      0.02 (0.13)     .87      0.02 (0.13)     .88
    a      Level * height                                 ---    -10.12 (7.98)     .20     -9.32 (7.96)     .24
    a      Level * smoking                                ---                      ---      1.10 (1.00)     .27
    a      Level * cardio                                 ---                      ---      2.61 (1.26)     .04
    a      Level * diabetes                               ---                      ---     -0.34 (1.86)     .86
    a      Slope * age                    0.01 (0.03)     .73      0.01 (0.03)     .76      0.02 (0.03)     .48
    a      Slope * education                              ---     -0.02 (0.04)     .61     -0.02 (0.03)     .55
    a      Slope * height                                 ---     -0.56 (1.97)     .78     -1.16 (1.98)     .56
    a      Slope * smoking                                ---                      ---      0.49 (0.25)     .05
    a      Slope * cardio                                 ---                      ---     -0.51 (0.31)     .10
    a      Slope * diabetes                               ---                      ---     -0.45 (0.49)     .36
    b      Level                         95.38 (0.18)    <.01     93.88 (0.26)    <.01     93.92 (0.28)    <.01
    b      Slope                         -0.27 (0.06)    <.01     -0.33 (0.12)     .01     -0.36 (0.13)    <.01
    b      Level * age                   -0.26 (0.03)    <.01     -0.22 (0.03)    <.01     -0.22 (0.03)    <.01
    b      Level * education                              ---      0.38 (0.03)    <.01      0.37 (0.03)    <.01
    b      Level * height                                 ---      6.58 (2.00)    <.01      6.48 (1.99)    <.01
    b      Level * smoking                                ---                      ---      0.20 (0.25)     .41
    b      Level * cardio                                 ---                      ---     -0.05 (0.31)     .86
    b      Level * diabetes                               ---                      ---     -0.92 (0.48)     .06
    b      Slope * age                   -0.06 (0.01)    <.01     -0.06 (0.01)    <.01     -0.06 (0.01)    <.01
    b      Slope * education                              ---      0.01 (0.01)     .70      0.01 (0.01)     .71
    b      Slope * height                                 ---     -0.66 (1.06)     .53     -0.79 (1.08)     .47
    b      Slope * smoking                                ---                      ---      0.12 (0.12)     .28
    b      Slope * cardio                                 ---                      ---     -0.11 (0.15)     .47
    b      Slope * diabetes                               ---                      ---      0.01 (0.20)     .95
    a      Var (Level)                 179.05 (10.95)    <.01   178.22 (10.93)    <.01   176.91 (10.91)    <.01
    a      Var (Slope)                    2.82 (0.91)    <.01      2.81 (0.91)    <.01      2.69 (0.88)    <.01
    a      Var (Residual)                37.88 (2.67)    <.01     37.85 (2.67)    <.01     37.88 (2.67)    <.01
    b      Var (Level)                   10.13 (0.87)    <.01      7.81 (0.74)    <.01      7.74 (0.74)    <.01
    b      Var (Slope)                    0.65 (0.31)     .04      0.76 (0.33)     .02      0.76 (0.33)     .02
    b      Var (Residual)                 8.77 (0.43)    <.01      8.54 (0.41)    <.01      8.54 (0.41)    <.01
    a      Covar (Level, Slope)          -2.59 (2.06)     .21     -2.53 (2.06)     .22     -2.43 (2.04)     .23
    b      Covar (Level, Slope)           2.28 (0.39)    <.01      2.15 (0.38)    <.01      2.14 (0.38)    <.01
    \      Correlation of Levels                        0.039                    0.045                    0.044
    \      Correlation of Slopes                        0.345                    0.283                    0.277
    \      Correlation of Residuals                     0.018                    0.022                    0.022
    \      N                                              939                      934                      934
    \      occasions                                        4                        4                        4
    \      parameters                                      NA                       NA                       NA
    \      LL                                         -21,197                  -21,023                  -21,013
    \      AIC                                         42,436                   42,104                   42,108
    \      BIC                                         42,538                   42,244                   42,307

##  mmse 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _mmse_


 process   label                                            a                      aeh                  aehplus
---------  -------------------------  -----------------------  -----------------------  -----------------------
   ab      Covar (Levels)                 0.77 (0.67)     .25      0.80 (0.65)     .21      0.86 (0.65)     .18
   ab      Covar (Slopes)                 0.06 (0.10)     .56      0.06 (0.10)     .57      0.05 (0.10)     .60
   ab      Covar (Residuals)             -0.01 (0.19)     .94     -0.02 (0.19)     .91     -0.02 (0.19)     .92
   er      Corr (Levels)                                  ---                      ---      0.08 (0.06)     .20
   er      Corr (Slopes)                                  ---                      ---      0.16 (0.33)     .62
   er      Corr (Residuals)                               ---                      ---     -0.00 (0.02)     .92
    a      Level                         60.95 (0.71)    <.01     60.53 (0.99)    <.01     59.86 (1.06)    <.01
    a      Slope                         -2.05 (0.18)    <.01     -2.00 (0.26)    <.01     -2.08 (0.28)    <.01
    a      Level * age                   -0.90 (0.11)    <.01     -0.94 (0.11)    <.01     -0.95 (0.11)    <.01
    a      Level * education                              ---      0.02 (0.13)     .87      0.02 (0.13)     .88
    a      Level * height                                 ---    -10.14 (7.98)     .20     -9.35 (7.95)     .24
    a      Level * smoking                                ---                      ---      1.10 (1.00)     .27
    a      Level * cardio                                 ---                      ---      2.61 (1.26)     .04
    a      Level * diabetes                               ---                      ---     -0.34 (1.87)     .85
    a      Slope * age                    0.01 (0.03)     .69      0.01 (0.03)     .72      0.02 (0.03)     .45
    a      Slope * education                              ---     -0.02 (0.04)     .59     -0.02 (0.03)     .54
    a      Slope * height                                 ---     -0.56 (1.97)     .78     -1.17 (1.97)     .55
    a      Slope * smoking                                ---                      ---      0.49 (0.25)     .05
    a      Slope * cardio                                 ---                      ---     -0.50 (0.31)     .10
    a      Slope * diabetes                               ---                      ---     -0.43 (0.49)     .37
    b      Level                         28.80 (0.06)    <.01     28.53 (0.08)    <.01     28.57 (0.09)    <.01
    b      Slope                         -0.08 (0.02)    <.01     -0.09 (0.04)     .05     -0.11 (0.05)     .03
    b      Level * age                   -0.08 (0.01)    <.01     -0.08 (0.01)    <.01     -0.08 (0.01)    <.01
    b      Level * education                              ---      0.06 (0.01)    <.01      0.06 (0.01)    <.01
    b      Level * height                                 ---      0.05 (0.69)     .94     -0.00 (0.69)     .99
    b      Level * smoking                                ---                      ---     -0.03 (0.09)     .75
    b      Level * cardio                                 ---                      ---     -0.14 (0.11)     .21
    b      Level * diabetes                               ---                      ---     -0.09 (0.16)     .58
    b      Slope * age                   -0.01 (0.00)    <.01     -0.01 (0.00)    <.01     -0.01 (0.00)     .01
    b      Slope * education                              ---      0.00 (0.01)     .73      0.00 (0.01)     .71
    b      Slope * height                                 ---      0.03 (0.37)     .94      0.01 (0.38)     .98
    b      Slope * smoking                                ---                      ---      0.04 (0.04)     .33
    b      Slope * cardio                                 ---                      ---      0.01 (0.06)     .86
    b      Slope * diabetes                               ---                      ---      0.03 (0.08)     .73
    a      Var (Level)                 179.04 (10.95)    <.01   178.23 (10.94)    <.01   176.92 (10.91)    <.01
    a      Var (Slope)                    2.82 (0.91)    <.01      2.81 (0.91)    <.01      2.69 (0.88)    <.01
    a      Var (Residual)                37.87 (2.66)    <.01     37.84 (2.67)    <.01     37.87 (2.67)    <.01
    b      Var (Level)                    0.72 (0.20)    <.01      0.65 (0.19)    <.01      0.65 (0.19)    <.01
    b      Var (Slope)                    0.04 (0.07)     .61      0.04 (0.07)     .59      0.04 (0.07)     .59
    b      Var (Residual)                 1.66 (0.32)    <.01      1.64 (0.32)    <.01      1.64 (0.32)    <.01
    a      Covar (Level, Slope)          -2.55 (2.06)     .22     -2.50 (2.06)     .22     -2.40 (2.04)     .24
    b      Covar (Level, Slope)           0.14 (0.11)     .18      0.14 (0.10)     .18      0.14 (0.10)     .17
    \      Correlation of Levels                       0.0673                   0.0746                   0.0804
    \      Correlation of Slopes                       0.1826                   0.1692                   0.1606
    \      Correlation of Residuals                   -0.0018                  -0.0025                  -0.0024
    \      N                                              939                      934                      934
    \      occasions                                        4                        4                        4
    \      parameters                                      NA                       NA                       NA
    \      LL                                         -18,068                  -17,968                  -17,959
    \      AIC                                         36,179                   35,994                   36,001
    \      BIC                                         36,281                   36,134                   36,199

## Summary 

 Study = _NUAGE_; Gender = _female_; Process (a) = _grip_

 Computed correlations:

 

label                    process_b      a    aeh   aehplus
----------------------  ----------  -----  -----  --------
Correlation of Levels         mmms   0.04   0.05      0.04
Correlation of Levels         mmse   0.07   0.07      0.08




label                    process_b      a    aeh   aehplus
----------------------  ----------  -----  -----  --------
Correlation of Slopes         mmms   0.35   0.28      0.28
Correlation of Slopes         mmse   0.18   0.17      0.16




label                       process_b       a     aeh   aehplus
-------------------------  ----------  ------  ------  --------
Correlation of Residuals         mmms    0.02    0.02      0.02
Correlation of Residuals         mmse   -0.00   -0.00     -0.00



P-values for corresponding covariances: 

 

label                   process_b      a    aeh   aehplus
---------------------  ----------  -----  -----  --------
Covariance of Levels         mmms   0.41   0.36      0.38
Covariance of Levels         mmse   0.25   0.21      0.18




label                   process_b      a    aeh   aehplus
---------------------  ----------  -----  -----  --------
Covariance of Slopes         mmms   0.09   0.14      0.15
Covariance of Slopes         mmse   0.56   0.57      0.60




label                       process_b      a    aeh   aehplus
-------------------------  ----------  -----  -----  --------
Covariance of  Residuals         mmms   0.44   0.34      0.34
Covariance of  Residuals         mmse   0.94   0.91      0.92



# male 

 Gender = _male_; Model type: _aehplus_;  Process (a) = _grip_; Process (b): *mmms*, *mmse*


 process   label                                         mmms                     mmse               mean(sd)
---------  -------------------------  -----------------------  -----------------------  ---------------------
   ab      Covar (Levels)                 5.49 (2.04)     .01      2.28 (0.74)    <.01                    ---
   ab      Covar (Slopes)                 0.33 (0.23)     .16      0.13 (0.11)     .23                    ---
   ab      Covar (Residuals)             -0.71 (0.47)     .13      0.02 (0.22)     .92                    ---
   er      Corr (Levels)                  0.13 (0.05)     .01      0.18 (0.06)    <.01                    ---
   er      Corr (Slopes)                  0.28 (0.21)     .19      0.30 (0.25)     .23                    ---
   er      Corr (Residuals)              -0.04 (0.02)     .13      0.00 (0.03)     .92                    ---
    a      Level                         80.95 (1.32)    <.01     80.95 (1.32)    <.01            80.95(0.00)
    a      Slope                         -2.39 (0.29)    <.01     -2.39 (0.29)    <.01            -2.39(0.00)
    a      Level * age                   -1.39 (0.13)    <.01     -1.39 (0.13)    <.01            -1.39(0.00)
    a      Level * education              0.12 (0.11)     .28      0.12 (0.11)     .28             0.12(0.00)
    a      Level * height                59.34 (7.27)    <.01     59.29 (7.27)    <.01            59.32(0.03)
    a      Level * smoking                0.29 (1.12)     .79      0.29 (1.12)     .79             0.29(0.00)
    a      Level * cardio                 1.46 (1.20)     .22      1.46 (1.20)     .22             1.46(0.00)
    a      Level * diabetes              -2.96 (1.76)     .09     -2.96 (1.76)     .09            -2.96(0.00)
    a      Slope * age                   -0.03 (0.03)     .35     -0.03 (0.03)     .35            -0.03(0.00)
    a      Slope * education              0.00 (0.02)     .99      0.00 (0.02)     .97             0.00(0.00)
    a      Slope * height                -0.66 (1.65)     .69     -0.66 (1.65)     .69            -0.66(0.00)
    a      Slope * smoking               -0.13 (0.25)     .61     -0.13 (0.25)     .60            -0.13(0.00)
    a      Slope * cardio                 0.02 (0.25)     .92      0.03 (0.25)     .91             0.03(0.00)
    a      Slope * diabetes              -0.37 (0.38)     .34     -0.36 (0.38)     .35            -0.36(0.01)
    b      Level                         91.35 (0.32)    <.01     27.75 (0.13)    <.01                    ---
    b      Slope                         -0.57 (0.15)    <.01     -0.22 (0.06)    <.01                    ---
    b      Level * age                   -0.15 (0.03)    <.01     -0.05 (0.01)    <.01                    ---
    b      Level * education              0.43 (0.03)    <.01      0.08 (0.01)    <.01                    ---
    b      Level * height                 6.70 (1.99)    <.01      2.00 (0.73)     .01                    ---
    b      Level * smoking                0.19 (0.29)     .52      0.09 (0.11)     .40                    ---
    b      Level * cardio                 0.36 (0.32)     .26      0.10 (0.11)     .39                    ---
    b      Level * diabetes               0.10 (0.41)     .80      0.00 (0.15)     .99                    ---
    b      Slope * age                   -0.04 (0.02)    <.01     -0.01 (0.01)     .07                    ---
    b      Slope * education              0.03 (0.01)     .01      0.01 (0.00)     .02                    ---
    b      Slope * height                 1.62 (0.87)     .06      0.08 (0.37)     .82                    ---
    b      Slope * smoking               -0.18 (0.13)     .17     -0.07 (0.05)     .20                    ---
    b      Slope * cardio                 0.15 (0.14)     .28      0.04 (0.06)     .50                    ---
    b      Slope * diabetes              -0.26 (0.19)     .17      0.03 (0.08)     .70                    ---
    a      Var (Level)                 201.61 (13.61)    <.01   201.47 (13.60)    <.01           201.54(0.10)
    a      Var (Slope)                    1.93 (0.89)     .03      1.88 (0.89)     .03             1.91(0.03)
    a      Var (Residual)                36.05 (2.48)    <.01     36.12 (2.48)    <.01            36.08(0.05)
    b      Var (Level)                    8.82 (1.00)    <.01      0.78 (0.14)    <.01                    ---
    b      Var (Slope)                    0.71 (0.31)     .02      0.10 (0.04)     .01                    ---
    b      Var (Residual)                11.28 (0.57)    <.01      1.86 (0.09)    <.01                    ---
    a      Covar (Level, Slope)          -2.85 (2.29)     .21     -2.75 (2.28)     .23            -2.80(0.07)
    b      Covar (Level, Slope)           2.33 (0.37)    <.01      0.21 (0.05)    <.01                    ---
    \      Correlation of Levels                        0.130                   0.1818             0.16(0.04)
    \      Correlation of Slopes                        0.280                   0.2988             0.29(0.01)
    \      Correlation of Residuals                    -0.035                   0.0026            -0.02(0.03)
    \      N                                              847                      847           847.00(0.00)
    \      occasions                                        4                        4             4.00(0.00)
    \      parameters                                      NA                       NA                    ---
    \      LL                                         -19,408                  -16,557   -1.798228e+04(2,016)
    \      AIC                                         38,898                   33,195    3.604656e+04(4,032)
    \      BIC                                         39,092                   33,390    3.624097e+04(4,032)

##  mmms 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _mmms_


 process   label                                            a                      aeh                  aehplus
---------  -------------------------  -----------------------  -----------------------  -----------------------
   ab      Covar (Levels)                 9.91 (2.46)    <.01      5.54 (2.05)     .01      5.49 (2.04)     .01
   ab      Covar (Slopes)                 0.34 (0.23)     .15      0.34 (0.23)     .15      0.33 (0.23)     .16
   ab      Covar (Residuals)             -0.72 (0.47)     .13     -0.70 (0.47)     .13     -0.71 (0.47)     .13
   er      Corr (Levels)                                  ---                      ---      0.13 (0.05)     .01
   er      Corr (Slopes)                                  ---                      ---      0.28 (0.21)     .19
   er      Corr (Residuals)                               ---                      ---     -0.04 (0.02)     .13
    a      Level                         79.89 (0.79)    <.01     81.11 (0.97)    <.01     80.95 (1.32)    <.01
    a      Slope                         -2.48 (0.16)    <.01     -2.50 (0.23)    <.01     -2.39 (0.29)    <.01
    a      Level * age                   -1.50 (0.13)    <.01     -1.39 (0.13)    <.01     -1.39 (0.13)    <.01
    a      Level * education                              ---      0.12 (0.11)     .29      0.12 (0.11)     .28
    a      Level * height                                 ---     58.66 (7.31)    <.01     59.34 (7.27)    <.01
    a      Level * smoking                                ---                      ---      0.29 (1.12)     .79
    a      Level * cardio                                 ---                      ---      1.46 (1.20)     .22
    a      Level * diabetes                               ---                      ---     -2.96 (1.76)     .09
    a      Slope * age                   -0.03 (0.03)     .32     -0.03 (0.03)     .30     -0.03 (0.03)     .35
    a      Slope * education                              ---      0.00 (0.02)     .98      0.00 (0.02)     .99
    a      Slope * height                                 ---     -0.75 (1.65)     .65     -0.66 (1.65)     .69
    a      Slope * smoking                                ---                      ---     -0.13 (0.25)     .61
    a      Slope * cardio                                 ---                      ---      0.02 (0.25)     .92
    a      Slope * diabetes                               ---                      ---     -0.37 (0.38)     .34
    b      Level                         93.61 (0.22)    <.01     91.57 (0.26)    <.01     91.35 (0.32)    <.01
    b      Slope                         -0.56 (0.07)    <.01     -0.69 (0.11)    <.01     -0.57 (0.15)    <.01
    b      Level * age                   -0.19 (0.04)    <.01     -0.14 (0.03)    <.01     -0.15 (0.03)    <.01
    b      Level * education                              ---      0.43 (0.03)    <.01      0.43 (0.03)    <.01
    b      Level * height                                 ---      6.61 (1.98)    <.01      6.70 (1.99)    <.01
    b      Level * smoking                                ---                      ---      0.19 (0.29)     .52
    b      Level * cardio                                 ---                      ---      0.36 (0.32)     .26
    b      Level * diabetes                               ---                      ---      0.10 (0.41)     .80
    b      Slope * age                   -0.05 (0.02)    <.01     -0.05 (0.02)    <.01     -0.04 (0.02)    <.01
    b      Slope * education                              ---      0.03 (0.01)     .01      0.03 (0.01)     .01
    b      Slope * height                                 ---      1.50 (0.89)     .09      1.62 (0.87)     .06
    b      Slope * smoking                                ---                      ---     -0.18 (0.13)     .17
    b      Slope * cardio                                 ---                      ---      0.15 (0.14)     .28
    b      Slope * diabetes                               ---                      ---     -0.26 (0.19)     .17
    a      Var (Level)                 219.36 (14.01)    <.01   202.81 (13.59)    <.01   201.61 (13.61)    <.01
    a      Var (Slope)                    1.96 (0.90)     .03      1.95 (0.89)     .03      1.93 (0.89)     .03
    a      Var (Residual)                36.03 (2.47)    <.01     36.06 (2.48)    <.01     36.05 (2.48)    <.01
    b      Var (Level)                   13.93 (1.11)    <.01      8.84 (1.00)    <.01      8.82 (1.00)    <.01
    b      Var (Slope)                    0.71 (0.31)     .02      0.72 (0.31)     .02      0.71 (0.31)     .02
    b      Var (Residual)                11.38 (0.58)    <.01     11.29 (0.57)    <.01     11.28 (0.57)    <.01
    a      Covar (Level, Slope)          -2.96 (2.35)     .21     -2.80 (2.29)     .22     -2.85 (2.29)     .21
    b      Covar (Level, Slope)           2.90 (0.39)    <.01      2.34 (0.37)    <.01      2.33 (0.37)    <.01
    \      Correlation of Levels                        0.179                    0.131                    0.130
    \      Correlation of Slopes                        0.284                    0.283                    0.280
    \      Correlation of Residuals                    -0.035                   -0.035                   -0.035
    \      N                                              851                      847                      847
    \      occasions                                        4                        4                        4
    \      parameters                                      NA                       NA                       NA
    \      LL                                         -19,588                  -19,414                  -19,408
    \      AIC                                         39,219                   38,887                   38,898
    \      BIC                                         39,318                   39,024                   39,092

##  mmse 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _mmse_


 process   label                                            a                      aeh                  aehplus
---------  -------------------------  -----------------------  -----------------------  -----------------------
   ab      Covar (Levels)                 3.38 (0.80)    <.01      2.31 (0.74)    <.01      2.28 (0.74)    <.01
   ab      Covar (Slopes)                 0.13 (0.11)     .25      0.13 (0.11)     .25      0.13 (0.11)     .23
   ab      Covar (Residuals)              0.01 (0.22)     .94      0.02 (0.22)     .93      0.02 (0.22)     .92
   er      Corr (Levels)                                  ---                      ---      0.18 (0.06)    <.01
   er      Corr (Slopes)                                  ---                      ---      0.30 (0.25)     .23
   er      Corr (Residuals)                               ---                      ---      0.00 (0.03)     .92
    a      Level                         79.89 (0.79)    <.01     81.10 (0.97)    <.01     80.95 (1.32)    <.01
    a      Slope                         -2.47 (0.16)    <.01     -2.51 (0.23)    <.01     -2.39 (0.29)    <.01
    a      Level * age                   -1.50 (0.13)    <.01     -1.39 (0.13)    <.01     -1.39 (0.13)    <.01
    a      Level * education                              ---      0.12 (0.11)     .29      0.12 (0.11)     .28
    a      Level * height                                 ---     58.61 (7.31)    <.01     59.29 (7.27)    <.01
    a      Level * smoking                                ---                      ---      0.29 (1.12)     .79
    a      Level * cardio                                 ---                      ---      1.46 (1.20)     .22
    a      Level * diabetes                               ---                      ---     -2.96 (1.76)     .09
    a      Slope * age                   -0.03 (0.03)     .32     -0.03 (0.03)     .31     -0.03 (0.03)     .35
    a      Slope * education                              ---      0.00 (0.02)     .95      0.00 (0.02)     .97
    a      Slope * height                                 ---     -0.75 (1.65)     .65     -0.66 (1.65)     .69
    a      Slope * smoking                                ---                      ---     -0.13 (0.25)     .60
    a      Slope * cardio                                 ---                      ---      0.03 (0.25)     .91
    a      Slope * diabetes                               ---                      ---     -0.36 (0.38)     .35
    b      Level                         28.22 (0.07)    <.01     27.83 (0.10)    <.01     27.75 (0.13)    <.01
    b      Slope                         -0.19 (0.03)    <.01     -0.25 (0.05)    <.01     -0.22 (0.06)    <.01
    b      Level * age                   -0.06 (0.01)    <.01     -0.05 (0.01)    <.01     -0.05 (0.01)    <.01
    b      Level * education                              ---      0.08 (0.01)    <.01      0.08 (0.01)    <.01
    b      Level * height                                 ---      1.98 (0.74)     .01      2.00 (0.73)     .01
    b      Level * smoking                                ---                      ---      0.09 (0.11)     .40
    b      Level * cardio                                 ---                      ---      0.10 (0.11)     .39
    b      Level * diabetes                               ---                      ---      0.00 (0.15)     .99
    b      Slope * age                   -0.01 (0.01)     .04     -0.01 (0.01)     .07     -0.01 (0.01)     .07
    b      Slope * education                              ---      0.01 (0.00)     .02      0.01 (0.00)     .02
    b      Slope * height                                 ---      0.06 (0.37)     .88      0.08 (0.37)     .82
    b      Slope * smoking                                ---                      ---     -0.07 (0.05)     .20
    b      Slope * cardio                                 ---                      ---      0.04 (0.06)     .50
    b      Slope * diabetes                               ---                      ---      0.03 (0.08)     .70
    a      Var (Level)                 219.20 (14.01)    <.01   202.65 (13.58)    <.01   201.47 (13.60)    <.01
    a      Var (Slope)                    1.89 (0.89)     .03      1.90 (0.89)     .03      1.88 (0.89)     .03
    a      Var (Residual)                36.13 (2.48)    <.01     36.13 (2.48)    <.01     36.12 (2.48)    <.01
    b      Var (Level)                    1.01 (0.15)    <.01      0.78 (0.14)    <.01      0.78 (0.14)    <.01
    b      Var (Slope)                    0.10 (0.04)     .01      0.10 (0.04)     .01      0.10 (0.04)     .01
    b      Var (Residual)                 1.86 (0.09)    <.01      1.86 (0.09)    <.01      1.86 (0.09)    <.01
    a      Covar (Level, Slope)          -2.82 (2.33)     .23     -2.68 (2.28)     .24     -2.75 (2.28)     .23
    b      Covar (Level, Slope)           0.24 (0.06)    <.01      0.21 (0.05)    <.01      0.21 (0.05)    <.01
    \      Correlation of Levels                       0.2275                   0.1835                   0.1818
    \      Correlation of Slopes                       0.2928                   0.2954                   0.2988
    \      Correlation of Residuals                    0.0018                   0.0024                   0.0026
    \      N                                              851                      847                      847
    \      occasions                                        4                        4                        4
    \      parameters                                      NA                       NA                       NA
    \      LL                                         -16,665                  -16,562                  -16,557
    \      AIC                                         33,373                   33,183                   33,195
    \      BIC                                         33,472                   33,320                   33,390

## Summary 

 Study = _NUAGE_; Gender = _male_; Process (a) = _grip_

 Computed correlations:

 

label                    process_b      a    aeh   aehplus
----------------------  ----------  -----  -----  --------
Correlation of Levels         mmms   0.18   0.13      0.13
Correlation of Levels         mmse   0.23   0.18      0.18




label                    process_b      a    aeh   aehplus
----------------------  ----------  -----  -----  --------
Correlation of Slopes         mmms   0.28   0.28      0.28
Correlation of Slopes         mmse   0.29   0.30      0.30




label                       process_b       a     aeh   aehplus
-------------------------  ----------  ------  ------  --------
Correlation of Residuals         mmms   -0.04   -0.03     -0.04
Correlation of Residuals         mmse    0.00    0.00      0.00



P-values for corresponding covariances: 

 

label                   process_b      a    aeh   aehplus
---------------------  ----------  -----  -----  --------
Covariance of Levels         mmms   0.00   0.01      0.01
Covariance of Levels         mmse   0.00   0.00      0.00




label                   process_b      a    aeh   aehplus
---------------------  ----------  -----  -----  --------
Covariance of Slopes         mmms   0.15   0.15      0.16
Covariance of Slopes         mmse   0.25   0.25      0.23




label                       process_b      a    aeh   aehplus
-------------------------  ----------  -----  -----  --------
Covariance of  Residuals         mmms   0.13   0.13      0.13
Covariance of  Residuals         mmse   0.94   0.93      0.92


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
