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
   ab      Covar (Levels)               0.65 (0.17)    <.01    0.48 (0.16)    <.01                    ---
   ab      Covar (Slopes)               0.00 (0.00)     .99    0.00 (0.00)     .92                    ---
   ab      Covar (Residuals)            0.09 (0.09)     .31    0.05 (0.08)     .52                    ---
   er      Corr (Levels)                0.13 (0.03)    <.01    0.12 (0.04)    <.01                    ---
   er      Corr (Slopes)               -0.01 (0.66)     .99   -0.03 (0.29)     .92                    ---
   er      Corr (Residuals)             0.02 (0.02)     .31    0.01 (0.02)     .52                    ---
    a      Level                       20.28 (0.18)    <.01   20.27 (0.18)    <.01            20.27(0.00)
    a      Slope                       -0.29 (0.02)    <.01   -0.29 (0.02)    <.01            -0.29(0.00)
    a      Level * age                 -0.25 (0.01)    <.01   -0.25 (0.01)    <.01            -0.25(0.00)
    a      Level * education            0.99 (0.19)    <.01    0.99 (0.19)    <.01             0.99(0.00)
    a      Level * height               0.21 (0.01)    <.01    0.21 (0.01)    <.01             0.21(0.00)
    a      Level * smoking             -0.18 (0.17)     .29   -0.18 (0.17)     .30            -0.18(0.00)
    a      Level * cardio              -1.61 (0.34)    <.01   -1.61 (0.34)    <.01            -1.61(0.00)
    a      Level * diabetes            -1.40 (0.40)    <.01   -1.40 (0.40)    <.01            -1.40(0.00)
    a      Slope * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01            -0.01(0.00)
    a      Slope * education           -0.01 (0.02)     .44   -0.01 (0.02)     .46            -0.01(0.00)
    a      Slope * height              -0.00 (0.00)     .06   -0.00 (0.00)     .05            -0.00(0.00)
    a      Slope * smoking              0.00 (0.02)     .92    0.00 (0.02)     .94             0.00(0.00)
    a      Slope * cardio               0.05 (0.04)     .17    0.05 (0.04)     .19             0.05(0.00)
    a      Slope * diabetes             0.00 (0.04)     .91    0.00 (0.04)     .92             0.00(0.00)
    b      Level                        3.89 (0.06)    <.01    5.31 (0.05)    <.01                    ---
    b      Slope                       -0.04 (0.01)    <.01   -0.04 (0.01)    <.01                    ---
    b      Level * age                 -0.07 (0.00)    <.01   -0.06 (0.00)    <.01                    ---
    b      Level * education            1.00 (0.07)    <.01    0.72 (0.06)    <.01                    ---
    b      Level * height               0.02 (0.00)    <.01    0.01 (0.00)     .05                    ---
    b      Level * smoking             -0.22 (0.06)    <.01   -0.04 (0.05)     .46                    ---
    b      Level * cardio              -0.14 (0.12)     .24   -0.23 (0.11)     .04                    ---
    b      Level * diabetes            -0.38 (0.16)     .02   -0.32 (0.14)     .02                    ---
    b      Slope * age                 -0.00 (0.00)    <.01   -0.00 (0.00)    <.01                    ---
    b      Slope * education           -0.00 (0.01)     .59    0.01 (0.01)     .05                    ---
    b      Slope * height               0.00 (0.00)     .56    0.00 (0.00)     .31                    ---
    b      Slope * smoking              0.01 (0.01)     .07   -0.00 (0.01)     .60                    ---
    b      Slope * cardio              -0.01 (0.02)     .69    0.01 (0.01)     .69                    ---
    b      Slope * diabetes             0.01 (0.02)     .62    0.01 (0.02)     .60                    ---
    a      Var (Level)                 17.96 (0.84)    <.01   17.95 (0.84)    <.01            17.96(0.00)
    a      Var (Slope)                  0.02 (0.01)     .02    0.02 (0.01)     .02             0.02(0.00)
    a      Var (Residual)               8.39 (0.41)    <.01    8.38 (0.41)    <.01             8.39(0.00)
    b      Var (Level)                  1.44 (0.10)    <.01    0.94 (0.09)    <.01                    ---
    b      Var (Slope)                  0.00 (0.00)     .74    0.00 (0.00)     .12                    ---
    b      Var (Residual)               1.91 (0.07)    <.01    1.61 (0.06)    <.01                    ---
    a      Covar (Level, Slope)        -0.15 (0.07)     .03   -0.15 (0.07)     .03            -0.15(0.00)
    b      Covar (Level, Slope)         0.01 (0.01)     .35   -0.01 (0.01)     .45                    ---
    \      Correlation of Levels                      0.128                  0.116             0.12(0.01)
    \      Correlation of Slopes                      0.000                  0.000             0.00(0.00)
    \      Correlation of Residuals                   0.023                  0.015             0.02(0.01)
    \      N                                          3,393                  3,391          3392.00(1.41)
    \      occasions                                      6                      6             6.00(0.00)
    \      parameters                                    41                     41            41.00(0.00)
    \      LL                                       -37,326                -36,379   -3.685255e+04(  669)
    \      AIC                                       74,734                 72,840    7.378709e+04(1,339)
    \      BIC                                       74,985                 73,092    7.403839e+04(1,339)

