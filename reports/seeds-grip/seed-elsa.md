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
grip        word_de             2
grip        word_im             2




study_name   subgroup   model_type   process_a   process_b    n_models
-----------  ---------  -----------  ----------  ----------  ---------
elsa         female     aehplus      grip        word_de             1
elsa         female     aehplus      grip        word_im             1




study_name   subgroup   model_type   process_a   process_b    n_models
-----------  ---------  -----------  ----------  ----------  ---------
elsa         male       aehplus      grip        word_de             1
elsa         male       aehplus      grip        word_im             1


# female 

 Gender = _female_; Model type: _aehplus_;  Process (a) = _grip_; Process (b): *word_de*, *word_im*


 process   label                                    word_de                word_im               mean(sd)
---------  -------------------------  ---------------------  ---------------------  ---------------------
    a      Level                       20.25 (0.18)    <.01   20.25 (0.18)    <.01            20.25(0.00)
    a      Slope                       -0.29 (0.02)    <.01   -0.29 (0.02)    <.01            -0.29(0.00)
    a      Level * age                 -0.24 (0.01)    <.01   -0.24 (0.01)    <.01            -0.24(0.00)
    a      Level * education            0.99 (0.19)    <.01    0.99 (0.19)    <.01             0.99(0.00)
    a      Level * height               0.21 (0.01)    <.01    0.21 (0.01)    <.01             0.21(0.00)
    a      Level * smoking             -0.17 (0.17)     .33   -0.17 (0.17)     .32            -0.17(0.00)
    a      Level * cardio              -1.54 (0.34)    <.01   -1.54 (0.34)    <.01            -1.54(0.00)
    a      Level * diabetes            -1.42 (0.40)    <.01   -1.42 (0.40)    <.01            -1.42(0.00)
    a      Slope * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01            -0.01(0.00)
    a      Slope * education           -0.01 (0.02)     .45   -0.01 (0.02)     .48            -0.01(0.00)
    a      Slope * height              -0.00 (0.00)     .06   -0.00 (0.00)     .05            -0.00(0.00)
    a      Slope * smoking              0.00 (0.02)     .95    0.00 (0.02)     .96             0.00(0.00)
    a      Slope * cardio               0.06 (0.04)     .12    0.06 (0.04)     .14             0.06(0.00)
    a      Slope * diabetes             0.00 (0.04)     .91    0.00 (0.04)     .91             0.00(0.00)
    b      Level                        3.89 (0.06)    <.01    5.29 (0.05)    <.01                    ---
    b      Slope                       -0.04 (0.01)    <.01   -0.04 (0.01)    <.01                    ---
    b      Level * age                 -0.07 (0.00)    <.01   -0.06 (0.00)    <.01                    ---
    b      Level * education            1.00 (0.07)    <.01    0.73 (0.06)    <.01                    ---
    b      Level * height               0.02 (0.00)    <.01    0.01 (0.00)     .05                    ---
    b      Level * smoking             -0.21 (0.06)    <.01   -0.04 (0.05)     .49                    ---
    b      Level * cardio              -0.12 (0.12)     .32   -0.20 (0.10)     .05                    ---
    b      Level * diabetes            -0.38 (0.16)     .02   -0.33 (0.14)     .02                    ---
    b      Slope * age                 -0.00 (0.00)    <.01   -0.00 (0.00)    <.01                    ---
    b      Slope * education           -0.00 (0.01)     .56    0.01 (0.01)     .08                    ---
    b      Slope * height               0.00 (0.00)     .71    0.00 (0.00)     .27                    ---
    b      Slope * smoking              0.01 (0.01)     .05   -0.00 (0.01)     .56                    ---
    b      Slope * cardio              -0.01 (0.01)     .56    0.00 (0.01)     .72                    ---
    b      Slope * diabetes             0.01 (0.02)     .64    0.01 (0.02)     .58                    ---
    a      Var (Level)                 17.98 (0.85)    <.01   17.98 (0.85)    <.01            17.98(0.00)
    a      Var (Slope)                  0.02 (0.01)     .03    0.02 (0.01)     .03             0.02(0.00)
    a      Var (Residual)               8.47 (0.42)    <.01    8.47 (0.42)    <.01             8.47(0.00)
    a      Covar (Level, Slope)        -0.14 (0.07)     .05   -0.14 (0.07)     .06            -0.14(0.00)
    b      Var (Level)                  1.46 (0.10)    <.01    0.97 (0.09)    <.01                    ---
    b      Var (Slope)                  0.00 (0.00)     .64    0.00 (0.00)     .08                    ---
    b      Var (Residual)               1.91 (0.07)    <.01    1.61 (0.06)    <.01                    ---
    b      Covar (Level, Slope)         0.01 (0.01)     .37   -0.01 (0.01)     .36                    ---
   ab      Covar (Levels)               0.68 (0.17)    <.01    0.51 (0.16)    <.01                    ---
   ab      Covar (Slopes)               0.00 (0.00)     .97    0.00 (0.00)     .91                    ---
   ab      Covar (Residuals)            0.09 (0.09)     .30    0.06 (0.08)     .49                    ---
    \      Correlation of Levels                      0.133                  0.122             0.13(0.01)
    \      Correlation of Slopes                      0.000                  0.000             0.00(0.00)
    \      Correlation of Residuals                   0.023                  0.015             0.02(0.01)
    \      N                                          3,511                  3,511          3511.00(0.00)
    \      occasions                                      6                      6             6.00(0.00)
    \      parameters                                    41                     41            41.00(0.00)
    \      LL                                       -38,178                -37,206   -3.769178e+04(  687)
    \      AIC                                       76,437                 74,494    7.546556e+04(1,374)
    \      BIC                                       76,690                 74,746    7.571827e+04(1,374)

