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
gait        letter              2
gait        raven               2
gait        word_im             2




study_name   subgroup   model_type   process_a   process_b    n_models
-----------  ---------  -----------  ----------  ----------  ---------
lasa         female     aehplus      gait        letter              1
lasa         female     aehplus      gait        raven               1
lasa         female     aehplus      gait        word_im             1




study_name   subgroup   model_type   process_a   process_b    n_models
-----------  ---------  -----------  ----------  ----------  ---------
lasa         male       aehplus      gait        letter              1
lasa         male       aehplus      gait        raven               1
lasa         male       aehplus      gait        word_im             1


# female 

 Gender = _female_; Model type: _aehplus_;  Process (a) = _gait_; Process (b): *letter*, *raven*, *word_im*


 process   label                                     letter                  raven                word_im               mean(sd)
---------  -------------------------  ---------------------  ---------------------  ---------------------  ---------------------
   ab      Covar (Levels)              -2.62 (0.98)     .01   -0.95 (0.42)     .02   -1.74 (0.67)     .01                    ---
   ab      Covar (Slopes)              -0.02 (0.01)     .09   -0.02 (0.01)     .02   -0.01 (0.01)     .21                    ---
   ab      Covar (Residuals)           -0.47 (0.20)     .02    0.25 (0.28)     .37   -0.37 (0.28)     .19                    ---
   er      Corr (Levels)               -0.32 (0.12)     .01   -0.25 (0.15)     .10   -0.31 (0.18)     .08                    ---
   er      Corr (Slopes)               -0.24 (0.11)     .02   -0.53 (0.18)    <.01   -0.28 (0.19)     .13                    ---
   er      Corr (Residuals)            -0.05 (0.02)     .02    0.03 (0.04)     .40   -0.02 (0.02)     .21                    ---
    a      Level                        7.76 (0.17)    <.01    7.78 (0.17)    <.01    7.77 (0.17)    <.01             7.77(0.01)
    a      Slope                        0.42 (0.05)    <.01    0.42 (0.05)    <.01    0.42 (0.05)    <.01             0.42(0.00)
    a      Level * age                  0.14 (0.02)    <.01    0.14 (0.02)    <.01    0.14 (0.02)    <.01             0.14(0.00)
    a      Level * education           -0.05 (0.04)     .17   -0.05 (0.04)     .16   -0.05 (0.04)     .17            -0.05(0.00)
    a      Level * height              -0.02 (0.02)     .25   -0.02 (0.02)     .24   -0.02 (0.02)     .23            -0.02(0.00)
    a      Level * smoking              0.29 (0.28)     .30    0.29 (0.28)     .29    0.29 (0.28)     .30             0.29(0.00)
    a      Level * cardio               1.16 (0.34)    <.01    1.16 (0.34)    <.01    1.16 (0.34)    <.01             1.16(0.00)
    a      Level * diabetes             1.82 (0.86)     .04    1.85 (0.86)     .03    1.82 (0.86)     .03             1.83(0.02)
    a      Slope * age                  0.04 (0.01)    <.01    0.04 (0.01)    <.01    0.04 (0.01)    <.01             0.04(0.00)
    a      Slope * education           -0.01 (0.01)     .38   -0.01 (0.01)     .42   -0.01 (0.01)     .39            -0.01(0.00)
    a      Slope * height               0.01 (0.00)     .01    0.01 (0.00)     .01    0.01 (0.00)     .01             0.01(0.00)
    a      Slope * smoking              0.07 (0.05)     .15    0.07 (0.05)     .19    0.07 (0.05)     .16             0.07(0.00)
    a      Slope * cardio               0.01 (0.06)     .81    0.01 (0.06)     .86    0.01 (0.06)     .87             0.01(0.00)
    a      Slope * diabetes             0.15 (0.15)     .33    0.13 (0.16)     .40    0.15 (0.16)     .35             0.14(0.01)
    b      Level                       24.30 (0.35)    <.01   17.80 (0.17)    <.01   21.11 (0.27)    <.01                    ---
    b      Slope                       -0.35 (0.02)    <.01   -0.16 (0.02)    <.01   -0.31 (0.03)    <.01                    ---
    b      Level * age                 -0.33 (0.03)    <.01   -0.15 (0.01)    <.01   -0.28 (0.02)    <.01                    ---
    b      Level * education            0.85 (0.07)    <.01    0.40 (0.03)    <.01    0.48 (0.05)    <.01                    ---
    b      Level * height               0.08 (0.03)     .01    0.01 (0.02)     .61    0.01 (0.03)     .60                    ---
    b      Level * smoking             -0.64 (0.54)     .24   -0.68 (0.28)     .02   -0.50 (0.49)     .30                    ---
    b      Level * cardio              -1.05 (0.55)     .06   -0.04 (0.29)     .90   -0.59 (0.47)     .22                    ---
    b      Level * diabetes            -0.79 (1.00)     .43   -0.84 (0.57)     .14   -0.98 (0.76)     .20                    ---
    b      Slope * age                 -0.01 (0.00)    <.01   -0.00 (0.00)    <.01   -0.00 (0.00)     .11                    ---
    b      Slope * education           -0.00 (0.00)     .29    0.00 (0.00)     .51   -0.01 (0.00)     .23                    ---
    b      Slope * height              -0.00 (0.00)     .66   -0.00 (0.00)     .71    0.00 (0.00)     .21                    ---
    b      Slope * smoking              0.01 (0.03)     .72    0.02 (0.02)     .26   -0.04 (0.04)     .29                    ---
    b      Slope * cardio               0.01 (0.04)     .78   -0.04 (0.02)     .10   -0.00 (0.04)     .95                    ---
    b      Slope * diabetes            -0.10 (0.09)     .28   -0.08 (0.05)     .12   -0.04 (0.07)     .56                    ---
    a      Var (Level)                  2.30 (2.19)     .29    2.52 (2.32)     .28    2.26 (2.19)     .30             2.36(0.14)
    a      Var (Slope)                  0.18 (0.09)     .06    0.18 (0.10)     .06    0.18 (0.09)     .06             0.18(0.00)
    a      Var (Residual)              14.76 (3.92)    <.01   14.60 (3.90)    <.01   14.75 (3.93)    <.01            14.70(0.08)
    b      Var (Level)                 29.14 (1.52)    <.01    5.98 (0.44)    <.01   13.63 (1.27)    <.01                    ---
    b      Var (Slope)                  0.04 (0.01)    <.01    0.01 (0.00)     .05    0.02 (0.01)     .07                    ---
    b      Var (Residual)               5.93 (0.24)    <.01    5.14 (0.21)    <.01   16.21 (0.59)    <.01                    ---
    a      Covar (Level, Slope)         0.58 (0.38)     .13    0.55 (0.40)     .17    0.58 (0.38)     .13             0.57(0.02)
    b      Covar (Level, Slope)        -0.14 (0.07)     .06    0.00 (0.03)     .93    0.14 (0.08)     .08                    ---
    \      Correlation of Levels                      -0.32                 -0.246                 -0.313            -0.29(0.04)
    \      Correlation of Slopes                      -0.24                 -0.521                 -0.281            -0.35(0.15)
    \      Correlation of Residuals                   -0.05                  0.029                 -0.024            -0.01(0.04)
    \      N                                            782                    782                    782           782.00(0.00)
    \      occasions                                      6                      6                      6             6.00(0.00)
    \      parameters                                    41                     41                     41            41.00(0.00)
    \      LL                                       -19,072                -19,210                -20,099   -1.946008e+04(  557)
    \      AIC                                       38,225                 38,502                 40,280    3.900216e+04(1,115)
    \      BIC                                       38,416                 38,693                 40,471    3.919330e+04(1,115)

