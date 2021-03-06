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
pef         serial7             6
pef         word_de             6
pef         word_im             6




study_name   subgroup   model_type   process_a   process_b    n_models
-----------  ---------  -----------  ----------  ----------  ---------
hrs          female     a            pef         serial7             1
hrs          female     a            pef         word_de             1
hrs          female     a            pef         word_im             1
hrs          female     aeh          pef         serial7             1
hrs          female     aeh          pef         word_de             1
hrs          female     aeh          pef         word_im             1
hrs          female     aehplus      pef         serial7             1
hrs          female     aehplus      pef         word_de             1
hrs          female     aehplus      pef         word_im             1




study_name   subgroup   model_type   process_a   process_b    n_models
-----------  ---------  -----------  ----------  ----------  ---------
hrs          male       a            pef         serial7             1
hrs          male       a            pef         word_de             1
hrs          male       a            pef         word_im             1
hrs          male       aeh          pef         serial7             1
hrs          male       aeh          pef         word_de             1
hrs          male       aeh          pef         word_im             1
hrs          male       aehplus      pef         serial7             1
hrs          male       aehplus      pef         word_de             1
hrs          male       aehplus      pef         word_im             1


# female 

 Gender = _female_; Model type: _aehplus_;  Process (a) = _pef_; Process (b): *serial7*, *word_de*, *word_im*


 process   label                                        serial7                    word_de                    word_im               mean(sd)
---------  -------------------------  -------------------------  -------------------------  -------------------------  ---------------------
   ab      Covar (Levels)                   9.13 (1.94)    <.01       22.08 (2.27)    <.01       18.90 (1.80)    <.01                    ---
   ab      Covar (Slopes)                   0.16 (0.05)    <.01        0.10 (0.05)     .04        0.04 (0.04)     .30                    ---
   ab      Covar (Residuals)               -1.11 (0.92)     .22        2.00 (1.03)     .05        1.71 (0.85)     .04                    ---
   er      Corr (Levels)                    0.13 (0.03)    <.01        0.28 (0.03)    <.01        0.31 (0.03)    <.01                    ---
   er      Corr (Slopes)                    0.38 (0.13)    <.01        0.69 (0.50)     .17        0.44 (0.55)     .43                    ---
   er      Corr (Residuals)                -0.02 (0.02)     .22        0.04 (0.02)     .05        0.04 (0.02)     .04                    ---
    a      Level                          247.33 (2.82)    <.01      247.23 (2.82)    <.01      247.17 (2.82)    <.01           247.24(0.08)
    a      Slope                           -2.77 (0.41)    <.01       -2.75 (0.41)    <.01       -2.78 (0.41)    <.01            -2.77(0.01)
    a      Level * age                     -3.42 (0.12)    <.01       -3.43 (0.12)    <.01       -3.43 (0.12)    <.01            -3.42(0.00)
    a      Level * education                6.00 (0.39)    <.01        6.00 (0.39)    <.01        6.01 (0.39)    <.01             6.00(0.00)
    a      Level * height                   1.85 (0.18)    <.01        1.84 (0.18)    <.01        1.84 (0.18)    <.01             1.84(0.01)
    a      Level * smoking                -17.57 (2.30)    <.01      -17.64 (2.30)    <.01      -17.64 (2.30)    <.01           -17.61(0.04)
    a      Level * cardio                 -10.39 (2.94)    <.01      -10.47 (2.94)    <.01      -10.42 (2.94)    <.01           -10.42(0.04)
    a      Level * diabetes               -10.17 (3.03)    <.01       -9.98 (3.03)    <.01       -9.92 (3.03)    <.01           -10.02(0.13)
    a      Slope * age                     -0.19 (0.02)    <.01       -0.19 (0.02)    <.01       -0.19 (0.02)    <.01            -0.19(0.00)
    a      Slope * education               -0.08 (0.06)     .13       -0.08 (0.06)     .16       -0.08 (0.06)     .14            -0.08(0.00)
    a      Slope * height                   0.01 (0.02)     .60        0.02 (0.02)     .50        0.01 (0.02)     .55             0.01(0.00)
    a      Slope * smoking                 -0.97 (0.29)    <.01       -0.90 (0.29)    <.01       -0.90 (0.29)    <.01            -0.92(0.04)
    a      Slope * cardio                  -0.05 (0.41)     .91        0.00 (0.41)     .99        0.01 (0.41)     .98            -0.01(0.03)
    a      Slope * diabetes                 0.30 (0.42)     .48        0.26 (0.42)     .54        0.25 (0.42)     .55             0.27(0.02)
    b      Level                            2.66 (0.06)    <.01        3.45 (0.06)    <.01        4.59 (0.05)    <.01                    ---
    b      Slope                           -0.11 (0.01)    <.01       -0.08 (0.01)    <.01       -0.08 (0.01)    <.01                    ---
    b      Level * age                     -0.00 (0.00)     .40       -0.06 (0.00)    <.01       -0.05 (0.00)    <.01                    ---
    b      Level * education                0.18 (0.01)    <.01        0.18 (0.01)    <.01        0.17 (0.01)    <.01                    ---
    b      Level * height                   0.01 (0.00)     .02        0.01 (0.00)     .15        0.00 (0.00)     .26                    ---
    b      Level * smoking                 -0.07 (0.05)     .10        0.09 (0.05)     .08        0.06 (0.04)     .12                    ---
    b      Level * cardio                  -0.00 (0.06)     .93       -0.24 (0.06)    <.01       -0.14 (0.05)     .01                    ---
    b      Level * diabetes                -0.20 (0.06)    <.01       -0.31 (0.07)    <.01       -0.21 (0.05)    <.01                    ---
    b      Slope * age                     -0.01 (0.00)    <.01       -0.00 (0.00)    <.01       -0.00 (0.00)    <.01                    ---
    b      Slope * education                0.00 (0.00)     .80        0.00 (0.00)     .82        0.00 (0.00)     .82                    ---
    b      Slope * height                   0.00 (0.00)     .91        0.00 (0.00)     .82        0.00 (0.00)     .85                    ---
    b      Slope * smoking                 -0.02 (0.01)     .04       -0.01 (0.01)     .07       -0.01 (0.01)     .15                    ---
    b      Slope * cardio                  -0.04 (0.01)    <.01        0.00 (0.01)     .99        0.00 (0.01)     .97                    ---
    b      Slope * diabetes                -0.02 (0.01)     .06       -0.02 (0.01)     .05       -0.02 (0.01)     .03                    ---
    a      Var (Level)                 4157.07 (132.91)    <.01   4170.08 (133.03)    <.01   4164.41 (132.99)    <.01          4163.85(6.53)
    a      Var (Slope)                     10.27 (2.83)    <.01       10.53 (2.82)    <.01       10.28 (2.82)    <.01            10.36(0.15)
    a      Var (Residual)               1716.42 (62.55)    <.01    1711.36 (62.19)    <.01    1714.66 (62.47)    <.01          1714.15(2.57)
    b      Var (Level)                      1.13 (0.05)    <.01        1.50 (0.08)    <.01        0.87 (0.06)    <.01                    ---
    b      Var (Slope)                      0.02 (0.00)    <.01        0.00 (0.00)     .36        0.00 (0.00)     .57                    ---
    b      Var (Residual)                   1.23 (0.03)    <.01        1.67 (0.05)    <.01        1.25 (0.04)    <.01                    ---
    a      Covar (Level, Slope)          -20.86 (14.99)     .16     -23.02 (15.01)     .12     -21.27 (14.97)     .16           -21.71(1.15)
    b      Covar (Level, Slope)            -0.02 (0.01)    <.01        0.00 (0.01)     .72        0.01 (0.01)     .48                    ---
    \      Correlation of Levels                          0.133                      0.279                      0.314             0.24(0.10)
    \      Correlation of Slopes                          0.376                      0.703                      0.444             0.51(0.17)
    \      Correlation of Residuals                      -0.024                      0.037                      0.037             0.02(0.04)
    \      N                                              4,608                      4,611                      4,612          4610.33(2.08)
    \      occasions                                          3                          3                          3             3.00(0.00)
    \      parameters                                        41                         41                         41            41.00(0.00)
    \      LL                                           -78,502                    -80,073                    -78,004   -7.885982e+04(1,080)
    \      AIC                                          157,087                    160,228                    156,090    1.578016e+05(2,160)
    \      BIC                                          157,350                    160,492                    156,354    1.580655e+05(2,160)

