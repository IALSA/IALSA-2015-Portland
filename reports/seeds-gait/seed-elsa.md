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
gait        fluency             2
gait        word_de             2
gait        word_im             2




study_name   subgroup   model_type   process_a   process_b    n_models
-----------  ---------  -----------  ----------  ----------  ---------
elsa         female     aehplus      gait        fluency             1
elsa         female     aehplus      gait        word_de             1
elsa         female     aehplus      gait        word_im             1




study_name   subgroup   model_type   process_a   process_b    n_models
-----------  ---------  -----------  ----------  ----------  ---------
elsa         male       aehplus      gait        fluency             1
elsa         male       aehplus      gait        word_de             1
elsa         male       aehplus      gait        word_im             1


# female 

 Gender = _female_; Model type: _aehplus_;  Process (a) = _gait_; Process (b): *fluency*, *word_de*, *word_im*


 process   label                                    fluency                word_de                word_im               mean(sd)
---------  -------------------------  ---------------------  ---------------------  ---------------------  ---------------------
    a      Level                        0.83 (0.01)    <.01    0.83 (0.01)    <.01    0.83 (0.01)    <.01             0.83(0.00)
    a      Slope                       -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01            -0.01(0.00)
    a      Level * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01            -0.01(0.00)
    a      Level * education            0.09 (0.01)    <.01    0.09 (0.01)    <.01    0.09 (0.01)    <.01             0.09(0.00)
    a      Level * height               0.00 (0.00)    <.01    0.00 (0.00)    <.01    0.00 (0.00)    <.01             0.00(0.00)
    a      Level * smoking             -0.03 (0.01)    <.01   -0.03 (0.01)    <.01   -0.03 (0.01)    <.01            -0.03(0.00)
    a      Level * cardio              -0.08 (0.02)    <.01   -0.08 (0.02)    <.01   -0.08 (0.02)    <.01            -0.08(0.00)
    a      Level * diabetes            -0.13 (0.02)    <.01   -0.13 (0.02)    <.01   -0.13 (0.02)    <.01            -0.13(0.00)
    a      Slope * age                 -0.00 (0.00)    <.01   -0.00 (0.00)    <.01   -0.00 (0.00)    <.01            -0.00(0.00)
    a      Slope * education            0.00 (0.00)     .85    0.00 (0.00)     .91    0.00 (0.00)     .92             0.00(0.00)
    a      Slope * height               0.00 (0.00)     .12    0.00 (0.00)     .12    0.00 (0.00)     .10             0.00(0.00)
    a      Slope * smoking              0.00 (0.00)     .66    0.00 (0.00)     .60    0.00 (0.00)     .66             0.00(0.00)
    a      Slope * cardio              -0.00 (0.00)     .37   -0.00 (0.00)     .47   -0.00 (0.00)     .45            -0.00(0.00)
    a      Slope * diabetes             0.00 (0.00)     .28    0.00 (0.00)     .26    0.00 (0.00)     .31             0.00(0.00)
    b      Level                       17.86 (0.22)    <.01    4.05 (0.07)    <.01    5.37 (0.06)    <.01                    ---
    b      Slope                       -0.09 (0.03)     .01   -0.06 (0.01)    <.01   -0.04 (0.01)    <.01                    ---
    b      Level * age                 -0.15 (0.02)    <.01   -0.08 (0.01)    <.01   -0.07 (0.00)    <.01                    ---
    b      Level * education            3.18 (0.25)    <.01    0.95 (0.08)    <.01    0.80 (0.07)    <.01                    ---
    b      Level * height               0.12 (0.02)    <.01    0.03 (0.01)    <.01    0.02 (0.00)    <.01                    ---
    b      Level * smoking              0.03 (0.23)     .88   -0.15 (0.08)     .05   -0.02 (0.07)     .71                    ---
    b      Level * cardio              -0.13 (0.38)     .74   -0.10 (0.14)     .46   -0.15 (0.11)     .17                    ---
    b      Level * diabetes            -1.04 (0.54)     .06   -0.44 (0.19)     .02   -0.30 (0.16)     .06                    ---
    b      Slope * age                 -0.02 (0.00)    <.01   -0.00 (0.00)    <.01   -0.00 (0.00)    <.01                    ---
    b      Slope * education            0.03 (0.04)     .34    0.01 (0.01)     .45    0.01 (0.01)     .47                    ---
    b      Slope * height              -0.00 (0.00)     .19   -0.00 (0.00)     .56    0.00 (0.00)     .98                    ---
    b      Slope * smoking             -0.05 (0.03)     .16    0.02 (0.01)     .07    0.00 (0.01)     .97                    ---
    b      Slope * cardio              -0.07 (0.05)     .18   -0.00 (0.02)     .83    0.01 (0.02)     .74                    ---
    b      Slope * diabetes            -0.02 (0.08)     .75    0.02 (0.02)     .46    0.00 (0.02)     .93                    ---
    a      Var (Level)                  0.04 (0.00)    <.01    0.04 (0.00)    <.01    0.04 (0.00)    <.01             0.04(0.00)
    a      Var (Slope)                  0.00 (0.00)    <.01    0.00 (0.00)    <.01    0.00 (0.00)    <.01             0.00(0.00)
    a      Var (Residual)               0.02 (0.00)    <.01    0.02 (0.00)    <.01    0.02 (0.00)    <.01             0.02(0.00)
    a      Covar (Level, Slope)        -0.00 (0.00)    <.01   -0.00 (0.00)    <.01   -0.00 (0.00)    <.01            -0.00(0.00)
    b      Var (Level)                 17.00 (1.26)    <.01    1.75 (0.11)    <.01    0.94 (0.09)    <.01                    ---
    b      Var (Slope)                  0.11 (0.03)    <.01    0.01 (0.00)    <.01    0.01 (0.00)     .04                    ---
    b      Var (Residual)              14.78 (0.64)    <.01    1.81 (0.06)    <.01    1.65 (0.06)    <.01                    ---
    b      Covar (Level, Slope)        -0.14 (0.16)     .40   -0.02 (0.01)     .21   -0.02 (0.01)     .22                    ---
   ab      Covar (Levels)               0.16 (0.03)    <.01    0.05 (0.01)    <.01    0.04 (0.01)    <.01                    ---
   ab      Covar (Slopes)               0.00 (0.00)     .20    0.00 (0.00)     .38    0.00 (0.00)     .23                    ---
   ab      Covar (Residuals)            0.02 (0.01)     .09   -0.00 (0.00)     .63    0.01 (0.00)     .09                    ---
    \      Correlation of Levels                      0.199                  0.197                  0.204             0.20(0.00)
    \      Correlation of Slopes                        Inf                    NaN                    NaN                Inf(NA)
    \      Correlation of Residuals                   0.035                 -0.011                  0.033             0.02(0.03)
    \      N                                          2,226                  2,226                  2,225          2225.67(0.58)
    \      occasions                                      5                      5                      5             5.00(0.00)
    \      parameters                                    41                     41                     41            41.00(0.00)
    \      LL                                       -20,246                -12,471                -11,656   -1.479115e+04(4,742)
    \      AIC                                       40,575                 25,024                 23,395    2.966430e+04(9,484)
    \      BIC                                       40,809                 25,258                 23,629    2.989832e+04(9,484)

