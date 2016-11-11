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





# grip : Available models 

 Study **HRS** have contributed the following outcome pairs to the IASLA-2015-Portland model pool: 
NULL



process_a   process_b    n_models
----------  ----------  ---------
grip        gait                2
grip        pef                 2




study_name   subgroup   model_type   process_a   process_b    n_models
-----------  ---------  -----------  ----------  ----------  ---------
hrs          female     aehplus      grip        gait                1
hrs          female     aehplus      grip        pef                 1




study_name   subgroup   model_type   process_a   process_b    n_models
-----------  ---------  -----------  ----------  ----------  ---------
hrs          male       aehplus      grip        gait                1
hrs          male       aehplus      grip        pef                 1


# female 

 Gender = _female_; Model type: _aehplus_;  Process (a) = _grip_; Process (b): *gait*, *pef*


 process   label                                       gait                        pef                      mean(sd)
---------  -------------------------  ---------------------  -------------------------  ----------------------------
   ab      Covar (Levels)               0.17 (0.03)    <.01       89.96 (6.42)    <.01                           ---
   ab      Covar (Slopes)               0.00 (0.00)     .82        0.45 (0.13)    <.01                           ---
   ab      Covar (Residuals)            0.05 (0.01)    <.01        7.25 (2.38)    <.01                           ---
   er      Corr (Levels)                0.26 (0.04)    <.01        0.33 (0.02)    <.01                           ---
   er      Corr (Slopes)               -0.05 (0.21)     .82        0.58 (0.17)    <.01                           ---
   er      Corr (Residuals)             0.10 (0.02)    <.01        0.06 (0.02)    <.01                           ---
    a      Level                       24.00 (0.21)    <.01       23.98 (0.21)    <.01                   23.99(0.01)
    a      Slope                       -0.45 (0.03)    <.01       -0.45 (0.03)    <.01                   -0.45(0.00)
    a      Level * age                 -0.26 (0.01)    <.01       -0.26 (0.01)    <.01                   -0.26(0.00)
    a      Level * education            0.01 (0.03)     .72        0.01 (0.03)     .66                    0.01(0.00)
    a      Level * height               0.23 (0.01)    <.01        0.23 (0.01)    <.01                    0.23(0.00)
    a      Level * smoking             -0.11 (0.16)     .47       -0.12 (0.16)     .46                   -0.12(0.00)
    a      Level * cardio              -1.22 (0.20)    <.01       -1.23 (0.20)    <.01                   -1.23(0.00)
    a      Level * diabetes            -1.22 (0.21)    <.01       -1.23 (0.21)    <.01                   -1.22(0.00)
    a      Slope * age                 -0.01 (0.00)    <.01       -0.01 (0.00)    <.01                   -0.01(0.00)
    a      Slope * education            0.00 (0.00)     .95        0.00 (0.00)     .99                    0.00(0.00)
    a      Slope * height              -0.00 (0.00)     .26       -0.00 (0.00)     .34                   -0.00(0.00)
    a      Slope * smoking             -0.01 (0.02)     .52       -0.02 (0.02)     .45                   -0.01(0.00)
    a      Slope * cardio               0.02 (0.03)     .57        0.01 (0.03)     .59                    0.02(0.00)
    a      Slope * diabetes            -0.00 (0.03)     .89       -0.00 (0.03)     .97                   -0.00(0.00)
    b      Level                        0.71 (0.01)    <.01      249.43 (2.86)    <.01                           ---
    b      Slope                       -0.01 (0.00)    <.01       -2.68 (0.42)    <.01                           ---
    b      Level * age                 -0.01 (0.00)    <.01       -3.50 (0.12)    <.01                           ---
    b      Level * education            0.02 (0.00)    <.01        5.83 (0.39)    <.01                           ---
    b      Level * height               0.00 (0.00)     .07        1.95 (0.19)    <.01                           ---
    b      Level * smoking             -0.01 (0.01)     .28      -18.21 (2.35)    <.01                           ---
    b      Level * cardio              -0.04 (0.01)    <.01       -9.54 (3.02)    <.01                           ---
    b      Level * diabetes            -0.08 (0.01)    <.01      -11.52 (3.08)    <.01                           ---
    b      Slope * age                  0.00 (0.00)    <.01       -0.18 (0.02)    <.01                           ---
    b      Slope * education            0.00 (0.00)     .34       -0.08 (0.06)     .18                           ---
    b      Slope * height               0.00 (0.00)     .78        0.02 (0.02)     .49                           ---
    b      Slope * smoking             -0.00 (0.00)     .40       -0.95 (0.30)    <.01                           ---
    b      Slope * cardio               0.00 (0.00)     .90        0.05 (0.41)     .91                           ---
    b      Slope * diabetes            -0.00 (0.00)     .09        0.21 (0.42)     .62                           ---
    a      Var (Level)                 18.14 (0.69)    <.01       18.16 (0.68)    <.01                   18.15(0.01)
    a      Var (Slope)                  0.05 (0.01)    <.01        0.05 (0.01)    <.01                    0.05(0.00)
    a      Var (Residual)               8.19 (0.30)    <.01        8.17 (0.29)    <.01                    8.18(0.01)
    b      Var (Level)                  0.02 (0.00)    <.01   4153.38 (133.23)    <.01                           ---
    b      Var (Slope)                  0.00 (0.00)     .06       11.23 (2.81)    <.01                           ---
    b      Var (Residual)               0.03 (0.00)    <.01    1686.83 (62.59)    <.01                           ---
    a      Covar (Level, Slope)        -0.31 (0.08)    <.01       -0.31 (0.08)    <.01                   -0.31(0.00)
    b      Covar (Level, Slope)        -0.00 (0.00)     .02     -21.61 (14.88)     .15                           ---
    \      Correlation of Levels                       0.26                      0.328                    0.29(0.05)
    \      Correlation of Slopes                        NaN                      0.584                      0.58(NA)
    \      Correlation of Residuals                    0.10                      0.062                    0.08(0.03)
    \      N                                          4,208                      4,208                 4208.00(0.00)
    \      occasions                                      3                          3                    3.00(0.00)
    \      parameters                                    41                         41                   41.00(0.00)
    \      LL                                       -26,979                    -82,168   -5.457346e+04(3.902456e+04)
    \      AIC                                       54,040                    164,418    1.092289e+05(7.804913e+04)
    \      BIC                                       54,300                    164,678    1.094891e+05(7.804913e+04)