##  letter 

 Gender = _female_;  Process (a) = *gait*; Process (b) = _letter_


 process   label                                    aehplus
---------  -------------------------  ---------------------
   ab      Covar (Levels)              -2.62 (0.98)     .01
   ab      Covar (Slopes)              -0.02 (0.01)     .09
   ab      Covar (Residuals)           -0.47 (0.20)     .02
   er      Corr (Levels)               -0.32 (0.12)     .01
   er      Corr (Slopes)               -0.24 (0.11)     .02
   er      Corr (Residuals)            -0.05 (0.02)     .02
    a      Level                        7.76 (0.17)    <.01
    a      Slope                        0.42 (0.05)    <.01
    a      Level * age                  0.14 (0.02)    <.01
    a      Level * education           -0.05 (0.04)     .17
    a      Level * height              -0.02 (0.02)     .25
    a      Level * smoking              0.29 (0.28)     .30
    a      Level * cardio               1.16 (0.34)    <.01
    a      Level * diabetes             1.82 (0.86)     .04
    a      Slope * age                  0.04 (0.01)    <.01
    a      Slope * education           -0.01 (0.01)     .38
    a      Slope * height               0.01 (0.00)     .01
    a      Slope * smoking              0.07 (0.05)     .15
    a      Slope * cardio               0.01 (0.06)     .81
    a      Slope * diabetes             0.15 (0.15)     .33
    b      Level                       24.30 (0.35)    <.01
    b      Slope                       -0.35 (0.02)    <.01
    b      Level * age                 -0.33 (0.03)    <.01
    b      Level * education            0.85 (0.07)    <.01
    b      Level * height               0.08 (0.03)     .01
    b      Level * smoking             -0.64 (0.54)     .24
    b      Level * cardio              -1.05 (0.55)     .06
    b      Level * diabetes            -0.79 (1.00)     .43
    b      Slope * age                 -0.01 (0.00)    <.01
    b      Slope * education           -0.00 (0.00)     .29
    b      Slope * height              -0.00 (0.00)     .66
    b      Slope * smoking              0.01 (0.03)     .72
    b      Slope * cardio               0.01 (0.04)     .78
    b      Slope * diabetes            -0.10 (0.09)     .28
    a      Var (Level)                  2.30 (2.19)     .29
    a      Var (Slope)                  0.18 (0.09)     .06
    a      Var (Residual)              14.76 (3.92)    <.01
    b      Var (Level)                 29.14 (1.52)    <.01
    b      Var (Slope)                  0.04 (0.01)    <.01
    b      Var (Residual)               5.93 (0.24)    <.01
    a      Covar (Level, Slope)         0.58 (0.38)     .13
    b      Covar (Level, Slope)        -0.14 (0.07)     .06
    \      Correlation of Levels                      -0.32
    \      Correlation of Slopes                      -0.24
    \      Correlation of Residuals                   -0.05
    \      N                                            782
    \      occasions                                      6
    \      parameters                                    41
    \      LL                                       -19,072
    \      AIC                                       38,225
    \      BIC                                       38,416