##  fluency 

 Gender = _female_;  Process (a) = *gait*; Process (b) = _fluency_


 process   label                                    aehplus
---------  -------------------------  ---------------------
    a      Level                        0.83 (0.01)    <.01
    a      Slope                       -0.01 (0.00)    <.01
    a      Level * age                 -0.01 (0.00)    <.01
    a      Level * education            0.09 (0.01)    <.01
    a      Level * height               0.00 (0.00)    <.01
    a      Level * smoking             -0.03 (0.01)    <.01
    a      Level * cardio              -0.08 (0.02)    <.01
    a      Level * diabetes            -0.13 (0.02)    <.01
    a      Slope * age                 -0.00 (0.00)    <.01
    a      Slope * education            0.00 (0.00)     .85
    a      Slope * height               0.00 (0.00)     .12
    a      Slope * smoking              0.00 (0.00)     .66
    a      Slope * cardio              -0.00 (0.00)     .37
    a      Slope * diabetes             0.00 (0.00)     .28
    b      Level                       17.86 (0.22)    <.01
    b      Slope                       -0.09 (0.03)     .01
    b      Level * age                 -0.15 (0.02)    <.01
    b      Level * education            3.18 (0.25)    <.01
    b      Level * height               0.12 (0.02)    <.01
    b      Level * smoking              0.03 (0.23)     .88
    b      Level * cardio              -0.13 (0.38)     .74
    b      Level * diabetes            -1.04 (0.54)     .06
    b      Slope * age                 -0.02 (0.00)    <.01
    b      Slope * education            0.03 (0.04)     .34
    b      Slope * height              -0.00 (0.00)     .19
    b      Slope * smoking             -0.05 (0.03)     .16
    b      Slope * cardio              -0.07 (0.05)     .18
    b      Slope * diabetes            -0.02 (0.08)     .75
    a      Var (Level)                  0.04 (0.00)    <.01
    a      Var (Slope)                  0.00 (0.00)    <.01
    a      Var (Residual)               0.02 (0.00)    <.01
    a      Covar (Level, Slope)        -0.00 (0.00)    <.01
    b      Var (Level)                 17.00 (1.26)    <.01
    b      Var (Slope)                  0.11 (0.03)    <.01
    b      Var (Residual)              14.78 (0.64)    <.01
    b      Covar (Level, Slope)        -0.14 (0.16)     .40
   ab      Covar (Levels)               0.16 (0.03)    <.01
   ab      Covar (Slopes)               0.00 (0.00)     .20
   ab      Covar (Residuals)            0.02 (0.01)     .09
    \      Correlation of Levels                      0.199
    \      Correlation of Slopes                        Inf
    \      Correlation of Residuals                   0.035
    \      N                                          2,226
    \      occasions                                      5
    \      parameters                                    41
    \      LL                                       -20,246
    \      AIC                                       40,575
    \      BIC                                       40,809

