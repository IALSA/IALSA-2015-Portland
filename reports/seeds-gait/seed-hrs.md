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
gait        serial7             6
gait        tics                6
gait        word_de             6
gait        word_im             6




study_name   subgroup   model_type   process_a   process_b    n_models
-----------  ---------  -----------  ----------  ----------  ---------
hrs          female     a            gait        serial7             1
hrs          female     a            gait        tics                1
hrs          female     a            gait        word_de             1
hrs          female     a            gait        word_im             1
hrs          female     aeh          gait        serial7             1
hrs          female     aeh          gait        tics                1
hrs          female     aeh          gait        word_de             1
hrs          female     aeh          gait        word_im             1
hrs          female     aehplus      gait        serial7             1
hrs          female     aehplus      gait        tics                1
hrs          female     aehplus      gait        word_de             1
hrs          female     aehplus      gait        word_im             1




study_name   subgroup   model_type   process_a   process_b    n_models
-----------  ---------  -----------  ----------  ----------  ---------
hrs          male       a            gait        serial7             1
hrs          male       a            gait        tics                1
hrs          male       a            gait        word_de             1
hrs          male       a            gait        word_im             1
hrs          male       aeh          gait        serial7             1
hrs          male       aeh          gait        tics                1
hrs          male       aeh          gait        word_de             1
hrs          male       aeh          gait        word_im             1
hrs          male       aehplus      gait        serial7             1
hrs          male       aehplus      gait        tics                1
hrs          male       aehplus      gait        word_de             1
hrs          male       aehplus      gait        word_im             1


# female 

 Gender = _female_; Model type: _aehplus_;  Process (a) = _gait_; Process (b): *serial7*, *tics*, *word_de*, *word_im*


 process   label                                    serial7                   tics                word_de                word_im       mean(sd)
---------  -------------------------  ---------------------  ---------------------  ---------------------  ---------------------  -------------
   ab      Covar (Levels)               0.02 (0.02)     .20    0.01 (0.01)     .14    0.03 (0.02)     .17    0.04 (0.01)     .01            ---
   ab      Covar (Slopes)               0.00 (0.00)     .60    0.00 (0.00)     .13    0.00 (0.00)     .53    0.00 (0.00)     .44            ---
   ab      Covar (Residuals)            0.01 (0.01)     .18    0.00 (0.01)     .70    0.01 (0.01)     .15    0.00 (0.01)     .60            ---
   er      Corr (Levels)                                ---                    ---                    ---                    ---            ---
   er      Corr (Slopes)                                ---                    ---                    ---                    ---            ---
   er      Corr (Residuals)                             ---                    ---                    ---                    ---            ---
    a      Level                        0.79 (0.02)    <.01    0.79 (0.02)    <.01    0.79 (0.02)    <.01    0.79 (0.02)    <.01     0.79(0.00)
    a      Slope                       -0.03 (0.00)    <.01   -0.03 (0.00)    <.01   -0.03 (0.00)    <.01   -0.03 (0.00)    <.01    -0.03(0.00)
    a      Level * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01    -0.01(0.00)
    a      Level * education            0.01 (0.00)    <.01    0.01 (0.00)    <.01    0.01 (0.00)    <.01    0.01 (0.00)    <.01     0.01(0.00)
    a      Level * height               0.16 (0.19)     .41    0.16 (0.19)     .38    0.16 (0.19)     .38    0.17 (0.19)     .38     0.16(0.00)
    a      Level * smoking             -0.04 (0.04)     .35   -0.04 (0.04)     .28   -0.04 (0.04)     .28   -0.04 (0.04)     .29    -0.04(0.00)
    a      Level * cardio              -0.03 (0.02)     .17   -0.03 (0.02)     .16   -0.04 (0.02)     .15   -0.03 (0.02)     .15    -0.03(0.00)
    a      Level * diabetes            -0.06 (0.03)     .02   -0.06 (0.03)     .02   -0.06 (0.03)     .02   -0.06 (0.03)     .02    -0.06(0.00)
    a      Slope * age                 -0.00 (0.00)    <.01   -0.00 (0.00)    <.01   -0.00 (0.00)    <.01   -0.00 (0.00)    <.01    -0.00(0.00)
    a      Slope * education            0.00 (0.00)     .11    0.00 (0.00)     .03    0.00 (0.00)     .06    0.00 (0.00)     .06     0.00(0.00)
    a      Slope * height              -0.03 (0.04)     .47   -0.04 (0.04)     .40   -0.04 (0.04)     .38   -0.04 (0.04)     .37    -0.04(0.00)
    a      Slope * smoking             -0.00 (0.01)     .80    0.00 (0.01)     .68    0.00 (0.01)     .71    0.00 (0.01)     .79     0.00(0.00)
    a      Slope * cardio              -0.00 (0.00)     .88    0.00 (0.00)     .99    0.00 (0.00)     .84    0.00 (0.00)     .90     0.00(0.00)
    a      Slope * diabetes             0.00 (0.01)     .99    0.00 (0.01)     .85    0.00 (0.01)     .99    0.00 (0.01)     .99     0.00(0.00)
    b      Level                        2.26 (0.19)    <.01    9.00 (0.14)    <.01    3.94 (0.19)    <.01    5.12 (0.16)    <.01            ---
    b      Slope                       -0.04 (0.03)     .23   -0.07 (0.02)     .01   -0.00 (0.03)     .87   -0.06 (0.03)     .03            ---
    b      Level * age                 -0.01 (0.01)     .46   -0.03 (0.01)    <.01   -0.09 (0.01)    <.01   -0.06 (0.01)    <.01            ---
    b      Level * education            0.23 (0.02)    <.01    0.12 (0.02)    <.01    0.14 (0.03)    <.01    0.12 (0.02)    <.01            ---
    b      Level * height               1.06 (1.26)     .40    0.26 (0.85)     .76   -0.23 (1.25)     .86    0.08 (0.98)     .94            ---
    b      Level * smoking              0.64 (0.36)     .08   -0.17 (0.24)     .48    0.59 (0.49)     .23    0.40 (0.26)     .12            ---
    b      Level * cardio              -0.14 (0.17)     .42   -0.00 (0.11)     .97   -0.24 (0.19)     .20   -0.21 (0.14)     .14            ---
    b      Level * diabetes             0.26 (0.18)     .15    0.06 (0.11)     .57   -0.38 (0.21)     .07   -0.24 (0.16)     .15            ---
    b      Slope * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01            ---
    b      Slope * education           -0.01 (0.00)     .02   -0.00 (0.00)     .83   -0.01 (0.00)     .03   -0.00 (0.00)     .45            ---
    b      Slope * height               0.17 (0.18)     .34    0.07 (0.19)     .70    0.13 (0.18)     .47    0.22 (0.14)     .11            ---
    b      Slope * smoking             -0.15 (0.08)     .08    0.08 (0.06)     .14   -0.24 (0.07)    <.01   -0.20 (0.06)    <.01            ---
    b      Slope * cardio              -0.04 (0.03)     .16   -0.01 (0.02)     .71   -0.02 (0.03)     .64   -0.01 (0.02)     .66            ---
    b      Slope * diabetes            -0.06 (0.04)     .12    0.00 (0.03)     .93   -0.01 (0.04)     .84    0.01 (0.03)     .75            ---
    a      Var (Level)                  0.02 (0.00)    <.01    0.02 (0.00)    <.01    0.02 (0.00)    <.01    0.02 (0.00)    <.01     0.02(0.00)
    a      Var (Slope)                  0.00 (0.00)     .50    0.00 (0.00)     .31    0.00 (0.00)     .46    0.00 (0.00)     .32     0.00(0.00)
    a      Var (Residual)               0.03 (0.00)    <.01    0.03 (0.00)    <.01    0.03 (0.00)    <.01    0.03 (0.00)    <.01     0.03(0.00)
    b      Var (Level)                  1.42 (0.15)    <.01    0.29 (0.10)    <.01    1.36 (0.24)    <.01    0.78 (0.15)    <.01            ---
    b      Var (Slope)                  0.03 (0.00)    <.01    0.02 (0.01)     .01    0.01 (0.01)     .24    0.00 (0.00)     .60            ---
    b      Var (Residual)               1.31 (0.07)    <.01    0.75 (0.06)    <.01    1.84 (0.12)    <.01    1.25 (0.07)    <.01            ---
    a      Covar (Level, Slope)        -0.00 (0.00)     .49   -0.00 (0.00)     .32   -0.00 (0.00)     .41   -0.00 (0.00)     .28    -0.00(0.00)
    b      Covar (Level, Slope)        -0.05 (0.02)     .02    0.05 (0.02)    <.01   -0.00 (0.03)     .92    0.01 (0.02)     .58            ---
    \      Correlation of Levels                      0.119                  0.175                  0.149                  0.257     0.18(0.06)
    \      Correlation of Slopes                        NaN                    Inf                    NaN                    NaN        Inf(NA)
    \      Correlation of Residuals                   0.069                  0.021                  0.067                  0.022     0.04(0.03)
    \      N                                            370                    370                    370                    370   370.00(0.00)
    \      occasions                                      5                      5                      5                      5     5.00(0.00)
    \      parameters                                    41                     41                     41                     41    41.00(0.00)
    \      LL                                        -3,172                 -2,195                 -2,834                 -2,513    -2,678(420)
    \      AIC                                        6,426                  4,471                  5,749                  5,108     5,439(840)
    \      BIC                                        6,586                  4,632                  5,910                  5,269     5,599(840)