##  raven 

 Gender = _female_;  Process (a) = *gait*; Process (b) = _raven_


 process   label                                    aehplus
---------  -------------------------  ---------------------
   ab      Covar (Levels)              -0.95 (0.42)     .02
   ab      Covar (Slopes)              -0.02 (0.01)     .02
   ab      Covar (Residuals)            0.25 (0.28)     .37
   er      Corr (Levels)               -0.25 (0.15)     .10
   er      Corr (Slopes)               -0.53 (0.18)    <.01
   er      Corr (Residuals)             0.03 (0.04)     .40
    a      Level                        7.78 (0.17)    <.01
    a      Slope                        0.42 (0.05)    <.01
    a      Level * age                  0.14 (0.02)    <.01
    a      Level * education           -0.05 (0.04)     .16
    a      Level * height              -0.02 (0.02)     .24
    a      Level * smoking              0.29 (0.28)     .29
    a      Level * cardio               1.16 (0.34)    <.01
    a      Level * diabetes             1.85 (0.86)     .03
    a      Slope * age                  0.04 (0.01)    <.01
    a      Slope * education           -0.01 (0.01)     .42
    a      Slope * height               0.01 (0.00)     .01
    a      Slope * smoking              0.07 (0.05)     .19
    a      Slope * cardio               0.01 (0.06)     .86
    a      Slope * diabetes             0.13 (0.16)     .40
    b      Level                       17.80 (0.17)    <.01
    b      Slope                       -0.16 (0.02)    <.01
    b      Level * age                 -0.15 (0.01)    <.01
    b      Level * education            0.40 (0.03)    <.01
    b      Level * height               0.01 (0.02)     .61
    b      Level * smoking             -0.68 (0.28)     .02
    b      Level * cardio              -0.04 (0.29)     .90
    b      Level * diabetes            -0.84 (0.57)     .14
    b      Slope * age                 -0.00 (0.00)    <.01
    b      Slope * education            0.00 (0.00)     .51
    b      Slope * height              -0.00 (0.00)     .71
    b      Slope * smoking              0.02 (0.02)     .26
    b      Slope * cardio              -0.04 (0.02)     .10
    b      Slope * diabetes            -0.08 (0.05)     .12
    a      Var (Level)                  2.52 (2.32)     .28
    a      Var (Slope)                  0.18 (0.10)     .06
    a      Var (Residual)              14.60 (3.90)    <.01
    b      Var (Level)                  5.98 (0.44)    <.01
    b      Var (Slope)                  0.01 (0.00)     .05
    b      Var (Residual)               5.14 (0.21)    <.01
    a      Covar (Level, Slope)         0.55 (0.40)     .17
    b      Covar (Level, Slope)         0.00 (0.03)     .93
    \      Correlation of Levels                     -0.246
    \      Correlation of Slopes                     -0.521
    \      Correlation of Residuals                   0.029
    \      N                                            782
    \      occasions                                      6
    \      parameters                                    41
    \      LL                                       -19,210
    \      AIC                                       38,502
    \      BIC                                       38,693