##  serial7 

 Gender = _female_;  Process (a) = *pef*; Process (b) = _serial7_


 process   label                                              a                        aeh                    aehplus
---------  -------------------------  -------------------------  -------------------------  -------------------------
   ab      Covar (Levels)                16.89 (308.48)     .96      7.26 (312.34)     .98        9.13 (1.94)    <.01
   ab      Covar (Slopes)                  0.21 (16.54)     .99       0.20 (16.59)     .99        0.16 (0.05)    <.01
   ab      Covar (Residuals)                0.29 (0.30)     .33        0.20 (0.30)     .50       -1.11 (0.92)     .22
   er      Corr (Levels)                                    ---                        ---        0.13 (0.03)    <.01
   er      Corr (Slopes)                                    ---                        ---        0.38 (0.13)    <.01
   er      Corr (Residuals)                                 ---                        ---       -0.02 (0.02)     .22
    a      Level                          274.85 (2.75)    <.01      248.48 (5.60)    <.01      247.33 (2.82)    <.01
    a      Slope                           -2.67 (0.62)    <.01       -2.21 (1.33)     .10       -2.77 (0.41)    <.01
    a      Level * age                     -3.82 (0.23)    <.01       -3.55 (0.23)    <.01       -3.42 (0.12)    <.01
    a      Level * education                                ---        4.71 (0.90)    <.01        6.00 (0.39)    <.01
    a      Level * height                                   ---      93.44 (45.99)     .04        1.85 (0.18)    <.01
    a      Level * smoking                                  ---                        ---      -17.57 (2.30)    <.01
    a      Level * cardio                                   ---                        ---      -10.39 (2.94)    <.01
    a      Level * diabetes                                 ---                        ---      -10.17 (3.03)    <.01
    a      Slope * age                     -0.25 (0.05)    <.01       -0.25 (0.06)    <.01       -0.19 (0.02)    <.01
    a      Slope * education                                ---       -0.09 (0.21)     .66       -0.08 (0.06)     .13
    a      Slope * height                                   ---        5.86 (8.19)     .47        0.01 (0.02)     .60
    a      Slope * smoking                                  ---                        ---       -0.97 (0.29)    <.01
    a      Slope * cardio                                   ---                        ---       -0.05 (0.41)     .91
    a      Slope * diabetes                                 ---                        ---        0.30 (0.42)     .48
    b      Level                            3.46 (0.06)    <.01        2.25 (0.13)    <.01        2.66 (0.06)    <.01
    b      Slope                           -0.15 (0.01)    <.01       -0.11 (0.02)    <.01       -0.11 (0.01)    <.01
    b      Level * age                     -0.02 (0.00)    <.01       -0.01 (0.00)     .10       -0.00 (0.00)     .40
    b      Level * education                                ---        0.22 (0.02)    <.01        0.18 (0.01)    <.01
    b      Level * height                                   ---        0.88 (0.90)     .33        0.01 (0.00)     .02
    b      Level * smoking                                  ---                        ---       -0.07 (0.05)     .10
    b      Level * cardio                                   ---                        ---       -0.00 (0.06)     .93
    b      Level * diabetes                                 ---                        ---       -0.20 (0.06)    <.01
    b      Slope * age                     -0.01 (0.00)    <.01       -0.01 (0.00)    <.01       -0.01 (0.00)    <.01
    b      Slope * education                                ---       -0.01 (0.00)     .03        0.00 (0.00)     .80
    b      Slope * height                                   ---        0.17 (0.12)     .17        0.00 (0.00)     .91
    b      Slope * smoking                                  ---                        ---       -0.02 (0.01)     .04
    b      Slope * cardio                                   ---                        ---       -0.04 (0.01)    <.01
    b      Slope * diabetes                                 ---                        ---       -0.02 (0.01)     .06
    a      Var (Level)                 5221.29 (286.71)    <.01   4967.41 (277.29)    <.01   4157.07 (132.91)    <.01
    a      Var (Slope)                   201.39 (29.59)    <.01     200.95 (29.55)    <.01       10.27 (2.83)    <.01
    a      Var (Residual)                240.77 (19.29)    <.01     240.55 (19.28)    <.01    1716.42 (62.55)    <.01
    b      Var (Level)                      0.19 (3.97)     .96        0.14 (3.52)     .97        1.13 (0.05)    <.01
    b      Var (Slope)                      0.01 (0.26)     .98        0.01 (0.26)     .98        0.02 (0.00)    <.01
    b      Var (Residual)                240.77 (19.29)    <.01     240.55 (19.28)    <.01        1.23 (0.03)    <.01
    a      Covar (Level, Slope)         -324.33 (55.22)    <.01    -323.22 (55.43)    <.01     -20.86 (14.99)     .16
    b      Covar (Level, Slope)            -0.02 (0.60)     .98       -0.02 (0.58)     .98       -0.02 (0.01)    <.01
    \      Correlation of Levels                         0.5419                    0.27838                      0.133
    \      Correlation of Slopes                         0.1919                    0.18487                      0.376
    \      Correlation of Residuals                      0.0012                    0.00084                     -0.024
    \      N                                                715                        715                      4,608
    \      occasions                                          5                          5                          3
    \      parameters                                        20                         28                         41
    \      LL                                           -25,181                    -25,159                    -78,502
    \      AIC                                           50,402                     50,374                    157,087
    \      BIC                                           50,493                     50,502                    157,350