##  gait 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _gait_


 process   label                                    aehplus
---------  -------------------------  ---------------------
   ab      Covar (Levels)               0.17 (0.03)    <.01
   ab      Covar (Slopes)               0.00 (0.00)     .82
   ab      Covar (Residuals)            0.05 (0.01)    <.01
   er      Corr (Levels)                0.26 (0.04)    <.01
   er      Corr (Slopes)               -0.05 (0.21)     .82
   er      Corr (Residuals)             0.10 (0.02)    <.01
    a      Level                       24.00 (0.21)    <.01
    a      Slope                       -0.45 (0.03)    <.01
    a      Level * age                 -0.26 (0.01)    <.01
    a      Level * education            0.01 (0.03)     .72
    a      Level * height               0.23 (0.01)    <.01
    a      Level * smoking             -0.11 (0.16)     .47
    a      Level * cardio              -1.22 (0.20)    <.01
    a      Level * diabetes            -1.22 (0.21)    <.01
    a      Slope * age                 -0.01 (0.00)    <.01
    a      Slope * education            0.00 (0.00)     .95
    a      Slope * height              -0.00 (0.00)     .26
    a      Slope * smoking             -0.01 (0.02)     .52
    a      Slope * cardio               0.02 (0.03)     .57
    a      Slope * diabetes            -0.00 (0.03)     .89
    b      Level                        0.71 (0.01)    <.01
    b      Slope                       -0.01 (0.00)    <.01
    b      Level * age                 -0.01 (0.00)    <.01
    b      Level * education            0.02 (0.00)    <.01
    b      Level * height               0.00 (0.00)     .07
    b      Level * smoking             -0.01 (0.01)     .28
    b      Level * cardio              -0.04 (0.01)    <.01
    b      Level * diabetes            -0.08 (0.01)    <.01
    b      Slope * age                  0.00 (0.00)    <.01
    b      Slope * education            0.00 (0.00)     .34
    b      Slope * height               0.00 (0.00)     .78
    b      Slope * smoking             -0.00 (0.00)     .40
    b      Slope * cardio               0.00 (0.00)     .90
    b      Slope * diabetes            -0.00 (0.00)     .09
    a      Var (Level)                 18.14 (0.69)    <.01
    a      Var (Slope)                  0.05 (0.01)    <.01
    a      Var (Residual)               8.19 (0.30)    <.01
    b      Var (Level)                  0.02 (0.00)    <.01
    b      Var (Slope)                  0.00 (0.00)     .06
    b      Var (Residual)               0.03 (0.00)    <.01
    a      Covar (Level, Slope)        -0.31 (0.08)    <.01
    b      Covar (Level, Slope)        -0.00 (0.00)     .02
    \      Correlation of Levels                       0.26
    \      Correlation of Slopes                        NaN
    \      Correlation of Residuals                    0.10
    \      N                                          4,208
    \      occasions                                      3
    \      parameters                                    41
    \      LL                                       -26,979
    \      AIC                                       54,040
    \      BIC                                       54,300

##  pef 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _pef_


 process   label                                        aehplus