##  word_im 

 Gender = _female_;  Process (a) = *gait*; Process (b) = _word_im_


 process   label                                    aehplus
---------  -------------------------  ---------------------
   ab      Covar (Levels)              -1.74 (0.67)     .01
   ab      Covar (Slopes)              -0.01 (0.01)     .21
   ab      Covar (Residuals)           -0.37 (0.28)     .19
   er      Corr (Levels)               -0.31 (0.18)     .08
   er      Corr (Slopes)               -0.28 (0.19)     .13
   er      Corr (Residuals)            -0.02 (0.02)     .21
    a      Level                        7.77 (0.17)    <.01
    a      Slope                        0.42 (0.05)    <.01
    a      Level * age                  0.14 (0.02)    <.01
    a      Level * education           -0.05 (0.04)     .17
    a      Level * height              -0.02 (0.02)     .23
    a      Level * smoking              0.29 (0.28)     .30
    a      Level * cardio               1.16 (0.34)    <.01
    a      Level * diabetes             1.82 (0.86)     .03
    a      Slope * age                  0.04 (0.01)    <.01
    a      Slope * education           -0.01 (0.01)     .39
    a      Slope * height               0.01 (0.00)     .01
    a      Slope * smoking              0.07 (0.05)     .16
    a      Slope * cardio               0.01 (0.06)     .87
    a      Slope * diabetes             0.15 (0.16)     .35
    b      Level                       21.11 (0.27)    <.01
    b      Slope                       -0.31 (0.03)    <.01
    b      Level * age                 -0.28 (0.02)    <.01
    b      Level * education            0.48 (0.05)    <.01
    b      Level * height               0.01 (0.03)     .60
    b      Level * smoking             -0.50 (0.49)     .30
    b      Level * cardio              -0.59 (0.47)     .22
    b      Level * diabetes            -0.98 (0.76)     .20
    b      Slope * age                 -0.00 (0.00)     .11
    b      Slope * education           -0.01 (0.00)     .23
    b      Slope * height               0.00 (0.00)     .21
    b      Slope * smoking             -0.04 (0.04)     .29
    b      Slope * cardio              -0.00 (0.04)     .95
    b      Slope * diabetes            -0.04 (0.07)     .56
    a      Var (Level)                  2.26 (2.19)     .30
    a      Var (Slope)                  0.18 (0.09)     .06
    a      Var (Residual)              14.75 (3.93)    <.01
    b      Var (Level)                 13.63 (1.27)    <.01
    b      Var (Slope)                  0.02 (0.01)     .07
    b      Var (Residual)              16.21 (0.59)    <.01
    a      Covar (Level, Slope)         0.58 (0.38)     .13
    b      Covar (Level, Slope)         0.14 (0.08)     .08
    \      Correlation of Levels                     -0.313
    \      Correlation of Slopes                     -0.281
    \      Correlation of Residuals                  -0.024
    \      N                                            782
    \      occasions                                      6
    \      parameters                                    41
    \      LL                                       -20,099
    \      AIC                                       40,280
    \      BIC                                       40,471

## Summary 

 Study = _LASA_; Gender = _female_; Process (a) = _gait_

 Computed correlations:

 

label                    process_b   aehplus
----------------------  ----------  --------
Correlation of Levels       letter     -0.32
Correlation of Levels        raven     -0.25
Correlation of Levels      word_im     -0.31




label                    process_b   aehplus
----------------------  ----------  --------
Correlation of Slopes       letter     -0.24
Correlation of Slopes        raven     -0.52
Correlation of Slopes      word_im     -0.28




label                       process_b   aehplus
-------------------------  ----------  --------
Correlation of Residuals       letter     -0.05
Correlation of Residuals        raven      0.03
Correlation of Residuals      word_im     -0.02



P-values for corresponding covariances: 

 

label                   process_b   aehplus
---------------------  ----------  --------
Covariance of Levels       letter      0.01
Covariance of Levels        raven      0.02
Covariance of Levels      word_im      0.01




