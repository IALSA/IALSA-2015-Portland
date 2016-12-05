# ELSA : Seed report
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

 Study **ELSA** have contributed the following outcome pairs to the IASLA-2015-Portland model pool: 
NULL



process_a   process_b    n_models
----------  ----------  ---------
fev100      word_de             2
fev100      word_im             2




study_name   subgroup   model_type   process_a   process_b    n_models
-----------  ---------  -----------  ----------  ----------  ---------
elsa         female     aehplus      fev100      word_de             1
elsa         female     aehplus      fev100      word_im             1




study_name   subgroup   model_type   process_a   process_b    n_models
-----------  ---------  -----------  ----------  ----------  ---------
elsa         male       aehplus      fev100      word_de             1
elsa         male       aehplus      fev100      word_im             1


# female 

 Gender = _female_; Model type: _aehplus_;  Process (a) = _fev100_; Process (b): *word_de*, *word_im*


 process   label                                        word_de                    word_im               mean(sd)
---------  -------------------------  -------------------------  -------------------------  ---------------------
   ab      Covar (Levels)                   2.57 (1.83)     .16        2.90 (1.57)     .06                    ---
   ab      Covar (Slopes)                  -0.01 (0.03)     .80       -0.01 (0.02)     .79                    ---
   ab      Covar (Residuals)                0.41 (1.20)     .73        0.90 (0.97)     .35                    ---
   er      Corr (Levels)                    0.06 (0.04)     .16        0.08 (0.04)     .06                    ---
   er      Corr (Slopes)                   -0.36 (1.64)     .83       -0.14 (0.56)     .80                    ---
   er      Corr (Residuals)                 0.01 (0.03)     .73        0.02 (0.02)     .35                    ---
    a      Level                          188.74 (1.69)    <.01      188.71 (1.70)    <.01           188.73(0.02)
    a      Slope                           -2.08 (0.19)    <.01       -2.09 (0.19)    <.01            -2.09(0.00)
    a      Level * age                     -2.62 (0.10)    <.01       -2.62 (0.10)    <.01            -2.62(0.00)
    a      Level * education                9.83 (1.80)    <.01        9.85 (1.80)    <.01             9.84(0.01)
    a      Level * height                   2.74 (0.15)    <.01        2.74 (0.15)    <.01             2.74(0.00)
    a      Level * smoking                -10.77 (1.71)    <.01      -10.76 (1.71)    <.01           -10.76(0.01)
    a      Level * cardio                 -12.53 (3.10)    <.01      -12.52 (3.10)    <.01           -12.53(0.01)
    a      Level * diabetes                -4.05 (3.83)     .29       -4.07 (3.83)     .29            -4.06(0.01)
    a      Slope * age                     -0.01 (0.01)     .37       -0.01 (0.01)     .37            -0.01(0.00)
    a      Slope * education                0.06 (0.21)     .76        0.08 (0.21)     .70             0.07(0.01)
    a      Slope * height                  -0.04 (0.02)     .02       -0.04 (0.02)     .01            -0.04(0.00)
    a      Slope * smoking                 -0.15 (0.20)     .45       -0.16 (0.20)     .43            -0.15(0.01)
    a      Slope * cardio                   0.14 (0.47)     .76        0.14 (0.47)     .77             0.14(0.01)
    a      Slope * diabetes                -0.16 (0.55)     .76       -0.16 (0.54)     .77            -0.16(0.01)
    b      Level                            3.93 (0.06)    <.01        5.33 (0.06)    <.01                    ---
    b      Slope                           -0.04 (0.01)    <.01       -0.04 (0.01)    <.01                    ---
    b      Level * age                     -0.07 (0.00)    <.01       -0.06 (0.00)    <.01                    ---
    b      Level * education                1.02 (0.07)    <.01        0.72 (0.06)    <.01                    ---
    b      Level * height                   0.01 (0.00)    <.01        0.01 (0.00)     .18                    ---
    b      Level * smoking                 -0.22 (0.06)    <.01       -0.05 (0.06)     .36                    ---
    b      Level * cardio                  -0.11 (0.13)     .39       -0.17 (0.12)     .15                    ---
    b      Level * diabetes                -0.29 (0.17)     .09       -0.21 (0.15)     .15                    ---
    b      Slope * age                     -0.00 (0.00)    <.01       -0.00 (0.00)    <.01                    ---
    b      Slope * education               -0.01 (0.01)     .29        0.01 (0.01)     .20                    ---
    b      Slope * height                   0.00 (0.00)     .78        0.00 (0.00)     .13                    ---
    b      Slope * smoking                  0.02 (0.01)     .04       -0.00 (0.01)     .66                    ---
    b      Slope * cardio                  -0.01 (0.02)     .52        0.01 (0.02)     .73                    ---
    b      Slope * diabetes                 0.00 (0.02)     .90        0.00 (0.02)     .82                    ---
    a      Var (Level)                 1360.77 (109.43)    <.01   1360.58 (109.51)    <.01          1360.67(0.13)
    a      Var (Slope)                      0.89 (2.14)     .68        0.86 (2.14)     .69             0.87(0.02)
    a      Var (Residual)              1028.77 (102.06)    <.01   1029.49 (102.16)    <.01          1029.13(0.51)
    b      Var (Level)                      1.41 (0.10)    <.01        0.94 (0.09)    <.01                    ---
    b      Var (Slope)                      0.00 (0.00)     .80        0.00 (0.00)     .12                    ---
    b      Var (Residual)                   1.91 (0.07)    <.01        1.62 (0.06)    <.01                    ---
    a      Covar (Level, Slope)           -6.30 (12.84)     .62      -5.92 (12.85)     .64            -6.11(0.26)
    b      Covar (Level, Slope)             0.02 (0.01)     .15       -0.01 (0.01)     .46                    ---
    \      Correlation of Levels                         0.0586                      0.081             0.07(0.02)
    \      Correlation of Slopes                        -0.2683                     -0.138            -0.20(0.09)
    \      Correlation of Residuals                      0.0093                      0.022             0.02(0.01)
    \      N                                              3,228                      3,227          3227.50(0.71)
    \      occasions                                          6                          6             6.00(0.00)
    \      parameters                                        41                         41            41.00(0.00)
    \      LL                                           -50,805                    -49,896   -5.035017e+04(  643)
    \      AIC                                          101,692                     99,873    1.007823e+05(1,286)
    \      BIC                                          101,941                    100,122    1.010316e+05(1,286)