##  serial7 

 Gender = _female_;  Process (a) = *gait*; Process (b) = _serial7_


 process   label                                          a                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------
   ab      Covar (Levels)               0.06 (0.22)     .79    0.03 (0.20)     .88    0.02 (0.02)     .20
   ab      Covar (Slopes)               0.00 (0.00)     .91    0.00 (0.00)     .94    0.00 (0.00)     .60
   ab      Covar (Residuals)            0.03 (0.01)     .07    0.02 (0.01)     .17    0.01 (0.01)     .18
   er      Corr (Levels)                                ---                    ---                    ---
   er      Corr (Slopes)                                ---                    ---                    ---
   er      Corr (Residuals)                             ---                    ---                    ---
    a      Level                        0.84 (0.02)    <.01    0.76 (0.02)    <.01    0.79 (0.02)    <.01
    a      Slope                       -0.02 (0.01)    <.01   -0.03 (0.01)    <.01   -0.03 (0.00)    <.01
    a      Level * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01
    a      Level * education                            ---    0.01 (0.00)    <.01    0.01 (0.00)    <.01
    a      Level * height                               ---    0.17 (0.20)     .40    0.16 (0.19)     .41
    a      Level * smoking                              ---                    ---   -0.04 (0.04)     .35
    a      Level * cardio                               ---                    ---   -0.03 (0.02)     .17
    a      Level * diabetes                             ---                    ---   -0.06 (0.03)     .02
    a      Slope * age                 -0.00 (0.00)     .63   -0.00 (0.00)     .23   -0.00 (0.00)    <.01
    a      Slope * education                            ---    0.00 (0.00)     .13    0.00 (0.00)     .11
    a      Slope * height                               ---   -0.03 (0.05)     .60   -0.03 (0.04)     .47
    a      Slope * smoking                              ---                    ---   -0.00 (0.01)     .80
    a      Slope * cardio                               ---                    ---   -0.00 (0.00)     .88
    a      Slope * diabetes                             ---                    ---    0.00 (0.01)     .99
    b      Level                        3.54 (0.12)    <.01    2.33 (0.18)    <.01    2.26 (0.19)    <.01
    b      Slope                       -0.12 (0.02)    <.01   -0.07 (0.03)     .01   -0.04 (0.03)     .23
    b      Level * age                 -0.01 (0.01)     .33   -0.01 (0.01)     .26   -0.01 (0.01)     .46
    b      Level * education                            ---    0.22 (0.02)    <.01    0.23 (0.02)    <.01
    b      Level * height                               ---    0.86 (1.25)     .49    1.06 (1.26)     .40
    b      Level * smoking                              ---                    ---    0.64 (0.36)     .08
    b      Level * cardio                               ---                    ---   -0.14 (0.17)     .42
    b      Level * diabetes                             ---                    ---    0.26 (0.18)     .15
    b      Slope * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01
    b      Slope * education                            ---   -0.01 (0.00)     .04   -0.01 (0.00)     .02
    b      Slope * height                               ---    0.17 (0.18)     .33    0.17 (0.18)     .34
    b      Slope * smoking                              ---                    ---   -0.15 (0.08)     .08
    b      Slope * cardio                               ---                    ---   -0.04 (0.03)     .16
    b      Slope * diabetes                             ---                    ---   -0.06 (0.04)     .12
    a      Var (Level)                  0.00 (0.01)     .61    0.00 (0.01)     .70    0.02 (0.00)    <.01
    a      Var (Slope)                  0.00 (0.00)     .94    0.00 (0.00)     .94    0.00 (0.00)     .50
    a      Var (Residual)               0.72 (0.03)    <.01    0.72 (0.03)    <.01    0.03 (0.00)    <.01
    b      Var (Level)                  2.23 (0.17)    <.01    1.80 (0.15)    <.01    1.42 (0.15)    <.01
    b      Var (Slope)                  0.04 (0.00)    <.01    0.04 (0.00)    <.01    0.03 (0.00)    <.01
    b      Var (Residual)               0.72 (0.03)    <.01    0.72 (0.03)    <.01    1.31 (0.07)    <.01
    a      Covar (Level, Slope)         0.00 (0.00)     .95    0.00 (0.00)     .82   -0.00 (0.00)     .49
    b      Covar (Level, Slope)        -0.12 (0.02)    <.01   -0.11 (0.02)    <.01   -0.05 (0.02)     .02
    \      Correlation of Levels                      0.624                  0.422                  0.119
    \      Correlation of Slopes                        Inf                    NaN                    NaN
    \      Correlation of Residuals                   0.037                  0.026                  0.069
    \      N                                            370                    370                    370
    \      occasions                                      5                      5                      5
    \      parameters                                    20                     28                     41
    \      LL                                        -4,272                 -4,235                 -3,172
    \      AIC                                        8,585                  8,526                  6,426
    \      BIC                                        8,663                  8,635                  6,586