label                   process_b   aehplus
---------------------  ----------  --------
Covariance of Slopes       letter      0.09
Covariance of Slopes        raven      0.02
Covariance of Slopes      word_im      0.21




label                       process_b   aehplus
-------------------------  ----------  --------
Covariance of  Residuals       letter      0.02
Covariance of  Residuals        raven      0.37
Covariance of  Residuals      word_im      0.19



# male 

 Gender = _male_; Model type: _aehplus_;  Process (a) = _gait_; Process (b): *letter*, *raven*, *word_im*


 process   label                                     letter                  raven                word_im             mean(sd)
---------  -------------------------  ---------------------  ---------------------  ---------------------  -------------------
   ab      Covar (Levels)              -1.88 (0.56)    <.01   -0.70 (0.37)     .06   -1.12 (0.58)     .05                  ---
   ab      Covar (Slopes)              -0.04 (0.01)     .02   -0.01 (0.01)     .07    0.00 (0.02)     .85                  ---
   ab      Covar (Residuals)           -0.22 (0.28)     .43    0.15 (0.16)     .36   -0.08 (0.29)     .77                  ---
   er      Corr (Levels)               -0.30 (0.21)     .15   -0.23 (0.19)     .23   -0.27 (0.20)     .17                  ---
   er      Corr (Slopes)               -0.32 (0.14)     .02   -0.23 (0.16)     .15    0.10 (0.49)     .85                  ---
   er      Corr (Residuals)            -0.03 (0.04)     .43    0.02 (0.03)     .38   -0.01 (0.03)     .77                  ---
    a      Level                        7.20 (0.14)    <.01    7.20 (0.14)    <.01    7.20 (0.14)    <.01           7.20(0.00)
    a      Slope                        0.42 (0.06)    <.01    0.42 (0.06)    <.01    0.42 (0.06)    <.01           0.42(0.00)
    a      Level * age                  0.08 (0.01)    <.01    0.08 (0.01)    <.01    0.08 (0.01)    <.01           0.08(0.00)
    a      Level * education           -0.07 (0.02)     .01   -0.07 (0.02)     .01   -0.07 (0.02)     .01          -0.07(0.00)
    a      Level * height              -0.02 (0.01)     .12   -0.02 (0.01)     .10   -0.02 (0.01)     .12          -0.02(0.00)
    a      Level * smoking              0.07 (0.21)     .72    0.08 (0.21)     .69    0.08 (0.21)     .71           0.08(0.00)
    a      Level * cardio               0.29 (0.21)     .17    0.30 (0.21)     .16    0.29 (0.21)     .16           0.29(0.00)
    a      Level * diabetes             0.32 (0.40)     .43    0.31 (0.40)     .44    0.32 (0.40)     .43           0.31(0.00)
    a      Slope * age                  0.03 (0.00)    <.01    0.03 (0.00)    <.01    0.03 (0.00)    <.01           0.03(0.00)
    a      Slope * education           -0.01 (0.00)     .01   -0.01 (0.00)     .01   -0.01 (0.00)     .01          -0.01(0.00)
    a      Slope * height               0.00 (0.00)     .87    0.00 (0.00)     .76    0.00 (0.00)     .85           0.00(0.00)
    a      Slope * smoking              0.04 (0.05)     .47    0.03 (0.05)     .57    0.03 (0.05)     .52           0.03(0.00)
    a      Slope * cardio              -0.02 (0.05)     .67   -0.02 (0.05)     .65   -0.02 (0.05)     .67          -0.02(0.00)
    a      Slope * diabetes             0.10 (0.13)     .44    0.11 (0.13)     .40    0.10 (0.13)     .44           0.10(0.00)
    b      Level                       22.83 (0.35)    <.01   17.64 (0.19)    <.01   17.65 (0.27)    <.01                  ---
    b      Slope                       -0.38 (0.03)    <.01   -0.17 (0.02)    <.01   -0.22 (0.03)    <.01                  ---
    b      Level * age                 -0.31 (0.02)    <.01   -0.15 (0.01)    <.01   -0.25 (0.02)    <.01                  ---
    b      Level * education            0.76 (0.06)    <.01    0.36 (0.03)    <.01    0.41 (0.05)    <.01                  ---
    b      Level * height               0.10 (0.03)    <.01    0.06 (0.02)    <.01    0.03 (0.02)     .26                  ---
    b      Level * smoking             -0.70 (0.43)     .10   -0.24 (0.24)     .32   -0.35 (0.36)     .34                  ---
    b      Level * cardio              -0.31 (0.45)     .49   -0.42 (0.25)     .09    0.10 (0.36)     .78                  ---
    b      Level * diabetes            -2.03 (0.94)     .03   -0.93 (0.49)     .06   -0.95 (0.72)     .18                  ---
    b      Slope * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.00 (0.00)     .02                  ---
    b      Slope * education           -0.01 (0.00)     .14    0.00 (0.00)     .94   -0.01 (0.00)     .05                  ---
    b      Slope * height               0.00 (0.00)     .74   -0.00 (0.00)     .45    0.00 (0.00)     .28                  ---
    b      Slope * smoking             -0.06 (0.03)     .06    0.00 (0.02)     .82   -0.04 (0.03)     .24                  ---
    b      Slope * cardio              -0.02 (0.03)     .59   -0.01 (0.02)     .76   -0.00 (0.04)     .91                  ---
    b      Slope * diabetes            -0.06 (0.06)     .29   -0.06 (0.05)     .19   -0.21 (0.06)    <.01                  ---
    a      Var (Level)                  1.43 (2.03)     .48    1.40 (2.01)     .49    1.41 (2.02)     .49           1.41(0.01)
    a      Var (Slope)                  0.24 (0.21)     .27    0.24 (0.21)     .26    0.24 (0.22)     .27           0.24(0.00)
    a      Var (Residual)               8.78 (2.00)    <.01    8.78 (2.01)    <.01    8.78 (2.00)    <.01           8.78(0.00)
    b      Var (Level)                 26.67 (1.53)    <.01    6.57 (0.52)    <.01   12.47 (1.14)    <.01                  ---
    b      Var (Slope)                  0.05 (0.01)    <.01    0.01 (0.00)    <.01    0.01 (0.01)     .47                  ---
    b      Var (Residual)               5.96 (0.30)    <.01    4.15 (0.18)    <.01   14.00 (0.55)    <.01                  ---
    a      Covar (Level, Slope)         0.55 (0.25)     .03    0.55 (0.26)     .03    0.56 (0.25)     .03           0.55(0.00)
    b      Covar (Level, Slope)        -0.18 (0.08)     .02   -0.04 (0.04)     .36    0.06 (0.08)     .43                  ---
    \      Correlation of Levels                     -0.305                 -0.232                -0.2675          -0.27(0.04)
    \      Correlation of Slopes                     -0.317                 -0.242                 0.1054          -0.15(0.23)
    \      Correlation of Residuals                  -0.031                  0.025                -0.0077          -0.00(0.03)
    \      N                                            800                    800                    800         800.00(0.00)
    \      occasions                                      6                      6                      6           6.00(0.00)
    \      parameters                                    41                     41                     41          41.00(0.00)
    \      LL                                       -17,517                -17,367                -18,170   -1.768481e+04(427)
    \      AIC                                       35,117                 34,816                 36,422    3.545162e+04(854)
    \      BIC                                       35,309                 35,008                 36,614    3.564369e+04(854)