##  word_de 

 Gender = _female_;  Process (a) = *pef*; Process (b) = _word_de_


 process   label                                              a                        aeh                    aehplus
---------  -------------------------  -------------------------  -------------------------  -------------------------
   ab      Covar (Levels)               23.85 (2160.11)     .99      16.56 (34.73)     .63       22.08 (2.27)    <.01
   ab      Covar (Slopes)                  0.23 (37.51)     .99       0.20 (12.73)     .99        0.10 (0.05)     .04
   ab      Covar (Residuals)                0.62 (0.45)     .16        0.53 (0.44)     .22        2.00 (1.03)     .05
   er      Corr (Levels)                                    ---                        ---        0.28 (0.03)    <.01
   er      Corr (Slopes)                                    ---                        ---        0.69 (0.50)     .17
   er      Corr (Residuals)                                 ---                        ---        0.04 (0.02)     .05
    a      Level                          274.85 (2.76)    <.01      248.50 (5.61)    <.01      247.23 (2.82)    <.01
    a      Slope                           -2.67 (0.59)    <.01       -2.23 (1.30)     .09       -2.75 (0.41)    <.01
    a      Level * age                     -3.82 (0.23)    <.01       -3.55 (0.23)    <.01       -3.43 (0.12)    <.01
    a      Level * education                                ---        4.70 (0.90)    <.01        6.00 (0.39)    <.01
    a      Level * height                                   ---      93.45 (46.01)     .04        1.84 (0.18)    <.01
    a      Level * smoking                                  ---                        ---      -17.64 (2.30)    <.01
    a      Level * cardio                                   ---                        ---      -10.47 (2.94)    <.01
    a      Level * diabetes                                 ---                        ---       -9.98 (3.03)    <.01
    a      Slope * age                     -0.25 (0.05)    <.01       -0.25 (0.05)    <.01       -0.19 (0.02)    <.01
    a      Slope * education                                ---       -0.09 (0.21)     .67       -0.08 (0.06)     .16
    a      Slope * height                                   ---        5.85 (8.04)     .47        0.02 (0.02)     .50
    a      Slope * smoking                                  ---                        ---       -0.90 (0.29)    <.01
    a      Slope * cardio                                   ---                        ---        0.00 (0.41)     .99
    a      Slope * diabetes                                 ---                        ---        0.26 (0.42)     .54
    b      Level                            4.38 (0.81)    <.01        3.46 (0.12)    <.01        3.45 (0.06)    <.01
    b      Slope                           -0.08 (0.54)     .89       -0.05 (0.11)     .63       -0.08 (0.01)    <.01
    b      Level * age                     -0.08 (0.07)     .26       -0.07 (0.01)    <.01       -0.06 (0.00)    <.01
    b      Level * education                                ---        0.17 (0.03)    <.01        0.18 (0.01)    <.01
    b      Level * height                                   ---        0.75 (1.10)     .49        0.01 (0.00)     .15
    b      Level * smoking                                  ---                        ---        0.09 (0.05)     .08
    b      Level * cardio                                   ---                        ---       -0.24 (0.06)    <.01
    b      Level * diabetes                                 ---                        ---       -0.31 (0.07)    <.01
    b      Slope * age                     -0.00 (0.04)     .93       -0.00 (0.01)     .75       -0.00 (0.00)    <.01
    b      Slope * education                                ---       -0.00 (0.01)     .69        0.00 (0.00)     .82
    b      Slope * height                                   ---        0.05 (0.80)     .95        0.00 (0.00)     .82
    b      Slope * smoking                                  ---                        ---       -0.01 (0.01)     .07
    b      Slope * cardio                                   ---                        ---        0.00 (0.01)     .99
    b      Slope * diabetes                                 ---                        ---       -0.02 (0.01)     .05
    a      Var (Level)                 5191.40 (288.09)    <.01   4937.58 (276.53)    <.01   4170.08 (133.03)    <.01
    a      Var (Slope)                   186.07 (27.73)    <.01     185.49 (27.68)    <.01       10.53 (2.82)    <.01
    a      Var (Residual)                271.83 (21.60)    <.01     271.79 (21.60)    <.01    1711.36 (62.19)    <.01
    b      Var (Level)                     0.28 (19.48)     .99        0.22 (4.33)     .96        1.50 (0.08)    <.01
    b      Var (Slope)                      0.01 (0.30)     .98        0.01 (0.29)     .98        0.00 (0.00)     .36
    b      Var (Residual)                271.83 (21.60)    <.01     271.79 (21.60)    <.01        1.67 (0.05)    <.01
    a      Covar (Level, Slope)         -309.62 (53.25)    <.01    -308.55 (53.51)    <.01     -23.02 (15.01)     .12
    b      Covar (Level, Slope)            -0.02 (3.14)     .99       -0.02 (0.70)     .97        0.00 (0.01)     .72
    \      Correlation of Levels                         0.6234                      0.501                      0.279
    \      Correlation of Slopes                         0.1989                      0.176                      0.703
    \      Correlation of Residuals                      0.0023                      0.002                      0.037
    \      N                                                715                        715                      4,611
    \      occasions                                          5                          5                          3
    \      parameters                                        20                         28                         41
    \      LL                                           -23,567                    -23,546                    -80,073
    \      AIC                                           47,173                     47,148                    160,228
    \      BIC                                           47,265                     47,276                    160,492

##  word_im 

 Gender = _female_;  Process (a) = *pef*; Process (b) = _word_im_


 process   label                                              a                        aeh                    aehplus
