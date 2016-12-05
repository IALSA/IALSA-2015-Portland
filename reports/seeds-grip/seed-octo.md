# OCTO : Seed Report
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

 Study **OCTO** have contributed the following outcome pairs to the IASLA-2015-Portland model pool: 
NULL



process_a   process_b    n_models
----------  ----------  ---------
grip        block               6
grip        digit_b             6
grip        digit_f             6
grip        fig_logic           4
grip        mir                 4
grip        prose_im            6
grip        symbol              6




study_name   subgroup   model_type   process_a   process_b    n_models
-----------  ---------  -----------  ----------  ----------  ---------
octo         female     a            grip        block               1
octo         female     a            grip        digit_b             1
octo         female     a            grip        digit_f             1
octo         female     a            grip        fig_logic           1
octo         female     a            grip        mir                 1
octo         female     a            grip        prose_im            1
octo         female     a            grip        symbol              1
octo         female     aeh          grip        block               1
octo         female     aeh          grip        digit_b             1
octo         female     aeh          grip        digit_f             1
octo         female     aeh          grip        fig_logic           1
octo         female     aeh          grip        mir                 1
octo         female     aeh          grip        prose_im            1
octo         female     aeh          grip        symbol              1
octo         female     aehplus      grip        block               1
octo         female     aehplus      grip        digit_b             1
octo         female     aehplus      grip        digit_f             1
octo         female     aehplus      grip        prose_im            1
octo         female     aehplus      grip        symbol              1




study_name   subgroup   model_type   process_a   process_b    n_models
-----------  ---------  -----------  ----------  ----------  ---------
octo         male       a            grip        block               1
octo         male       a            grip        digit_b             1
octo         male       a            grip        digit_f             1
octo         male       a            grip        fig_logic           1
octo         male       a            grip        mir                 1
octo         male       a            grip        prose_im            1
octo         male       a            grip        symbol              1
octo         male       aeh          grip        block               1
octo         male       aeh          grip        digit_b             1
octo         male       aeh          grip        digit_f             1
octo         male       aeh          grip        fig_logic           1
octo         male       aeh          grip        mir                 1
octo         male       aeh          grip        prose_im            1
octo         male       aeh          grip        symbol              1
octo         male       aehplus      grip        block               1
octo         male       aehplus      grip        digit_b             1
octo         male       aehplus      grip        digit_f             1
octo         male       aehplus      grip        prose_im            1
octo         male       aehplus      grip        symbol              1


# female 

 Gender = _female_; Model type: _aehplus_;  Process (a) = _grip_; Process (b): *block*, *digit_b*, *digit_f*, *fig_logic*, *mir*, *prose_im*, *symbol*


 process   label                                      block                digit_b                digit_f               prose_im                 symbol     mean(sd)    
---------  -------------------------  ---------------------  ---------------------  ---------------------  ---------------------  ---------------------  ---------------
   ab      Covar (Levels)               3.10 (0.84)    <.01   -0.00 (0.13)     .98   -0.07 (0.12)     .53    0.68 (0.38)     .08    2.62 (1.18)     .03        ---      
   ab      Covar (Slopes)               0.05 (0.02)    <.01   -0.00 (0.00)     .40    0.00 (0.00)     .70    0.01 (0.01)     .31    0.01 (0.02)     .59        ---      
   ab      Covar (Residuals)            0.18 (0.19)     .35    0.06 (0.06)     .35    0.04 (0.04)     .37    0.14 (0.16)     .39    0.72 (0.32)     .02        ---      
   er      Corr (Levels)                0.31 (0.08)    <.01   -0.00 (0.10)     .98   -0.06 (0.09)     .53    0.14 (0.07)     .07    0.18 (0.08)     .02        ---      
   er      Corr (Slopes)                0.76 (0.28)     .01   -0.44 (0.64)     .49    0.13 (0.33)     .70    0.37 (0.35)     .29    0.17 (0.31)     .58        ---      
   er      Corr (Residuals)             0.05 (0.05)     .35    0.05 (0.05)     .35    0.04 (0.05)     .38    0.06 (0.07)     .38    0.12 (0.05)     .02        ---      
    a      Level                        9.18 (0.25)    <.01    9.19 (0.25)    <.01    9.19 (0.25)    <.01    9.19 (0.25)    <.01    9.19 (0.25)    <.01    9.19(0.01)   
    a      Slope                       -0.34 (0.04)    <.01   -0.34 (0.04)    <.01   -0.33 (0.04)    <.01   -0.34 (0.04)    <.01   -0.34 (0.04)    <.01    -0.34(0.00)  
    a      Level * age                 -0.15 (0.04)    <.01   -0.16 (0.04)    <.01   -0.16 (0.04)    <.01   -0.15 (0.04)    <.01   -0.16 (0.04)    <.01    -0.16(0.00)  
    a      Level * education            0.17 (0.07)     .01    0.17 (0.07)     .01    0.17 (0.07)     .01    0.17 (0.07)     .01    0.17 (0.07)     .01    0.17(0.00)   
    a      Level * height               0.09 (0.02)    <.01    0.09 (0.02)    <.01    0.09 (0.02)    <.01    0.09 (0.02)    <.01    0.09 (0.02)    <.01    0.09(0.00)   
    a      Level * smoking             -0.52 (0.32)     .10   -0.52 (0.31)     .10   -0.51 (0.32)     .10   -0.53 (0.32)     .10   -0.51 (0.32)     .10    -0.52(0.01)  
    a      Level * cardio              -0.17 (0.25)     .51   -0.16 (0.25)     .53   -0.16 (0.25)     .52   -0.17 (0.25)     .51   -0.16 (0.25)     .53    -0.16(0.00)  
    a      Level * diabetes            -0.01 (0.53)     .99   -0.01 (0.53)     .98   -0.03 (0.53)     .95   -0.01 (0.53)     .99   -0.01 (0.53)     .99    -0.01(0.01)  
    a      Slope * age                 -0.00 (0.01)     .61   -0.00 (0.01)     .73   -0.00 (0.01)     .72   -0.00 (0.01)     .61   -0.00 (0.01)     .68    -0.00(0.00)  
    a      Slope * education           -0.01 (0.01)     .48   -0.01 (0.01)     .38   -0.01 (0.01)     .36   -0.01 (0.01)     .37   -0.01 (0.01)     .35    -0.01(0.00)  
    a      Slope * height              -0.00 (0.00)     .48   -0.00 (0.00)     .50   -0.00 (0.00)     .51   -0.00 (0.00)     .50   -0.00 (0.00)     .57    -0.00(0.00)  
    a      Slope * smoking              0.00 (0.05)     .98    0.01 (0.04)     .86    0.01 (0.04)     .87    0.01 (0.04)     .86    0.00 (0.05)     .97    0.01(0.00)   
    a      Slope * cardio               0.00 (0.04)     .99   -0.00 (0.04)     .96    0.00 (0.04)     .99    0.00 (0.04)     .98   -0.00 (0.04)     .90    -0.00(0.00)  
    a      Slope * diabetes            -0.05 (0.10)     .64   -0.06 (0.10)     .58   -0.05 (0.10)     .63   -0.06 (0.10)     .58   -0.04 (0.10)     .66    -0.05(0.01)  
    b      Level                       14.87 (0.75)    <.01    3.86 (0.13)    <.01    5.68 (0.12)    <.01   11.14 (0.40)    <.01   28.57 (1.19)    <.01        ---      
    b      Slope                       -0.23 (0.11)     .04   -0.09 (0.03)    <.01   -0.08 (0.02)    <.01   -0.04 (0.07)     .58   -0.13 (0.19)     .51        ---      
    b      Level * age                 -0.59 (0.14)    <.01   -0.10 (0.02)    <.01   -0.08 (0.02)    <.01   -0.25 (0.08)    <.01   -0.82 (0.27)    <.01        ---      
    b      Level * education            0.76 (0.19)    <.01    0.12 (0.04)    <.01    0.14 (0.03)    <.01    0.46 (0.10)    <.01    1.68 (0.37)    <.01        ---      
    b      Level * height              -0.01 (0.07)     .85   -0.00 (0.01)     .76    0.01 (0.01)     .43    0.01 (0.04)     .76    0.08 (0.11)     .50        ---      
    b      Level * smoking             -1.33 (0.95)     .16   -0.32 (0.19)     .09   -0.15 (0.14)     .29    0.26 (0.49)     .59   -0.56 (1.69)     .74        ---      
    b      Level * cardio              -0.18 (0.80)     .82    0.06 (0.14)     .69    0.05 (0.12)     .66    0.24 (0.43)     .58    0.90 (1.27)     .48        ---      
    b      Level * diabetes             1.14 (2.31)     .62   -0.09 (0.30)     .77    0.08 (0.26)     .75   -1.78 (1.14)     .12   -2.89 (3.13)     .36        ---      
    b      Slope * age                  0.01 (0.02)     .58    0.01 (0.01)     .12    0.00 (0.00)     .52    0.02 (0.02)     .21    0.00 (0.04)     .94        ---      
    b      Slope * education           -0.03 (0.03)     .34    0.00 (0.01)     .84   -0.01 (0.00)     .02   -0.04 (0.02)     .04   -0.04 (0.06)     .53        ---      
    b      Slope * height               0.01 (0.01)     .17    0.00 (0.00)     .62   -0.00 (0.00)     .29    0.01 (0.01)     .45    0.01 (0.02)     .49        ---      
    b      Slope * smoking              0.08 (0.14)     .59    0.04 (0.03)     .14    0.05 (0.03)     .09   -0.12 (0.10)     .20   -0.34 (0.28)     .22        ---      
    b      Slope * cardio              -0.19 (0.12)     .11   -0.03 (0.03)     .26   -0.00 (0.02)     .85   -0.07 (0.09)     .40   -0.80 (0.19)    <.01        ---      
    b      Slope * diabetes            -0.01 (0.20)     .95    0.04 (0.06)     .53    0.00 (0.05)     .96    0.09 (0.19)     .64    1.48 (0.48)    <.01        ---      
    a      Var (Level)                  3.23 (0.44)    <.01    3.17 (0.43)    <.01    3.18 (0.43)    <.01    3.18 (0.43)    <.01    3.17 (0.44)    <.01    3.19(0.02)   
    a      Var (Slope)                  0.02 (0.01)     .04    0.02 (0.01)     .06    0.02 (0.01)     .06    0.02 (0.01)     .06    0.02 (0.01)     .06    0.02(0.00)   
    a      Var (Residual)               1.25 (0.12)    <.01    1.27 (0.12)    <.01    1.28 (0.13)    <.01    1.27 (0.12)    <.01    1.27 (0.12)    <.01    1.27(0.01)   
    b      Var (Level)                 30.62 (3.15)    <.01    0.54 (0.14)    <.01    0.54 (0.07)    <.01    7.79 (1.04)    <.01   66.95 (7.79)    <.01        ---      
    b      Var (Slope)                  0.19 (0.09)     .03    0.00 (0.00)     .43    0.00 (0.00)     .07    0.08 (0.03)     .01    0.39 (0.15)     .01        ---      
    b      Var (Residual)              10.76 (0.81)    <.01    1.16 (0.10)    <.01    0.61 (0.04)    <.01    4.35 (0.38)    <.01   27.89 (2.40)    <.01        ---      
    a      Covar (Level, Slope)        -0.04 (0.04)     .29   -0.03 (0.04)     .45   -0.03 (0.04)     .43   -0.04 (0.04)     .40   -0.04 (0.04)     .40    -0.04(0.01)  
    b      Covar (Level, Slope)        -0.99 (0.42)     .02   -0.02 (0.02)     .33   -0.04 (0.01)     .01   -0.38 (0.15)     .01   -1.93 (0.91)     .03        ---      
    \      Correlation of Levels                      0.311                -0.0023                 -0.056                  0.137                   0.18    0.11(0.15)   
    \      Correlation of Slopes                      0.764                -0.4851                  0.112                  0.362                   0.16    0.18(0.45)   
    \      Correlation of Residuals                   0.048                 0.0470                  0.045                  0.059                   0.12    0.06(0.03)   
    \      N                                            274                    275                    275                    272                    271   273.40(1.82)  
    \      occasions                                      5                      5                      5                      5                      5    5.00(0.00)   
    \      parameters                                    41                     41                     41                     41                     41    41.00(0.00)  
    \      LL                                        -4,176                 -3,263                 -3,021                 -3,672                 -4,202   -3,667(  531) 
    \      AIC                                        8,434                  6,608                  6,123                  7,426                  8,486   7,415(1,061)  
    \      BIC                                        8,582                  6,756                  6,271                  7,574                  8,633   7,563(1,061)  