##  word_de 

 Gender = _female_;  Process (a) = *fev100*; Process (b) = _word_de_


 process   label                                        aehplus
---------  -------------------------  -------------------------
   ab      Covar (Levels)                   2.57 (1.83)     .16
   ab      Covar (Slopes)                  -0.01 (0.03)     .80
   ab      Covar (Residuals)                0.41 (1.20)     .73
   er      Corr (Levels)                    0.06 (0.04)     .16
   er      Corr (Slopes)                   -0.36 (1.64)     .83
   er      Corr (Residuals)                 0.01 (0.03)     .73
    a      Level                          188.74 (1.69)    <.01
    a      Slope                           -2.08 (0.19)    <.01
    a      Level * age                     -2.62 (0.10)    <.01
    a      Level * education                9.83 (1.80)    <.01
    a      Level * height                   2.74 (0.15)    <.01
    a      Level * smoking                -10.77 (1.71)    <.01
    a      Level * cardio                 -12.53 (3.10)    <.01
    a      Level * diabetes                -4.05 (3.83)     .29
    a      Slope * age                     -0.01 (0.01)     .37
    a      Slope * education                0.06 (0.21)     .76
    a      Slope * height                  -0.04 (0.02)     .02
    a      Slope * smoking                 -0.15 (0.20)     .45
    a      Slope * cardio                   0.14 (0.47)     .76
    a      Slope * diabetes                -0.16 (0.55)     .76
    b      Level                            3.93 (0.06)    <.01
    b      Slope                           -0.04 (0.01)    <.01
    b      Level * age                     -0.07 (0.00)    <.01
    b      Level * education                1.02 (0.07)    <.01
    b      Level * height                   0.01 (0.00)    <.01
    b      Level * smoking                 -0.22 (0.06)    <.01
    b      Level * cardio                  -0.11 (0.13)     .39
    b      Level * diabetes                -0.29 (0.17)     .09
    b      Slope * age                     -0.00 (0.00)    <.01
    b      Slope * education               -0.01 (0.01)     .29
    b      Slope * height                   0.00 (0.00)     .78
    b      Slope * smoking                  0.02 (0.01)     .04
    b      Slope * cardio                  -0.01 (0.02)     .52
    b      Slope * diabetes                 0.00 (0.02)     .90
    a      Var (Level)                 1360.77 (109.43)    <.01
    a      Var (Slope)                      0.89 (2.14)     .68
    a      Var (Residual)              1028.77 (102.06)    <.01
    b      Var (Level)                      1.41 (0.10)    <.01
    b      Var (Slope)                      0.00 (0.00)     .80
    b      Var (Residual)                   1.91 (0.07)    <.01
    a      Covar (Level, Slope)           -6.30 (12.84)     .62
    b      Covar (Level, Slope)             0.02 (0.01)     .15
    \      Correlation of Levels                         0.0586
    \      Correlation of Slopes                        -0.2683
    \      Correlation of Residuals                      0.0093
    \      N                                              3,228
    \      occasions                                          6
    \      parameters                                        41
    \      LL                                           -50,805
    \      AIC                                          101,692
    \      BIC                                          101,941