---------  -------------------------  -------------------------  -------------------------  -------------------------
   ab      Covar (Levels)                22.67 (292.29)     .94     15.93 (870.74)     .98       18.90 (1.80)    <.01
   ab      Covar (Slopes)                  0.13 (31.45)     .99       0.10 (32.23)     .99        0.04 (0.04)     .30
   ab      Covar (Residuals)                0.64 (0.43)     .14        0.55 (0.42)     .19        1.71 (0.85)     .04
   er      Corr (Levels)                                    ---                        ---        0.31 (0.03)    <.01
   er      Corr (Slopes)                                    ---                        ---        0.44 (0.55)     .43
   er      Corr (Residuals)                                 ---                        ---        0.04 (0.02)     .04
    a      Level                          274.85 (2.78)    <.01      248.50 (5.61)    <.01      247.17 (2.82)    <.01
    a      Slope                           -2.67 (0.59)    <.01       -2.23 (1.30)     .09       -2.78 (0.41)    <.01
    a      Level * age                     -3.82 (0.23)    <.01       -3.55 (0.23)    <.01       -3.43 (0.12)    <.01
    a      Level * education                                ---        4.70 (0.90)    <.01        6.01 (0.39)    <.01
    a      Level * height                                   ---      93.45 (46.01)     .04        1.84 (0.18)    <.01
    a      Level * smoking                                  ---                        ---      -17.64 (2.30)    <.01
    a      Level * cardio                                   ---                        ---      -10.42 (2.94)    <.01
    a      Level * diabetes                                 ---                        ---       -9.92 (3.03)    <.01
    a      Slope * age                     -0.25 (0.05)    <.01       -0.25 (0.05)    <.01       -0.19 (0.02)    <.01
    a      Slope * education                                ---       -0.09 (0.21)     .67       -0.08 (0.06)     .14
    a      Slope * height                                   ---        5.85 (8.04)     .47        0.01 (0.02)     .55
    a      Slope * smoking                                  ---                        ---       -0.90 (0.29)    <.01
    a      Slope * cardio                                   ---                        ---        0.01 (0.41)     .98
    a      Slope * diabetes                                 ---                        ---        0.25 (0.42)     .55
    b      Level                            5.51 (0.61)    <.01        4.65 (0.10)    <.01        4.59 (0.05)    <.01
    b      Slope                           -0.09 (0.63)     .89       -0.09 (0.26)     .74       -0.08 (0.01)    <.01
    b      Level * age                     -0.06 (0.05)     .27       -0.05 (0.03)     .06       -0.05 (0.00)    <.01
    b      Level * education                                ---        0.15 (0.06)     .01        0.17 (0.01)    <.01
    b      Level * height                                   ---        0.72 (1.67)     .67        0.00 (0.00)     .26
    b      Level * smoking                                  ---                        ---        0.06 (0.04)     .12
    b      Level * cardio                                   ---                        ---       -0.14 (0.05)     .01
    b      Level * diabetes                                 ---                        ---       -0.21 (0.05)    <.01
    b      Slope * age                     -0.00 (0.05)     .93       -0.00 (0.03)     .89       -0.00 (0.00)    <.01
    b      Slope * education                                ---        0.00 (0.02)     .99        0.00 (0.00)     .82
    b      Slope * height                                   ---        0.16 (1.92)     .94        0.00 (0.00)     .85
    b      Slope * smoking                                  ---                        ---       -0.01 (0.01)     .15
    b      Slope * cardio                                   ---                        ---        0.00 (0.01)     .97
    b      Slope * diabetes                                 ---                        ---       -0.02 (0.01)     .03
    a      Var (Level)                 5192.60 (285.59)    <.01   4938.80 (275.67)    <.01   4164.41 (132.99)    <.01
    a      Var (Slope)                   186.68 (28.17)    <.01     186.11 (28.21)    <.01       10.28 (2.82)    <.01
    a      Var (Residual)                270.56 (21.52)    <.01     270.50 (21.52)    <.01    1714.66 (62.47)    <.01
    b      Var (Level)                      0.26 (6.99)     .97        0.21 (9.07)     .98        0.87 (0.06)    <.01
    b      Var (Slope)                      0.01 (0.29)     .98        0.01 (0.29)     .98        0.00 (0.00)     .57
    b      Var (Residual)                270.56 (21.52)    <.01     270.50 (21.52)    <.01        1.25 (0.04)    <.01
    a      Covar (Level, Slope)         -310.20 (53.40)    <.01    -309.14 (53.82)    <.01     -21.27 (14.97)     .16
    b      Covar (Level, Slope)            -0.03 (1.47)     .99       -0.03 (0.70)     .97        0.01 (0.01)     .48
    \      Correlation of Levels                         0.6133                      0.496                      0.314
    \      Correlation of Slopes                         0.1128                      0.084                      0.444
    \      Correlation of Residuals                      0.0024                      0.002                      0.037
    \      N                                                715                        715                      4,612
    \      occasions                                          5                          5                          3
    \      parameters                                        20                         28                         41
    \      LL                                           -23,576                    -23,555                    -78,004
    \      AIC                                           47,191                     47,166                    156,090
    \      BIC                                           47,283                     47,294                    156,354

## Summary 

 Study = _HRS_; Gender = _female_; Process (a) = _pef_

 Computed correlations:

 

label                    process_b      a    aeh   aehplus
----------------------  ----------  -----  -----  --------
Correlation of Levels      serial7   0.54   0.28      0.13
Correlation of Levels      word_de   0.62   0.50      0.28
Correlation of Levels      word_im   0.61   0.50      0.31




label                    process_b      a    aeh   aehplus
----------------------  ----------  -----  -----  --------
Correlation of Slopes      serial7   0.19   0.18      0.38
Correlation of Slopes      word_de   0.20   0.18      0.70
Correlation of Slopes      word_im   0.11   0.08      0.44




label                       process_b      a    aeh   aehplus
-------------------------  ----------  -----  -----  --------
Correlation of Residuals      serial7   0.00   0.00     -0.02
Correlation of Residuals      word_de   0.00   0.00      0.04
Correlation of Residuals      word_im   0.00   0.00      0.04



P-values for corresponding covariances: 

 

label                   process_b      a    aeh   aehplus
---------------------  ----------  -----  -----  --------
Covariance of Levels      serial7   0.96   0.98      0.00
Covariance of Levels      word_de   0.99   0.63      0.00
Covariance of Levels      word_im   0.94   0.98      0.00




label                   process_b      a    aeh   aehplus
---------------------  ----------  -----  -----  --------
Covariance of Slopes      serial7   0.99   0.99      0.00
Covariance of Slopes      word_de   0.99   0.99      0.04
Covariance of Slopes      word_im   1.00   1.00      0.30