##  word_de 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _word_de_


 process   label                                    aehplus
---------  -------------------------  ---------------------
   ab      Covar (Levels)               0.65 (0.17)    <.01
   ab      Covar (Slopes)               0.00 (0.00)     .99
   ab      Covar (Residuals)            0.09 (0.09)     .31
   er      Corr (Levels)                0.13 (0.03)    <.01
   er      Corr (Slopes)               -0.01 (0.66)     .99
   er      Corr (Residuals)             0.02 (0.02)     .31
    a      Level                       20.28 (0.18)    <.01
    a      Slope                       -0.29 (0.02)    <.01
    a      Level * age                 -0.25 (0.01)    <.01
    a      Level * education            0.99 (0.19)    <.01
    a      Level * height               0.21 (0.01)    <.01
    a      Level * smoking             -0.18 (0.17)     .29
    a      Level * cardio              -1.61 (0.34)    <.01
    a      Level * diabetes            -1.40 (0.40)    <.01
    a      Slope * age                 -0.01 (0.00)    <.01
    a      Slope * education           -0.01 (0.02)     .44
    a      Slope * height              -0.00 (0.00)     .06
    a      Slope * smoking              0.00 (0.02)     .92
    a      Slope * cardio               0.05 (0.04)     .17
    a      Slope * diabetes             0.00 (0.04)     .91
    b      Level                        3.89 (0.06)    <.01
    b      Slope                       -0.04 (0.01)    <.01
    b      Level * age                 -0.07 (0.00)    <.01
    b      Level * education            1.00 (0.07)    <.01
    b      Level * height               0.02 (0.00)    <.01
    b      Level * smoking             -0.22 (0.06)    <.01
    b      Level * cardio              -0.14 (0.12)     .24
    b      Level * diabetes            -0.38 (0.16)     .02
    b      Slope * age                 -0.00 (0.00)    <.01
    b      Slope * education           -0.00 (0.01)     .59
    b      Slope * height               0.00 (0.00)     .56
    b      Slope * smoking              0.01 (0.01)     .07
    b      Slope * cardio              -0.01 (0.02)     .69
    b      Slope * diabetes             0.01 (0.02)     .62
    a      Var (Level)                 17.96 (0.84)    <.01
    a      Var (Slope)                  0.02 (0.01)     .02
    a      Var (Residual)               8.39 (0.41)    <.01
    b      Var (Level)                  1.44 (0.10)    <.01
    b      Var (Slope)                  0.00 (0.00)     .74
    b      Var (Residual)               1.91 (0.07)    <.01
    a      Covar (Level, Slope)        -0.15 (0.07)     .03
    b      Covar (Level, Slope)         0.01 (0.01)     .35
    \      Correlation of Levels                      0.128
    \      Correlation of Slopes                      0.000
    \      Correlation of Residuals                   0.023
    \      N                                          3,393
    \      occasions                                      6
    \      parameters                                    41
    \      LL                                       -37,326
    \      AIC                                       74,734
    \      BIC                                       74,985

