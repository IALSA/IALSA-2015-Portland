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
gait        block               2
gait        digit_b             2
gait        digit_f             2
gait        prose_im            1
gait        symbol              2




study_name   subgroup   model_type   process_a   process_b    n_models
-----------  ---------  -----------  ----------  ----------  ---------
octo         female     aehplus      gait        block               1
octo         female     aehplus      gait        digit_b             1
octo         female     aehplus      gait        digit_f             1
octo         female     aehplus      gait        prose_im            1
octo         female     aehplus      gait        symbol              1




study_name   subgroup   model_type   process_a   process_b    n_models
-----------  ---------  -----------  ----------  ----------  ---------
octo         male       aehplus      gait        block               1
octo         male       aehplus      gait        digit_b             1
octo         male       aehplus      gait        digit_f             1
octo         male       aehplus      gait        symbol              1


# female 

 Gender = _female_; Model type: _aehplus_;  Process (a) = _gait_; Process (b): *block*, *digit_b*, *digit_f*, *prose_im*, *symbol*


 process   label                                      block                digit_b                digit_f               prose_im                  symbol     mean(sd)    
---------  -------------------------  ---------------------  ---------------------  ---------------------  ---------------------  ----------------------  ---------------
    a      Level                       10.26 (0.45)    <.01   10.27 (0.45)    <.01   10.29 (0.46)    <.01   10.31 (0.46)    <.01    10.26 (0.48)    <.01    10.28(0.02)  
    a      Slope                        0.52 (0.36)     .15    0.55 (0.43)     .20    0.53 (0.40)     .19    0.56 (0.36)     .12     0.51 (0.28)     .07    0.54(0.02)   
    a      Level * age                  0.33 (0.09)    <.01    0.32 (0.09)    <.01    0.32 (0.09)    <.01    0.31 (0.09)    <.01     0.33 (0.09)    <.01    0.32(0.01)   
    a      Level * education           -0.30 (0.13)     .02   -0.31 (0.12)     .01   -0.31 (0.12)     .01   -0.32 (0.13)     .01    -0.31 (0.13)     .01    -0.31(0.00)  
    a      Level * height              -0.04 (0.05)     .40   -0.04 (0.05)     .43   -0.04 (0.05)     .42   -0.04 (0.05)     .40    -0.04 (0.05)     .39    -0.04(0.00)  
    a      Level * smoking              0.04 (0.73)     .95    0.03 (0.74)     .96    0.04 (0.74)     .96    0.05 (0.75)     .95     0.02 (0.76)     .97    0.04(0.01)   
    a      Level * cardio               0.78 (0.51)     .13    0.73 (0.51)     .15    0.71 (0.51)     .16    0.71 (0.52)     .17     0.76 (0.53)     .15    0.74(0.03)   
    a      Level * diabetes             1.50 (1.43)     .29    1.56 (1.44)     .28    1.61 (1.46)     .27    1.64 (1.37)     .23     1.61 (1.45)     .27    1.58(0.05)   
    a      Slope * age                  0.01 (0.06)     .91   -0.01 (0.05)     .86   -0.01 (0.05)     .91   -0.01 (0.04)     .86    -0.01 (0.06)     .89    -0.00(0.01)  
    a      Slope * education           -0.03 (0.06)     .65   -0.03 (0.06)     .66   -0.03 (0.06)     .66   -0.03 (0.05)     .57    -0.03 (0.05)     .59    -0.03(0.00)  
    a      Slope * height               0.01 (0.03)     .73    0.01 (0.03)     .74    0.01 (0.03)     .76    0.01 (0.02)     .62     0.01 (0.03)     .78    0.01(0.00)   
    a      Slope * smoking              0.08 (0.21)     .71    0.06 (0.23)     .80    0.05 (0.21)     .80    0.04 (0.18)     .84     0.08 (0.15)     .62    0.06(0.02)   
    a      Slope * cardio              -0.17 (0.21)     .43   -0.20 (0.25)     .42   -0.21 (0.24)     .39   -0.20 (0.23)     .38    -0.17 (0.24)     .48    -0.19(0.02)  
    a      Slope * diabetes             0.98 (0.96)     .31    1.03 (1.05)     .32    1.03 (1.05)     .33    1.12 (1.00)     .27     0.95 (0.79)     .23    1.02(0.06)   
    b      Level                       14.65 (0.78)    <.01    3.86 (0.13)    <.01    5.68 (0.12)    <.01   11.15 (0.40)    <.01    28.23 (1.19)    <.01        ---      
    b      Slope                       -0.22 (0.12)     .07   -0.09 (0.03)    <.01   -0.08 (0.02)    <.01   -0.04 (0.07)     .55    -0.13 (0.20)     .50        ---      
    b      Level * age                 -0.61 (0.14)    <.01   -0.10 (0.02)    <.01   -0.08 (0.02)    <.01   -0.25 (0.08)    <.01    -0.81 (0.27)    <.01        ---      
    b      Level * education            0.78 (0.19)    <.01    0.12 (0.04)    <.01    0.14 (0.03)    <.01    0.47 (0.10)    <.01     1.75 (0.38)    <.01        ---      
    b      Level * height              -0.02 (0.07)     .73   -0.00 (0.01)     .76    0.01 (0.01)     .44    0.01 (0.04)     .72     0.07 (0.12)     .54        ---      
    b      Level * smoking             -1.21 (0.95)     .20   -0.33 (0.19)     .09   -0.15 (0.14)     .29    0.22 (0.49)     .66    -0.74 (1.72)     .66        ---      
    b      Level * cardio              -0.03 (0.82)     .97    0.06 (0.14)     .70    0.05 (0.12)     .68    0.23 (0.43)     .59     1.24 (1.29)     .34        ---      
    b      Level * diabetes             0.99 (2.46)     .69   -0.09 (0.30)     .76    0.09 (0.26)     .74   -1.76 (1.15)     .12    -3.06 (3.35)     .36        ---      
    b      Slope * age                 -0.00 (0.03)     .92    0.01 (0.01)     .11    0.00 (0.00)     .42    0.02 (0.02)     .16    -0.01 (0.05)     .85        ---      
    b      Slope * education           -0.04 (0.03)     .26    0.00 (0.01)     .98   -0.01 (0.00)     .02   -0.05 (0.02)     .02    -0.04 (0.06)     .52        ---      
    b      Slope * height               0.01 (0.01)     .18    0.00 (0.00)     .67   -0.00 (0.00)     .32    0.01 (0.01)     .46     0.01 (0.02)     .54        ---      
    b      Slope * smoking              0.01 (0.15)     .94    0.05 (0.03)     .10    0.04 (0.03)     .11   -0.09 (0.10)     .34    -0.39 (0.28)     .17        ---      
    b      Slope * cardio              -0.14 (0.13)     .26   -0.03 (0.03)     .25   -0.00 (0.02)     .86   -0.07 (0.09)     .41    -0.74 (0.20)    <.01        ---      
    b      Slope * diabetes            -0.04 (0.26)     .88    0.04 (0.06)     .47   -0.00 (0.05)     .92    0.10 (0.20)     .62     1.38 (0.49)    <.01        ---      
    a      Var (Level)                 11.95 (2.44)    <.01   11.87 (2.43)    <.01   12.05 (2.45)    <.01   11.94 (3.07)    <.01    12.17 (4.16)    <.01    12.00(0.12)  
    a      Var (Slope)                  0.98 (2.78)     .72    1.17 (3.53)     .74    1.01 (2.96)     .73    1.32 (2.71)     .62     0.86 (2.28)     .71    1.07(0.18)   
    a      Var (Residual)              11.36 (3.05)    <.01   11.01 (3.27)    <.01   11.25 (3.24)    <.01   10.69 (2.76)    <.01    11.52 (2.48)    <.01    11.17(0.33)  
    a      Covar (Level, Slope)         3.25 (4.82)     .50    3.46 (5.38)     .52    3.26 (5.07)     .52    3.46 (4.21)     .41     3.12 (3.65)     .39    3.31(0.15)   
    b      Var (Level)                 32.44 (4.05)    <.01    0.53 (0.14)    <.01    0.55 (0.07)    <.01    7.87 (1.01)    <.01    70.95 (9.38)    <.01        ---      
    b      Var (Slope)                  0.18 (0.16)     .26    0.00 (0.00)     .59    0.01 (0.00)     .05    0.08 (0.03)    <.01     0.47 (0.24)     .05        ---      
    b      Var (Residual)              10.94 (0.83)    <.01    1.17 (0.10)    <.01    0.61 (0.04)    <.01    4.28 (0.37)    <.01    27.76 (2.47)    <.01        ---      
    b      Covar (Level, Slope)        -0.44 (0.83)     .60   -0.02 (0.02)     .42   -0.04 (0.01)     .01   -0.40 (0.14)    <.01    -1.49 (1.10)     .18        ---      
   ab      Covar (Levels)              -8.52 (2.94)    <.01   -0.77 (0.31)     .01   -0.28 (0.22)     .20   -1.34 (1.07)     .21   -10.78 (5.25)     .04        ---      
   ab      Covar (Slopes)              -0.21 (0.61)     .74    0.01 (0.04)     .75   -0.01 (0.01)     .28   -0.07 (0.10)     .43    -0.26 (0.66)     .69        ---      
   ab      Covar (Residuals)           -1.66 (0.65)     .01    0.11 (0.21)     .59   -0.10 (0.09)     .25   -0.40 (0.24)     .10    -2.12 (1.57)     .18        ---      
    \      Correlation of Levels                      -0.43                 -0.305                  -0.11                 -0.138                   -0.37    -0.27(0.14)  
    \      Correlation of Slopes                      -0.49                  0.248                  -0.12                 -0.225                   -0.41    -0.20(0.29)  
    \      Correlation of Residuals                   -0.15                  0.031                  -0.04                 -0.059                   -0.12    -0.07(0.07)  
    \      N                                            272                    275                    275                    268                     265   271.00(4.42)  
    \      occasions                                      5                      5                      5                      5                       5    5.00(0.00)   
    \      parameters                                    41                     41                     41                     41                      41    41.00(0.00)  
    \      LL                                        -4,810                 -3,890                 -3,645                 -4,301                  -4,828   -4,295(  533) 
    \      AIC                                        9,701                  7,863                  7,372                  8,684                   9,738   8,671(1,065)  
    \      BIC                                        9,849                  8,011                  7,520                  8,831                   9,884   8,819(1,065)  