##  block 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _block_


 process   label                                          a                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------
   ab      Covar (Levels)               4.29 (0.92)    <.01    3.20 (0.84)    <.01    3.10 (0.84)    <.01
   ab      Covar (Slopes)               0.05 (0.02)    <.01    0.05 (0.02)    <.01    0.05 (0.02)    <.01
   ab      Covar (Residuals)            0.17 (0.19)     .36    0.15 (0.20)     .45    0.18 (0.19)     .35
   er      Corr (Levels)                                ---                    ---    0.31 (0.08)    <.01
   er      Corr (Slopes)                                ---                    ---    0.76 (0.28)     .01
   er      Corr (Residuals)                             ---                    ---    0.05 (0.05)     .35
    a      Level                        8.82 (0.20)    <.01    8.98 (0.22)    <.01    9.18 (0.25)    <.01
    a      Slope                       -0.33 (0.03)    <.01   -0.34 (0.03)    <.01   -0.34 (0.04)    <.01
    a      Level * age                 -0.22 (0.04)    <.01   -0.15 (0.04)    <.01   -0.15 (0.04)    <.01
    a      Level * education                            ---    0.13 (0.07)     .06    0.17 (0.07)     .01
    a      Level * height                               ---    0.09 (0.02)    <.01    0.09 (0.02)    <.01
    a      Level * smoking                              ---                    ---   -0.52 (0.32)     .10
    a      Level * cardio                               ---                    ---   -0.17 (0.25)     .51
    a      Level * diabetes                             ---                    ---   -0.01 (0.53)     .99
    a      Slope * age                 -0.00 (0.01)     .71   -0.00 (0.01)     .59   -0.00 (0.01)     .61
    a      Slope * education                            ---   -0.01 (0.01)     .51   -0.01 (0.01)     .48
    a      Slope * height                               ---   -0.00 (0.00)     .51   -0.00 (0.00)     .48
    a      Slope * smoking                              ---                    ---    0.00 (0.05)     .98
    a      Slope * cardio                               ---                    ---    0.00 (0.04)     .99
    a      Slope * diabetes                             ---                    ---   -0.05 (0.10)     .64
    b      Level                       14.45 (0.58)    <.01   14.42 (0.66)    <.01   14.87 (0.75)    <.01
    b      Slope                       -0.29 (0.08)    <.01   -0.28 (0.09)    <.01   -0.23 (0.11)     .04
    b      Level * age                 -0.65 (0.14)    <.01   -0.55 (0.16)    <.01   -0.59 (0.14)    <.01
    b      Level * education                            ---    0.69 (0.21)    <.01    0.76 (0.19)    <.01
    b      Level * height                               ---   -0.01 (0.07)     .90   -0.01 (0.07)     .85
    b      Level * smoking                              ---                    ---   -1.33 (0.95)     .16
    b      Level * cardio                               ---                    ---   -0.18 (0.80)     .82
    b      Level * diabetes                             ---                    ---    1.14 (2.31)     .62
    b      Slope * age                  0.00 (0.02)     .85    0.01 (0.02)     .73    0.01 (0.02)     .58
    b      Slope * education                            ---   -0.02 (0.04)     .51   -0.03 (0.03)     .34
    b      Slope * height                               ---    0.01 (0.01)     .15    0.01 (0.01)     .17
    b      Slope * smoking                              ---                    ---    0.08 (0.14)     .59
    b      Slope * cardio                               ---                    ---   -0.19 (0.12)     .11
    b      Slope * diabetes                             ---                    ---   -0.01 (0.20)     .95
    a      Var (Level)                  3.79 (0.49)    <.01    3.27 (0.46)    <.01    3.23 (0.44)    <.01
    a      Var (Slope)                  0.02 (0.01)     .06    0.02 (0.01)     .04    0.02 (0.01)     .04
    a      Var (Residual)               1.28 (0.12)    <.01    1.27 (0.13)    <.01    1.25 (0.12)    <.01
    b      Var (Level)                 34.40 (3.28)    <.01   30.80 (3.29)    <.01   30.62 (3.15)    <.01
    b      Var (Slope)                  0.19 (0.07)     .01    0.19 (0.08)     .02    0.19 (0.09)     .03
    b      Var (Residual)              10.68 (0.79)    <.01   10.85 (0.83)    <.01   10.76 (0.81)    <.01
    a      Covar (Level, Slope)        -0.05 (0.04)     .23   -0.04 (0.04)     .30   -0.04 (0.04)     .29
    b      Covar (Level, Slope)        -1.03 (0.38)     .01   -0.95 (0.39)     .01   -0.99 (0.42)     .02
    \      Correlation of Levels                      0.376                  0.319                  0.311
    \      Correlation of Slopes                      0.860                  0.857                  0.764
    \      Correlation of Residuals                   0.047                  0.041                  0.048
    \      N                                            303                    275                    274
    \      occasions                                      5                      5                      5
    \      parameters                                    NA                     NA                     41
    \      LL                                        -4,429                 -4,187                 -4,176
    \      AIC                                        8,900                  8,431                  8,434
    \      BIC                                        8,978                  8,536                  8,582

##  digit_b 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _digit_b_


 process   label                                          a                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------
   ab      Covar (Levels)               0.05 (0.16)     .77    0.01 (0.14)     .92   -0.00 (0.13)     .98
   ab      Covar (Slopes)              -0.00 (0.00)     .30   -0.00 (0.00)     .35   -0.00 (0.00)     .40
   ab      Covar (Residuals)            0.07 (0.06)     .22    0.06 (0.06)     .32    0.06 (0.06)     .35
   er      Corr (Levels)                                ---                    ---   -0.00 (0.10)     .98
   er      Corr (Slopes)                                ---                    ---   -0.44 (0.64)     .49
   er      Corr (Residuals)                             ---                    ---    0.05 (0.05)     .35
    a      Level                        8.84 (0.20)    <.01    8.99 (0.22)    <.01    9.19 (0.25)    <.01
    a      Slope                       -0.33 (0.03)    <.01   -0.33 (0.03)    <.01   -0.34 (0.04)    <.01
    a      Level * age                 -0.22 (0.04)    <.01   -0.15 (0.04)    <.01   -0.16 (0.04)    <.01
    a      Level * education                            ---    0.14 (0.07)     .05    0.17 (0.07)     .01
    a      Level * height                               ---    0.09 (0.02)    <.01    0.09 (0.02)    <.01
    a      Level * smoking                              ---                    ---   -0.52 (0.31)     .10
    a      Level * cardio                               ---                    ---   -0.16 (0.25)     .53
    a      Level * diabetes                             ---                    ---   -0.01 (0.53)     .98
    a      Slope * age                 -0.00 (0.01)     .85   -0.00 (0.01)     .64   -0.00 (0.01)     .73
    a      Slope * education                            ---   -0.01 (0.01)     .43   -0.01 (0.01)     .38
    a      Slope * height                               ---   -0.00 (0.00)     .52   -0.00 (0.00)     .50
    a      Slope * smoking                              ---                    ---    0.01 (0.04)     .86
    a      Slope * cardio                               ---                    ---   -0.00 (0.04)     .96
    a      Slope * diabetes                             ---                    ---   -0.06 (0.10)     .58
    b      Level                        3.73 (0.10)    <.01    3.80 (0.12)    <.01    3.86 (0.13)    <.01
    b      Slope                       -0.08 (0.02)    <.01   -0.09 (0.02)    <.01   -0.09 (0.03)    <.01
    b      Level * age                 -0.07 (0.02)    <.01   -0.10 (0.03)    <.01   -0.10 (0.02)    <.01
    b      Level * education                            ---    0.09 (0.04)     .01    0.12 (0.04)    <.01
    b      Level * height                               ---   -0.00 (0.01)     .75   -0.00 (0.01)     .76
    b      Level * smoking                              ---                    ---   -0.32 (0.19)     .09
    b      Level * cardio                               ---                    ---    0.06 (0.14)     .69
    b      Level * diabetes                             ---                    ---   -0.09 (0.30)     .77
    b      Slope * age                  0.00 (0.00)     .45    0.01 (0.01)     .14    0.01 (0.01)     .12
    b      Slope * education                            ---    0.00 (0.01)     .44    0.00 (0.01)     .84
    b      Slope * height                               ---    0.00 (0.00)     .62    0.00 (0.00)     .62
    b      Slope * smoking                              ---                    ---    0.04 (0.03)     .14
    b      Slope * cardio                               ---                    ---   -0.03 (0.03)     .26
    b      Slope * diabetes                             ---                    ---    0.04 (0.06)     .53
    a      Var (Level)                  3.77 (0.48)    <.01    3.24 (0.46)    <.01    3.17 (0.43)    <.01
    a      Var (Slope)                  0.02 (0.01)     .06    0.02 (0.01)     .06    0.02 (0.01)     .06
    a      Var (Residual)               1.28 (0.12)    <.01    1.27 (0.13)    <.01    1.27 (0.12)    <.01
    b      Var (Level)                  0.61 (0.14)    <.01    0.55 (0.16)    <.01    0.54 (0.14)    <.01
    b      Var (Slope)                  0.00 (0.00)     .32    0.00 (0.00)     .46    0.00 (0.00)     .43
    b      Var (Residual)               1.14 (0.10)    <.01    1.16 (0.11)    <.01    1.16 (0.10)    <.01
    a      Covar (Level, Slope)        -0.05 (0.04)     .29   -0.04 (0.04)     .41   -0.03 (0.04)     .45
    b      Covar (Level, Slope)        -0.02 (0.02)     .34   -0.02 (0.02)     .33   -0.02 (0.02)     .33
    \      Correlation of Levels                      0.031                  0.011                -0.0023
    \      Correlation of Slopes                     -0.434                 -0.485                -0.4851
    \      Correlation of Residuals                   0.060                  0.049                 0.0470
    \      N                                            305                    276                    275
    \      occasions                                      5                      5                      5
    \      parameters                                    NA                     NA                     41
    \      LL                                        -3,481                 -3,271                 -3,263
    \      AIC                                        7,003                  6,600                  6,608
    \      BIC                                        7,081                  6,705                  6,756