---------  -------------------------  -------------------------
   ab      Covar (Levels)                  89.96 (6.42)    <.01
   ab      Covar (Slopes)                   0.45 (0.13)    <.01
   ab      Covar (Residuals)                7.25 (2.38)    <.01
   er      Corr (Levels)                    0.33 (0.02)    <.01
   er      Corr (Slopes)                    0.58 (0.17)    <.01
   er      Corr (Residuals)                 0.06 (0.02)    <.01
    a      Level                           23.98 (0.21)    <.01
    a      Slope                           -0.45 (0.03)    <.01
    a      Level * age                     -0.26 (0.01)    <.01
    a      Level * education                0.01 (0.03)     .66
    a      Level * height                   0.23 (0.01)    <.01
    a      Level * smoking                 -0.12 (0.16)     .46
    a      Level * cardio                  -1.23 (0.20)    <.01
    a      Level * diabetes                -1.23 (0.21)    <.01
    a      Slope * age                     -0.01 (0.00)    <.01
    a      Slope * education                0.00 (0.00)     .99
    a      Slope * height                  -0.00 (0.00)     .34
    a      Slope * smoking                 -0.02 (0.02)     .45
    a      Slope * cardio                   0.01 (0.03)     .59
    a      Slope * diabetes                -0.00 (0.03)     .97
    b      Level                          249.43 (2.86)    <.01
    b      Slope                           -2.68 (0.42)    <.01
    b      Level * age                     -3.50 (0.12)    <.01
    b      Level * education                5.83 (0.39)    <.01
    b      Level * height                   1.95 (0.19)    <.01
    b      Level * smoking                -18.21 (2.35)    <.01
    b      Level * cardio                  -9.54 (3.02)    <.01
    b      Level * diabetes               -11.52 (3.08)    <.01
    b      Slope * age                     -0.18 (0.02)    <.01
    b      Slope * education               -0.08 (0.06)     .18
    b      Slope * height                   0.02 (0.02)     .49
    b      Slope * smoking                 -0.95 (0.30)    <.01
    b      Slope * cardio                   0.05 (0.41)     .91
    b      Slope * diabetes                 0.21 (0.42)     .62
    a      Var (Level)                     18.16 (0.68)    <.01
    a      Var (Slope)                      0.05 (0.01)    <.01
    a      Var (Residual)                   8.17 (0.29)    <.01
    b      Var (Level)                 4153.38 (133.23)    <.01
    b      Var (Slope)                     11.23 (2.81)    <.01
    b      Var (Residual)               1686.83 (62.59)    <.01
    a      Covar (Level, Slope)            -0.31 (0.08)    <.01
    b      Covar (Level, Slope)          -21.61 (14.88)     .15
    \      Correlation of Levels                          0.328
    \      Correlation of Slopes                          0.584
    \      Correlation of Residuals                       0.062
    \      N                                              4,208
    \      occasions                                          3
    \      parameters                                        41
    \      LL                                           -82,168
    \      AIC                                          164,418
    \      BIC                                          164,678

# male 

 Gender = _male_; Model type: _aehplus_;  Process (a) = _grip_; Process (b): *gait*, *pef*


 process   label                                       gait                         pef                      mean(sd)