##  word_de 

 Gender = _female_;  Process (a) = *gait*; Process (b) = _word_de_

```
Warning in FUN(newX[, i], ...): no non-missing arguments to min; returning Inf
```

```
Warning in FUN(newX[, i], ...): no non-missing arguments to max; returning -Inf
```



 process   label                                    aehplus
---------  -------------------------  ---------------------
    a      Level                        0.83 (0.01)    <.01
    a      Slope                       -0.01 (0.00)    <.01
    a      Level * age                 -0.01 (0.00)    <.01
    a      Level * education            0.09 (0.01)    <.01
    a      Level * height               0.00 (0.00)    <.01
    a      Level * smoking             -0.03 (0.01)    <.01
    a      Level * cardio              -0.08 (0.02)    <.01
    a      Level * diabetes            -0.13 (0.02)    <.01
    a      Slope * age                 -0.00 (0.00)    <.01
    a      Slope * education            0.00 (0.00)     .91
    a      Slope * height               0.00 (0.00)     .12
    a      Slope * smoking              0.00 (0.00)     .60
    a      Slope * cardio              -0.00 (0.00)     .47
    a      Slope * diabetes             0.00 (0.00)     .26
    b      Level                        4.05 (0.07)    <.01
    b      Slope                       -0.06 (0.01)    <.01
    b      Level * age                 -0.08 (0.01)    <.01
    b      Level * education            0.95 (0.08)    <.01
    b      Level * height               0.03 (0.01)    <.01
    b      Level * smoking             -0.15 (0.08)     .05
    b      Level * cardio              -0.10 (0.14)     .46
    b      Level * diabetes            -0.44 (0.19)     .02
    b      Slope * age                 -0.00 (0.00)    <.01
    b      Slope * education            0.01 (0.01)     .45
    b      Slope * height              -0.00 (0.00)     .56
    b      Slope * smoking              0.02 (0.01)     .07
    b      Slope * cardio              -0.00 (0.02)     .83
    b      Slope * diabetes             0.02 (0.02)     .46
    a      Var (Level)                  0.04 (0.00)    <.01
    a      Var (Slope)                  0.00 (0.00)    <.01
    a      Var (Residual)               0.02 (0.00)    <.01
    a      Covar (Level, Slope)        -0.00 (0.00)    <.01
    b      Var (Level)                  1.75 (0.11)    <.01
    b      Var (Slope)                  0.01 (0.00)    <.01
    b      Var (Residual)               1.81 (0.06)    <.01
    b      Covar (Level, Slope)        -0.02 (0.01)     .21
   ab      Covar (Levels)               0.05 (0.01)    <.01
   ab      Covar (Slopes)               0.00 (0.00)     .38
   ab      Covar (Residuals)           -0.00 (0.00)     .63
    \      Correlation of Levels                      0.197
    \      Correlation of Slopes                        NaN
    \      Correlation of Residuals                  -0.011
    \      N                                          2,226
    \      occasions                                      5
    \      parameters                                    41
    \      LL                                       -12,471
    \      AIC                                       25,024
    \      BIC                                       25,258

