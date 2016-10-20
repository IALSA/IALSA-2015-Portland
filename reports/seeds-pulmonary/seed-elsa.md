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
fev         word_de             2
fev         word_im             2




study_name   subgroup   model_type   process_a   process_b    n_models
-----------  ---------  -----------  ----------  ----------  ---------
elsa         female     aehplus      fev         word_de             1
elsa         female     aehplus      fev         word_im             1




study_name   subgroup   model_type   process_a   process_b    n_models
-----------  ---------  -----------  ----------  ----------  ---------
elsa         male       aehplus      fev         word_de             1
elsa         male       aehplus      fev         word_im             1


# female 

 Gender = _female_; Model type: _aehplus_;  Process (a) = _fev_; Process (b): *word_de*, *word_im*

```
Warning in FUN(newX[, i], ...): no non-missing arguments to min; returning Inf
```

```
Warning in FUN(newX[, i], ...): no non-missing arguments to max; returning -Inf
```



 process   label                                   word_de               word_im               mean(sd)
---------  -------------------------  --------------------  --------------------  ---------------------
    a      Level                        1.88(0.02),   <.01    1.88(0.02),   <.01             1.88(0.00)
    a      Slope                       -0.02(0.00),   <.01   -0.02(0.00),   <.01            -0.02(0.00)
    a      Level * age                 -0.03(0.00),   <.01   -0.03(0.00),   <.01            -0.03(0.00)
    a      Level * education            0.10(0.02),   <.01    0.10(0.02),   <.01             0.10(0.00)
    a      Level * height               0.03(0.00),   <.01    0.03(0.00),   <.01             0.03(0.00)
    a      Level * smoking             -0.11(0.02),   <.01   -0.11(0.02),   <.01            -0.11(0.00)
    a      Level * cardio              -0.11(0.03),   <.01   -0.11(0.03),   <.01            -0.11(0.00)
    a      Level * diabetes            -0.05(0.04),    .19   -0.05(0.04),    .17            -0.05(0.00)
    a      Slope * age                  0.00(0.00),    .42    0.00(0.00),    .41             0.00(0.00)
    a      Slope * education            0.00(0.00),    .68    0.00(0.00),    .62             0.00(0.00)
    a      Slope * height               0.00(0.00),    .03    0.00(0.00),    .02             0.00(0.00)
    a      Slope * smoking             -0.00(0.00),    .47   -0.00(0.00),    .44            -0.00(0.00)
    a      Slope * cardio               0.00(0.00),    .49    0.00(0.00),    .50             0.00(0.00)
    a      Slope * diabetes            -0.00(0.01),    .54   -0.00(0.01),    .53            -0.00(0.00)
    b      Level                        3.89(0.06),   <.01    5.29(0.05),   <.01                    ---
    b      Slope                       -0.04(0.01),   <.01   -0.04(0.01),   <.01                    ---
    b      Level * age                 -0.07(0.00),   <.01   -0.06(0.00),   <.01                    ---
    b      Level * education            1.00(0.07),   <.01    0.73(0.06),   <.01                    ---
    b      Level * height               0.02(0.00),   <.01    0.01(0.00),    .05                    ---
    b      Level * smoking             -0.21(0.06),   <.01   -0.04(0.05),    .49                    ---
    b      Level * cardio              -0.12(0.12),    .32   -0.20(0.10),    .05                    ---
    b      Level * diabetes            -0.38(0.16),    .02   -0.33(0.14),    .02                    ---
    b      Slope * age                 -0.00(0.00),   <.01   -0.00(0.00),   <.01                    ---
    b      Slope * education           -0.00(0.01),    .56    0.01(0.01),    .08                    ---
    b      Slope * height               0.00(0.00),    .72    0.00(0.00),    .26                    ---
    b      Slope * smoking              0.01(0.01),    .05   -0.00(0.01),    .58                    ---
    b      Slope * cardio              -0.01(0.01),    .54    0.00(0.01),    .78                    ---
    b      Slope * diabetes             0.01(0.02),    .62    0.01(0.02),    .55                    ---
    a      Var (Level)                  0.14(0.01),   <.01    0.14(0.01),   <.01             0.14(0.00)
    a      Var (Slope)                  0.00(0.00),    .56    0.00(0.00),    .56             0.00(0.00)
    a      Var (Residual)               0.10(0.01),   <.01    0.10(0.01),   <.01             0.10(0.00)
    a      Covar (Level, Slope)        -0.00(0.00),    .65   -0.00(0.00),    .67            -0.00(0.00)
    b      Var (Level)                  1.47(0.10),   <.01    0.97(0.09),   <.01                    ---
    b      Var (Slope)                  0.00(0.00),    .63    0.00(0.00),    .07                    ---
    b      Var (Residual)               1.91(0.07),   <.01    1.60(0.06),   <.01                    ---
    b      Covar (Level, Slope)         0.01(0.01),    .37   -0.01(0.01),    .34                    ---
   ab      Covar (Levels)               0.02(0.02),    .25    0.03(0.02),    .09                    ---
   ab      Covar (Slopes)               0.00(0.00),    .63    0.00(0.00),    .68                    ---
   ab      Covar (Residuals)            0.01(0.01),    .57    0.01(0.01),    .29                    ---
    \      Correlation of Levels                     0.047                 0.071             0.06(0.02)
    \      Correlation of Slopes                       NaN                   NaN                    ---
    \      Correlation of Residuals                  0.016                 0.025             0.02(0.01)
    \      N                                         3,511                 3,511          3511.00(0.00)
    \      occasions                                     6                     6             6.00(0.00)
    \      parameters                                   41                    41            41.00(0.00)
    \      LL                                      -20,325               -19,347   -1.983632e+04(  692)
    \      AIC                                      40,733                38,776    3.975464e+04(1,383)
    \      BIC                                      40,986                39,029    4.000735e+04(1,383)

