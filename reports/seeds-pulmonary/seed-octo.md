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
pef         block               8
pef         digit_b             6
pef         digit_f             6
pef         fig_logic           4
pef         mir                 4
pef         prose_im            8
pef         symbol              6




study_name   subgroup   model_type   process_a   process_b    n_models
-----------  ---------  -----------  ----------  ----------  ---------
octo         female     a            pef         block               1
octo         female     a            pef         digit_b             1
octo         female     a            pef         digit_f             1
octo         female     a            pef         fig_logic           1
octo         female     a            pef         mir                 1
octo         female     a            pef         prose_im            1
octo         female     a            pef         symbol              1
octo         female     aeh          pef         block               1
octo         female     aeh          pef         digit_b             1
octo         female     aeh          pef         digit_f             1
octo         female     aeh          pef         fig_logic           1
octo         female     aeh          pef         mir                 1
octo         female     aeh          pef         prose_im            1
octo         female     aeh          pef         symbol              1
octo         female     aehplus      pef         block               1
octo         female     aehplus      pef         digit_b             1
octo         female     aehplus      pef         digit_f             1
octo         female     aehplus      pef         prose_im            1
octo         female     aehplus      pef         symbol              1
octo         female     full         pef         block               1
octo         female     full         pef         prose_im            1




study_name   subgroup   model_type   process_a   process_b    n_models
-----------  ---------  -----------  ----------  ----------  ---------
octo         male       a            pef         block               1
octo         male       a            pef         digit_b             1
octo         male       a            pef         digit_f             1
octo         male       a            pef         fig_logic           1
octo         male       a            pef         mir                 1
octo         male       a            pef         prose_im            1
octo         male       a            pef         symbol              1
octo         male       aeh          pef         block               1
octo         male       aeh          pef         digit_b             1
octo         male       aeh          pef         digit_f             1
octo         male       aeh          pef         fig_logic           1
octo         male       aeh          pef         mir                 1
octo         male       aeh          pef         prose_im            1
octo         male       aeh          pef         symbol              1
octo         male       aehplus      pef         block               1
octo         male       aehplus      pef         digit_b             1
octo         male       aehplus      pef         digit_f             1
octo         male       aehplus      pef         prose_im            1
octo         male       aehplus      pef         symbol              1
octo         male       full         pef         block               1
octo         male       full         pef         prose_im            1


# female 

 Gender = _female_; Model type: _aehplus_;  Process (a) = _pef_; Process (b): *block*, *digit_b*, *digit_f*, *fig_logic*, *mir*, *prose_im*, *symbol*


 process   label                                          block                    digit_b                    digit_f                   prose_im                     symbol      mean(sd)    
---------  -------------------------  -------------------------  -------------------------  -------------------------  -------------------------  -------------------------  ----------------
   ab      Covar (Levels)                 83.65 (32.97)     .01        8.74 (5.74)     .13       -0.26 (4.91)     .96      28.79 (16.85)     .09     202.30 (47.72)    <.01        ---       
   ab      Covar (Slopes)                   0.04 (0.68)     .96        0.04 (0.12)     .76       -0.12 (0.12)     .31       -0.08 (0.54)     .88        2.24 (1.04)     .03        ---       
   ab      Covar (Residuals)               22.75 (9.67)     .02        0.82 (2.44)     .74        0.45 (1.90)     .81        7.21 (5.67)     .20       8.29 (13.50)     .54        ---       
   er      Corr (Levels)                    0.23 (0.09)     .01        0.19 (0.12)     .13       -0.00 (0.10)     .96        0.16 (0.09)     .08        0.38 (0.08)    <.01        ---       
   er      Corr (Slopes)                    0.02 (0.34)     .96        0.16 (0.50)     .75       -0.30 (0.27)     .27       -0.05 (0.35)     .88        0.66 (0.18)    <.01        ---       
   er      Corr (Residuals)                 0.15 (0.06)     .01        0.02 (0.05)     .74        0.01 (0.05)     .81        0.08 (0.06)     .21        0.03 (0.06)     .54        ---       
    a      Level                          328.19 (8.75)    <.01      327.58 (8.82)    <.01      327.37 (8.78)    <.01      327.36 (8.75)    <.01      327.75 (8.80)    <.01    327.65(0.34)  
    a      Slope                           -7.21 (1.40)    <.01       -7.04 (1.42)    <.01       -7.01 (1.42)    <.01       -7.03 (1.41)    <.01       -7.13 (1.40)    <.01    -7.08(0.09)   
    a      Level * age                     -6.38 (1.88)    <.01       -6.30 (1.90)    <.01       -6.15 (1.89)    <.01       -6.21 (1.90)    <.01       -6.37 (1.88)    <.01    -6.28(0.10)   
    a      Level * education                5.51 (2.65)     .04        5.77 (2.65)     .03        5.56 (2.66)     .04        5.76 (2.67)     .03        5.64 (2.69)     .04     5.65(0.12)   
    a      Level * height                   2.71 (0.99)     .01        2.61 (0.99)     .01        2.63 (0.99)     .01        2.63 (0.99)     .01        2.68 (0.98)     .01     2.65(0.04)   
    a      Level * smoking               -35.17 (12.79)     .01     -34.62 (12.73)     .01     -34.95 (12.81)     .01     -35.27 (12.76)     .01     -35.14 (12.64)    <.01    -35.03(0.26)  
    a      Level * cardio                  2.72 (10.13)     .79       2.15 (10.19)     .83       3.03 (10.23)     .77       2.73 (10.15)     .79       2.08 (10.17)     .84     2.54(0.41)   
    a      Level * diabetes                4.02 (16.34)     .81       3.28 (16.52)     .84       3.40 (16.72)     .84       1.95 (16.70)     .91       3.77 (16.59)     .82     3.28(0.80)   
    a      Slope * age                      0.81 (0.36)     .02        0.95 (0.36)     .01        0.98 (0.35)     .01        0.93 (0.37)     .01        0.97 (0.35)    <.01     0.93(0.07)   
    a      Slope * education               -0.16 (0.45)     .72       -0.26 (0.46)     .57       -0.26 (0.46)     .56       -0.24 (0.46)     .60       -0.19 (0.47)     .69    -0.22(0.05)   
    a      Slope * height                  -0.22 (0.19)     .25       -0.21 (0.20)     .27       -0.21 (0.20)     .29       -0.21 (0.20)     .29       -0.21 (0.20)     .28    -0.21(0.00)   
    a      Slope * smoking                 -3.73 (2.06)     .07       -3.37 (2.04)     .10       -3.28 (2.09)     .12       -3.36 (2.03)     .10       -3.19 (2.05)     .12    -3.38(0.20)   
    a      Slope * cardio                  -2.74 (1.61)     .09       -2.70 (1.68)     .11       -2.82 (1.69)     .09       -2.75 (1.66)     .10       -2.84 (1.69)     .09    -2.77(0.06)   
    a      Slope * diabetes                 3.44 (3.31)     .30        4.09 (3.66)     .26        3.67 (3.60)     .31        4.10 (3.58)     .25        3.83 (3.48)     .27     3.83(0.28)   
    b      Level                           14.81 (0.75)    <.01        3.86 (0.13)    <.01        5.67 (0.12)    <.01       11.15 (0.40)    <.01       28.46 (1.19)    <.01        ---       
    b      Slope                           -0.19 (0.10)     .07       -0.08 (0.03)    <.01       -0.07 (0.02)    <.01       -0.04 (0.07)     .53       -0.10 (0.19)     .62        ---       
    b      Level * age                     -0.59 (0.14)    <.01       -0.10 (0.02)    <.01       -0.08 (0.02)    <.01       -0.25 (0.08)    <.01       -0.80 (0.26)    <.01        ---       
    b      Level * education                0.78 (0.19)    <.01        0.12 (0.04)    <.01        0.14 (0.03)    <.01        0.46 (0.10)    <.01        1.66 (0.37)    <.01        ---       
    b      Level * height                  -0.02 (0.06)     .80       -0.00 (0.01)     .75        0.01 (0.01)     .46        0.01 (0.04)     .76        0.08 (0.11)     .48        ---       
    b      Level * smoking                 -1.36 (0.96)     .16       -0.32 (0.19)     .09       -0.15 (0.14)     .28        0.26 (0.49)     .60       -0.69 (1.67)     .68        ---       
    b      Level * cardio                  -0.22 (0.80)     .78        0.06 (0.14)     .69        0.05 (0.12)     .67        0.21 (0.43)     .61        0.94 (1.27)     .46        ---       
    b      Level * diabetes                 1.66 (2.31)     .47       -0.10 (0.29)     .75        0.08 (0.26)     .76       -1.80 (1.14)     .11       -2.41 (3.15)     .44        ---       
    b      Slope * age                      0.01 (0.02)     .73        0.01 (0.01)     .14        0.00 (0.00)     .52        0.02 (0.02)     .14        0.00 (0.04)     .98        ---       
    b      Slope * education               -0.04 (0.03)     .19        0.00 (0.01)     .98       -0.01 (0.00)     .01       -0.04 (0.02)     .03       -0.05 (0.06)     .43        ---       
    b      Slope * height                   0.01 (0.01)     .10        0.00 (0.00)     .57       -0.00 (0.00)     .38        0.01 (0.01)     .37        0.01 (0.02)     .43        ---       
    b      Slope * smoking                  0.06 (0.14)     .67        0.04 (0.03)     .12        0.05 (0.03)     .08       -0.13 (0.10)     .18       -0.30 (0.27)     .27        ---       
    b      Slope * cardio                  -0.18 (0.12)     .12       -0.04 (0.03)     .23       -0.00 (0.02)     .84       -0.06 (0.09)     .47       -0.78 (0.19)    <.01        ---       
    b      Slope * diabetes                 0.07 (0.20)     .71        0.05 (0.06)     .38        0.01 (0.05)     .91        0.11 (0.19)     .56        1.76 (0.44)    <.01        ---       
    a      Var (Level)                 4208.44 (502.14)    <.01   4241.11 (510.56)    <.01   4245.53 (511.12)    <.01   4267.99 (513.74)    <.01   4257.36 (501.41)    <.01   4244.09(22.52) 
    a      Var (Slope)                    26.21 (14.79)     .08      29.10 (16.04)     .07      29.67 (15.84)     .06      29.02 (16.16)     .07      28.33 (14.13)     .04    28.46(1.35)   
    a      Var (Residual)              2131.44 (186.35)    <.01   2111.34 (184.87)    <.01   2113.16 (184.42)    <.01   2107.34 (186.01)    <.01   2110.74 (182.56)    <.01   2114.80(9.54)  
    b      Var (Level)                     30.25 (3.13)    <.01        0.52 (0.12)    <.01        0.55 (0.07)    <.01        7.80 (1.04)    <.01       67.85 (7.76)    <.01        ---       
    b      Var (Slope)                      0.15 (0.08)     .05        0.00 (0.00)     .11        0.01 (0.00)     .04        0.08 (0.03)     .01        0.41 (0.13)    <.01        ---       
    b      Var (Residual)                  10.94 (0.83)    <.01        1.18 (0.09)    <.01        0.61 (0.04)    <.01        4.32 (0.38)    <.01       27.74 (2.32)    <.01        ---       
    a      Covar (Level, Slope)         -144.55 (83.22)     .08    -159.22 (86.13)     .06    -166.11 (86.49)     .06    -160.95 (87.45)     .07    -159.72 (81.41)     .05   -158.11(8.06)  
    b      Covar (Level, Slope)            -0.83 (0.40)     .04       -0.01 (0.01)     .31       -0.04 (0.01)    <.01       -0.40 (0.15)     .01       -2.21 (0.89)     .01        ---       
    \      Correlation of Levels                          0.234                      0.187                    -0.0054                      0.158                      0.376     0.19(0.14)   
    \      Correlation of Slopes                          0.018                      0.153                    -0.2939                     -0.051                      0.659     0.10(0.35)   
    \      Correlation of Residuals                       0.149                      0.017                     0.0124                      0.076                      0.034     0.06(0.06)   
    \      N                                                271                        275                        275                        267                        263    270.20(5.22)  
    \      occasions                                          5                          5                          5                          5                          5     5.00(0.00)   
    \      parameters                                        41                         41                         41                         41                         41    41.00(0.00)   
    \      LL                                            -6,356                     -5,434                     -5,192                     -5,845                     -6,368   -5,839(  531)  
    \      AIC                                           12,794                     10,951                     10,465                     11,773                     12,817   11,760(1,063)  
    \      BIC                                           12,941                     11,099                     10,614                     11,920                     12,964   11,908(1,062)  

##  block 

 Gender = _female_;  Process (a) = *pef*; Process (b) = _block_


 process   label                                              a                        aeh                    aehplus                       full
