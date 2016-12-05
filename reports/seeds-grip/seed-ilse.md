# ILSE : Seed Report
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

 Study **ILSE** have contributed the following outcome pairs to the IASLA-2015-Portland model pool: 
NULL



process_a   process_b      n_models
----------  ------------  ---------
grip        fluency               2
grip        piccomp               2
grip        spatial_ab            2
grip        symbol                2
grip        waisgeneral           2




study_name   subgroup   model_type   process_a   process_b      n_models
-----------  ---------  -----------  ----------  ------------  ---------
ilse         female     aehplus      grip        fluency               1
ilse         female     aehplus      grip        piccomp               1
ilse         female     aehplus      grip        spatial_ab            1
ilse         female     aehplus      grip        symbol                1
ilse         female     aehplus      grip        waisgeneral           1




study_name   subgroup   model_type   process_a   process_b      n_models
-----------  ---------  -----------  ----------  ------------  ---------
ilse         male       aehplus      grip        fluency               1
ilse         male       aehplus      grip        piccomp               1
ilse         male       aehplus      grip        spatial_ab            1
ilse         male       aehplus      grip        symbol                1
ilse         male       aehplus      grip        waisgeneral           1


# female 

 Gender = _female_; Model type: _aehplus_;  Process (a) = _grip_; Process (b): *fluency*, *piccomp*, *spatial_ab*, *symbol*, *waisgeneral*


 process   label                                      fluency                  piccomp               spatial_ab                   symbol              waisgeneral     mean(sd)   
---------  -------------------------  -----------------------  -----------------------  -----------------------  -----------------------  -----------------------  --------------
   ab      Covar (Levels)               13.64 (14.92)     .36      2.07 (6.71)     .76     0.80 (11.07)     .94   -48.56 (20.52)     .02      2.20 (7.03)     .75       ---      
   ab      Covar (Slopes)                 0.24 (0.27)     .38      0.07 (0.12)     .57      0.08 (0.16)     .59      0.12 (0.17)     .48      0.11 (0.10)     .27       ---      
   ab      Covar (Residuals)              9.98 (5.52)     .07      0.36 (2.76)     .90     -0.37 (3.83)     .92     -0.64 (3.70)     .86     -1.78 (1.78)     .32       ---      
   er      Corr (Levels)                  0.10 (0.11)     .35      0.04 (0.12)     .76      0.01 (0.10)     .94     -0.25 (0.09)     .01      0.03 (0.09)     .75       ---      
   er      Corr (Slopes)                  0.58 (0.72)     .43      0.26 (0.48)     .59      0.37 (0.79)     .64      0.21 (0.30)     .48      0.42 (0.42)     .32       ---      
   er      Corr (Residuals)               0.15 (0.08)     .06      0.01 (0.08)     .90     -0.01 (0.09)     .92     -0.01 (0.07)     .86     -0.08 (0.08)     .31       ---      
    a      Level                        88.57 (13.39)    <.01    87.42 (13.96)    <.01    87.30 (13.77)    <.01    87.55 (13.55)    <.01    87.84 (14.24)    <.01   87.73(0.51)  
    a      Slope                         -7.09 (2.24)    <.01     -6.43 (2.32)     .01     -6.36 (2.30)     .01     -6.55 (2.21)    <.01     -6.77 (2.33)    <.01   -6.64(0.30)  
    a      Level * age                    2.91 (1.79)     .10      2.76 (1.89)     .14      2.75 (1.86)     .14      2.78 (1.82)     .13      2.82 (1.91)     .14    2.81(0.07)  
    a      Level * education             -3.03 (3.51)     .39     -3.05 (3.59)     .40     -3.02 (3.53)     .39     -3.04 (3.57)     .39     -3.05 (3.65)     .40   -3.04(0.01)  
    a      Level * height                 0.63 (0.32)     .05      0.63 (0.32)     .05      0.63 (0.32)     .05      0.64 (0.32)     .05      0.63 (0.32)     .05    0.63(0.00)  
    a      Level * smoking               -4.99 (3.80)     .19     -4.92 (3.80)     .20     -4.90 (3.75)     .19     -4.87 (3.79)     .20     -4.94 (3.81)     .19   -4.92(0.04)  
    a      Level * cardio                 1.84 (4.34)     .67      2.02 (4.37)     .64      2.04 (4.27)     .63      1.98 (4.37)     .65      1.97 (4.45)     .66    1.97(0.08)  
    a      Level * diabetes                               ---                      ---                      ---                      ---                      ---       ---      
    a      Slope * age                   -0.63 (0.31)     .04     -0.55 (0.32)     .09     -0.54 (0.32)     .09     -0.56 (0.31)     .07     -0.59 (0.32)     .06   -0.57(0.04)  
    a      Slope * education              0.62 (0.49)     .21      0.64 (0.49)     .20      0.62 (0.48)     .20      0.65 (0.50)     .19      0.65 (0.52)     .21    0.64(0.02)  
    a      Slope * height                -0.01 (0.04)     .73     -0.02 (0.04)     .69     -0.01 (0.04)     .73     -0.01 (0.04)     .74     -0.02 (0.04)     .71   -0.02(0.00)  
    a      Slope * smoking                0.36 (0.55)     .51      0.32 (0.54)     .55      0.31 (0.54)     .57      0.32 (0.54)     .55      0.34 (0.55)     .53    0.33(0.02)  
    a      Slope * cardio                -0.12 (0.64)     .85     -0.18 (0.64)     .78     -0.19 (0.61)     .75     -0.14 (0.63)     .82     -0.14 (0.65)     .83   -0.15(0.03)  
    a      Slope * diabetes                               ---                      ---                      ---                      ---                      ---       ---      
    b      Level                         24.11 (5.14)    <.01      9.21 (2.25)    <.01     11.11 (3.84)    <.01     38.18 (6.49)    <.01     12.02 (2.23)    <.01       ---      
    b      Slope                         -0.17 (0.49)     .72      0.33 (0.27)     .22      0.06 (0.30)     .83      0.02 (0.37)     .96      0.34 (0.17)     .05       ---      
    b      Level * age                   -0.68 (0.71)     .33     -0.19 (0.31)     .54     -1.15 (0.52)     .03     -0.62 (0.90)     .49     -0.08 (0.31)     .80       ---      
    b      Level * education              6.28 (1.29)    <.01      2.26 (0.63)    <.01      3.44 (1.03)    <.01      8.90 (1.57)    <.01      4.27 (0.70)    <.01       ---      
    b      Level * height                -0.04 (0.11)     .73     -0.01 (0.04)     .74      0.06 (0.08)     .49      0.06 (0.12)     .60      0.05 (0.05)     .32       ---      
    b      Level * smoking                0.15 (1.24)     .90     -0.76 (0.53)     .15     -0.55 (0.94)     .56     -0.14 (1.51)     .93     -0.28 (0.59)     .63       ---      
    b      Level * cardio                -0.96 (1.42)     .50     -0.43 (0.61)     .48     -0.78 (1.04)     .45     -0.79 (1.86)     .67     -0.07 (0.64)     .92       ---      
    b      Level * diabetes                               ---                      ---                      ---                      ---                      ---       ---      
    b      Slope * age                   -0.01 (0.07)     .92      0.06 (0.04)     .10      0.04 (0.04)     .37      0.06 (0.05)     .27      0.04 (0.02)     .09       ---      
    b      Slope * education              0.13 (0.12)     .30      0.02 (0.07)     .74      0.17 (0.09)     .06     -0.09 (0.10)     .36     -0.02 (0.05)     .72       ---      
    b      Slope * height                 0.01 (0.01)     .35      0.01 (0.01)     .13     -0.02 (0.01)     .02      0.00 (0.01)     .49      0.00 (0.00)     .54       ---      
    b      Slope * smoking                0.01 (0.12)     .95      0.05 (0.07)     .42     -0.08 (0.08)     .35     -0.06 (0.10)     .51      0.01 (0.05)     .81       ---      
    b      Slope * cardio                -0.01 (0.14)     .96      0.04 (0.07)     .62     -0.08 (0.08)     .31     -0.03 (0.10)     .79     -0.04 (0.05)     .45       ---      
    b      Slope * diabetes                               ---                      ---                      ---                      ---                      ---       ---      
    a      Var (Level)                 417.16 (69.34)    <.01   413.40 (71.10)    <.01   411.65 (70.06)    <.01   415.13 (69.86)    <.01   421.01 (71.30)    <.01   415.67(3.62) 
    a      Var (Slope)                    4.90 (1.39)    <.01      4.70 (1.39)    <.01      4.58 (1.38)    <.01      4.88 (1.40)    <.01      5.12 (1.43)    <.01    4.84(0.21)  
    a      Var (Residual)              171.91 (21.21)    <.01   173.83 (22.57)    <.01   174.94 (22.65)    <.01   173.18 (22.88)    <.01   167.91 (22.12)    <.01   172.35(2.72) 
    b      Var (Level)                   42.57 (6.49)    <.01      7.47 (1.55)    <.01     29.82 (4.37)    <.01    92.85 (10.82)    <.01     14.13 (1.86)    <.01       ---      
    b      Var (Slope)                    0.04 (0.08)     .64      0.01 (0.01)     .33      0.01 (0.03)     .70      0.07 (0.05)     .15      0.01 (0.01)     .10       ---      
    b      Var (Residual)                25.70 (2.52)    <.01      6.49 (0.67)    <.01     11.30 (0.90)    <.01     14.17 (1.13)    <.01      2.92 (0.35)    <.01       ---      
    a      Covar (Level, Slope)         -44.58 (8.78)    <.01    -43.59 (8.87)    <.01    -43.02 (8.92)    <.01    -44.44 (8.79)    <.01    -45.40 (9.05)    <.01   -44.21(0.92) 
    b      Covar (Level, Slope)          -0.29 (0.58)     .61     -0.03 (0.12)     .78      0.07 (0.29)     .80     -0.52 (0.64)     .42     -0.11 (0.11)     .31       ---      
    \      Correlation of Levels                         0.10                    0.037                   0.0072                   -0.247                    0.029   -0.01(0.13)  
    \      Correlation of Slopes                         0.57                    0.260                   0.3744                    0.211                    0.426    0.37(0.14)  
    \      Correlation of Residuals                      0.15                    0.011                  -0.0083                   -0.013                   -0.080    0.01(0.08)  
    \      N                                              225                      225                      225                      225                      225   225.00(0.00) 
    \      occasions                                        3                        3                        3                        3                        3    3.00(0.00)  
    \      parameters                                      37                       37                       37                       37                       37   37.00(0.00)  
    \      LL                                          -4,056                   -3,642                   -3,871                   -4,037                   -3,552   -3,832(228)  
    \      AIC                                          8,186                    7,359                    7,815                    8,148                    7,179    7,737(456)  
    \      BIC                                          8,312                    7,485                    7,942                    8,274                    7,305    7,864(456)  