##  block 

 Gender = _female_;  Process (a) = *gait*; Process (b) = _block_


 process   label                                    aehplus
---------  -------------------------  ---------------------
    a      Level                       10.26 (0.45)    <.01
    a      Slope                        0.52 (0.36)     .15
    a      Level * age                  0.33 (0.09)    <.01
    a      Level * education           -0.30 (0.13)     .02
    a      Level * height              -0.04 (0.05)     .40
    a      Level * smoking              0.04 (0.73)     .95
    a      Level * cardio               0.78 (0.51)     .13
    a      Level * diabetes             1.50 (1.43)     .29
    a      Slope * age                  0.01 (0.06)     .91
    a      Slope * education           -0.03 (0.06)     .65
    a      Slope * height               0.01 (0.03)     .73
    a      Slope * smoking              0.08 (0.21)     .71
    a      Slope * cardio              -0.17 (0.21)     .43
    a      Slope * diabetes             0.98 (0.96)     .31
    b      Level                       14.65 (0.78)    <.01
    b      Slope                       -0.22 (0.12)     .07
    b      Level * age                 -0.61 (0.14)    <.01
    b      Level * education            0.78 (0.19)    <.01
    b      Level * height              -0.02 (0.07)     .73
    b      Level * smoking             -1.21 (0.95)     .20
    b      Level * cardio              -0.03 (0.82)     .97
    b      Level * diabetes             0.99 (2.46)     .69
    b      Slope * age                 -0.00 (0.03)     .92
    b      Slope * education           -0.04 (0.03)     .26
    b      Slope * height               0.01 (0.01)     .18
    b      Slope * smoking              0.01 (0.15)     .94
    b      Slope * cardio              -0.14 (0.13)     .26
    b      Slope * diabetes            -0.04 (0.26)     .88
    a      Var (Level)                 11.95 (2.44)    <.01
    a      Var (Slope)                  0.98 (2.78)     .72
    a      Var (Residual)              11.36 (3.05)    <.01
    a      Covar (Level, Slope)         3.25 (4.82)     .50
    b      Var (Level)                 32.44 (4.05)    <.01
    b      Var (Slope)                  0.18 (0.16)     .26
    b      Var (Residual)              10.94 (0.83)    <.01
    b      Covar (Level, Slope)        -0.44 (0.83)     .60
   ab      Covar (Levels)              -8.52 (2.94)    <.01
   ab      Covar (Slopes)              -0.21 (0.61)     .74
   ab      Covar (Residuals)           -1.66 (0.65)     .01
    \      Correlation of Levels                      -0.43
    \      Correlation of Slopes                      -0.49
    \      Correlation of Residuals                   -0.15
    \      N                                            272
    \      occasions                                      5
    \      parameters                                    41
    \      LL                                        -4,810
    \      AIC                                        9,701
    \      BIC                                        9,849