---------  -------------------------  -------------------------  -------------------------  -------------------------  -------------------------
   ab      Covar (Levels)                116.45 (37.13)    <.01      91.86 (35.32)     .01      83.65 (32.97)     .01      88.69 (34.78)     .01
   ab      Covar (Slopes)                   0.26 (0.68)     .70        0.27 (0.64)     .68        0.04 (0.68)     .96        0.14 (0.70)     .84
   ab      Covar (Residuals)               22.30 (9.42)     .02       23.17 (9.72)     .02       22.75 (9.67)     .02       21.56 (9.44)     .02
   er      Corr (Levels)                                    ---                        ---        0.23 (0.09)     .01                        ---
   er      Corr (Slopes)                                    ---                        ---        0.02 (0.34)     .96                        ---
   er      Corr (Residuals)                                 ---                        ---        0.15 (0.06)     .01                        ---
    a      Level                          312.13 (7.11)    <.01      318.41 (7.77)    <.01      328.19 (8.75)    <.01     330.41 (20.45)    <.01
    a      Slope                           -8.86 (1.10)    <.01       -9.21 (1.12)    <.01       -7.21 (1.40)    <.01       -7.68 (3.27)     .02
    a      Level * age                     -6.37 (1.91)    <.01       -5.57 (2.02)     .01       -6.38 (1.88)    <.01       -6.74 (1.88)    <.01
    a      Level * education                                ---        3.09 (2.51)     .22        5.51 (2.65)     .04        7.78 (3.99)     .05
    a      Level * height                                   ---        2.62 (1.06)     .01        2.71 (0.99)     .01                        ---
    a      Level * smoking                                  ---                        ---     -35.17 (12.79)     .01      -20.00 (6.33)    <.01
    a      Level * cardio                                   ---                        ---       2.72 (10.13)     .79                        ---
    a      Level * diabetes                                 ---                        ---       4.02 (16.34)     .81                        ---
    a      Slope * age                      0.96 (0.36)     .01        0.87 (0.35)     .01        0.81 (0.36)     .02        0.83 (0.36)     .02
    a      Slope * education                                ---       -0.31 (0.38)     .41       -0.16 (0.45)     .72        0.04 (0.65)     .95
    a      Slope * height                                   ---       -0.24 (0.20)     .24       -0.22 (0.19)     .25                        ---
    a      Slope * smoking                                  ---                        ---       -3.73 (2.06)     .07       -1.83 (1.16)     .11
    a      Slope * cardio                                   ---                        ---       -2.74 (1.61)     .09                        ---
    a      Slope * diabetes                                 ---                        ---        3.44 (3.31)     .30                        ---
    b      Level                           14.34 (0.58)    <.01       14.35 (0.66)    <.01       14.81 (0.75)    <.01       17.75 (1.66)    <.01
    b      Slope                           -0.27 (0.08)    <.01       -0.25 (0.09)    <.01       -0.19 (0.10)     .07       -0.64 (0.26)     .01
    b      Level * age                     -0.61 (0.14)    <.01       -0.55 (0.16)    <.01       -0.59 (0.14)    <.01       -0.57 (0.14)    <.01
    b      Level * education                                ---        0.70 (0.21)    <.01        0.78 (0.19)    <.01        0.90 (0.28)    <.01
    b      Level * height                                   ---       -0.01 (0.07)     .85       -0.02 (0.06)     .80                        ---
    b      Level * smoking                                  ---                        ---       -1.36 (0.96)     .16       -1.14 (0.47)     .02
    b      Level * cardio                                   ---                        ---       -0.22 (0.80)     .78                        ---
    b      Level * diabetes                                 ---                        ---        1.66 (2.31)     .47                        ---
    b      Slope * age                      0.00 (0.02)     .92        0.00 (0.02)     .81        0.01 (0.02)     .73        0.00 (0.02)     .99
    b      Slope * education                                ---       -0.04 (0.04)     .32       -0.04 (0.03)     .19       -0.02 (0.05)     .70
    b      Slope * height                                   ---        0.01 (0.01)     .10        0.01 (0.01)     .10                        ---
    b      Slope * smoking                                  ---                        ---        0.06 (0.14)     .67        0.09 (0.08)     .28
    b      Slope * cardio                                   ---                        ---       -0.18 (0.12)     .12                        ---
    b      Slope * diabetes                                 ---                        ---        0.07 (0.20)     .71                        ---
    a      Var (Level)                 4810.25 (557.67)    <.01   4414.60 (523.24)    <.01   4208.44 (502.14)    <.01   4465.51 (547.54)    <.01
    a      Var (Slope)                    32.16 (15.87)     .04      29.50 (15.72)     .06      26.21 (14.79)     .08      28.34 (15.24)     .06
    a      Var (Residual)              2116.72 (185.76)    <.01   2139.35 (188.77)    <.01   2131.44 (186.35)    <.01   2128.65 (187.41)    <.01
    b      Var (Level)                     34.18 (3.29)    <.01       30.61 (3.30)    <.01       30.25 (3.13)    <.01       30.53 (3.18)    <.01
    b      Var (Slope)                      0.17 (0.07)     .01        0.16 (0.07)     .03        0.15 (0.08)     .05        0.16 (0.07)     .02
    b      Var (Residual)                  10.74 (0.80)    <.01       10.95 (0.84)    <.01       10.94 (0.83)    <.01       10.75 (0.80)    <.01
    a      Covar (Level, Slope)         -157.51 (97.50)     .11    -133.19 (92.99)     .15    -144.55 (83.22)     .08    -148.63 (93.39)     .11
    b      Covar (Level, Slope)            -0.99 (0.38)     .01       -0.86 (0.38)     .02       -0.83 (0.40)     .04       -0.82 (0.37)     .03
    \      Correlation of Levels                           0.29                       0.25                      0.234                      0.240
    \      Correlation of Slopes                           0.11                       0.12                      0.018                      0.065
    \      Correlation of Residuals                        0.15                       0.15                      0.149                      0.143
    \      N                                                293                        272                        271                        289
    \      occasions                                          5                          5                          5                          5
    \      parameters                                        21                         NA                         41                         37
    \      LL                                            -6,578                     -6,378                     -6,356                     -6,514
    \      AIC                                           13,198                     12,814                     12,794                     13,101
    \      BIC                                           13,275                     12,919                     12,941                     13,237

##  digit_b 

 Gender = _female_;  Process (a) = *pef*; Process (b) = _digit_b_


 process   label                                              a                        aeh                    aehplus
---------  -------------------------  -------------------------  -------------------------  -------------------------
   ab      Covar (Levels)                  10.77 (6.50)     .10       10.36 (6.31)     .10        8.74 (5.74)     .13
   ab      Covar (Slopes)                   0.02 (0.18)     .92        0.05 (0.16)     .77        0.04 (0.12)     .76
   ab      Covar (Residuals)                0.33 (2.56)     .90        0.51 (2.67)     .85        0.82 (2.44)     .74
   er      Corr (Levels)                                    ---                        ---        0.19 (0.12)     .13
   er      Corr (Slopes)                                    ---                        ---        0.16 (0.50)     .75
   er      Corr (Residuals)                                 ---                        ---        0.02 (0.05)     .74
    a      Level                          310.92 (7.16)    <.01      317.61 (7.89)    <.01      327.58 (8.82)    <.01
    a      Slope                           -8.50 (1.10)    <.01       -8.93 (1.11)    <.01       -7.04 (1.42)    <.01
    a      Level * age                     -5.83 (1.93)    <.01       -5.45 (2.07)     .01       -6.30 (1.90)    <.01
    a      Level * education                                ---        3.44 (2.53)     .17        5.77 (2.65)     .03
    a      Level * height                                   ---        2.53 (1.06)     .02        2.61 (0.99)     .01
    a      Level * smoking                                  ---                        ---     -34.62 (12.73)     .01
    a      Level * cardio                                   ---                        ---       2.15 (10.19)     .83
    a      Level * diabetes                                 ---                        ---       3.28 (16.52)     .84
    a      Slope * age                      1.08 (0.36)    <.01        1.00 (0.34)    <.01        0.95 (0.36)     .01
    a      Slope * education                                ---       -0.38 (0.38)     .32       -0.26 (0.46)     .57
    a      Slope * height                                   ---       -0.23 (0.21)     .27       -0.21 (0.20)     .27
    a      Slope * smoking                                  ---                        ---       -3.37 (2.04)     .10
    a      Slope * cardio                                   ---                        ---       -2.70 (1.68)     .11
    a      Slope * diabetes                                 ---                        ---        4.09 (3.66)     .26
    b      Level                            3.73 (0.10)    <.01        3.79 (0.12)    <.01        3.86 (0.13)    <.01
    b      Slope                           -0.08 (0.02)    <.01       -0.09 (0.02)    <.01       -0.08 (0.03)    <.01
    b      Level * age                     -0.07 (0.02)    <.01       -0.09 (0.03)    <.01       -0.10 (0.02)    <.01
    b      Level * education                                ---        0.10 (0.03)     .01        0.12 (0.04)    <.01
    b      Level * height                                   ---       -0.00 (0.01)     .75       -0.00 (0.01)     .75
    b      Level * smoking                                  ---                        ---       -0.32 (0.19)     .09
    b      Level * cardio                                   ---                        ---        0.06 (0.14)     .69
    b      Level * diabetes                                 ---                        ---       -0.10 (0.29)     .75
    b      Slope * age                      0.00 (0.00)     .40        0.01 (0.01)     .15        0.01 (0.01)     .14
    b      Slope * education                                ---        0.00 (0.01)     .56        0.00 (0.01)     .98
    b      Slope * height                                   ---        0.00 (0.00)     .59        0.00 (0.00)     .57
    b      Slope * smoking                                  ---                        ---        0.04 (0.03)     .12
    b      Slope * cardio                                   ---                        ---       -0.04 (0.03)     .23
    b      Slope * diabetes                                 ---                        ---        0.05 (0.06)     .38
    a      Var (Level)                 4826.43 (560.12)    <.01   4445.65 (530.00)    <.01   4241.11 (510.56)    <.01
    a      Var (Slope)                    34.60 (16.27)     .03      32.53 (16.56)     .05      29.10 (16.04)     .07
    a      Var (Residual)              2106.44 (185.04)    <.01   2119.80 (185.45)    <.01   2111.34 (184.87)    <.01
    b      Var (Level)                      0.59 (0.13)    <.01        0.53 (0.15)    <.01        0.52 (0.12)    <.01
    b      Var (Slope)                      0.00 (0.00)     .33        0.00 (0.00)     .29        0.00 (0.00)     .11
    b      Var (Residual)                   1.16 (0.09)    <.01        1.18 (0.10)    <.01        1.18 (0.09)    <.01
    a      Covar (Level, Slope)         -173.90 (97.72)     .07    -148.15 (95.57)     .12    -159.22 (86.13)     .06
    b      Covar (Level, Slope)            -0.01 (0.02)     .39       -0.02 (0.02)     .32       -0.01 (0.01)     .31
    \      Correlation of Levels                         0.2026                       0.21                      0.187
    \      Correlation of Slopes                         0.0559                       0.18                      0.153
    \      Correlation of Residuals                      0.0066                       0.01                      0.017
    \      N                                                299                        276                        275
    \      occasions                                          5                          5                          5
    \      parameters                                        NA                         NA                         41
    \      LL                                            -5,619                     -5,455                     -5,434
    \      AIC                                           11,280                     10,967                     10,951
    \      BIC                                           11,358                     11,072                     11,099

##  digit_f 

 Gender = _female_;  Process (a) = *pef*; Process (b) = _digit_f_


 process   label                                              a                        aeh                    aehplus