##  letter 

 Gender = _male_;  Process (a) = *gait*; Process (b) = _letter_


 process   label                                    aehplus
---------  -------------------------  ---------------------
   ab      Covar (Levels)              -1.88 (0.56)    <.01
   ab      Covar (Slopes)              -0.04 (0.01)     .02
   ab      Covar (Residuals)           -0.22 (0.28)     .43
   er      Corr (Levels)               -0.30 (0.21)     .15
   er      Corr (Slopes)               -0.32 (0.14)     .02
   er      Corr (Residuals)            -0.03 (0.04)     .43
    a      Level                        7.20 (0.14)    <.01
    a      Slope                        0.42 (0.06)    <.01
    a      Level * age                  0.08 (0.01)    <.01
    a      Level * education           -0.07 (0.02)     .01
    a      Level * height              -0.02 (0.01)     .12
    a      Level * smoking              0.07 (0.21)     .72
    a      Level * cardio               0.29 (0.21)     .17
    a      Level * diabetes             0.32 (0.40)     .43
    a      Slope * age                  0.03 (0.00)    <.01
    a      Slope * education           -0.01 (0.00)     .01
    a      Slope * height               0.00 (0.00)     .87
    a      Slope * smoking              0.04 (0.05)     .47
    a      Slope * cardio              -0.02 (0.05)     .67
    a      Slope * diabetes             0.10 (0.13)     .44
    b      Level                       22.83 (0.35)    <.01
    b      Slope                       -0.38 (0.03)    <.01
    b      Level * age                 -0.31 (0.02)    <.01
    b      Level * education            0.76 (0.06)    <.01
    b      Level * height               0.10 (0.03)    <.01
    b      Level * smoking             -0.70 (0.43)     .10
    b      Level * cardio              -0.31 (0.45)     .49
    b      Level * diabetes            -2.03 (0.94)     .03
    b      Slope * age                 -0.01 (0.00)    <.01
    b      Slope * education           -0.01 (0.00)     .14
    b      Slope * height               0.00 (0.00)     .74
    b      Slope * smoking             -0.06 (0.03)     .06
    b      Slope * cardio              -0.02 (0.03)     .59
    b      Slope * diabetes            -0.06 (0.06)     .29
    a      Var (Level)                  1.43 (2.03)     .48
    a      Var (Slope)                  0.24 (0.21)     .27
    a      Var (Residual)               8.78 (2.00)    <.01
    b      Var (Level)                 26.67 (1.53)    <.01
    b      Var (Slope)                  0.05 (0.01)    <.01
    b      Var (Residual)               5.96 (0.30)    <.01
    a      Covar (Level, Slope)         0.55 (0.25)     .03
    b      Covar (Level, Slope)        -0.18 (0.08)     .02
    \      Correlation of Levels                     -0.305
    \      Correlation of Slopes                     -0.317
    \      Correlation of Residuals                  -0.031
    \      N                                            800
    \      occasions                                      6
    \      parameters                                    41
    \      LL                                       -17,517
    \      AIC                                       35,117
    \      BIC                                       35,309