##  digit_b 

 Gender = _female_;  Process (a) = *gait*; Process (b) = _digit_b_


 process   label                                    aehplus
---------  -------------------------  ---------------------
    a      Level                       10.27 (0.45)    <.01
    a      Slope                        0.55 (0.43)     .20
    a      Level * age                  0.32 (0.09)    <.01
    a      Level * education           -0.31 (0.12)     .01
    a      Level * height              -0.04 (0.05)     .43
    a      Level * smoking              0.03 (0.74)     .96
    a      Level * cardio               0.73 (0.51)     .15
    a      Level * diabetes             1.56 (1.44)     .28
    a      Slope * age                 -0.01 (0.05)     .86
    a      Slope * education           -0.03 (0.06)     .66
    a      Slope * height               0.01 (0.03)     .74
    a      Slope * smoking              0.06 (0.23)     .80
    a      Slope * cardio              -0.20 (0.25)     .42
    a      Slope * diabetes             1.03 (1.05)     .32
    b      Level                        3.86 (0.13)    <.01
    b      Slope                       -0.09 (0.03)    <.01
    b      Level * age                 -0.10 (0.02)    <.01
    b      Level * education            0.12 (0.04)    <.01
    b      Level * height              -0.00 (0.01)     .76
    b      Level * smoking             -0.33 (0.19)     .09
    b      Level * cardio               0.06 (0.14)     .70
    b      Level * diabetes            -0.09 (0.30)     .76
    b      Slope * age                  0.01 (0.01)     .11
    b      Slope * education            0.00 (0.01)     .98
    b      Slope * height               0.00 (0.00)     .67
    b      Slope * smoking              0.05 (0.03)     .10
    b      Slope * cardio              -0.03 (0.03)     .25
    b      Slope * diabetes             0.04 (0.06)     .47
    a      Var (Level)                 11.87 (2.43)    <.01
    a      Var (Slope)                  1.17 (3.53)     .74
    a      Var (Residual)              11.01 (3.27)    <.01
    a      Covar (Level, Slope)         3.46 (5.38)     .52
    b      Var (Level)                  0.53 (0.14)    <.01
    b      Var (Slope)                  0.00 (0.00)     .59
    b      Var (Residual)               1.17 (0.10)    <.01
    b      Covar (Level, Slope)        -0.02 (0.02)     .42
   ab      Covar (Levels)              -0.77 (0.31)     .01
   ab      Covar (Slopes)               0.01 (0.04)     .75
   ab      Covar (Residuals)            0.11 (0.21)     .59
    \      Correlation of Levels                     -0.305
    \      Correlation of Slopes                      0.248
    \      Correlation of Residuals                   0.031
    \      N                                            275
    \      occasions                                      5
    \      parameters                                    41
    \      LL                                        -3,890
    \      AIC                                        7,863
    \      BIC                                        8,011

##  digit_f 

 Gender = _female_;  Process (a) = *gait*; Process (b) = _digit_f_


 process   label                                    aehplus
---------  -------------------------  ---------------------
    a      Level                       10.29 (0.46)    <.01
    a      Slope                        0.53 (0.40)     .19
    a      Level * age                  0.32 (0.09)    <.01
    a      Level * education           -0.31 (0.12)     .01
    a      Level * height              -0.04 (0.05)     .42
    a      Level * smoking              0.04 (0.74)     .96
    a      Level * cardio               0.71 (0.51)     .16
    a      Level * diabetes             1.61 (1.46)     .27
    a      Slope * age                 -0.01 (0.05)     .91
    a      Slope * education           -0.03 (0.06)     .66
    a      Slope * height               0.01 (0.03)     .76
    a      Slope * smoking              0.05 (0.21)     .80
    a      Slope * cardio              -0.21 (0.24)     .39
    a      Slope * diabetes             1.03 (1.05)     .33
    b      Level                        5.68 (0.12)    <.01
    b      Slope                       -0.08 (0.02)    <.01
    b      Level * age                 -0.08 (0.02)    <.01
    b      Level * education            0.14 (0.03)    <.01
    b      Level * height               0.01 (0.01)     .44
    b      Level * smoking             -0.15 (0.14)     .29
    b      Level * cardio               0.05 (0.12)     .68
    b      Level * diabetes             0.09 (0.26)     .74
    b      Slope * age                  0.00 (0.00)     .42
    b      Slope * education           -0.01 (0.00)     .02
    b      Slope * height              -0.00 (0.00)     .32
    b      Slope * smoking              0.04 (0.03)     .11
    b      Slope * cardio              -0.00 (0.02)     .86
    b      Slope * diabetes            -0.00 (0.05)     .92
    a      Var (Level)                 12.05 (2.45)    <.01
    a      Var (Slope)                  1.01 (2.96)     .73
    a      Var (Residual)              11.25 (3.24)    <.01
    a      Covar (Level, Slope)         3.26 (5.07)     .52
    b      Var (Level)                  0.55 (0.07)    <.01
    b      Var (Slope)                  0.01 (0.00)     .05
    b      Var (Residual)               0.61 (0.04)    <.01
    b      Covar (Level, Slope)        -0.04 (0.01)     .01
   ab      Covar (Levels)              -0.28 (0.22)     .20
   ab      Covar (Slopes)              -0.01 (0.01)     .28
   ab      Covar (Residuals)           -0.10 (0.09)     .25
    \      Correlation of Levels                      -0.11
    \      Correlation of Slopes                      -0.12
    \      Correlation of Residuals                   -0.04
    \      N                                            275
    \      occasions                                      5
    \      parameters                                    41
    \      LL                                        -3,645
    \      AIC                                        7,372
    \      BIC                                        7,520