---------  -------------------------  ---------------------  --------------------------  ----------------------------
   ab      Covar (Levels)               0.23 (0.05)    <.01      252.65 (17.89)    <.01                           ---
   ab      Covar (Slopes)               0.00 (0.00)     .30         0.61 (0.31)     .05                           ---
   ab      Covar (Residuals)            0.05 (0.03)     .07        18.40 (6.45)    <.01                           ---
   er      Corr (Levels)                0.22 (0.05)    <.01         0.38 (0.02)    <.01                           ---
   er      Corr (Slopes)                0.30 (0.30)     .32         0.34 (0.17)     .05                           ---
   er      Corr (Residuals)             0.06 (0.04)     .07         0.07 (0.03)    <.01                           ---
    a      Level                       38.34 (0.39)    <.01        38.33 (0.39)    <.01                   38.33(0.01)
    a      Slope                       -0.76 (0.06)    <.01        -0.77 (0.06)    <.01                   -0.77(0.00)
    a      Level * age                 -0.43 (0.01)    <.01        -0.43 (0.01)    <.01                   -0.43(0.00)
    a      Level * education            0.12 (0.04)    <.01         0.12 (0.04)    <.01                    0.12(0.00)
    a      Level * height               0.36 (0.02)    <.01         0.36 (0.02)    <.01                    0.36(0.00)
    a      Level * smoking             -0.25 (0.30)     .40        -0.25 (0.30)     .40                   -0.25(0.00)
    a      Level * cardio              -1.15 (0.32)    <.01        -1.13 (0.32)    <.01                   -1.14(0.01)
    a      Level * diabetes            -1.60 (0.35)    <.01        -1.60 (0.35)    <.01                   -1.60(0.00)
    a      Slope * age                 -0.01 (0.00)    <.01        -0.01 (0.00)    <.01                   -0.01(0.00)
    a      Slope * education            0.01 (0.01)     .13         0.01 (0.01)     .11                    0.01(0.00)
    a      Slope * height              -0.00 (0.00)     .06        -0.00 (0.00)     .05                   -0.00(0.00)
    a      Slope * smoking             -0.12 (0.04)    <.01        -0.12 (0.04)    <.01                   -0.12(0.00)
    a      Slope * cardio               0.00 (0.04)     .99         0.00 (0.04)     .99                    0.00(0.00)
    a      Slope * diabetes            -0.07 (0.05)     .16        -0.07 (0.05)     .16                   -0.07(0.00)
    b      Level                        0.79 (0.01)    <.01       369.09 (5.97)    <.01                           ---
    b      Slope                       -0.02 (0.00)    <.01        -3.36 (0.84)    <.01                           ---
    b      Level * age                 -0.01 (0.00)    <.01        -4.36 (0.22)    <.01                           ---
    b      Level * education            0.02 (0.00)    <.01         7.97 (0.68)    <.01                           ---
    b      Level * height               0.00 (0.00)    <.01         3.41 (0.31)    <.01                           ---
    b      Level * smoking             -0.02 (0.01)     .06       -25.82 (4.57)    <.01                           ---
    b      Level * cardio              -0.04 (0.01)    <.01       -19.13 (4.94)    <.01                           ---
    b      Level * diabetes            -0.03 (0.01)     .02        -7.10 (5.21)     .17                           ---
    b      Slope * age                  0.00 (0.00)     .04        -0.25 (0.03)    <.01                           ---
    b      Slope * education            0.00 (0.00)     .02         0.00 (0.10)     .98                           ---
    b      Slope * height               0.00 (0.00)     .72         0.03 (0.04)     .43                           ---
    b      Slope * smoking              0.00 (0.00)     .85        -0.91 (0.55)     .10                           ---
    b      Slope * cardio               0.00 (0.00)     .67        -1.20 (0.64)     .06                           ---
    b      Slope * diabetes            -0.00 (0.00)     .13        -1.84 (0.67)     .01                           ---
    a      Var (Level)                 41.23 (1.77)    <.01        41.18 (1.77)    <.01                   41.21(0.04)
    a      Var (Slope)                  0.15 (0.04)    <.01         0.15 (0.04)    <.01                    0.15(0.00)
    a      Var (Residual)              16.80 (0.79)    <.01        16.84 (0.79)    <.01                   16.82(0.02)
    b      Var (Level)                  0.03 (0.00)    <.01   10797.43 (380.28)    <.01                           ---
    b      Var (Slope)                  0.00 (0.00)     .24        22.37 (7.91)    <.01                           ---
    b      Var (Residual)               0.03 (0.00)    <.01    3544.51 (174.72)    <.01                           ---
    a      Covar (Level, Slope)        -0.59 (0.20)    <.01        -0.56 (0.20)    <.01                   -0.57(0.02)
    b      Covar (Level, Slope)        -0.00 (0.00)     .10      -40.72 (40.40)     .31                           ---
    \      Correlation of Levels                      0.217                       0.379                    0.30(0.11)
    \      Correlation of Slopes                        Inf                       0.335                      Inf(NaN)
    \      Correlation of Residuals                   0.065                       0.075                    0.07(0.01)
    \      N                                          3,034                       3,034                 3034.00(0.00)
    \      occasions                                      3                           3                    3.00(0.00)
    \      parameters                                    41                          41                   41.00(0.00)
    \      LL                                       -22,109                     -63,442   -4.277562e+04(2.922732e+04)
    \      AIC                                       44,300                     126,967    8.563324e+04(5.845465e+04)
    \      BIC                                       44,546                     127,214    8.587996e+04(5.845465e+04)

##  gait 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _gait_


 process   label                                    aehplus
---------  -------------------------  ---------------------
   ab      Covar (Levels)               0.23 (0.05)    <.01
   ab      Covar (Slopes)               0.00 (0.00)     .30
   ab      Covar (Residuals)            0.05 (0.03)     .07
   er      Corr (Levels)                0.22 (0.05)    <.01
   er      Corr (Slopes)                0.30 (0.30)     .32
   er      Corr (Residuals)             0.06 (0.04)     .07
    a      Level                       38.34 (0.39)    <.01
    a      Slope                       -0.76 (0.06)    <.01
    a      Level * age                 -0.43 (0.01)    <.01
    a      Level * education            0.12 (0.04)    <.01
    a      Level * height               0.36 (0.02)    <.01
    a      Level * smoking             -0.25 (0.30)     .40
    a      Level * cardio              -1.15 (0.32)    <.01
    a      Level * diabetes            -1.60 (0.35)    <.01
    a      Slope * age                 -0.01 (0.00)    <.01
    a      Slope * education            0.01 (0.01)     .13
    a      Slope * height              -0.00 (0.00)     .06
    a      Slope * smoking             -0.12 (0.04)    <.01
    a      Slope * cardio               0.00 (0.04)     .99
    a      Slope * diabetes            -0.07 (0.05)     .16
    b      Level                        0.79 (0.01)    <.01
    b      Slope                       -0.02 (0.00)    <.01
    b      Level * age                 -0.01 (0.00)    <.01
    b      Level * education            0.02 (0.00)    <.01
    b      Level * height               0.00 (0.00)    <.01
    b      Level * smoking             -0.02 (0.01)     .06
    b      Level * cardio              -0.04 (0.01)    <.01
    b      Level * diabetes            -0.03 (0.01)     .02
    b      Slope * age                  0.00 (0.00)     .04
    b      Slope * education            0.00 (0.00)     .02
    b      Slope * height               0.00 (0.00)     .72
    b      Slope * smoking              0.00 (0.00)     .85
    b      Slope * cardio               0.00 (0.00)     .67
    b      Slope * diabetes            -0.00 (0.00)     .13
    a      Var (Level)                 41.23 (1.77)    <.01
    a      Var (Slope)                  0.15 (0.04)    <.01
    a      Var (Residual)              16.80 (0.79)    <.01
    b      Var (Level)                  0.03 (0.00)    <.01
    b      Var (Slope)                  0.00 (0.00)     .24
    b      Var (Residual)               0.03 (0.00)    <.01
    a      Covar (Level, Slope)        -0.59 (0.20)    <.01
    b      Covar (Level, Slope)        -0.00 (0.00)     .10
    \      Correlation of Levels                      0.217
    \      Correlation of Slopes                        Inf
    \      Correlation of Residuals                   0.065
    \      N                                          3,034
    \      occasions                                      3
    \      parameters                                    41
    \      LL                                       -22,109
    \      AIC                                       44,300
    \      BIC                                       44,546

