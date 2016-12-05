# LASA : Seed report
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

 Study **LASA** have contributed the following outcome pairs to the IASLA-2015-Portland model pool: 
NULL



process_a   process_b    n_models
----------  ----------  ---------
pef         letter              2
pef         raven               2
pef         word_im             2




study_name   subgroup   model_type   process_a   process_b    n_models
-----------  ---------  -----------  ----------  ----------  ---------
lasa         female     aehplus      pef         letter              1
lasa         female     aehplus      pef         raven               1
lasa         female     aehplus      pef         word_im             1




study_name   subgroup   model_type   process_a   process_b    n_models
-----------  ---------  -----------  ----------  ----------  ---------
lasa         male       aehplus      pef         letter              1
lasa         male       aehplus      pef         raven               1
lasa         male       aehplus      pef         word_im             1


# female 

 Gender = _female_; Model type: _aehplus_;  Process (a) = _pef_; Process (b): *letter*, *raven*, *word_im*


 process   label                                         letter                      raven                    word_im             mean(sd)
---------  -------------------------  -------------------------  -------------------------  -------------------------  -------------------
   ab      Covar (Levels)                 74.21 (15.62)    <.01       43.20 (8.05)    <.01      37.66 (13.01)    <.01                  ---
   ab      Covar (Slopes)                  -0.01 (0.06)     .91       -0.01 (0.04)     .76        0.01 (0.06)     .86                  ---
   ab      Covar (Residuals)               12.67 (3.60)    <.01        0.53 (2.73)     .85       25.45 (4.52)    <.01                  ---
   er      Corr (Levels)                    0.22 (0.04)    <.01        0.29 (0.05)    <.01        0.16 (0.05)    <.01                  ---
   er      Corr (Slopes)                   -0.03 (0.30)     .92       -0.14 (0.45)     .75        0.10 (0.57)     .86                  ---
   er      Corr (Residuals)                 0.11 (0.03)    <.01        0.00 (0.03)     .85        0.14 (0.02)    <.01                  ---
    a      Level                          352.09 (4.52)    <.01      352.05 (4.51)    <.01      352.00 (4.52)    <.01         352.05(0.05)
    a      Slope                           -3.80 (0.36)    <.01       -3.79 (0.36)    <.01       -3.77 (0.36)    <.01          -3.79(0.02)
    a      Level * age                     -4.50 (0.36)    <.01       -4.50 (0.36)    <.01       -4.51 (0.36)    <.01          -4.50(0.01)
    a      Level * education                3.08 (0.87)    <.01        3.08 (0.87)    <.01        3.07 (0.87)    <.01           3.08(0.00)
    a      Level * height                   2.52 (0.41)    <.01        2.52 (0.41)    <.01        2.53 (0.41)    <.01           2.52(0.01)
    a      Level * smoking                -30.62 (6.89)    <.01      -30.73 (6.88)    <.01      -30.55 (6.89)    <.01         -30.63(0.09)
    a      Level * cardio                 -12.32 (7.36)     .09      -12.36 (7.35)     .09      -12.34 (7.36)     .09         -12.34(0.02)
    a      Level * diabetes               -3.75 (12.46)     .76      -3.72 (12.49)     .77      -3.83 (12.47)     .76          -3.77(0.06)
    a      Slope * age                     -0.14 (0.03)    <.01       -0.14 (0.03)    <.01       -0.13 (0.03)    <.01          -0.14(0.00)
    a      Slope * education               -0.08 (0.06)     .19       -0.09 (0.06)     .18       -0.09 (0.06)     .18          -0.09(0.00)
    a      Slope * height                  -0.04 (0.03)     .19       -0.04 (0.03)     .21       -0.04 (0.03)     .21          -0.04(0.00)
    a      Slope * smoking                 -0.82 (0.47)     .08       -0.80 (0.47)     .09       -0.84 (0.47)     .07          -0.82(0.02)
    a      Slope * cardio                   0.03 (0.52)     .95        0.07 (0.52)     .90        0.02 (0.52)     .96           0.04(0.02)
    a      Slope * diabetes                -0.93 (1.13)     .41       -0.91 (1.15)     .43       -0.85 (1.15)     .46          -0.90(0.04)
    b      Level                           24.26 (0.35)    <.01       17.82 (0.18)    <.01       21.04 (0.28)    <.01                  ---
    b      Slope                           -0.34 (0.02)    <.01       -0.17 (0.02)    <.01       -0.29 (0.03)    <.01                  ---
    b      Level * age                     -0.33 (0.03)    <.01       -0.15 (0.01)    <.01       -0.29 (0.02)    <.01                  ---
    b      Level * education                0.85 (0.07)    <.01        0.40 (0.03)    <.01        0.47 (0.05)    <.01                  ---
    b      Level * height                   0.08 (0.03)     .01        0.01 (0.02)     .70        0.01 (0.03)     .59                  ---
    b      Level * smoking                 -0.58 (0.54)     .28       -0.66 (0.28)     .02       -0.46 (0.49)     .35                  ---
    b      Level * cardio                  -1.02 (0.54)     .06       -0.04 (0.29)     .90       -0.60 (0.48)     .21                  ---
    b      Level * diabetes                -0.71 (1.00)     .48       -0.83 (0.56)     .14       -0.94 (0.79)     .24                  ---
    b      Slope * age                     -0.01 (0.00)    <.01       -0.00 (0.00)    <.01        0.00 (0.00)     .96                  ---
    b      Slope * education               -0.01 (0.00)     .06        0.00 (0.00)     .80       -0.00 (0.00)     .62                  ---
    b      Slope * height                   0.00 (0.00)     .86        0.00 (0.00)     .83        0.00 (0.00)     .33                  ---
    b      Slope * smoking                  0.01 (0.03)     .80        0.02 (0.02)     .49       -0.03 (0.04)     .43                  ---
    b      Slope * cardio                   0.00 (0.04)     .92       -0.04 (0.03)     .09       -0.00 (0.05)     .97                  ---
    b      Slope * diabetes                -0.13 (0.10)     .17       -0.08 (0.06)     .12       -0.05 (0.08)     .53                  ---
    a      Var (Level)                 3902.40 (273.52)    <.01   3922.55 (277.38)    <.01   3921.81 (276.94)    <.01       3915.59(11.43)
    a      Var (Slope)                      1.15 (0.78)     .14        1.66 (1.29)     .20        1.61 (1.31)     .22           1.47(0.28)
    a      Var (Residual)              2096.08 (136.13)    <.01   2082.58 (137.67)    <.01   2083.64 (139.15)    <.01        2087.43(7.51)
    b      Var (Level)                     28.91 (1.54)    <.01        5.72 (0.43)    <.01       13.88 (1.32)    <.01                  ---
    b      Var (Slope)                      0.04 (0.01)    <.01        0.00 (0.00)     .34        0.01 (0.01)     .53                  ---
    b      Var (Residual)                   5.95 (0.26)    <.01        5.34 (0.23)    <.01       16.63 (0.66)    <.01                  ---
    a      Covar (Level, Slope)           24.32 (13.29)     .07      20.23 (14.83)     .17      20.74 (14.71)     .16          21.76(2.23)
    b      Covar (Level, Slope)            -0.12 (0.08)     .13        0.04 (0.03)     .19        0.10 (0.10)     .32                  ---
    \      Correlation of Levels                          0.221                      0.288                       0.16           0.22(0.06)
    \      Correlation of Slopes                         -0.034                     -0.156                       0.10          -0.03(0.13)
    \      Correlation of Residuals                       0.113                      0.005                       0.14           0.09(0.07)
    \      N                                                782                        782                        782         782.00(0.00)
    \      occasions                                          6                          6                          6           6.00(0.00)
    \      parameters                                        41                         41                         41          41.00(0.00)
    \      LL                                           -22,762                    -22,940                    -23,544   -2.308195e+04(410)
    \      AIC                                           45,606                     45,961                     47,170    4.624591e+04(820)
    \      BIC                                           45,797                     46,153                     47,361    4.643704e+04(820)