##  fluency 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _fluency_


 process   label                                      aehplus
---------  -------------------------  -----------------------
   ab      Covar (Levels)               13.64 (14.92)     .36
   ab      Covar (Slopes)                 0.24 (0.27)     .38
   ab      Covar (Residuals)              9.98 (5.52)     .07
   er      Corr (Levels)                  0.10 (0.11)     .35
   er      Corr (Slopes)                  0.58 (0.72)     .43
   er      Corr (Residuals)               0.15 (0.08)     .06
    a      Level                        88.57 (13.39)    <.01
    a      Slope                         -7.09 (2.24)    <.01
    a      Level * age                    2.91 (1.79)     .10
    a      Level * education             -3.03 (3.51)     .39
    a      Level * height                 0.63 (0.32)     .05
    a      Level * smoking               -4.99 (3.80)     .19
    a      Level * cardio                 1.84 (4.34)     .67
    a      Level * diabetes                               ---
    a      Slope * age                   -0.63 (0.31)     .04
    a      Slope * education              0.62 (0.49)     .21
    a      Slope * height                -0.01 (0.04)     .73
    a      Slope * smoking                0.36 (0.55)     .51
    a      Slope * cardio                -0.12 (0.64)     .85
    a      Slope * diabetes                               ---
    b      Level                         24.11 (5.14)    <.01
    b      Slope                         -0.17 (0.49)     .72
    b      Level * age                   -0.68 (0.71)     .33
    b      Level * education              6.28 (1.29)    <.01
    b      Level * height                -0.04 (0.11)     .73
    b      Level * smoking                0.15 (1.24)     .90
    b      Level * cardio                -0.96 (1.42)     .50
    b      Level * diabetes                               ---
    b      Slope * age                   -0.01 (0.07)     .92
    b      Slope * education              0.13 (0.12)     .30
    b      Slope * height                 0.01 (0.01)     .35
    b      Slope * smoking                0.01 (0.12)     .95
    b      Slope * cardio                -0.01 (0.14)     .96
    b      Slope * diabetes                               ---
    a      Var (Level)                 417.16 (69.34)    <.01
    a      Var (Slope)                    4.90 (1.39)    <.01
    a      Var (Residual)              171.91 (21.21)    <.01
    b      Var (Level)                   42.57 (6.49)    <.01
    b      Var (Slope)                    0.04 (0.08)     .64
    b      Var (Residual)                25.70 (2.52)    <.01
    a      Covar (Level, Slope)         -44.58 (8.78)    <.01
    b      Covar (Level, Slope)          -0.29 (0.58)     .61
    \      Correlation of Levels                         0.10
    \      Correlation of Slopes                         0.57
    \      Correlation of Residuals                      0.15
    \      N                                              225
    \      occasions                                        3
    \      parameters                                      37
    \      LL                                          -4,056
    \      AIC                                          8,186
    \      BIC                                          8,312