##  pef 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _pef_


 process   label                                         aehplus
---------  -------------------------  --------------------------
   ab      Covar (Levels)                 252.65 (17.89)    <.01
   ab      Covar (Slopes)                    0.61 (0.31)     .05
   ab      Covar (Residuals)                18.40 (6.45)    <.01
   er      Corr (Levels)                     0.38 (0.02)    <.01
   er      Corr (Slopes)                     0.34 (0.17)     .05
   er      Corr (Residuals)                  0.07 (0.03)    <.01
    a      Level                            38.33 (0.39)    <.01
    a      Slope                            -0.77 (0.06)    <.01
    a      Level * age                      -0.43 (0.01)    <.01
    a      Level * education                 0.12 (0.04)    <.01
    a      Level * height                    0.36 (0.02)    <.01
    a      Level * smoking                  -0.25 (0.30)     .40
    a      Level * cardio                   -1.13 (0.32)    <.01
    a      Level * diabetes                 -1.60 (0.35)    <.01
    a      Slope * age                      -0.01 (0.00)    <.01
    a      Slope * education                 0.01 (0.01)     .11
    a      Slope * height                   -0.00 (0.00)     .05
    a      Slope * smoking                  -0.12 (0.04)    <.01
    a      Slope * cardio                    0.00 (0.04)     .99
    a      Slope * diabetes                 -0.07 (0.05)     .16
    b      Level                           369.09 (5.97)    <.01
    b      Slope                            -3.36 (0.84)    <.01
    b      Level * age                      -4.36 (0.22)    <.01
    b      Level * education                 7.97 (0.68)    <.01
    b      Level * height                    3.41 (0.31)    <.01
    b      Level * smoking                 -25.82 (4.57)    <.01
    b      Level * cardio                  -19.13 (4.94)    <.01
    b      Level * diabetes                 -7.10 (5.21)     .17
    b      Slope * age                      -0.25 (0.03)    <.01
    b      Slope * education                 0.00 (0.10)     .98
    b      Slope * height                    0.03 (0.04)     .43
    b      Slope * smoking                  -0.91 (0.55)     .10
    b      Slope * cardio                   -1.20 (0.64)     .06
    b      Slope * diabetes                 -1.84 (0.67)     .01
    a      Var (Level)                      41.18 (1.77)    <.01
    a      Var (Slope)                       0.15 (0.04)    <.01
    a      Var (Residual)                   16.84 (0.79)    <.01
    b      Var (Level)                 10797.43 (380.28)    <.01
    b      Var (Slope)                      22.37 (7.91)    <.01
    b      Var (Residual)               3544.51 (174.72)    <.01
    a      Covar (Level, Slope)             -0.56 (0.20)    <.01
    b      Covar (Level, Slope)           -40.72 (40.40)     .31
    \      Correlation of Levels                           0.379
    \      Correlation of Slopes                           0.335
    \      Correlation of Residuals                        0.075
    \      N                                               3,034
    \      occasions                                           3
    \      parameters                                         41
    \      LL                                            -63,442
    \      AIC                                           126,967
    \      BIC                                           127,214

# pef : Available models 

 Study **HRS** have contributed the following outcome pairs to the IASLA-2015-Portland model pool: 
NULL



process_a   process_b    n_models
----------  ----------  ---------
pef         gait                2




study_name   subgroup   model_type   process_a   process_b    n_models
-----------  ---------  -----------  ----------  ----------  ---------
hrs          female     aehplus      pef         gait                1




study_name   subgroup   model_type   process_a   process_b    n_models
-----------  ---------  -----------  ----------  ----------  ---------
hrs          male       aehplus      pef         gait                1


# female 

 Gender = _female_; Model type: _aehplus_;  Process (a) = _pef_; Process (b): *gait*


 process   label                                           gait            mean(sd)