##  letter 

 Gender = _female_;  Process (a) = *pef*; Process (b) = _letter_


 process   label                                        aehplus
---------  -------------------------  -------------------------
   ab      Covar (Levels)                 74.21 (15.62)    <.01
   ab      Covar (Slopes)                  -0.01 (0.06)     .91
   ab      Covar (Residuals)               12.67 (3.60)    <.01
   er      Corr (Levels)                    0.22 (0.04)    <.01
   er      Corr (Slopes)                   -0.03 (0.30)     .92
   er      Corr (Residuals)                 0.11 (0.03)    <.01
    a      Level                          352.09 (4.52)    <.01
    a      Slope                           -3.80 (0.36)    <.01
    a      Level * age                     -4.50 (0.36)    <.01
    a      Level * education                3.08 (0.87)    <.01
    a      Level * height                   2.52 (0.41)    <.01
    a      Level * smoking                -30.62 (6.89)    <.01
    a      Level * cardio                 -12.32 (7.36)     .09
    a      Level * diabetes               -3.75 (12.46)     .76
    a      Slope * age                     -0.14 (0.03)    <.01
    a      Slope * education               -0.08 (0.06)     .19
    a      Slope * height                  -0.04 (0.03)     .19
    a      Slope * smoking                 -0.82 (0.47)     .08
    a      Slope * cardio                   0.03 (0.52)     .95
    a      Slope * diabetes                -0.93 (1.13)     .41
    b      Level                           24.26 (0.35)    <.01
    b      Slope                           -0.34 (0.02)    <.01
    b      Level * age                     -0.33 (0.03)    <.01
    b      Level * education                0.85 (0.07)    <.01
    b      Level * height                   0.08 (0.03)     .01
    b      Level * smoking                 -0.58 (0.54)     .28
    b      Level * cardio                  -1.02 (0.54)     .06
    b      Level * diabetes                -0.71 (1.00)     .48
    b      Slope * age                     -0.01 (0.00)    <.01
    b      Slope * education               -0.01 (0.00)     .06
    b      Slope * height                   0.00 (0.00)     .86
    b      Slope * smoking                  0.01 (0.03)     .80
    b      Slope * cardio                   0.00 (0.04)     .92
    b      Slope * diabetes                -0.13 (0.10)     .17
    a      Var (Level)                 3902.40 (273.52)    <.01
    a      Var (Slope)                      1.15 (0.78)     .14
    a      Var (Residual)              2096.08 (136.13)    <.01
    b      Var (Level)                     28.91 (1.54)    <.01
    b      Var (Slope)                      0.04 (0.01)    <.01
    b      Var (Residual)                   5.95 (0.26)    <.01
    a      Covar (Level, Slope)           24.32 (13.29)     .07
    b      Covar (Level, Slope)            -0.12 (0.08)     .13
    \      Correlation of Levels                          0.221
    \      Correlation of Slopes                         -0.034
    \      Correlation of Residuals                       0.113
    \      N                                                782
    \      occasions                                          6
    \      parameters                                        41
    \      LL                                           -22,762
    \      AIC                                           45,606
    \      BIC                                           45,797