---------  -------------------------  -------------------------  -------------------------  -------------------------
   ab      Covar (Levels)                   1.31 (5.01)     .79        1.31 (5.01)     .79       -0.26 (4.91)     .96
   ab      Covar (Slopes)                  -0.13 (0.12)     .29       -0.13 (0.12)     .29       -0.12 (0.12)     .31
   ab      Covar (Residuals)                0.31 (1.92)     .87        0.31 (1.92)     .87        0.45 (1.90)     .81
   er      Corr (Levels)                                    ---                        ---       -0.00 (0.10)     .96
   er      Corr (Slopes)                                    ---                        ---       -0.30 (0.27)     .27
   er      Corr (Residuals)                                 ---                        ---        0.01 (0.05)     .81
    a      Level                          317.58 (7.80)    <.01      317.58 (7.80)    <.01      327.37 (8.78)    <.01
    a      Slope                           -8.87 (1.11)    <.01       -8.87 (1.11)    <.01       -7.01 (1.42)    <.01
    a      Level * age                     -5.27 (2.06)     .01       -5.27 (2.06)     .01       -6.15 (1.89)    <.01
    a      Level * education                3.15 (2.52)     .21        3.15 (2.52)     .21        5.56 (2.66)     .04
    a      Level * height                   2.55 (1.06)     .02        2.55 (1.06)     .02        2.63 (0.99)     .01
    a      Level * smoking                                  ---                        ---     -34.95 (12.81)     .01
    a      Level * cardio                                   ---                        ---       3.03 (10.23)     .77
    a      Level * diabetes                                 ---                        ---       3.40 (16.72)     .84
    a      Slope * age                      1.02 (0.34)    <.01        1.02 (0.34)    <.01        0.98 (0.35)     .01
    a      Slope * education               -0.38 (0.38)     .32       -0.38 (0.38)     .32       -0.26 (0.46)     .56
    a      Slope * height                  -0.23 (0.21)     .28       -0.23 (0.21)     .28       -0.21 (0.20)     .29
    a      Slope * smoking                                  ---                        ---       -3.28 (2.09)     .12
    a      Slope * cardio                                   ---                        ---       -2.82 (1.69)     .09
    a      Slope * diabetes                                 ---                        ---        3.67 (3.60)     .31
    b      Level                            5.66 (0.11)    <.01        5.66 (0.11)    <.01        5.67 (0.12)    <.01
    b      Slope                           -0.06 (0.02)    <.01       -0.06 (0.02)    <.01       -0.07 (0.02)    <.01
    b      Level * age                     -0.08 (0.02)    <.01       -0.08 (0.02)    <.01       -0.08 (0.02)    <.01
    b      Level * education                0.13 (0.03)    <.01        0.13 (0.03)    <.01        0.14 (0.03)    <.01
    b      Level * height                   0.01 (0.01)     .49        0.01 (0.01)     .49        0.01 (0.01)     .46
    b      Level * smoking                                  ---                        ---       -0.15 (0.14)     .28
    b      Level * cardio                                   ---                        ---        0.05 (0.12)     .67
    b      Level * diabetes                                 ---                        ---        0.08 (0.26)     .76
    b      Slope * age                      0.00 (0.00)     .65        0.00 (0.00)     .65        0.00 (0.00)     .52
    b      Slope * education               -0.01 (0.00)     .05       -0.01 (0.00)     .05       -0.01 (0.00)     .01
    b      Slope * height                  -0.00 (0.00)     .40       -0.00 (0.00)     .40       -0.00 (0.00)     .38
    b      Slope * smoking                                  ---                        ---        0.05 (0.03)     .08
    b      Slope * cardio                                   ---                        ---       -0.00 (0.02)     .84
    b      Slope * diabetes                                 ---                        ---        0.01 (0.05)     .91
    a      Var (Level)                 4452.36 (532.25)    <.01   4452.36 (532.25)    <.01   4245.53 (511.12)    <.01
    a      Var (Slope)                    33.19 (16.50)     .04      33.19 (16.50)     .04      29.67 (15.84)     .06
    a      Var (Residual)              2121.24 (185.44)    <.01   2121.24 (185.44)    <.01   2113.16 (184.42)    <.01
    b      Var (Level)                      0.55 (0.07)    <.01        0.55 (0.07)    <.01        0.55 (0.07)    <.01
    b      Var (Slope)                      0.01 (0.00)     .04        0.01 (0.00)     .04        0.01 (0.00)     .04
    b      Var (Residual)                   0.61 (0.04)    <.01        0.61 (0.04)    <.01        0.61 (0.04)    <.01
    a      Covar (Level, Slope)         -156.21 (95.74)     .10    -156.21 (95.74)     .10    -166.11 (86.49)     .06
    b      Covar (Level, Slope)            -0.04 (0.01)     .01       -0.04 (0.01)     .01       -0.04 (0.01)    <.01
    \      Correlation of Levels                         0.0266                     0.0266                    -0.0054
    \      Correlation of Slopes                        -0.2913                    -0.2913                    -0.2939
    \      Correlation of Residuals                      0.0086                     0.0086                     0.0124
    \      N                                                276                        276                        275
    \      occasions                                          5                          5                          5
    \      parameters                                        NA                         NA                         41
    \      LL                                            -5,211                     -5,211                     -5,192
    \      AIC                                           10,480                     10,480                     10,465
    \      BIC                                           10,585                     10,585                     10,614

##  fig_logic 

 Gender = _female_;  Process (a) = *pef*; Process (b) = _fig_logic_


 process   label                                              a                        aeh
---------  -------------------------  -------------------------  -------------------------
   ab      Covar (Levels)                 49.67 (22.80)     .03      40.41 (23.29)     .08
   ab      Covar (Slopes)                   0.09 (0.69)     .90        0.10 (0.72)     .88
   ab      Covar (Residuals)                3.83 (7.91)     .63        3.09 (8.14)     .70
   er      Corr (Levels)                                    ---                        ---
   er      Corr (Slopes)                                    ---                        ---
   er      Corr (Residuals)                                 ---                        ---
    a      Level                          311.71 (7.14)    <.01      318.23 (7.80)    <.01
    a      Slope                           -8.61 (1.11)    <.01       -8.98 (1.12)    <.01
    a      Level * age                     -5.98 (1.92)    <.01       -5.44 (2.05)     .01
    a      Level * education                                ---        3.23 (2.51)     .20
    a      Level * height                                   ---        2.58 (1.06)     .01
    a      Level * smoking                                  ---                        ---
    a      Level * cardio                                   ---                        ---
    a      Level * diabetes                                 ---                        ---
    a      Slope * age                      1.10 (0.36)    <.01        1.00 (0.34)    <.01
    a      Slope * education                                ---       -0.37 (0.38)     .33
    a      Slope * height                                   ---       -0.24 (0.21)     .25
    a      Slope * smoking                                  ---                        ---
    a      Slope * cardio                                   ---                        ---
    a      Slope * diabetes                                 ---                        ---
    b      Level                           16.57 (0.39)    <.01       16.66 (0.40)    <.01
    b      Slope                           -0.07 (0.07)     .33       -0.05 (0.08)     .52
    b      Level * age                     -0.25 (0.09)    <.01       -0.26 (0.10)     .01
    b      Level * education                                ---        0.22 (0.12)     .07
    b      Level * height                                   ---       -0.01 (0.05)     .74
    b      Level * smoking                                  ---                        ---
    b      Level * cardio                                   ---                        ---
    b      Level * diabetes                                 ---                        ---
    b      Slope * age                     -0.00 (0.02)     .85       -0.00 (0.02)     .85
    b      Slope * education                                ---       -0.02 (0.03)     .51
    b      Slope * height                                   ---        0.01 (0.01)     .45
    b      Slope * smoking                                  ---                        ---
    b      Slope * cardio                                   ---                        ---
    b      Slope * diabetes                                 ---                        ---
    a      Var (Level)                 4837.50 (557.41)    <.01   4451.45 (528.76)    <.01
    a      Var (Slope)                    34.69 (16.31)     .03      32.45 (16.52)     .05
    a      Var (Residual)              2103.22 (184.08)    <.01   2119.44 (185.06)    <.01
    b      Var (Level)                      8.59 (1.36)    <.01        7.76 (1.21)    <.01
    b      Var (Slope)                      0.08 (0.04)     .07        0.09 (0.05)     .06
    b      Var (Residual)                   8.03 (0.63)    <.01        8.02 (0.60)    <.01
    a      Covar (Level, Slope)         -176.36 (98.13)     .07    -151.03 (95.99)     .12
    b      Covar (Level, Slope)            -0.36 (0.19)     .06       -0.36 (0.18)     .05
    \      Correlation of Levels                          0.244                      0.217
    \      Correlation of Slopes                          0.053                      0.062
    \      Correlation of Residuals                       0.029                      0.024
    \      N                                                284                        268
    \      occasions                                          5                          5
    \      parameters                                        NA                         NA
    \      LL                                            -6,051                     -5,892
    \      AIC                                           12,144                     11,842
    \      BIC                                           12,221                     11,946

##  mir 

 Gender = _female_;  Process (a) = *pef*; Process (b) = _mir_


 process   label                                              a                        aeh
---------  -------------------------  -------------------------  -------------------------
   ab      Covar (Levels)                 19.86 (12.58)     .11      13.27 (10.63)     .21
   ab      Covar (Slopes)                   0.42 (0.43)     .33        0.44 (0.44)     .32
   ab      Covar (Residuals)                3.65 (3.68)     .32        3.47 (3.92)     .38
   er      Corr (Levels)                                    ---                        ---
   er      Corr (Slopes)                                    ---                        ---
   er      Corr (Residuals)                                 ---                        ---
    a      Level                          311.04 (7.11)    <.01      317.75 (7.82)    <.01
    a      Slope                           -8.41 (1.10)    <.01       -8.90 (1.10)    <.01
    a      Level * age                     -5.93 (1.93)    <.01       -5.41 (2.06)     .01
    a      Level * education                                ---        3.29 (2.51)     .19
    a      Level * height                                   ---        2.52 (1.06)     .02
    a      Level * smoking                                  ---                        ---
    a      Level * cardio                                   ---                        ---
    a      Level * diabetes                                 ---                        ---
    a      Slope * age                      1.00 (0.38)     .01        0.92 (0.37)     .01
    a      Slope * education                                ---       -0.26 (0.38)     .50
    a      Slope * height                                   ---       -0.24 (0.21)     .25
    a      Slope * smoking                                  ---                        ---
    a      Slope * cardio                                   ---                        ---
    a      Slope * diabetes                                 ---                        ---
    b      Level                            7.62 (0.19)    <.01        7.79 (0.18)    <.01
    b      Slope                           -0.06 (0.05)     .22       -0.05 (0.05)     .28
    b      Level * age                     -0.15 (0.05)    <.01       -0.16 (0.05)    <.01
    b      Level * education                                ---        0.03 (0.07)     .68
    b      Level * height                                   ---       -0.01 (0.02)     .45
    b      Level * smoking                                  ---                        ---
    b      Level * cardio                                   ---                        ---
    b      Level * diabetes                                 ---                        ---
    b      Slope * age                     -0.02 (0.01)     .12       -0.02 (0.01)     .18
    b      Slope * education                                ---       -0.01 (0.02)     .71
    b      Slope * height                                   ---        0.00 (0.01)     .38
    b      Slope * smoking                                  ---                        ---
    b      Slope * cardio                                   ---                        ---
    b      Slope * diabetes                                 ---                        ---
    a      Var (Level)                 4855.37 (562.46)    <.01   4455.71 (528.11)    <.01
    a      Var (Slope)                    32.46 (16.64)     .05      30.44 (16.47)     .06
    a      Var (Residual)              2112.86 (185.23)    <.01   2127.15 (186.88)    <.01
    b      Var (Level)                      3.18 (0.53)    <.01        2.44 (0.48)    <.01
    b      Var (Slope)                      0.09 (0.02)    <.01        0.09 (0.02)    <.01
    b      Var (Residual)                   1.88 (0.16)    <.01        1.85 (0.17)    <.01
    a      Covar (Level, Slope)        -166.05 (101.90)     .10    -138.59 (97.13)     .15
    b      Covar (Level, Slope)            -0.03 (0.07)     .66       -0.02 (0.07)     .81
    \      Correlation of Levels                          0.160                      0.127
    \      Correlation of Slopes                          0.244                      0.263
    \      Correlation of Residuals                       0.058                      0.055
    \      N                                                293                        271
    \      occasions                                          5                          5
    \      parameters                                        NA                         NA
    \      LL                                            -5,878                     -5,691
    \      AIC                                           11,799                     11,439
    \      BIC                                           11,876                     11,544

##  prose_im 

 Gender = _female_;  Process (a) = *pef*; Process (b) = _prose_im_


 process   label                                              a                        aeh                    aehplus                       full