##  piccomp 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _piccomp_


 process   label                                      aehplus
---------  -------------------------  -----------------------
   ab      Covar (Levels)                 2.07 (6.71)     .76
   ab      Covar (Slopes)                 0.07 (0.12)     .57
   ab      Covar (Residuals)              0.36 (2.76)     .90
   er      Corr (Levels)                  0.04 (0.12)     .76
   er      Corr (Slopes)                  0.26 (0.48)     .59
   er      Corr (Residuals)               0.01 (0.08)     .90
    a      Level                        87.42 (13.96)    <.01
    a      Slope                         -6.43 (2.32)     .01
    a      Level * age                    2.76 (1.89)     .14
    a      Level * education             -3.05 (3.59)     .40
    a      Level * height                 0.63 (0.32)     .05
    a      Level * smoking               -4.92 (3.80)     .20
    a      Level * cardio                 2.02 (4.37)     .64
    a      Level * diabetes                               ---
    a      Slope * age                   -0.55 (0.32)     .09
    a      Slope * education              0.64 (0.49)     .20
    a      Slope * height                -0.02 (0.04)     .69
    a      Slope * smoking                0.32 (0.54)     .55
    a      Slope * cardio                -0.18 (0.64)     .78
    a      Slope * diabetes                               ---
    b      Level                          9.21 (2.25)    <.01
    b      Slope                          0.33 (0.27)     .22
    b      Level * age                   -0.19 (0.31)     .54
    b      Level * education              2.26 (0.63)    <.01
    b      Level * height                -0.01 (0.04)     .74
    b      Level * smoking               -0.76 (0.53)     .15
    b      Level * cardio                -0.43 (0.61)     .48
    b      Level * diabetes                               ---
    b      Slope * age                    0.06 (0.04)     .10
    b      Slope * education              0.02 (0.07)     .74
    b      Slope * height                 0.01 (0.01)     .13
    b      Slope * smoking                0.05 (0.07)     .42
    b      Slope * cardio                 0.04 (0.07)     .62
    b      Slope * diabetes                               ---
    a      Var (Level)                 413.40 (71.10)    <.01
    a      Var (Slope)                    4.70 (1.39)    <.01
    a      Var (Residual)              173.83 (22.57)    <.01
    b      Var (Level)                    7.47 (1.55)    <.01
    b      Var (Slope)                    0.01 (0.01)     .33
    b      Var (Residual)                 6.49 (0.67)    <.01
    a      Covar (Level, Slope)         -43.59 (8.87)    <.01
    b      Covar (Level, Slope)          -0.03 (0.12)     .78
    \      Correlation of Levels                        0.037
    \      Correlation of Slopes                        0.260
    \      Correlation of Residuals                     0.011
    \      N                                              225
    \      occasions                                        3
    \      parameters                                      37
    \      LL                                          -3,642
    \      AIC                                          7,359
    \      BIC                                          7,485

##  spatial_ab 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _spatial_ab_


 process   label                                      aehplus
---------  -------------------------  -----------------------
   ab      Covar (Levels)                0.80 (11.07)     .94
   ab      Covar (Slopes)                 0.08 (0.16)     .59
   ab      Covar (Residuals)             -0.37 (3.83)     .92
   er      Corr (Levels)                  0.01 (0.10)     .94
   er      Corr (Slopes)                  0.37 (0.79)     .64
   er      Corr (Residuals)              -0.01 (0.09)     .92
    a      Level                        87.30 (13.77)    <.01
    a      Slope                         -6.36 (2.30)     .01
    a      Level * age                    2.75 (1.86)     .14
    a      Level * education             -3.02 (3.53)     .39
    a      Level * height                 0.63 (0.32)     .05
    a      Level * smoking               -4.90 (3.75)     .19
    a      Level * cardio                 2.04 (4.27)     .63
    a      Level * diabetes                               ---
    a      Slope * age                   -0.54 (0.32)     .09
    a      Slope * education              0.62 (0.48)     .20
    a      Slope * height                -0.01 (0.04)     .73
    a      Slope * smoking                0.31 (0.54)     .57
    a      Slope * cardio                -0.19 (0.61)     .75
    a      Slope * diabetes                               ---
    b      Level                         11.11 (3.84)    <.01
    b      Slope                          0.06 (0.30)     .83
    b      Level * age                   -1.15 (0.52)     .03
    b      Level * education              3.44 (1.03)    <.01
    b      Level * height                 0.06 (0.08)     .49
    b      Level * smoking               -0.55 (0.94)     .56
    b      Level * cardio                -0.78 (1.04)     .45
    b      Level * diabetes                               ---
    b      Slope * age                    0.04 (0.04)     .37
    b      Slope * education              0.17 (0.09)     .06
    b      Slope * height                -0.02 (0.01)     .02
    b      Slope * smoking               -0.08 (0.08)     .35
    b      Slope * cardio                -0.08 (0.08)     .31
    b      Slope * diabetes                               ---
    a      Var (Level)                 411.65 (70.06)    <.01
    a      Var (Slope)                    4.58 (1.38)    <.01
    a      Var (Residual)              174.94 (22.65)    <.01
    b      Var (Level)                   29.82 (4.37)    <.01
    b      Var (Slope)                    0.01 (0.03)     .70
    b      Var (Residual)                11.30 (0.90)    <.01
    a      Covar (Level, Slope)         -43.02 (8.92)    <.01
    b      Covar (Level, Slope)           0.07 (0.29)     .80
    \      Correlation of Levels                       0.0072
    \      Correlation of Slopes                       0.3744
    \      Correlation of Residuals                   -0.0083
    \      N                                              225
    \      occasions                                        3
    \      parameters                                      37
    \      LL                                          -3,871
    \      AIC                                          7,815
    \      BIC                                          7,942

##  symbol 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _symbol_


 process   label                                      aehplus