##  word_de 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _word_de_


 process   label                                    aehplus
---------  -------------------------  ---------------------
    a      Level                       20.25 (0.18)    <.01
    a      Slope                       -0.29 (0.02)    <.01
    a      Level * age                 -0.24 (0.01)    <.01
    a      Level * education            0.99 (0.19)    <.01
    a      Level * height               0.21 (0.01)    <.01
    a      Level * smoking             -0.17 (0.17)     .33
    a      Level * cardio              -1.54 (0.34)    <.01
    a      Level * diabetes            -1.42 (0.40)    <.01
    a      Slope * age                 -0.01 (0.00)    <.01
    a      Slope * education           -0.01 (0.02)     .45
    a      Slope * height              -0.00 (0.00)     .06
    a      Slope * smoking              0.00 (0.02)     .95
    a      Slope * cardio               0.06 (0.04)     .12
    a      Slope * diabetes             0.00 (0.04)     .91
    b      Level                        3.89 (0.06)    <.01
    b      Slope                       -0.04 (0.01)    <.01
    b      Level * age                 -0.07 (0.00)    <.01
    b      Level * education            1.00 (0.07)    <.01
    b      Level * height               0.02 (0.00)    <.01
    b      Level * smoking             -0.21 (0.06)    <.01
    b      Level * cardio              -0.12 (0.12)     .32
    b      Level * diabetes            -0.38 (0.16)     .02
    b      Slope * age                 -0.00 (0.00)    <.01
    b      Slope * education           -0.00 (0.01)     .56
    b      Slope * height               0.00 (0.00)     .71
    b      Slope * smoking              0.01 (0.01)     .05
    b      Slope * cardio              -0.01 (0.01)     .56
    b      Slope * diabetes             0.01 (0.02)     .64
    a      Var (Level)                 17.98 (0.85)    <.01
    a      Var (Slope)                  0.02 (0.01)     .03
    a      Var (Residual)               8.47 (0.42)    <.01
    a      Covar (Level, Slope)        -0.14 (0.07)     .05
    b      Var (Level)                  1.46 (0.10)    <.01
    b      Var (Slope)                  0.00 (0.00)     .64
    b      Var (Residual)               1.91 (0.07)    <.01
    b      Covar (Level, Slope)         0.01 (0.01)     .37
   ab      Covar (Levels)               0.68 (0.17)    <.01
   ab      Covar (Slopes)               0.00 (0.00)     .97
   ab      Covar (Residuals)            0.09 (0.09)     .30
    \      Correlation of Levels                      0.133
    \      Correlation of Slopes                      0.000
    \      Correlation of Residuals                   0.023
    \      N                                          3,511
    \      occasions                                      6
    \      parameters                                    41
    \      LL                                       -38,178
    \      AIC                                       76,437
    \      BIC                                       76,690