##  prose_im 

 Gender = _female_;  Process (a) = *gait*; Process (b) = _prose_im_


 process   label                                    aehplus
---------  -------------------------  ---------------------
    a      Level                       10.31 (0.46)    <.01
    a      Slope                        0.56 (0.36)     .12
    a      Level * age                  0.31 (0.09)    <.01
    a      Level * education           -0.32 (0.13)     .01
    a      Level * height              -0.04 (0.05)     .40
    a      Level * smoking              0.05 (0.75)     .95
    a      Level * cardio               0.71 (0.52)     .17
    a      Level * diabetes             1.64 (1.37)     .23
    a      Slope * age                 -0.01 (0.04)     .86
    a      Slope * education           -0.03 (0.05)     .57
    a      Slope * height               0.01 (0.02)     .62
    a      Slope * smoking              0.04 (0.18)     .84
    a      Slope * cardio              -0.20 (0.23)     .38
    a      Slope * diabetes             1.12 (1.00)     .27
    b      Level                       11.15 (0.40)    <.01
    b      Slope                       -0.04 (0.07)     .55
    b      Level * age                 -0.25 (0.08)    <.01
    b      Level * education            0.47 (0.10)    <.01
    b      Level * height               0.01 (0.04)     .72
    b      Level * smoking              0.22 (0.49)     .66
    b      Level * cardio               0.23 (0.43)     .59
    b      Level * diabetes            -1.76 (1.15)     .12
    b      Slope * age                  0.02 (0.02)     .16
    b      Slope * education           -0.05 (0.02)     .02
    b      Slope * height               0.01 (0.01)     .46
    b      Slope * smoking             -0.09 (0.10)     .34
    b      Slope * cardio              -0.07 (0.09)     .41
    b      Slope * diabetes             0.10 (0.20)     .62
    a      Var (Level)                 11.94 (3.07)    <.01
    a      Var (Slope)                  1.32 (2.71)     .62
    a      Var (Residual)              10.69 (2.76)    <.01
    a      Covar (Level, Slope)         3.46 (4.21)     .41
    b      Var (Level)                  7.87 (1.01)    <.01
    b      Var (Slope)                  0.08 (0.03)    <.01
    b      Var (Residual)               4.28 (0.37)    <.01
    b      Covar (Level, Slope)        -0.40 (0.14)    <.01
   ab      Covar (Levels)              -1.34 (1.07)     .21
   ab      Covar (Slopes)              -0.07 (0.10)     .43
   ab      Covar (Residuals)           -0.40 (0.24)     .10
    \      Correlation of Levels                     -0.138
    \      Correlation of Slopes                     -0.225
    \      Correlation of Residuals                  -0.059
    \      N                                            268
    \      occasions                                      5
    \      parameters                                    41
    \      LL                                        -4,301
    \      AIC                                        8,684
    \      BIC                                        8,831

##  symbol 

 Gender = _female_;  Process (a) = *gait*; Process (b) = _symbol_


 process   label                                     aehplus
---------  -------------------------  ----------------------
    a      Level                        10.26 (0.48)    <.01
    a      Slope                         0.51 (0.28)     .07
    a      Level * age                   0.33 (0.09)    <.01
    a      Level * education            -0.31 (0.13)     .01
    a      Level * height               -0.04 (0.05)     .39
    a      Level * smoking               0.02 (0.76)     .97
    a      Level * cardio                0.76 (0.53)     .15
    a      Level * diabetes              1.61 (1.45)     .27
    a      Slope * age                  -0.01 (0.06)     .89
    a      Slope * education            -0.03 (0.05)     .59
    a      Slope * height                0.01 (0.03)     .78
    a      Slope * smoking               0.08 (0.15)     .62
    a      Slope * cardio               -0.17 (0.24)     .48
    a      Slope * diabetes              0.95 (0.79)     .23
    b      Level                        28.23 (1.19)    <.01
    b      Slope                        -0.13 (0.20)     .50
    b      Level * age                  -0.81 (0.27)    <.01
    b      Level * education             1.75 (0.38)    <.01
    b      Level * height                0.07 (0.12)     .54
    b      Level * smoking              -0.74 (1.72)     .66
    b      Level * cardio                1.24 (1.29)     .34
    b      Level * diabetes             -3.06 (3.35)     .36
    b      Slope * age                  -0.01 (0.05)     .85
    b      Slope * education            -0.04 (0.06)     .52
    b      Slope * height                0.01 (0.02)     .54
    b      Slope * smoking              -0.39 (0.28)     .17
    b      Slope * cardio               -0.74 (0.20)    <.01
    b      Slope * diabetes              1.38 (0.49)    <.01
    a      Var (Level)                  12.17 (4.16)    <.01
    a      Var (Slope)                   0.86 (2.28)     .71
    a      Var (Residual)               11.52 (2.48)    <.01
    a      Covar (Level, Slope)          3.12 (3.65)     .39
    b      Var (Level)                  70.95 (9.38)    <.01
    b      Var (Slope)                   0.47 (0.24)     .05
    b      Var (Residual)               27.76 (2.47)    <.01
    b      Covar (Level, Slope)         -1.49 (1.10)     .18
   ab      Covar (Levels)              -10.78 (5.25)     .04
   ab      Covar (Slopes)               -0.26 (0.66)     .69
   ab      Covar (Residuals)            -2.12 (1.57)     .18
    \      Correlation of Levels                       -0.37
    \      Correlation of Slopes                       -0.41
    \      Correlation of Residuals                    -0.12
    \      N                                             265
    \      occasions                                       5
    \      parameters                                     41
    \      LL                                         -4,828
    \      AIC                                         9,738
    \      BIC                                         9,884

## Summary 

 Study = _OCTO_; Gender = _female_; Process (a) = _gait_

 Computed correlations:

 <table>
 <thead>
  <tr>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> block </td>
   <td style="text-align:right;"> -0.43 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> digit_b </td>
   <td style="text-align:right;"> -0.30 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> digit_f </td>
   <td style="text-align:right;"> -0.11 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> prose_im </td>
   <td style="text-align:right;"> -0.14 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> symbol </td>
   <td style="text-align:right;"> -0.37 </td>
  </tr>