---------  -------------------------  -----------------------
   ab      Covar (Levels)              -48.56 (20.52)     .02
   ab      Covar (Slopes)                 0.12 (0.17)     .48
   ab      Covar (Residuals)             -0.64 (3.70)     .86
   er      Corr (Levels)                 -0.25 (0.09)     .01
   er      Corr (Slopes)                  0.21 (0.30)     .48
   er      Corr (Residuals)              -0.01 (0.07)     .86
    a      Level                        87.55 (13.55)    <.01
    a      Slope                         -6.55 (2.21)    <.01
    a      Level * age                    2.78 (1.82)     .13
    a      Level * education             -3.04 (3.57)     .39
    a      Level * height                 0.64 (0.32)     .05
    a      Level * smoking               -4.87 (3.79)     .20
    a      Level * cardio                 1.98 (4.37)     .65
    a      Level * diabetes                               ---
    a      Slope * age                   -0.56 (0.31)     .07
    a      Slope * education              0.65 (0.50)     .19
    a      Slope * height                -0.01 (0.04)     .74
    a      Slope * smoking                0.32 (0.54)     .55
    a      Slope * cardio                -0.14 (0.63)     .82
    a      Slope * diabetes                               ---
    b      Level                         38.18 (6.49)    <.01
    b      Slope                          0.02 (0.37)     .96
    b      Level * age                   -0.62 (0.90)     .49
    b      Level * education              8.90 (1.57)    <.01
    b      Level * height                 0.06 (0.12)     .60
    b      Level * smoking               -0.14 (1.51)     .93
    b      Level * cardio                -0.79 (1.86)     .67
    b      Level * diabetes                               ---
    b      Slope * age                    0.06 (0.05)     .27
    b      Slope * education             -0.09 (0.10)     .36
    b      Slope * height                 0.00 (0.01)     .49
    b      Slope * smoking               -0.06 (0.10)     .51
    b      Slope * cardio                -0.03 (0.10)     .79
    b      Slope * diabetes                               ---
    a      Var (Level)                 415.13 (69.86)    <.01
    a      Var (Slope)                    4.88 (1.40)    <.01
    a      Var (Residual)              173.18 (22.88)    <.01
    b      Var (Level)                  92.85 (10.82)    <.01
    b      Var (Slope)                    0.07 (0.05)     .15
    b      Var (Residual)                14.17 (1.13)    <.01
    a      Covar (Level, Slope)         -44.44 (8.79)    <.01
    b      Covar (Level, Slope)          -0.52 (0.64)     .42
    \      Correlation of Levels                       -0.247
    \      Correlation of Slopes                        0.211
    \      Correlation of Residuals                    -0.013
    \      N                                              225
    \      occasions                                        3
    \      parameters                                      37
    \      LL                                          -4,037
    \      AIC                                          8,148
    \      BIC                                          8,274

##  waisgeneral 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _waisgeneral_


 process   label                                      aehplus
---------  -------------------------  -----------------------
   ab      Covar (Levels)                 2.20 (7.03)     .75
   ab      Covar (Slopes)                 0.11 (0.10)     .27
   ab      Covar (Residuals)             -1.78 (1.78)     .32
   er      Corr (Levels)                  0.03 (0.09)     .75
   er      Corr (Slopes)                  0.42 (0.42)     .32
   er      Corr (Residuals)              -0.08 (0.08)     .31
    a      Level                        87.84 (14.24)    <.01
    a      Slope                         -6.77 (2.33)    <.01
    a      Level * age                    2.82 (1.91)     .14
    a      Level * education             -3.05 (3.65)     .40
    a      Level * height                 0.63 (0.32)     .05
    a      Level * smoking               -4.94 (3.81)     .19
    a      Level * cardio                 1.97 (4.45)     .66
    a      Level * diabetes                               ---
    a      Slope * age                   -0.59 (0.32)     .06
    a      Slope * education              0.65 (0.52)     .21
    a      Slope * height                -0.02 (0.04)     .71
    a      Slope * smoking                0.34 (0.55)     .53
    a      Slope * cardio                -0.14 (0.65)     .83
    a      Slope * diabetes                               ---
    b      Level                         12.02 (2.23)    <.01
    b      Slope                          0.34 (0.17)     .05
    b      Level * age                   -0.08 (0.31)     .80
    b      Level * education              4.27 (0.70)    <.01
    b      Level * height                 0.05 (0.05)     .32
    b      Level * smoking               -0.28 (0.59)     .63
    b      Level * cardio                -0.07 (0.64)     .92
    b      Level * diabetes                               ---
    b      Slope * age                    0.04 (0.02)     .09
    b      Slope * education             -0.02 (0.05)     .72
    b      Slope * height                 0.00 (0.00)     .54
    b      Slope * smoking                0.01 (0.05)     .81
    b      Slope * cardio                -0.04 (0.05)     .45
    b      Slope * diabetes                               ---
    a      Var (Level)                 421.01 (71.30)    <.01
    a      Var (Slope)                    5.12 (1.43)    <.01
    a      Var (Residual)              167.91 (22.12)    <.01
    b      Var (Level)                   14.13 (1.86)    <.01
    b      Var (Slope)                    0.01 (0.01)     .10
    b      Var (Residual)                 2.92 (0.35)    <.01
    a      Covar (Level, Slope)         -45.40 (9.05)    <.01
    b      Covar (Level, Slope)          -0.11 (0.11)     .31
    \      Correlation of Levels                        0.029
    \      Correlation of Slopes                        0.426
    \      Correlation of Residuals                    -0.080
    \      N                                              225
    \      occasions                                        3
    \      parameters                                      37
    \      LL                                          -3,552
    \      AIC                                          7,179
    \      BIC                                          7,305

## Summary 

 Study = _ILSE_; Gender = _female_; Process (a) = _grip_

 Computed correlations:

 

label                      process_b   aehplus
----------------------  ------------  --------
Correlation of Levels        fluency      0.10
Correlation of Levels        piccomp      0.04
Correlation of Levels     spatial_ab      0.01
Correlation of Levels         symbol     -0.25
Correlation of Levels    waisgeneral      0.03




label                      process_b   aehplus
----------------------  ------------  --------
Correlation of Slopes        fluency      0.57
Correlation of Slopes        piccomp      0.26
Correlation of Slopes     spatial_ab      0.37
Correlation of Slopes         symbol      0.21
Correlation of Slopes    waisgeneral      0.43




label                         process_b   aehplus
-------------------------  ------------  --------
Correlation of Residuals        fluency      0.15
Correlation of Residuals        piccomp      0.01
Correlation of Residuals     spatial_ab     -0.01
Correlation of Residuals         symbol     -0.01
Correlation of Residuals    waisgeneral     -0.08



P-values for corresponding covariances: 

 

label                     process_b   aehplus
---------------------  ------------  --------
Covariance of Levels        fluency      0.36
Covariance of Levels        piccomp      0.76
Covariance of Levels     spatial_ab      0.94
Covariance of Levels         symbol      0.02
Covariance of Levels    waisgeneral      0.75