##  word_im 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _word_im_


 process   label                                    aehplus
---------  -------------------------  ---------------------
    a      Level                       20.25 (0.18)    <.01
    a      Slope                       -0.29 (0.02)    <.01
    a      Level * age                 -0.24 (0.01)    <.01
    a      Level * education            0.99 (0.19)    <.01
    a      Level * height               0.21 (0.01)    <.01
    a      Level * smoking             -0.17 (0.17)     .32
    a      Level * cardio              -1.54 (0.34)    <.01
    a      Level * diabetes            -1.42 (0.40)    <.01
    a      Slope * age                 -0.01 (0.00)    <.01
    a      Slope * education           -0.01 (0.02)     .48
    a      Slope * height              -0.00 (0.00)     .05
    a      Slope * smoking              0.00 (0.02)     .96
    a      Slope * cardio               0.06 (0.04)     .14
    a      Slope * diabetes             0.00 (0.04)     .91
    b      Level                        5.29 (0.05)    <.01
    b      Slope                       -0.04 (0.01)    <.01
    b      Level * age                 -0.06 (0.00)    <.01
    b      Level * education            0.73 (0.06)    <.01
    b      Level * height               0.01 (0.00)     .05
    b      Level * smoking             -0.04 (0.05)     .49
    b      Level * cardio              -0.20 (0.10)     .05
    b      Level * diabetes            -0.33 (0.14)     .02
    b      Slope * age                 -0.00 (0.00)    <.01
    b      Slope * education            0.01 (0.01)     .08
    b      Slope * height               0.00 (0.00)     .27
    b      Slope * smoking             -0.00 (0.01)     .56
    b      Slope * cardio               0.00 (0.01)     .72
    b      Slope * diabetes             0.01 (0.02)     .58
    a      Var (Level)                 17.98 (0.85)    <.01
    a      Var (Slope)                  0.02 (0.01)     .03
    a      Var (Residual)               8.47 (0.42)    <.01
    a      Covar (Level, Slope)        -0.14 (0.07)     .06
    b      Var (Level)                  0.97 (0.09)    <.01
    b      Var (Slope)                  0.00 (0.00)     .08
    b      Var (Residual)               1.61 (0.06)    <.01
    b      Covar (Level, Slope)        -0.01 (0.01)     .36
   ab      Covar (Levels)               0.51 (0.16)    <.01
   ab      Covar (Slopes)               0.00 (0.00)     .91
   ab      Covar (Residuals)            0.06 (0.08)     .49
    \      Correlation of Levels                      0.122
    \      Correlation of Slopes                      0.000
    \      Correlation of Residuals                   0.015
    \      N                                          3,511
    \      occasions                                      6
    \      parameters                                    41
    \      LL                                       -37,206
    \      AIC                                       74,494
    \      BIC                                       74,746

## Summary 

 Study = _ELSA_; Gender = _female_; Process (a) = _grip_

 Computed correlations:

 

label                    process_b   aehplus
----------------------  ----------  --------
Correlation of Levels      word_de      0.13
Correlation of Levels      word_im      0.12



label                    process_b   aehplus
----------------------  ----------  --------
Correlation of Slopes      word_de      0.00
Correlation of Slopes      word_im      0.00



label                       process_b   aehplus
-------------------------  ----------  --------
Correlation of Residuals      word_de      0.02
Correlation of Residuals      word_im      0.02


P-values for corresponding covariances: 

 

label                   process_b   aehplus
---------------------  ----------  --------
Covariance of Levels      word_de      0.00
Covariance of Levels      word_im      0.00