##  digit_f 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _digit_f_


 process   label                                          a                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------
   ab      Covar (Levels)               0.07 (0.14)     .58   -0.07 (0.12)     .55   -0.07 (0.12)     .53
   ab      Covar (Slopes)               0.00 (0.00)     .72    0.00 (0.00)     .66    0.00 (0.00)     .70
   ab      Covar (Residuals)            0.05 (0.04)     .23    0.04 (0.04)     .35    0.04 (0.04)     .37
   er      Corr (Levels)                                ---                    ---   -0.06 (0.09)     .53
   er      Corr (Slopes)                                ---                    ---    0.13 (0.33)     .70
   er      Corr (Residuals)                             ---                    ---    0.04 (0.05)     .38
    a      Level                        8.83 (0.20)    <.01    8.99 (0.22)    <.01    9.19 (0.25)    <.01
    a      Slope                       -0.33 (0.03)    <.01   -0.33 (0.03)    <.01   -0.33 (0.04)    <.01
    a      Level * age                 -0.22 (0.04)    <.01   -0.15 (0.04)    <.01   -0.16 (0.04)    <.01
    a      Level * education                            ---    0.14 (0.07)     .05    0.17 (0.07)     .01
    a      Level * height                               ---    0.09 (0.02)    <.01    0.09 (0.02)    <.01
    a      Level * smoking                              ---                    ---   -0.51 (0.32)     .10
    a      Level * cardio                               ---                    ---   -0.16 (0.25)     .52
    a      Level * diabetes                             ---                    ---   -0.03 (0.53)     .95
    a      Slope * age                 -0.00 (0.01)     .79   -0.00 (0.01)     .64   -0.00 (0.01)     .72
    a      Slope * education                            ---   -0.01 (0.01)     .40   -0.01 (0.01)     .36
    a      Slope * height                               ---   -0.00 (0.00)     .54   -0.00 (0.00)     .51
    a      Slope * smoking                              ---                    ---    0.01 (0.04)     .87
    a      Slope * cardio                               ---                    ---    0.00 (0.04)     .99
    a      Slope * diabetes                             ---                    ---   -0.05 (0.10)     .63
    b      Level                        5.60 (0.10)    <.01    5.66 (0.11)    <.01    5.68 (0.12)    <.01
    b      Slope                       -0.06 (0.02)    <.01   -0.06 (0.02)    <.01   -0.08 (0.02)    <.01
    b      Level * age                 -0.07 (0.02)    <.01   -0.08 (0.02)    <.01   -0.08 (0.02)    <.01
    b      Level * education                            ---    0.13 (0.03)    <.01    0.14 (0.03)    <.01
    b      Level * height                               ---    0.01 (0.01)     .47    0.01 (0.01)     .43
    b      Level * smoking                              ---                    ---   -0.15 (0.14)     .29
    b      Level * cardio                               ---                    ---    0.05 (0.12)     .66
    b      Level * diabetes                             ---                    ---    0.08 (0.26)     .75
    b      Slope * age                  0.00 (0.00)     .73    0.00 (0.00)     .66    0.00 (0.00)     .52
    b      Slope * education                            ---   -0.01 (0.00)     .07   -0.01 (0.00)     .02
    b      Slope * height                               ---   -0.00 (0.00)     .32   -0.00 (0.00)     .29
    b      Slope * smoking                              ---                    ---    0.05 (0.03)     .09
    b      Slope * cardio                               ---                    ---   -0.00 (0.02)     .85
    b      Slope * diabetes                             ---                    ---    0.00 (0.05)     .96
    a      Var (Level)                  3.77 (0.48)    <.01    3.24 (0.46)    <.01    3.18 (0.43)    <.01
    a      Var (Slope)                  0.02 (0.01)     .07    0.02 (0.01)     .06    0.02 (0.01)     .06
    a      Var (Residual)               1.28 (0.12)    <.01    1.28 (0.13)    <.01    1.28 (0.13)    <.01
    b      Var (Level)                  0.72 (0.10)    <.01    0.54 (0.07)    <.01    0.54 (0.07)    <.01
    b      Var (Slope)                  0.01 (0.00)     .02    0.01 (0.00)     .07    0.00 (0.00)     .07
    b      Var (Residual)               0.62 (0.05)    <.01    0.61 (0.05)    <.01    0.61 (0.04)    <.01
    a      Covar (Level, Slope)        -0.05 (0.04)     .29   -0.04 (0.04)     .39   -0.03 (0.04)     .43
    b      Covar (Level, Slope)        -0.05 (0.01)    <.01   -0.04 (0.01)     .01   -0.04 (0.01)     .01
    \      Correlation of Levels                      0.045                 -0.052                 -0.056
    \      Correlation of Slopes                      0.094                  0.099                  0.112
    \      Correlation of Residuals                   0.060                  0.045                  0.045
    \      N                                            306                    276                    275
    \      occasions                                      5                      5                      5
    \      parameters                                    NA                     NA                     41
    \      LL                                        -3,252                 -3,028                 -3,021
    \      AIC                                        6,547                  6,114                  6,123
    \      BIC                                        6,625                  6,219                  6,271

##  fig_logic 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _fig_logic_


 process   label                                          a                    aeh
---------  -------------------------  ---------------------  ---------------------
   ab      Covar (Levels)               2.13 (0.51)    <.01    1.59 (0.48)    <.01
   ab      Covar (Slopes)               0.02 (0.01)     .11    0.02 (0.01)     .09
   ab      Covar (Residuals)            0.27 (0.16)     .10    0.22 (0.17)     .20
   er      Corr (Levels)                                ---                    ---
   er      Corr (Slopes)                                ---                    ---
   er      Corr (Residuals)                             ---                    ---
    a      Level                        8.84 (0.20)    <.01    8.99 (0.22)    <.01
    a      Slope                       -0.33 (0.03)    <.01   -0.33 (0.03)    <.01
    a      Level * age                 -0.22 (0.04)    <.01   -0.15 (0.04)    <.01
    a      Level * education                            ---    0.14 (0.07)     .05
    a      Level * height                               ---    0.09 (0.02)    <.01
    a      Level * smoking                              ---                    ---
    a      Level * cardio                               ---                    ---
    a      Level * diabetes                             ---                    ---
    a      Slope * age                 -0.00 (0.01)     .76   -0.00 (0.01)     .61
    a      Slope * education                            ---   -0.01 (0.01)     .46
    a      Slope * height                               ---   -0.00 (0.00)     .51
    a      Slope * smoking                              ---                    ---
    a      Slope * cardio                               ---                    ---
    a      Slope * diabetes                             ---                    ---
    b      Level                       16.66 (0.39)    <.01   16.73 (0.40)    <.01
    b      Slope                       -0.09 (0.07)     .20   -0.08 (0.08)     .30
    b      Level * age                 -0.28 (0.09)    <.01   -0.27 (0.10)    <.01
    b      Level * education                            ---    0.22 (0.12)     .07
    b      Level * height                               ---   -0.01 (0.05)     .76
    b      Level * smoking                              ---                    ---
    b      Level * cardio                               ---                    ---
    b      Level * diabetes                             ---                    ---
    b      Slope * age                 -0.00 (0.02)     .98   -0.00 (0.02)     .96
    b      Slope * education                            ---   -0.01 (0.03)     .63
    b      Slope * height                               ---    0.00 (0.01)     .57
    b      Slope * smoking                              ---                    ---
    b      Slope * cardio                               ---                    ---
    b      Slope * diabetes                             ---                    ---
    a      Var (Level)                  3.77 (0.48)    <.01    3.24 (0.46)    <.01
    a      Var (Slope)                  0.02 (0.01)     .06    0.02 (0.01)     .05
    a      Var (Residual)               1.28 (0.12)    <.01    1.27 (0.13)    <.01
    b      Var (Level)                  8.84 (1.37)    <.01    7.95 (1.21)    <.01
    b      Var (Slope)                  0.09 (0.05)     .04    0.10 (0.05)     .03
    b      Var (Residual)               7.95 (0.62)    <.01    7.95 (0.59)    <.01
    a      Covar (Level, Slope)        -0.05 (0.04)     .28   -0.04 (0.04)     .38
    b      Covar (Level, Slope)        -0.41 (0.20)     .04   -0.41 (0.19)     .03
    \      Correlation of Levels                      0.370                  0.314
    \      Correlation of Slopes                      0.553                  0.557
    \      Correlation of Residuals                   0.085                  0.071
    \      N                                            302                    274
    \      occasions                                      5                      5
    \      parameters                                    NA                     NA
    \      LL                                        -3,906                 -3,704
    \      AIC                                        7,855                  7,465
    \      BIC                                        7,933                  7,570

##  mir 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _mir_


 process   label                                          a                    aeh
---------  -------------------------  ---------------------  ---------------------
   ab      Covar (Levels)               0.65 (0.28)     .02    0.44 (0.23)     .05
   ab      Covar (Slopes)               0.03 (0.01)    <.01    0.03 (0.01)    <.01
   ab      Covar (Residuals)            0.07 (0.07)     .36    0.07 (0.07)     .33
   er      Corr (Levels)                                ---                    ---
   er      Corr (Slopes)                                ---                    ---
   er      Corr (Residuals)                             ---                    ---
    a      Level                        8.83 (0.20)    <.01    8.99 (0.22)    <.01
    a      Slope                       -0.33 (0.03)    <.01   -0.33 (0.03)    <.01
    a      Level * age                 -0.22 (0.04)    <.01   -0.15 (0.04)    <.01
    a      Level * education                            ---    0.14 (0.07)     .06
    a      Level * height                               ---    0.09 (0.02)    <.01
    a      Level * smoking                              ---                    ---
    a      Level * cardio                               ---                    ---
    a      Level * diabetes                             ---                    ---
    a      Slope * age                 -0.00 (0.01)     .54   -0.00 (0.01)     .46
    a      Slope * education                            ---   -0.01 (0.01)     .49
    a      Slope * height                               ---   -0.00 (0.00)     .58
    a      Slope * smoking                              ---                    ---
    a      Slope * cardio                               ---                    ---
    a      Slope * diabetes                             ---                    ---
    b      Level                        7.63 (0.19)    <.01    7.79 (0.18)    <.01
    b      Slope                       -0.06 (0.05)     .18   -0.06 (0.05)     .23
    b      Level * age                 -0.16 (0.05)    <.01   -0.15 (0.05)    <.01
    b      Level * education                            ---    0.03 (0.07)     .69
    b      Level * height                               ---   -0.01 (0.02)     .48
    b      Level * smoking                              ---                    ---
    b      Level * cardio                               ---                    ---
    b      Level * diabetes                             ---                    ---
    b      Slope * age                 -0.02 (0.01)     .10   -0.02 (0.01)     .17
    b      Slope * education                            ---   -0.00 (0.02)     .78
    b      Slope * height                               ---    0.00 (0.01)     .47
    b      Slope * smoking                              ---                    ---
    b      Slope * cardio                               ---                    ---
    b      Slope * diabetes                             ---                    ---
    a      Var (Level)                  3.79 (0.49)    <.01    3.26 (0.46)    <.01
    a      Var (Slope)                  0.02 (0.01)     .04    0.02 (0.01)     .03
    a      Var (Residual)               1.27 (0.12)    <.01    1.26 (0.12)    <.01
    b      Var (Level)                  3.15 (0.53)    <.01    2.41 (0.48)    <.01
    b      Var (Slope)                  0.09 (0.02)    <.01    0.09 (0.02)    <.01
    b      Var (Residual)               1.89 (0.16)    <.01    1.85 (0.17)    <.01
    a      Covar (Level, Slope)        -0.06 (0.04)     .20   -0.05 (0.04)     .24
    b      Covar (Level, Slope)        -0.01 (0.07)     .87    0.00 (0.07)     .99
    \      Correlation of Levels                      0.189                  0.157
    \      Correlation of Slopes                      0.629                  0.595
    \      Correlation of Residuals                   0.044                  0.045
    \      N                                            303                    273
    \      occasions                                      5                      5
    \      parameters                                    NA                     NA
    \      LL                                        -3,735                 -3,501
    \      AIC                                        7,511                  7,060
    \      BIC                                        7,589                  7,164