##  word_im 

 Gender = _female_;  Process (a) = *fev100*; Process (b) = _word_im_


 process   label                                        aehplus
---------  -------------------------  -------------------------
   ab      Covar (Levels)                   2.90 (1.57)     .06
   ab      Covar (Slopes)                  -0.01 (0.02)     .79
   ab      Covar (Residuals)                0.90 (0.97)     .35
   er      Corr (Levels)                    0.08 (0.04)     .06
   er      Corr (Slopes)                   -0.14 (0.56)     .80
   er      Corr (Residuals)                 0.02 (0.02)     .35
    a      Level                          188.71 (1.70)    <.01
    a      Slope                           -2.09 (0.19)    <.01
    a      Level * age                     -2.62 (0.10)    <.01
    a      Level * education                9.85 (1.80)    <.01
    a      Level * height                   2.74 (0.15)    <.01
    a      Level * smoking                -10.76 (1.71)    <.01
    a      Level * cardio                 -12.52 (3.10)    <.01
    a      Level * diabetes                -4.07 (3.83)     .29
    a      Slope * age                     -0.01 (0.01)     .37
    a      Slope * education                0.08 (0.21)     .70
    a      Slope * height                  -0.04 (0.02)     .01
    a      Slope * smoking                 -0.16 (0.20)     .43
    a      Slope * cardio                   0.14 (0.47)     .77
    a      Slope * diabetes                -0.16 (0.54)     .77
    b      Level                            5.33 (0.06)    <.01
    b      Slope                           -0.04 (0.01)    <.01
    b      Level * age                     -0.06 (0.00)    <.01
    b      Level * education                0.72 (0.06)    <.01
    b      Level * height                   0.01 (0.00)     .18
    b      Level * smoking                 -0.05 (0.06)     .36
    b      Level * cardio                  -0.17 (0.12)     .15
    b      Level * diabetes                -0.21 (0.15)     .15
    b      Slope * age                     -0.00 (0.00)    <.01
    b      Slope * education                0.01 (0.01)     .20
    b      Slope * height                   0.00 (0.00)     .13
    b      Slope * smoking                 -0.00 (0.01)     .66
    b      Slope * cardio                   0.01 (0.02)     .73
    b      Slope * diabetes                 0.00 (0.02)     .82
    a      Var (Level)                 1360.58 (109.51)    <.01
    a      Var (Slope)                      0.86 (2.14)     .69
    a      Var (Residual)              1029.49 (102.16)    <.01
    b      Var (Level)                      0.94 (0.09)    <.01
    b      Var (Slope)                      0.00 (0.00)     .12
    b      Var (Residual)                   1.62 (0.06)    <.01
    a      Covar (Level, Slope)           -5.92 (12.85)     .64
    b      Covar (Level, Slope)            -0.01 (0.01)     .46
    \      Correlation of Levels                          0.081
    \      Correlation of Slopes                         -0.138
    \      Correlation of Residuals                       0.022
    \      N                                              3,227
    \      occasions                                          6
    \      parameters                                        41
    \      LL                                           -49,896
    \      AIC                                           99,873
    \      BIC                                          100,122

## Summary 

 Study = _ELSA_; Gender = _female_; Process (a) = _fev100_

 Computed correlations:

 

label                    process_b   aehplus
----------------------  ----------  --------
Correlation of Levels      word_de      0.06
Correlation of Levels      word_im      0.08




label                    process_b   aehplus
----------------------  ----------  --------
Correlation of Slopes      word_de     -0.27
Correlation of Slopes      word_im     -0.14




label                       process_b   aehplus
-------------------------  ----------  --------
Correlation of Residuals      word_de      0.01
Correlation of Residuals      word_im      0.02



P-values for corresponding covariances: 

 