##  raven 

 Gender = _female_;  Process (a) = *pef*; Process (b) = _raven_


 process   label                                        aehplus
---------  -------------------------  -------------------------
   ab      Covar (Levels)                  43.20 (8.05)    <.01
   ab      Covar (Slopes)                  -0.01 (0.04)     .76
   ab      Covar (Residuals)                0.53 (2.73)     .85
   er      Corr (Levels)                    0.29 (0.05)    <.01
   er      Corr (Slopes)                   -0.14 (0.45)     .75
   er      Corr (Residuals)                 0.00 (0.03)     .85
    a      Level                          352.05 (4.51)    <.01
    a      Slope                           -3.79 (0.36)    <.01
    a      Level * age                     -4.50 (0.36)    <.01
    a      Level * education                3.08 (0.87)    <.01
    a      Level * height                   2.52 (0.41)    <.01
    a      Level * smoking                -30.73 (6.88)    <.01
    a      Level * cardio                 -12.36 (7.35)     .09
    a      Level * diabetes               -3.72 (12.49)     .77
    a      Slope * age                     -0.14 (0.03)    <.01
    a      Slope * education               -0.09 (0.06)     .18
    a      Slope * height                  -0.04 (0.03)     .21
    a      Slope * smoking                 -0.80 (0.47)     .09
    a      Slope * cardio                   0.07 (0.52)     .90
    a      Slope * diabetes                -0.91 (1.15)     .43
    b      Level                           17.82 (0.18)    <.01
    b      Slope                           -0.17 (0.02)    <.01
    b      Level * age                     -0.15 (0.01)    <.01
    b      Level * education                0.40 (0.03)    <.01
    b      Level * height                   0.01 (0.02)     .70
    b      Level * smoking                 -0.66 (0.28)     .02
    b      Level * cardio                  -0.04 (0.29)     .90
    b      Level * diabetes                -0.83 (0.56)     .14
    b      Slope * age                     -0.00 (0.00)    <.01
    b      Slope * education                0.00 (0.00)     .80
    b      Slope * height                   0.00 (0.00)     .83
    b      Slope * smoking                  0.02 (0.02)     .49
    b      Slope * cardio                  -0.04 (0.03)     .09
    b      Slope * diabetes                -0.08 (0.06)     .12
    a      Var (Level)                 3922.55 (277.38)    <.01
    a      Var (Slope)                      1.66 (1.29)     .20
    a      Var (Residual)              2082.58 (137.67)    <.01
    b      Var (Level)                      5.72 (0.43)    <.01
    b      Var (Slope)                      0.00 (0.00)     .34
    b      Var (Residual)                   5.34 (0.23)    <.01
    a      Covar (Level, Slope)           20.23 (14.83)     .17
    b      Covar (Level, Slope)             0.04 (0.03)     .19
    \      Correlation of Levels                          0.288
    \      Correlation of Slopes                         -0.156
    \      Correlation of Residuals                       0.005
    \      N                                                782
    \      occasions                                          6
    \      parameters                                        41
    \      LL                                           -22,940
    \      AIC                                           45,961
    \      BIC                                           46,153