##  prose_im 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _prose_im_


 process   label                                          a                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------
   ab      Covar (Levels)               1.20 (0.45)     .01    0.65 (0.40)     .10    0.68 (0.38)     .08
   ab      Covar (Slopes)               0.01 (0.01)     .37    0.01 (0.01)     .34    0.01 (0.01)     .31
   ab      Covar (Residuals)            0.17 (0.16)     .28    0.13 (0.16)     .41    0.14 (0.16)     .39
   er      Corr (Levels)                                ---                    ---    0.14 (0.07)     .07
   er      Corr (Slopes)                                ---                    ---    0.37 (0.35)     .29
   er      Corr (Residuals)                             ---                    ---    0.06 (0.07)     .38
    a      Level                        8.83 (0.20)    <.01    8.99 (0.22)    <.01    9.19 (0.25)    <.01
    a      Slope                       -0.33 (0.03)    <.01   -0.34 (0.03)    <.01   -0.34 (0.04)    <.01
    a      Level * age                 -0.22 (0.04)    <.01   -0.15 (0.04)    <.01   -0.15 (0.04)    <.01
    a      Level * education                            ---    0.14 (0.07)     .05    0.17 (0.07)     .01
    a      Level * height                               ---    0.09 (0.02)    <.01    0.09 (0.02)    <.01
    a      Level * smoking                              ---                    ---   -0.53 (0.32)     .10
    a      Level * cardio                               ---                    ---   -0.17 (0.25)     .51
    a      Level * diabetes                             ---                    ---   -0.01 (0.53)     .99
    a      Slope * age                 -0.00 (0.01)     .70   -0.00 (0.01)     .54   -0.00 (0.01)     .61
    a      Slope * education                            ---   -0.01 (0.01)     .42   -0.01 (0.01)     .37
    a      Slope * height                               ---   -0.00 (0.00)     .52   -0.00 (0.00)     .50
    a      Slope * smoking                              ---                    ---    0.01 (0.04)     .86
    a      Slope * cardio                               ---                    ---    0.00 (0.04)     .98
    a      Slope * diabetes                             ---                    ---   -0.06 (0.10)     .58
    b      Level                       11.13 (0.31)    <.01   11.29 (0.34)    <.01   11.14 (0.40)    <.01
    b      Slope                       -0.12 (0.06)     .05   -0.10 (0.05)     .06   -0.04 (0.07)     .58
    b      Level * age                 -0.28 (0.08)    <.01   -0.28 (0.08)    <.01   -0.25 (0.08)    <.01
    b      Level * education                            ---    0.47 (0.10)    <.01    0.46 (0.10)    <.01
    b      Level * height                               ---    0.01 (0.04)     .77    0.01 (0.04)     .76
    b      Level * smoking                              ---                    ---    0.26 (0.49)     .59
    b      Level * cardio                               ---                    ---    0.24 (0.43)     .58
    b      Level * diabetes                             ---                    ---   -1.78 (1.14)     .12
    b      Slope * age                  0.02 (0.02)     .21    0.02 (0.01)     .10    0.02 (0.02)     .21
    b      Slope * education                            ---   -0.05 (0.02)     .02   -0.04 (0.02)     .04
    b      Slope * height                               ---    0.01 (0.01)     .44    0.01 (0.01)     .45
    b      Slope * smoking                              ---                    ---   -0.12 (0.10)     .20
    b      Slope * cardio                               ---                    ---   -0.07 (0.09)     .40
    b      Slope * diabetes                             ---                    ---    0.09 (0.19)     .64
    a      Var (Level)                  3.78 (0.48)    <.01    3.24 (0.46)    <.01    3.18 (0.43)    <.01
    a      Var (Slope)                  0.02 (0.01)     .06    0.02 (0.01)     .05    0.02 (0.01)     .06
    a      Var (Residual)               1.28 (0.12)    <.01    1.27 (0.13)    <.01    1.27 (0.12)    <.01
    b      Var (Level)                  9.66 (1.17)    <.01    7.97 (1.02)    <.01    7.79 (1.04)    <.01
    b      Var (Slope)                  0.10 (0.04)     .01    0.08 (0.03)     .01    0.08 (0.03)     .01
    b      Var (Residual)               4.39 (0.38)    <.01    4.35 (0.38)    <.01    4.35 (0.38)    <.01
    a      Covar (Level, Slope)        -0.05 (0.04)     .26   -0.04 (0.04)     .36   -0.04 (0.04)     .40
    b      Covar (Level, Slope)        -0.49 (0.17)    <.01   -0.39 (0.14)    <.01   -0.38 (0.15)     .01
    \      Correlation of Levels                      0.198                  0.128                  0.137
    \      Correlation of Slopes                      0.294                  0.353                  0.362
    \      Correlation of Residuals                   0.071                  0.056                  0.059
    \      N                                            302                    273                    272
    \      occasions                                      5                      5                      5
    \      parameters                                    NA                     NA                     41
    \      LL                                        -3,931                 -3,683                 -3,672
    \      AIC                                        7,904                  7,423                  7,426
    \      BIC                                        7,982                  7,528                  7,574

##  symbol 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _symbol_


 process   label                                          a                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------
   ab      Covar (Levels)               4.86 (1.50)    <.01    2.38 (1.29)     .06    2.62 (1.18)     .03
   ab      Covar (Slopes)               0.01 (0.03)     .75    0.01 (0.02)     .69    0.01 (0.02)     .59
   ab      Covar (Residuals)            0.75 (0.32)     .02    0.71 (0.33)     .03    0.72 (0.32)     .02
   er      Corr (Levels)                                ---                    ---    0.18 (0.08)     .02
   er      Corr (Slopes)                                ---                    ---    0.17 (0.31)     .58
   er      Corr (Residuals)                             ---                    ---    0.12 (0.05)     .02
    a      Level                        8.83 (0.20)    <.01    9.00 (0.22)    <.01    9.19 (0.25)    <.01
    a      Slope                       -0.33 (0.03)    <.01   -0.34 (0.03)    <.01   -0.34 (0.04)    <.01
    a      Level * age                 -0.22 (0.04)    <.01   -0.15 (0.04)    <.01   -0.16 (0.04)    <.01
    a      Level * education                            ---    0.14 (0.07)     .05    0.17 (0.07)     .01
    a      Level * height                               ---    0.09 (0.02)    <.01    0.09 (0.02)    <.01
    a      Level * smoking                              ---                    ---   -0.51 (0.32)     .10
    a      Level * cardio                               ---                    ---   -0.16 (0.25)     .53
    a      Level * diabetes                             ---                    ---   -0.01 (0.53)     .99
    a      Slope * age                 -0.00 (0.01)     .73   -0.00 (0.01)     .63   -0.00 (0.01)     .68
    a      Slope * education                            ---   -0.01 (0.01)     .39   -0.01 (0.01)     .35
    a      Slope * height                               ---   -0.00 (0.00)     .60   -0.00 (0.00)     .57
    a      Slope * smoking                              ---                    ---    0.00 (0.05)     .97
    a      Slope * cardio                               ---                    ---   -0.00 (0.04)     .90
    a      Slope * diabetes                             ---                    ---   -0.04 (0.10)     .66
    b      Level                       28.59 (1.01)    <.01   28.70 (1.08)    <.01   28.57 (1.19)    <.01
    b      Slope                       -0.51 (0.16)    <.01   -0.52 (0.16)    <.01   -0.13 (0.19)     .51
    b      Level * age                 -0.98 (0.25)    <.01   -0.82 (0.28)    <.01   -0.82 (0.27)    <.01
    b      Level * education                            ---    1.58 (0.36)    <.01    1.68 (0.37)    <.01
    b      Level * height                               ---    0.07 (0.12)     .53    0.08 (0.11)     .50
    b      Level * smoking                              ---                    ---   -0.56 (1.69)     .74
    b      Level * cardio                               ---                    ---    0.90 (1.27)     .48
    b      Level * diabetes                             ---                    ---   -2.89 (3.13)     .36
    b      Slope * age                  0.00 (0.04)     .94    0.01 (0.04)     .73    0.00 (0.04)     .94
    b      Slope * education                            ---   -0.02 (0.06)     .71   -0.04 (0.06)     .53
    b      Slope * height                               ---    0.01 (0.02)     .64    0.01 (0.02)     .49
    b      Slope * smoking                              ---                    ---   -0.34 (0.28)     .22
    b      Slope * cardio                               ---                    ---   -0.80 (0.19)    <.01
    b      Slope * diabetes                             ---                    ---    1.48 (0.48)    <.01
    a      Var (Level)                  3.77 (0.48)    <.01    3.23 (0.46)    <.01    3.17 (0.44)    <.01
    a      Var (Slope)                  0.02 (0.01)     .07    0.02 (0.01)     .06    0.02 (0.01)     .06
    a      Var (Residual)               1.28 (0.12)    <.01    1.28 (0.13)    <.01    1.27 (0.12)    <.01
    b      Var (Level)                 83.77 (9.06)    <.01   67.01 (7.93)    <.01   66.95 (7.79)    <.01
    b      Var (Slope)                  0.58 (0.16)    <.01    0.60 (0.16)    <.01    0.39 (0.15)     .01
    b      Var (Residual)              28.30 (2.43)    <.01   28.05 (2.38)    <.01   27.89 (2.40)    <.01
    a      Covar (Level, Slope)        -0.05 (0.04)     .28   -0.04 (0.04)     .35   -0.04 (0.04)     .40
    b      Covar (Level, Slope)        -2.66 (0.92)    <.01   -2.40 (0.85)    <.01   -1.93 (0.91)     .03
    \      Correlation of Levels                      0.273                  0.162                   0.18
    \      Correlation of Slopes                      0.083                  0.099                   0.16
    \      Correlation of Residuals                   0.124                  0.119                   0.12
    \      N                                            299                    272                    271
    \      occasions                                      5                      5                      5
    \      parameters                                    NA                     NA                     41
    \      LL                                        -4,458                 -4,220                 -4,202
    \      AIC                                        8,958                  8,499                  8,486
    \      BIC                                        9,036                  8,604                  8,633

## Summary 

 Study = _OCTO_; Gender = _female_; Process (a) = _grip_

 Computed correlations:

 

label                    process_b      a     aeh   aehplus
----------------------  ----------  -----  ------  --------
Correlation of Levels        block   0.38    0.32      0.31
Correlation of Levels      digit_b   0.03    0.01     -0.00
Correlation of Levels      digit_f   0.05   -0.05     -0.06
Correlation of Levels    fig_logic   0.37    0.31         .
Correlation of Levels          mir   0.19    0.16         .
Correlation of Levels     prose_im   0.20    0.13      0.14
Correlation of Levels       symbol   0.27    0.16      0.18




label                    process_b       a     aeh   aehplus
----------------------  ----------  ------  ------  --------
Correlation of Slopes        block    0.86    0.86      0.76
Correlation of Slopes      digit_b   -0.43   -0.49     -0.49
Correlation of Slopes      digit_f    0.09    0.10      0.11
Correlation of Slopes    fig_logic    0.55    0.56         .
Correlation of Slopes          mir    0.63    0.59         .
Correlation of Slopes     prose_im    0.29    0.35      0.36
Correlation of Slopes       symbol    0.08    0.10      0.16




label                       process_b      a    aeh   aehplus
-------------------------  ----------  -----  -----  --------
Correlation of Residuals        block   0.05   0.04      0.05
Correlation of Residuals      digit_b   0.06   0.05      0.05
Correlation of Residuals      digit_f   0.06   0.05      0.05
Correlation of Residuals    fig_logic   0.08   0.07         .
Correlation of Residuals          mir   0.04   0.05         .
Correlation of Residuals     prose_im   0.07   0.06      0.06
Correlation of Residuals       symbol   0.12   0.12      0.12



P-values for corresponding covariances: 

 

label                   process_b      a    aeh   aehplus
---------------------  ----------  -----  -----  --------
Covariance of Levels        block   0.00   0.00      0.00
Covariance of Levels      digit_b   0.77   0.92      0.98
Covariance of Levels      digit_f   0.58   0.55      0.53
Covariance of Levels    fig_logic   0.00   0.00         .
Covariance of Levels          mir   0.02   0.05         .
Covariance of Levels     prose_im   0.01   0.10      0.08
Covariance of Levels       symbol   0.00   0.06      0.03