##  word_im 

 Gender = _female_;  Process (a) = *gait*; Process (b) = _word_im_

```
Warning in FUN(newX[, i], ...): no non-missing arguments to min; returning Inf

Warning in FUN(newX[, i], ...): no non-missing arguments to max; returning -Inf
```



 process   label                                    aehplus
---------  -------------------------  ---------------------
    a      Level                        0.83 (0.01)    <.01
    a      Slope                       -0.01 (0.00)    <.01
    a      Level * age                 -0.01 (0.00)    <.01
    a      Level * education            0.09 (0.01)    <.01
    a      Level * height               0.00 (0.00)    <.01
    a      Level * smoking             -0.03 (0.01)    <.01
    a      Level * cardio              -0.08 (0.02)    <.01
    a      Level * diabetes            -0.13 (0.02)    <.01
    a      Slope * age                 -0.00 (0.00)    <.01
    a      Slope * education            0.00 (0.00)     .92
    a      Slope * height               0.00 (0.00)     .10
    a      Slope * smoking              0.00 (0.00)     .66
    a      Slope * cardio              -0.00 (0.00)     .45
    a      Slope * diabetes             0.00 (0.00)     .31
    b      Level                        5.37 (0.06)    <.01
    b      Slope                       -0.04 (0.01)    <.01
    b      Level * age                 -0.07 (0.00)    <.01
    b      Level * education            0.80 (0.07)    <.01
    b      Level * height               0.02 (0.00)    <.01
    b      Level * smoking             -0.02 (0.07)     .71
    b      Level * cardio              -0.15 (0.11)     .17
    b      Level * diabetes            -0.30 (0.16)     .06
    b      Slope * age                 -0.00 (0.00)    <.01
    b      Slope * education            0.01 (0.01)     .47
    b      Slope * height               0.00 (0.00)     .98
    b      Slope * smoking              0.00 (0.01)     .97
    b      Slope * cardio               0.01 (0.02)     .74
    b      Slope * diabetes             0.00 (0.02)     .93
    a      Var (Level)                  0.04 (0.00)    <.01
    a      Var (Slope)                  0.00 (0.00)    <.01
    a      Var (Residual)               0.02 (0.00)    <.01
    a      Covar (Level, Slope)        -0.00 (0.00)    <.01
    b      Var (Level)                  0.94 (0.09)    <.01
    b      Var (Slope)                  0.01 (0.00)     .04
    b      Var (Residual)               1.65 (0.06)    <.01
    b      Covar (Level, Slope)        -0.02 (0.01)     .22
   ab      Covar (Levels)               0.04 (0.01)    <.01
   ab      Covar (Slopes)               0.00 (0.00)     .23
   ab      Covar (Residuals)            0.01 (0.00)     .09
    \      Correlation of Levels                      0.204
    \      Correlation of Slopes                        NaN
    \      Correlation of Residuals                   0.033
    \      N                                          2,225
    \      occasions                                      5
    \      parameters                                    41
    \      LL                                       -11,656
    \      AIC                                       23,395
    \      BIC                                       23,629

## Summary 

 Study = _ELSA_; Gender = _female_; Process (a) = _gait_

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
   <td style="text-align:right;"> fluency </td>
   <td style="text-align:right;"> 0.20 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> word_de </td>
   <td style="text-align:right;"> 0.20 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.20 </td>
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
   <td style="text-align:right;"> fluency </td>
   <td style="text-align:right;"> Inf </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> word_de </td>
   <td style="text-align:right;"> NaN </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> NaN </td>
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
   <td style="text-align:right;"> fluency </td>
   <td style="text-align:right;"> 0.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> word_de </td>
   <td style="text-align:right;"> -0.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.03 </td>
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
   <td style="text-align:right;"> fluency </td>
   <td style="text-align:right;"> 0.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Levels </td>
   <td style="text-align:right;"> word_de </td>
   <td style="text-align:right;"> 0.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Levels </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.00 </td>
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
   <td style="text-align:right;"> fluency </td>
   <td style="text-align:right;"> 0.20 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Slopes </td>
   <td style="text-align:right;"> word_de </td>
   <td style="text-align:right;"> 0.38 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Slopes </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.23 </td>
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
   <td style="text-align:right;"> fluency </td>
   <td style="text-align:right;"> 0.09 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of  Residuals </td>
   <td style="text-align:right;"> word_de </td>
   <td style="text-align:right;"> 0.63 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of  Residuals </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.09 </td>
  </tr>