##  word_im 

 Gender = _female_;  Process (a) = *pef*; Process (b) = _word_im_


 process   label                                        aehplus
---------  -------------------------  -------------------------
   ab      Covar (Levels)                 37.66 (13.01)    <.01
   ab      Covar (Slopes)                   0.01 (0.06)     .86
   ab      Covar (Residuals)               25.45 (4.52)    <.01
   er      Corr (Levels)                    0.16 (0.05)    <.01
   er      Corr (Slopes)                    0.10 (0.57)     .86
   er      Corr (Residuals)                 0.14 (0.02)    <.01
    a      Level                          352.00 (4.52)    <.01
    a      Slope                           -3.77 (0.36)    <.01
    a      Level * age                     -4.51 (0.36)    <.01
    a      Level * education                3.07 (0.87)    <.01
    a      Level * height                   2.53 (0.41)    <.01
    a      Level * smoking                -30.55 (6.89)    <.01
    a      Level * cardio                 -12.34 (7.36)     .09
    a      Level * diabetes               -3.83 (12.47)     .76
    a      Slope * age                     -0.13 (0.03)    <.01
    a      Slope * education               -0.09 (0.06)     .18
    a      Slope * height                  -0.04 (0.03)     .21
    a      Slope * smoking                 -0.84 (0.47)     .07
    a      Slope * cardio                   0.02 (0.52)     .96
    a      Slope * diabetes                -0.85 (1.15)     .46
    b      Level                           21.04 (0.28)    <.01
    b      Slope                           -0.29 (0.03)    <.01
    b      Level * age                     -0.29 (0.02)    <.01
    b      Level * education                0.47 (0.05)    <.01
    b      Level * height                   0.01 (0.03)     .59
    b      Level * smoking                 -0.46 (0.49)     .35
    b      Level * cardio                  -0.60 (0.48)     .21
    b      Level * diabetes                -0.94 (0.79)     .24
    b      Slope * age                      0.00 (0.00)     .96
    b      Slope * education               -0.00 (0.00)     .62
    b      Slope * height                   0.00 (0.00)     .33
    b      Slope * smoking                 -0.03 (0.04)     .43
    b      Slope * cardio                  -0.00 (0.05)     .97
    b      Slope * diabetes                -0.05 (0.08)     .53
    a      Var (Level)                 3921.81 (276.94)    <.01
    a      Var (Slope)                      1.61 (1.31)     .22
    a      Var (Residual)              2083.64 (139.15)    <.01
    b      Var (Level)                     13.88 (1.32)    <.01
    b      Var (Slope)                      0.01 (0.01)     .53
    b      Var (Residual)                  16.63 (0.66)    <.01
    a      Covar (Level, Slope)           20.74 (14.71)     .16
    b      Covar (Level, Slope)             0.10 (0.10)     .32
    \      Correlation of Levels                           0.16
    \      Correlation of Slopes                           0.10
    \      Correlation of Residuals                        0.14
    \      N                                                782
    \      occasions                                          6
    \      parameters                                        41
    \      LL                                           -23,544
    \      AIC                                           47,170
    \      BIC                                           47,361

## Summary 

 Study = _LASA_; Gender = _female_; Process (a) = _pef_

 Computed correlations:

 

label                    process_b   aehplus
----------------------  ----------  --------
Correlation of Levels       letter      0.22
Correlation of Levels        raven      0.29
Correlation of Levels      word_im      0.16




label                    process_b   aehplus
----------------------  ----------  --------
Correlation of Slopes       letter     -0.03
Correlation of Slopes        raven     -0.16
Correlation of Slopes      word_im      0.10




label                       process_b   aehplus
-------------------------  ----------  --------
Correlation of Residuals       letter      0.11
Correlation of Residuals        raven      0.00
Correlation of Residuals      word_im      0.14



P-values for corresponding covariances: 

 

label                   process_b   aehplus
---------------------  ----------  --------
Covariance of Levels       letter      0.00
Covariance of Levels        raven      0.00
Covariance of Levels      word_im      0.00