label                   process_b      a    aeh   aehplus
---------------------  ----------  -----  -----  --------
Covariance of Slopes        block   0.00   0.00      0.00
Covariance of Slopes      digit_b   0.30   0.35      0.40
Covariance of Slopes      digit_f   0.72   0.66      0.70
Covariance of Slopes    fig_logic   0.11   0.09         .
Covariance of Slopes          mir   0.00   0.00         .
Covariance of Slopes     prose_im   0.37   0.34      0.31
Covariance of Slopes       symbol   0.75   0.69      0.59




label                       process_b      a    aeh   aehplus
-------------------------  ----------  -----  -----  --------
Covariance of  Residuals        block   0.36   0.45      0.35
Covariance of  Residuals      digit_b   0.22   0.32      0.35
Covariance of  Residuals      digit_f   0.23   0.35      0.37
Covariance of  Residuals    fig_logic   0.10   0.20         .
Covariance of  Residuals          mir   0.36   0.33         .
Covariance of  Residuals     prose_im   0.28   0.41      0.39
Covariance of  Residuals       symbol   0.02   0.03      0.02



# male 

 Gender = _male_; Model type: _aehplus_;  Process (a) = _grip_; Process (b): *block*, *digit_b*, *digit_f*, *fig_logic*, *mir*, *prose_im*, *symbol*


 process   label                                      block                digit_b                digit_f               prose_im                  symbol     mean(sd)   
---------  -------------------------  ---------------------  ---------------------  ---------------------  ---------------------  ----------------------  --------------
   ab      Covar (Levels)               3.62 (1.22)    <.01    0.12 (0.23)     .60   -0.29 (0.26)     .27    2.38 (0.78)    <.01     4.32 (1.88)     .02       ---      
   ab      Covar (Slopes)              -0.01 (0.03)     .74    0.00 (0.01)     .68    0.00 (0.01)     .50   -0.01 (0.05)     .79    -0.01 (0.06)     .85       ---      
   ab      Covar (Residuals)            0.52 (0.24)     .03   -0.16 (0.10)     .10   -0.07 (0.06)     .30    0.35 (0.25)     .16     0.76 (0.46)     .09       ---      
   er      Corr (Levels)                0.30 (0.09)    <.01    0.06 (0.11)     .60   -0.15 (0.13)     .24    0.35 (0.10)    <.01     0.24 (0.10)     .01       ---      
   er      Corr (Slopes)               -0.25 (1.03)     .80    0.20 (0.49)     .69    0.24 (0.36)     .51   -0.38 (2.68)     .89    -0.08 (0.44)     .86       ---      
   er      Corr (Residuals)             0.14 (0.06)     .02   -0.13 (0.07)     .08   -0.07 (0.07)     .30    0.14 (0.09)     .14     0.15 (0.09)     .08       ---      
    a      Level                       10.78 (0.60)    <.01   10.78 (0.60)    <.01   10.77 (0.60)    <.01   10.78 (0.60)    <.01    10.79 (0.60)    <.01   10.78(0.01)  
    a      Slope                       -0.14 (0.11)     .19   -0.13 (0.10)     .20   -0.11 (0.10)     .25   -0.13 (0.11)     .22    -0.14 (0.10)     .19   -0.13(0.01)  
    a      Level * age                 -0.17 (0.07)     .01   -0.17 (0.07)     .01   -0.16 (0.07)     .01   -0.16 (0.07)     .01    -0.16 (0.07)     .01   -0.16(0.00)  
    a      Level * education           -0.14 (0.05)     .01   -0.14 (0.05)     .01   -0.14 (0.05)     .01   -0.13 (0.05)     .01    -0.13 (0.05)     .01   -0.13(0.00)  
    a      Level * height               0.11 (0.04)    <.01    0.11 (0.04)    <.01    0.11 (0.04)    <.01    0.11 (0.04)    <.01     0.11 (0.04)    <.01    0.11(0.00)  
    a      Level * smoking              0.11 (0.43)     .80    0.10 (0.43)     .81    0.10 (0.43)     .81    0.08 (0.43)     .84     0.09 (0.43)     .84    0.10(0.01)  
    a      Level * cardio              -0.40 (0.40)     .32   -0.42 (0.40)     .30   -0.42 (0.40)     .29   -0.41 (0.40)     .31    -0.41 (0.40)     .31   -0.41(0.01)  
    a      Level * diabetes            -1.60 (0.69)     .02   -1.54 (0.70)     .03   -1.55 (0.69)     .02   -1.58 (0.69)     .02    -1.56 (0.69)     .02   -1.57(0.03)  
    a      Slope * age                 -0.05 (0.02)     .01   -0.05 (0.02)     .01   -0.05 (0.02)     .01   -0.06 (0.02)     .01    -0.05 (0.02)     .01   -0.05(0.00)  
    a      Slope * education           -0.00 (0.01)     .82    0.00 (0.01)     .95    0.00 (0.01)     .95   -0.00 (0.01)     .78    -0.00 (0.01)     .79   -0.00(0.00)  
    a      Slope * height              -0.01 (0.01)     .07   -0.01 (0.00)     .07   -0.01 (0.01)     .05   -0.01 (0.01)     .10    -0.01 (0.01)     .06   -0.01(0.00)  
    a      Slope * smoking              0.04 (0.09)     .65    0.03 (0.08)     .73    0.03 (0.09)     .72    0.03 (0.09)     .73     0.05 (0.09)     .61    0.04(0.01)  
    a      Slope * cardio              -0.23 (0.08)    <.01   -0.22 (0.07)    <.01   -0.23 (0.07)    <.01   -0.23 (0.07)    <.01    -0.23 (0.08)    <.01   -0.23(0.00)  
    a      Slope * diabetes            -0.06 (0.12)     .64   -0.09 (0.13)     .47   -0.08 (0.13)     .55   -0.04 (0.13)     .75    -0.06 (0.12)     .60   -0.07(0.02)  
    b      Level                       14.93 (1.82)    <.01    3.95 (0.31)    <.01    5.89 (0.32)    <.01   10.69 (0.97)    <.01    28.40 (2.81)    <.01       ---      
    b      Slope                       -0.37 (0.21)     .09   -0.14 (0.09)     .11   -0.06 (0.06)     .35    0.06 (0.22)     .79    -0.30 (0.43)     .49       ---      
    b      Level * age                 -0.48 (0.22)     .03   -0.08 (0.04)     .08   -0.03 (0.03)     .40   -0.26 (0.12)     .03    -0.66 (0.38)     .08       ---      
    b      Level * education            0.63 (0.19)    <.01    0.12 (0.03)    <.01    0.07 (0.02)     .01    0.43 (0.09)    <.01     1.71 (0.24)    <.01       ---      
    b      Level * height               0.15 (0.09)     .09    0.00 (0.02)     .90    0.01 (0.01)     .41    0.01 (0.06)     .91     0.24 (0.12)     .05       ---      
    b      Level * smoking             -3.70 (1.45)     .01   -0.19 (0.27)     .49   -0.47 (0.23)     .04   -0.62 (0.80)     .43    -5.97 (2.29)     .01       ---      
    b      Level * cardio              -0.55 (1.12)     .63   -0.55 (0.24)     .02   -0.02 (0.19)     .93   -0.44 (0.69)     .52    -1.36 (1.79)     .45       ---      
    b      Level * diabetes            -2.55 (1.31)     .05   -0.30 (0.43)     .47   -0.02 (0.26)     .92    0.70 (0.94)     .46    -2.03 (2.23)     .36       ---      
    b      Slope * age                  0.04 (0.04)     .24    0.00 (0.01)     .98   -0.01 (0.01)     .10   -0.01 (0.05)     .87     0.03 (0.07)     .67       ---      
    b      Slope * education            0.03 (0.04)     .55   -0.00 (0.01)     .68    0.01 (0.01)     .24   -0.01 (0.01)     .54     0.02 (0.05)     .61       ---      
    b      Slope * height              -0.01 (0.01)     .57    0.01 (0.00)     .11   -0.00 (0.00)     .14    0.01 (0.01)     .36    -0.02 (0.02)     .33       ---      
    b      Slope * smoking              0.02 (0.15)     .88   -0.04 (0.08)     .66    0.07 (0.05)     .17   -0.15 (0.20)     .45     0.17 (0.30)     .58       ---      
    b      Slope * cardio              -0.14 (0.17)     .42    0.08 (0.06)     .15   -0.03 (0.04)     .52   -0.19 (0.12)     .12    -0.17 (0.27)     .54       ---      
    b      Slope * diabetes             0.25 (0.27)     .35   -0.03 (0.12)     .80    0.00 (0.06)     .99   -0.18 (0.25)     .47    -0.14 (0.47)     .77       ---      
    a      Var (Level)                  4.44 (0.68)    <.01    4.41 (0.68)    <.01    4.41 (0.68)    <.01    4.45 (0.68)    <.01     4.45 (0.68)    <.01    4.43(0.02)  
    a      Var (Slope)                  0.04 (0.02)     .08    0.04 (0.02)     .08    0.04 (0.02)     .08    0.04 (0.02)     .07     0.04 (0.03)     .09    0.04(0.00)  
    a      Var (Residual)               1.54 (0.20)    <.01    1.57 (0.21)    <.01    1.56 (0.20)    <.01    1.56 (0.20)    <.01     1.54 (0.20)    <.01    1.56(0.01)  
    b      Var (Level)                 32.24 (5.01)    <.01    1.04 (0.27)    <.01    0.82 (0.17)    <.01   10.25 (2.47)    <.01   74.08 (10.95)    <.01       ---      
    b      Var (Slope)                  0.05 (0.17)     .78    0.02 (0.01)     .21    0.01 (0.00)     .02    0.02 (0.20)     .90     0.44 (0.26)     .09       ---      
    b      Var (Residual)               9.20 (1.27)    <.01    0.96 (0.14)    <.01    0.51 (0.08)    <.01    4.07 (0.80)    <.01    17.29 (2.31)    <.01       ---      
    a      Covar (Level, Slope)        -0.14 (0.10)     .17   -0.13 (0.10)     .17   -0.13 (0.10)     .16   -0.16 (0.10)     .12    -0.15 (0.10)     .14   -0.14(0.01)  
    b      Covar (Level, Slope)         0.13 (0.50)     .80   -0.08 (0.05)     .08   -0.07 (0.03)     .01   -0.21 (0.72)     .77    -2.78 (1.13)     .01       ---      
    \      Correlation of Levels                       0.30                  0.056                 -0.152                   0.35                   0.238    0.16(0.21)  
    \      Correlation of Slopes                      -0.25                  0.191                  0.231                  -0.37                  -0.079   -0.05(0.26)  
    \      Correlation of Residuals                    0.14                 -0.128                 -0.074                   0.14                   0.148    0.04(0.13)  
    \      N                                            139                    139                    139                    139                     138   138.80(0.45) 
    \      occasions                                      5                      5                      5                      5                       5    5.00(0.00)  
    \      parameters                                    41                     41                     41                     41                      41   41.00(0.00)  
    \      LL                                        -1,989                 -1,541                 -1,429                 -1,681                  -2,017   -1,731(264)  
    \      AIC                                        4,060                  3,163                  2,940                  3,444                   4,117    3,545(528)  
    \      BIC                                        4,180                  3,283                  3,060                  3,564                   4,237    3,665(528)  