label                     process_b   aehplus
---------------------  ------------  --------
Covariance of Slopes        fluency      0.38
Covariance of Slopes        piccomp      0.57
Covariance of Slopes     spatial_ab      0.59
Covariance of Slopes         symbol      0.48
Covariance of Slopes    waisgeneral      0.27




label                         process_b   aehplus
-------------------------  ------------  --------
Covariance of  Residuals        fluency      0.07
Covariance of  Residuals        piccomp      0.90
Covariance of  Residuals     spatial_ab      0.92
Covariance of  Residuals         symbol      0.86
Covariance of  Residuals    waisgeneral      0.32



# male 

 Gender = _male_; Model type: _aehplus_;  Process (a) = _grip_; Process (b): *fluency*, *piccomp*, *spatial_ab*, *symbol*, *waisgeneral*


 process   label                                      fluency                  piccomp               spatial_ab                   symbol              waisgeneral     mean(sd)   
---------  -------------------------  -----------------------  -----------------------  -----------------------  -----------------------  -----------------------  --------------
   ab      Covar (Levels)                9.48 (13.28)     .47     11.62 (6.45)     .07     18.41 (9.77)     .06   -14.22 (16.99)     .40      7.82 (6.86)     .26       ---      
   ab      Covar (Slopes)                 0.04 (0.15)     .80      0.08 (0.10)     .43      0.17 (0.14)     .22     -0.04 (0.20)     .85      0.01 (0.06)     .82       ---      
   ab      Covar (Residuals)             13.29 (5.00)     .01      4.11 (2.57)     .11     -1.59 (2.61)     .54      3.40 (4.14)     .41     -0.87 (1.91)     .65       ---      
   er      Corr (Levels)                  0.07 (0.10)     .47      0.22 (0.12)     .06      0.18 (0.10)     .06     -0.08 (0.10)     .41      0.12 (0.11)     .25       ---      
   er      Corr (Slopes)                  0.19 (0.76)     .80      0.43 (0.48)     .37      0.41 (0.33)     .21     -0.07 (0.36)     .85      0.23 (1.11)     .83       ---      
   er      Corr (Residuals)               0.21 (0.07)    <.01      0.16 (0.09)     .09     -0.04 (0.07)     .54      0.06 (0.08)     .40     -0.04 (0.08)     .65       ---      
    a      Level                        95.04 (12.78)    <.01    94.47 (12.65)    <.01    94.87 (12.43)    <.01    94.64 (12.74)    <.01    94.55 (13.16)    <.01   94.71(0.23)  
    a      Slope                         -2.83 (1.54)     .07     -2.70 (1.57)     .09     -2.82 (1.57)     .07     -2.82 (1.59)     .08     -2.64 (1.61)     .10   -2.76(0.09)  
    a      Level * age                    0.96 (1.66)     .56      0.88 (1.64)     .59      0.95 (1.59)     .55      0.90 (1.65)     .58      0.89 (1.67)     .59    0.92(0.04)  
    a      Level * education              0.98 (3.61)     .79      0.89 (3.46)     .80      0.98 (3.55)     .78      0.99 (3.48)     .78      1.02 (3.47)     .77    0.98(0.05)  
    a      Level * height                 0.64 (0.27)     .02      0.63 (0.26)     .01      0.63 (0.26)     .01      0.64 (0.26)     .02      0.63 (0.26)     .02    0.63(0.00)  
    a      Level * smoking               -3.47 (3.65)     .34     -3.45 (3.78)     .36     -3.31 (3.75)     .38     -3.36 (3.71)     .36     -3.38 (3.80)     .37   -3.39(0.07)  
    a      Level * cardio                -2.54 (3.69)     .49     -2.54 (3.84)     .51     -2.66 (3.75)     .48     -2.55 (3.74)     .50     -2.70 (3.79)     .48   -2.60(0.08)  
    a      Level * diabetes                               ---                      ---                      ---                      ---                      ---       ---      
    a      Slope * age                   -0.07 (0.20)     .74     -0.05 (0.21)     .82     -0.07 (0.21)     .76     -0.07 (0.21)     .75     -0.04 (0.21)     .85   -0.06(0.01)  
    a      Slope * education              0.04 (0.51)     .94      0.10 (0.48)     .83      0.04 (0.49)     .94      0.07 (0.50)     .88      0.02 (0.51)     .96    0.05(0.03)  
    a      Slope * height                -0.04 (0.04)     .21     -0.05 (0.03)     .16     -0.04 (0.04)     .20     -0.05 (0.04)     .17     -0.04 (0.04)     .24   -0.04(0.00)  
    a      Slope * smoking                0.60 (0.47)     .20      0.64 (0.47)     .18      0.59 (0.47)     .21      0.53 (0.47)     .26      0.59 (0.48)     .22    0.59(0.04)  
    a      Slope * cardio                 0.57 (0.47)     .23      0.53 (0.49)     .28      0.57 (0.51)     .26      0.53 (0.52)     .31      0.60 (0.49)     .22    0.56(0.03)  
    a      Slope * diabetes                               ---                      ---                      ---                      ---                      ---       ---      
    b      Level                         23.80 (4.66)    <.01     11.52 (1.89)    <.01     21.61 (3.19)    <.01     37.53 (5.56)    <.01     14.29 (2.14)    <.01       ---      
    b      Slope                         -0.08 (0.46)     .87      0.03 (0.22)     .88     -0.76 (0.32)     .02      0.02 (0.52)     .98      0.04 (0.18)     .85       ---      
    b      Level * age                   -0.32 (0.66)     .62     -0.01 (0.26)     .98      0.05 (0.45)     .92     -0.06 (0.75)     .94     -0.24 (0.30)     .43       ---      
    b      Level * education              5.43 (1.20)    <.01      1.91 (0.60)    <.01      3.47 (0.90)    <.01      8.78 (1.47)    <.01      3.46 (0.68)    <.01       ---      
    b      Level * height                 0.15 (0.09)     .10      0.04 (0.04)     .27      0.08 (0.07)     .22      0.19 (0.10)     .06      0.02 (0.04)     .65       ---      
    b      Level * smoking               -0.52 (1.29)     .68      0.43 (0.50)     .39     -0.19 (0.90)     .83      0.10 (1.54)     .95     -0.33 (0.58)     .57       ---      
    b      Level * cardio                 0.51 (1.24)     .68     -0.19 (0.48)     .69     -0.41 (0.85)     .63     -0.45 (1.49)     .76      0.73 (0.55)     .19       ---      
    b      Level * diabetes                               ---                      ---                      ---                      ---                      ---       ---      
    b      Slope * age                    0.01 (0.06)     .89     -0.01 (0.03)     .83     -0.06 (0.05)     .16      0.06 (0.07)     .40      0.01 (0.02)     .79       ---      
    b      Slope * education              0.00 (0.12)     .98     -0.07 (0.06)     .22     -0.06 (0.10)     .54     -0.06 (0.11)     .59     -0.06 (0.05)     .20       ---      
    b      Slope * height                -0.01 (0.01)     .37      0.00 (0.00)     .90      0.01 (0.01)     .34     -0.00 (0.01)     .61      0.00 (0.00)     .29       ---      
    b      Slope * smoking               -0.04 (0.12)     .73     -0.07 (0.06)     .26      0.12 (0.09)     .15     -0.01 (0.12)     .92      0.03 (0.04)     .48       ---      
    b      Slope * cardio                 0.11 (0.13)     .43     -0.04 (0.05)     .40      0.04 (0.10)     .73     -0.03 (0.12)     .79     -0.06 (0.04)     .19       ---      
    b      Slope * diabetes                               ---                      ---                      ---                      ---                      ---       ---      
    a      Var (Level)                 358.95 (52.22)    <.01   360.66 (53.39)    <.01   361.65 (52.57)    <.01   363.30 (53.06)    <.01   358.28 (53.00)    <.01   360.57(2.03) 
    a      Var (Slope)                    1.52 (1.02)     .14      1.63 (1.08)     .13      1.67 (1.04)     .11      1.72 (1.07)     .11      1.51 (1.02)     .14    1.61(0.09)  
    a      Var (Residual)              176.46 (17.90)    <.01   174.94 (19.45)    <.01   175.08 (18.09)    <.01   173.98 (18.18)    <.01   176.80 (17.83)    <.01   175.45(1.16) 
    b      Var (Level)                   46.18 (8.39)    <.01      7.46 (1.09)    <.01     27.62 (3.75)    <.01    86.64 (10.38)    <.01     11.40 (1.50)    <.01       ---      
    b      Var (Slope)                    0.03 (0.07)     .73      0.02 (0.01)     .04      0.10 (0.02)    <.01      0.18 (0.06)    <.01      0.00 (0.01)     .72       ---      
    b      Var (Residual)                23.07 (2.46)    <.01      3.87 (0.37)    <.01      7.97 (0.64)    <.01     15.55 (1.37)    <.01      2.94 (0.26)    <.01       ---      
    a      Covar (Level, Slope)         -22.70 (6.41)    <.01    -23.20 (6.62)    <.01    -23.54 (6.38)    <.01    -23.79 (6.63)    <.01    -22.65 (6.43)    <.01   -23.18(0.50) 
    b      Covar (Level, Slope)           0.64 (0.52)     .22     -0.02 (0.10)     .85     -0.19 (0.28)     .49     -0.23 (0.62)     .72      0.02 (0.07)     .78       ---      
    \      Correlation of Levels                        0.074                     0.22                    0.184                   -0.080                    0.122    0.10(0.12)  
    \      Correlation of Slopes                        0.191                     0.43                    0.411                   -0.067                    0.223    0.24(0.20)  
    \      Correlation of Residuals                     0.208                     0.16                   -0.043                    0.065                   -0.038    0.07(0.11)  
    \      N                                              252                      252                      252                      252                      252   252.00(0.00) 
    \      occasions                                        3                        3                        3                        3                        3    3.00(0.00)  
    \      parameters                                      37                       37                       37                       37                       37   37.00(0.00)  
    \      LL                                          -4,475                   -3,917                   -4,241                   -4,504                   -3,904   -4,208(290)  
    \      AIC                                          9,023                    7,908                    8,556                    9,083                    7,881    8,490(581)  
    \      BIC                                          9,154                    8,038                    8,687                    9,213                    8,012    8,621(581)  