##  tics 

 Gender = _female_;  Process (a) = *gait*; Process (b) = _tics_


 process   label                                          a                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------
   ab      Covar (Levels)               0.02 (0.05)     .62    0.01 (0.05)     .80    0.01 (0.01)     .14
   ab      Covar (Slopes)               0.00 (0.00)     .11    0.00 (0.00)     .17    0.00 (0.00)     .13
   ab      Covar (Residuals)            0.01 (0.01)     .10    0.01 (0.01)     .28    0.00 (0.01)     .70
   er      Corr (Levels)                                ---                    ---                    ---
   er      Corr (Slopes)                                ---                    ---                    ---
   er      Corr (Residuals)                             ---                    ---                    ---
    a      Level                        0.84 (0.02)    <.01    0.76 (0.02)    <.01    0.79 (0.02)    <.01
    a      Slope                       -0.02 (0.00)    <.01   -0.03 (0.00)    <.01   -0.03 (0.00)    <.01
    a      Level * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01
    a      Level * education                            ---    0.01 (0.00)    <.01    0.01 (0.00)    <.01
    a      Level * height                               ---    0.18 (0.19)     .35    0.16 (0.19)     .38
    a      Level * smoking                              ---                    ---   -0.04 (0.04)     .28
    a      Level * cardio                               ---                    ---   -0.03 (0.02)     .16
    a      Level * diabetes                             ---                    ---   -0.06 (0.03)     .02
    a      Slope * age                 -0.00 (0.00)     .01   -0.00 (0.00)     .01   -0.00 (0.00)    <.01
    a      Slope * education                            ---    0.00 (0.00)     .04    0.00 (0.00)     .03
    a      Slope * height                               ---   -0.04 (0.05)     .43   -0.04 (0.04)     .40
    a      Slope * smoking                              ---                    ---    0.00 (0.01)     .68
    a      Slope * cardio                               ---                    ---    0.00 (0.00)     .99
    a      Slope * diabetes                             ---                    ---    0.00 (0.01)     .85
    b      Level                        9.66 (0.06)    <.01    9.02 (0.13)    <.01    9.00 (0.14)    <.01
    b      Slope                       -0.07 (0.01)    <.01   -0.07 (0.02)    <.01   -0.07 (0.02)     .01
    b      Level * age                 -0.03 (0.01)    <.01   -0.03 (0.01)    <.01   -0.03 (0.01)    <.01
    b      Level * education                            ---    0.12 (0.02)    <.01    0.12 (0.02)    <.01
    b      Level * height                               ---    0.27 (0.84)     .75    0.26 (0.85)     .76
    b      Level * smoking                              ---                    ---   -0.17 (0.24)     .48
    b      Level * cardio                               ---                    ---   -0.00 (0.11)     .97
    b      Level * diabetes                             ---                    ---    0.06 (0.11)     .57
    b      Slope * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01
    b      Slope * education                            ---    0.00 (0.00)     .94   -0.00 (0.00)     .83
    b      Slope * height                               ---    0.04 (0.21)     .86    0.07 (0.19)     .70
    b      Slope * smoking                              ---                    ---    0.08 (0.06)     .14
    b      Slope * cardio                               ---                    ---   -0.01 (0.02)     .71
    b      Slope * diabetes                             ---                    ---    0.00 (0.03)     .93
    a      Var (Level)                  0.00 (0.00)     .76    0.00 (0.00)     .86    0.02 (0.00)    <.01
    a      Var (Slope)                  0.00 (0.00)     .84    0.00 (0.00)     .88    0.00 (0.00)     .31
    a      Var (Residual)               0.36 (0.02)    <.01    0.36 (0.02)    <.01    0.03 (0.00)    <.01
    b      Var (Level)                  0.65 (0.12)    <.01    0.53 (0.10)    <.01    0.29 (0.10)    <.01
    b      Var (Slope)                  0.04 (0.01)    <.01    0.04 (0.01)    <.01    0.02 (0.01)     .01
    b      Var (Residual)               0.36 (0.02)    <.01    0.36 (0.02)    <.01    0.75 (0.06)    <.01
    a      Covar (Level, Slope)         0.00 (0.00)     .92    0.00 (0.00)     .96   -0.00 (0.00)     .32
    b      Covar (Level, Slope)         0.01 (0.02)     .62    0.01 (0.01)     .61    0.05 (0.02)    <.01
    \      Correlation of Levels                      0.978                  0.521                  0.175
    \      Correlation of Slopes                        Inf                    Inf                    Inf
    \      Correlation of Residuals                   0.036                  0.025                  0.021
    \      N                                            370                    370                    370
    \      occasions                                      5                      5                      5
    \      parameters                                    20                     28                     41
    \      LL                                        -2,990                 -2,959                 -2,195
    \      AIC                                        6,019                  5,975                  4,471
    \      BIC                                        6,098                  6,084                  4,632

##  word_de 

 Gender = _female_;  Process (a) = *gait*; Process (b) = _word_de_


 process   label                                          a                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------
   ab      Covar (Levels)               0.05 (1.64)     .98    0.03 (0.22)     .88    0.03 (0.02)     .17
   ab      Covar (Slopes)               0.00 (0.08)     .99    0.00 (0.01)     .94    0.00 (0.00)     .53
   ab      Covar (Residuals)            0.02 (0.09)     .77    0.02 (0.01)     .11    0.01 (0.01)     .15
   er      Corr (Levels)                                ---                    ---                    ---
   er      Corr (Slopes)                                ---                    ---                    ---
   er      Corr (Residuals)                             ---                    ---                    ---
    a      Level                        0.84 (0.04)    <.01    0.76 (0.02)    <.01    0.79 (0.02)    <.01
    a      Slope                       -0.02 (0.04)     .64   -0.03 (0.00)    <.01   -0.03 (0.00)    <.01
    a      Level * age                 -0.01 (0.00)     .02   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01
    a      Level * education                            ---    0.01 (0.00)    <.01    0.01 (0.00)    <.01
    a      Level * height                               ---    0.17 (0.20)     .38    0.16 (0.19)     .38
    a      Level * smoking                              ---                    ---   -0.04 (0.04)     .28
    a      Level * cardio                               ---                    ---   -0.04 (0.02)     .15
    a      Level * diabetes                             ---                    ---   -0.06 (0.03)     .02
    a      Slope * age                 -0.00 (0.00)     .88   -0.00 (0.00)     .14   -0.00 (0.00)    <.01
    a      Slope * education                            ---    0.00 (0.00)     .46    0.00 (0.00)     .06
    a      Slope * height                               ---   -0.04 (0.05)     .50   -0.04 (0.04)     .38
    a      Slope * smoking                              ---                    ---    0.00 (0.01)     .71
    a      Slope * cardio                               ---                    ---    0.00 (0.00)     .84
    a      Slope * diabetes                             ---                    ---    0.00 (0.01)     .99
    b      Level                        4.56 (0.11)    <.01    3.79 (0.18)    <.01    3.94 (0.19)    <.01
    b      Slope                       -0.08 (0.02)    <.01   -0.03 (0.03)     .34   -0.00 (0.03)     .87
    b      Level * age                 -0.09 (0.01)    <.01   -0.09 (0.01)    <.01   -0.09 (0.01)    <.01
    b      Level * education                            ---    0.14 (0.03)    <.01    0.14 (0.03)    <.01
    b      Level * height                               ---   -0.09 (1.25)     .94   -0.23 (1.25)     .86
    b      Level * smoking                              ---                    ---    0.59 (0.49)     .23
    b      Level * cardio                               ---                    ---   -0.24 (0.19)     .20
    b      Level * diabetes                             ---                    ---   -0.38 (0.21)     .07
    b      Slope * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01
    b      Slope * education                            ---   -0.01 (0.00)     .07   -0.01 (0.00)     .03
    b      Slope * height                               ---    0.10 (0.18)     .60    0.13 (0.18)     .47
    b      Slope * smoking                              ---                    ---   -0.24 (0.07)    <.01
    b      Slope * cardio                               ---                    ---   -0.02 (0.03)     .64
    b      Slope * diabetes                             ---                    ---   -0.01 (0.04)     .84
    a      Var (Level)                  0.00 (0.07)     .98    0.00 (0.01)     .90    0.02 (0.00)    <.01
    a      Var (Slope)                  0.00 (0.00)     .95    0.00 (0.00)     .95    0.00 (0.00)     .46
    a      Var (Residual)               0.89 (0.05)    <.01    0.89 (0.05)    <.01    0.03 (0.00)    <.01
    b      Var (Level)                  2.20 (0.24)    <.01    2.02 (0.22)    <.01    1.36 (0.24)    <.01
    b      Var (Slope)                  0.04 (0.01)    <.01    0.04 (0.01)    <.01    0.01 (0.01)     .24
    b      Var (Residual)               0.89 (0.05)    <.01    0.89 (0.05)    <.01    1.84 (0.12)    <.01
    a      Covar (Level, Slope)         0.00 (0.02)     .99    0.00 (0.00)     .92   -0.00 (0.00)     .41
    b      Covar (Level, Slope)        -0.12 (0.03)    <.01   -0.11 (0.03)    <.01   -0.00 (0.03)     .92
    \      Correlation of Levels                      0.724                  0.733                  0.149
    \      Correlation of Slopes                        Inf                    Inf                    NaN
    \      Correlation of Residuals                   0.028                  0.025                  0.067
    \      N                                            370                    370                    370
    \      occasions                                      5                      5                      5
    \      parameters                                    20                     28                     41
    \      LL                                        -4,029                 -4,015                 -2,834
    \      AIC                                        8,097                  8,087                  5,749
    \      BIC                                        8,176                  8,196                  5,910