##  raven 

 Gender = _male_;  Process (a) = *gait*; Process (b) = _raven_


 process   label                                    aehplus
---------  -------------------------  ---------------------
   ab      Covar (Levels)              -0.70 (0.37)     .06
   ab      Covar (Slopes)              -0.01 (0.01)     .07
   ab      Covar (Residuals)            0.15 (0.16)     .36
   er      Corr (Levels)               -0.23 (0.19)     .23
   er      Corr (Slopes)               -0.23 (0.16)     .15
   er      Corr (Residuals)             0.02 (0.03)     .38
    a      Level                        7.20 (0.14)    <.01
    a      Slope                        0.42 (0.06)    <.01
    a      Level * age                  0.08 (0.01)    <.01
    a      Level * education           -0.07 (0.02)     .01
    a      Level * height              -0.02 (0.01)     .10
    a      Level * smoking              0.08 (0.21)     .69
    a      Level * cardio               0.30 (0.21)     .16
    a      Level * diabetes             0.31 (0.40)     .44
    a      Slope * age                  0.03 (0.00)    <.01
    a      Slope * education           -0.01 (0.00)     .01
    a      Slope * height               0.00 (0.00)     .76
    a      Slope * smoking              0.03 (0.05)     .57
    a      Slope * cardio              -0.02 (0.05)     .65
    a      Slope * diabetes             0.11 (0.13)     .40
    b      Level                       17.64 (0.19)    <.01
    b      Slope                       -0.17 (0.02)    <.01
    b      Level * age                 -0.15 (0.01)    <.01
    b      Level * education            0.36 (0.03)    <.01
    b      Level * height               0.06 (0.02)    <.01
    b      Level * smoking             -0.24 (0.24)     .32
    b      Level * cardio              -0.42 (0.25)     .09
    b      Level * diabetes            -0.93 (0.49)     .06
    b      Slope * age                 -0.01 (0.00)    <.01
    b      Slope * education            0.00 (0.00)     .94
    b      Slope * height              -0.00 (0.00)     .45
    b      Slope * smoking              0.00 (0.02)     .82
    b      Slope * cardio              -0.01 (0.02)     .76
    b      Slope * diabetes            -0.06 (0.05)     .19
    a      Var (Level)                  1.40 (2.01)     .49
    a      Var (Slope)                  0.24 (0.21)     .26
    a      Var (Residual)               8.78 (2.01)    <.01
    b      Var (Level)                  6.57 (0.52)    <.01
    b      Var (Slope)                  0.01 (0.00)    <.01
    b      Var (Residual)               4.15 (0.18)    <.01
    a      Covar (Level, Slope)         0.55 (0.26)     .03
    b      Covar (Level, Slope)        -0.04 (0.04)     .36
    \      Correlation of Levels                     -0.232
    \      Correlation of Slopes                     -0.242
    \      Correlation of Residuals                   0.025
    \      N                                            800
    \      occasions                                      6
    \      parameters                                    41
    \      LL                                       -17,367
    \      AIC                                       34,816
    \      BIC                                       35,008