label                   process_b   aehplus
---------------------  ----------  --------
Covariance of Levels      word_de      0.16
Covariance of Levels      word_im      0.06




label                   process_b   aehplus
---------------------  ----------  --------
Covariance of Slopes      word_de      0.80
Covariance of Slopes      word_im      0.79




label                       process_b   aehplus
-------------------------  ----------  --------
Covariance of  Residuals      word_de      0.73
Covariance of  Residuals      word_im      0.35



# male 

 Gender = _male_; Model type: _aehplus_;  Process (a) = _fev100_; Process (b): *word_de*, *word_im*


 process   label                                        word_de                    word_im               mean(sd)
---------  -------------------------  -------------------------  -------------------------  ---------------------
   ab      Covar (Levels)                   3.57 (2.66)     .18        3.39 (2.21)     .12                    ---
   ab      Covar (Slopes)                  -0.02 (0.03)     .54       -0.02 (0.03)     .54                    ---
   ab      Covar (Residuals)                1.41 (1.42)     .32        2.09 (1.22)     .09                    ---
   er      Corr (Levels)                    0.05 (0.04)     .18        0.06 (0.04)     .13                    ---
   er      Corr (Slopes)                   -0.18 (0.32)     .57       -0.11 (0.18)     .55                    ---
   er      Corr (Residuals)                 0.02 (0.02)     .33        0.04 (0.02)     .09                    ---
    a      Level                          263.49 (3.21)    <.01      263.55 (3.21)    <.01           263.52(0.04)
    a      Slope                           -2.12 (0.45)    <.01       -2.11 (0.44)    <.01            -2.11(0.01)
    a      Level * age                     -3.40 (0.15)    <.01       -3.40 (0.15)    <.01            -3.40(0.00)
    a      Level * education               19.88 (2.90)    <.01       19.81 (2.90)    <.01            19.84(0.05)
    a      Level * height                   3.37 (0.21)    <.01        3.38 (0.21)    <.01             3.37(0.00)
    a      Level * smoking                -21.31 (2.84)    <.01      -21.30 (2.85)    <.01           -21.31(0.00)
    a      Level * cardio                 -19.89 (3.90)    <.01      -19.91 (3.90)    <.01           -19.90(0.01)
    a      Level * diabetes                -6.24 (4.70)     .18       -6.27 (4.70)     .18            -6.26(0.02)
    a      Slope * age                     -0.01 (0.02)     .61       -0.01 (0.02)     .60            -0.01(0.00)
    a      Slope * education               -0.68 (0.36)     .06       -0.68 (0.36)     .06            -0.68(0.00)
    a      Slope * height                   0.00 (0.02)     .89        0.00 (0.02)     .94             0.00(0.00)
    a      Slope * smoking                  0.28 (0.34)     .41        0.29 (0.34)     .40             0.29(0.01)
    a      Slope * cardio                   0.26 (0.50)     .60        0.26 (0.50)     .60             0.26(0.00)
    a      Slope * diabetes                -1.47 (0.62)     .02       -1.46 (0.62)     .02            -1.47(0.01)
    b      Level                            3.27 (0.08)    <.01        4.88 (0.07)    <.01                    ---
    b      Slope                            0.01 (0.01)     .50       -0.03 (0.01)     .01                    ---
    b      Level * age                     -0.07 (0.00)    <.01       -0.05 (0.00)    <.01                    ---
    b      Level * education                0.94 (0.07)    <.01        0.77 (0.06)    <.01                    ---
    b      Level * height                   0.02 (0.00)    <.01        0.01 (0.00)     .01                    ---
    b      Level * smoking                  0.04 (0.07)     .61        0.01 (0.06)     .88                    ---
    b      Level * cardio                  -0.06 (0.10)     .58       -0.19 (0.09)     .04                    ---
    b      Level * diabetes                -0.32 (0.11)    <.01       -0.16 (0.11)     .12                    ---
    b      Slope * age                     -0.00 (0.00)    <.01       -0.00 (0.00)    <.01                    ---
    b      Slope * education               -0.01 (0.01)     .20        0.00 (0.01)     .89                    ---
    b      Slope * height                   0.00 (0.00)     .84        0.00 (0.00)     .05                    ---
    b      Slope * smoking                 -0.02 (0.01)     .02       -0.02 (0.01)     .02                    ---
    b      Slope * cardio                  -0.03 (0.01)     .04        0.00 (0.01)     .98                    ---
    b      Slope * diabetes                -0.01 (0.02)     .50       -0.00 (0.02)     .88                    ---
    a      Var (Level)                 3273.17 (227.38)    <.01   3273.50 (227.50)    <.01          3273.33(0.24)
    a      Var (Slope)                      9.53 (4.20)     .02        9.59 (4.21)     .02             9.56(0.04)
    a      Var (Residual)              1872.57 (177.52)    <.01   1872.26 (177.47)    <.01          1872.42(0.22)
    b      Var (Level)                      1.32 (0.10)    <.01        0.97 (0.08)    <.01                    ---
    b      Var (Slope)                      0.00 (0.00)     .47        0.00 (0.00)     .02                    ---
    b      Var (Residual)                   1.77 (0.06)    <.01        1.39 (0.06)    <.01                    ---
    a      Covar (Level, Slope)          -78.40 (25.96)    <.01     -78.90 (26.04)    <.01           -78.65(0.35)
    b      Covar (Level, Slope)            -0.00 (0.01)     .89       -0.02 (0.01)     .07                    ---
    \      Correlation of Levels                          0.054                      0.060             0.06(0.00)
    \      Correlation of Slopes                         -0.205                     -0.107            -0.16(0.07)
    \      Correlation of Residuals                       0.024                      0.041             0.03(0.01)
    \      N                                              2,904                      2,902          2903.00(1.41)
    \      occasions                                          6                          6             6.00(0.00)
    \      parameters                                        41                         41            41.00(0.00)
    \      LL                                           -47,112                    -46,253   -4.668271e+04(  607)
    \      AIC                                           94,306                     92,588    9.344743e+04(1,215)
    \      BIC                                           94,551                     92,833    9.369234e+04(1,215)