##  word_im 

 Gender = _female_;  Process (a) = *gait*; Process (b) = _word_im_


 process   label                                          a                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------
   ab      Covar (Levels)               0.05 (0.05)     .34    0.03 (0.07)     .64    0.04 (0.01)     .01
   ab      Covar (Slopes)               0.00 (0.01)     .94    0.00 (0.01)     .93    0.00 (0.00)     .44
   ab      Covar (Residuals)            0.01 (0.01)     .19    0.01 (0.01)     .27    0.00 (0.01)     .60
   er      Corr (Levels)                                ---                    ---                    ---
   er      Corr (Slopes)                                ---                    ---                    ---
   er      Corr (Residuals)                             ---                    ---                    ---
    a      Level                        0.84 (0.02)    <.01    0.76 (0.02)    <.01    0.79 (0.02)    <.01
    a      Slope                       -0.02 (0.00)    <.01   -0.03 (0.01)    <.01   -0.03 (0.00)    <.01
    a      Level * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01
    a      Level * education                            ---    0.01 (0.00)    <.01    0.01 (0.00)    <.01
    a      Level * height                               ---    0.18 (0.22)     .42    0.17 (0.19)     .38
    a      Level * smoking                              ---                    ---   -0.04 (0.04)     .29
    a      Level * cardio                               ---                    ---   -0.03 (0.02)     .15
    a      Level * diabetes                             ---                    ---   -0.06 (0.03)     .02
    a      Slope * age                 -0.00 (0.00)     .53   -0.00 (0.00)     .36   -0.00 (0.00)    <.01
    a      Slope * education                            ---    0.00 (0.00)     .08    0.00 (0.00)     .06
    a      Slope * height                               ---   -0.04 (0.06)     .54   -0.04 (0.04)     .37
    a      Slope * smoking                              ---                    ---    0.00 (0.01)     .79
    a      Slope * cardio                               ---                    ---    0.00 (0.00)     .90
    a      Slope * diabetes                             ---                    ---    0.00 (0.01)     .99
    b      Level                        5.67 (0.09)    <.01    5.01 (0.14)    <.01    5.12 (0.16)    <.01
    b      Slope                       -0.09 (0.01)    <.01   -0.07 (0.02)    <.01   -0.06 (0.03)     .03
    b      Level * age                 -0.06 (0.01)    <.01   -0.07 (0.01)    <.01   -0.06 (0.01)    <.01
    b      Level * education                            ---    0.12 (0.02)    <.01    0.12 (0.02)    <.01
    b      Level * height                               ---    0.22 (0.96)     .82    0.08 (0.98)     .94
    b      Level * smoking                              ---                    ---    0.40 (0.26)     .12
    b      Level * cardio                               ---                    ---   -0.21 (0.14)     .14
    b      Level * diabetes                             ---                    ---   -0.24 (0.16)     .15
    b      Slope * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01
    b      Slope * education                            ---   -0.00 (0.00)     .56   -0.00 (0.00)     .45
    b      Slope * height                               ---    0.14 (0.15)     .33    0.22 (0.14)     .11
    b      Slope * smoking                              ---                    ---   -0.20 (0.06)    <.01
    b      Slope * cardio                               ---                    ---   -0.01 (0.02)     .66
    b      Slope * diabetes                             ---                    ---    0.01 (0.03)     .75
    a      Var (Level)                  0.00 (0.01)     .66    0.00 (0.01)     .79    0.02 (0.00)    <.01
    a      Var (Slope)                  0.00 (0.00)     .94    0.00 (0.00)     .95    0.00 (0.00)     .32
    a      Var (Residual)               0.64 (0.03)    <.01    0.64 (0.03)    <.01    0.03 (0.00)    <.01
    b      Var (Level)                  1.28 (0.14)    <.01    1.16 (0.14)    <.01    0.78 (0.15)    <.01
    b      Var (Slope)                  0.02 (0.00)    <.01    0.02 (0.00)    <.01    0.00 (0.00)     .60
    b      Var (Residual)               0.64 (0.03)    <.01    0.64 (0.03)    <.01    1.25 (0.07)    <.01
    a      Covar (Level, Slope)         0.00 (0.00)     .97    0.00 (0.00)     .94   -0.00 (0.00)     .28
    b      Covar (Level, Slope)        -0.05 (0.02)     .01   -0.05 (0.02)     .01    0.01 (0.02)     .58
    \      Correlation of Levels                      0.947                  0.706                  0.257
    \      Correlation of Slopes                        Inf                    Inf                    NaN
    \      Correlation of Residuals                   0.022                  0.017                  0.022
    \      N                                            370                    370                    370
    \      occasions                                      5                      5                      5
    \      parameters                                    20                     28                     41
    \      LL                                        -3,551                 -3,532                 -2,513
    \      AIC                                        7,142                  7,120                  5,108
    \      BIC                                        7,221                  7,230                  5,269

## Summary 

 Study = _HRS_; Gender = _female_; Process (a) = _gait_

 Computed correlations:

 

label                    process_b      a    aeh   aehplus
----------------------  ----------  -----  -----  --------
Correlation of Levels      serial7   0.62   0.42      0.12
Correlation of Levels         tics   0.98   0.52      0.18
Correlation of Levels      word_de   0.72   0.73      0.15
Correlation of Levels      word_im   0.95   0.71      0.26




label                    process_b     a   aeh   aehplus
----------------------  ----------  ----  ----  --------
Correlation of Slopes      serial7   Inf   NaN       NaN
Correlation of Slopes         tics   Inf   Inf       Inf
Correlation of Slopes      word_de   Inf   Inf       NaN
Correlation of Slopes      word_im   Inf   Inf       NaN




label                       process_b      a    aeh   aehplus
-------------------------  ----------  -----  -----  --------
Correlation of Residuals      serial7   0.04   0.03      0.07
Correlation of Residuals         tics   0.04   0.02      0.02
Correlation of Residuals      word_de   0.03   0.02      0.07
Correlation of Residuals      word_im   0.02   0.02      0.02



P-values for corresponding covariances: 

 

label                   process_b      a    aeh   aehplus
---------------------  ----------  -----  -----  --------
Covariance of Levels      serial7   0.79   0.88      0.20
Covariance of Levels         tics   0.62   0.80      0.14
Covariance of Levels      word_de   0.98   0.88      0.17
Covariance of Levels      word_im   0.34   0.64      0.01