##  word_im 

 Gender = _male_;  Process (a) = *gait*; Process (b) = _word_im_


 process   label                                    aehplus
---------  -------------------------  ---------------------
   ab      Covar (Levels)              -1.12 (0.58)     .05
   ab      Covar (Slopes)               0.00 (0.02)     .85
   ab      Covar (Residuals)           -0.08 (0.29)     .77
   er      Corr (Levels)               -0.27 (0.20)     .17
   er      Corr (Slopes)                0.10 (0.49)     .85
   er      Corr (Residuals)            -0.01 (0.03)     .77
    a      Level                        7.20 (0.14)    <.01
    a      Slope                        0.42 (0.06)    <.01
    a      Level * age                  0.08 (0.01)    <.01
    a      Level * education           -0.07 (0.02)     .01
    a      Level * height              -0.02 (0.01)     .12
    a      Level * smoking              0.08 (0.21)     .71
    a      Level * cardio               0.29 (0.21)     .16
    a      Level * diabetes             0.32 (0.40)     .43
    a      Slope * age                  0.03 (0.00)    <.01
    a      Slope * education           -0.01 (0.00)     .01
    a      Slope * height               0.00 (0.00)     .85
    a      Slope * smoking              0.03 (0.05)     .52
    a      Slope * cardio              -0.02 (0.05)     .67
    a      Slope * diabetes             0.10 (0.13)     .44
    b      Level                       17.65 (0.27)    <.01
    b      Slope                       -0.22 (0.03)    <.01
    b      Level * age                 -0.25 (0.02)    <.01
    b      Level * education            0.41 (0.05)    <.01
    b      Level * height               0.03 (0.02)     .26
    b      Level * smoking             -0.35 (0.36)     .34
    b      Level * cardio               0.10 (0.36)     .78
    b      Level * diabetes            -0.95 (0.72)     .18
    b      Slope * age                 -0.00 (0.00)     .02
    b      Slope * education           -0.01 (0.00)     .05
    b      Slope * height               0.00 (0.00)     .28
    b      Slope * smoking             -0.04 (0.03)     .24
    b      Slope * cardio              -0.00 (0.04)     .91
    b      Slope * diabetes            -0.21 (0.06)    <.01
    a      Var (Level)                  1.41 (2.02)     .49
    a      Var (Slope)                  0.24 (0.22)     .27
    a      Var (Residual)               8.78 (2.00)    <.01
    b      Var (Level)                 12.47 (1.14)    <.01
    b      Var (Slope)                  0.01 (0.01)     .47
    b      Var (Residual)              14.00 (0.55)    <.01
    a      Covar (Level, Slope)         0.56 (0.25)     .03
    b      Covar (Level, Slope)         0.06 (0.08)     .43
    \      Correlation of Levels                    -0.2675
    \      Correlation of Slopes                     0.1054
    \      Correlation of Residuals                 -0.0077
    \      N                                            800
    \      occasions                                      6
    \      parameters                                    41
    \      LL                                       -18,170
    \      AIC                                       36,422
    \      BIC                                       36,614

## Summary 

 Study = _LASA_; Gender = _male_; Process (a) = _gait_

 Computed correlations:

 

label                    process_b   aehplus
----------------------  ----------  --------
Correlation of Levels       letter     -0.31
Correlation of Levels        raven     -0.23
Correlation of Levels      word_im     -0.27




label                    process_b   aehplus
----------------------  ----------  --------
Correlation of Slopes       letter     -0.32
Correlation of Slopes        raven     -0.24
Correlation of Slopes      word_im      0.11




label                       process_b   aehplus
-------------------------  ----------  --------
Correlation of Residuals       letter     -0.03
Correlation of Residuals        raven      0.02
Correlation of Residuals      word_im     -0.01



P-values for corresponding covariances: 

 

label                   process_b   aehplus
---------------------  ----------  --------
Covariance of Levels       letter      0.00
Covariance of Levels        raven      0.06
Covariance of Levels      word_im      0.05




label                   process_b   aehplus
---------------------  ----------  --------
Covariance of Slopes       letter      0.02
Covariance of Slopes        raven      0.07
Covariance of Slopes      word_im      0.85




label                       process_b   aehplus
-------------------------  ----------  --------
Covariance of  Residuals       letter      0.43
Covariance of  Residuals        raven      0.36
Covariance of  Residuals      word_im      0.77


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