</tbody>
</table>

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> block </td>
   <td style="text-align:right;"> -0.49 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> digit_b </td>
   <td style="text-align:right;"> 0.25 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> digit_f </td>
   <td style="text-align:right;"> -0.12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> prose_im </td>
   <td style="text-align:right;"> -0.23 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> symbol </td>
   <td style="text-align:right;"> -0.41 </td>
  </tr>
</tbody>
</table>

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> block </td>
   <td style="text-align:right;"> -0.15 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> digit_b </td>
   <td style="text-align:right;"> 0.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> digit_f </td>
   <td style="text-align:right;"> -0.04 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> prose_im </td>
   <td style="text-align:right;"> -0.06 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> symbol </td>
   <td style="text-align:right;"> -0.12 </td>
  </tr>
</tbody>
</table>


P-values for corresponding covariances: 

 <table>
 <thead>
  <tr>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Covariance of Levels </td>
   <td style="text-align:right;"> block </td>
   <td style="text-align:right;"> 0.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Levels </td>
   <td style="text-align:right;"> digit_b </td>
   <td style="text-align:right;"> 0.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Levels </td>
   <td style="text-align:right;"> digit_f </td>
   <td style="text-align:right;"> 0.20 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Levels </td>
   <td style="text-align:right;"> prose_im </td>
   <td style="text-align:right;"> 0.21 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Levels </td>
   <td style="text-align:right;"> symbol </td>
   <td style="text-align:right;"> 0.04 </td>
  </tr>
</tbody>
</table>

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Covariance of Slopes </td>
   <td style="text-align:right;"> block </td>
   <td style="text-align:right;"> 0.74 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Slopes </td>
   <td style="text-align:right;"> digit_b </td>
   <td style="text-align:right;"> 0.75 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Slopes </td>
   <td style="text-align:right;"> digit_f </td>
   <td style="text-align:right;"> 0.28 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Slopes </td>
   <td style="text-align:right;"> prose_im </td>
   <td style="text-align:right;"> 0.43 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Slopes </td>
   <td style="text-align:right;"> symbol </td>
   <td style="text-align:right;"> 0.69 </td>
  </tr>
</tbody>
</table>

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Covariance of  Residuals </td>
   <td style="text-align:right;"> block </td>
   <td style="text-align:right;"> 0.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of  Residuals </td>
   <td style="text-align:right;"> digit_b </td>
   <td style="text-align:right;"> 0.59 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of  Residuals </td>
   <td style="text-align:right;"> digit_f </td>
   <td style="text-align:right;"> 0.25 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of  Residuals </td>
   <td style="text-align:right;"> prose_im </td>
   <td style="text-align:right;"> 0.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of  Residuals </td>
   <td style="text-align:right;"> symbol </td>
   <td style="text-align:right;"> 0.18 </td>
  </tr>
</tbody>
</table>


# male 

 Gender = _male_; Model type: _aehplus_;  Process (a) = _gait_; Process (b): *block*, *digit_b*, *digit_f*, *symbol*


 process   label                                      block                digit_b                digit_f                  symbol       mean(sd)