label                       process_b      a    aeh   aehplus
-------------------------  ----------  -----  -----  --------
Covariance of  Residuals      serial7   0.33   0.50      0.22
Covariance of  Residuals      word_de   0.16   0.22      0.05
Covariance of  Residuals      word_im   0.14   0.19      0.04



# male 

 Gender = _male_; Model type: _aehplus_;  Process (a) = _pef_; Process (b): *serial7*, *word_de*, *word_im*


 process   label                                         serial7                     word_de                     word_im               mean(sd)
---------  -------------------------  --------------------------  --------------------------  --------------------------  ---------------------
   ab      Covar (Levels)                   13.68 (3.34)    <.01        30.33 (3.72)    <.01        23.98 (3.09)    <.01                    ---
   ab      Covar (Slopes)                    0.15 (0.09)     .10         0.15 (0.08)     .07         0.05 (0.07)     .47                    ---
   ab      Covar (Residuals)                 2.17 (1.87)     .25         1.95 (1.80)     .28         2.27 (1.45)     .12                    ---
   er      Corr (Levels)                     0.16 (0.04)    <.01         0.27 (0.03)    <.01         0.26 (0.03)    <.01                    ---
   er      Corr (Slopes)                     0.21 (0.13)     .10         0.70 (0.54)     .19         0.37 (0.59)     .53                    ---
   er      Corr (Residuals)                  0.03 (0.03)     .24         0.03 (0.02)     .28         0.04 (0.02)     .12                    ---
    a      Level                           369.01 (5.86)    <.01       368.41 (5.86)    <.01       368.44 (5.86)    <.01           368.62(0.34)
    a      Slope                            -3.71 (0.84)    <.01        -3.41 (0.83)    <.01        -3.43 (0.83)    <.01            -3.52(0.16)
    a      Level * age                      -4.28 (0.22)    <.01        -4.29 (0.22)    <.01        -4.29 (0.22)    <.01            -4.29(0.01)
    a      Level * education                 7.95 (0.67)    <.01         7.97 (0.67)    <.01         7.97 (0.67)    <.01             7.96(0.01)
    a      Level * height                    3.30 (0.30)    <.01         3.29 (0.30)    <.01         3.29 (0.30)    <.01             3.29(0.00)
    a      Level * smoking                 -27.01 (4.49)    <.01       -26.96 (4.49)    <.01       -26.99 (4.49)    <.01           -26.99(0.03)
    a      Level * cardio                  -18.64 (4.84)    <.01       -18.43 (4.84)    <.01       -18.51 (4.84)    <.01           -18.53(0.10)
    a      Level * diabetes                 -6.59 (5.14)     .20        -6.41 (5.14)     .21        -6.36 (5.14)     .22            -6.45(0.12)
    a      Slope * age                      -0.26 (0.03)    <.01        -0.25 (0.03)    <.01        -0.25 (0.03)    <.01            -0.25(0.01)
    a      Slope * education                -0.00 (0.10)     .96        -0.00 (0.10)     .99         0.00 (0.10)     .96            -0.00(0.00)
    a      Slope * height                    0.01 (0.04)     .79         0.01 (0.04)     .75         0.01 (0.04)     .78             0.01(0.00)
    a      Slope * smoking                  -1.18 (0.55)     .03        -1.16 (0.55)     .03        -1.12 (0.55)     .04            -1.15(0.03)
    a      Slope * cardio                   -1.09 (0.63)     .08        -1.08 (0.63)     .08        -1.06 (0.63)     .09            -1.08(0.01)
    a      Slope * diabetes                 -1.80 (0.66)     .01        -1.76 (0.66)     .01        -1.74 (0.66)     .01            -1.77(0.03)
    b      Level                             3.22 (0.08)    <.01         3.08 (0.08)    <.01         4.23 (0.06)    <.01                    ---
    b      Slope                            -0.14 (0.01)    <.01        -0.10 (0.01)    <.01        -0.10 (0.01)    <.01                    ---
    b      Level * age                       0.00 (0.00)     .98        -0.06 (0.00)    <.01        -0.05 (0.00)    <.01                    ---
    b      Level * education                 0.14 (0.01)    <.01         0.16 (0.01)    <.01         0.15 (0.01)    <.01                    ---
    b      Level * height                    0.01 (0.00)     .08         0.02 (0.00)    <.01         0.01 (0.00)    <.01                    ---
    b      Level * smoking                   0.02 (0.05)     .73        -0.01 (0.06)     .85         0.03 (0.05)     .58                    ---
    b      Level * cardio                   -0.10 (0.06)     .06        -0.09 (0.06)     .16        -0.12 (0.06)     .04                    ---
    b      Level * diabetes                 -0.05 (0.06)     .37        -0.16 (0.07)     .02        -0.20 (0.06)    <.01                    ---
    b      Slope * age                      -0.01 (0.00)    <.01        -0.00 (0.00)    <.01        -0.00 (0.00)    <.01                    ---
    b      Slope * education                 0.00 (0.00)     .26         0.00 (0.00)     .23         0.00 (0.00)     .11                    ---
    b      Slope * height                    0.00 (0.00)     .96         0.00 (0.00)     .68         0.00 (0.00)     .94                    ---
    b      Slope * smoking                  -0.03 (0.01)     .01        -0.02 (0.01)     .07        -0.02 (0.01)     .03                    ---
    b      Slope * cardio                    0.00 (0.01)     .99         0.00 (0.01)     .77         0.00 (0.01)     .74                    ---
    b      Slope * diabetes                 -0.02 (0.01)     .05        -0.00 (0.01)     .67         0.01 (0.01)     .13                    ---
    a      Var (Level)                 10808.04 (378.16)    <.01   10820.37 (378.34)    <.01   10814.42 (378.36)    <.01         10814.28(6.16)
    a      Var (Slope)                      21.99 (8.05)     .01        21.22 (8.01)     .01        20.95 (8.03)     .01            21.39(0.54)
    a      Var (Residual)               3599.54 (174.68)    <.01    3601.86 (174.85)    <.01    3610.15 (175.52)    <.01          3603.85(5.58)
    b      Var (Level)                       0.67 (0.06)    <.01         1.16 (0.08)    <.01         0.81 (0.06)    <.01                    ---
    b      Var (Slope)                       0.02 (0.00)    <.01         0.00 (0.00)     .35         0.00 (0.00)     .59                    ---
    b      Var (Residual)                    1.20 (0.04)    <.01         1.53 (0.05)    <.01         1.14 (0.04)    <.01                    ---
    a      Covar (Level, Slope)           -25.33 (40.89)     .54      -28.22 (40.70)     .49      -30.22 (40.71)     .46           -27.92(2.46)
    b      Covar (Level, Slope)             -0.01 (0.01)     .18         0.01 (0.01)     .24         0.01 (0.01)     .37                    ---
    \      Correlation of Levels                           0.161                       0.271                       0.256             0.23(0.06)
    \      Correlation of Slopes                           0.214                       0.738                       0.366             0.44(0.27)
    \      Correlation of Residuals                        0.033                       0.026                       0.035             0.03(0.00)
    \      N                                               3,287                       3,288                       3,288          3287.67(0.58)
    \      occasions                                           3                           3                           3             3.00(0.00)
    \      parameters                                         41                          41                          41            41.00(0.00)
    \      LL                                            -57,953                     -58,121                     -56,887   -5.765322e+04(  669)
    \      AIC                                           115,987                     116,323                     113,855    1.153884e+05(1,339)
    \      BIC                                           116,237                     116,573                     114,105    1.156384e+05(1,339)