##  word_de 

 Gender = _male_;  Process (a) = *fev100*; Process (b) = _word_de_


 process   label                                        aehplus
---------  -------------------------  -------------------------
   ab      Covar (Levels)                   3.57 (2.66)     .18
   ab      Covar (Slopes)                  -0.02 (0.03)     .54
   ab      Covar (Residuals)                1.41 (1.42)     .32
   er      Corr (Levels)                    0.05 (0.04)     .18
   er      Corr (Slopes)                   -0.18 (0.32)     .57
   er      Corr (Residuals)                 0.02 (0.02)     .33
    a      Level                          263.49 (3.21)    <.01
    a      Slope                           -2.12 (0.45)    <.01
    a      Level * age                     -3.40 (0.15)    <.01
    a      Level * education               19.88 (2.90)    <.01
    a      Level * height                   3.37 (0.21)    <.01
    a      Level * smoking                -21.31 (2.84)    <.01
    a      Level * cardio                 -19.89 (3.90)    <.01
    a      Level * diabetes                -6.24 (4.70)     .18
    a      Slope * age                     -0.01 (0.02)     .61
    a      Slope * education               -0.68 (0.36)     .06
    a      Slope * height                   0.00 (0.02)     .89
    a      Slope * smoking                  0.28 (0.34)     .41
    a      Slope * cardio                   0.26 (0.50)     .60
    a      Slope * diabetes                -1.47 (0.62)     .02
    b      Level                            3.27 (0.08)    <.01
    b      Slope                            0.01 (0.01)     .50
    b      Level * age                     -0.07 (0.00)    <.01
    b      Level * education                0.94 (0.07)    <.01
    b      Level * height                   0.02 (0.00)    <.01
    b      Level * smoking                  0.04 (0.07)     .61
    b      Level * cardio                  -0.06 (0.10)     .58
    b      Level * diabetes                -0.32 (0.11)    <.01
    b      Slope * age                     -0.00 (0.00)    <.01
    b      Slope * education               -0.01 (0.01)     .20
    b      Slope * height                   0.00 (0.00)     .84
    b      Slope * smoking                 -0.02 (0.01)     .02
    b      Slope * cardio                  -0.03 (0.01)     .04
    b      Slope * diabetes                -0.01 (0.02)     .50
    a      Var (Level)                 3273.17 (227.38)    <.01
    a      Var (Slope)                      9.53 (4.20)     .02
    a      Var (Residual)              1872.57 (177.52)    <.01
    b      Var (Level)                      1.32 (0.10)    <.01
    b      Var (Slope)                      0.00 (0.00)     .47
    b      Var (Residual)                   1.77 (0.06)    <.01
    a      Covar (Level, Slope)          -78.40 (25.96)    <.01
    b      Covar (Level, Slope)            -0.00 (0.01)     .89
    \      Correlation of Levels                          0.054
    \      Correlation of Slopes                         -0.205
    \      Correlation of Residuals                       0.024
    \      N                                              2,904
    \      occasions                                          6
    \      parameters                                        41
    \      LL                                           -47,112
    \      AIC                                           94,306
    \      BIC                                           94,551