---------  -------------------------  ---------------------  ---------------------  ---------------------  ----------------------  -------------
    a      Level                        9.23 (0.65)    <.01    9.09 (0.65)    <.01    9.01 (0.63)    <.01     9.22 (0.65)    <.01     9.14(0.10)
    a      Slope                        0.18 (0.18)     .31    0.20 (0.19)     .29    0.22 (0.18)     .21     0.21 (0.18)     .24     0.20(0.02)
    a      Level * age                  0.30 (0.10)    <.01    0.28 (0.10)    <.01    0.30 (0.10)    <.01     0.30 (0.10)    <.01     0.29(0.01)
    a      Level * education           -0.08 (0.10)     .40   -0.08 (0.10)     .39   -0.08 (0.09)     .39    -0.08 (0.10)     .38    -0.08(0.00)
    a      Level * height              -0.06 (0.04)     .18   -0.05 (0.04)     .22   -0.05 (0.04)     .23    -0.06 (0.04)     .18    -0.05(0.00)
    a      Level * smoking              0.91 (0.56)     .11    1.00 (0.56)     .07    1.04 (0.57)     .07     0.91 (0.56)     .11     0.97(0.07)
    a      Level * cardio               1.27 (0.53)     .02    1.32 (0.53)     .01    1.30 (0.53)     .01     1.30 (0.53)     .01     1.30(0.02)
    a      Level * diabetes             1.18 (0.81)     .14    1.29 (0.81)     .11    1.26 (0.81)     .12     1.11 (0.81)     .17     1.21(0.08)
    a      Slope * age                 -0.01 (0.03)     .71   -0.01 (0.03)     .86   -0.01 (0.03)     .66    -0.01 (0.03)     .73    -0.01(0.00)
    a      Slope * education            0.00 (0.02)     .92    0.00 (0.02)     .85    0.00 (0.02)     .88     0.01 (0.02)     .78     0.00(0.00)
    a      Slope * height               0.01 (0.01)     .39    0.00 (0.01)     .68    0.01 (0.01)     .54     0.01 (0.01)     .39     0.01(0.00)
    a      Slope * smoking             -0.09 (0.14)     .50   -0.05 (0.13)     .68   -0.09 (0.14)     .55    -0.10 (0.14)     .46    -0.08(0.02)
    a      Slope * cardio               0.24 (0.14)     .10    0.21 (0.15)     .15    0.22 (0.14)     .12     0.22 (0.14)     .13     0.22(0.01)
    a      Slope * diabetes             0.15 (0.23)     .51    0.07 (0.23)     .76    0.08 (0.23)     .72     0.11 (0.23)     .63     0.10(0.04)
    b      Level                       14.90 (1.81)    <.01    3.95 (0.31)    <.01    5.88 (0.32)    <.01    28.76 (2.73)    <.01            ---
    b      Slope                       -0.36 (0.22)     .10   -0.15 (0.09)     .10   -0.06 (0.06)     .39    -0.37 (0.41)     .37            ---
    b      Level * age                 -0.47 (0.22)     .04   -0.08 (0.04)     .08   -0.02 (0.03)     .41    -0.63 (0.37)     .09            ---
    b      Level * education            0.63 (0.19)    <.01    0.12 (0.03)    <.01    0.07 (0.02)     .01     1.65 (0.24)    <.01            ---
    b      Level * height               0.15 (0.09)     .08    0.00 (0.02)     .91    0.01 (0.01)     .42     0.23 (0.12)     .05            ---
    b      Level * smoking             -3.67 (1.44)     .01   -0.19 (0.28)     .50   -0.47 (0.23)     .04    -6.12 (2.25)     .01            ---
    b      Level * cardio              -0.61 (1.12)     .59   -0.55 (0.24)     .02   -0.01 (0.19)     .94    -1.47 (1.77)     .41            ---
    b      Level * diabetes            -2.61 (1.32)     .05   -0.29 (0.43)     .49   -0.03 (0.27)     .92    -2.58 (2.27)     .26            ---
    b      Slope * age                  0.04 (0.04)     .21    0.00 (0.01)     .83   -0.01 (0.01)     .08     0.05 (0.07)     .45            ---
    b      Slope * education            0.02 (0.04)     .65   -0.00 (0.01)     .62    0.01 (0.01)     .20     0.02 (0.04)     .58            ---
    b      Slope * height              -0.01 (0.01)     .62    0.01 (0.00)     .13   -0.00 (0.00)     .19    -0.02 (0.02)     .30            ---
    b      Slope * smoking              0.05 (0.16)     .77   -0.03 (0.08)     .73    0.06 (0.05)     .23     0.22 (0.30)     .47            ---
    b      Slope * cardio              -0.17 (0.17)     .32    0.08 (0.06)     .13   -0.02 (0.04)     .50    -0.16 (0.27)     .54            ---
    b      Slope * diabetes             0.23 (0.30)     .44   -0.04 (0.12)     .77   -0.00 (0.06)     .96    -0.09 (0.43)     .84            ---
    a      Var (Level)                  4.11 (1.44)    <.01    4.14 (1.49)    <.01    3.86 (1.39)     .01     3.85 (1.40)     .01     3.99(0.16)
    a      Var (Slope)                  0.06 (0.09)     .51    0.06 (0.10)     .50    0.04 (0.08)     .61     0.04 (0.07)     .62     0.05(0.01)
    a      Var (Residual)               6.22 (1.14)    <.01    6.21 (1.12)    <.01    6.37 (1.21)    <.01     6.38 (1.20)    <.01     6.29(0.09)
    a      Covar (Level, Slope)         0.07 (0.37)     .85    0.05 (0.39)     .90    0.12 (0.35)     .72     0.14 (0.34)     .68     0.10(0.04)
    b      Var (Level)                 32.21 (5.07)    <.01    1.06 (0.27)    <.01    0.81 (0.18)    <.01   71.50 (10.55)    <.01            ---
    b      Var (Slope)                  0.05 (0.18)     .79    0.02 (0.01)     .18    0.01 (0.00)     .03     0.35 (0.24)     .15            ---
    b      Var (Residual)               9.25 (1.33)    <.01    0.95 (0.14)    <.01    0.52 (0.08)    <.01    17.91 (2.56)    <.01            ---
    b      Covar (Level, Slope)         0.01 (0.50)     .98   -0.09 (0.05)     .07   -0.07 (0.03)     .01    -2.52 (1.12)     .02            ---
   ab      Covar (Levels)              -4.56 (1.84)     .01   -0.46 (0.45)     .31   -0.31 (0.31)     .31    -7.59 (2.84)     .01            ---
   ab      Covar (Slopes)              -0.04 (0.09)     .68   -0.02 (0.03)     .45   -0.01 (0.01)     .34     0.00 (0.11)     .99            ---
   ab      Covar (Residuals)           -0.78 (0.73)     .28   -0.11 (0.27)     .69   -0.10 (0.13)     .41    -2.51 (1.18)     .03            ---
    \      Correlation of Levels                      -0.40                 -0.217                 -0.175                 -0.4574    -0.31(0.14)
    \      Correlation of Slopes                      -0.74                 -0.582                 -0.555                  0.0088    -0.47(0.33)
    \      Correlation of Residuals                   -0.10                 -0.045                 -0.057                 -0.2350    -0.11(0.09)
    \      N                                            137                    139                    139                     134   137.25(2.36)
    \      occasions                                      5                      5                      5                       5     5.00(0.00)
    \      parameters                                    41                     41                     41                      41    41.00(0.00)
    \      LL                                        -2,102                 -1,649                 -1,539                  -2,117    -1,852(301)
    \      AIC                                        4,286                  3,380                  3,160                   4,317     3,786(602)
    \      BIC                                        4,406                  3,500                  3,281                   4,436     3,906(602)

##  block 

 Gender = _male_;  Process (a) = *gait*; Process (b) = _block_


 process   label                                    aehplus
---------  -------------------------  ---------------------
    a      Level                        9.23 (0.65)    <.01
    a      Slope                        0.18 (0.18)     .31
    a      Level * age                  0.30 (0.10)    <.01
    a      Level * education           -0.08 (0.10)     .40
    a      Level * height              -0.06 (0.04)     .18
    a      Level * smoking              0.91 (0.56)     .11
    a      Level * cardio               1.27 (0.53)     .02
    a      Level * diabetes             1.18 (0.81)     .14
    a      Slope * age                 -0.01 (0.03)     .71
    a      Slope * education            0.00 (0.02)     .92
    a      Slope * height               0.01 (0.01)     .39
    a      Slope * smoking             -0.09 (0.14)     .50
    a      Slope * cardio               0.24 (0.14)     .10
    a      Slope * diabetes             0.15 (0.23)     .51
    b      Level                       14.90 (1.81)    <.01
    b      Slope                       -0.36 (0.22)     .10
    b      Level * age                 -0.47 (0.22)     .04
    b      Level * education            0.63 (0.19)    <.01
    b      Level * height               0.15 (0.09)     .08
    b      Level * smoking             -3.67 (1.44)     .01
    b      Level * cardio              -0.61 (1.12)     .59
    b      Level * diabetes            -2.61 (1.32)     .05
    b      Slope * age                  0.04 (0.04)     .21
    b      Slope * education            0.02 (0.04)     .65
    b      Slope * height              -0.01 (0.01)     .62
    b      Slope * smoking              0.05 (0.16)     .77
    b      Slope * cardio              -0.17 (0.17)     .32
    b      Slope * diabetes             0.23 (0.30)     .44
    a      Var (Level)                  4.11 (1.44)    <.01
    a      Var (Slope)                  0.06 (0.09)     .51
    a      Var (Residual)               6.22 (1.14)    <.01
    a      Covar (Level, Slope)         0.07 (0.37)     .85
    b      Var (Level)                 32.21 (5.07)    <.01
    b      Var (Slope)                  0.05 (0.18)     .79
    b      Var (Residual)               9.25 (1.33)    <.01
    b      Covar (Level, Slope)         0.01 (0.50)     .98
   ab      Covar (Levels)              -4.56 (1.84)     .01
   ab      Covar (Slopes)              -0.04 (0.09)     .68
   ab      Covar (Residuals)           -0.78 (0.73)     .28
    \      Correlation of Levels                      -0.40
    \      Correlation of Slopes                      -0.74
    \      Correlation of Residuals                   -0.10
    \      N                                            137
    \      occasions                                      5
    \      parameters                                    41
    \      LL                                        -2,102
    \      AIC                                        4,286
    \      BIC                                        4,406