##  word_im 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _word_im_


 process   label                                    aehplus
---------  -------------------------  ---------------------
   ab      Covar (Levels)               0.48 (0.16)    <.01
   ab      Covar (Slopes)               0.00 (0.00)     .92
   ab      Covar (Residuals)            0.05 (0.08)     .52
   er      Corr (Levels)                0.12 (0.04)    <.01
   er      Corr (Slopes)               -0.03 (0.29)     .92
   er      Corr (Residuals)             0.01 (0.02)     .52
    a      Level                       20.27 (0.18)    <.01
    a      Slope                       -0.29 (0.02)    <.01
    a      Level * age                 -0.25 (0.01)    <.01
    a      Level * education            0.99 (0.19)    <.01
    a      Level * height               0.21 (0.01)    <.01
    a      Level * smoking             -0.18 (0.17)     .30
    a      Level * cardio              -1.61 (0.34)    <.01
    a      Level * diabetes            -1.40 (0.40)    <.01
    a      Slope * age                 -0.01 (0.00)    <.01
    a      Slope * education           -0.01 (0.02)     .46
    a      Slope * height              -0.00 (0.00)     .05
    a      Slope * smoking              0.00 (0.02)     .94
    a      Slope * cardio               0.05 (0.04)     .19
    a      Slope * diabetes             0.00 (0.04)     .92
    b      Level                        5.31 (0.05)    <.01
    b      Slope                       -0.04 (0.01)    <.01
    b      Level * age                 -0.06 (0.00)    <.01
    b      Level * education            0.72 (0.06)    <.01
    b      Level * height               0.01 (0.00)     .05
    b      Level * smoking             -0.04 (0.05)     .46
    b      Level * cardio              -0.23 (0.11)     .04
    b      Level * diabetes            -0.32 (0.14)     .02
    b      Slope * age                 -0.00 (0.00)    <.01
    b      Slope * education            0.01 (0.01)     .05
    b      Slope * height               0.00 (0.00)     .31
    b      Slope * smoking             -0.00 (0.01)     .60
    b      Slope * cardio               0.01 (0.01)     .69
    b      Slope * diabetes             0.01 (0.02)     .60
    a      Var (Level)                 17.95 (0.84)    <.01
    a      Var (Slope)                  0.02 (0.01)     .02
    a      Var (Residual)               8.38 (0.41)    <.01
    b      Var (Level)                  0.94 (0.09)    <.01
    b      Var (Slope)                  0.00 (0.00)     .12
    b      Var (Residual)               1.61 (0.06)    <.01
    a      Covar (Level, Slope)        -0.15 (0.07)     .03
    b      Covar (Level, Slope)        -0.01 (0.01)     .45
    \      Correlation of Levels                      0.116
    \      Correlation of Slopes                      0.000
    \      Correlation of Residuals                   0.015
    \      N                                          3,391
    \      occasions                                      6
    \      parameters                                    41
    \      LL                                       -36,379
    \      AIC                                       72,840
    \      BIC                                       73,092

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
Correlation of Residuals      word_im      0.01



P-values for corresponding covariances: 

 

label                   process_b   aehplus
---------------------  ----------  --------
Covariance of Levels      word_de      0.00
Covariance of Levels      word_im      0.00




label                   process_b   aehplus
---------------------  ----------  --------
Covariance of Slopes      word_de      0.99
Covariance of Slopes      word_im      0.92




label                       process_b   aehplus
-------------------------  ----------  --------
Covariance of  Residuals      word_de      0.31
Covariance of  Residuals      word_im      0.52



# male 

 Gender = _male_; Model type: _aehplus_;  Process (a) = _grip_; Process (b): *word_de*, *word_im*


 process   label                                    word_de                word_im               mean(sd)