label                   process_b      a    aeh   aehplus
---------------------  ----------  -----  -----  --------
Covariance of Slopes      serial7   0.91   0.94      0.60
Covariance of Slopes         tics   0.11   0.17      0.13
Covariance of Slopes      word_de   0.99   0.94      0.53
Covariance of Slopes      word_im   0.94   0.93      0.44




label                       process_b      a    aeh   aehplus
-------------------------  ----------  -----  -----  --------
Covariance of  Residuals      serial7   0.07   0.17      0.18
Covariance of  Residuals         tics   0.10   0.28      0.70
Covariance of  Residuals      word_de   0.77   0.11      0.15
Covariance of  Residuals      word_im   0.19   0.27      0.60



# male 

 Gender = _male_; Model type: _aehplus_;  Process (a) = _gait_; Process (b): *serial7*, *tics*, *word_de*, *word_im*


 process   label                                    serial7                   tics                word_de                word_im       mean(sd)
---------  -------------------------  ---------------------  ---------------------  ---------------------  ---------------------  -------------
   ab      Covar (Levels)               0.05 (0.02)    <.01    0.02 (0.01)     .03    0.01 (0.02)     .65    0.03 (0.02)     .03            ---
   ab      Covar (Slopes)               0.00 (0.00)     .01    0.00 (0.00)     .60    0.00 (0.00)     .96    0.00 (0.00)     .74            ---
   ab      Covar (Residuals)            0.00 (0.01)     .98   -0.00 (0.01)     .76    0.00 (0.01)     .60    0.00 (0.01)     .82            ---
   er      Corr (Levels)                                ---                    ---                    ---                    ---            ---
   er      Corr (Slopes)                                ---                    ---                    ---                    ---            ---
   er      Corr (Residuals)                             ---                    ---                    ---                    ---            ---
    a      Level                        0.86 (0.04)    <.01    0.86 (0.04)    <.01    0.86 (0.04)    <.01    0.86 (0.04)    <.01     0.86(0.00)
    a      Slope                       -0.03 (0.01)     .01   -0.02 (0.01)     .02   -0.02 (0.01)     .03   -0.02 (0.01)     .03    -0.02(0.00)
    a      Level * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01    -0.01(0.00)
    a      Level * education            0.01 (0.00)     .03    0.01 (0.00)     .03    0.01 (0.00)     .03    0.01 (0.00)     .03     0.01(0.00)
    a      Level * height               0.11 (0.15)     .46    0.12 (0.15)     .45    0.12 (0.15)     .45    0.12 (0.15)     .45     0.12(0.00)
    a      Level * smoking             -0.06 (0.05)     .21   -0.07 (0.05)     .16   -0.06 (0.05)     .19   -0.06 (0.05)     .18    -0.06(0.00)
    a      Level * cardio              -0.01 (0.02)     .54   -0.01 (0.02)     .55   -0.01 (0.02)     .55   -0.01 (0.02)     .56    -0.01(0.00)
    a      Level * diabetes            -0.07 (0.03)     .02   -0.07 (0.03)     .02   -0.07 (0.03)     .02   -0.07 (0.03)     .02    -0.07(0.00)
    a      Slope * age                 -0.00 (0.00)     .05   -0.00 (0.00)     .12   -0.00 (0.00)     .09   -0.00 (0.00)     .14    -0.00(0.00)
    a      Slope * education            0.00 (0.00)     .15    0.00 (0.00)     .11    0.00 (0.00)     .20    0.00 (0.00)     .15     0.00(0.00)
    a      Slope * height              -0.01 (0.05)     .75   -0.02 (0.04)     .68   -0.01 (0.04)     .73   -0.02 (0.05)     .71    -0.02(0.00)
    a      Slope * smoking              0.02 (0.01)     .10    0.03 (0.01)     .01    0.02 (0.01)     .05    0.02 (0.01)     .03     0.02(0.00)
    a      Slope * cardio              -0.00 (0.01)     .68   -0.00 (0.01)     .63   -0.00 (0.01)     .63   -0.00 (0.01)     .57    -0.00(0.00)
    a      Slope * diabetes            -0.01 (0.01)     .20   -0.01 (0.01)     .22   -0.01 (0.01)     .23   -0.01 (0.01)     .22    -0.01(0.00)
    b      Level                        3.14 (0.28)    <.01    9.33 (0.15)    <.01    3.38 (0.26)    <.01    4.44 (0.21)    <.01            ---
    b      Slope                       -0.11 (0.05)     .02   -0.12 (0.03)    <.01   -0.10 (0.04)     .01   -0.07 (0.04)     .09            ---
    b      Level * age                  0.01 (0.01)     .32   -0.01 (0.01)     .21   -0.07 (0.01)    <.01   -0.07 (0.01)    <.01            ---
    b      Level * education            0.15 (0.03)    <.01    0.06 (0.01)    <.01    0.15 (0.02)    <.01    0.12 (0.02)    <.01            ---
    b      Level * height               0.73 (1.11)     .51   -0.09 (0.69)     .89    1.12 (0.98)     .25    1.55 (0.92)     .09            ---
    b      Level * smoking              0.62 (0.27)     .02   -0.16 (0.15)     .29   -0.10 (0.31)     .76   -0.49 (0.24)     .04            ---
    b      Level * cardio              -0.15 (0.16)     .34    0.01 (0.08)     .90   -0.20 (0.16)     .21    0.03 (0.14)     .84            ---
    b      Level * diabetes             0.08 (0.20)     .70   -0.10 (0.10)     .32   -0.44 (0.22)     .04   -0.28 (0.19)     .13            ---
    b      Slope * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01            ---
    b      Slope * education           -0.00 (0.00)     .25    0.01 (0.00)     .04   -0.00 (0.00)     .63    0.00 (0.00)     .97            ---
    b      Slope * height               0.15 (0.21)     .49    0.04 (0.16)     .80    0.05 (0.20)     .82   -0.10 (0.18)     .57            ---
    b      Slope * smoking             -0.23 (0.07)    <.01    0.04 (0.05)     .49    0.01 (0.08)     .85    0.07 (0.05)     .18            ---
    b      Slope * cardio              -0.01 (0.03)     .85   -0.04 (0.02)     .11    0.01 (0.03)     .82   -0.04 (0.03)     .13            ---
    b      Slope * diabetes            -0.07 (0.04)     .06   -0.01 (0.03)     .72    0.04 (0.04)     .22   -0.00 (0.04)     .94            ---
    a      Var (Level)                  0.02 (0.00)    <.01    0.02 (0.00)    <.01    0.02 (0.00)    <.01    0.02 (0.00)    <.01     0.02(0.00)
    a      Var (Slope)                  0.00 (0.00)     .02    0.00 (0.00)     .05    0.00 (0.00)     .04    0.00 (0.00)     .05     0.00(0.00)
    a      Var (Residual)               0.03 (0.00)    <.01    0.03 (0.00)    <.01    0.03 (0.00)    <.01    0.03 (0.00)    <.01     0.03(0.00)
    b      Var (Level)                  0.95 (0.16)    <.01    0.10 (0.07)     .13    1.07 (0.19)    <.01    0.69 (0.12)    <.01            ---
    b      Var (Slope)                  0.04 (0.00)    <.01    0.01 (0.00)    <.01    0.00 (0.01)     .82    0.00 (0.00)     .42            ---
    b      Var (Residual)               1.29 (0.07)    <.01    0.64 (0.05)    <.01    1.46 (0.08)    <.01    1.17 (0.07)    <.01            ---
    a      Covar (Level, Slope)        -0.00 (0.00)     .16   -0.00 (0.00)     .18   -0.00 (0.00)     .14   -0.00 (0.00)     .16    -0.00(0.00)
    b      Covar (Level, Slope)        -0.03 (0.02)     .16    0.03 (0.01)     .04    0.00 (0.03)     .86   -0.01 (0.02)     .61            ---
    \      Correlation of Levels                       0.31                  0.413                  0.051                  0.270     0.26(0.15)
    \      Correlation of Slopes                       0.48                  0.000                  0.000                  0.000     0.12(0.24)
    \      Correlation of Residuals                    0.00                 -0.015                  0.025                  0.011     0.01(0.02)
    \      N                                            318                    318                    318                    318   318.00(0.00)
    \      occasions                                      5                      5                      5                      5     5.00(0.00)
    \      parameters                                    41                     41                     41                     41    41.00(0.00)
    \      LL                                        -2,735                 -1,692                 -2,215                 -2,050    -2,173(434)
    \      AIC                                        5,552                  3,465                  4,512                  4,182     4,428(867)
    \      BIC                                        5,706                  3,620                  4,666                  4,336     4,582(867)