---------  -------------------------  -------------------------  ------------------
   ab      Covar (Levels)                   3.38 (0.39)    <.01                 ---
   ab      Covar (Slopes)                  -0.01 (0.01)     .27                 ---
   ab      Covar (Residuals)                0.92 (0.17)    <.01                 ---
   er      Corr (Levels)                    0.34 (0.04)    <.01                 ---
   er      Corr (Slopes)                   -0.23 (0.21)     .27                 ---
   er      Corr (Residuals)                 0.13 (0.02)    <.01                 ---
    a      Level                          249.56 (2.86)    <.01          249.56(NA)
    a      Slope                           -2.69 (0.42)    <.01           -2.69(NA)
    a      Level * age                     -3.50 (0.12)    <.01           -3.50(NA)
    a      Level * education                5.80 (0.39)    <.01            5.80(NA)
    a      Level * height                   1.95 (0.19)    <.01            1.95(NA)
    a      Level * smoking                -18.25 (2.36)    <.01          -18.25(NA)
    a      Level * cardio                  -9.56 (3.02)    <.01           -9.56(NA)
    a      Level * diabetes               -11.54 (3.08)    <.01          -11.54(NA)
    a      Slope * age                     -0.18 (0.02)    <.01           -0.18(NA)
    a      Slope * education               -0.07 (0.06)     .18           -0.07(NA)
    a      Slope * height                   0.02 (0.02)     .47            0.02(NA)
    a      Slope * smoking                 -0.93 (0.30)    <.01           -0.93(NA)
    a      Slope * cardio                   0.08 (0.41)     .84            0.08(NA)
    a      Slope * diabetes                 0.20 (0.42)     .63            0.20(NA)
    b      Level                            0.71 (0.01)    <.01                 ---
    b      Slope                           -0.01 (0.00)    <.01                 ---
    b      Level * age                     -0.01 (0.00)    <.01                 ---
    b      Level * education                0.02 (0.00)    <.01                 ---
    b      Level * height                   0.00 (0.00)     .06                 ---
    b      Level * smoking                 -0.01 (0.01)     .36                 ---
    b      Level * cardio                  -0.04 (0.01)    <.01                 ---
    b      Level * diabetes                -0.08 (0.01)    <.01                 ---
    b      Slope * age                      0.00 (0.00)    <.01                 ---
    b      Slope * education                0.00 (0.00)     .28                 ---
    b      Slope * height                   0.00 (0.00)     .77                 ---
    b      Slope * smoking                 -0.00 (0.00)     .29                 ---
    b      Slope * cardio                   0.00 (0.00)     .94                 ---
    b      Slope * diabetes                -0.00 (0.00)     .12                 ---
    a      Var (Level)                 4149.41 (133.39)    <.01         4149.41(NA)
    a      Var (Slope)                     10.82 (2.80)    <.01           10.82(NA)
    a      Var (Residual)               1692.73 (62.96)    <.01         1692.73(NA)
    b      Var (Level)                      0.02 (0.00)    <.01                 ---
    b      Var (Slope)                      0.00 (0.00)     .08                 ---
    b      Var (Residual)                   0.03 (0.00)    <.01                 ---
    a      Covar (Level, Slope)          -20.80 (14.88)     .16          -20.80(NA)
    b      Covar (Level, Slope)            -0.00 (0.00)     .02                 ---
    \      Correlation of Levels                           0.33            0.33(NA)
    \      Correlation of Slopes                           -Inf            -Inf(NA)
    \      Correlation of Residuals                        0.13            0.13(NA)
    \      N                                              4,208         4208.00(NA)
    \      occasions                                          3            3.00(NA)
    \      parameters                                        41           41.00(NA)
    \      LL                                           -53,870   -5.387049e+04(NA)
    \      AIC                                          107,823    1.078230e+05(NA)
    \      BIC                                          108,083    1.080831e+05(NA)

##  gait 

 Gender = _female_;  Process (a) = *pef*; Process (b) = _gait_


 process   label                                        aehplus