</tbody>
</table>


# male 

 Gender = _male_; Model type: _aehplus_;  Process (a) = _gait_; Process (b): *fluency*, *word_de*, *word_im*


 process   label                                    fluency                word_de                word_im               mean(sd)
---------  -------------------------  ---------------------  ---------------------  ---------------------  ---------------------
    a      Level                        0.87 (0.01)    <.01    0.87 (0.01)    <.01    0.87 (0.01)    <.01             0.87(0.00)
    a      Slope                       -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01            -0.01(0.00)
    a      Level * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01            -0.01(0.00)
    a      Level * education            0.11 (0.01)    <.01    0.11 (0.01)    <.01    0.11 (0.01)    <.01             0.11(0.00)
    a      Level * height               0.00 (0.00)    <.01    0.00 (0.00)    <.01    0.00 (0.00)    <.01             0.00(0.00)
    a      Level * smoking             -0.03 (0.01)     .01   -0.03 (0.01)     .01   -0.03 (0.01)     .01            -0.03(0.00)
    a      Level * cardio              -0.04 (0.01)    <.01   -0.04 (0.01)    <.01   -0.04 (0.01)    <.01            -0.04(0.00)
    a      Level * diabetes            -0.06 (0.02)    <.01   -0.06 (0.02)    <.01   -0.06 (0.02)    <.01            -0.06(0.00)
    a      Slope * age                 -0.00 (0.00)    <.01   -0.00 (0.00)    <.01   -0.00 (0.00)    <.01            -0.00(0.00)
    a      Slope * education            0.00 (0.00)     .26    0.00 (0.00)     .25    0.00 (0.00)     .26             0.00(0.00)
    a      Slope * height               0.00 (0.00)     .51    0.00 (0.00)     .47    0.00 (0.00)     .52             0.00(0.00)
    a      Slope * smoking              0.00 (0.00)     .90    0.00 (0.00)     .87    0.00 (0.00)     .92             0.00(0.00)
    a      Slope * cardio               0.00 (0.00)     .96    0.00 (0.00)     .92    0.00 (0.00)     .94             0.00(0.00)
    a      Slope * diabetes            -0.00 (0.00)     .64   -0.00 (0.00)     .64   -0.00 (0.00)     .69            -0.00(0.00)
    b      Level                       18.49 (0.30)    <.01    3.36 (0.10)    <.01    4.95 (0.09)    <.01                    ---
    b      Slope                       -0.08 (0.04)     .08   -0.01 (0.01)     .29   -0.04 (0.01)     .01                    ---
    b      Level * age                 -0.15 (0.02)    <.01   -0.06 (0.01)    <.01   -0.05 (0.00)    <.01                    ---
    b      Level * education            2.50 (0.26)    <.01    0.84 (0.08)    <.01    0.74 (0.07)    <.01                    ---
    b      Level * height               0.09 (0.02)    <.01    0.03 (0.01)    <.01    0.02 (0.01)    <.01                    ---
    b      Level * smoking             -0.23 (0.29)     .43    0.04 (0.09)     .63   -0.04 (0.08)     .60                    ---
    b      Level * cardio              -0.44 (0.34)     .20   -0.03 (0.11)     .80   -0.12 (0.10)     .22                    ---
    b      Level * diabetes            -0.08 (0.48)     .87   -0.24 (0.14)     .08    0.02 (0.12)     .86                    ---
    b      Slope * age                 -0.01 (0.00)    <.01   -0.00 (0.00)    <.01   -0.00 (0.00)    <.01                    ---
    b      Slope * education           -0.02 (0.04)     .62    0.01 (0.01)     .59    0.00 (0.01)     .71                    ---
    b      Slope * height               0.00 (0.00)     .53    0.00 (0.00)     .75    0.00 (0.00)     .42                    ---
    b      Slope * smoking             -0.06 (0.04)     .17   -0.02 (0.01)     .13   -0.00 (0.01)     .77                    ---
    b      Slope * cardio               0.08 (0.05)     .11   -0.02 (0.02)     .20   -0.00 (0.01)     .96                    ---
    b      Slope * diabetes            -0.07 (0.07)     .30   -0.03 (0.02)     .12   -0.05 (0.02)     .03                    ---
    a      Var (Level)                  0.04 (0.00)    <.01    0.04 (0.00)    <.01    0.04 (0.00)    <.01             0.04(0.00)
    a      Var (Slope)                  0.00 (0.00)    <.01    0.00 (0.00)    <.01    0.00 (0.00)    <.01             0.00(0.00)
    a      Var (Residual)               0.02 (0.00)    <.01    0.02 (0.00)    <.01    0.02 (0.00)    <.01             0.02(0.00)
    a      Covar (Level, Slope)        -0.00 (0.00)    <.01   -0.00 (0.00)    <.01   -0.00 (0.00)    <.01            -0.00(0.00)
    b      Var (Level)                 18.67 (1.38)    <.01    1.48 (0.10)    <.01    0.97 (0.09)    <.01                    ---
    b      Var (Slope)                  0.07 (0.03)     .02    0.00 (0.00)     .35    0.00 (0.00)     .18                    ---
    b      Var (Residual)              15.79 (0.71)    <.01    1.78 (0.06)    <.01    1.53 (0.05)    <.01                    ---
    b      Covar (Level, Slope)         0.13 (0.16)     .42    0.01 (0.01)     .68   -0.01 (0.01)     .32                    ---
   ab      Covar (Levels)               0.20 (0.03)    <.01    0.06 (0.01)    <.01    0.04 (0.01)    <.01                    ---
   ab      Covar (Slopes)               0.00 (0.00)     .28    0.00 (0.00)     .49    0.00 (0.00)     .58                    ---
   ab      Covar (Residuals)           -0.01 (0.01)     .34    0.01 (0.00)     .04   -0.00 (0.00)     .49                    ---
    \      Correlation of Levels                       0.23                  0.226                  0.225             0.23(0.00)
    \      Correlation of Slopes                        Inf                    NaN                    NaN                Inf(NA)
    \      Correlation of Residuals                   -0.02                  0.043                 -0.012             0.00(0.03)
    \      N                                          1,947                  1,947                  1,947          1947.00(0.00)
    \      occasions                                      5                      5                      5             5.00(0.00)
    \      parameters                                    41                     41                     41            41.00(0.00)
    \      LL                                       -17,613                -10,519                 -9,826   -1.265285e+04(4,309)
    \      AIC                                       35,308                 21,121                 19,734    2.538770e+04(8,619)
    \      BIC                                       35,536                 21,349                 19,963    2.561623e+04(8,619)