##  serial7 

 Gender = _male_;  Process (a) = *gait*; Process (b) = _serial7_


 process   label                                          a                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------
   ab      Covar (Levels)               0.06 (0.18)     .74    0.04 (0.18)     .82    0.05 (0.02)    <.01
   ab      Covar (Slopes)               0.00 (0.00)     .48    0.00 (0.00)     .56    0.00 (0.00)     .01
   ab      Covar (Residuals)            0.06 (0.02)     .02    0.04 (0.03)     .09    0.00 (0.01)     .98
   er      Corr (Levels)                                ---                    ---                    ---
   er      Corr (Slopes)                                ---                    ---                    ---
   er      Corr (Residuals)                             ---                    ---                    ---
    a      Level                        0.92 (0.02)    <.01    0.84 (0.04)    <.01    0.86 (0.04)    <.01
    a      Slope                       -0.03 (0.00)    <.01   -0.03 (0.01)     .01   -0.03 (0.01)     .01
    a      Level * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01
    a      Level * education                            ---    0.01 (0.00)     .03    0.01 (0.00)     .03
    a      Level * height                               ---    0.16 (0.16)     .30    0.11 (0.15)     .46
    a      Level * smoking                              ---                    ---   -0.06 (0.05)     .21
    a      Level * cardio                               ---                    ---   -0.01 (0.02)     .54
    a      Level * diabetes                             ---                    ---   -0.07 (0.03)     .02
    a      Slope * age                 -0.00 (0.00)     .06   -0.00 (0.00)     .09   -0.00 (0.00)     .05
    a      Slope * education                            ---    0.00 (0.00)     .26    0.00 (0.00)     .15
    a      Slope * height                               ---   -0.03 (0.05)     .56   -0.01 (0.05)     .75
    a      Slope * smoking                              ---                    ---    0.02 (0.01)     .10
    a      Slope * cardio                               ---                    ---   -0.00 (0.01)     .68
    a      Slope * diabetes                             ---                    ---   -0.01 (0.01)     .20
    b      Level                        4.13 (0.09)    <.01    3.16 (0.27)    <.01    3.14 (0.28)    <.01
    b      Slope                       -0.14 (0.02)    <.01   -0.15 (0.05)    <.01   -0.11 (0.05)     .02
    b      Level * age                  0.00 (0.01)     .74    0.01 (0.01)     .42    0.01 (0.01)     .32
    b      Level * education                            ---    0.15 (0.03)    <.01    0.15 (0.03)    <.01
    b      Level * height                               ---    0.67 (1.09)     .54    0.73 (1.11)     .51
    b      Level * smoking                              ---                    ---    0.62 (0.27)     .02
    b      Level * cardio                               ---                    ---   -0.15 (0.16)     .34
    b      Level * diabetes                             ---                    ---    0.08 (0.20)     .70
    b      Slope * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01
    b      Slope * education                            ---   -0.00 (0.00)     .30   -0.00 (0.00)     .25
    b      Slope * height                               ---    0.19 (0.21)     .38    0.15 (0.21)     .49
    b      Slope * smoking                              ---                    ---   -0.23 (0.07)    <.01
    b      Slope * cardio                               ---                    ---   -0.01 (0.03)     .85
    b      Slope * diabetes                             ---                    ---   -0.07 (0.04)     .06
    a      Var (Level)                  0.00 (0.01)     .81    0.00 (0.01)     .85    0.02 (0.00)    <.01
    a      Var (Slope)                  0.00 (0.00)     .81    0.00 (0.00)     .84    0.00 (0.00)     .02
    a      Var (Residual)               0.71 (0.03)    <.01    0.71 (0.03)    <.01    0.03 (0.00)    <.01
    b      Var (Level)                  1.59 (0.19)    <.01    1.32 (0.16)    <.01    0.95 (0.16)    <.01
    b      Var (Slope)                  0.06 (0.00)    <.01    0.06 (0.00)    <.01    0.04 (0.00)    <.01
    b      Var (Residual)               0.71 (0.03)    <.01    0.71 (0.03)    <.01    1.29 (0.07)    <.01
    a      Covar (Level, Slope)         0.00 (0.00)     .99    0.00 (0.00)     .97   -0.00 (0.00)     .16
    b      Covar (Level, Slope)        -0.10 (0.02)    <.01   -0.09 (0.02)    <.01   -0.03 (0.02)     .16
    \      Correlation of Levels                      0.840                  0.798                   0.31
    \      Correlation of Slopes                        Inf                    Inf                   0.48
    \      Correlation of Residuals                   0.077                  0.062                   0.00
    \      N                                            318                    318                    318
    \      occasions                                      5                      5                      5
    \      parameters                                    20                     28                     41
    \      LL                                        -3,641                 -3,614                 -2,735
    \      AIC                                        7,322                  7,285                  5,552
    \      BIC                                        7,397                  7,390                  5,706