---------  -------------------------  ---------------------  ---------------------  ---------------------
   ab      Covar (Levels)               0.29 (0.26)     .27    0.13 (0.23)     .58                    ---
   ab      Covar (Slopes)              -0.01 (0.00)     .12   -0.00 (0.00)     .12                    ---
   ab      Covar (Residuals)            0.15 (0.12)     .22    0.30 (0.12)     .01                    ---
   er      Corr (Levels)                0.04 (0.04)     .27    0.02 (0.04)     .58                    ---
   er      Corr (Slopes)               -0.51 (0.40)     .21   -0.44 (0.34)     .20                    ---
   er      Corr (Residuals)             0.03 (0.02)     .22    0.06 (0.02)     .01                    ---
    a      Level                       34.31 (0.33)    <.01   34.31 (0.33)    <.01            34.31(0.00)
    a      Slope                       -0.45 (0.04)    <.01   -0.45 (0.04)    <.01            -0.45(0.00)
    a      Level * age                 -0.46 (0.01)    <.01   -0.46 (0.01)    <.01            -0.46(0.00)
    a      Level * education            1.21 (0.30)    <.01    1.21 (0.30)    <.01             1.21(0.00)
    a      Level * height               0.29 (0.02)    <.01    0.29 (0.02)    <.01             0.29(0.00)
    a      Level * smoking             -0.35 (0.30)     .24   -0.34 (0.30)     .24            -0.34(0.00)
    a      Level * cardio              -0.32 (0.39)     .41   -0.32 (0.39)     .41            -0.32(0.00)
    a      Level * diabetes            -2.09 (0.50)    <.01   -2.10 (0.50)    <.01            -2.09(0.00)
    a      Slope * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01            -0.01(0.00)
    a      Slope * education           -0.03 (0.03)     .31   -0.03 (0.03)     .35            -0.03(0.00)
    a      Slope * height               0.00 (0.00)     .53    0.00 (0.00)     .56             0.00(0.00)
    a      Slope * smoking             -0.01 (0.03)     .81   -0.01 (0.03)     .82            -0.01(0.00)
    a      Slope * cardio              -0.13 (0.04)    <.01   -0.13 (0.04)    <.01            -0.13(0.00)
    a      Slope * diabetes            -0.17 (0.05)    <.01   -0.17 (0.05)    <.01            -0.17(0.00)
    b      Level                        3.28 (0.08)    <.01    4.88 (0.07)    <.01                    ---
    b      Slope                        0.00 (0.01)     .63   -0.03 (0.01)    <.01                    ---
    b      Level * age                 -0.07 (0.00)    <.01   -0.06 (0.00)    <.01                    ---
    b      Level * education            0.91 (0.07)    <.01    0.75 (0.06)    <.01                    ---
    b      Level * height               0.02 (0.00)    <.01    0.01 (0.00)    <.01                    ---
    b      Level * smoking              0.03 (0.07)     .62    0.00 (0.06)     .98                    ---
    b      Level * cardio              -0.04 (0.10)     .67   -0.13 (0.09)     .12                    ---
    b      Level * diabetes            -0.28 (0.11)     .01   -0.10 (0.10)     .35                    ---
    b      Slope * age                 -0.00 (0.00)    <.01   -0.00 (0.00)    <.01                    ---
    b      Slope * education           -0.01 (0.01)     .22    0.00 (0.01)     .98                    ---
    b      Slope * height               0.00 (0.00)     .90    0.00 (0.00)     .04                    ---
    b      Slope * smoking             -0.02 (0.01)     .02   -0.02 (0.01)     .04                    ---
    b      Slope * cardio              -0.03 (0.01)     .02   -0.01 (0.01)     .57                    ---
    b      Slope * diabetes            -0.01 (0.02)     .36   -0.01 (0.02)     .44                    ---
    a      Var (Level)                 37.57 (1.96)    <.01   37.38 (1.96)    <.01            37.48(0.14)
    a      Var (Slope)                  0.05 (0.03)     .07    0.04 (0.03)     .11             0.04(0.00)
    a      Var (Residual)              18.05 (0.93)    <.01   18.21 (0.94)    <.01            18.13(0.11)
    b      Var (Level)                  1.42 (0.10)    <.01    0.99 (0.08)    <.01                    ---
    b      Var (Slope)                  0.00 (0.00)     .14    0.00 (0.00)     .02                    ---
    b      Var (Residual)               1.71 (0.06)    <.01    1.40 (0.06)    <.01                    ---
    a      Covar (Level, Slope)        -0.41 (0.19)     .02   -0.38 (0.18)     .04            -0.40(0.02)
    b      Covar (Level, Slope)        -0.01 (0.01)     .24   -0.02 (0.01)     .06                    ---
    \      Correlation of Levels                      0.040                  0.021             0.03(0.01)
    \      Correlation of Slopes                     -0.500                 -0.390            -0.45(0.08)
    \      Correlation of Residuals                   0.028                  0.059             0.04(0.02)
    \      N                                          3,045                  3,043          3044.00(1.41)
    \      occasions                                      6                      6             6.00(0.00)
    \      parameters                                    41                     41            41.00(0.00)
    \      LL                                       -35,105                -34,252   -3.467861e+04(  603)
    \      AIC                                       70,292                 68,586    6.943921e+04(1,206)
    \      BIC                                       70,539                 68,833    6.968607e+04(1,206)