##  digit_b 

 Gender = _male_;  Process (a) = *gait*; Process (b) = _digit_b_


 process   label                                    aehplus
---------  -------------------------  ---------------------
    a      Level                        9.09 (0.65)    <.01
    a      Slope                        0.20 (0.19)     .29
    a      Level * age                  0.28 (0.10)    <.01
    a      Level * education           -0.08 (0.10)     .39
    a      Level * height              -0.05 (0.04)     .22
    a      Level * smoking              1.00 (0.56)     .07
    a      Level * cardio               1.32 (0.53)     .01
    a      Level * diabetes             1.29 (0.81)     .11
    a      Slope * age                 -0.01 (0.03)     .86
    a      Slope * education            0.00 (0.02)     .85
    a      Slope * height               0.00 (0.01)     .68
    a      Slope * smoking             -0.05 (0.13)     .68
    a      Slope * cardio               0.21 (0.15)     .15
    a      Slope * diabetes             0.07 (0.23)     .76
    b      Level                        3.95 (0.31)    <.01
    b      Slope                       -0.15 (0.09)     .10
    b      Level * age                 -0.08 (0.04)     .08
    b      Level * education            0.12 (0.03)    <.01
    b      Level * height               0.00 (0.02)     .91
    b      Level * smoking             -0.19 (0.28)     .50
    b      Level * cardio              -0.55 (0.24)     .02
    b      Level * diabetes            -0.29 (0.43)     .49
    b      Slope * age                  0.00 (0.01)     .83
    b      Slope * education           -0.00 (0.01)     .62
    b      Slope * height               0.01 (0.00)     .13
    b      Slope * smoking             -0.03 (0.08)     .73
    b      Slope * cardio               0.08 (0.06)     .13
    b      Slope * diabetes            -0.04 (0.12)     .77
    a      Var (Level)                  4.14 (1.49)    <.01
    a      Var (Slope)                  0.06 (0.10)     .50
    a      Var (Residual)               6.21 (1.12)    <.01
    a      Covar (Level, Slope)         0.05 (0.39)     .90
    b      Var (Level)                  1.06 (0.27)    <.01
    b      Var (Slope)                  0.02 (0.01)     .18
    b      Var (Residual)               0.95 (0.14)    <.01
    b      Covar (Level, Slope)        -0.09 (0.05)     .07
   ab      Covar (Levels)              -0.46 (0.45)     .31
   ab      Covar (Slopes)              -0.02 (0.03)     .45
   ab      Covar (Residuals)           -0.11 (0.27)     .69
    \      Correlation of Levels                     -0.217
    \      Correlation of Slopes                     -0.582
    \      Correlation of Residuals                  -0.045
    \      N                                            139
    \      occasions                                      5
    \      parameters                                    41
    \      LL                                        -1,649
    \      AIC                                        3,380
    \      BIC                                        3,500

##  digit_f 

 Gender = _male_;  Process (a) = *gait*; Process (b) = _digit_f_


 process   label                                    aehplus
---------  -------------------------  ---------------------
    a      Level                        9.01 (0.63)    <.01
    a      Slope                        0.22 (0.18)     .21
    a      Level * age                  0.30 (0.10)    <.01
    a      Level * education           -0.08 (0.09)     .39
    a      Level * height              -0.05 (0.04)     .23
    a      Level * smoking              1.04 (0.57)     .07
    a      Level * cardio               1.30 (0.53)     .01
    a      Level * diabetes             1.26 (0.81)     .12
    a      Slope * age                 -0.01 (0.03)     .66
    a      Slope * education            0.00 (0.02)     .88
    a      Slope * height               0.01 (0.01)     .54
    a      Slope * smoking             -0.09 (0.14)     .55
    a      Slope * cardio               0.22 (0.14)     .12
    a      Slope * diabetes             0.08 (0.23)     .72
    b      Level                        5.88 (0.32)    <.01
    b      Slope                       -0.06 (0.06)     .39
    b      Level * age                 -0.02 (0.03)     .41
    b      Level * education            0.07 (0.02)     .01
    b      Level * height               0.01 (0.01)     .42
    b      Level * smoking             -0.47 (0.23)     .04
    b      Level * cardio              -0.01 (0.19)     .94
    b      Level * diabetes            -0.03 (0.27)     .92
    b      Slope * age                 -0.01 (0.01)     .08
    b      Slope * education            0.01 (0.01)     .20
    b      Slope * height              -0.00 (0.00)     .19
    b      Slope * smoking              0.06 (0.05)     .23
    b      Slope * cardio              -0.02 (0.04)     .50
    b      Slope * diabetes            -0.00 (0.06)     .96
    a      Var (Level)                  3.86 (1.39)     .01
    a      Var (Slope)                  0.04 (0.08)     .61
    a      Var (Residual)               6.37 (1.21)    <.01
    a      Covar (Level, Slope)         0.12 (0.35)     .72
    b      Var (Level)                  0.81 (0.18)    <.01
    b      Var (Slope)                  0.01 (0.00)     .03
    b      Var (Residual)               0.52 (0.08)    <.01
    b      Covar (Level, Slope)        -0.07 (0.03)     .01
   ab      Covar (Levels)              -0.31 (0.31)     .31
   ab      Covar (Slopes)              -0.01 (0.01)     .34
   ab      Covar (Residuals)           -0.10 (0.13)     .41
    \      Correlation of Levels                     -0.175
    \      Correlation of Slopes                     -0.555
    \      Correlation of Residuals                  -0.057
    \      N                                            139
    \      occasions                                      5
    \      parameters                                    41
    \      LL                                        -1,539
    \      AIC                                        3,160
    \      BIC                                        3,281