---------  -------------------------  -------------------------  -------------------------  -------------------------  -------------------------
   ab      Covar (Levels)                 33.88 (18.89)     .07      23.60 (17.91)     .19      28.79 (16.85)     .09      24.09 (17.44)     .17
   ab      Covar (Slopes)                   0.11 (0.56)     .85        0.10 (0.57)     .86       -0.08 (0.54)     .88       -0.01 (0.52)     .99
   ab      Covar (Residuals)                7.21 (5.58)     .20        7.11 (6.22)     .25        7.21 (5.67)     .20        6.29 (5.61)     .26
   er      Corr (Levels)                                    ---                        ---        0.16 (0.09)     .08                        ---
   er      Corr (Slopes)                                    ---                        ---       -0.05 (0.35)     .88                        ---
   er      Corr (Residuals)                                 ---                        ---        0.08 (0.06)     .21                        ---
    a      Level                          310.75 (7.12)    <.01      317.44 (7.80)    <.01      327.36 (8.75)    <.01     337.33 (26.67)    <.01
    a      Slope                           -8.45 (1.11)    <.01       -8.90 (1.12)    <.01       -7.03 (1.41)    <.01       -9.23 (3.68)     .01
    a      Level * age                     -5.87 (1.91)    <.01       -5.38 (2.05)     .01       -6.21 (1.90)    <.01      -15.85 (8.10)     .05
    a      Level * education                                ---        3.28 (2.54)     .20        5.76 (2.67)     .03      -1.13 (11.90)     .92
    a      Level * height                                   ---        2.54 (1.06)     .02        2.63 (0.99)     .01                        ---
    a      Level * smoking                                  ---                        ---     -35.27 (12.76)     .01                        ---
    a      Level * cardio                                   ---                        ---       2.73 (10.15)     .79                        ---
    a      Level * diabetes                                 ---                        ---       1.95 (16.70)     .91                        ---
    a      Slope * age                      1.08 (0.37)    <.01        0.99 (0.36)     .01        0.93 (0.37)     .01        1.10 (1.40)     .43
    a      Slope * education                                ---       -0.34 (0.38)     .36       -0.24 (0.46)     .60       -0.76 (1.52)     .62
    a      Slope * height                                   ---       -0.23 (0.21)     .27       -0.21 (0.20)     .29                        ---
    a      Slope * smoking                                  ---                        ---       -3.36 (2.03)     .10                        ---
    a      Slope * cardio                                   ---                        ---       -2.75 (1.66)     .10                        ---
    a      Slope * diabetes                                 ---                        ---        4.10 (3.58)     .25                        ---
    b      Level                           11.13 (0.31)    <.01       11.30 (0.34)    <.01       11.15 (0.40)    <.01       13.17 (1.08)    <.01
    b      Slope                           -0.12 (0.06)     .04       -0.10 (0.05)     .06       -0.04 (0.07)     .53       -0.20 (0.17)     .24
    b      Level * age                     -0.27 (0.08)    <.01       -0.28 (0.08)    <.01       -0.25 (0.08)    <.01       -0.39 (0.28)     .17
    b      Level * education                                ---        0.47 (0.11)    <.01        0.46 (0.10)    <.01       -0.06 (0.49)     .91
    b      Level * height                                   ---        0.01 (0.04)     .79        0.01 (0.04)     .76                        ---
    b      Level * smoking                                  ---                        ---        0.26 (0.49)     .60                        ---
    b      Level * cardio                                   ---                        ---        0.21 (0.43)     .61                        ---
    b      Level * diabetes                                 ---                        ---       -1.80 (1.14)     .11                        ---
    b      Slope * age                      0.02 (0.02)     .17        0.03 (0.01)     .06        0.02 (0.02)     .14       -0.04 (0.07)     .60
    b      Slope * education                                ---       -0.05 (0.02)     .01       -0.04 (0.02)     .03       -0.05 (0.08)     .51
    b      Slope * height                                   ---        0.01 (0.01)     .35        0.01 (0.01)     .37                        ---
    b      Slope * smoking                                  ---                        ---       -0.13 (0.10)     .18                        ---
    b      Slope * cardio                                   ---                        ---       -0.06 (0.09)     .47                        ---
    b      Slope * diabetes                                 ---                        ---        0.11 (0.19)     .56                        ---
    a      Var (Level)                 4855.17 (560.20)    <.01   4471.46 (532.50)    <.01   4267.99 (513.74)    <.01   4735.04 (558.71)    <.01
    a      Var (Slope)                    34.86 (16.30)     .03      32.86 (16.67)     .05      29.02 (16.16)     .07      34.21 (17.33)     .05
    a      Var (Residual)              2097.00 (185.26)    <.01   2111.63 (186.41)    <.01   2107.34 (186.01)    <.01   2095.59 (185.44)    <.01
    b      Var (Level)                      9.71 (1.18)    <.01        8.00 (1.02)    <.01        7.80 (1.04)    <.01        7.98 (1.01)    <.01
    b      Var (Slope)                      0.11 (0.04)     .01        0.09 (0.03)     .01        0.08 (0.03)     .01        0.08 (0.03)     .01
    b      Var (Residual)                   4.35 (0.38)    <.01        4.33 (0.38)    <.01        4.32 (0.38)    <.01        4.33 (0.37)    <.01
    a      Covar (Level, Slope)         -172.74 (97.64)     .08    -148.82 (96.42)     .12    -160.95 (87.45)     .07    -166.64 (99.86)     .10
    b      Covar (Level, Slope)            -0.54 (0.18)    <.01       -0.42 (0.15)    <.01       -0.40 (0.15)     .01       -0.39 (0.14)     .01
    \      Correlation of Levels                          0.156                      0.125                      0.158                     0.1240
    \      Correlation of Slopes                          0.055                      0.059                     -0.051                    -0.0035
    \      Correlation of Residuals                       0.076                      0.074                      0.076                     0.0661
    \      N                                                289                        268                        267                        286
    \      occasions                                          5                          5                          5                          5
    \      parameters                                        NA                         NA                         41                         NA
    \      LL                                            -6,071                     -5,868                     -5,845                     -6,033
    \      AIC                                           12,185                     11,794                     11,773                     12,157
    \      BIC                                           12,262                     11,898                     11,920                     12,321

##  symbol 

 Gender = _female_;  Process (a) = *pef*; Process (b) = _symbol_


 process   label                                              a                        aeh                    aehplus
---------  -------------------------  -------------------------  -------------------------  -------------------------
   ab      Covar (Levels)                247.25 (53.52)    <.01     203.08 (47.84)    <.01     202.30 (47.72)    <.01
   ab      Covar (Slopes)                   3.00 (1.09)     .01        3.02 (1.10)     .01        2.24 (1.04)     .03
   ab      Covar (Residuals)               9.30 (13.79)     .50       9.97 (14.57)     .49       8.29 (13.50)     .54
   er      Corr (Levels)                                    ---                        ---        0.38 (0.08)    <.01
   er      Corr (Slopes)                                    ---                        ---        0.66 (0.18)    <.01
   er      Corr (Residuals)                                 ---                        ---        0.03 (0.06)     .54
    a      Level                          310.77 (7.14)    <.01      317.53 (7.81)    <.01      327.75 (8.80)    <.01
    a      Slope                           -8.43 (1.10)    <.01       -8.93 (1.08)    <.01       -7.13 (1.40)    <.01
    a      Level * age                     -6.17 (1.91)    <.01       -5.53 (2.03)     .01       -6.37 (1.88)    <.01
    a      Level * education                                ---        3.21 (2.56)     .21        5.64 (2.69)     .04
    a      Level * height                                   ---        2.59 (1.05)     .01        2.68 (0.98)     .01
    a      Level * smoking                                  ---                        ---     -35.14 (12.64)    <.01
    a      Level * cardio                                   ---                        ---       2.08 (10.17)     .84
    a      Level * diabetes                                 ---                        ---       3.77 (16.59)     .82
    a      Slope * age                      1.12 (0.35)    <.01        1.03 (0.33)    <.01        0.97 (0.35)    <.01
    a      Slope * education                                ---       -0.28 (0.40)     .49       -0.19 (0.47)     .69
    a      Slope * height                                   ---       -0.24 (0.21)     .26       -0.21 (0.20)     .28
    a      Slope * smoking                                  ---                        ---       -3.19 (2.05)     .12
    a      Slope * cardio                                   ---                        ---       -2.84 (1.69)     .09
    a      Slope * diabetes                                 ---                        ---        3.83 (3.48)     .27
    b      Level                           28.41 (1.01)    <.01       28.60 (1.07)    <.01       28.46 (1.19)    <.01
    b      Slope                           -0.49 (0.15)    <.01       -0.49 (0.15)    <.01       -0.10 (0.19)     .62
    b      Level * age                     -0.90 (0.26)    <.01       -0.81 (0.28)    <.01       -0.80 (0.26)    <.01
    b      Level * education                                ---        1.57 (0.37)    <.01        1.66 (0.37)    <.01
    b      Level * height                                   ---        0.08 (0.12)     .52        0.08 (0.11)     .48
    b      Level * smoking                                  ---                        ---       -0.69 (1.67)     .68
    b      Level * cardio                                   ---                        ---        0.94 (1.27)     .46
    b      Level * diabetes                                 ---                        ---       -2.41 (3.15)     .44
    b      Slope * age                      0.01 (0.04)     .84        0.02 (0.04)     .62        0.00 (0.04)     .98
    b      Slope * education                                ---       -0.03 (0.06)     .61       -0.05 (0.06)     .43
    b      Slope * height                                   ---        0.01 (0.02)     .56        0.01 (0.02)     .43
    b      Slope * smoking                                  ---                        ---       -0.30 (0.27)     .27
    b      Slope * cardio                                   ---                        ---       -0.78 (0.19)    <.01
    b      Slope * diabetes                                 ---                        ---        1.76 (0.44)    <.01
    a      Var (Level)                 4843.85 (550.92)    <.01   4462.18 (518.63)    <.01   4257.36 (501.41)    <.01
    a      Var (Slope)                    32.79 (14.30)     .02      31.45 (14.50)     .03      28.33 (14.13)     .04
    a      Var (Residual)              2111.20 (183.83)    <.01   2120.80 (184.28)    <.01   2110.74 (182.56)    <.01
    b      Var (Level)                     84.39 (9.01)    <.01       67.92 (7.94)    <.01       67.85 (7.76)    <.01
    b      Var (Slope)                      0.62 (0.16)    <.01        0.62 (0.15)    <.01        0.41 (0.13)    <.01
    b      Var (Residual)                  28.13 (2.37)    <.01       27.89 (2.33)    <.01       27.74 (2.32)    <.01
    a      Covar (Level, Slope)         -170.91 (92.41)     .06    -150.20 (90.32)     .10    -159.72 (81.41)     .05
    b      Covar (Level, Slope)            -3.04 (0.94)    <.01       -2.66 (0.87)    <.01       -2.21 (0.89)     .01
    \      Correlation of Levels                          0.387                      0.369                      0.376
    \      Correlation of Slopes                          0.667                      0.684                      0.659
    \      Correlation of Residuals                       0.038                      0.041                      0.034
    \      N                                                278                        264                        263
    \      occasions                                          5                          5                          5
    \      parameters                                        NA                         NA                         41
    \      LL                                            -6,592                     -6,397                     -6,368
    \      AIC                                           13,225                     12,852                     12,817
    \      BIC                                           13,302                     12,955                     12,964

## Summary 

 Study = _OCTO_; Gender = _female_; Process (a) = _pef_

 Computed correlations:

 

label                    process_b      a    aeh   aehplus   full
----------------------  ----------  -----  -----  --------  -----
Correlation of Levels        block   0.29   0.25      0.23   0.24
Correlation of Levels      digit_b   0.20   0.21      0.19      .
Correlation of Levels      digit_f   0.03   0.03     -0.01      .
Correlation of Levels    fig_logic   0.24   0.22         .      .
Correlation of Levels          mir   0.16   0.13         .      .
Correlation of Levels     prose_im   0.16   0.12      0.16   0.12
Correlation of Levels       symbol   0.39   0.37      0.38      .




label                    process_b       a     aeh   aehplus    full
----------------------  ----------  ------  ------  --------  ------
Correlation of Slopes        block    0.11    0.12      0.02    0.06
Correlation of Slopes      digit_b    0.06    0.18      0.15       .
Correlation of Slopes      digit_f   -0.29   -0.29     -0.29       .
Correlation of Slopes    fig_logic    0.05    0.06         .       .
Correlation of Slopes          mir    0.24    0.26         .       .
Correlation of Slopes     prose_im    0.05    0.06     -0.05   -0.00
Correlation of Slopes       symbol    0.67    0.68      0.66       .




label                       process_b      a    aeh   aehplus   full
-------------------------  ----------  -----  -----  --------  -----
Correlation of Residuals        block   0.15   0.15      0.15   0.14
Correlation of Residuals      digit_b   0.01   0.01      0.02      .
Correlation of Residuals      digit_f   0.01   0.01      0.01      .
Correlation of Residuals    fig_logic   0.03   0.02         .      .
Correlation of Residuals          mir   0.06   0.06         .      .
Correlation of Residuals     prose_im   0.08   0.07      0.08   0.07
Correlation of Residuals       symbol   0.04   0.04      0.03      .



P-values for corresponding covariances: 

 

label                   process_b      a    aeh   aehplus   full
---------------------  ----------  -----  -----  --------  -----
Covariance of Levels        block   0.00   0.01      0.01   0.01
Covariance of Levels      digit_b   0.10   0.10      0.13      .
Covariance of Levels      digit_f   0.79   0.79      0.96      .
Covariance of Levels    fig_logic   0.03   0.08         .      .
Covariance of Levels          mir   0.11   0.21         .      .
Covariance of Levels     prose_im   0.07   0.19      0.09   0.17
Covariance of Levels       symbol   0.00   0.00      0.00      .