##  word_de 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _word_de_


 process   label                                    aehplus
---------  -------------------------  ---------------------
   ab      Covar (Levels)               0.29 (0.26)     .27
   ab      Covar (Slopes)              -0.01 (0.00)     .12
   ab      Covar (Residuals)            0.15 (0.12)     .22
   er      Corr (Levels)                0.04 (0.04)     .27
   er      Corr (Slopes)               -0.51 (0.40)     .21
   er      Corr (Residuals)             0.03 (0.02)     .22
    a      Level                       34.31 (0.33)    <.01
    a      Slope                       -0.45 (0.04)    <.01
    a      Level * age                 -0.46 (0.01)    <.01
    a      Level * education            1.21 (0.30)    <.01
    a      Level * height               0.29 (0.02)    <.01
    a      Level * smoking             -0.35 (0.30)     .24
    a      Level * cardio              -0.32 (0.39)     .41
    a      Level * diabetes            -2.09 (0.50)    <.01
    a      Slope * age                 -0.01 (0.00)    <.01
    a      Slope * education           -0.03 (0.03)     .31
    a      Slope * height               0.00 (0.00)     .53
    a      Slope * smoking             -0.01 (0.03)     .81
    a      Slope * cardio              -0.13 (0.04)    <.01
    a      Slope * diabetes            -0.17 (0.05)    <.01
    b      Level                        3.28 (0.08)    <.01
    b      Slope                        0.00 (0.01)     .63
    b      Level * age                 -0.07 (0.00)    <.01
    b      Level * education            0.91 (0.07)    <.01
    b      Level * height               0.02 (0.00)    <.01
    b      Level * smoking              0.03 (0.07)     .62
    b      Level * cardio              -0.04 (0.10)     .67
    b      Level * diabetes            -0.28 (0.11)     .01
    b      Slope * age                 -0.00 (0.00)    <.01
    b      Slope * education           -0.01 (0.01)     .22
    b      Slope * height               0.00 (0.00)     .90
    b      Slope * smoking             -0.02 (0.01)     .02
    b      Slope * cardio              -0.03 (0.01)     .02
    b      Slope * diabetes            -0.01 (0.02)     .36
    a      Var (Level)                 37.57 (1.96)    <.01
    a      Var (Slope)                  0.05 (0.03)     .07
    a      Var (Residual)              18.05 (0.93)    <.01
    b      Var (Level)                  1.42 (0.10)    <.01
    b      Var (Slope)                  0.00 (0.00)     .14
    b      Var (Residual)               1.71 (0.06)    <.01
    a      Covar (Level, Slope)        -0.41 (0.19)     .02
    b      Covar (Level, Slope)        -0.01 (0.01)     .24
    \      Correlation of Levels                      0.040
    \      Correlation of Slopes                     -0.500
    \      Correlation of Residuals                   0.028
    \      N                                          3,045
    \      occasions                                      6
    \      parameters                                    41
    \      LL                                       -35,105
    \      AIC                                       70,292
    \      BIC                                       70,539