label                   process_b   aehplus
---------------------  ----------  --------
Covariance of Slopes      word_de      0.97
Covariance of Slopes      word_im      0.91



label                       process_b   aehplus
-------------------------  ----------  --------
Covariance of  Residuals      word_de      0.30
Covariance of  Residuals      word_im      0.49


# male 

 Gender = _male_; Model type: _aehplus_;  Process (a) = _grip_; Process (b): *word_de*, *word_im*


 process   label                                    word_de                word_im               mean(sd)
---------  -------------------------  ---------------------  ---------------------  ---------------------
    a      Level                       34.27 (0.33)    <.01   34.27 (0.33)    <.01            34.27(0.00)
    a      Slope                       -0.45 (0.04)    <.01   -0.45 (0.04)    <.01            -0.45(0.00)
    a      Level * age                 -0.46 (0.01)    <.01   -0.46 (0.01)    <.01            -0.46(0.00)
    a      Level * education            1.26 (0.30)    <.01    1.25 (0.30)    <.01             1.26(0.00)
    a      Level * height               0.29 (0.02)    <.01    0.29 (0.02)    <.01             0.29(0.00)
    a      Level * smoking             -0.38 (0.29)     .20   -0.38 (0.29)     .20            -0.38(0.00)
    a      Level * cardio              -0.33 (0.39)     .39   -0.34 (0.39)     .39            -0.33(0.00)
    a      Level * diabetes            -2.03 (0.50)    <.01   -2.04 (0.50)    <.01            -2.04(0.00)
    a      Slope * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01            -0.01(0.00)
    a      Slope * education           -0.03 (0.03)     .35   -0.03 (0.03)     .38            -0.03(0.00)
    a      Slope * height               0.00 (0.00)     .54    0.00 (0.00)     .55             0.00(0.00)
    a      Slope * smoking             -0.01 (0.03)     .74   -0.01 (0.03)     .75            -0.01(0.00)
    a      Slope * cardio              -0.13 (0.04)    <.01   -0.13 (0.04)    <.01            -0.13(0.00)
    a      Slope * diabetes            -0.16 (0.05)    <.01   -0.16 (0.05)    <.01            -0.16(0.00)
    b      Level                        3.27 (0.08)    <.01    4.87 (0.07)    <.01                    ---
    b      Slope                        0.00 (0.01)     .64   -0.03 (0.01)    <.01                    ---
    b      Level * age                 -0.07 (0.00)    <.01   -0.05 (0.00)    <.01                    ---
    b      Level * education            0.92 (0.07)    <.01    0.76 (0.06)    <.01                    ---
    b      Level * height               0.02 (0.00)    <.01    0.01 (0.00)    <.01                    ---
    b      Level * smoking              0.02 (0.07)     .71   -0.00 (0.06)     .95                    ---
    b      Level * cardio              -0.06 (0.10)     .52   -0.16 (0.09)     .07                    ---
    b      Level * diabetes            -0.28 (0.11)     .01   -0.10 (0.10)     .32                    ---
    b      Slope * age                 -0.00 (0.00)    <.01   -0.00 (0.00)    <.01                    ---
    b      Slope * education           -0.01 (0.01)     .18   -0.00 (0.01)     .95                    ---
    b      Slope * height               0.00 (0.00)     .99    0.00 (0.00)     .09                    ---
    b      Slope * smoking             -0.02 (0.01)     .02   -0.02 (0.01)     .04                    ---
    b      Slope * cardio              -0.03 (0.01)     .03   -0.01 (0.01)     .62                    ---
    b      Slope * diabetes            -0.01 (0.02)     .39   -0.01 (0.02)     .49                    ---
    a      Var (Level)                 37.85 (1.98)    <.01   37.61 (1.98)    <.01            37.73(0.17)
    a      Var (Slope)                  0.04 (0.03)     .09    0.04 (0.03)     .14             0.04(0.00)
    a      Var (Residual)              18.17 (0.93)    <.01   18.34 (0.94)    <.01            18.26(0.12)
    a      Covar (Level, Slope)        -0.39 (0.19)     .04   -0.35 (0.18)     .06            -0.37(0.03)
    b      Var (Level)                  1.41 (0.10)    <.01    1.00 (0.08)    <.01                    ---
    b      Var (Slope)                  0.00 (0.00)     .16    0.00 (0.00)     .01                    ---
    b      Var (Residual)               1.71 (0.06)    <.01    1.39 (0.06)    <.01                    ---
    b      Covar (Level, Slope)        -0.01 (0.01)     .31   -0.02 (0.01)     .06                    ---
   ab      Covar (Levels)               0.34 (0.26)     .20    0.13 (0.23)     .57                    ---
   ab      Covar (Slopes)              -0.00 (0.00)     .18   -0.00 (0.00)     .14                    ---
   ab      Covar (Residuals)            0.12 (0.13)     .33    0.29 (0.12)     .02                    ---
    \      Correlation of Levels                      0.047                  0.022             0.03(0.02)
    \      Correlation of Slopes                     -0.430                 -0.406            -0.42(0.02)
    \      Correlation of Residuals                   0.022                  0.058             0.04(0.03)
    \      N                                          3,091                  3,091          3091.00(0.00)
    \      occasions                                      6                      6             6.00(0.00)
    \      parameters                                    41                     41            41.00(0.00)
    \      LL                                       -35,472                -34,622   -3.504691e+04(  602)
    \      AIC                                       71,027                 69,325    7.017582e+04(1,203)
    \      BIC                                       71,274                 69,572    7.042331e+04(1,203)