##  block 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _block_


 process   label                                          a                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------
   ab      Covar (Levels)               6.10 (1.74)    <.01    3.99 (1.22)    <.01    3.62 (1.22)    <.01
   ab      Covar (Slopes)              -0.02 (0.03)     .49   -0.01 (0.04)     .77   -0.01 (0.03)     .74
   ab      Covar (Residuals)            0.49 (0.23)     .03    0.51 (0.27)     .06    0.52 (0.24)     .03
   er      Corr (Levels)                                ---                    ---    0.30 (0.09)    <.01
   er      Corr (Slopes)                                ---                    ---   -0.25 (1.03)     .80
   er      Corr (Residuals)                             ---                    ---    0.14 (0.06)     .02
    a      Level                       11.28 (0.36)    <.01   11.78 (0.34)    <.01   10.78 (0.60)    <.01
    a      Slope                       -0.36 (0.05)    <.01   -0.37 (0.05)    <.01   -0.14 (0.11)     .19
    a      Level * age                 -0.18 (0.08)     .02   -0.16 (0.07)     .03   -0.17 (0.07)     .01
    a      Level * education                            ---   -0.11 (0.05)     .02   -0.14 (0.05)     .01
    a      Level * height                               ---    0.11 (0.04)    <.01    0.11 (0.04)    <.01
    a      Level * smoking                              ---                    ---    0.11 (0.43)     .80
    a      Level * cardio                               ---                    ---   -0.40 (0.40)     .32
    a      Level * diabetes                             ---                    ---   -1.60 (0.69)     .02
    a      Slope * age                 -0.04 (0.02)     .04   -0.04 (0.02)     .08   -0.05 (0.02)     .01
    a      Slope * education                            ---    0.00 (0.01)     .74   -0.00 (0.01)     .82
    a      Slope * height                               ---   -0.01 (0.01)     .19   -0.01 (0.01)     .07
    a      Slope * smoking                              ---                    ---    0.04 (0.09)     .65
    a      Slope * cardio                               ---                    ---   -0.23 (0.08)    <.01
    a      Slope * diabetes                             ---                    ---   -0.06 (0.12)     .64
    b      Level                       13.24 (0.88)    <.01   13.49 (0.91)    <.01   14.93 (1.82)    <.01
    b      Slope                       -0.48 (0.10)    <.01   -0.52 (0.12)    <.01   -0.37 (0.21)     .09
    b      Level * age                 -0.56 (0.22)     .01   -0.47 (0.24)     .06   -0.48 (0.22)     .03
    b      Level * education                            ---    0.57 (0.21)     .01    0.63 (0.19)    <.01
    b      Level * height                               ---    0.14 (0.09)     .11    0.15 (0.09)     .09
    b      Level * smoking                              ---                    ---   -3.70 (1.45)     .01
    b      Level * cardio                               ---                    ---   -0.55 (1.12)     .63
    b      Level * diabetes                             ---                    ---   -2.55 (1.31)     .05
    b      Slope * age                  0.04 (0.03)     .20    0.05 (0.03)     .13    0.04 (0.04)     .24
    b      Slope * education                            ---    0.03 (0.04)     .47    0.03 (0.04)     .55
    b      Slope * height                               ---   -0.01 (0.01)     .41   -0.01 (0.01)     .57
    b      Slope * smoking                              ---                    ---    0.02 (0.15)     .88
    b      Slope * cardio                               ---                    ---   -0.14 (0.17)     .42
    b      Slope * diabetes                             ---                    ---    0.25 (0.27)     .35
    a      Var (Level)                  6.61 (1.11)    <.01    4.63 (0.72)    <.01    4.44 (0.68)    <.01
    a      Var (Slope)                  0.05 (0.03)     .05    0.05 (0.03)     .08    0.04 (0.02)     .08
    a      Var (Residual)               1.60 (0.21)    <.01    1.58 (0.23)    <.01    1.54 (0.20)    <.01
    b      Var (Level)                 43.95 (5.63)    <.01   35.78 (5.64)    <.01   32.24 (5.01)    <.01
    b      Var (Slope)                  0.04 (0.10)     .71    0.04 (0.16)     .80    0.05 (0.17)     .78
    b      Var (Residual)               9.12 (1.13)    <.01    9.27 (1.26)    <.01    9.20 (1.27)    <.01
    a      Covar (Level, Slope)        -0.12 (0.11)     .28   -0.06 (0.10)     .53   -0.14 (0.10)     .17
    b      Covar (Level, Slope)         0.27 (0.45)     .56    0.16 (0.47)     .73    0.13 (0.50)     .80
    \      Correlation of Levels                       0.36                   0.31                   0.30
    \      Correlation of Slopes                      -0.49                  -0.27                  -0.25
    \      Correlation of Residuals                    0.13                   0.13                   0.14
    \      N                                            158                    139                    139
    \      occasions                                      5                      5                      5
    \      parameters                                    NA                     NA                     41
    \      LL                                        -2,224                 -2,007                 -1,989
    \      AIC                                        4,489                  4,073                  4,060
    \      BIC                                        4,553                  4,158                  4,180

##  digit_b 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _digit_b_


 process   label                                          a                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------
   ab      Covar (Levels)               0.74 (0.44)     .09    0.21 (0.25)     .40    0.12 (0.23)     .60
   ab      Covar (Slopes)               0.00 (0.01)     .95    0.00 (0.01)     .92    0.00 (0.01)     .68
   ab      Covar (Residuals)           -0.14 (0.10)     .14   -0.17 (0.09)     .07   -0.16 (0.10)     .10
   er      Corr (Levels)                                ---                    ---    0.06 (0.11)     .60
   er      Corr (Slopes)                                ---                    ---    0.20 (0.49)     .69
   er      Corr (Residuals)                             ---                    ---   -0.13 (0.07)     .08
    a      Level                       11.30 (0.36)    <.01   11.78 (0.34)    <.01   10.78 (0.60)    <.01
    a      Slope                       -0.36 (0.05)    <.01   -0.37 (0.05)    <.01   -0.13 (0.10)     .20
    a      Level * age                 -0.19 (0.08)     .01   -0.16 (0.07)     .03   -0.17 (0.07)     .01
    a      Level * education                            ---   -0.11 (0.05)     .02   -0.14 (0.05)     .01
    a      Level * height                               ---    0.11 (0.04)    <.01    0.11 (0.04)    <.01
    a      Level * smoking                              ---                    ---    0.10 (0.43)     .81
    a      Level * cardio                               ---                    ---   -0.42 (0.40)     .30
    a      Level * diabetes                             ---                    ---   -1.54 (0.70)     .03
    a      Slope * age                 -0.04 (0.02)     .06   -0.04 (0.02)     .09   -0.05 (0.02)     .01
    a      Slope * education                            ---    0.01 (0.01)     .56    0.00 (0.01)     .95
    a      Slope * height                               ---   -0.01 (0.01)     .17   -0.01 (0.00)     .07
    a      Slope * smoking                              ---                    ---    0.03 (0.08)     .73
    a      Slope * cardio                               ---                    ---   -0.22 (0.07)    <.01
    a      Slope * diabetes                             ---                    ---   -0.09 (0.13)     .47
    b      Level                        3.54 (0.17)    <.01    3.53 (0.18)    <.01    3.95 (0.31)    <.01
    b      Slope                       -0.06 (0.04)     .15   -0.06 (0.04)     .20   -0.14 (0.09)     .11
    b      Level * age                 -0.08 (0.04)     .06   -0.07 (0.04)     .12   -0.08 (0.04)     .08
    b      Level * education                            ---    0.13 (0.03)    <.01    0.12 (0.03)    <.01
    b      Level * height                               ---    0.00 (0.02)     .90    0.00 (0.02)     .90
    b      Level * smoking                              ---                    ---   -0.19 (0.27)     .49
    b      Level * cardio                               ---                    ---   -0.55 (0.24)     .02
    b      Level * diabetes                             ---                    ---   -0.30 (0.43)     .47
    b      Slope * age                 -0.00 (0.01)     .90    0.00 (0.01)     .99    0.00 (0.01)     .98
    b      Slope * education                            ---   -0.01 (0.01)     .42   -0.00 (0.01)     .68
    b      Slope * height                               ---    0.00 (0.00)     .12    0.01 (0.00)     .11
    b      Slope * smoking                              ---                    ---   -0.04 (0.08)     .66
    b      Slope * cardio                               ---                    ---    0.08 (0.06)     .15
    b      Slope * diabetes                             ---                    ---   -0.03 (0.12)     .80
    a      Var (Level)                  6.57 (1.12)    <.01    4.60 (0.72)    <.01    4.41 (0.68)    <.01
    a      Var (Slope)                  0.05 (0.02)     .06    0.04 (0.02)     .08    0.04 (0.02)     .08
    a      Var (Residual)               1.62 (0.21)    <.01    1.59 (0.23)    <.01    1.57 (0.21)    <.01
    b      Var (Level)                  1.53 (0.31)    <.01    1.13 (0.29)    <.01    1.04 (0.27)    <.01
    b      Var (Slope)                  0.02 (0.01)     .16    0.02 (0.01)     .16    0.02 (0.01)     .21
    b      Var (Residual)               0.99 (0.14)    <.01    0.97 (0.14)    <.01    0.96 (0.14)    <.01
    a      Covar (Level, Slope)        -0.10 (0.10)     .35   -0.06 (0.10)     .59   -0.13 (0.10)     .17
    b      Covar (Level, Slope)        -0.12 (0.06)     .05   -0.09 (0.05)     .09   -0.08 (0.05)     .08
    \      Correlation of Levels                      0.235                  0.091                  0.056
    \      Correlation of Slopes                      0.032                  0.033                  0.191
    \      Correlation of Residuals                  -0.111                 -0.134                 -0.128
    \      N                                            161                    139                    139
    \      occasions                                      5                      5                      5
    \      parameters                                    NA                     NA                     41
    \      LL                                        -1,755                 -1,556                 -1,541
    \      AIC                                        3,552                  3,170                  3,163
    \      BIC                                        3,616                  3,255                  3,283