label                   process_b      a    aeh   aehplus   full
---------------------  ----------  -----  -----  --------  -----
Covariance of Slopes        block   0.70   0.68      0.96   0.84
Covariance of Slopes      digit_b   0.92   0.77      0.76      .
Covariance of Slopes      digit_f   0.29   0.29      0.31      .
Covariance of Slopes    fig_logic   0.90   0.88         .      .
Covariance of Slopes          mir   0.33   0.32         .      .
Covariance of Slopes     prose_im   0.85   0.86      0.88   0.99
Covariance of Slopes       symbol   0.01   0.01      0.03      .




label                       process_b      a    aeh   aehplus   full
-------------------------  ----------  -----  -----  --------  -----
Covariance of  Residuals        block   0.02   0.02      0.02   0.02
Covariance of  Residuals      digit_b   0.90   0.85      0.74      .
Covariance of  Residuals      digit_f   0.87   0.87      0.81      .
Covariance of  Residuals    fig_logic   0.63   0.70         .      .
Covariance of  Residuals          mir   0.32   0.38         .      .
Covariance of  Residuals     prose_im   0.20   0.25      0.20   0.26
Covariance of  Residuals       symbol   0.50   0.49      0.54      .



# male 

 Gender = _male_; Model type: _aehplus_;  Process (a) = _pef_; Process (b): *block*, *digit_b*, *digit_f*, *fig_logic*, *mir*, *prose_im*, *symbol*


 process   label                                           block                     digit_b                     digit_f                    prose_im                      symbol      mean(sd)    
---------  -------------------------  --------------------------  --------------------------  --------------------------  --------------------------  --------------------------  ----------------
   ab      Covar (Levels)                 158.68 (59.03)     .01       28.91 (13.02)     .03       -7.21 (10.70)     .50       63.89 (39.48)     .11      244.57 (90.32)     .01        ---       
   ab      Covar (Slopes)                    1.05 (0.81)     .19         0.33 (0.37)     .38         0.36 (0.19)     .05        -0.17 (0.42)     .68         3.13 (1.56)     .04        ---       
   ab      Covar (Residuals)               19.93 (11.14)     .07        -5.13 (4.88)     .29         0.45 (2.34)     .85       11.87 (14.47)     .41       -9.63 (18.28)     .60        ---       
   er      Corr (Levels)                     0.30 (0.11)    <.01         0.30 (0.13)     .02        -0.09 (0.13)     .50         0.22 (0.13)     .09         0.31 (0.10)    <.01        ---       
   er      Corr (Slopes)                     0.75 (0.17)    <.01         0.36 (0.41)     .37         0.63 (0.17)    <.01        -0.26 (0.53)     .62         0.73 (0.15)    <.01        ---       
   er      Corr (Residuals)                  0.11 (0.06)     .07        -0.09 (0.08)     .27         0.01 (0.06)     .85         0.10 (0.12)     .41        -0.04 (0.08)     .60        ---       
    a      Level                          464.58 (23.32)    <.01      466.55 (23.55)    <.01      469.38 (23.60)    <.01      465.57 (23.57)    <.01      463.73 (23.41)    <.01    465.96(2.18)  
    a      Slope                            -3.65 (3.42)     .29        -3.18 (3.63)     .38        -4.53 (3.48)     .19        -3.29 (3.71)     .38        -3.27 (3.62)     .37    -3.58(0.56)   
    a      Level * age                     -12.12 (4.20)    <.01       -11.58 (4.09)    <.01       -11.48 (4.15)     .01       -12.13 (4.14)    <.01       -11.96 (4.16)    <.01    -11.85(0.31)  
    a      Level * education                 6.95 (2.11)    <.01         6.77 (2.12)    <.01         6.98 (2.10)    <.01         7.03 (2.10)    <.01         6.98 (2.11)    <.01     6.94(0.10)   
    a      Level * height                    2.11 (1.48)     .15         2.04 (1.48)     .17         2.11 (1.50)     .16         2.12 (1.47)     .15         2.10 (1.47)     .15     2.09(0.03)   
    a      Level * smoking                -32.02 (21.78)     .14      -33.68 (21.90)     .12      -36.65 (21.80)     .09      -33.30 (21.76)     .13      -31.07 (21.41)     .15    -33.35(2.12)  
    a      Level * cardio                 -21.12 (19.57)     .28      -22.01 (19.62)     .26      -22.91 (19.64)     .24      -21.06 (19.60)     .28      -20.79 (19.62)     .29    -21.58(0.87)  
    a      Level * diabetes                43.86 (26.90)     .10       41.15 (26.42)     .12       43.66 (27.32)     .11       39.26 (28.12)     .16       44.25 (27.02)     .10    42.44(2.15)   
    a      Slope * age                       0.14 (0.96)     .88         0.02 (0.95)     .98         0.18 (0.96)     .85         0.14 (0.95)     .88         0.26 (0.94)     .78     0.15(0.09)   
    a      Slope * education                -0.36 (0.59)     .54        -0.48 (0.58)     .41        -0.44 (0.56)     .44        -0.40 (0.58)     .48        -0.43 (0.54)     .43    -0.42(0.04)   
    a      Slope * height                    0.23 (0.26)     .38         0.26 (0.26)     .33         0.28 (0.26)     .29         0.22 (0.26)     .39         0.27 (0.26)     .29     0.25(0.03)   
    a      Slope * smoking                  -4.95 (3.41)     .15        -5.16 (3.57)     .15        -5.22 (3.35)     .12        -5.28 (3.40)     .12        -5.73 (3.34)     .09    -5.27(0.29)   
    a      Slope * cardio                   -2.46 (3.04)     .42        -2.87 (3.18)     .37        -1.79 (2.97)     .55        -2.61 (3.15)     .41        -2.60 (2.97)     .38    -2.47(0.41)   
    a      Slope * diabetes                 -6.08 (4.09)     .14        -4.40 (4.19)     .29        -5.16 (3.79)     .17        -5.43 (4.28)     .20        -6.18 (3.92)     .12    -5.45(0.73)   
    b      Level                            16.78 (1.48)    <.01         3.97 (0.26)    <.01         6.02 (0.25)    <.01        11.03 (0.76)    <.01        31.50 (2.41)    <.01        ---       
    b      Slope                            -0.42 (0.17)     .01        -0.06 (0.09)     .47        -0.10 (0.06)     .08         0.13 (0.16)     .40        -0.54 (0.33)     .10        ---       
    b      Level * age                      -0.49 (0.22)     .03        -0.08 (0.04)     .08        -0.02 (0.03)     .41        -0.27 (0.12)     .02        -0.67 (0.37)     .07        ---       
    b      Level * education                 0.62 (0.19)    <.01         0.12 (0.03)    <.01         0.07 (0.02)     .01         0.42 (0.09)    <.01         1.71 (0.24)    <.01        ---       
    b      Level * height                    0.15 (0.09)     .08         0.00 (0.02)     .90         0.01 (0.01)     .42         0.01 (0.06)     .91         0.25 (0.12)     .04        ---       
    b      Level * smoking                  -3.60 (1.44)     .01        -0.19 (0.28)     .49        -0.47 (0.23)     .04        -0.82 (0.80)     .30        -5.97 (2.28)     .01        ---       
    b      Level * cardio                   -0.78 (1.11)     .49        -0.57 (0.24)     .02        -0.01 (0.19)     .94        -0.48 (0.69)     .49        -1.66 (1.77)     .35        ---       
    b      Level * diabetes                 -2.36 (1.29)     .07        -0.30 (0.43)     .49        -0.04 (0.27)     .89         0.87 (0.93)     .35        -1.92 (2.27)     .40        ---       
    b      Slope * age                       0.04 (0.03)     .19         0.00 (0.01)     .91        -0.01 (0.01)     .08        -0.00 (0.05)     .91         0.04 (0.07)     .54        ---       
    b      Slope * education                 0.02 (0.04)     .61        -0.00 (0.01)     .72         0.01 (0.01)     .21        -0.01 (0.01)     .63         0.02 (0.05)     .73        ---       
    b      Slope * height                   -0.00 (0.01)     .77         0.01 (0.00)     .10        -0.00 (0.00)     .18         0.01 (0.01)     .20        -0.02 (0.02)     .29        ---       
    b      Slope * smoking                   0.02 (0.15)     .91        -0.04 (0.08)     .64         0.06 (0.05)     .21        -0.15 (0.12)     .23         0.10 (0.31)     .74        ---       
    b      Slope * cardio                   -0.15 (0.16)     .35         0.09 (0.06)     .11        -0.02 (0.04)     .52        -0.16 (0.11)     .13        -0.14 (0.26)     .59        ---       
    b      Slope * diabetes                  0.33 (0.29)     .26        -0.03 (0.12)     .78         0.00 (0.05)     .96        -0.20 (0.18)     .26        -0.20 (0.49)     .68        ---       
    a      Var (Level)                 8396.19 (1398.80)    <.01   8379.63 (1437.60)    <.01   8305.93 (1369.68)    <.01   8318.76 (1411.15)    <.01   8372.76 (1412.60)    <.01   8354.65(39.81) 
    a      Var (Slope)                     37.14 (18.63)     .05       38.96 (23.14)     .09       27.92 (11.78)     .02       35.05 (21.25)     .10       39.41 (16.27)     .01    35.70(4.68)   
    a      Var (Residual)               3322.17 (419.52)    <.01    3327.42 (416.10)    <.01    3391.62 (399.44)    <.01    3350.55 (427.87)    <.01    3295.66 (403.32)    <.01   3337.48(36.01) 
    b      Var (Level)                      32.27 (4.94)    <.01         1.07 (0.26)    <.01         0.81 (0.17)    <.01        10.17 (1.71)    <.01       73.70 (10.62)    <.01        ---       
    b      Var (Slope)                       0.05 (0.05)     .27         0.02 (0.01)     .17         0.01 (0.00)    <.01         0.01 (0.01)     .22         0.47 (0.22)     .03        ---       
    b      Var (Residual)                    9.21 (1.01)    <.01         0.95 (0.14)    <.01         0.52 (0.07)    <.01         4.11 (0.63)    <.01        17.14 (2.12)    <.01        ---       
    a      Covar (Level, Slope)         -296.60 (139.36)     .03    -300.33 (163.59)     .07    -274.76 (121.89)     .02    -285.99 (152.20)     .06    -281.62 (135.62)     .04   -287.86(10.56) 
    b      Covar (Level, Slope)             -0.06 (0.41)     .88        -0.09 (0.05)     .06        -0.07 (0.02)    <.01        -0.16 (0.16)     .31        -3.00 (1.07)    <.01        ---       
    \      Correlation of Levels                            0.30                       0.305                      -0.088                        0.22                       0.311     0.21(0.17)   
    \      Correlation of Slopes                            0.75                       0.363                       0.620                       -0.25                       0.727     0.44(0.42)   
    \      Correlation of Residuals                         0.11                      -0.091                       0.011                        0.10                      -0.041     0.02(0.09)   
    \      N                                                 136                         138                         138                         136                         133    136.20(2.05)  
    \      occasions                                           5                           5                           5                           5                           5     5.00(0.00)   
    \      parameters                                         41                          41                          41                          41                          41    41.00(0.00)   
    \      LL                                             -3,179                      -2,724                      -2,614                      -2,871                      -3,202    -2,918(265)   
    \      AIC                                             6,440                       5,529                       5,310                       5,823                       6,486     5,918(530)   
    \      BIC                                             6,559                       5,649                       5,430                       5,943                       6,604     6,037(530)   

##  block 

 Gender = _male_;  Process (a) = *pef*; Process (b) = _block_


 process   label                                               a                         aeh                     aehplus                        full