##  fluency 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _fluency_


 process   label                                      aehplus
---------  -------------------------  -----------------------
   ab      Covar (Levels)                9.48 (13.28)     .47
   ab      Covar (Slopes)                 0.04 (0.15)     .80
   ab      Covar (Residuals)             13.29 (5.00)     .01
   er      Corr (Levels)                  0.07 (0.10)     .47
   er      Corr (Slopes)                  0.19 (0.76)     .80
   er      Corr (Residuals)               0.21 (0.07)    <.01
    a      Level                        95.04 (12.78)    <.01
    a      Slope                         -2.83 (1.54)     .07
    a      Level * age                    0.96 (1.66)     .56
    a      Level * education              0.98 (3.61)     .79
    a      Level * height                 0.64 (0.27)     .02
    a      Level * smoking               -3.47 (3.65)     .34
    a      Level * cardio                -2.54 (3.69)     .49
    a      Level * diabetes                               ---
    a      Slope * age                   -0.07 (0.20)     .74
    a      Slope * education              0.04 (0.51)     .94
    a      Slope * height                -0.04 (0.04)     .21
    a      Slope * smoking                0.60 (0.47)     .20
    a      Slope * cardio                 0.57 (0.47)     .23
    a      Slope * diabetes                               ---
    b      Level                         23.80 (4.66)    <.01
    b      Slope                         -0.08 (0.46)     .87
    b      Level * age                   -0.32 (0.66)     .62
    b      Level * education              5.43 (1.20)    <.01
    b      Level * height                 0.15 (0.09)     .10
    b      Level * smoking               -0.52 (1.29)     .68
    b      Level * cardio                 0.51 (1.24)     .68
    b      Level * diabetes                               ---
    b      Slope * age                    0.01 (0.06)     .89
    b      Slope * education              0.00 (0.12)     .98
    b      Slope * height                -0.01 (0.01)     .37
    b      Slope * smoking               -0.04 (0.12)     .73
    b      Slope * cardio                 0.11 (0.13)     .43
    b      Slope * diabetes                               ---
    a      Var (Level)                 358.95 (52.22)    <.01
    a      Var (Slope)                    1.52 (1.02)     .14
    a      Var (Residual)              176.46 (17.90)    <.01
    b      Var (Level)                   46.18 (8.39)    <.01
    b      Var (Slope)                    0.03 (0.07)     .73
    b      Var (Residual)                23.07 (2.46)    <.01
    a      Covar (Level, Slope)         -22.70 (6.41)    <.01
    b      Covar (Level, Slope)           0.64 (0.52)     .22
    \      Correlation of Levels                        0.074
    \      Correlation of Slopes                        0.191
    \      Correlation of Residuals                     0.208
    \      N                                              252
    \      occasions                                        3
    \      parameters                                      37
    \      LL                                          -4,475
    \      AIC                                          9,023
    \      BIC                                          9,154

##  piccomp 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _piccomp_


 process   label                                      aehplus