##  word_de 

 Gender = _female_;  Process (a) = *fev*; Process (b) = _word_de_

```
Warning in FUN(newX[, i], ...): no non-missing arguments to min; returning Inf

Warning in FUN(newX[, i], ...): no non-missing arguments to max; returning -Inf
```



 process   label                                   aehplus            mean(sd)
---------  -------------------------  --------------------  ------------------
    a      Level                        1.88(0.02),   <.01            1.88(NA)
    a      Slope                       -0.02(0.00),   <.01           -0.02(NA)
    a      Level * age                 -0.03(0.00),   <.01           -0.03(NA)
    a      Level * education            0.10(0.02),   <.01            0.10(NA)
    a      Level * height               0.03(0.00),   <.01            0.03(NA)
    a      Level * smoking             -0.11(0.02),   <.01           -0.11(NA)
    a      Level * cardio              -0.11(0.03),   <.01           -0.11(NA)
    a      Level * diabetes            -0.05(0.04),    .19           -0.05(NA)
    a      Slope * age                  0.00(0.00),    .42            0.00(NA)
    a      Slope * education            0.00(0.00),    .68            0.00(NA)
    a      Slope * height               0.00(0.00),    .03            0.00(NA)
    a      Slope * smoking             -0.00(0.00),    .47           -0.00(NA)
    a      Slope * cardio               0.00(0.00),    .49            0.00(NA)
    a      Slope * diabetes            -0.00(0.01),    .54           -0.00(NA)
    b      Level                        3.89(0.06),   <.01            3.89(NA)
    b      Slope                       -0.04(0.01),   <.01           -0.04(NA)
    b      Level * age                 -0.07(0.00),   <.01           -0.07(NA)
    b      Level * education            1.00(0.07),   <.01            1.00(NA)
    b      Level * height               0.02(0.00),   <.01            0.02(NA)
    b      Level * smoking             -0.21(0.06),   <.01           -0.21(NA)
    b      Level * cardio              -0.12(0.12),    .32           -0.12(NA)
    b      Level * diabetes            -0.38(0.16),    .02           -0.38(NA)
    b      Slope * age                 -0.00(0.00),   <.01           -0.00(NA)
    b      Slope * education           -0.00(0.01),    .56           -0.00(NA)
    b      Slope * height               0.00(0.00),    .72            0.00(NA)
    b      Slope * smoking              0.01(0.01),    .05            0.01(NA)
    b      Slope * cardio              -0.01(0.01),    .54           -0.01(NA)
    b      Slope * diabetes             0.01(0.02),    .62            0.01(NA)
    a      Var (Level)                  0.14(0.01),   <.01            0.14(NA)
    a      Var (Slope)                  0.00(0.00),    .56            0.00(NA)
    a      Var (Residual)               0.10(0.01),   <.01            0.10(NA)
    a      Covar (Level, Slope)        -0.00(0.00),    .65           -0.00(NA)
    b      Var (Level)                  1.47(0.10),   <.01            1.47(NA)
    b      Var (Slope)                  0.00(0.00),    .63            0.00(NA)
    b      Var (Residual)               1.91(0.07),   <.01            1.91(NA)
    b      Covar (Level, Slope)         0.01(0.01),    .37            0.01(NA)
   ab      Covar (Levels)               0.02(0.02),    .25            0.02(NA)
   ab      Covar (Slopes)               0.00(0.00),    .63            0.00(NA)
   ab      Covar (Residuals)            0.01(0.01),    .57            0.01(NA)
    \      Correlation of Levels                     0.047            0.05(NA)
    \      Correlation of Slopes                       NaN                 ---
    \      Correlation of Residuals                  0.016            0.02(NA)
    \      N                                         3,511         3511.00(NA)
    \      occasions                                     6            6.00(NA)
    \      parameters                                   41           41.00(NA)
    \      LL                                      -20,325   -2.032545e+04(NA)
    \      AIC                                      40,733    4.073290e+04(NA)
    \      BIC                                      40,986    4.098561e+04(NA)