label                   process_b   aehplus
---------------------  ----------  --------
Covariance of Slopes       letter      0.91
Covariance of Slopes        raven      0.76
Covariance of Slopes      word_im      0.86




label                       process_b   aehplus
-------------------------  ----------  --------
Covariance of  Residuals       letter      0.00
Covariance of  Residuals        raven      0.85
Covariance of  Residuals      word_im      0.00



# male 

 Gender = _male_; Model type: _aehplus_;  Process (a) = _pef_; Process (b): *letter*, *raven*, *word_im*


 process   label                                         letter                      raven                    word_im             mean(sd)
---------  -------------------------  -------------------------  -------------------------  -------------------------  -------------------
   ab      Covar (Levels)                 79.73 (21.48)    <.01      44.79 (11.81)    <.01      35.22 (17.06)     .04                  ---
   ab      Covar (Slopes)                   0.16 (0.11)     .13        0.19 (0.06)    <.01        0.03 (0.11)     .81                  ---
   ab      Covar (Residuals)               14.97 (3.66)    <.01        3.44 (2.98)     .25       19.63 (5.39)    <.01                  ---
   er      Corr (Levels)                    0.16 (0.04)    <.01        0.18 (0.05)    <.01        0.10 (0.05)     .04                  ---
   er      Corr (Slopes)                    0.18 (0.12)     .13        0.54 (0.19)    <.01        0.11 (0.44)     .80                  ---
   er      Corr (Residuals)                 0.12 (0.03)    <.01        0.03 (0.03)     .25        0.10 (0.03)    <.01                  ---
    a      Level                          468.55 (6.54)    <.01      468.33 (6.54)    <.01      468.42 (6.53)    <.01         468.43(0.11)
    a      Slope                           -5.40 (0.55)    <.01       -5.30 (0.56)    <.01       -5.31 (0.54)    <.01          -5.34(0.06)
    a      Level * age                     -6.52 (0.47)    <.01       -6.51 (0.47)    <.01       -6.52 (0.47)    <.01          -6.52(0.00)
    a      Level * education                4.44 (1.11)    <.01        4.47 (1.11)    <.01        4.45 (1.11)    <.01           4.45(0.01)
    a      Level * height                   3.17 (0.50)    <.01        3.19 (0.50)    <.01        3.18 (0.50)    <.01           3.18(0.01)
    a      Level * smoking                -52.92 (7.94)    <.01      -53.26 (7.94)    <.01      -52.98 (7.93)    <.01         -53.05(0.18)
    a      Level * cardio                  -0.88 (8.45)     .92       -0.57 (8.45)     .95       -0.76 (8.45)     .93          -0.73(0.16)
    a      Level * diabetes                1.13 (14.27)     .94       1.14 (14.32)     .94       1.32 (14.25)     .93           1.20(0.11)
    a      Slope * age                     -0.16 (0.04)    <.01       -0.16 (0.04)    <.01       -0.16 (0.04)    <.01          -0.16(0.00)
    a      Slope * education               -0.05 (0.09)     .55       -0.06 (0.09)     .46       -0.06 (0.09)     .47          -0.06(0.01)
    a      Slope * height                  -0.02 (0.04)     .63       -0.03 (0.04)     .43       -0.02 (0.04)     .55          -0.02(0.01)
    a      Slope * smoking                 -1.87 (0.62)    <.01       -1.71 (0.62)    <.01       -1.86 (0.62)    <.01          -1.82(0.09)
    a      Slope * cardio                  -1.25 (0.68)     .07       -1.35 (0.68)     .05       -1.30 (0.68)     .06          -1.30(0.05)
    a      Slope * diabetes                -1.53 (1.49)     .30       -1.55 (1.47)     .29       -1.59 (1.46)     .27          -1.56(0.03)
    b      Level                           22.82 (0.35)    <.01       17.65 (0.19)    <.01       17.60 (0.28)    <.01                  ---
    b      Slope                           -0.37 (0.03)    <.01       -0.17 (0.02)    <.01       -0.20 (0.03)    <.01                  ---
    b      Level * age                     -0.31 (0.02)    <.01       -0.15 (0.01)    <.01       -0.25 (0.02)    <.01                  ---
    b      Level * education                0.76 (0.06)    <.01        0.36 (0.03)    <.01        0.41 (0.05)    <.01                  ---
    b      Level * height                   0.10 (0.03)    <.01        0.06 (0.02)    <.01        0.03 (0.02)     .25                  ---
    b      Level * smoking                 -0.71 (0.43)     .10       -0.24 (0.24)     .32       -0.38 (0.37)     .31                  ---
    b      Level * cardio                  -0.35 (0.44)     .43       -0.45 (0.25)     .07        0.08 (0.36)     .83                  ---
    b      Level * diabetes                -2.16 (0.94)     .02       -0.97 (0.50)     .05       -0.89 (0.71)     .21                  ---
    b      Slope * age                     -0.01 (0.00)    <.01       -0.01 (0.00)    <.01       -0.00 (0.00)     .23                  ---
    b      Slope * education               -0.01 (0.00)     .08       -0.00 (0.00)     .69       -0.01 (0.00)     .03                  ---
    b      Slope * height                   0.00 (0.00)     .49        0.00 (0.00)     .72        0.00 (0.00)     .43                  ---
    b      Slope * smoking                 -0.06 (0.03)     .05        0.01 (0.02)     .79       -0.03 (0.04)     .46                  ---
    b      Slope * cardio                   0.00 (0.03)     .95        0.01 (0.02)     .73        0.00 (0.04)     .92                  ---
    b      Slope * diabetes                -0.01 (0.07)     .93       -0.05 (0.05)     .35       -0.22 (0.07)    <.01                  ---
    a      Var (Level)                 9161.99 (602.59)    <.01   9164.55 (601.81)    <.01   9149.29 (602.09)    <.01        9158.61(8.17)
    a      Var (Slope)                     14.66 (3.33)    <.01       14.23 (3.27)    <.01       14.14 (3.33)    <.01          14.35(0.28)
    a      Var (Residual)              2629.74 (155.54)    <.01   2638.85 (156.43)    <.01   2638.22 (156.71)    <.01        2635.60(5.09)
    b      Var (Level)                     26.81 (1.54)    <.01        6.45 (0.52)    <.01       12.55 (1.08)    <.01                  ---
    b      Var (Slope)                      0.05 (0.01)    <.01        0.01 (0.00)     .03        0.00 (0.01)     .61                  ---
    b      Var (Residual)                   5.56 (0.29)    <.01        4.21 (0.20)    <.01       14.11 (0.58)    <.01                  ---
    a      Covar (Level, Slope)           20.00 (32.63)     .54      20.21 (32.41)     .53      22.72 (32.84)     .49          20.98(1.51)
    b      Covar (Level, Slope)            -0.18 (0.08)     .03       -0.01 (0.04)     .69        0.04 (0.07)     .55                  ---
    \      Correlation of Levels                           0.16                      0.184                       0.10           0.15(0.04)
    \      Correlation of Slopes                           0.18                      0.557                       0.11           0.28(0.24)
    \      Correlation of Residuals                        0.12                      0.033                       0.10           0.09(0.05)
    \      N                                                800                        800                        800         800.00(0.00)
    \      occasions                                          6                          6                          6           6.00(0.00)
    \      parameters                                        41                         41                         41          41.00(0.00)
    \      LL                                           -22,701                    -22,669                    -23,259   -2.287632e+04(332)
    \      AIC                                           45,483                     45,421                     46,600    4.583464e+04(663)
    \      BIC                                           45,676                     45,613                     46,792    4.602671e+04(663)