---------  -------------------------  -------------------------
   ab      Covar (Levels)                   3.38 (0.39)    <.01
   ab      Covar (Slopes)                  -0.01 (0.01)     .27
   ab      Covar (Residuals)                0.92 (0.17)    <.01
   er      Corr (Levels)                    0.34 (0.04)    <.01
   er      Corr (Slopes)                   -0.23 (0.21)     .27
   er      Corr (Residuals)                 0.13 (0.02)    <.01
    a      Level                          249.56 (2.86)    <.01
    a      Slope                           -2.69 (0.42)    <.01
    a      Level * age                     -3.50 (0.12)    <.01
    a      Level * education                5.80 (0.39)    <.01
    a      Level * height                   1.95 (0.19)    <.01
    a      Level * smoking                -18.25 (2.36)    <.01
    a      Level * cardio                  -9.56 (3.02)    <.01
    a      Level * diabetes               -11.54 (3.08)    <.01
    a      Slope * age                     -0.18 (0.02)    <.01
    a      Slope * education               -0.07 (0.06)     .18
    a      Slope * height                   0.02 (0.02)     .47
    a      Slope * smoking                 -0.93 (0.30)    <.01
    a      Slope * cardio                   0.08 (0.41)     .84
    a      Slope * diabetes                 0.20 (0.42)     .63
    b      Level                            0.71 (0.01)    <.01
    b      Slope                           -0.01 (0.00)    <.01
    b      Level * age                     -0.01 (0.00)    <.01
    b      Level * education                0.02 (0.00)    <.01
    b      Level * height                   0.00 (0.00)     .06
    b      Level * smoking                 -0.01 (0.01)     .36
    b      Level * cardio                  -0.04 (0.01)    <.01
    b      Level * diabetes                -0.08 (0.01)    <.01
    b      Slope * age                      0.00 (0.00)    <.01
    b      Slope * education                0.00 (0.00)     .28
    b      Slope * height                   0.00 (0.00)     .77
    b      Slope * smoking                 -0.00 (0.00)     .29
    b      Slope * cardio                   0.00 (0.00)     .94
    b      Slope * diabetes                -0.00 (0.00)     .12
    a      Var (Level)                 4149.41 (133.39)    <.01
    a      Var (Slope)                     10.82 (2.80)    <.01
    a      Var (Residual)               1692.73 (62.96)    <.01
    b      Var (Level)                      0.02 (0.00)    <.01
    b      Var (Slope)                      0.00 (0.00)     .08
    b      Var (Residual)                   0.03 (0.00)    <.01
    a      Covar (Level, Slope)          -20.80 (14.88)     .16
    b      Covar (Level, Slope)            -0.00 (0.00)     .02
    \      Correlation of Levels                           0.33
    \      Correlation of Slopes                           -Inf
    \      Correlation of Residuals                        0.13
    \      N                                              4,208
    \      occasions                                          3
    \      parameters                                        41
    \      LL                                           -53,870
    \      AIC                                          107,823
    \      BIC                                          108,083

# male 

 Gender = _male_; Model type: _aehplus_;  Process (a) = _pef_; Process (b): *gait*


 process   label                                            gait            mean(sd)
---------  -------------------------  --------------------------  ------------------
   ab      Covar (Levels)                    4.54 (0.71)    <.01                 ---
   ab      Covar (Slopes)                    0.00 (0.01)     .75                 ---
   ab      Covar (Residuals)                 1.06 (0.32)    <.01                 ---
   er      Corr (Levels)                     0.27 (0.04)    <.01                 ---
   er      Corr (Slopes)                     0.10 (0.32)     .75                 ---
   er      Corr (Residuals)                  0.10 (0.03)    <.01                 ---
    a      Level                           369.38 (5.96)    <.01          369.38(NA)
    a      Slope                            -3.33 (0.84)    <.01           -3.33(NA)
    a      Level * age                      -4.35 (0.22)    <.01           -4.35(NA)
    a      Level * education                 7.94 (0.68)    <.01            7.94(NA)
    a      Level * height                    3.42 (0.31)    <.01            3.42(NA)
    a      Level * smoking                 -25.82 (4.57)    <.01          -25.82(NA)
    a      Level * cardio                  -19.36 (4.94)    <.01          -19.36(NA)
    a      Level * diabetes                 -7.22 (5.21)     .17           -7.22(NA)
    a      Slope * age                      -0.24 (0.03)    <.01           -0.24(NA)
    a      Slope * education                 0.00 (0.10)     .98            0.00(NA)
    a      Slope * height                    0.03 (0.04)     .36            0.03(NA)
    a      Slope * smoking                  -0.94 (0.55)     .09           -0.94(NA)
    a      Slope * cardio                   -1.21 (0.64)     .06           -1.21(NA)
    a      Slope * diabetes                 -1.84 (0.67)     .01           -1.84(NA)
    b      Level                             0.79 (0.01)    <.01                 ---
    b      Slope                            -0.02 (0.00)    <.01                 ---
    b      Level * age                      -0.01 (0.00)    <.01                 ---
    b      Level * education                 0.02 (0.00)    <.01                 ---
    b      Level * height                    0.00 (0.00)    <.01                 ---
    b      Level * smoking                  -0.02 (0.01)     .07                 ---
    b      Level * cardio                   -0.04 (0.01)    <.01                 ---
    b      Level * diabetes                 -0.03 (0.01)     .02                 ---
    b      Slope * age                       0.00 (0.00)     .05                 ---
    b      Slope * education                 0.00 (0.00)     .02                 ---
    b      Slope * height                    0.00 (0.00)     .62                 ---
    b      Slope * smoking                   0.00 (0.00)     .94                 ---
    b      Slope * cardio                    0.00 (0.00)     .73                 ---
    b      Slope * diabetes                 -0.00 (0.00)     .13                 ---
    a      Var (Level)                 10790.23 (380.12)    <.01        10790.23(NA)
    a      Var (Slope)                      22.74 (7.96)    <.01           22.74(NA)
    a      Var (Residual)               3543.83 (174.69)    <.01         3543.83(NA)
    b      Var (Level)                       0.03 (0.00)    <.01                 ---
    b      Var (Slope)                       0.00 (0.00)     .28                 ---
    b      Var (Residual)                    0.03 (0.00)    <.01                 ---
    a      Covar (Level, Slope)           -44.24 (40.55)     .28          -44.24(NA)
    b      Covar (Level, Slope)             -0.00 (0.00)     .11                 ---
    \      Correlation of Levels                           0.271            0.27(NA)
    \      Correlation of Slopes                             Inf             Inf(NA)
    \      Correlation of Residuals                        0.098            0.10(NA)
    \      N                                               3,034         3034.00(NA)
    \      occasions                                           3            3.00(NA)
    \      parameters                                         41           41.00(NA)
    \      LL                                            -40,753   -4.075349e+04(NA)
    \      AIC                                            81,589    8.158899e+04(NA)
    \      BIC                                            81,836    8.183571e+04(NA)