##  word_im 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _word_im_


 process   label                                    aehplus
---------  -------------------------  ---------------------
   ab      Covar (Levels)               0.13 (0.23)     .58
   ab      Covar (Slopes)              -0.00 (0.00)     .12
   ab      Covar (Residuals)            0.30 (0.12)     .01
   er      Corr (Levels)                0.02 (0.04)     .58
   er      Corr (Slopes)               -0.44 (0.34)     .20
   er      Corr (Residuals)             0.06 (0.02)     .01
    a      Level                       34.31 (0.33)    <.01
    a      Slope                       -0.45 (0.04)    <.01
    a      Level * age                 -0.46 (0.01)    <.01
    a      Level * education            1.21 (0.30)    <.01
    a      Level * height               0.29 (0.02)    <.01
    a      Level * smoking             -0.34 (0.30)     .24
    a      Level * cardio              -0.32 (0.39)     .41
    a      Level * diabetes            -2.10 (0.50)    <.01
    a      Slope * age                 -0.01 (0.00)    <.01
    a      Slope * education           -0.03 (0.03)     .35
    a      Slope * height               0.00 (0.00)     .56
    a      Slope * smoking             -0.01 (0.03)     .82
    a      Slope * cardio              -0.13 (0.04)    <.01
    a      Slope * diabetes            -0.17 (0.05)    <.01
    b      Level                        4.88 (0.07)    <.01
    b      Slope                       -0.03 (0.01)    <.01
    b      Level * age                 -0.06 (0.00)    <.01
    b      Level * education            0.75 (0.06)    <.01
    b      Level * height               0.01 (0.00)    <.01
    b      Level * smoking              0.00 (0.06)     .98
    b      Level * cardio              -0.13 (0.09)     .12
    b      Level * diabetes            -0.10 (0.10)     .35
    b      Slope * age                 -0.00 (0.00)    <.01
    b      Slope * education            0.00 (0.01)     .98
    b      Slope * height               0.00 (0.00)     .04
    b      Slope * smoking             -0.02 (0.01)     .04
    b      Slope * cardio              -0.01 (0.01)     .57
    b      Slope * diabetes            -0.01 (0.02)     .44
    a      Var (Level)                 37.38 (1.96)    <.01
    a      Var (Slope)                  0.04 (0.03)     .11
    a      Var (Residual)              18.21 (0.94)    <.01
    b      Var (Level)                  0.99 (0.08)    <.01
    b      Var (Slope)                  0.00 (0.00)     .02
    b      Var (Residual)               1.40 (0.06)    <.01
    a      Covar (Level, Slope)        -0.38 (0.18)     .04
    b      Covar (Level, Slope)        -0.02 (0.01)     .06
    \      Correlation of Levels                      0.021
    \      Correlation of Slopes                     -0.390
    \      Correlation of Residuals                   0.059
    \      N                                          3,043
    \      occasions                                      6
    \      parameters                                    41
    \      LL                                       -34,252
    \      AIC                                       68,586
    \      BIC                                       68,833

## Summary 

 Study = _ELSA_; Gender = _male_; Process (a) = _grip_

 Computed correlations:

 

label                    process_b   aehplus
----------------------  ----------  --------
Correlation of Levels      word_de      0.04
Correlation of Levels      word_im      0.02




label                    process_b   aehplus
----------------------  ----------  --------
Correlation of Slopes      word_de     -0.50
Correlation of Slopes      word_im     -0.39




label                       process_b   aehplus
-------------------------  ----------  --------
Correlation of Residuals      word_de      0.03
Correlation of Residuals      word_im      0.06



P-values for corresponding covariances: 

 

label                   process_b   aehplus
---------------------  ----------  --------
Covariance of Levels      word_de      0.27
Covariance of Levels      word_im      0.58




label                   process_b   aehplus
---------------------  ----------  --------
Covariance of Slopes      word_de      0.12
Covariance of Slopes      word_im      0.12




label                       process_b   aehplus
-------------------------  ----------  --------
Covariance of  Residuals      word_de      0.22
Covariance of  Residuals      word_im      0.01


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