##  tics 

 Gender = _male_;  Process (a) = *gait*; Process (b) = _tics_


 process   label                                          a                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------
   ab      Covar (Levels)               0.02 (0.05)     .67    0.01 (0.04)     .75    0.02 (0.01)     .03
   ab      Covar (Slopes)               0.00 (0.00)     .78    0.00 (0.00)     .85    0.00 (0.00)     .60
   ab      Covar (Residuals)            0.01 (0.01)     .10    0.01 (0.01)     .17   -0.00 (0.01)     .76
   er      Corr (Levels)                                ---                    ---                    ---
   er      Corr (Slopes)                                ---                    ---                    ---
   er      Corr (Residuals)                             ---                    ---                    ---
    a      Level                        0.91 (0.02)    <.01    0.83 (0.04)    <.01    0.86 (0.04)    <.01
    a      Slope                       -0.02 (0.00)    <.01   -0.02 (0.01)     .03   -0.02 (0.01)     .02
    a      Level * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01
    a      Level * education                            ---    0.01 (0.00)     .03    0.01 (0.00)     .03
    a      Level * height                               ---    0.18 (0.15)     .23    0.12 (0.15)     .45
    a      Level * smoking                              ---                    ---   -0.07 (0.05)     .16
    a      Level * cardio                               ---                    ---   -0.01 (0.02)     .55
    a      Level * diabetes                             ---                    ---   -0.07 (0.03)     .02
    a      Slope * age                  0.00 (0.00)     .57    0.00 (0.00)     .66   -0.00 (0.00)     .12
    a      Slope * education                            ---    0.00 (0.00)     .19    0.00 (0.00)     .11
    a      Slope * height                               ---   -0.03 (0.05)     .47   -0.02 (0.04)     .68
    a      Slope * smoking                              ---                    ---    0.03 (0.01)     .01
    a      Slope * cardio                               ---                    ---   -0.00 (0.01)     .63
    a      Slope * diabetes                             ---                    ---   -0.01 (0.01)     .22
    b      Level                        9.63 (0.05)    <.01    9.29 (0.16)    <.01    9.33 (0.15)    <.01
    b      Slope                       -0.08 (0.01)    <.01   -0.12 (0.03)    <.01   -0.12 (0.03)    <.01
    b      Level * age                 -0.01 (0.01)     .18   -0.01 (0.01)     .19   -0.01 (0.01)     .21
    b      Level * education                            ---    0.06 (0.01)    <.01    0.06 (0.01)    <.01
    b      Level * height                               ---   -0.01 (0.71)     .99   -0.09 (0.69)     .89
    b      Level * smoking                              ---                    ---   -0.16 (0.15)     .29
    b      Level * cardio                               ---                    ---    0.01 (0.08)     .90
    b      Level * diabetes                             ---                    ---   -0.10 (0.10)     .32
    b      Slope * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01
    b      Slope * education                            ---    0.01 (0.00)     .09    0.01 (0.00)     .04
    b      Slope * height                               ---    0.03 (0.16)     .86    0.04 (0.16)     .80
    b      Slope * smoking                              ---                    ---    0.04 (0.05)     .49
    b      Slope * cardio                               ---                    ---   -0.04 (0.02)     .11
    b      Slope * diabetes                             ---                    ---   -0.01 (0.03)     .72
    a      Var (Level)                  0.00 (0.00)     .76    0.00 (0.00)     .81    0.02 (0.00)    <.01
    a      Var (Slope)                  0.00 (0.00)     .83    0.00 (0.00)     .83    0.00 (0.00)     .05
    a      Var (Residual)               0.32 (0.02)    <.01    0.32 (0.02)    <.01    0.03 (0.00)    <.01
    b      Var (Level)                  0.31 (0.06)    <.01    0.27 (0.06)    <.01    0.10 (0.07)     .13
    b      Var (Slope)                  0.03 (0.00)    <.01    0.03 (0.00)    <.01    0.01 (0.00)    <.01
    b      Var (Residual)               0.32 (0.02)    <.01    0.32 (0.02)    <.01    0.64 (0.05)    <.01
    a      Covar (Level, Slope)         0.00 (0.00)     .97    0.00 (0.00)     .97   -0.00 (0.00)     .18
    b      Covar (Level, Slope)         0.00 (0.01)     .70    0.00 (0.01)     .98    0.03 (0.01)     .04
    \      Correlation of Levels                      0.803                   0.86                  0.413
    \      Correlation of Slopes                        Inf                    NaN                  0.000
    \      Correlation of Residuals                   0.046                   0.04                 -0.015
    \      N                                            318                    318                    318
    \      occasions                                      5                      5                      5
    \      parameters                                    20                     28                     41
    \      LL                                        -2,295                 -2,274                 -1,692
    \      AIC                                        4,630                  4,604                  3,465
    \      BIC                                        4,705                  4,709                  3,620

##  word_de 

 Gender = _male_;  Process (a) = *gait*; Process (b) = _word_de_


 process   label                                          a                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------
   ab      Covar (Levels)               0.03 (0.22)     .88    0.02 (0.23)     .94    0.01 (0.02)     .65
   ab      Covar (Slopes)               0.00 (0.01)     .99    0.00 (0.02)     .99    0.00 (0.00)     .96
   ab      Covar (Residuals)            0.01 (0.01)     .51    0.01 (0.01)     .62    0.00 (0.01)     .60
   er      Corr (Levels)                                ---                    ---                    ---
   er      Corr (Slopes)                                ---                    ---                    ---
   er      Corr (Residuals)                             ---                    ---                    ---
    a      Level                        0.91 (0.02)    <.01    0.83 (0.04)    <.01    0.86 (0.04)    <.01
    a      Slope                       -0.02 (0.01)     .01   -0.02 (0.01)     .08   -0.02 (0.01)     .03
    a      Level * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01
    a      Level * education                            ---    0.01 (0.00)     .02    0.01 (0.00)     .03
    a      Level * height                               ---    0.17 (0.15)     .26    0.12 (0.15)     .45
    a      Level * smoking                              ---                    ---   -0.06 (0.05)     .19
    a      Level * cardio                               ---                    ---   -0.01 (0.02)     .55
    a      Level * diabetes                             ---                    ---   -0.07 (0.03)     .02
    a      Slope * age                  0.00 (0.00)     .69    0.00 (0.00)     .72   -0.00 (0.00)     .09
    a      Slope * education                            ---    0.00 (0.00)     .46    0.00 (0.00)     .20
    a      Slope * height                               ---   -0.03 (0.06)     .60   -0.01 (0.04)     .73
    a      Slope * smoking                              ---                    ---    0.02 (0.01)     .05
    a      Slope * cardio                               ---                    ---   -0.00 (0.01)     .63
    a      Slope * diabetes                             ---                    ---   -0.01 (0.01)     .23
    b      Level                        4.25 (0.12)    <.01    3.17 (0.25)    <.01    3.38 (0.26)    <.01
    b      Slope                       -0.10 (0.02)    <.01   -0.09 (0.05)     .04   -0.10 (0.04)     .01
    b      Level * age                 -0.08 (0.01)    <.01   -0.08 (0.01)    <.01   -0.07 (0.01)    <.01
    b      Level * education                            ---    0.15 (0.02)    <.01    0.15 (0.02)    <.01
    b      Level * height                               ---    1.39 (0.99)     .16    1.12 (0.98)     .25
    b      Level * smoking                              ---                    ---   -0.10 (0.31)     .76
    b      Level * cardio                               ---                    ---   -0.20 (0.16)     .21
    b      Level * diabetes                             ---                    ---   -0.44 (0.22)     .04
    b      Slope * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01
    b      Slope * education                            ---   -0.00 (0.00)     .50   -0.00 (0.00)     .63
    b      Slope * height                               ---    0.06 (0.22)     .78    0.05 (0.20)     .82
    b      Slope * smoking                              ---                    ---    0.01 (0.08)     .85
    b      Slope * cardio                               ---                    ---    0.01 (0.03)     .82
    b      Slope * diabetes                             ---                    ---    0.04 (0.04)     .22
    a      Var (Level)                  0.00 (0.01)     .85    0.00 (0.01)     .88    0.02 (0.00)    <.01
    a      Var (Slope)                  0.00 (0.00)     .92    0.00 (0.00)     .93    0.00 (0.00)     .04
    a      Var (Residual)               0.73 (0.04)    <.01    0.73 (0.04)    <.01    0.03 (0.00)    <.01
    b      Var (Level)                  1.79 (0.19)    <.01    1.53 (0.17)    <.01    1.07 (0.19)    <.01
    b      Var (Slope)                  0.02 (0.00)    <.01    0.02 (0.00)    <.01    0.00 (0.01)     .82
    b      Var (Residual)               0.73 (0.04)    <.01    0.73 (0.04)    <.01    1.46 (0.08)    <.01
    a      Covar (Level, Slope)         0.00 (0.00)     .98    0.00 (0.00)     .99   -0.00 (0.00)     .14
    b      Covar (Level, Slope)        -0.06 (0.02)     .01   -0.06 (0.02)     .01    0.00 (0.03)     .86
    \      Correlation of Levels                      0.551                 0.4349                  0.051
    \      Correlation of Slopes                        NaN                    NaN                  0.000
    \      Correlation of Residuals                   0.012                 0.0095                  0.025
    \      N                                            318                    318                    318
    \      occasions                                      5                      5                      5
    \      parameters                                    20                     28                     41
    \      LL                                        -3,141                 -3,117                 -2,215
    \      AIC                                        6,322                  6,290                  4,512
    \      BIC                                        6,398                  6,395                  4,666