##  fluency 

 Gender = _male_;  Process (a) = *gait*; Process (b) = _fluency_


 process   label                                    aehplus
---------  -------------------------  ---------------------
    a      Level                        0.87 (0.01)    <.01
    a      Slope                       -0.01 (0.00)    <.01
    a      Level * age                 -0.01 (0.00)    <.01
    a      Level * education            0.11 (0.01)    <.01
    a      Level * height               0.00 (0.00)    <.01
    a      Level * smoking             -0.03 (0.01)     .01
    a      Level * cardio              -0.04 (0.01)    <.01
    a      Level * diabetes            -0.06 (0.02)    <.01
    a      Slope * age                 -0.00 (0.00)    <.01
    a      Slope * education            0.00 (0.00)     .26
    a      Slope * height               0.00 (0.00)     .51
    a      Slope * smoking              0.00 (0.00)     .90
    a      Slope * cardio               0.00 (0.00)     .96
    a      Slope * diabetes            -0.00 (0.00)     .64
    b      Level                       18.49 (0.30)    <.01
    b      Slope                       -0.08 (0.04)     .08
    b      Level * age                 -0.15 (0.02)    <.01
    b      Level * education            2.50 (0.26)    <.01
    b      Level * height               0.09 (0.02)    <.01
    b      Level * smoking             -0.23 (0.29)     .43
    b      Level * cardio              -0.44 (0.34)     .20
    b      Level * diabetes            -0.08 (0.48)     .87
    b      Slope * age                 -0.01 (0.00)    <.01
    b      Slope * education           -0.02 (0.04)     .62
    b      Slope * height               0.00 (0.00)     .53
    b      Slope * smoking             -0.06 (0.04)     .17
    b      Slope * cardio               0.08 (0.05)     .11
    b      Slope * diabetes            -0.07 (0.07)     .30
    a      Var (Level)                  0.04 (0.00)    <.01
    a      Var (Slope)                  0.00 (0.00)    <.01
    a      Var (Residual)               0.02 (0.00)    <.01
    a      Covar (Level, Slope)        -0.00 (0.00)    <.01
    b      Var (Level)                 18.67 (1.38)    <.01
    b      Var (Slope)                  0.07 (0.03)     .02
    b      Var (Residual)              15.79 (0.71)    <.01
    b      Covar (Level, Slope)         0.13 (0.16)     .42
   ab      Covar (Levels)               0.20 (0.03)    <.01
   ab      Covar (Slopes)               0.00 (0.00)     .28
   ab      Covar (Residuals)           -0.01 (0.01)     .34
    \      Correlation of Levels                       0.23
    \      Correlation of Slopes                        Inf
    \      Correlation of Residuals                   -0.02
    \      N                                          1,947
    \      occasions                                      5
    \      parameters                                    41
    \      LL                                       -17,613
    \      AIC                                       35,308
    \      BIC                                       35,536