##  symbol 

 Gender = _male_;  Process (a) = *gait*; Process (b) = _symbol_


 process   label                                     aehplus
---------  -------------------------  ----------------------
    a      Level                         9.22 (0.65)    <.01
    a      Slope                         0.21 (0.18)     .24
    a      Level * age                   0.30 (0.10)    <.01
    a      Level * education            -0.08 (0.10)     .38
    a      Level * height               -0.06 (0.04)     .18
    a      Level * smoking               0.91 (0.56)     .11
    a      Level * cardio                1.30 (0.53)     .01
    a      Level * diabetes              1.11 (0.81)     .17
    a      Slope * age                  -0.01 (0.03)     .73
    a      Slope * education             0.01 (0.02)     .78
    a      Slope * height                0.01 (0.01)     .39
    a      Slope * smoking              -0.10 (0.14)     .46
    a      Slope * cardio                0.22 (0.14)     .13
    a      Slope * diabetes              0.11 (0.23)     .63
    b      Level                        28.76 (2.73)    <.01
    b      Slope                        -0.37 (0.41)     .37
    b      Level * age                  -0.63 (0.37)     .09
    b      Level * education             1.65 (0.24)    <.01
    b      Level * height                0.23 (0.12)     .05
    b      Level * smoking              -6.12 (2.25)     .01
    b      Level * cardio               -1.47 (1.77)     .41
    b      Level * diabetes             -2.58 (2.27)     .26
    b      Slope * age                   0.05 (0.07)     .45
    b      Slope * education             0.02 (0.04)     .58
    b      Slope * height               -0.02 (0.02)     .30
    b      Slope * smoking               0.22 (0.30)     .47
    b      Slope * cardio               -0.16 (0.27)     .54
    b      Slope * diabetes             -0.09 (0.43)     .84
    a      Var (Level)                   3.85 (1.40)     .01
    a      Var (Slope)                   0.04 (0.07)     .62
    a      Var (Residual)                6.38 (1.20)    <.01
    a      Covar (Level, Slope)          0.14 (0.34)     .68
    b      Var (Level)                 71.50 (10.55)    <.01
    b      Var (Slope)                   0.35 (0.24)     .15
    b      Var (Residual)               17.91 (2.56)    <.01
    b      Covar (Level, Slope)         -2.52 (1.12)     .02
   ab      Covar (Levels)               -7.59 (2.84)     .01
   ab      Covar (Slopes)                0.00 (0.11)     .99
   ab      Covar (Residuals)            -2.51 (1.18)     .03
    \      Correlation of Levels                     -0.4574
    \      Correlation of Slopes                      0.0088
    \      Correlation of Residuals                  -0.2350
    \      N                                             134
    \      occasions                                       5
    \      parameters                                     41
    \      LL                                         -2,117
    \      AIC                                         4,317
    \      BIC                                         4,436

## Summary 

 Study = _OCTO_; Gender = _male_; Process (a) = _gait_

 Computed correlations:

 <table>
 <thead>
  <tr>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> block </td>
   <td style="text-align:right;"> -0.40 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> digit_b </td>
   <td style="text-align:right;"> -0.22 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> digit_f </td>
   <td style="text-align:right;"> -0.17 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> symbol </td>
   <td style="text-align:right;"> -0.46 </td>
  </tr>
</tbody>
</table>

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> block </td>
   <td style="text-align:right;"> -0.74 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> digit_b </td>
   <td style="text-align:right;"> -0.58 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> digit_f </td>
   <td style="text-align:right;"> -0.55 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> symbol </td>
   <td style="text-align:right;"> 0.01 </td>
  </tr>
</tbody>
</table>

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> block </td>
   <td style="text-align:right;"> -0.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> digit_b </td>
   <td style="text-align:right;"> -0.04 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> digit_f </td>
   <td style="text-align:right;"> -0.06 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> symbol </td>
   <td style="text-align:right;"> -0.23 </td>
  </tr>
</tbody>
</table>


P-values for corresponding covariances: 

 <table>
 <thead>
  <tr>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Covariance of Levels </td>
   <td style="text-align:right;"> block </td>
   <td style="text-align:right;"> 0.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Levels </td>
   <td style="text-align:right;"> digit_b </td>
   <td style="text-align:right;"> 0.31 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Levels </td>
   <td style="text-align:right;"> digit_f </td>
   <td style="text-align:right;"> 0.31 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Levels </td>
   <td style="text-align:right;"> symbol </td>
   <td style="text-align:right;"> 0.01 </td>
  </tr>
</tbody>
</table>

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Covariance of Slopes </td>
   <td style="text-align:right;"> block </td>
   <td style="text-align:right;"> 0.68 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Slopes </td>
   <td style="text-align:right;"> digit_b </td>
   <td style="text-align:right;"> 0.45 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Slopes </td>
   <td style="text-align:right;"> digit_f </td>
   <td style="text-align:right;"> 0.34 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Slopes </td>
   <td style="text-align:right;"> symbol </td>
   <td style="text-align:right;"> 1.00 </td>
  </tr>
</tbody>
</table>

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Covariance of  Residuals </td>
   <td style="text-align:right;"> block </td>
   <td style="text-align:right;"> 0.28 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of  Residuals </td>
   <td style="text-align:right;"> digit_b </td>
   <td style="text-align:right;"> 0.69 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of  Residuals </td>
   <td style="text-align:right;"> digit_f </td>
   <td style="text-align:right;"> 0.41 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of  Residuals </td>
   <td style="text-align:right;"> symbol </td>
   <td style="text-align:right;"> 0.03 </td>
  </tr>
</tbody>
</table>


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