##  letter 

 Gender = _male_;  Process (a) = *pef*; Process (b) = _letter_


 process   label                                        aehplus
---------  -------------------------  -------------------------
   ab      Covar (Levels)                 79.73 (21.48)    <.01
   ab      Covar (Slopes)                   0.16 (0.11)     .13
   ab      Covar (Residuals)               14.97 (3.66)    <.01
   er      Corr (Levels)                    0.16 (0.04)    <.01
   er      Corr (Slopes)                    0.18 (0.12)     .13
   er      Corr (Residuals)                 0.12 (0.03)    <.01
    a      Level                          468.55 (6.54)    <.01
    a      Slope                           -5.40 (0.55)    <.01
    a      Level * age                     -6.52 (0.47)    <.01
    a      Level * education                4.44 (1.11)    <.01
    a      Level * height                   3.17 (0.50)    <.01
    a      Level * smoking                -52.92 (7.94)    <.01
    a      Level * cardio                  -0.88 (8.45)     .92
    a      Level * diabetes                1.13 (14.27)     .94
    a      Slope * age                     -0.16 (0.04)    <.01
    a      Slope * education               -0.05 (0.09)     .55
    a      Slope * height                  -0.02 (0.04)     .63
    a      Slope * smoking                 -1.87 (0.62)    <.01
    a      Slope * cardio                  -1.25 (0.68)     .07
    a      Slope * diabetes                -1.53 (1.49)     .30
    b      Level                           22.82 (0.35)    <.01
    b      Slope                           -0.37 (0.03)    <.01
    b      Level * age                     -0.31 (0.02)    <.01
    b      Level * education                0.76 (0.06)    <.01
    b      Level * height                   0.10 (0.03)    <.01
    b      Level * smoking                 -0.71 (0.43)     .10
    b      Level * cardio                  -0.35 (0.44)     .43
    b      Level * diabetes                -2.16 (0.94)     .02
    b      Slope * age                     -0.01 (0.00)    <.01
    b      Slope * education               -0.01 (0.00)     .08
    b      Slope * height                   0.00 (0.00)     .49
    b      Slope * smoking                 -0.06 (0.03)     .05
    b      Slope * cardio                   0.00 (0.03)     .95
    b      Slope * diabetes                -0.01 (0.07)     .93
    a      Var (Level)                 9161.99 (602.59)    <.01
    a      Var (Slope)                     14.66 (3.33)    <.01
    a      Var (Residual)              2629.74 (155.54)    <.01
    b      Var (Level)                     26.81 (1.54)    <.01
    b      Var (Slope)                      0.05 (0.01)    <.01
    b      Var (Residual)                   5.56 (0.29)    <.01
    a      Covar (Level, Slope)           20.00 (32.63)     .54
    b      Covar (Level, Slope)            -0.18 (0.08)     .03
    \      Correlation of Levels                           0.16
    \      Correlation of Slopes                           0.18
    \      Correlation of Residuals                        0.12
    \      N                                                800
    \      occasions                                          6
    \      parameters                                        41
    \      LL                                           -22,701
    \      AIC                                           45,483
    \      BIC                                           45,676