---------  -------------------------  --------------------------  --------------------------  --------------------------  --------------------------
   ab      Covar (Levels)                 281.76 (75.41)    <.01      186.56 (65.28)    <.01      158.68 (59.03)     .01      220.61 (70.29)    <.01
   ab      Covar (Slopes)                    1.05 (0.87)     .23         1.12 (0.74)     .13         1.05 (0.81)     .19         0.65 (0.72)     .37
   ab      Covar (Residuals)               15.41 (10.86)     .16       17.25 (12.22)     .16       19.93 (11.14)     .07       15.78 (10.39)     .13
   er      Corr (Levels)                                     ---                         ---         0.30 (0.11)    <.01                         ---
   er      Corr (Slopes)                                     ---                         ---         0.75 (0.17)    <.01                         ---
   er      Corr (Residuals)                                  ---                         ---         0.11 (0.06)     .07                         ---
    a      Level                          430.61 (15.04)    <.01      434.69 (16.27)    <.01      464.58 (23.32)    <.01      453.26 (45.59)    <.01
    a      Slope                           -10.48 (2.34)    <.01       -10.22 (2.26)    <.01        -3.65 (3.42)     .29        -1.07 (7.43)     .88
    a      Level * age                     -12.89 (4.19)    <.01       -12.51 (4.23)    <.01       -12.12 (4.20)    <.01       -11.86 (4.08)    <.01
    a      Level * education                                 ---         6.39 (1.95)    <.01         6.95 (2.11)    <.01         6.10 (2.94)     .04
    a      Level * height                                    ---         1.86 (1.44)     .20         2.11 (1.48)     .15                         ---
    a      Level * smoking                                   ---                         ---      -32.02 (21.78)     .14       -12.65 (9.20)     .17
    a      Level * cardio                                    ---                         ---      -21.12 (19.57)     .28                         ---
    a      Level * diabetes                                  ---                         ---       43.86 (26.90)     .10                         ---
    a      Slope * age                       0.74 (0.89)     .40         0.76 (0.90)     .40         0.14 (0.96)     .88         0.31 (0.95)     .74
    a      Slope * education                                 ---        -0.43 (0.60)     .48        -0.36 (0.59)     .54        -0.25 (1.30)     .85
    a      Slope * height                                    ---         0.17 (0.24)     .47         0.23 (0.26)     .38                         ---
    a      Slope * smoking                                   ---                         ---        -4.95 (3.41)     .15        -1.20 (1.56)     .44
    a      Slope * cardio                                    ---                         ---        -2.46 (3.04)     .42                         ---
    a      Slope * diabetes                                  ---                         ---        -6.08 (4.09)     .14                         ---
    b      Level                            13.25 (0.88)    <.01        13.57 (0.90)    <.01        16.78 (1.48)    <.01        16.09 (2.63)    <.01
    b      Slope                            -0.47 (0.10)    <.01        -0.48 (0.11)    <.01        -0.42 (0.17)     .01        -0.23 (0.29)     .42
    b      Level * age                      -0.53 (0.22)     .02        -0.49 (0.24)     .04        -0.49 (0.22)     .03        -0.46 (0.21)     .03
    b      Level * education                                 ---         0.56 (0.21)     .01         0.62 (0.19)    <.01         0.65 (0.35)     .06
    b      Level * height                                    ---         0.15 (0.09)     .10         0.15 (0.09)     .08                         ---
    b      Level * smoking                                   ---                         ---        -3.60 (1.44)     .01        -1.58 (0.61)     .01
    b      Level * cardio                                    ---                         ---        -0.78 (1.11)     .49                         ---
    b      Level * diabetes                                  ---                         ---        -2.36 (1.29)     .07                         ---
    b      Slope * age                       0.04 (0.03)     .17         0.06 (0.03)     .09         0.04 (0.03)     .19         0.06 (0.03)     .05
    b      Slope * education                                 ---         0.03 (0.04)     .52         0.02 (0.04)     .61        -0.08 (0.07)     .22
    b      Slope * height                                    ---        -0.01 (0.01)     .60        -0.00 (0.01)     .77                         ---
    b      Slope * smoking                                   ---                         ---         0.02 (0.15)     .91         0.02 (0.07)     .74
    b      Slope * cardio                                    ---                         ---        -0.15 (0.16)     .35                         ---
    b      Slope * diabetes                                  ---                         ---         0.33 (0.29)     .26                         ---
    a      Var (Level)                 9797.10 (1518.91)    <.01   8792.77 (1435.27)    <.01   8396.19 (1398.80)    <.01   9168.60 (1431.36)    <.01
    a      Var (Slope)                     39.26 (21.76)     .07       39.02 (21.70)     .07       37.14 (18.63)     .05       33.59 (20.21)     .10
    a      Var (Residual)               3395.41 (423.66)    <.01    3381.56 (497.26)    <.01    3322.17 (419.52)    <.01    3376.31 (420.93)    <.01
    b      Var (Level)                      44.12 (5.63)    <.01        35.81 (5.58)    <.01        32.27 (4.94)    <.01        37.39 (4.81)    <.01
    b      Var (Slope)                       0.06 (0.07)     .37         0.04 (0.03)     .17         0.05 (0.05)     .27         0.05 (0.04)     .23
    b      Var (Residual)                    8.97 (1.02)    <.01         9.29 (1.00)    <.01         9.21 (1.01)    <.01         8.85 (0.96)    <.01
    a      Covar (Level, Slope)         -293.48 (164.06)     .07    -263.62 (141.14)     .06    -296.60 (139.36)     .03    -271.20 (149.72)     .07
    b      Covar (Level, Slope)              0.06 (0.41)     .89        -0.03 (0.38)     .94        -0.06 (0.41)     .88         0.13 (0.42)     .76
    \      Correlation of Levels                           0.429                       0.332                        0.30                       0.377
    \      Correlation of Slopes                           0.664                       0.848                        0.75                       0.521
    \      Correlation of Residuals                        0.088                       0.097                        0.11                       0.091
    \      N                                                 151                         136                         136                         151
    \      occasions                                           5                           5                           5                           5
    \      parameters                                         21                          NA                          41                          37
    \      LL                                             -3,352                      -3,191                      -3,179                      -3,336
    \      AIC                                             6,746                       6,441                       6,440                       6,745
    \      BIC                                             6,809                       6,525                       6,559                       6,857

##  digit_b 

 Gender = _male_;  Process (a) = *pef*; Process (b) = _digit_b_


 process   label                                               a                         aeh                     aehplus
---------  -------------------------  --------------------------  --------------------------  --------------------------
   ab      Covar (Levels)                  48.95 (16.50)    <.01       33.56 (13.51)     .01       28.91 (13.02)     .03
   ab      Covar (Slopes)                    0.36 (0.43)     .40         0.25 (0.43)     .56         0.33 (0.37)     .38
   ab      Covar (Residuals)                -5.22 (5.00)     .30        -5.05 (5.47)     .36        -5.13 (4.88)     .29
   er      Corr (Levels)                                     ---                         ---         0.30 (0.13)     .02
   er      Corr (Slopes)                                     ---                         ---         0.36 (0.41)     .37
   er      Corr (Residuals)                                  ---                         ---        -0.09 (0.08)     .27
    a      Level                          432.05 (14.94)    <.01      435.16 (16.32)    <.01      466.55 (23.55)    <.01
    a      Slope                           -10.44 (2.37)    <.01       -10.10 (2.30)    <.01        -3.18 (3.63)     .38
    a      Level * age                     -12.44 (4.11)    <.01       -12.08 (4.20)    <.01       -11.58 (4.09)    <.01
    a      Level * education                                 ---         6.22 (1.96)    <.01         6.77 (2.12)    <.01
    a      Level * height                                    ---         1.85 (1.42)     .19         2.04 (1.48)     .17
    a      Level * smoking                                   ---                         ---      -33.68 (21.90)     .12
    a      Level * cardio                                    ---                         ---      -22.01 (19.62)     .26
    a      Level * diabetes                                  ---                         ---       41.15 (26.42)     .12
    a      Slope * age                       0.72 (0.87)     .41         0.74 (0.87)     .40         0.02 (0.95)     .98
    a      Slope * education                                 ---        -0.47 (0.62)     .45        -0.48 (0.58)     .41
    a      Slope * height                                    ---         0.16 (0.23)     .50         0.26 (0.26)     .33
    a      Slope * smoking                                   ---                         ---        -5.16 (3.57)     .15
    a      Slope * cardio                                    ---                         ---        -2.87 (3.18)     .37
    a      Slope * diabetes                                  ---                         ---        -4.40 (4.19)     .29
    b      Level                             3.52 (0.17)    <.01         3.52 (0.18)    <.01         3.97 (0.26)    <.01
    b      Slope                            -0.05 (0.04)     .23        -0.05 (0.04)     .25        -0.06 (0.09)     .47
    b      Level * age                      -0.08 (0.04)     .07        -0.07 (0.04)     .11        -0.08 (0.04)     .08
    b      Level * education                                 ---         0.13 (0.03)    <.01         0.12 (0.03)    <.01
    b      Level * height                                    ---         0.00 (0.02)     .91         0.00 (0.02)     .90
    b      Level * smoking                                   ---                         ---        -0.19 (0.28)     .49
    b      Level * cardio                                    ---                         ---        -0.57 (0.24)     .02
    b      Level * diabetes                                  ---                         ---        -0.30 (0.43)     .49
    b      Slope * age                      -0.00 (0.01)     .91         0.00 (0.01)     .92         0.00 (0.01)     .91
    b      Slope * education                                 ---        -0.01 (0.01)     .42        -0.00 (0.01)     .72
    b      Slope * height                                    ---         0.01 (0.00)     .09         0.01 (0.00)     .10
    b      Slope * smoking                                   ---                         ---        -0.04 (0.08)     .64
    b      Slope * cardio                                    ---                         ---         0.09 (0.06)     .11
    b      Slope * diabetes                                  ---                         ---        -0.03 (0.12)     .78
    a      Var (Level)                 9680.47 (1536.90)    <.01   8710.34 (1477.92)    <.01   8379.63 (1437.60)    <.01
    a      Var (Slope)                     31.08 (21.34)     .14       31.66 (23.97)     .19       38.96 (23.14)     .09
    a      Var (Residual)               3447.64 (429.09)    <.01    3428.09 (517.02)    <.01    3327.42 (416.10)    <.01
    b      Var (Level)                       1.57 (0.30)    <.01         1.16 (0.29)    <.01         1.07 (0.26)    <.01
    b      Var (Slope)                       0.02 (0.02)     .11         0.02 (0.02)     .12         0.02 (0.01)     .17
    b      Var (Residual)                    0.97 (0.13)    <.01         0.95 (0.13)    <.01         0.95 (0.14)    <.01
    a      Covar (Level, Slope)         -261.82 (166.20)     .12    -229.50 (153.73)     .14    -300.33 (163.59)     .07
    b      Covar (Level, Slope)             -0.13 (0.06)     .03        -0.10 (0.06)     .06        -0.09 (0.05)     .06
    \      Correlation of Levels                            0.40                       0.333                       0.305
    \      Correlation of Slopes                            0.41                       0.285                       0.363
    \      Correlation of Residuals                        -0.09                      -0.089                      -0.091
    \      N                                                 158                         138                         138
    \      occasions                                           5                           5                           5
    \      parameters                                         NA                          NA                          41
    \      LL                                             -2,881                      -2,735                      -2,724
    \      AIC                                             5,805                       5,528                       5,529
    \      BIC                                             5,869                       5,613                       5,649

##  digit_f 

 Gender = _male_;  Process (a) = *pef*; Process (b) = _digit_f_


 process   label                                               a                         aeh                     aehplus