##  word_im 

 Gender = _male_;  Process (a) = *fev100*; Process (b) = _word_im_


 process   label                                        aehplus
---------  -------------------------  -------------------------
   ab      Covar (Levels)                   3.39 (2.21)     .12
   ab      Covar (Slopes)                  -0.02 (0.03)     .54
   ab      Covar (Residuals)                2.09 (1.22)     .09
   er      Corr (Levels)                    0.06 (0.04)     .13
   er      Corr (Slopes)                   -0.11 (0.18)     .55
   er      Corr (Residuals)                 0.04 (0.02)     .09
    a      Level                          263.55 (3.21)    <.01
    a      Slope                           -2.11 (0.44)    <.01
    a      Level * age                     -3.40 (0.15)    <.01
    a      Level * education               19.81 (2.90)    <.01
    a      Level * height                   3.38 (0.21)    <.01
    a      Level * smoking                -21.30 (2.85)    <.01
    a      Level * cardio                 -19.91 (3.90)    <.01
    a      Level * diabetes                -6.27 (4.70)     .18
    a      Slope * age                     -0.01 (0.02)     .60
    a      Slope * education               -0.68 (0.36)     .06
    a      Slope * height                   0.00 (0.02)     .94
    a      Slope * smoking                  0.29 (0.34)     .40
    a      Slope * cardio                   0.26 (0.50)     .60
    a      Slope * diabetes                -1.46 (0.62)     .02
    b      Level                            4.88 (0.07)    <.01
    b      Slope                           -0.03 (0.01)     .01
    b      Level * age                     -0.05 (0.00)    <.01
    b      Level * education                0.77 (0.06)    <.01
    b      Level * height                   0.01 (0.00)     .01
    b      Level * smoking                  0.01 (0.06)     .88
    b      Level * cardio                  -0.19 (0.09)     .04
    b      Level * diabetes                -0.16 (0.11)     .12
    b      Slope * age                     -0.00 (0.00)    <.01
    b      Slope * education                0.00 (0.01)     .89
    b      Slope * height                   0.00 (0.00)     .05
    b      Slope * smoking                 -0.02 (0.01)     .02
    b      Slope * cardio                   0.00 (0.01)     .98
    b      Slope * diabetes                -0.00 (0.02)     .88
    a      Var (Level)                 3273.50 (227.50)    <.01
    a      Var (Slope)                      9.59 (4.21)     .02
    a      Var (Residual)              1872.26 (177.47)    <.01
    b      Var (Level)                      0.97 (0.08)    <.01
    b      Var (Slope)                      0.00 (0.00)     .02
    b      Var (Residual)                   1.39 (0.06)    <.01
    a      Covar (Level, Slope)          -78.90 (26.04)    <.01
    b      Covar (Level, Slope)            -0.02 (0.01)     .07
    \      Correlation of Levels                          0.060
    \      Correlation of Slopes                         -0.107
    \      Correlation of Residuals                       0.041
    \      N                                              2,902
    \      occasions                                          6
    \      parameters                                        41
    \      LL                                           -46,253
    \      AIC                                           92,588
    \      BIC                                           92,833

## Summary 

 Study = _ELSA_; Gender = _male_; Process (a) = _fev100_

 Computed correlations:

 

label                    process_b   aehplus
----------------------  ----------  --------
Correlation of Levels      word_de      0.05
Correlation of Levels      word_im      0.06




label                    process_b   aehplus
----------------------  ----------  --------
Correlation of Slopes      word_de     -0.20
Correlation of Slopes      word_im     -0.11




label                       process_b   aehplus
-------------------------  ----------  --------
Correlation of Residuals      word_de      0.02
Correlation of Residuals      word_im      0.04



P-values for corresponding covariances: 

 

label                   process_b   aehplus
---------------------  ----------  --------
Covariance of Levels      word_de      0.18
Covariance of Levels      word_im      0.12




label                   process_b   aehplus
---------------------  ----------  --------
Covariance of Slopes      word_de      0.54
Covariance of Slopes      word_im      0.54




label                       process_b   aehplus
-------------------------  ----------  --------
Covariance of  Residuals      word_de      0.32
Covariance of  Residuals      word_im      0.09


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