##  serial7 

 Gender = _male_;  Process (a) = *pef*; Process (b) = _serial7_


 process   label                                               a                         aeh                     aehplus
---------  -------------------------  --------------------------  --------------------------  --------------------------
   ab      Covar (Levels)                 24.34 (882.90)     .98      10.39 (897.18)     .99        13.68 (3.34)    <.01
   ab      Covar (Slopes)                   0.39 (46.01)     .99        0.39 (46.51)     .99         0.15 (0.09)     .10
   ab      Covar (Residuals)                -0.29 (0.36)     .42        -0.37 (0.36)     .31         2.17 (1.87)     .25
   er      Corr (Levels)                                     ---                         ---         0.16 (0.04)    <.01
   er      Corr (Slopes)                                     ---                         ---         0.21 (0.13)     .10
   er      Corr (Residuals)                                  ---                         ---         0.03 (0.03)     .24
    a      Level                           405.24 (5.02)    <.01      320.42 (13.75)    <.01       369.01 (5.86)    <.01
    a      Slope                            -5.67 (1.06)    <.01        -6.41 (3.13)     .04        -3.71 (0.84)    <.01
    a      Level * age                      -4.30 (0.43)    <.01        -3.66 (0.43)    <.01        -4.28 (0.22)    <.01
    a      Level * education                                 ---         7.95 (1.46)    <.01         7.95 (0.67)    <.01
    a      Level * height                                    ---      231.94 (63.09)    <.01         3.30 (0.30)    <.01
    a      Level * smoking                                   ---                         ---       -27.01 (4.49)    <.01
    a      Level * cardio                                    ---                         ---       -18.64 (4.84)    <.01
    a      Level * diabetes                                  ---                         ---        -6.59 (5.14)     .20
    a      Slope * age                      -0.37 (0.09)    <.01        -0.36 (0.09)    <.01        -0.26 (0.03)    <.01
    a      Slope * education                                 ---         0.19 (0.39)     .62        -0.00 (0.10)     .96
    a      Slope * height                                    ---       -2.40 (12.77)     .85         0.01 (0.04)     .79
    a      Slope * smoking                                   ---                         ---        -1.18 (0.55)     .03
    a      Slope * cardio                                    ---                         ---        -1.09 (0.63)     .08
    a      Slope * diabetes                                  ---                         ---        -1.80 (0.66)     .01
    b      Level                             4.08 (0.06)    <.01         3.10 (0.21)    <.01         3.22 (0.08)    <.01
    b      Slope                            -0.19 (0.01)    <.01        -0.23 (0.03)    <.01        -0.14 (0.01)    <.01
    b      Level * age                      -0.00 (0.01)     .56         0.00 (0.01)     .53         0.00 (0.00)     .98
    b      Level * education                                 ---         0.15 (0.02)    <.01         0.14 (0.01)    <.01
    b      Level * height                                    ---         0.72 (0.84)     .39         0.01 (0.00)     .08
    b      Level * smoking                                   ---                         ---         0.02 (0.05)     .73
    b      Level * cardio                                    ---                         ---        -0.10 (0.06)     .06
    b      Level * diabetes                                  ---                         ---        -0.05 (0.06)     .37
    b      Slope * age                      -0.01 (0.00)    <.01        -0.01 (0.00)    <.01        -0.01 (0.00)    <.01
    b      Slope * education                                 ---        -0.00 (0.00)     .61         0.00 (0.00)     .26
    b      Slope * height                                    ---         0.32 (0.16)     .05         0.00 (0.00)     .96
    b      Slope * smoking                                   ---                         ---        -0.03 (0.01)     .01
    b      Slope * cardio                                    ---                         ---         0.00 (0.01)     .99
    b      Slope * diabetes                                  ---                         ---        -0.02 (0.01)     .05
    a      Var (Level)                 13344.73 (887.34)    <.01   12303.09 (801.01)    <.01   10808.04 (378.16)    <.01
    a      Var (Slope)                    456.67 (64.22)    <.01      455.94 (64.12)    <.01        21.99 (8.05)     .01
    a      Var (Residual)                 358.57 (28.68)    <.01      358.47 (28.68)    <.01    3599.54 (174.68)    <.01
    b      Var (Level)                       0.24 (6.18)     .97         0.19 (5.35)     .97         0.67 (0.06)    <.01
    b      Var (Slope)                       0.01 (0.41)     .98         0.01 (0.41)     .98         0.02 (0.00)    <.01
    b      Var (Residual)                 358.57 (28.68)    <.01      358.47 (28.68)    <.01         1.20 (0.04)    <.01
    a      Covar (Level, Slope)         -648.61 (135.22)    <.01    -662.28 (132.67)    <.01      -25.33 (40.89)     .54
    b      Covar (Level, Slope)             -0.02 (0.85)     .98        -0.02 (0.86)     .98        -0.01 (0.01)     .18
    \      Correlation of Levels                         0.43013                       0.213                       0.161
    \      Correlation of Slopes                         0.19188                       0.192                       0.214
    \      Correlation of Residuals                     -0.00082                      -0.001                       0.033
    \      N                                                 535                         535                       3,287
    \      occasions                                           5                           5                           3
    \      parameters                                         20                          28                          41
    \      LL                                            -19,858                     -19,833                     -57,953
    \      AIC                                            39,755                      39,721                     115,987
    \      BIC                                            39,841                      39,841                     116,237