---------  -------------------------  -----------------------
   ab      Covar (Levels)                11.62 (6.45)     .07
   ab      Covar (Slopes)                 0.08 (0.10)     .43
   ab      Covar (Residuals)              4.11 (2.57)     .11
   er      Corr (Levels)                  0.22 (0.12)     .06
   er      Corr (Slopes)                  0.43 (0.48)     .37
   er      Corr (Residuals)               0.16 (0.09)     .09
    a      Level                        94.47 (12.65)    <.01
    a      Slope                         -2.70 (1.57)     .09
    a      Level * age                    0.88 (1.64)     .59
    a      Level * education              0.89 (3.46)     .80
    a      Level * height                 0.63 (0.26)     .01
    a      Level * smoking               -3.45 (3.78)     .36
    a      Level * cardio                -2.54 (3.84)     .51
    a      Level * diabetes                               ---
    a      Slope * age                   -0.05 (0.21)     .82
    a      Slope * education              0.10 (0.48)     .83
    a      Slope * height                -0.05 (0.03)     .16
    a      Slope * smoking                0.64 (0.47)     .18
    a      Slope * cardio                 0.53 (0.49)     .28
    a      Slope * diabetes                               ---
    b      Level                         11.52 (1.89)    <.01
    b      Slope                          0.03 (0.22)     .88
    b      Level * age                   -0.01 (0.26)     .98
    b      Level * education              1.91 (0.60)    <.01
    b      Level * height                 0.04 (0.04)     .27
    b      Level * smoking                0.43 (0.50)     .39
    b      Level * cardio                -0.19 (0.48)     .69
    b      Level * diabetes                               ---
    b      Slope * age                   -0.01 (0.03)     .83
    b      Slope * education             -0.07 (0.06)     .22
    b      Slope * height                 0.00 (0.00)     .90
    b      Slope * smoking               -0.07 (0.06)     .26
    b      Slope * cardio                -0.04 (0.05)     .40
    b      Slope * diabetes                               ---
    a      Var (Level)                 360.66 (53.39)    <.01
    a      Var (Slope)                    1.63 (1.08)     .13
    a      Var (Residual)              174.94 (19.45)    <.01
    b      Var (Level)                    7.46 (1.09)    <.01
    b      Var (Slope)                    0.02 (0.01)     .04
    b      Var (Residual)                 3.87 (0.37)    <.01
    a      Covar (Level, Slope)         -23.20 (6.62)    <.01
    b      Covar (Level, Slope)          -0.02 (0.10)     .85
    \      Correlation of Levels                         0.22
    \      Correlation of Slopes                         0.43
    \      Correlation of Residuals                      0.16
    \      N                                              252
    \      occasions                                        3
    \      parameters                                      37
    \      LL                                          -3,917
    \      AIC                                          7,908
    \      BIC                                          8,038

##  spatial_ab 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _spatial_ab_


 process   label                                      aehplus
---------  -------------------------  -----------------------
   ab      Covar (Levels)                18.41 (9.77)     .06
   ab      Covar (Slopes)                 0.17 (0.14)     .22
   ab      Covar (Residuals)             -1.59 (2.61)     .54
   er      Corr (Levels)                  0.18 (0.10)     .06
   er      Corr (Slopes)                  0.41 (0.33)     .21
   er      Corr (Residuals)              -0.04 (0.07)     .54
    a      Level                        94.87 (12.43)    <.01
    a      Slope                         -2.82 (1.57)     .07
    a      Level * age                    0.95 (1.59)     .55
    a      Level * education              0.98 (3.55)     .78
    a      Level * height                 0.63 (0.26)     .01
    a      Level * smoking               -3.31 (3.75)     .38
    a      Level * cardio                -2.66 (3.75)     .48
    a      Level * diabetes                               ---
    a      Slope * age                   -0.07 (0.21)     .76
    a      Slope * education              0.04 (0.49)     .94
    a      Slope * height                -0.04 (0.04)     .20
    a      Slope * smoking                0.59 (0.47)     .21
    a      Slope * cardio                 0.57 (0.51)     .26
    a      Slope * diabetes                               ---
    b      Level                         21.61 (3.19)    <.01
    b      Slope                         -0.76 (0.32)     .02
    b      Level * age                    0.05 (0.45)     .92
    b      Level * education              3.47 (0.90)    <.01
    b      Level * height                 0.08 (0.07)     .22
    b      Level * smoking               -0.19 (0.90)     .83
    b      Level * cardio                -0.41 (0.85)     .63
    b      Level * diabetes                               ---
    b      Slope * age                   -0.06 (0.05)     .16
    b      Slope * education             -0.06 (0.10)     .54
    b      Slope * height                 0.01 (0.01)     .34
    b      Slope * smoking                0.12 (0.09)     .15
    b      Slope * cardio                 0.04 (0.10)     .73
    b      Slope * diabetes                               ---
    a      Var (Level)                 361.65 (52.57)    <.01
    a      Var (Slope)                    1.67 (1.04)     .11
    a      Var (Residual)              175.08 (18.09)    <.01
    b      Var (Level)                   27.62 (3.75)    <.01
    b      Var (Slope)                    0.10 (0.02)    <.01
    b      Var (Residual)                 7.97 (0.64)    <.01
    a      Covar (Level, Slope)         -23.54 (6.38)    <.01
    b      Covar (Level, Slope)          -0.19 (0.28)     .49
    \      Correlation of Levels                        0.184
    \      Correlation of Slopes                        0.411
    \      Correlation of Residuals                    -0.043
    \      N                                              252
    \      occasions                                        3
    \      parameters                                      37
    \      LL                                          -4,241
    \      AIC                                          8,556
    \      BIC                                          8,687

##  symbol 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _symbol_


 process   label                                      aehplus