##  raven 

 Gender = _male_;  Process (a) = *pef*; Process (b) = _raven_


 process   label                                        aehplus
---------  -------------------------  -------------------------
   ab      Covar (Levels)                 44.79 (11.81)    <.01
   ab      Covar (Slopes)                   0.19 (0.06)    <.01
   ab      Covar (Residuals)                3.44 (2.98)     .25
   er      Corr (Levels)                    0.18 (0.05)    <.01
   er      Corr (Slopes)                    0.54 (0.19)    <.01
   er      Corr (Residuals)                 0.03 (0.03)     .25
    a      Level                          468.33 (6.54)    <.01
    a      Slope                           -5.30 (0.56)    <.01
    a      Level * age                     -6.51 (0.47)    <.01
    a      Level * education                4.47 (1.11)    <.01
    a      Level * height                   3.19 (0.50)    <.01
    a      Level * smoking                -53.26 (7.94)    <.01
    a      Level * cardio                  -0.57 (8.45)     .95
    a      Level * diabetes                1.14 (14.32)     .94
    a      Slope * age                     -0.16 (0.04)    <.01
    a      Slope * education               -0.06 (0.09)     .46
    a      Slope * height                  -0.03 (0.04)     .43
    a      Slope * smoking                 -1.71 (0.62)    <.01
    a      Slope * cardio                  -1.35 (0.68)     .05
    a      Slope * diabetes                -1.55 (1.47)     .29
    b      Level                           17.65 (0.19)    <.01
    b      Slope                           -0.17 (0.02)    <.01
    b      Level * age                     -0.15 (0.01)    <.01
    b      Level * education                0.36 (0.03)    <.01
    b      Level * height                   0.06 (0.02)    <.01
    b      Level * smoking                 -0.24 (0.24)     .32
    b      Level * cardio                  -0.45 (0.25)     .07
    b      Level * diabetes                -0.97 (0.50)     .05
    b      Slope * age                     -0.01 (0.00)    <.01
    b      Slope * education               -0.00 (0.00)     .69
    b      Slope * height                   0.00 (0.00)     .72
    b      Slope * smoking                  0.01 (0.02)     .79
    b      Slope * cardio                   0.01 (0.02)     .73
    b      Slope * diabetes                -0.05 (0.05)     .35
    a      Var (Level)                 9164.55 (601.81)    <.01
    a      Var (Slope)                     14.23 (3.27)    <.01
    a      Var (Residual)              2638.85 (156.43)    <.01
    b      Var (Level)                      6.45 (0.52)    <.01
    b      Var (Slope)                      0.01 (0.00)     .03
    b      Var (Residual)                   4.21 (0.20)    <.01
    a      Covar (Level, Slope)           20.21 (32.41)     .53
    b      Covar (Level, Slope)            -0.01 (0.04)     .69
    \      Correlation of Levels                          0.184
    \      Correlation of Slopes                          0.557
    \      Correlation of Residuals                       0.033
    \      N                                                800
    \      occasions                                          6
    \      parameters                                        41
    \      LL                                           -22,669
    \      AIC                                           45,421
    \      BIC                                           45,613