##  word_de 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _word_de_


 process   label                                    aehplus
---------  -------------------------  ---------------------
    a      Level                       34.27 (0.33)    <.01
    a      Slope                       -0.45 (0.04)    <.01
    a      Level * age                 -0.46 (0.01)    <.01
    a      Level * education            1.26 (0.30)    <.01
    a      Level * height               0.29 (0.02)    <.01
    a      Level * smoking             -0.38 (0.29)     .20
    a      Level * cardio              -0.33 (0.39)     .39
    a      Level * diabetes            -2.03 (0.50)    <.01
    a      Slope * age                 -0.01 (0.00)    <.01
    a      Slope * education           -0.03 (0.03)     .35
    a      Slope * height               0.00 (0.00)     .54
    a      Slope * smoking             -0.01 (0.03)     .74
    a      Slope * cardio              -0.13 (0.04)    <.01
    a      Slope * diabetes            -0.16 (0.05)    <.01
    b      Level                        3.27 (0.08)    <.01
    b      Slope                        0.00 (0.01)     .64
    b      Level * age                 -0.07 (0.00)    <.01
    b      Level * education            0.92 (0.07)    <.01
    b      Level * height               0.02 (0.00)    <.01
    b      Level * smoking              0.02 (0.07)     .71
    b      Level * cardio              -0.06 (0.10)     .52
    b      Level * diabetes            -0.28 (0.11)     .01
    b      Slope * age                 -0.00 (0.00)    <.01
    b      Slope * education           -0.01 (0.01)     .18
    b      Slope * height               0.00 (0.00)     .99
    b      Slope * smoking             -0.02 (0.01)     .02
    b      Slope * cardio              -0.03 (0.01)     .03
    b      Slope * diabetes            -0.01 (0.02)     .39
    a      Var (Level)                 37.85 (1.98)    <.01
    a      Var (Slope)                  0.04 (0.03)     .09
    a      Var (Residual)              18.17 (0.93)    <.01
    a      Covar (Level, Slope)        -0.39 (0.19)     .04
    b      Var (Level)                  1.41 (0.10)    <.01
    b      Var (Slope)                  0.00 (0.00)     .16
    b      Var (Residual)               1.71 (0.06)    <.01
    b      Covar (Level, Slope)        -0.01 (0.01)     .31
   ab      Covar (Levels)               0.34 (0.26)     .20
   ab      Covar (Slopes)              -0.00 (0.00)     .18
   ab      Covar (Residuals)            0.12 (0.13)     .33
    \      Correlation of Levels                      0.047
    \      Correlation of Slopes                     -0.430
    \      Correlation of Residuals                   0.022
    \      N                                          3,091
    \      occasions                                      6
    \      parameters                                    41
    \      LL                                       -35,472
    \      AIC                                       71,027
    \      BIC                                       71,274