##  digit_f 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _digit_f_


 process   label                                          a                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------
   ab      Covar (Levels)               0.10 (0.30)     .74   -0.28 (0.28)     .30   -0.29 (0.26)     .27
   ab      Covar (Slopes)               0.01 (0.01)     .23    0.01 (0.01)     .40    0.00 (0.01)     .50
   ab      Covar (Residuals)           -0.08 (0.07)     .24   -0.07 (0.07)     .29   -0.07 (0.06)     .30
   er      Corr (Levels)                                ---                    ---   -0.15 (0.13)     .24
   er      Corr (Slopes)                                ---                    ---    0.24 (0.36)     .51
   er      Corr (Residuals)                             ---                    ---   -0.07 (0.07)     .30
    a      Level                       11.30 (0.35)    <.01   11.78 (0.34)    <.01   10.77 (0.60)    <.01
    a      Slope                       -0.34 (0.05)    <.01   -0.36 (0.05)    <.01   -0.11 (0.10)     .25
    a      Level * age                 -0.18 (0.08)     .02   -0.16 (0.07)     .03   -0.16 (0.07)     .01
    a      Level * education                            ---   -0.11 (0.05)     .02   -0.14 (0.05)     .01
    a      Level * height                               ---    0.11 (0.04)    <.01    0.11 (0.04)    <.01
    a      Level * smoking                              ---                    ---    0.10 (0.43)     .81
    a      Level * cardio                               ---                    ---   -0.42 (0.40)     .29
    a      Level * diabetes                             ---                    ---   -1.55 (0.69)     .02
    a      Slope * age                 -0.04 (0.02)     .03   -0.04 (0.02)     .06   -0.05 (0.02)     .01
    a      Slope * education                            ---    0.01 (0.01)     .55    0.00 (0.01)     .95
    a      Slope * height                               ---   -0.01 (0.01)     .13   -0.01 (0.01)     .05
    a      Slope * smoking                              ---                    ---    0.03 (0.09)     .72
    a      Slope * cardio                               ---                    ---   -0.23 (0.07)    <.01
    a      Slope * diabetes                             ---                    ---   -0.08 (0.13)     .55
    b      Level                        5.71 (0.13)    <.01    5.68 (0.15)    <.01    5.89 (0.32)    <.01
    b      Slope                       -0.05 (0.03)     .07   -0.07 (0.03)     .01   -0.06 (0.06)     .35
    b      Level * age                 -0.05 (0.03)     .07   -0.02 (0.03)     .51   -0.03 (0.03)     .40
    b      Level * education                            ---    0.06 (0.02)     .02    0.07 (0.02)     .01
    b      Level * height                               ---    0.01 (0.02)     .50    0.01 (0.01)     .41
    b      Level * smoking                              ---                    ---   -0.47 (0.23)     .04
    b      Level * cardio                               ---                    ---   -0.02 (0.19)     .93
    b      Level * diabetes                             ---                    ---   -0.02 (0.26)     .92
    b      Slope * age                 -0.02 (0.01)     .04   -0.01 (0.01)     .10   -0.01 (0.01)     .10
    b      Slope * education                            ---    0.01 (0.01)     .16    0.01 (0.01)     .24
    b      Slope * height                               ---   -0.00 (0.00)     .13   -0.00 (0.00)     .14
    b      Slope * smoking                              ---                    ---    0.07 (0.05)     .17
    b      Slope * cardio                               ---                    ---   -0.03 (0.04)     .52
    b      Slope * diabetes                             ---                    ---    0.00 (0.06)     .99
    a      Var (Level)                  6.52 (1.10)    <.01    4.60 (0.72)    <.01    4.41 (0.68)    <.01
    a      Var (Slope)                  0.05 (0.02)     .04    0.04 (0.02)     .08    0.04 (0.02)     .08
    a      Var (Residual)               1.61 (0.20)    <.01    1.59 (0.23)    <.01    1.56 (0.20)    <.01
    b      Var (Level)                  0.91 (0.17)    <.01    0.86 (0.17)    <.01    0.82 (0.17)    <.01
    b      Var (Slope)                  0.01 (0.01)     .04    0.01 (0.01)     .02    0.01 (0.00)     .02
    b      Var (Residual)               0.56 (0.08)    <.01    0.51 (0.08)    <.01    0.51 (0.08)    <.01
    a      Covar (Level, Slope)        -0.10 (0.10)     .32   -0.06 (0.10)     .56   -0.13 (0.10)     .16
    b      Covar (Level, Slope)        -0.07 (0.03)     .01   -0.08 (0.03)    <.01   -0.07 (0.03)     .01
    \      Correlation of Levels                      0.042                 -0.142                 -0.152
    \      Correlation of Slopes                      0.434                  0.293                  0.231
    \      Correlation of Residuals                  -0.082                 -0.079                 -0.074
    \      N                                            161                    139                    139
    \      occasions                                      5                      5                      5
    \      parameters                                    NA                     NA                     41
    \      LL                                        -1,640                 -1,443                 -1,429
    \      AIC                                        3,322                  2,945                  2,940
    \      BIC                                        3,386                  3,030                  3,060

##  fig_logic 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _fig_logic_


 process   label                                          a                    aeh
---------  -------------------------  ---------------------  ---------------------
   ab      Covar (Levels)               5.52 (1.50)    <.01    3.43 (0.95)    <.01
   ab      Covar (Slopes)               0.04 (0.04)     .27    0.04 (0.04)     .35
   ab      Covar (Residuals)           -0.28 (0.23)     .22   -0.23 (0.24)     .34
   er      Corr (Levels)                                ---                    ---
   er      Corr (Slopes)                                ---                    ---
   er      Corr (Residuals)                             ---                    ---
    a      Level                       11.23 (0.36)    <.01   11.76 (0.35)    <.01
    a      Slope                       -0.34 (0.05)    <.01   -0.35 (0.05)    <.01
    a      Level * age                 -0.17 (0.08)     .02   -0.16 (0.07)     .03
    a      Level * education                            ---   -0.10 (0.05)     .03
    a      Level * height                               ---    0.11 (0.04)    <.01
    a      Level * smoking                              ---                    ---
    a      Level * cardio                               ---                    ---
    a      Level * diabetes                             ---                    ---
    a      Slope * age                 -0.04 (0.02)     .03   -0.04 (0.02)     .05
    a      Slope * education                            ---    0.00 (0.01)     .72
    a      Slope * height                               ---   -0.01 (0.01)     .18
    a      Slope * smoking                              ---                    ---
    a      Slope * cardio                               ---                    ---
    a      Slope * diabetes                             ---                    ---
    b      Level                       15.59 (0.56)    <.01   15.88 (0.50)    <.01
    b      Slope                       -0.03 (0.13)     .81   -0.01 (0.12)     .95
    b      Level * age                 -0.13 (0.12)     .27   -0.12 (0.13)     .35
    b      Level * education                            ---    0.31 (0.10)    <.01
    b      Level * height                               ---    0.04 (0.05)     .50
    b      Level * smoking                              ---                    ---
    b      Level * cardio                               ---                    ---
    b      Level * diabetes                             ---                    ---
    b      Slope * age                  0.01 (0.03)     .70    0.01 (0.04)     .76
    b      Slope * education                            ---   -0.03 (0.03)     .32
    b      Slope * height                               ---    0.01 (0.01)     .36
    b      Slope * smoking                              ---                    ---
    b      Slope * cardio                               ---                    ---
    b      Slope * diabetes                             ---                    ---
    a      Var (Level)                  6.78 (1.13)    <.01    4.71 (0.72)    <.01
    a      Var (Slope)                  0.05 (0.03)     .04    0.05 (0.03)     .08
    a      Var (Residual)               1.60 (0.21)    <.01    1.57 (0.22)    <.01
    b      Var (Level)                 11.72 (2.81)    <.01    7.86 (1.90)    <.01
    b      Var (Slope)                  0.09 (0.10)     .36    0.08 (0.11)     .45
    b      Var (Residual)               7.94 (0.95)    <.01    7.81 (0.98)    <.01
    a      Covar (Level, Slope)        -0.16 (0.11)     .14   -0.10 (0.10)     .35
    b      Covar (Level, Slope)        -0.56 (0.45)     .21   -0.35 (0.38)     .36
    \      Correlation of Levels                       0.62                  0.563
    \      Correlation of Slopes                       0.63                  0.638
    \      Correlation of Residuals                   -0.08                 -0.065
    \      N                                            157                    138
    \      occasions                                      5                      5
    \      parameters                                    NA                     NA
    \      LL                                        -2,001                 -1,829
    \      AIC                                        4,043                  3,716
    \      BIC                                        4,108                  3,801

##  mir 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _mir_


 process   label                                          a                    aeh
---------  -------------------------  ---------------------  ---------------------
   ab      Covar (Levels)               1.59 (0.62)     .01    1.11 (0.48)     .02
   ab      Covar (Slopes)               0.02 (0.02)     .25    0.03 (0.01)     .05
   ab      Covar (Residuals)            0.05 (0.16)     .77    0.03 (0.17)     .85
   er      Corr (Levels)                                ---                    ---
   er      Corr (Slopes)                                ---                    ---
   er      Corr (Residuals)                             ---                    ---
    a      Level                       11.30 (0.36)    <.01   11.78 (0.34)    <.01
    a      Slope                       -0.36 (0.05)    <.01   -0.37 (0.05)    <.01
    a      Level * age                 -0.18 (0.08)     .02   -0.16 (0.07)     .03
    a      Level * education                            ---   -0.10 (0.05)     .04
    a      Level * height                               ---    0.11 (0.04)    <.01
    a      Level * smoking                              ---                    ---
    a      Level * cardio                               ---                    ---
    a      Level * diabetes                             ---                    ---
    a      Slope * age                 -0.04 (0.02)     .03   -0.04 (0.02)     .05
    a      Slope * education                            ---    0.00 (0.01)     .74
    a      Slope * height                               ---   -0.01 (0.01)     .20
    a      Slope * smoking                              ---                    ---
    a      Slope * cardio                               ---                    ---
    a      Slope * diabetes                             ---                    ---
    b      Level                        6.99 (0.24)    <.01    6.94 (0.27)    <.01
    b      Slope                       -0.07 (0.07)     .31   -0.03 (0.07)     .68
    b      Level * age                 -0.27 (0.07)    <.01   -0.21 (0.07)    <.01
    b      Level * education                            ---    0.08 (0.05)     .08
    b      Level * height                               ---   -0.00 (0.03)     .93
    b      Level * smoking                              ---                    ---
    b      Level * cardio                               ---                    ---
    b      Level * diabetes                             ---                    ---
    b      Slope * age                 -0.02 (0.02)     .30   -0.03 (0.02)     .10
    b      Slope * education                            ---   -0.00 (0.02)     .88
    b      Slope * height                               ---    0.00 (0.01)     .94
    b      Slope * smoking                              ---                    ---
    b      Slope * cardio                               ---                    ---
    b      Slope * diabetes                             ---                    ---
    a      Var (Level)                  6.63 (1.12)    <.01    4.66 (0.72)    <.01
    a      Var (Slope)                  0.05 (0.02)     .04    0.04 (0.02)     .07
    a      Var (Residual)               1.60 (0.20)    <.01    1.58 (0.23)    <.01
    b      Var (Level)                  2.52 (0.47)    <.01    1.95 (0.40)    <.01
    b      Var (Slope)                  0.08 (0.02)    <.01    0.07 (0.02)    <.01
    b      Var (Residual)               2.10 (0.23)    <.01    1.99 (0.22)    <.01
    a      Covar (Level, Slope)        -0.10 (0.11)     .38   -0.06 (0.10)     .55
    b      Covar (Level, Slope)         0.02 (0.09)     .79    0.04 (0.08)     .58
    \      Correlation of Levels                      0.389                  0.369
    \      Correlation of Slopes                      0.290                  0.527
    \      Correlation of Residuals                   0.026                  0.018
    \      N                                            159                    139
    \      occasions                                      5                      5
    \      parameters                                    NA                     NA
    \      LL                                        -1,884                 -1,694
    \      AIC                                        3,809                  3,447
    \      BIC                                        3,874                  3,532

##  prose_im 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _prose_im_


 process   label                                          a                    aeh                aehplus