##  word_im 

 Gender = _female_;  Process (a) = *fev*; Process (b) = _word_im_

```
Warning in FUN(newX[, i], ...): no non-missing arguments to min; returning Inf

Warning in FUN(newX[, i], ...): no non-missing arguments to max; returning -Inf
```



 process   label                                   aehplus            mean(sd)
---------  -------------------------  --------------------  ------------------
    a      Level                        1.88(0.02),   <.01            1.88(NA)
    a      Slope                       -0.02(0.00),   <.01           -0.02(NA)
    a      Level * age                 -0.03(0.00),   <.01           -0.03(NA)
    a      Level * education            0.10(0.02),   <.01            0.10(NA)
    a      Level * height               0.03(0.00),   <.01            0.03(NA)
    a      Level * smoking             -0.11(0.02),   <.01           -0.11(NA)
    a      Level * cardio              -0.11(0.03),   <.01           -0.11(NA)
    a      Level * diabetes            -0.05(0.04),    .17           -0.05(NA)
    a      Slope * age                  0.00(0.00),    .41            0.00(NA)
    a      Slope * education            0.00(0.00),    .62            0.00(NA)
    a      Slope * height               0.00(0.00),    .02            0.00(NA)
    a      Slope * smoking             -0.00(0.00),    .44           -0.00(NA)
    a      Slope * cardio               0.00(0.00),    .50            0.00(NA)
    a      Slope * diabetes            -0.00(0.01),    .53           -0.00(NA)
    b      Level                        5.29(0.05),   <.01            5.29(NA)
    b      Slope                       -0.04(0.01),   <.01           -0.04(NA)
    b      Level * age                 -0.06(0.00),   <.01           -0.06(NA)
    b      Level * education            0.73(0.06),   <.01            0.73(NA)
    b      Level * height               0.01(0.00),    .05            0.01(NA)
    b      Level * smoking             -0.04(0.05),    .49           -0.04(NA)
    b      Level * cardio              -0.20(0.10),    .05           -0.20(NA)
    b      Level * diabetes            -0.33(0.14),    .02           -0.33(NA)
    b      Slope * age                 -0.00(0.00),   <.01           -0.00(NA)
    b      Slope * education            0.01(0.01),    .08            0.01(NA)
    b      Slope * height               0.00(0.00),    .26            0.00(NA)
    b      Slope * smoking             -0.00(0.01),    .58           -0.00(NA)
    b      Slope * cardio               0.00(0.01),    .78            0.00(NA)
    b      Slope * diabetes             0.01(0.02),    .55            0.01(NA)
    a      Var (Level)                  0.14(0.01),   <.01            0.14(NA)
    a      Var (Slope)                  0.00(0.00),    .56            0.00(NA)
    a      Var (Residual)               0.10(0.01),   <.01            0.10(NA)
    a      Covar (Level, Slope)        -0.00(0.00),    .67           -0.00(NA)
    b      Var (Level)                  0.97(0.09),   <.01            0.97(NA)
    b      Var (Slope)                  0.00(0.00),    .07            0.00(NA)
    b      Var (Residual)               1.60(0.06),   <.01            1.60(NA)
    b      Covar (Level, Slope)        -0.01(0.01),    .34           -0.01(NA)
   ab      Covar (Levels)               0.03(0.02),    .09            0.03(NA)
   ab      Covar (Slopes)               0.00(0.00),    .68            0.00(NA)
   ab      Covar (Residuals)            0.01(0.01),    .29            0.01(NA)
    \      Correlation of Levels                     0.071            0.07(NA)
    \      Correlation of Slopes                       NaN                 ---
    \      Correlation of Residuals                  0.025            0.02(NA)
    \      N                                         3,511         3511.00(NA)
    \      occasions                                     6            6.00(NA)
    \      parameters                                   41           41.00(NA)
    \      LL                                      -19,347   -1.934719e+04(NA)
    \      AIC                                      38,776    3.877638e+04(NA)
    \      BIC                                      39,029    3.902909e+04(NA)