##  word_de 

 Gender = _male_;  Process (a) = *pef*; Process (b) = _word_de_


 process   label                                               a                         aeh                     aehplus
---------  -------------------------  --------------------------  --------------------------  --------------------------
   ab      Covar (Levels)                 28.49 (563.06)     .96      11.90 (688.37)     .99        30.33 (3.72)    <.01
   ab      Covar (Slopes)                    0.17 (4.69)     .97        0.10 (15.65)     .99         0.15 (0.08)     .07
   ab      Covar (Residuals)                 0.42 (0.58)     .47         0.33 (0.58)     .57         1.95 (1.80)     .28
   er      Corr (Levels)                                     ---                         ---         0.27 (0.03)    <.01
   er      Corr (Slopes)                                     ---                         ---         0.70 (0.54)     .19
   er      Corr (Residuals)                                  ---                         ---         0.03 (0.02)     .28
    a      Level                           405.19 (5.01)    <.01      320.44 (13.77)    <.01       368.41 (5.86)    <.01
    a      Slope                            -5.61 (1.00)    <.01        -6.43 (3.05)     .04        -3.41 (0.83)    <.01
    a      Level * age                      -4.30 (0.43)    <.01        -3.66 (0.43)    <.01        -4.29 (0.22)    <.01
    a      Level * education                                 ---         7.95 (1.45)    <.01         7.97 (0.67)    <.01
    a      Level * height                                    ---      231.32 (63.16)    <.01         3.29 (0.30)    <.01
    a      Level * smoking                                   ---                         ---       -26.96 (4.49)    <.01
    a      Level * cardio                                    ---                         ---       -18.43 (4.84)    <.01
    a      Level * diabetes                                  ---                         ---        -6.41 (5.14)     .21
    a      Slope * age                      -0.37 (0.09)    <.01        -0.36 (0.09)    <.01        -0.25 (0.03)    <.01
    a      Slope * education                                 ---         0.19 (0.38)     .63        -0.00 (0.10)     .99
    a      Slope * height                                    ---       -1.62 (12.54)     .90         0.01 (0.04)     .75
    a      Slope * smoking                                   ---                         ---        -1.16 (0.55)     .03
    a      Slope * cardio                                    ---                         ---        -1.08 (0.63)     .08
    a      Slope * diabetes                                  ---                         ---        -1.76 (0.66)     .01
    b      Level                             4.01 (0.08)    <.01         2.79 (0.18)    <.01         3.08 (0.08)    <.01
    b      Slope                            -0.08 (0.05)     .08        -0.06 (0.04)     .20        -0.10 (0.01)    <.01
    b      Level * age                      -0.06 (0.01)    <.01        -0.05 (0.01)    <.01        -0.06 (0.00)    <.01
    b      Level * education                                 ---         0.16 (0.03)    <.01         0.16 (0.01)    <.01
    b      Level * height                                    ---         1.60 (0.78)     .04         0.02 (0.00)    <.01
    b      Level * smoking                                   ---                         ---        -0.01 (0.06)     .85
    b      Level * cardio                                    ---                         ---        -0.09 (0.06)     .16
    b      Level * diabetes                                  ---                         ---        -0.16 (0.07)     .02
    b      Slope * age                      -0.00 (0.00)     .20        -0.00 (0.01)     .63        -0.00 (0.00)    <.01
    b      Slope * education                                 ---        -0.00 (0.02)     .96         0.00 (0.00)     .23
    b      Slope * height                                    ---        -0.13 (0.15)     .38         0.00 (0.00)     .68
    b      Slope * smoking                                   ---                         ---        -0.02 (0.01)     .07
    b      Slope * cardio                                    ---                         ---         0.00 (0.01)     .77
    b      Slope * diabetes                                  ---                         ---        -0.00 (0.01)     .67
    a      Var (Level)                 13288.96 (885.52)    <.01   12248.07 (800.66)    <.01   10820.37 (378.34)    <.01
    a      Var (Slope)                    427.69 (61.20)    <.01      426.89 (61.26)    <.01        21.22 (8.01)     .01
    a      Var (Residual)                 414.88 (32.87)    <.01      414.77 (32.89)    <.01    3601.86 (174.85)    <.01
    b      Var (Level)                       0.30 (6.88)     .96         0.24 (6.44)     .97         1.16 (0.08)    <.01
    b      Var (Slope)                       0.01 (0.44)     .98         0.01 (0.45)     .98         0.00 (0.00)     .35
    b      Var (Residual)                 414.88 (32.87)    <.01      414.77 (32.89)    <.01         1.53 (0.05)    <.01
    a      Covar (Level, Slope)         -620.48 (132.19)    <.01    -634.57 (129.75)    <.01      -28.22 (40.70)     .49
    b      Covar (Level, Slope)             -0.03 (0.97)     .97        -0.04 (0.96)     .97         0.01 (0.01)     .24
    \      Correlation of Levels                           0.448                      0.2190                       0.271
    \      Correlation of Slopes                           0.077                      0.0448                       0.738
    \      Correlation of Residuals                        0.001                      0.0008                       0.026
    \      N                                                 535                         535                       3,288
    \      occasions                                           5                           5                           3
    \      parameters                                         20                          28                          41
    \      LL                                            -18,309                     -18,284                     -58,121
    \      AIC                                            36,658                      36,624                     116,323
    \      BIC                                            36,744                      36,744                     116,573

##  word_im 

 Gender = _male_;  Process (a) = *pef*; Process (b) = _word_im_


 process   label                                               a                         aeh                     aehplus