---------  -------------------------  -----------------------
   ab      Covar (Levels)              -14.22 (16.99)     .40
   ab      Covar (Slopes)                -0.04 (0.20)     .85
   ab      Covar (Residuals)              3.40 (4.14)     .41
   er      Corr (Levels)                 -0.08 (0.10)     .41
   er      Corr (Slopes)                 -0.07 (0.36)     .85
   er      Corr (Residuals)               0.06 (0.08)     .40
    a      Level                        94.64 (12.74)    <.01
    a      Slope                         -2.82 (1.59)     .08
    a      Level * age                    0.90 (1.65)     .58
    a      Level * education              0.99 (3.48)     .78
    a      Level * height                 0.64 (0.26)     .02
    a      Level * smoking               -3.36 (3.71)     .36
    a      Level * cardio                -2.55 (3.74)     .50
    a      Level * diabetes                               ---
    a      Slope * age                   -0.07 (0.21)     .75
    a      Slope * education              0.07 (0.50)     .88
    a      Slope * height                -0.05 (0.04)     .17
    a      Slope * smoking                0.53 (0.47)     .26
    a      Slope * cardio                 0.53 (0.52)     .31
    a      Slope * diabetes                               ---
    b      Level                         37.53 (5.56)    <.01
    b      Slope                          0.02 (0.52)     .98
    b      Level * age                   -0.06 (0.75)     .94
    b      Level * education              8.78 (1.47)    <.01
    b      Level * height                 0.19 (0.10)     .06
    b      Level * smoking                0.10 (1.54)     .95
    b      Level * cardio                -0.45 (1.49)     .76
    b      Level * diabetes                               ---
    b      Slope * age                    0.06 (0.07)     .40
    b      Slope * education             -0.06 (0.11)     .59
    b      Slope * height                -0.00 (0.01)     .61
    b      Slope * smoking               -0.01 (0.12)     .92
    b      Slope * cardio                -0.03 (0.12)     .79
    b      Slope * diabetes                               ---
    a      Var (Level)                 363.30 (53.06)    <.01
    a      Var (Slope)                    1.72 (1.07)     .11
    a      Var (Residual)              173.98 (18.18)    <.01
    b      Var (Level)                  86.64 (10.38)    <.01
    b      Var (Slope)                    0.18 (0.06)    <.01
    b      Var (Residual)                15.55 (1.37)    <.01
    a      Covar (Level, Slope)         -23.79 (6.63)    <.01
    b      Covar (Level, Slope)          -0.23 (0.62)     .72
    \      Correlation of Levels                       -0.080
    \      Correlation of Slopes                       -0.067
    \      Correlation of Residuals                     0.065
    \      N                                              252
    \      occasions                                        3
    \      parameters                                      37
    \      LL                                          -4,504
    \      AIC                                          9,083
    \      BIC                                          9,213

##  waisgeneral 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _waisgeneral_


 process   label                                      aehplus
---------  -------------------------  -----------------------
   ab      Covar (Levels)                 7.82 (6.86)     .26
   ab      Covar (Slopes)                 0.01 (0.06)     .82
   ab      Covar (Residuals)             -0.87 (1.91)     .65
   er      Corr (Levels)                  0.12 (0.11)     .25
   er      Corr (Slopes)                  0.23 (1.11)     .83
   er      Corr (Residuals)              -0.04 (0.08)     .65
    a      Level                        94.55 (13.16)    <.01
    a      Slope                         -2.64 (1.61)     .10
    a      Level * age                    0.89 (1.67)     .59
    a      Level * education              1.02 (3.47)     .77
    a      Level * height                 0.63 (0.26)     .02
    a      Level * smoking               -3.38 (3.80)     .37
    a      Level * cardio                -2.70 (3.79)     .48
    a      Level * diabetes                               ---
    a      Slope * age                   -0.04 (0.21)     .85
    a      Slope * education              0.02 (0.51)     .96
    a      Slope * height                -0.04 (0.04)     .24
    a      Slope * smoking                0.59 (0.48)     .22
    a      Slope * cardio                 0.60 (0.49)     .22
    a      Slope * diabetes                               ---
    b      Level                         14.29 (2.14)    <.01
    b      Slope                          0.04 (0.18)     .85
    b      Level * age                   -0.24 (0.30)     .43
    b      Level * education              3.46 (0.68)    <.01
    b      Level * height                 0.02 (0.04)     .65
    b      Level * smoking               -0.33 (0.58)     .57
    b      Level * cardio                 0.73 (0.55)     .19
    b      Level * diabetes                               ---
    b      Slope * age                    0.01 (0.02)     .79
    b      Slope * education             -0.06 (0.05)     .20
    b      Slope * height                 0.00 (0.00)     .29
    b      Slope * smoking                0.03 (0.04)     .48
    b      Slope * cardio                -0.06 (0.04)     .19
    b      Slope * diabetes                               ---
    a      Var (Level)                 358.28 (53.00)    <.01
    a      Var (Slope)                    1.51 (1.02)     .14
    a      Var (Residual)              176.80 (17.83)    <.01
    b      Var (Level)                   11.40 (1.50)    <.01
    b      Var (Slope)                    0.00 (0.01)     .72
    b      Var (Residual)                 2.94 (0.26)    <.01
    a      Covar (Level, Slope)         -22.65 (6.43)    <.01
    b      Covar (Level, Slope)           0.02 (0.07)     .78
    \      Correlation of Levels                        0.122
    \      Correlation of Slopes                        0.223
    \      Correlation of Residuals                    -0.038
    \      N                                              252
    \      occasions                                        3
    \      parameters                                      37
    \      LL                                          -3,904
    \      AIC                                          7,881
    \      BIC                                          8,012

## Summary 

 Study = _ILSE_; Gender = _male_; Process (a) = _grip_

 Computed correlations:

 

label                      process_b   aehplus
----------------------  ------------  --------
Correlation of Levels        fluency      0.07
Correlation of Levels        piccomp      0.22
Correlation of Levels     spatial_ab      0.18
Correlation of Levels         symbol     -0.08
Correlation of Levels    waisgeneral      0.12




label                      process_b   aehplus
----------------------  ------------  --------
Correlation of Slopes        fluency      0.19
Correlation of Slopes        piccomp      0.43
Correlation of Slopes     spatial_ab      0.41
Correlation of Slopes         symbol     -0.07
Correlation of Slopes    waisgeneral      0.22




label                         process_b   aehplus
-------------------------  ------------  --------
Correlation of Residuals        fluency      0.21
Correlation of Residuals        piccomp      0.16
Correlation of Residuals     spatial_ab     -0.04
Correlation of Residuals         symbol      0.07
Correlation of Residuals    waisgeneral     -0.04



P-values for corresponding covariances: 

 

label                     process_b   aehplus
---------------------  ------------  --------
Covariance of Levels        fluency      0.47
Covariance of Levels        piccomp      0.07
Covariance of Levels     spatial_ab      0.06
Covariance of Levels         symbol      0.40
Covariance of Levels    waisgeneral      0.26




label                     process_b   aehplus
---------------------  ------------  --------
Covariance of Slopes        fluency      0.80
Covariance of Slopes        piccomp      0.43
Covariance of Slopes     spatial_ab      0.22
Covariance of Slopes         symbol      0.85
Covariance of Slopes    waisgeneral      0.82




label                         process_b   aehplus
-------------------------  ------------  --------
Covariance of  Residuals        fluency      0.01
Covariance of  Residuals        piccomp      0.11
Covariance of  Residuals     spatial_ab      0.54
Covariance of  Residuals         symbol      0.41
Covariance of  Residuals    waisgeneral      0.65


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