##  word_im 

 Gender = _male_;  Process (a) = *pef*; Process (b) = _word_im_


 process   label                                        aehplus
---------  -------------------------  -------------------------
   ab      Covar (Levels)                 35.22 (17.06)     .04
   ab      Covar (Slopes)                   0.03 (0.11)     .81
   ab      Covar (Residuals)               19.63 (5.39)    <.01
   er      Corr (Levels)                    0.10 (0.05)     .04
   er      Corr (Slopes)                    0.11 (0.44)     .80
   er      Corr (Residuals)                 0.10 (0.03)    <.01
    a      Level                          468.42 (6.53)    <.01
    a      Slope                           -5.31 (0.54)    <.01
    a      Level * age                     -6.52 (0.47)    <.01
    a      Level * education                4.45 (1.11)    <.01
    a      Level * height                   3.18 (0.50)    <.01
    a      Level * smoking                -52.98 (7.93)    <.01
    a      Level * cardio                  -0.76 (8.45)     .93
    a      Level * diabetes                1.32 (14.25)     .93
    a      Slope * age                     -0.16 (0.04)    <.01
    a      Slope * education               -0.06 (0.09)     .47
    a      Slope * height                  -0.02 (0.04)     .55
    a      Slope * smoking                 -1.86 (0.62)    <.01
    a      Slope * cardio                  -1.30 (0.68)     .06
    a      Slope * diabetes                -1.59 (1.46)     .27
    b      Level                           17.60 (0.28)    <.01
    b      Slope                           -0.20 (0.03)    <.01
    b      Level * age                     -0.25 (0.02)    <.01
    b      Level * education                0.41 (0.05)    <.01
    b      Level * height                   0.03 (0.02)     .25
    b      Level * smoking                 -0.38 (0.37)     .31
    b      Level * cardio                   0.08 (0.36)     .83
    b      Level * diabetes                -0.89 (0.71)     .21
    b      Slope * age                     -0.00 (0.00)     .23
    b      Slope * education               -0.01 (0.00)     .03
    b      Slope * height                   0.00 (0.00)     .43
    b      Slope * smoking                 -0.03 (0.04)     .46
    b      Slope * cardio                   0.00 (0.04)     .92
    b      Slope * diabetes                -0.22 (0.07)    <.01
    a      Var (Level)                 9149.29 (602.09)    <.01
    a      Var (Slope)                     14.14 (3.33)    <.01
    a      Var (Residual)              2638.22 (156.71)    <.01
    b      Var (Level)                     12.55 (1.08)    <.01
    b      Var (Slope)                      0.00 (0.01)     .61
    b      Var (Residual)                  14.11 (0.58)    <.01
    a      Covar (Level, Slope)           22.72 (32.84)     .49
    b      Covar (Level, Slope)             0.04 (0.07)     .55
    \      Correlation of Levels                           0.10
    \      Correlation of Slopes                           0.11
    \      Correlation of Residuals                        0.10
    \      N                                                800
    \      occasions                                          6
    \      parameters                                        41
    \      LL                                           -23,259
    \      AIC                                           46,600
    \      BIC                                           46,792

## Summary 

 Study = _LASA_; Gender = _male_; Process (a) = _pef_

 Computed correlations:

 

label                    process_b   aehplus
----------------------  ----------  --------
Correlation of Levels       letter      0.16
Correlation of Levels        raven      0.18
Correlation of Levels      word_im      0.10




label                    process_b   aehplus
----------------------  ----------  --------
Correlation of Slopes       letter      0.18
Correlation of Slopes        raven      0.56
Correlation of Slopes      word_im      0.11




label                       process_b   aehplus
-------------------------  ----------  --------
Correlation of Residuals       letter      0.12
Correlation of Residuals        raven      0.03
Correlation of Residuals      word_im      0.10



P-values for corresponding covariances: 

 

label                   process_b   aehplus
---------------------  ----------  --------
Covariance of Levels       letter      0.00
Covariance of Levels        raven      0.00
Covariance of Levels      word_im      0.04




label                   process_b   aehplus
---------------------  ----------  --------
Covariance of Slopes       letter      0.13
Covariance of Slopes        raven      0.00
Covariance of Slopes      word_im      0.81




label                       process_b   aehplus
-------------------------  ----------  --------
Covariance of  Residuals       letter      0.00
Covariance of  Residuals        raven      0.25
Covariance of  Residuals      word_im      0.00


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