---------  -------------------------  --------------------------  --------------------------  --------------------------
   ab      Covar (Levels)                 33.01 (653.48)     .96      18.97 (839.59)     .98        23.98 (3.09)    <.01
   ab      Covar (Slopes)                    0.18 (4.09)     .96        0.10 (19.00)     .99         0.05 (0.07)     .47
   ab      Covar (Residuals)                 1.28 (0.48)     .01         1.18 (0.53)     .02         2.27 (1.45)     .12
   er      Corr (Levels)                                     ---                         ---         0.26 (0.03)    <.01
   er      Corr (Slopes)                                     ---                         ---         0.37 (0.59)     .53
   er      Corr (Residuals)                                  ---                         ---         0.04 (0.02)     .12
    a      Level                           405.19 (5.02)    <.01      320.44 (13.74)    <.01       368.44 (5.86)    <.01
    a      Slope                            -5.61 (1.00)    <.01        -6.43 (3.05)     .04        -3.43 (0.83)    <.01
    a      Level * age                      -4.30 (0.43)    <.01        -3.66 (0.43)    <.01        -4.29 (0.22)    <.01
    a      Level * education                                 ---         7.95 (1.45)    <.01         7.97 (0.67)    <.01
    a      Level * height                                    ---      231.34 (63.07)    <.01         3.29 (0.30)    <.01
    a      Level * smoking                                   ---                         ---       -26.99 (4.49)    <.01
    a      Level * cardio                                    ---                         ---       -18.51 (4.84)    <.01
    a      Level * diabetes                                  ---                         ---        -6.36 (5.14)     .22
    a      Slope * age                      -0.37 (0.09)    <.01        -0.36 (0.09)    <.01        -0.25 (0.03)    <.01
    a      Slope * education                                 ---         0.19 (0.38)     .63         0.00 (0.10)     .96
    a      Slope * height                                    ---       -1.64 (12.54)     .90         0.01 (0.04)     .78
    a      Slope * smoking                                   ---                         ---        -1.12 (0.55)     .04
    a      Slope * cardio                                    ---                         ---        -1.06 (0.63)     .09
    a      Slope * diabetes                                  ---                         ---        -1.74 (0.66)     .01
    b      Level                             5.17 (0.08)    <.01         4.13 (0.17)    <.01         4.23 (0.06)    <.01
    b      Slope                            -0.10 (0.05)     .04        -0.11 (0.05)     .03        -0.10 (0.01)    <.01
    b      Level * age                      -0.05 (0.01)    <.01        -0.04 (0.01)    <.01        -0.05 (0.00)    <.01
    b      Level * education                                 ---         0.14 (0.03)    <.01         0.15 (0.01)    <.01
    b      Level * height                                    ---         1.50 (0.74)     .04         0.01 (0.00)    <.01
    b      Level * smoking                                   ---                         ---         0.03 (0.05)     .58
    b      Level * cardio                                    ---                         ---        -0.12 (0.06)     .04
    b      Level * diabetes                                  ---                         ---        -0.20 (0.06)    <.01
    b      Slope * age                      -0.00 (0.00)     .15        -0.00 (0.01)     .68        -0.00 (0.00)    <.01
    b      Slope * education                                 ---         0.00 (0.02)     .86         0.00 (0.00)     .11
    b      Slope * height                                    ---        -0.07 (0.14)     .60         0.00 (0.00)     .94
    b      Slope * smoking                                   ---                         ---        -0.02 (0.01)     .03
    b      Slope * cardio                                    ---                         ---         0.00 (0.01)     .74
    b      Slope * diabetes                                  ---                         ---         0.01 (0.01)     .13
    a      Var (Level)                 13290.51 (884.76)    <.01   12249.56 (799.47)    <.01   10814.42 (378.36)    <.01
    a      Var (Slope)                    428.49 (61.27)    <.01      427.66 (61.32)    <.01        20.95 (8.03)     .01
    a      Var (Residual)                 413.34 (32.75)    <.01      413.27 (32.77)    <.01    3610.15 (175.52)    <.01
    b      Var (Level)                       0.32 (7.32)     .97         0.25 (6.88)     .97         0.81 (0.06)    <.01
    b      Var (Slope)                       0.01 (0.44)     .98         0.01 (0.44)     .98         0.00 (0.00)     .59
    b      Var (Residual)                 413.34 (32.75)    <.01      413.27 (32.77)    <.01         1.14 (0.04)    <.01
    a      Covar (Level, Slope)         -621.27 (132.28)    <.01    -635.32 (129.86)    <.01      -30.22 (40.71)     .46
    b      Covar (Level, Slope)             -0.03 (0.99)     .97        -0.03 (1.00)     .97         0.01 (0.01)     .37
    \      Correlation of Levels                          0.5094                      0.3407                       0.256
    \      Correlation of Slopes                          0.0820                      0.0461                       0.366
    \      Correlation of Residuals                       0.0031                      0.0029                       0.035
    \      N                                                 535                         535                       3,288
    \      occasions                                           5                           5                           3
    \      parameters                                         20                          28                          41
    \      LL                                            -18,327                     -18,302                     -56,887
    \      AIC                                            36,693                      36,660                     113,855
    \      BIC                                            36,779                      36,780                     114,105

## Summary 

 Study = _HRS_; Gender = _male_; Process (a) = _pef_

 Computed correlations:

 

label                    process_b      a    aeh   aehplus
----------------------  ----------  -----  -----  --------
Correlation of Levels      serial7   0.43   0.21      0.16
Correlation of Levels      word_de   0.45   0.22      0.27
Correlation of Levels      word_im   0.51   0.34      0.26




label                    process_b      a    aeh   aehplus
----------------------  ----------  -----  -----  --------
Correlation of Slopes      serial7   0.19   0.19      0.21
Correlation of Slopes      word_de   0.08   0.04      0.74
Correlation of Slopes      word_im   0.08   0.05      0.37




label                       process_b       a     aeh   aehplus
-------------------------  ----------  ------  ------  --------
Correlation of Residuals      serial7   -0.00   -0.00      0.03
Correlation of Residuals      word_de    0.00    0.00      0.03
Correlation of Residuals      word_im    0.00    0.00      0.04



P-values for corresponding covariances: 

 

label                   process_b      a    aeh   aehplus
---------------------  ----------  -----  -----  --------
Covariance of Levels      serial7   0.98   0.99      0.00
Covariance of Levels      word_de   0.96   0.99      0.00
Covariance of Levels      word_im   0.96   0.98      0.00




label                   process_b      a    aeh   aehplus
---------------------  ----------  -----  -----  --------
Covariance of Slopes      serial7   0.99   0.99      0.10
Covariance of Slopes      word_de   0.97   0.99      0.07
Covariance of Slopes      word_im   0.96   1.00      0.47




label                       process_b      a    aeh   aehplus
-------------------------  ----------  -----  -----  --------
Covariance of  Residuals      serial7   0.42   0.31      0.25
Covariance of  Residuals      word_de   0.47   0.57      0.28
Covariance of  Residuals      word_im   0.01   0.02      0.12


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
[19] htmlwidgets_0.7  grid_3.3.1       DT_0.2           R6_2.2.0         gsubfn_0.6-6     rmarkdown_1.1   
[25] pander_0.6.0     tidyr_0.6.0      readr_1.0.0      scales_0.4.1     htmltools_0.3.5  rsconnect_0.5   
[31] assertthat_0.1   testit_0.5       xtable_1.8-2     colorspace_1.2-7 stringi_1.1.2    lazyeval_0.2.0  
[37] munsell_0.4.3   
```