## Summary 

 Study = _ELSA_; Gender = _female_; Process (a) = _fev_

 

label                    process_b   aehplus
----------------------  ----------  --------
Correlation of Levels      word_de      0.05
Correlation of Levels      word_im      0.07



label                    process_b   aehplus
----------------------  ----------  --------
Correlation of Slopes      word_de       NaN
Correlation of Slopes      word_im       NaN



label                       process_b   aehplus
-------------------------  ----------  --------
Correlation of Residuals      word_de      0.02
Correlation of Residuals      word_im      0.02



# male 

 Gender = _male_; Model type: _aehplus_;  Process (a) = _fev_; Process (b): *word_de*, *word_im*


 process   label                                   word_de               word_im               mean(sd)
---------  -------------------------  --------------------  --------------------  ---------------------
    a      Level                        2.63(0.03),   <.01    2.63(0.03),   <.01             2.63(0.00)
    a      Slope                       -0.02(0.00),   <.01   -0.02(0.00),   <.01            -0.02(0.00)
    a      Level * age                 -0.03(0.00),   <.01   -0.03(0.00),   <.01            -0.03(0.00)
    a      Level * education            0.20(0.03),   <.01    0.20(0.03),   <.01             0.20(0.00)
    a      Level * height               0.03(0.00),   <.01    0.03(0.00),   <.01             0.03(0.00)
    a      Level * smoking             -0.21(0.03),   <.01   -0.21(0.03),   <.01            -0.21(0.00)
    a      Level * cardio              -0.20(0.04),   <.01   -0.20(0.04),   <.01            -0.20(0.00)
    a      Level * diabetes            -0.06(0.05),    .18   -0.06(0.05),    .19            -0.06(0.00)
    a      Slope * age                  0.00(0.00),    .49    0.00(0.00),    .52             0.00(0.00)
    a      Slope * education           -0.01(0.00),    .08   -0.01(0.00),    .08            -0.01(0.00)
    a      Slope * height               0.00(0.00),    .94    0.00(0.00),    .91             0.00(0.00)
    a      Slope * smoking              0.00(0.00),    .36    0.00(0.00),    .35             0.00(0.00)
    a      Slope * cardio               0.00(0.00),    .56    0.00(0.00),    .57             0.00(0.00)
    a      Slope * diabetes            -0.02(0.01),    .01   -0.02(0.01),    .01            -0.02(0.00)
    b      Level                        3.27(0.08),   <.01    4.87(0.07),   <.01                    ---
    b      Slope                        0.00(0.01),    .61   -0.03(0.01),   <.01                    ---
    b      Level * age                 -0.07(0.00),   <.01   -0.05(0.00),   <.01                    ---
    b      Level * education            0.92(0.07),   <.01    0.76(0.06),   <.01                    ---
    b      Level * height               0.02(0.00),   <.01    0.01(0.00),   <.01                    ---
    b      Level * smoking              0.02(0.07),    .71   -0.00(0.06),    .95                    ---
    b      Level * cardio              -0.06(0.10),    .52   -0.16(0.09),    .07                    ---
    b      Level * diabetes            -0.28(0.11),    .01   -0.10(0.10),    .32                    ---
    b      Slope * age                 -0.00(0.00),   <.01   -0.00(0.00),   <.01                    ---
    b      Slope * education           -0.01(0.01),    .18   -0.00(0.01),    .95                    ---
    b      Slope * height               0.00(0.00),    .96    0.00(0.00),    .10                    ---
    b      Slope * smoking             -0.02(0.01),    .02   -0.02(0.01),    .04                    ---
    b      Slope * cardio              -0.03(0.01),    .03   -0.01(0.01),    .66                    ---
    b      Slope * diabetes            -0.01(0.02),    .41   -0.01(0.02),    .53                    ---
    a      Var (Level)                  0.33(0.02),   <.01    0.33(0.02),   <.01             0.33(0.00)
    a      Var (Slope)                  0.00(0.00),    .03    0.00(0.00),    .03             0.00(0.00)
    a      Var (Residual)               0.19(0.02),   <.01    0.19(0.02),   <.01             0.19(0.00)
    a      Covar (Level, Slope)        -0.01(0.00),   <.01   -0.01(0.00),   <.01            -0.01(0.00)
    b      Var (Level)                  1.36(0.10),   <.01    1.00(0.08),   <.01                    ---
    b      Var (Slope)                  0.00(0.00),    .53    0.00(0.00),    .01                    ---
    b      Var (Residual)               1.75(0.07),   <.01    1.40(0.06),   <.01                    ---
    b      Covar (Level, Slope)        -0.00(0.01),    .73   -0.02(0.01),    .05                    ---
   ab      Covar (Levels)               0.04(0.03),    .16    0.03(0.02),    .15                    ---
   ab      Covar (Slopes)               0.00(0.00),    .54    0.00(0.00),    .52                    ---
   ab      Covar (Residuals)            0.02(0.01),    .27    0.02(0.01),    .06                    ---
    \      Correlation of Levels                     0.057                 0.056             0.06(0.00)
    \      Correlation of Slopes                     0.000                 0.000             0.00(0.00)
    \      Correlation of Residuals                  0.028                 0.045             0.04(0.01)
    \      N                                         3,091                 3,091          3091.00(0.00)
    \      occasions                                     6                     6             6.00(0.00)
    \      parameters                                   41                    41            41.00(0.00)
    \      LL                                      -19,478               -18,631   -1.905493e+04(  599)
    \      AIC                                      39,039                37,345    3.819186e+04(1,198)
    \      BIC                                      39,286                37,592    3.843934e+04(1,198)