---------  -------------------------  --------------------------  --------------------------  --------------------------
   ab      Covar (Levels)                   2.40 (12.23)     .84       -3.87 (12.19)     .75       -7.21 (10.70)     .50
   ab      Covar (Slopes)                    0.20 (0.28)     .48         0.22 (0.28)     .43         0.36 (0.19)     .05
   ab      Covar (Residuals)                 0.56 (2.75)     .84         0.48 (2.81)     .86         0.45 (2.34)     .85
   er      Corr (Levels)                                     ---                         ---        -0.09 (0.13)     .50
   er      Corr (Slopes)                                     ---                         ---         0.63 (0.17)    <.01
   er      Corr (Residuals)                                  ---                         ---         0.01 (0.06)     .85
    a      Level                          434.38 (15.05)    <.01      435.38 (16.32)    <.01      469.38 (23.60)    <.01
    a      Slope                           -10.32 (2.39)    <.01       -10.25 (2.31)    <.01        -4.53 (3.48)     .19
    a      Level * age                     -12.51 (4.25)    <.01       -11.94 (4.23)    <.01       -11.48 (4.15)     .01
    a      Level * education                                 ---         6.30 (1.94)    <.01         6.98 (2.10)    <.01
    a      Level * height                                    ---         1.98 (1.45)     .17         2.11 (1.50)     .16
    a      Level * smoking                                   ---                         ---      -36.65 (21.80)     .09
    a      Level * cardio                                    ---                         ---      -22.91 (19.64)     .24
    a      Level * diabetes                                  ---                         ---       43.66 (27.32)     .11
    a      Slope * age                       0.53 (0.92)     .57         0.72 (0.92)     .44         0.18 (0.96)     .85
    a      Slope * education                                 ---        -0.44 (0.60)     .46        -0.44 (0.56)     .44
    a      Slope * height                                    ---         0.14 (0.24)     .56         0.28 (0.26)     .29
    a      Slope * smoking                                   ---                         ---        -5.22 (3.35)     .12
    a      Slope * cardio                                    ---                         ---        -1.79 (2.97)     .55
    a      Slope * diabetes                                  ---                         ---        -5.16 (3.79)     .17
    b      Level                             5.70 (0.13)    <.01         5.67 (0.15)    <.01         6.02 (0.25)    <.01
    b      Slope                            -0.04 (0.03)     .12        -0.06 (0.03)     .02        -0.10 (0.06)     .08
    b      Level * age                      -0.05 (0.03)     .07        -0.02 (0.03)     .51        -0.02 (0.03)     .41
    b      Level * education                                 ---         0.06 (0.02)     .02         0.07 (0.02)     .01
    b      Level * height                                    ---         0.01 (0.02)     .52         0.01 (0.01)     .42
    b      Level * smoking                                   ---                         ---        -0.47 (0.23)     .04
    b      Level * cardio                                    ---                         ---        -0.01 (0.19)     .94
    b      Level * diabetes                                  ---                         ---        -0.04 (0.27)     .89
    b      Slope * age                      -0.02 (0.01)     .04        -0.01 (0.01)     .10        -0.01 (0.01)     .08
    b      Slope * education                                 ---         0.01 (0.01)     .15         0.01 (0.01)     .21
    b      Slope * height                                    ---        -0.00 (0.00)     .19        -0.00 (0.00)     .18
    b      Slope * smoking                                   ---                         ---         0.06 (0.05)     .21
    b      Slope * cardio                                    ---                         ---        -0.02 (0.04)     .52
    b      Slope * diabetes                                  ---                         ---         0.00 (0.05)     .96
    a      Var (Level)                 9626.92 (1512.82)    <.01   8731.66 (1451.52)    <.01   8305.93 (1369.68)    <.01
    a      Var (Slope)                     32.00 (19.11)     .09       31.81 (20.21)     .12       27.92 (11.78)     .02
    a      Var (Residual)               3436.36 (419.93)    <.01    3423.62 (495.57)    <.01    3391.62 (399.44)    <.01
    b      Var (Level)                       0.91 (0.17)    <.01         0.86 (0.17)    <.01         0.81 (0.17)    <.01
    b      Var (Slope)                       0.01 (0.01)     .04         0.01 (0.01)     .02         0.01 (0.00)    <.01
    b      Var (Residual)                    0.57 (0.08)    <.01         0.52 (0.08)    <.01         0.52 (0.07)    <.01
    a      Covar (Level, Slope)         -258.25 (157.64)     .10    -241.54 (144.12)     .09    -274.76 (121.89)     .02
    b      Covar (Level, Slope)             -0.07 (0.03)     .01        -0.08 (0.03)    <.01        -0.07 (0.02)    <.01
    \      Correlation of Levels                           0.026                      -0.045                      -0.088
    \      Correlation of Slopes                           0.294                       0.344                       0.620
    \      Correlation of Residuals                        0.013                       0.011                       0.011
    \      N                                                 158                         138                         138
    \      occasions                                           5                           5                           5
    \      parameters                                         NA                          NA                          41
    \      LL                                             -2,769                      -2,624                      -2,614
    \      AIC                                             5,579                       5,306                       5,310
    \      BIC                                             5,644                       5,391                       5,430

##  fig_logic 

 Gender = _male_;  Process (a) = *pef*; Process (b) = _fig_logic_


 process   label                                               a                         aeh
---------  -------------------------  --------------------------  --------------------------
   ab      Covar (Levels)                 134.90 (48.41)    <.01       83.23 (35.38)     .02
   ab      Covar (Slopes)                    1.15 (0.83)     .16         1.12 (0.69)     .10
   ab      Covar (Residuals)               -0.32 (13.41)     .98       -0.66 (15.06)     .96
   er      Corr (Levels)                                     ---                         ---
   er      Corr (Slopes)                                     ---                         ---
   er      Corr (Residuals)                                  ---                         ---
    a      Level                          429.05 (15.26)    <.01      433.73 (16.30)    <.01
    a      Slope                           -10.01 (2.39)    <.01        -9.88 (2.32)    <.01
    a      Level * age                     -11.97 (4.22)    <.01       -11.90 (4.21)    <.01
    a      Level * education                                 ---         6.56 (1.94)    <.01
    a      Level * height                                    ---         1.82 (1.44)     .20
    a      Level * smoking                                   ---                         ---
    a      Level * cardio                                    ---                         ---
    a      Level * diabetes                                  ---                         ---
    a      Slope * age                       0.62 (0.89)     .48         0.67 (0.89)     .45
    a      Slope * education                                 ---        -0.52 (0.62)     .40
    a      Slope * height                                    ---         0.16 (0.24)     .49
    a      Slope * smoking                                   ---                         ---
    a      Slope * cardio                                    ---                         ---
    a      Slope * diabetes                                  ---                         ---
    b      Level                            15.80 (0.51)    <.01        16.03 (0.48)    <.01
    b      Slope                            -0.06 (0.11)     .58        -0.04 (0.11)     .72
    b      Level * age                      -0.17 (0.12)     .16        -0.17 (0.12)     .17
    b      Level * education                                 ---         0.31 (0.10)    <.01
    b      Level * height                                    ---         0.04 (0.05)     .42
    b      Level * smoking                                   ---                         ---
    b      Level * cardio                                    ---                         ---
    b      Level * diabetes                                  ---                         ---
    b      Slope * age                       0.02 (0.03)     .55         0.02 (0.03)     .46
    b      Slope * education                                 ---        -0.02 (0.02)     .33
    b      Slope * height                                    ---         0.01 (0.01)     .44
    b      Slope * smoking                                   ---                         ---
    b      Slope * cardio                                    ---                         ---
    b      Slope * diabetes                                  ---                         ---
    a      Var (Level)                 9875.76 (1556.03)    <.01   8796.11 (1448.56)    <.01
    a      Var (Slope)                     42.14 (22.72)     .06       39.89 (22.41)     .07
    a      Var (Residual)               3389.61 (416.49)    <.01    3375.96 (490.10)    <.01
    b      Var (Level)                      10.50 (2.40)    <.01         7.22 (1.59)    <.01
    b      Var (Slope)                       0.06 (0.05)     .21         0.04 (0.03)     .12
    b      Var (Residual)                    8.19 (0.88)    <.01         8.14 (0.92)    <.01
    a      Covar (Level, Slope)         -306.86 (172.70)     .08    -260.81 (147.76)     .08
    b      Covar (Level, Slope)             -0.40 (0.34)     .25        -0.22 (0.22)     .31
    \      Correlation of Levels                           0.419                       0.330
    \      Correlation of Slopes                           0.717                       0.854
    \      Correlation of Residuals                       -0.002                      -0.004
    \      N                                                 146                         133
    \      occasions                                           5                           5
    \      parameters                                         NA                          NA
    \      LL                                             -3,134                      -3,014
    \      AIC                                             6,310                       6,086
    \      BIC                                             6,373                       6,170

##  mir 

 Gender = _male_;  Process (a) = *pef*; Process (b) = _mir_


 process   label                                                a                         aeh
---------  -------------------------  ---------------------------  --------------------------
   ab      Covar (Levels)                   96.97 (24.90)    <.01       82.08 (20.97)    <.01
   ab      Covar (Slopes)                     0.61 (0.50)     .22         0.80 (0.45)     .08
   ab      Covar (Residuals)                 -1.70 (7.22)     .81        -1.64 (7.79)     .83
   er      Corr (Levels)                                      ---                         ---
   er      Corr (Slopes)                                      ---                         ---
   er      Corr (Residuals)                                   ---                         ---
    a      Level                           432.47 (15.11)    <.01      433.96 (16.18)    <.01
    a      Slope                             -9.93 (2.32)    <.01        -9.44 (2.29)    <.01
    a      Level * age                      -13.81 (4.17)    <.01       -12.72 (4.27)    <.01
    a      Level * education                                  ---         7.27 (1.99)    <.01
    a      Level * height                                     ---         2.08 (1.44)     .15
    a      Level * smoking                                    ---                         ---
    a      Level * cardio                                     ---                         ---
    a      Level * diabetes                                   ---                         ---
    a      Slope * age                        0.78 (0.84)     .35         0.73 (0.83)     .38
    a      Slope * education                                  ---        -0.62 (0.57)     .28
    a      Slope * height                                     ---         0.20 (0.24)     .41
    a      Slope * smoking                                    ---                         ---
    a      Slope * cardio                                     ---                         ---
    a      Slope * diabetes                                   ---                         ---
    b      Level                              7.02 (0.24)    <.01         6.97 (0.27)    <.01
    b      Slope                             -0.09 (0.07)     .19        -0.06 (0.08)     .45
    b      Level * age                       -0.27 (0.07)    <.01        -0.22 (0.07)    <.01
    b      Level * education                                  ---         0.08 (0.05)     .08
    b      Level * height                                     ---         0.00 (0.03)     .99
    b      Level * smoking                                    ---                         ---
    b      Level * cardio                                     ---                         ---
    b      Level * diabetes                                   ---                         ---
    b      Slope * age                       -0.01 (0.02)     .48        -0.02 (0.02)     .27
    b      Slope * education                                  ---        -0.00 (0.02)     .80
    b      Slope * height                                     ---         0.00 (0.01)     .98
    b      Slope * smoking                                    ---                         ---
    b      Slope * cardio                                     ---                         ---
    b      Slope * diabetes                                   ---                         ---
    a      Var (Level)                 10138.97 (1598.00)    <.01   9019.27 (1464.11)    <.01
    a      Var (Slope)                      40.23 (18.13)     .03       45.55 (18.97)     .02
    a      Var (Residual)                3405.19 (404.24)    <.01    3339.70 (464.65)    <.01
    b      Var (Level)                        2.50 (0.45)    <.01         2.02 (0.38)    <.01
    b      Var (Slope)                        0.08 (0.02)    <.01         0.07 (0.02)    <.01
    b      Var (Residual)                     2.09 (0.23)    <.01         1.98 (0.24)    <.01
    a      Covar (Level, Slope)          -323.23 (158.97)     .04    -296.49 (142.18)     .04
    b      Covar (Level, Slope)               0.02 (0.08)     .85         0.03 (0.07)     .61
    \      Correlation of Levels                             0.61                        0.61
    \      Correlation of Slopes                             0.34                        0.45
    \      Correlation of Residuals                         -0.02                       -0.02
    \      N                                                  153                         137
    \      occasions                                            5                           5
    \      parameters                                          NA                          NA
    \      LL                                              -3,006                      -2,869
    \      AIC                                              6,053                       5,796
    \      BIC                                              6,117                       5,880

##  prose_im 

 Gender = _male_;  Process (a) = *pef*; Process (b) = _prose_im_


 process   label                                               a                         aeh                     aehplus                        full