---------  -------------------------  ---------------------  ---------------------  ---------------------
   ab      Covar (Levels)               3.60 (1.03)    <.01    2.36 (0.92)     .01    2.38 (0.78)    <.01
   ab      Covar (Slopes)              -0.01 (0.03)     .81   -0.00 (0.03)     .87   -0.01 (0.05)     .79
   ab      Covar (Residuals)            0.21 (0.23)     .37    0.37 (0.26)     .15    0.35 (0.25)     .16
   er      Corr (Levels)                                ---                    ---    0.35 (0.10)    <.01
   er      Corr (Slopes)                                ---                    ---   -0.38 (2.68)     .89
   er      Corr (Residuals)                             ---                    ---    0.14 (0.09)     .14
    a      Level                       11.29 (0.36)    <.01   11.76 (0.34)    <.01   10.78 (0.60)    <.01
    a      Slope                       -0.34 (0.05)    <.01   -0.35 (0.05)    <.01   -0.13 (0.11)     .22
    a      Level * age                 -0.18 (0.08)     .02   -0.16 (0.07)     .03   -0.16 (0.07)     .01
    a      Level * education                            ---   -0.10 (0.05)     .03   -0.13 (0.05)     .01
    a      Level * height                               ---    0.11 (0.04)    <.01    0.11 (0.04)    <.01
    a      Level * smoking                              ---                    ---    0.08 (0.43)     .84
    a      Level * cardio                               ---                    ---   -0.41 (0.40)     .31
    a      Level * diabetes                             ---                    ---   -1.58 (0.69)     .02
    a      Slope * age                 -0.04 (0.02)     .03   -0.04 (0.02)     .05   -0.06 (0.02)     .01
    a      Slope * education                            ---    0.00 (0.01)     .85   -0.00 (0.01)     .78
    a      Slope * height                               ---   -0.01 (0.01)     .26   -0.01 (0.01)     .10
    a      Slope * smoking                              ---                    ---    0.03 (0.09)     .73
    a      Slope * cardio                               ---                    ---   -0.23 (0.07)    <.01
    a      Slope * diabetes                             ---                    ---   -0.04 (0.13)     .75
    b      Level                       10.48 (0.47)    <.01   10.17 (0.57)    <.01   10.69 (0.97)    <.01
    b      Slope                       -0.15 (0.09)     .09   -0.09 (0.09)     .30    0.06 (0.22)     .79
    b      Level * age                 -0.36 (0.12)    <.01   -0.25 (0.14)     .07   -0.26 (0.12)     .03
    b      Level * education                            ---    0.43 (0.08)    <.01    0.43 (0.09)    <.01
    b      Level * height                               ---    0.00 (0.06)     .99    0.01 (0.06)     .91
    b      Level * smoking                              ---                    ---   -0.62 (0.80)     .43
    b      Level * cardio                               ---                    ---   -0.44 (0.69)     .52
    b      Level * diabetes                             ---                    ---    0.70 (0.94)     .46
    b      Slope * age                  0.00 (0.05)     .99    0.00 (0.05)     .98   -0.01 (0.05)     .87
    b      Slope * education                            ---   -0.01 (0.01)     .56   -0.01 (0.01)     .54
    b      Slope * height                               ---    0.01 (0.01)     .13    0.01 (0.01)     .36
    b      Slope * smoking                              ---                    ---   -0.15 (0.20)     .45
    b      Slope * cardio                               ---                    ---   -0.19 (0.12)     .12
    b      Slope * diabetes                             ---                    ---   -0.18 (0.25)     .47
    a      Var (Level)                  6.64 (1.12)    <.01    4.65 (0.72)    <.01    4.45 (0.68)    <.01
    a      Var (Slope)                  0.05 (0.02)     .05    0.05 (0.02)     .07    0.04 (0.02)     .07
    a      Var (Residual)               1.61 (0.21)    <.01    1.59 (0.23)    <.01    1.56 (0.20)    <.01
    b      Var (Level)                 13.18 (1.76)    <.01   10.05 (2.16)    <.01   10.25 (2.47)    <.01
    b      Var (Slope)                  0.01 (0.08)     .88    0.01 (0.08)     .92    0.02 (0.20)     .90
    b      Var (Residual)               4.33 (0.66)    <.01    4.19 (0.71)    <.01    4.07 (0.80)    <.01
    a      Covar (Level, Slope)        -0.12 (0.10)     .24   -0.09 (0.10)     .39   -0.16 (0.10)     .12
    b      Covar (Level, Slope)         0.10 (0.34)     .78    0.08 (0.35)     .83   -0.21 (0.72)     .77
    \      Correlation of Levels                      0.384                   0.34                   0.35
    \      Correlation of Slopes                     -0.330                  -0.26                  -0.37
    \      Correlation of Residuals                   0.078                   0.14                   0.14
    \      N                                            161                    139                    139
    \      occasions                                      5                      5                      5
    \      parameters                                    NA                     NA                     41
    \      LL                                        -1,916                 -1,698                 -1,681
    \      AIC                                        3,874                  3,453                  3,444
    \      BIC                                        3,939                  3,538                  3,564

##  symbol 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _symbol_


 process   label                                            a                     aeh                 aehplus
---------  -------------------------  -----------------------  ----------------------  ----------------------
   ab      Covar (Levels)                 7.52 (2.66)    <.01     4.93 (1.94)     .01     4.32 (1.88)     .02
   ab      Covar (Slopes)                 0.01 (0.07)     .82     0.00 (0.07)     .98    -0.01 (0.06)     .85
   ab      Covar (Residuals)              0.40 (0.48)     .40     0.73 (0.45)     .10     0.76 (0.46)     .09
   er      Corr (Levels)                                  ---                     ---     0.24 (0.10)     .01
   er      Corr (Slopes)                                  ---                     ---    -0.08 (0.44)     .86
   er      Corr (Residuals)                               ---                     ---     0.15 (0.09)     .08
    a      Level                         11.29 (0.36)    <.01    11.77 (0.35)    <.01    10.79 (0.60)    <.01
    a      Slope                         -0.35 (0.05)    <.01    -0.37 (0.05)    <.01    -0.14 (0.10)     .19
    a      Level * age                   -0.18 (0.08)     .02    -0.16 (0.07)     .03    -0.16 (0.07)     .01
    a      Level * education                              ---    -0.10 (0.05)     .03    -0.13 (0.05)     .01
    a      Level * height                                 ---     0.11 (0.04)    <.01     0.11 (0.04)    <.01
    a      Level * smoking                                ---                     ---     0.09 (0.43)     .84
    a      Level * cardio                                 ---                     ---    -0.41 (0.40)     .31
    a      Level * diabetes                               ---                     ---    -1.56 (0.69)     .02
    a      Slope * age                   -0.04 (0.02)     .04    -0.04 (0.02)     .07    -0.05 (0.02)     .01
    a      Slope * education                              ---     0.00 (0.01)     .79    -0.00 (0.01)     .79
    a      Slope * height                                 ---    -0.01 (0.01)     .21    -0.01 (0.01)     .06
    a      Slope * smoking                                ---                     ---     0.05 (0.09)     .61
    a      Slope * cardio                                 ---                     ---    -0.23 (0.08)    <.01
    a      Slope * diabetes                               ---                     ---    -0.06 (0.12)     .60
    b      Level                         26.54 (1.53)    <.01    25.91 (1.43)    <.01    28.40 (2.81)    <.01
    b      Slope                         -0.52 (0.22)     .02    -0.57 (0.20)    <.01    -0.30 (0.43)     .49
    b      Level * age                   -0.74 (0.37)     .05    -0.57 (0.40)     .16    -0.66 (0.38)     .08
    b      Level * education                              ---     1.62 (0.24)    <.01     1.71 (0.24)    <.01
    b      Level * height                                 ---     0.23 (0.13)     .06     0.24 (0.12)     .05
    b      Level * smoking                                ---                     ---    -5.97 (2.29)     .01
    b      Level * cardio                                 ---                     ---    -1.36 (1.79)     .45
    b      Level * diabetes                               ---                     ---    -2.03 (2.23)     .36
    b      Slope * age                    0.02 (0.08)     .83     0.04 (0.07)     .54     0.03 (0.07)     .67
    b      Slope * education                              ---     0.03 (0.04)     .47     0.02 (0.05)     .61
    b      Slope * height                                 ---    -0.02 (0.02)     .22    -0.02 (0.02)     .33
    b      Slope * smoking                                ---                     ---     0.17 (0.30)     .58
    b      Slope * cardio                                 ---                     ---    -0.17 (0.27)     .54
    b      Slope * diabetes                               ---                     ---    -0.14 (0.47)     .77
    a      Var (Level)                    6.61 (1.11)    <.01     4.64 (0.72)    <.01     4.45 (0.68)    <.01
    a      Var (Slope)                    0.05 (0.03)     .06     0.05 (0.03)     .08     0.04 (0.03)     .09
    a      Var (Residual)                 1.60 (0.21)    <.01     1.57 (0.22)    <.01     1.54 (0.20)    <.01
    b      Var (Level)                 107.55 (14.31)    <.01   83.08 (13.36)    <.01   74.08 (10.95)    <.01
    b      Var (Slope)                    0.55 (0.24)     .02     0.44 (0.26)     .10     0.44 (0.26)     .09
    b      Var (Residual)                17.42 (2.06)    <.01    17.25 (2.36)    <.01    17.29 (2.31)    <.01
    a      Covar (Level, Slope)          -0.13 (0.11)     .24    -0.08 (0.10)     .44    -0.15 (0.10)     .14
    b      Covar (Level, Slope)          -2.60 (1.31)     .05    -2.75 (1.30)     .03    -2.78 (1.13)     .01
    \      Correlation of Levels                        0.282                  0.2509                   0.238
    \      Correlation of Slopes                        0.090                  0.0068                  -0.079
    \      Correlation of Residuals                     0.075                  0.1408                   0.148
    \      N                                              156                     138                     138
    \      occasions                                        5                       5                       5
    \      parameters                                      NA                      NA                      41
    \      LL                                          -2,223                  -2,035                  -2,017
    \      AIC                                          4,488                   4,128                   4,117
    \      BIC                                          4,552                   4,213                   4,237

## Summary 

 Study = _OCTO_; Gender = _male_; Process (a) = _grip_

 Computed correlations:

 

label                    process_b      a     aeh   aehplus
----------------------  ----------  -----  ------  --------
Correlation of Levels        block   0.36    0.31      0.30
Correlation of Levels      digit_b   0.23    0.09      0.06
Correlation of Levels      digit_f   0.04   -0.14     -0.15
Correlation of Levels    fig_logic   0.62    0.56         .
Correlation of Levels          mir   0.39    0.37         .
Correlation of Levels     prose_im   0.38    0.34      0.35
Correlation of Levels       symbol   0.28    0.25      0.24




label                    process_b       a     aeh   aehplus
----------------------  ----------  ------  ------  --------
Correlation of Slopes        block   -0.49   -0.27     -0.25
Correlation of Slopes      digit_b    0.03    0.03      0.19
Correlation of Slopes      digit_f    0.43    0.29      0.23
Correlation of Slopes    fig_logic    0.63    0.64         .
Correlation of Slopes          mir    0.29    0.53         .
Correlation of Slopes     prose_im   -0.33   -0.26     -0.37
Correlation of Slopes       symbol    0.09    0.01     -0.08




label                       process_b       a     aeh   aehplus
-------------------------  ----------  ------  ------  --------
Correlation of Residuals        block    0.13    0.13      0.14
Correlation of Residuals      digit_b   -0.11   -0.13     -0.13
Correlation of Residuals      digit_f   -0.08   -0.08     -0.07
Correlation of Residuals    fig_logic   -0.08   -0.06         .
Correlation of Residuals          mir    0.03    0.02         .
Correlation of Residuals     prose_im    0.08    0.14      0.14
Correlation of Residuals       symbol    0.08    0.14      0.15



P-values for corresponding covariances: 

 

label                   process_b      a    aeh   aehplus
---------------------  ----------  -----  -----  --------
Covariance of Levels        block   0.00   0.00      0.00
Covariance of Levels      digit_b   0.09   0.40      0.60
Covariance of Levels      digit_f   0.74   0.30      0.27
Covariance of Levels    fig_logic   0.00   0.00         .
Covariance of Levels          mir   0.01   0.02         .
Covariance of Levels     prose_im   0.00   0.01      0.00
Covariance of Levels       symbol   0.00   0.01      0.02




label                   process_b      a    aeh   aehplus
---------------------  ----------  -----  -----  --------
Covariance of Slopes        block   0.49   0.77      0.74
Covariance of Slopes      digit_b   0.95   0.92      0.68
Covariance of Slopes      digit_f   0.23   0.40      0.50
Covariance of Slopes    fig_logic   0.27   0.35         .
Covariance of Slopes          mir   0.25   0.05         .
Covariance of Slopes     prose_im   0.81   0.87      0.79
Covariance of Slopes       symbol   0.82   0.98      0.85




label                       process_b      a    aeh   aehplus
-------------------------  ----------  -----  -----  --------
Covariance of  Residuals        block   0.03   0.06      0.03
Covariance of  Residuals      digit_b   0.14   0.07      0.10
Covariance of  Residuals      digit_f   0.24   0.29      0.30
Covariance of  Residuals    fig_logic   0.22   0.34         .
Covariance of  Residuals          mir   0.77   0.85         .
Covariance of  Residuals     prose_im   0.37   0.15      0.16
Covariance of  Residuals       symbol   0.40   0.10      0.09


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