##  word_de 

 Gender = _male_;  Process (a) = *fev*; Process (b) = _word_de_


 process   label                                   aehplus            mean(sd)
---------  -------------------------  --------------------  ------------------
    a      Level                        2.63(0.03),   <.01            2.63(NA)
    a      Slope                       -0.02(0.00),   <.01           -0.02(NA)
    a      Level * age                 -0.03(0.00),   <.01           -0.03(NA)
    a      Level * education            0.20(0.03),   <.01            0.20(NA)
    a      Level * height               0.03(0.00),   <.01            0.03(NA)
    a      Level * smoking             -0.21(0.03),   <.01           -0.21(NA)
    a      Level * cardio              -0.20(0.04),   <.01           -0.20(NA)
    a      Level * diabetes            -0.06(0.05),    .18           -0.06(NA)
    a      Slope * age                  0.00(0.00),    .49            0.00(NA)
    a      Slope * education           -0.01(0.00),    .08           -0.01(NA)
    a      Slope * height               0.00(0.00),    .94            0.00(NA)
    a      Slope * smoking              0.00(0.00),    .36            0.00(NA)
    a      Slope * cardio               0.00(0.00),    .56            0.00(NA)
    a      Slope * diabetes            -0.02(0.01),    .01           -0.02(NA)
    b      Level                        3.27(0.08),   <.01            3.27(NA)
    b      Slope                        0.00(0.01),    .61            0.00(NA)
    b      Level * age                 -0.07(0.00),   <.01           -0.07(NA)
    b      Level * education            0.92(0.07),   <.01            0.92(NA)
    b      Level * height               0.02(0.00),   <.01            0.02(NA)
    b      Level * smoking              0.02(0.07),    .71            0.02(NA)
    b      Level * cardio              -0.06(0.10),    .52           -0.06(NA)
    b      Level * diabetes            -0.28(0.11),    .01           -0.28(NA)
    b      Slope * age                 -0.00(0.00),   <.01           -0.00(NA)
    b      Slope * education           -0.01(0.01),    .18           -0.01(NA)
    b      Slope * height               0.00(0.00),    .96            0.00(NA)
    b      Slope * smoking             -0.02(0.01),    .02           -0.02(NA)
    b      Slope * cardio              -0.03(0.01),    .03           -0.03(NA)
    b      Slope * diabetes            -0.01(0.02),    .41           -0.01(NA)
    a      Var (Level)                  0.33(0.02),   <.01            0.33(NA)
    a      Var (Slope)                  0.00(0.00),    .03            0.00(NA)
    a      Var (Residual)               0.19(0.02),   <.01            0.19(NA)
    a      Covar (Level, Slope)        -0.01(0.00),   <.01           -0.01(NA)
    b      Var (Level)                  1.36(0.10),   <.01            1.36(NA)
    b      Var (Slope)                  0.00(0.00),    .53            0.00(NA)
    b      Var (Residual)               1.75(0.07),   <.01            1.75(NA)
    b      Covar (Level, Slope)        -0.00(0.01),    .73           -0.00(NA)
   ab      Covar (Levels)               0.04(0.03),    .16            0.04(NA)
   ab      Covar (Slopes)               0.00(0.00),    .54            0.00(NA)
   ab      Covar (Residuals)            0.02(0.01),    .27            0.02(NA)
    \      Correlation of Levels                     0.057            0.06(NA)
    \      Correlation of Slopes                     0.000            0.00(NA)
    \      Correlation of Residuals                  0.028            0.03(NA)
    \      N                                         3,091         3091.00(NA)
    \      occasions                                     6            6.00(NA)
    \      parameters                                   41           41.00(NA)
    \      LL                                      -19,478   -1.947849e+04(NA)
    \      AIC                                      39,039    3.903899e+04(NA)
    \      BIC                                      39,286    3.928647e+04(NA)