##  gait 

 Gender = _male_;  Process (a) = *pef*; Process (b) = _gait_


 process   label                                         aehplus
---------  -------------------------  --------------------------
   ab      Covar (Levels)                    4.54 (0.71)    <.01
   ab      Covar (Slopes)                    0.00 (0.01)     .75
   ab      Covar (Residuals)                 1.06 (0.32)    <.01
   er      Corr (Levels)                     0.27 (0.04)    <.01
   er      Corr (Slopes)                     0.10 (0.32)     .75
   er      Corr (Residuals)                  0.10 (0.03)    <.01
    a      Level                           369.38 (5.96)    <.01
    a      Slope                            -3.33 (0.84)    <.01
    a      Level * age                      -4.35 (0.22)    <.01
    a      Level * education                 7.94 (0.68)    <.01
    a      Level * height                    3.42 (0.31)    <.01
    a      Level * smoking                 -25.82 (4.57)    <.01
    a      Level * cardio                  -19.36 (4.94)    <.01
    a      Level * diabetes                 -7.22 (5.21)     .17
    a      Slope * age                      -0.24 (0.03)    <.01
    a      Slope * education                 0.00 (0.10)     .98
    a      Slope * height                    0.03 (0.04)     .36
    a      Slope * smoking                  -0.94 (0.55)     .09
    a      Slope * cardio                   -1.21 (0.64)     .06
    a      Slope * diabetes                 -1.84 (0.67)     .01
    b      Level                             0.79 (0.01)    <.01
    b      Slope                            -0.02 (0.00)    <.01
    b      Level * age                      -0.01 (0.00)    <.01
    b      Level * education                 0.02 (0.00)    <.01
    b      Level * height                    0.00 (0.00)    <.01
    b      Level * smoking                  -0.02 (0.01)     .07
    b      Level * cardio                   -0.04 (0.01)    <.01
    b      Level * diabetes                 -0.03 (0.01)     .02
    b      Slope * age                       0.00 (0.00)     .05
    b      Slope * education                 0.00 (0.00)     .02
    b      Slope * height                    0.00 (0.00)     .62
    b      Slope * smoking                   0.00 (0.00)     .94
    b      Slope * cardio                    0.00 (0.00)     .73
    b      Slope * diabetes                 -0.00 (0.00)     .13
    a      Var (Level)                 10790.23 (380.12)    <.01
    a      Var (Slope)                      22.74 (7.96)    <.01
    a      Var (Residual)               3543.83 (174.69)    <.01
    b      Var (Level)                       0.03 (0.00)    <.01
    b      Var (Slope)                       0.00 (0.00)     .28
    b      Var (Residual)                    0.03 (0.00)    <.01
    a      Covar (Level, Slope)           -44.24 (40.55)     .28
    b      Covar (Level, Slope)             -0.00 (0.00)     .11
    \      Correlation of Levels                           0.271
    \      Correlation of Slopes                             Inf
    \      Correlation of Residuals                        0.098
    \      N                                               3,034
    \      occasions                                           3
    \      parameters                                         41
    \      LL                                            -40,753
    \      AIC                                            81,589
    \      BIC                                            81,836


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
[1] knitr_1.14                ggplot2_2.1.0             IalsaSynthesis_0.1.8.9000 MplusAutomation_0.6-4    
[5] magrittr_1.5             

loaded via a namespace (and not attached):
 [1] Rcpp_0.12.7      formatR_1.4      plyr_1.8.4       highr_0.6        tools_3.3.1      boot_1.3-18     
 [7] digest_0.6.10    evaluate_0.10    tibble_1.2       gtable_0.2.0     lattice_0.20-34  texreg_1.36.7   
[13] DBI_0.5-1        yaml_2.1.13      proto_0.3-10     coda_0.18-1      dplyr_0.5.0      stringr_1.1.0   
[19] htmlwidgets_0.7  grid_3.3.1       DT_0.2           R6_2.2.0         gsubfn_0.6-6     rmarkdown_1.1   
[25] pander_0.6.0     tidyr_0.6.0      readr_1.0.0      scales_0.4.1     htmltools_0.3.5  rsconnect_0.5   
[31] assertthat_0.1   testit_0.5       xtable_1.8-2     colorspace_1.2-7 stringi_1.1.2    lazyeval_0.2.0  
[37] munsell_0.4.3   
```