##  word_de 

 Gender = _male_;  Process (a) = *gait*; Process (b) = _word_de_

```
Warning in FUN(newX[, i], ...): no non-missing arguments to min; returning Inf

Warning in FUN(newX[, i], ...): no non-missing arguments to max; returning -Inf
```



 process   label                                    aehplus
---------  -------------------------  ---------------------
    a      Level                        0.87 (0.01)    <.01
    a      Slope                       -0.01 (0.00)    <.01
    a      Level * age                 -0.01 (0.00)    <.01
    a      Level * education            0.11 (0.01)    <.01
    a      Level * height               0.00 (0.00)    <.01
    a      Level * smoking             -0.03 (0.01)     .01
    a      Level * cardio              -0.04 (0.01)    <.01
    a      Level * diabetes            -0.06 (0.02)    <.01
    a      Slope * age                 -0.00 (0.00)    <.01
    a      Slope * education            0.00 (0.00)     .25
    a      Slope * height               0.00 (0.00)     .47
    a      Slope * smoking              0.00 (0.00)     .87
    a      Slope * cardio               0.00 (0.00)     .92
    a      Slope * diabetes            -0.00 (0.00)     .64
    b      Level                        3.36 (0.10)    <.01
    b      Slope                       -0.01 (0.01)     .29
    b      Level * age                 -0.06 (0.01)    <.01
    b      Level * education            0.84 (0.08)    <.01
    b      Level * height               0.03 (0.01)    <.01
    b      Level * smoking              0.04 (0.09)     .63
    b      Level * cardio              -0.03 (0.11)     .80
    b      Level * diabetes            -0.24 (0.14)     .08
    b      Slope * age                 -0.00 (0.00)    <.01
    b      Slope * education            0.01 (0.01)     .59
    b      Slope * height               0.00 (0.00)     .75
    b      Slope * smoking             -0.02 (0.01)     .13
    b      Slope * cardio              -0.02 (0.02)     .20
    b      Slope * diabetes            -0.03 (0.02)     .12
    a      Var (Level)                  0.04 (0.00)    <.01
    a      Var (Slope)                  0.00 (0.00)    <.01
    a      Var (Residual)               0.02 (0.00)    <.01
    a      Covar (Level, Slope)        -0.00 (0.00)    <.01
    b      Var (Level)                  1.48 (0.10)    <.01
    b      Var (Slope)                  0.00 (0.00)     .35
    b      Var (Residual)               1.78 (0.06)    <.01
    b      Covar (Level, Slope)         0.01 (0.01)     .68
   ab      Covar (Levels)               0.06 (0.01)    <.01
   ab      Covar (Slopes)               0.00 (0.00)     .49
   ab      Covar (Residuals)            0.01 (0.00)     .04
    \      Correlation of Levels                      0.226
    \      Correlation of Slopes                        NaN
    \      Correlation of Residuals                   0.043
    \      N                                          1,947
    \      occasions                                      5
    \      parameters                                    41
    \      LL                                       -10,519
    \      AIC                                       21,121
    \      BIC                                       21,349

##  word_im 

 Gender = _male_;  Process (a) = *gait*; Process (b) = _word_im_