##  word_im 

 Gender = _male_;  Process (a) = *gait*; Process (b) = _word_im_


 process   label                                          a                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------
   ab      Covar (Levels)               0.05 (0.14)     .74    0.03 (0.14)     .82    0.03 (0.02)     .03
   ab      Covar (Slopes)               0.00 (0.01)     .97    0.00 (0.01)     .97    0.00 (0.00)     .74
   ab      Covar (Residuals)            0.01 (0.01)     .30    0.01 (0.01)     .39    0.00 (0.01)     .82
   er      Corr (Levels)                                ---                    ---                    ---
   er      Corr (Slopes)                                ---                    ---                    ---
   er      Corr (Residuals)                             ---                    ---                    ---
    a      Level                        0.91 (0.02)    <.01    0.83 (0.04)    <.01    0.86 (0.04)    <.01
    a      Slope                       -0.02 (0.00)    <.01   -0.02 (0.01)     .04   -0.02 (0.01)     .03
    a      Level * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01
    a      Level * education                            ---    0.01 (0.00)     .03    0.01 (0.00)     .03
    a      Level * height                               ---    0.18 (0.15)     .25    0.12 (0.15)     .45
    a      Level * smoking                              ---                    ---   -0.06 (0.05)     .18
    a      Level * cardio                               ---                    ---   -0.01 (0.02)     .56
    a      Level * diabetes                             ---                    ---   -0.07 (0.03)     .02
    a      Slope * age                  0.00 (0.00)     .75    0.00 (0.00)     .78   -0.00 (0.00)     .14
    a      Slope * education                            ---    0.00 (0.00)     .25    0.00 (0.00)     .15
    a      Slope * height                               ---   -0.03 (0.05)     .49   -0.02 (0.05)     .71
    a      Slope * smoking                              ---                    ---    0.02 (0.01)     .03
    a      Slope * cardio                               ---                    ---   -0.00 (0.01)     .57
    a      Slope * diabetes                             ---                    ---   -0.01 (0.01)     .22
    b      Level                        5.35 (0.10)    <.01    4.32 (0.20)    <.01    4.44 (0.21)    <.01
    b      Slope                       -0.11 (0.02)    <.01   -0.08 (0.04)     .08   -0.07 (0.04)     .09
    b      Level * age                 -0.07 (0.01)    <.01   -0.06 (0.01)    <.01   -0.07 (0.01)    <.01
    b      Level * education                            ---    0.13 (0.02)    <.01    0.12 (0.02)    <.01
    b      Level * height                               ---    1.81 (0.91)     .05    1.55 (0.92)     .09
    b      Level * smoking                              ---                    ---   -0.49 (0.24)     .04
    b      Level * cardio                               ---                    ---    0.03 (0.14)     .84
    b      Level * diabetes                             ---                    ---   -0.28 (0.19)     .13
    b      Slope * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01
    b      Slope * education                            ---   -0.00 (0.00)     .80    0.00 (0.00)     .97
    b      Slope * height                               ---   -0.13 (0.18)     .47   -0.10 (0.18)     .57
    b      Slope * smoking                              ---                    ---    0.07 (0.05)     .18
    b      Slope * cardio                               ---                    ---   -0.04 (0.03)     .13
    b      Slope * diabetes                             ---                    ---   -0.00 (0.04)     .94
    a      Var (Level)                  0.00 (0.01)     .81    0.00 (0.01)     .85    0.02 (0.00)    <.01
    a      Var (Slope)                  0.00 (0.00)     .88    0.00 (0.00)     .88    0.00 (0.00)     .05
    a      Var (Residual)               0.57 (0.03)    <.01    0.57 (0.03)    <.01    0.03 (0.00)    <.01
    b      Var (Level)                  1.28 (0.13)    <.01    1.07 (0.11)    <.01    0.69 (0.12)    <.01
    b      Var (Slope)                  0.02 (0.00)    <.01    0.02 (0.00)    <.01    0.00 (0.00)     .42
    b      Var (Residual)               0.57 (0.03)    <.01    0.57 (0.03)    <.01    1.17 (0.07)    <.01
    a      Covar (Level, Slope)         0.00 (0.00)     .97    0.00 (0.00)     .99   -0.00 (0.00)     .16
    b      Covar (Level, Slope)        -0.07 (0.02)    <.01   -0.07 (0.02)    <.01   -0.01 (0.02)     .61
    \      Correlation of Levels                      0.758                  0.712                  0.270
    \      Correlation of Slopes                        NaN                    NaN                  0.000
    \      Correlation of Residuals                   0.019                  0.016                  0.011
    \      N                                            318                    318                    318
    \      occasions                                      5                      5                      5
    \      parameters                                    20                     28                     41
    \      LL                                        -2,885                 -2,857                 -2,050
    \      AIC                                        5,811                  5,770                  4,182
    \      BIC                                        5,886                  5,875                  4,336

## Summary 

 Study = _HRS_; Gender = _male_; Process (a) = _gait_

 Computed correlations:

 

label                    process_b      a    aeh   aehplus
----------------------  ----------  -----  -----  --------
Correlation of Levels      serial7   0.84   0.80      0.31
Correlation of Levels         tics   0.80   0.86      0.41
Correlation of Levels      word_de   0.55   0.43      0.05
Correlation of Levels      word_im   0.76   0.71      0.27




label                    process_b     a   aeh   aehplus
----------------------  ----------  ----  ----  --------
Correlation of Slopes      serial7   Inf   Inf      0.48
Correlation of Slopes         tics   Inf   NaN      0.00
Correlation of Slopes      word_de   NaN   NaN      0.00
Correlation of Slopes      word_im   NaN   NaN      0.00




label                       process_b      a    aeh   aehplus
-------------------------  ----------  -----  -----  --------
Correlation of Residuals      serial7   0.08   0.06      0.00
Correlation of Residuals         tics   0.05   0.04     -0.01
Correlation of Residuals      word_de   0.01   0.01      0.02
Correlation of Residuals      word_im   0.02   0.02      0.01



P-values for corresponding covariances: 

 

label                   process_b      a    aeh   aehplus
---------------------  ----------  -----  -----  --------
Covariance of Levels      serial7   0.74   0.82      0.00
Covariance of Levels         tics   0.67   0.75      0.03
Covariance of Levels      word_de   0.88   0.94      0.65
Covariance of Levels      word_im   0.74   0.82      0.03




label                   process_b      a    aeh   aehplus
---------------------  ----------  -----  -----  --------
Covariance of Slopes      serial7   0.48   0.56      0.01
Covariance of Slopes         tics   0.78   0.85      0.60
Covariance of Slopes      word_de   1.00   1.00      0.96
Covariance of Slopes      word_im   0.97   0.97      0.74




label                       process_b      a    aeh   aehplus
-------------------------  ----------  -----  -----  --------
Covariance of  Residuals      serial7   0.02   0.09      0.98
Covariance of  Residuals         tics   0.10   0.17      0.76
Covariance of  Residuals      word_de   0.51   0.62      0.60
Covariance of  Residuals      word_im   0.30   0.39      0.82


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