##  word_im 

 Gender = _male_;  Process (a) = *fev*; Process (b) = _word_im_


 process   label                                   aehplus            mean(sd)
---------  -------------------------  --------------------  ------------------
    a      Level                        2.63(0.03),   <.01            2.63(NA)
    a      Slope                       -0.02(0.00),   <.01           -0.02(NA)
    a      Level * age                 -0.03(0.00),   <.01           -0.03(NA)
    a      Level * education            0.20(0.03),   <.01            0.20(NA)
    a      Level * height               0.03(0.00),   <.01            0.03(NA)
    a      Level * smoking             -0.21(0.03),   <.01           -0.21(NA)
    a      Level * cardio              -0.20(0.04),   <.01           -0.20(NA)
    a      Level * diabetes            -0.06(0.05),    .19           -0.06(NA)
    a      Slope * age                  0.00(0.00),    .52            0.00(NA)
    a      Slope * education           -0.01(0.00),    .08           -0.01(NA)
    a      Slope * height               0.00(0.00),    .91            0.00(NA)
    a      Slope * smoking              0.00(0.00),    .35            0.00(NA)
    a      Slope * cardio               0.00(0.00),    .57            0.00(NA)
    a      Slope * diabetes            -0.02(0.01),    .01           -0.02(NA)
    b      Level                        4.87(0.07),   <.01            4.87(NA)
    b      Slope                       -0.03(0.01),   <.01           -0.03(NA)
    b      Level * age                 -0.05(0.00),   <.01           -0.05(NA)
    b      Level * education            0.76(0.06),   <.01            0.76(NA)
    b      Level * height               0.01(0.00),   <.01            0.01(NA)
    b      Level * smoking             -0.00(0.06),    .95           -0.00(NA)
    b      Level * cardio              -0.16(0.09),    .07           -0.16(NA)
    b      Level * diabetes            -0.10(0.10),    .32           -0.10(NA)
    b      Slope * age                 -0.00(0.00),   <.01           -0.00(NA)
    b      Slope * education           -0.00(0.01),    .95           -0.00(NA)
    b      Slope * height               0.00(0.00),    .10            0.00(NA)
    b      Slope * smoking             -0.02(0.01),    .04           -0.02(NA)
    b      Slope * cardio              -0.01(0.01),    .66           -0.01(NA)
    b      Slope * diabetes            -0.01(0.02),    .53           -0.01(NA)
    a      Var (Level)                  0.33(0.02),   <.01            0.33(NA)
    a      Var (Slope)                  0.00(0.00),    .03            0.00(NA)
    a      Var (Residual)               0.19(0.02),   <.01            0.19(NA)
    a      Covar (Level, Slope)        -0.01(0.00),   <.01           -0.01(NA)
    b      Var (Level)                  1.00(0.08),   <.01            1.00(NA)
    b      Var (Slope)                  0.00(0.00),    .01            0.00(NA)
    b      Var (Residual)               1.40(0.06),   <.01            1.40(NA)
    b      Covar (Level, Slope)        -0.02(0.01),    .05           -0.02(NA)
   ab      Covar (Levels)               0.03(0.02),    .15            0.03(NA)
   ab      Covar (Slopes)               0.00(0.00),    .52            0.00(NA)
   ab      Covar (Residuals)            0.02(0.01),    .06            0.02(NA)
    \      Correlation of Levels                     0.056            0.06(NA)
    \      Correlation of Slopes                     0.000            0.00(NA)
    \      Correlation of Residuals                  0.045            0.05(NA)
    \      N                                         3,091         3091.00(NA)
    \      occasions                                     6            6.00(NA)
    \      parameters                                   41           41.00(NA)
    \      LL                                      -18,631   -1.863136e+04(NA)
    \      AIC                                      37,345    3.734473e+04(NA)
    \      BIC                                      37,592    3.759221e+04(NA)

## Summary 

 Study = _ELSA_; Gender = _male_; Process (a) = _fev_

 

label                    process_b   aehplus
----------------------  ----------  --------
Correlation of Levels      word_de      0.06
Correlation of Levels      word_im      0.06



label                    process_b   aehplus
----------------------  ----------  --------
Correlation of Slopes      word_de      0.00
Correlation of Slopes      word_im      0.00



label                       process_b   aehplus
-------------------------  ----------  --------
Correlation of Residuals      word_de      0.03
Correlation of Residuals      word_im      0.05


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