##  word_im 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _word_im_


 process   label                                    aehplus
---------  -------------------------  ---------------------
    a      Level                       34.27 (0.33)    <.01
    a      Slope                       -0.45 (0.04)    <.01
    a      Level * age                 -0.46 (0.01)    <.01
    a      Level * education            1.25 (0.30)    <.01
    a      Level * height               0.29 (0.02)    <.01
    a      Level * smoking             -0.38 (0.29)     .20
    a      Level * cardio              -0.34 (0.39)     .39
    a      Level * diabetes            -2.04 (0.50)    <.01
    a      Slope * age                 -0.01 (0.00)    <.01
    a      Slope * education           -0.03 (0.03)     .38
    a      Slope * height               0.00 (0.00)     .55
    a      Slope * smoking             -0.01 (0.03)     .75
    a      Slope * cardio              -0.13 (0.04)    <.01
    a      Slope * diabetes            -0.16 (0.05)    <.01
    b      Level                        4.87 (0.07)    <.01
    b      Slope                       -0.03 (0.01)    <.01
    b      Level * age                 -0.05 (0.00)    <.01
    b      Level * education            0.76 (0.06)    <.01
    b      Level * height               0.01 (0.00)    <.01
    b      Level * smoking             -0.00 (0.06)     .95
    b      Level * cardio              -0.16 (0.09)     .07
    b      Level * diabetes            -0.10 (0.10)     .32
    b      Slope * age                 -0.00 (0.00)    <.01
    b      Slope * education           -0.00 (0.01)     .95
    b      Slope * height               0.00 (0.00)     .09
    b      Slope * smoking             -0.02 (0.01)     .04
    b      Slope * cardio              -0.01 (0.01)     .62
    b      Slope * diabetes            -0.01 (0.02)     .49
    a      Var (Level)                 37.61 (1.98)    <.01
    a      Var (Slope)                  0.04 (0.03)     .14
    a      Var (Residual)              18.34 (0.94)    <.01
    a      Covar (Level, Slope)        -0.35 (0.18)     .06
    b      Var (Level)                  1.00 (0.08)    <.01
    b      Var (Slope)                  0.00 (0.00)     .01
    b      Var (Residual)               1.39 (0.06)    <.01
    b      Covar (Level, Slope)        -0.02 (0.01)     .06
   ab      Covar (Levels)               0.13 (0.23)     .57
   ab      Covar (Slopes)              -0.00 (0.00)     .14
   ab      Covar (Residuals)            0.29 (0.12)     .02
    \      Correlation of Levels                      0.022
    \      Correlation of Slopes                     -0.406
    \      Correlation of Residuals                   0.058
    \      N                                          3,091
    \      occasions                                      6
    \      parameters                                    41
    \      LL                                       -34,622
    \      AIC                                       69,325
    \      BIC                                       69,572

## Summary 

 Study = _ELSA_; Gender = _male_; Process (a) = _grip_

 Computed correlations:

 

label                    process_b   aehplus
----------------------  ----------  --------
Correlation of Levels      word_de      0.05
Correlation of Levels      word_im      0.02



label                    process_b   aehplus
----------------------  ----------  --------
Correlation of Slopes      word_de     -0.43
Correlation of Slopes      word_im     -0.41



label                       process_b   aehplus
-------------------------  ----------  --------
Correlation of Residuals      word_de      0.02
Correlation of Residuals      word_im      0.06


P-values for corresponding covariances: 

 

label                   process_b   aehplus
---------------------  ----------  --------
Covariance of Levels      word_de      0.20
Covariance of Levels      word_im      0.57



label                   process_b   aehplus
---------------------  ----------  --------
Covariance of Slopes      word_de      0.18
Covariance of Slopes      word_im      0.14



label                       process_b   aehplus
-------------------------  ----------  --------
Covariance of  Residuals      word_de      0.33
Covariance of  Residuals      word_im      0.02


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