```
Warning in FUN(newX[, i], ...): no non-missing arguments to min; returning Inf

Warning in FUN(newX[, i], ...): no non-missing arguments to max; returning -Inf
```



 process   label                                    aehplus
---------  -------------------------  ---------------------
    a      Level                        0.87 (0.01)    <.01
    a      Slope                       -0.01 (0.00)    <.01
    a      Level * age                 -0.01 (0.00)    <.01
    a      Level * education            0.11 (0.01)    <.01
    a      Level * height               0.00 (0.00)    <.01
    a      Level * smoking             -0.03 (0.01)     .01
    a      Level * cardio              -0.04 (0.01)    <.01
    a      Level * diabetes            -0.06 (0.02)    <.01
    a      Slope * age                 -0.00 (0.00)    <.01
    a      Slope * education            0.00 (0.00)     .26
    a      Slope * height               0.00 (0.00)     .52
    a      Slope * smoking              0.00 (0.00)     .92
    a      Slope * cardio               0.00 (0.00)     .94
    a      Slope * diabetes            -0.00 (0.00)     .69
    b      Level                        4.95 (0.09)    <.01
    b      Slope                       -0.04 (0.01)     .01
    b      Level * age                 -0.05 (0.00)    <.01
    b      Level * education            0.74 (0.07)    <.01
    b      Level * height               0.02 (0.01)    <.01
    b      Level * smoking             -0.04 (0.08)     .60
    b      Level * cardio              -0.12 (0.10)     .22
    b      Level * diabetes             0.02 (0.12)     .86
    b      Slope * age                 -0.00 (0.00)    <.01
    b      Slope * education            0.00 (0.01)     .71
    b      Slope * height               0.00 (0.00)     .42
    b      Slope * smoking             -0.00 (0.01)     .77
    b      Slope * cardio              -0.00 (0.01)     .96
    b      Slope * diabetes            -0.05 (0.02)     .03
    a      Var (Level)                  0.04 (0.00)    <.01
    a      Var (Slope)                  0.00 (0.00)    <.01
    a      Var (Residual)               0.02 (0.00)    <.01
    a      Covar (Level, Slope)        -0.00 (0.00)    <.01
    b      Var (Level)                  0.97 (0.09)    <.01
    b      Var (Slope)                  0.00 (0.00)     .18
    b      Var (Residual)               1.53 (0.05)    <.01
    b      Covar (Level, Slope)        -0.01 (0.01)     .32
   ab      Covar (Levels)               0.04 (0.01)    <.01
   ab      Covar (Slopes)               0.00 (0.00)     .58
   ab      Covar (Residuals)           -0.00 (0.00)     .49
    \      Correlation of Levels                      0.225
    \      Correlation of Slopes                        NaN
    \      Correlation of Residuals                  -0.012
    \      N                                          1,947
    \      occasions                                      5
    \      parameters                                    41
    \      LL                                        -9,826
    \      AIC                                       19,734
    \      BIC                                       19,963

## Summary 

 Study = _ELSA_; Gender = _male_; Process (a) = _gait_

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
   <td style="text-align:right;"> fluency </td>
   <td style="text-align:right;"> 0.23 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> word_de </td>
   <td style="text-align:right;"> 0.23 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.23 </td>
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
   <td style="text-align:right;"> fluency </td>
   <td style="text-align:right;"> Inf </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> word_de </td>
   <td style="text-align:right;"> NaN </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> NaN </td>
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
   <td style="text-align:right;"> fluency </td>
   <td style="text-align:right;"> -0.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> word_de </td>
   <td style="text-align:right;"> 0.04 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> -0.01 </td>
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
   <td style="text-align:right;"> fluency </td>
   <td style="text-align:right;"> 0.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Levels </td>
   <td style="text-align:right;"> word_de </td>
   <td style="text-align:right;"> 0.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Levels </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.00 </td>
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
   <td style="text-align:right;"> fluency </td>
   <td style="text-align:right;"> 0.28 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Slopes </td>
   <td style="text-align:right;"> word_de </td>
   <td style="text-align:right;"> 0.49 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Slopes </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.58 </td>
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
   <td style="text-align:right;"> fluency </td>
   <td style="text-align:right;"> 0.34 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of  Residuals </td>
   <td style="text-align:right;"> word_de </td>
   <td style="text-align:right;"> 0.04 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of  Residuals </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.49 </td>
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