---------  -------------------------  --------------------------  --------------------------  --------------------------  --------------------------
   ab      Covar (Levels)                 116.89 (46.58)     .01       72.97 (41.26)     .08       63.89 (39.48)     .11       80.62 (38.99)     .04
   ab      Covar (Slopes)                   -0.59 (0.62)     .34        -0.31 (0.44)     .49        -0.17 (0.42)     .68        -0.43 (0.07)    <.01
   ab      Covar (Residuals)               15.32 (14.56)     .29       14.79 (18.05)     .41       11.87 (14.47)     .41       16.02 (13.23)     .23
   er      Corr (Levels)                                     ---                         ---         0.22 (0.13)     .09                         ---
   er      Corr (Slopes)                                     ---                         ---        -0.26 (0.53)     .62                         ---
   er      Corr (Residuals)                                  ---                         ---         0.10 (0.12)     .41                         ---
    a      Level                          432.49 (15.00)    <.01      434.45 (16.32)    <.01      465.57 (23.57)    <.01      418.74 (66.97)    <.01
    a      Slope                           -10.09 (2.44)    <.01        -9.85 (2.38)    <.01        -3.29 (3.71)     .38         8.31 (6.53)     .20
    a      Level * age                     -13.54 (4.21)    <.01       -12.54 (4.17)    <.01       -12.13 (4.14)    <.01       -1.45 (16.30)     .93
    a      Level * education                                 ---         6.64 (1.95)    <.01         7.03 (2.10)    <.01        12.65 (7.48)     .09
    a      Level * height                                    ---         1.92 (1.41)     .17         2.12 (1.47)     .15                         ---
    a      Level * smoking                                   ---                         ---      -33.30 (21.76)     .13                         ---
    a      Level * cardio                                    ---                         ---      -21.06 (19.60)     .28                         ---
    a      Level * diabetes                                  ---                         ---       39.26 (28.12)     .16                         ---
    a      Slope * age                       0.72 (0.89)     .42         0.73 (0.89)     .42         0.14 (0.95)     .88        -4.52 (1.73)     .01
    a      Slope * education                                 ---        -0.52 (0.62)     .40        -0.40 (0.58)     .48       -10.55 (1.32)    <.01
    a      Slope * height                                    ---         0.18 (0.23)     .44         0.22 (0.26)     .39                         ---
    a      Slope * smoking                                   ---                         ---        -5.28 (3.40)     .12                         ---
    a      Slope * cardio                                    ---                         ---        -2.61 (3.15)     .41                         ---
    a      Slope * diabetes                                  ---                         ---        -5.43 (4.28)     .20                         ---
    b      Level                            10.58 (0.47)    <.01        10.30 (0.56)    <.01        11.03 (0.76)    <.01        12.61 (1.78)    <.01
    b      Slope                            -0.17 (0.08)     .04        -0.11 (0.07)     .12         0.13 (0.16)     .40         0.11 (0.31)     .71
    b      Level * age                      -0.35 (0.11)    <.01        -0.27 (0.14)     .05        -0.27 (0.12)     .02         0.09 (0.59)     .88
    b      Level * education                                 ---         0.42 (0.09)    <.01         0.42 (0.09)    <.01         0.61 (0.28)     .03
    b      Level * height                                    ---         0.00 (0.06)     .99         0.01 (0.06)     .91                         ---
    b      Level * smoking                                   ---                         ---        -0.82 (0.80)     .30                         ---
    b      Level * cardio                                    ---                         ---        -0.48 (0.69)     .49                         ---
    b      Level * diabetes                                  ---                         ---         0.87 (0.93)     .35                         ---
    b      Slope * age                       0.00 (0.04)     .92         0.00 (0.04)     .93        -0.00 (0.05)     .91        -0.29 (0.13)     .03
    b      Slope * education                                 ---        -0.01 (0.01)     .56        -0.01 (0.01)     .63         0.01 (0.06)     .90
    b      Slope * height                                    ---         0.01 (0.01)     .10         0.01 (0.01)     .20                         ---
    b      Slope * smoking                                   ---                         ---        -0.15 (0.12)     .23                         ---
    b      Slope * cardio                                    ---                         ---        -0.16 (0.11)     .13                         ---
    b      Slope * diabetes                                  ---                         ---        -0.20 (0.18)     .26                         ---
    a      Var (Level)                 9819.58 (1536.75)    <.01   8732.34 (1457.46)    <.01   8318.76 (1411.15)    <.01   9315.91 (1306.55)    <.01
    a      Var (Slope)                     44.07 (22.77)     .05       38.44 (25.42)     .13       35.05 (21.25)     .10        20.72 (2.65)    <.01
    a      Var (Residual)               3381.82 (420.33)    <.01    3397.47 (511.65)    <.01    3350.55 (427.87)    <.01    3335.57 (375.78)    <.01
    b      Var (Level)                      13.17 (1.59)    <.01        10.09 (1.75)    <.01        10.17 (1.71)    <.01         9.88 (1.31)    <.01
    b      Var (Slope)                       0.02 (0.02)     .34         0.01 (0.01)     .38         0.01 (0.01)     .22         0.02 (0.00)    <.01
    b      Var (Residual)                    4.27 (0.60)    <.01         4.16 (0.62)    <.01         4.11 (0.63)    <.01         4.04 (0.53)    <.01
    a      Covar (Level, Slope)         -308.44 (171.34)     .07    -251.29 (157.98)     .11    -285.99 (152.20)     .06     -343.22 (54.77)    <.01
    b      Covar (Level, Slope)              0.10 (0.22)     .66         0.07 (0.16)     .65        -0.16 (0.16)     .31         0.16 (0.05)    <.01
    \      Correlation of Levels                            0.32                        0.25                        0.22                        0.27
    \      Correlation of Slopes                           -0.61                       -0.55                       -0.25                       -0.75
    \      Correlation of Residuals                         0.13                        0.12                        0.10                        0.14
    \      N                                                 153                         136                         136                         153
    \      occasions                                           5                           5                           5                           5
    \      parameters                                         NA                          NA                          41                          NA
    \      LL                                             -3,045                      -2,881                      -2,871                      -3,009
    \      AIC                                             6,131                       5,821                       5,823                       6,107
    \      BIC                                             6,195                       5,905                       5,943                       6,244

##  symbol 

 Gender = _male_;  Process (a) = *pef*; Process (b) = _symbol_


 process   label                                               a                         aeh                     aehplus
---------  -------------------------  --------------------------  --------------------------  --------------------------
   ab      Covar (Levels)                393.18 (112.14)    <.01     288.44 (106.31)     .01      244.57 (90.32)     .01
   ab      Covar (Slopes)                    2.55 (1.61)     .11         2.86 (1.52)     .06         3.13 (1.56)     .04
   ab      Covar (Residuals)               -7.14 (19.18)     .71      -12.37 (19.37)     .52       -9.63 (18.28)     .60
   er      Corr (Levels)                                     ---                         ---         0.31 (0.10)    <.01
   er      Corr (Slopes)                                     ---                         ---         0.73 (0.15)    <.01
   er      Corr (Residuals)                                  ---                         ---        -0.04 (0.08)     .60
    a      Level                          433.61 (14.91)    <.01      435.23 (16.24)    <.01      463.73 (23.41)    <.01
    a      Slope                           -11.04 (2.33)    <.01       -10.77 (2.33)    <.01        -3.27 (3.62)     .37
    a      Level * age                     -12.85 (4.17)    <.01       -12.41 (4.24)    <.01       -11.96 (4.16)    <.01
    a      Level * education                                 ---         6.53 (1.97)    <.01         6.98 (2.11)    <.01
    a      Level * height                                    ---         1.91 (1.42)     .18         2.10 (1.47)     .15
    a      Level * smoking                                   ---                         ---      -31.07 (21.41)     .15
    a      Level * cardio                                    ---                         ---      -20.79 (19.62)     .29
    a      Level * diabetes                                  ---                         ---       44.25 (27.02)     .10
    a      Slope * age                       0.93 (0.86)     .28         1.00 (0.90)     .27         0.26 (0.94)     .78
    a      Slope * education                                 ---        -0.55 (0.57)     .34        -0.43 (0.54)     .43
    a      Slope * height                                    ---         0.21 (0.24)     .39         0.27 (0.26)     .29
    a      Slope * smoking                                   ---                         ---        -5.73 (3.34)     .09
    a      Slope * cardio                                    ---                         ---        -2.60 (2.97)     .38
    a      Slope * diabetes                                  ---                         ---        -6.18 (3.92)     .12
    b      Level                            26.89 (1.44)    <.01        26.09 (1.38)    <.01        31.50 (2.41)    <.01
    b      Slope                            -0.53 (0.21)     .01        -0.56 (0.18)    <.01        -0.54 (0.33)     .10
    b      Level * age                      -0.76 (0.36)     .04        -0.61 (0.39)     .12        -0.67 (0.37)     .07
    b      Level * education                                 ---         1.63 (0.24)    <.01         1.71 (0.24)    <.01
    b      Level * height                                    ---         0.25 (0.12)     .05         0.25 (0.12)     .04
    b      Level * smoking                                   ---                         ---        -5.97 (2.28)     .01
    b      Level * cardio                                    ---                         ---        -1.66 (1.77)     .35
    b      Level * diabetes                                  ---                         ---        -1.92 (2.27)     .40
    b      Slope * age                       0.03 (0.07)     .66         0.06 (0.06)     .36         0.04 (0.07)     .54
    b      Slope * education                                 ---         0.02 (0.04)     .61         0.02 (0.05)     .73
    b      Slope * height                                    ---        -0.02 (0.02)     .19        -0.02 (0.02)     .29
    b      Slope * smoking                                   ---                         ---         0.10 (0.31)     .74
    b      Slope * cardio                                    ---                         ---        -0.14 (0.26)     .59
    b      Slope * diabetes                                  ---                         ---        -0.20 (0.49)     .68
    a      Var (Level)                 9516.86 (1482.49)    <.01   8703.65 (1420.47)    <.01   8372.76 (1412.60)    <.01
    a      Var (Slope)                     30.89 (16.78)     .07       39.00 (17.42)     .02       39.41 (16.27)     .01
    a      Var (Residual)               3437.19 (407.99)    <.01    3368.38 (463.20)    <.01    3295.66 (403.32)    <.01
    b      Var (Level)                    105.77 (13.96)    <.01       82.48 (13.06)    <.01       73.70 (10.62)    <.01
    b      Var (Slope)                       0.52 (0.21)     .01         0.41 (0.17)     .02         0.47 (0.22)     .03
    b      Var (Residual)                   17.55 (2.02)    <.01        17.38 (2.22)    <.01        17.14 (2.12)    <.01
    a      Covar (Level, Slope)         -225.59 (147.16)     .12    -226.19 (131.37)     .08    -281.62 (135.62)     .04
    b      Covar (Level, Slope)             -2.71 (1.22)     .03        -2.87 (1.17)     .01        -3.00 (1.07)    <.01
    \      Correlation of Levels                           0.392                       0.340                       0.311
    \      Correlation of Slopes                           0.633                       0.717                       0.727
    \      Correlation of Residuals                       -0.029                      -0.051                      -0.041
    \      N                                                 142                         133                         133
    \      occasions                                           5                           5                           5
    \      parameters                                         NA                          NA                          41
    \      LL                                             -3,344                      -3,214                      -3,202
    \      AIC                                             6,730                       6,485                       6,486
    \      BIC                                             6,792                       6,569                       6,604

## Summary 

 Study = _OCTO_; Gender = _male_; Process (a) = _pef_

 Computed correlations:

 

label                    process_b      a     aeh   aehplus   full
----------------------  ----------  -----  ------  --------  -----
Correlation of Levels        block   0.43    0.33      0.30   0.38
Correlation of Levels      digit_b   0.40    0.33      0.31      .
Correlation of Levels      digit_f   0.03   -0.04     -0.09      .
Correlation of Levels    fig_logic   0.42    0.33         .      .
Correlation of Levels          mir   0.61    0.61         .      .
Correlation of Levels     prose_im   0.32    0.25      0.22   0.27
Correlation of Levels       symbol   0.39    0.34      0.31      .




label                    process_b       a     aeh   aehplus    full
----------------------  ----------  ------  ------  --------  ------
Correlation of Slopes        block    0.66    0.85      0.75    0.52
Correlation of Slopes      digit_b    0.41    0.28      0.36       .
Correlation of Slopes      digit_f    0.29    0.34      0.62       .
Correlation of Slopes    fig_logic    0.72    0.85         .       .
Correlation of Slopes          mir    0.34    0.45         .       .
Correlation of Slopes     prose_im   -0.61   -0.55     -0.25   -0.75
Correlation of Slopes       symbol    0.63    0.72      0.73       .




label                       process_b       a     aeh   aehplus   full
-------------------------  ----------  ------  ------  --------  -----
Correlation of Residuals        block    0.09    0.10      0.11   0.09
Correlation of Residuals      digit_b   -0.09   -0.09     -0.09      .
Correlation of Residuals      digit_f    0.01    0.01      0.01      .
Correlation of Residuals    fig_logic   -0.00   -0.00         .      .
Correlation of Residuals          mir   -0.02   -0.02         .      .
Correlation of Residuals     prose_im    0.13    0.12      0.10   0.14
Correlation of Residuals       symbol   -0.03   -0.05     -0.04      .



P-values for corresponding covariances: 

 

label                   process_b      a    aeh   aehplus   full
---------------------  ----------  -----  -----  --------  -----
Covariance of Levels        block   0.00   0.00      0.01   0.00
Covariance of Levels      digit_b   0.00   0.01      0.03      .
Covariance of Levels      digit_f   0.84   0.75      0.50      .
Covariance of Levels    fig_logic   0.00   0.02         .      .
Covariance of Levels          mir   0.00   0.00         .      .
Covariance of Levels     prose_im   0.01   0.08      0.11   0.04
Covariance of Levels       symbol   0.00   0.01      0.01      .




label                   process_b      a    aeh   aehplus   full
---------------------  ----------  -----  -----  --------  -----
Covariance of Slopes        block   0.23   0.13      0.19   0.37
Covariance of Slopes      digit_b   0.40   0.56      0.38      .
Covariance of Slopes      digit_f   0.48   0.43      0.05      .
Covariance of Slopes    fig_logic   0.16   0.10         .      .
Covariance of Slopes          mir   0.22   0.08         .      .
Covariance of Slopes     prose_im   0.34   0.49      0.68   0.00
Covariance of Slopes       symbol   0.11   0.06      0.04      .




label                       process_b      a    aeh   aehplus   full
-------------------------  ----------  -----  -----  --------  -----
Covariance of  Residuals        block   0.16   0.16      0.07   0.13
Covariance of  Residuals      digit_b   0.30   0.36      0.29      .
Covariance of  Residuals      digit_f   0.84   0.86      0.85      .
Covariance of  Residuals    fig_logic   0.98   0.96         .      .
Covariance of  Residuals          mir   0.81   0.83         .      .
Covariance of  Residuals     prose_im   0.29   0.41      0.41   0.23
Covariance of  Residuals       symbol   0.71   0.52      0.60      .


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
