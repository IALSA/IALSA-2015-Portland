# LASA : Seed report
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

 Study **LASA** have contributed the following outcome pairs to the IASLA-2015-Portland model pool: 
NULL



process_a   process_b    n_models
----------  ----------  ---------
grip        letter              2
grip        raven               2
grip        word_im             2




study_name   subgroup   model_type   process_a   process_b    n_models
-----------  ---------  -----------  ----------  ----------  ---------
lasa         female     aehplus      grip        letter              1
lasa         female     aehplus      grip        raven               1
lasa         female     aehplus      grip        word_im             1




study_name   subgroup   model_type   process_a   process_b    n_models
-----------  ---------  -----------  ----------  ----------  ---------
lasa         male       aehplus      grip        letter              1
lasa         male       aehplus      grip        raven               1
lasa         male       aehplus      grip        word_im             1


# female 

 Gender = _female_; Model type: _aehplus_;  Process (a) = _grip_; Process (b): *letter*, *raven*, *word_im*


 process   label                                     letter                  raven                word_im             mean(sd)
---------  -------------------------  ---------------------  ---------------------  ---------------------  -------------------
    a      Level                       19.45 (0.28)    <.01   19.43 (0.28)    <.01   19.42 (0.29)    <.01          19.43(0.01)
    a      Slope                       -0.29 (0.03)    <.01   -0.28 (0.03)    <.01   -0.28 (0.03)    <.01          -0.28(0.01)
    a      Level * age                 -0.31 (0.02)    <.01   -0.31 (0.02)    <.01   -0.31 (0.02)    <.01          -0.31(0.00)
    a      Level * education            0.08 (0.06)     .14    0.08 (0.06)     .14    0.09 (0.06)     .13           0.09(0.00)
    a      Level * height               0.17 (0.03)    <.01    0.17 (0.03)    <.01    0.17 (0.03)    <.01           0.17(0.00)
    a      Level * smoking             -0.59 (0.52)     .25   -0.58 (0.52)     .26   -0.58 (0.52)     .26          -0.58(0.00)
    a      Level * cardio              -0.34 (0.44)     .44   -0.36 (0.44)     .41   -0.35 (0.44)     .42          -0.35(0.01)
    a      Level * diabetes            -1.94 (0.77)     .01   -1.94 (0.77)     .01   -1.94 (0.77)     .01          -1.94(0.00)
    a      Slope * age                 -0.01 (0.00)    <.01   -0.01 (0.00)    <.01   -0.01 (0.00)    <.01          -0.01(0.00)
    a      Slope * education           -0.00 (0.00)     .39   -0.00 (0.00)     .39   -0.00 (0.00)     .36          -0.00(0.00)
    a      Slope * height              -0.00 (0.00)     .42   -0.00 (0.00)     .42   -0.00 (0.00)     .39          -0.00(0.00)
    a      Slope * smoking             -0.05 (0.05)     .34   -0.05 (0.05)     .33   -0.05 (0.05)     .32          -0.05(0.00)
    a      Slope * cardio              -0.03 (0.04)     .44   -0.02 (0.04)     .59   -0.02 (0.04)     .54          -0.03(0.00)
    a      Slope * diabetes            -0.05 (0.08)     .58   -0.05 (0.08)     .56   -0.05 (0.08)     .58          -0.05(0.00)
    b      Level                       23.53 (0.38)    <.01   17.29 (0.19)    <.01   21.44 (0.31)    <.01                  ---
    b      Slope                       -0.38 (0.03)    <.01   -0.16 (0.02)    <.01   -0.48 (0.04)    <.01                  ---
    b      Level * age                 -0.38 (0.03)    <.01   -0.18 (0.01)    <.01   -0.38 (0.03)    <.01                  ---
    b      Level * education            0.79 (0.07)    <.01    0.41 (0.03)    <.01    0.51 (0.06)    <.01                  ---
    b      Level * height               0.11 (0.04)    <.01    0.01 (0.02)     .71    0.03 (0.03)     .28                  ---
    b      Level * smoking             -0.63 (0.58)     .28   -0.57 (0.30)     .06   -1.27 (0.54)     .02                  ---
    b      Level * cardio              -1.39 (0.58)     .02   -0.06 (0.30)     .83   -0.70 (0.53)     .18                  ---
    b      Level * diabetes            -1.57 (1.04)     .13   -1.14 (0.56)     .04   -0.97 (0.81)     .23                  ---
    b      Slope * age                 -0.01 (0.00)    <.01   -0.00 (0.00)     .21    0.00 (0.00)     .15                  ---
    b      Slope * education            0.00 (0.00)     .95    0.00 (0.00)     .98   -0.01 (0.01)     .14                  ---
    b      Slope * height              -0.00 (0.00)     .16    0.00 (0.00)     .91    0.00 (0.00)     .36                  ---
    b      Slope * smoking              0.01 (0.04)     .73    0.02 (0.03)     .42    0.04 (0.06)     .52                  ---
    b      Slope * cardio               0.06 (0.06)     .28   -0.06 (0.03)     .08    0.03 (0.06)     .64                  ---
    b      Slope * diabetes             0.04 (0.12)     .75   -0.06 (0.07)     .41   -0.10 (0.10)     .37                  ---
    a      Var (Level)                 15.42 (2.00)    <.01   15.24 (1.94)    <.01   15.24 (1.95)    <.01          15.30(0.10)
    a      Var (Slope)                  0.01 (0.02)     .80    0.00 (0.02)     .89    0.00 (0.02)     .91           0.00(0.00)
    a      Var (Residual)              12.97 (0.69)    <.01   13.06 (0.70)    <.01   13.05 (0.70)    <.01          13.03(0.05)
    a      Covar (Level, Slope)        -0.14 (0.19)     .47   -0.12 (0.18)     .50   -0.12 (0.18)     .52          -0.12(0.01)
    b      Var (Level)                 31.16 (1.77)    <.01    6.21 (0.46)    <.01   15.90 (1.64)    <.01                  ---
    b      Var (Slope)                  0.06 (0.01)    <.01    0.01 (0.01)     .03    0.01 (0.02)     .46                  ---
    b      Var (Residual)               5.62 (0.27)    <.01    5.15 (0.25)    <.01   15.28 (0.65)    <.01                  ---
    b      Covar (Level, Slope)        -0.36 (0.12)    <.01   -0.01 (0.04)     .75    0.15 (0.15)     .32                  ---
   ab      Covar (Levels)               0.70 (1.29)     .59    0.29 (0.66)     .66    1.75 (1.09)     .11                  ---
   ab      Covar (Slopes)               0.01 (0.01)     .40    0.00 (0.01)     .77    0.00 (0.01)     .90                  ---
   ab      Covar (Residuals)            0.65 (0.23)    <.01    0.09 (0.24)     .70    1.68 (0.38)    <.01                  ---
    \      Correlation of Levels                      0.032                  0.030                   0.11           0.06(0.05)
    \      Correlation of Slopes                      0.408                  0.333                   0.15           0.30(0.13)
    \      Correlation of Residuals                   0.076                  0.011                   0.12           0.07(0.05)
    \      N                                            782                    782                    782         782.00(0.00)
    \      occasions                                      6                      6                      6           6.00(0.00)
    \      parameters                                    41                     41                     41          41.00(0.00)
    \      LL                                       -13,473                -13,782                -14,136   -1.379705e+04(332)
    \      AIC                                       27,028                 27,646                 28,355    2.767611e+04(664)
    \      BIC                                       27,219                 27,837                 28,546    2.786724e+04(664)

##  letter 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _letter_


 process   label                                    aehplus
---------  -------------------------  ---------------------
    a      Level                       19.45 (0.28)    <.01
    a      Slope                       -0.29 (0.03)    <.01
    a      Level * age                 -0.31 (0.02)    <.01
    a      Level * education            0.08 (0.06)     .14
    a      Level * height               0.17 (0.03)    <.01
    a      Level * smoking             -0.59 (0.52)     .25
    a      Level * cardio              -0.34 (0.44)     .44
    a      Level * diabetes            -1.94 (0.77)     .01
    a      Slope * age                 -0.01 (0.00)    <.01
    a      Slope * education           -0.00 (0.00)     .39
    a      Slope * height              -0.00 (0.00)     .42
    a      Slope * smoking             -0.05 (0.05)     .34
    a      Slope * cardio              -0.03 (0.04)     .44
    a      Slope * diabetes            -0.05 (0.08)     .58
    b      Level                       23.53 (0.38)    <.01
    b      Slope                       -0.38 (0.03)    <.01
    b      Level * age                 -0.38 (0.03)    <.01
    b      Level * education            0.79 (0.07)    <.01
    b      Level * height               0.11 (0.04)    <.01
    b      Level * smoking             -0.63 (0.58)     .28
    b      Level * cardio              -1.39 (0.58)     .02
    b      Level * diabetes            -1.57 (1.04)     .13
    b      Slope * age                 -0.01 (0.00)    <.01
    b      Slope * education            0.00 (0.00)     .95
    b      Slope * height              -0.00 (0.00)     .16
    b      Slope * smoking              0.01 (0.04)     .73
    b      Slope * cardio               0.06 (0.06)     .28
    b      Slope * diabetes             0.04 (0.12)     .75
    a      Var (Level)                 15.42 (2.00)    <.01
    a      Var (Slope)                  0.01 (0.02)     .80
    a      Var (Residual)              12.97 (0.69)    <.01
    a      Covar (Level, Slope)        -0.14 (0.19)     .47
    b      Var (Level)                 31.16 (1.77)    <.01
    b      Var (Slope)                  0.06 (0.01)    <.01
    b      Var (Residual)               5.62 (0.27)    <.01
    b      Covar (Level, Slope)        -0.36 (0.12)    <.01
   ab      Covar (Levels)               0.70 (1.29)     .59
   ab      Covar (Slopes)               0.01 (0.01)     .40
   ab      Covar (Residuals)            0.65 (0.23)    <.01
    \      Correlation of Levels                      0.032
    \      Correlation of Slopes                      0.408
    \      Correlation of Residuals                   0.076
    \      N                                            782
    \      occasions                                      6
    \      parameters                                    41
    \      LL                                       -13,473
    \      AIC                                       27,028
    \      BIC                                       27,219

##  raven 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _raven_


 process   label                                    aehplus
---------  -------------------------  ---------------------
    a      Level                       19.43 (0.28)    <.01
    a      Slope                       -0.28 (0.03)    <.01
    a      Level * age                 -0.31 (0.02)    <.01
    a      Level * education            0.08 (0.06)     .14
    a      Level * height               0.17 (0.03)    <.01
    a      Level * smoking             -0.58 (0.52)     .26
    a      Level * cardio              -0.36 (0.44)     .41
    a      Level * diabetes            -1.94 (0.77)     .01
    a      Slope * age                 -0.01 (0.00)    <.01
    a      Slope * education           -0.00 (0.00)     .39
    a      Slope * height              -0.00 (0.00)     .42
    a      Slope * smoking             -0.05 (0.05)     .33
    a      Slope * cardio              -0.02 (0.04)     .59
    a      Slope * diabetes            -0.05 (0.08)     .56
    b      Level                       17.29 (0.19)    <.01
    b      Slope                       -0.16 (0.02)    <.01
    b      Level * age                 -0.18 (0.01)    <.01
    b      Level * education            0.41 (0.03)    <.01
    b      Level * height               0.01 (0.02)     .71
    b      Level * smoking             -0.57 (0.30)     .06
    b      Level * cardio              -0.06 (0.30)     .83
    b      Level * diabetes            -1.14 (0.56)     .04
    b      Slope * age                 -0.00 (0.00)     .21
    b      Slope * education            0.00 (0.00)     .98
    b      Slope * height               0.00 (0.00)     .91
    b      Slope * smoking              0.02 (0.03)     .42
    b      Slope * cardio              -0.06 (0.03)     .08
    b      Slope * diabetes            -0.06 (0.07)     .41
    a      Var (Level)                 15.24 (1.94)    <.01
    a      Var (Slope)                  0.00 (0.02)     .89
    a      Var (Residual)              13.06 (0.70)    <.01
    a      Covar (Level, Slope)        -0.12 (0.18)     .50
    b      Var (Level)                  6.21 (0.46)    <.01
    b      Var (Slope)                  0.01 (0.01)     .03
    b      Var (Residual)               5.15 (0.25)    <.01
    b      Covar (Level, Slope)        -0.01 (0.04)     .75
   ab      Covar (Levels)               0.29 (0.66)     .66
   ab      Covar (Slopes)               0.00 (0.01)     .77
   ab      Covar (Residuals)            0.09 (0.24)     .70
    \      Correlation of Levels                      0.030
    \      Correlation of Slopes                      0.333
    \      Correlation of Residuals                   0.011
    \      N                                            782
    \      occasions                                      6
    \      parameters                                    41
    \      LL                                       -13,782
    \      AIC                                       27,646
    \      BIC                                       27,837

##  word_im 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _word_im_


 process   label                                    aehplus
---------  -------------------------  ---------------------
    a      Level                       19.42 (0.29)    <.01
    a      Slope                       -0.28 (0.03)    <.01
    a      Level * age                 -0.31 (0.02)    <.01
    a      Level * education            0.09 (0.06)     .13
    a      Level * height               0.17 (0.03)    <.01
    a      Level * smoking             -0.58 (0.52)     .26
    a      Level * cardio              -0.35 (0.44)     .42
    a      Level * diabetes            -1.94 (0.77)     .01
    a      Slope * age                 -0.01 (0.00)    <.01
    a      Slope * education           -0.00 (0.00)     .36
    a      Slope * height              -0.00 (0.00)     .39
    a      Slope * smoking             -0.05 (0.05)     .32
    a      Slope * cardio              -0.02 (0.04)     .54
    a      Slope * diabetes            -0.05 (0.08)     .58
    b      Level                       21.44 (0.31)    <.01
    b      Slope                       -0.48 (0.04)    <.01
    b      Level * age                 -0.38 (0.03)    <.01
    b      Level * education            0.51 (0.06)    <.01
    b      Level * height               0.03 (0.03)     .28
    b      Level * smoking             -1.27 (0.54)     .02
    b      Level * cardio              -0.70 (0.53)     .18
    b      Level * diabetes            -0.97 (0.81)     .23
    b      Slope * age                  0.00 (0.00)     .15
    b      Slope * education           -0.01 (0.01)     .14
    b      Slope * height               0.00 (0.00)     .36
    b      Slope * smoking              0.04 (0.06)     .52
    b      Slope * cardio               0.03 (0.06)     .64
    b      Slope * diabetes            -0.10 (0.10)     .37
    a      Var (Level)                 15.24 (1.95)    <.01
    a      Var (Slope)                  0.00 (0.02)     .91
    a      Var (Residual)              13.05 (0.70)    <.01
    a      Covar (Level, Slope)        -0.12 (0.18)     .52
    b      Var (Level)                 15.90 (1.64)    <.01
    b      Var (Slope)                  0.01 (0.02)     .46
    b      Var (Residual)              15.28 (0.65)    <.01
    b      Covar (Level, Slope)         0.15 (0.15)     .32
   ab      Covar (Levels)               1.75 (1.09)     .11
   ab      Covar (Slopes)               0.00 (0.01)     .90
   ab      Covar (Residuals)            1.68 (0.38)    <.01
    \      Correlation of Levels                       0.11
    \      Correlation of Slopes                       0.15
    \      Correlation of Residuals                    0.12
    \      N                                            782
    \      occasions                                      6
    \      parameters                                    41
    \      LL                                       -14,136
    \      AIC                                       28,355
    \      BIC                                       28,546

## Summary 

 Study = _LASA_; Gender = _female_; Process (a) = _grip_

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
   <td style="text-align:right;"> letter </td>
   <td style="text-align:right;"> 0.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> raven </td>
   <td style="text-align:right;"> 0.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.11 </td>
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
   <td style="text-align:right;"> letter </td>
   <td style="text-align:right;"> 0.41 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> raven </td>
   <td style="text-align:right;"> 0.33 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.15 </td>
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
   <td style="text-align:right;"> letter </td>
   <td style="text-align:right;"> 0.08 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> raven </td>
   <td style="text-align:right;"> 0.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.12 </td>
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
   <td style="text-align:right;"> letter </td>
   <td style="text-align:right;"> 0.59 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Levels </td>
   <td style="text-align:right;"> raven </td>
   <td style="text-align:right;"> 0.66 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Levels </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.11 </td>
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
   <td style="text-align:right;"> letter </td>
   <td style="text-align:right;"> 0.40 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Slopes </td>
   <td style="text-align:right;"> raven </td>
   <td style="text-align:right;"> 0.77 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Slopes </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.90 </td>
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
   <td style="text-align:right;"> letter </td>
   <td style="text-align:right;"> 0.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of  Residuals </td>
   <td style="text-align:right;"> raven </td>
   <td style="text-align:right;"> 0.70 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of  Residuals </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.00 </td>
  </tr>
</tbody>
</table>


# male 

 Gender = _male_; Model type: _aehplus_;  Process (a) = _grip_; Process (b): *letter*, *raven*, *word_im*


 process   label                                     letter                  raven                word_im             mean(sd)
---------  -------------------------  ---------------------  ---------------------  ---------------------  -------------------
    a      Level                       34.02 (0.49)    <.01   33.98 (0.49)    <.01   34.05 (0.49)    <.01          34.02(0.03)
    a      Slope                       -0.61 (0.06)    <.01   -0.59 (0.06)    <.01   -0.61 (0.06)    <.01          -0.60(0.01)
    a      Level * age                 -0.46 (0.04)    <.01   -0.46 (0.04)    <.01   -0.46 (0.04)    <.01          -0.46(0.00)
    a      Level * education           -0.09 (0.08)     .26   -0.10 (0.08)     .24   -0.10 (0.08)     .24          -0.10(0.00)
    a      Level * height               0.22 (0.04)    <.01    0.22 (0.04)    <.01    0.22 (0.04)    <.01           0.22(0.00)
    a      Level * smoking              0.26 (0.62)     .67    0.26 (0.61)     .67    0.24 (0.62)     .69           0.26(0.01)
    a      Level * cardio               0.37 (0.61)     .55    0.40 (0.61)     .51    0.37 (0.61)     .55           0.38(0.02)
    a      Level * diabetes            -2.94 (1.44)     .04   -2.94 (1.45)     .04   -2.98 (1.44)     .04          -2.96(0.02)
    a      Slope * age                 -0.03 (0.00)    <.01   -0.03 (0.00)    <.01   -0.03 (0.00)    <.01          -0.03(0.00)
    a      Slope * education            0.01 (0.01)     .23    0.01 (0.01)     .20    0.01 (0.01)     .19           0.01(0.00)
    a      Slope * height              -0.00 (0.00)     .46   -0.00 (0.00)     .38   -0.00 (0.00)     .42          -0.00(0.00)
    a      Slope * smoking             -0.11 (0.06)     .06   -0.11 (0.06)     .05   -0.11 (0.06)     .06          -0.11(0.00)
    a      Slope * cardio              -0.05 (0.06)     .43   -0.05 (0.06)     .42   -0.04 (0.06)     .49          -0.05(0.00)
    a      Slope * diabetes            -0.30 (0.12)     .02   -0.29 (0.12)     .02   -0.30 (0.12)     .01          -0.30(0.00)
    b      Level                       21.91 (0.37)    <.01   17.23 (0.20)    <.01   17.89 (0.30)    <.01                  ---
    b      Slope                       -0.39 (0.04)    <.01   -0.16 (0.02)    <.01   -0.32 (0.04)    <.01                  ---
    b      Level * age                 -0.35 (0.03)    <.01   -0.18 (0.01)    <.01   -0.35 (0.02)    <.01                  ---
    b      Level * education            0.76 (0.06)    <.01    0.36 (0.03)    <.01    0.41 (0.06)    <.01                  ---
    b      Level * height               0.11 (0.03)    <.01    0.05 (0.01)    <.01    0.06 (0.03)     .02                  ---
    b      Level * smoking             -0.81 (0.46)     .08   -0.08 (0.24)     .75   -0.09 (0.41)     .82                  ---
    b      Level * cardio              -0.39 (0.47)     .41   -0.48 (0.26)     .06   -0.07 (0.40)     .86                  ---
    b      Level * diabetes            -1.21 (1.01)     .23   -1.26 (0.54)     .02   -1.52 (0.89)     .09                  ---
    b      Slope * age                 -0.01 (0.00)    <.01   -0.00 (0.00)     .08    0.00 (0.00)     .22                  ---
    b      Slope * education           -0.01 (0.01)     .05   -0.00 (0.00)     .51   -0.01 (0.01)     .02                  ---
    b      Slope * height               0.00 (0.00)     .77    0.00 (0.00)     .82   -0.00 (0.00)     .50                  ---
    b      Slope * smoking             -0.07 (0.05)     .11   -0.02 (0.03)     .48   -0.09 (0.05)     .05                  ---
    b      Slope * cardio              -0.03 (0.04)     .48    0.00 (0.03)     .87   -0.03 (0.05)     .60                  ---
    b      Slope * diabetes            -0.18 (0.09)     .04   -0.05 (0.05)     .34   -0.19 (0.08)     .01                  ---
    a      Var (Level)                 39.12 (3.66)    <.01   39.11 (3.67)    <.01   39.24 (3.69)    <.01          39.16(0.07)
    a      Var (Slope)                  0.03 (0.04)     .45    0.02 (0.03)     .47    0.03 (0.04)     .39           0.03(0.00)
    a      Var (Residual)              21.16 (1.19)    <.01   21.22 (1.20)    <.01   21.11 (1.19)    <.01          21.16(0.06)
    a      Covar (Level, Slope)        -0.32 (0.30)     .28   -0.33 (0.29)     .26   -0.35 (0.30)     .24          -0.33(0.02)
    b      Var (Level)                 27.09 (1.70)    <.01    6.46 (0.47)    <.01   14.30 (1.49)    <.01                  ---
    b      Var (Slope)                  0.07 (0.02)    <.01    0.02 (0.01)     .01    0.01 (0.02)     .55                  ---
    b      Var (Residual)               5.73 (0.35)    <.01    4.03 (0.22)    <.01   12.81 (0.58)    <.01                  ---
    b      Covar (Level, Slope)        -0.24 (0.13)     .06   -0.03 (0.04)     .54    0.01 (0.14)     .95                  ---
   ab      Covar (Levels)               3.28 (1.69)     .05    2.65 (0.89)    <.01    1.76 (1.54)     .25                  ---
   ab      Covar (Slopes)               0.03 (0.02)     .09    0.02 (0.01)     .02    0.00 (0.01)     .84                  ---
   ab      Covar (Residuals)            0.96 (0.39)     .01    0.70 (0.31)     .03    2.25 (0.53)    <.01                  ---
    \      Correlation of Levels                      0.101                  0.167                  0.074           0.11(0.05)
    \      Correlation of Slopes                      0.600                  0.922                  0.173           0.56(0.38)
    \      Correlation of Residuals                   0.087                  0.075                  0.137           0.10(0.03)
    \      N                                            800                    800                    800         800.00(0.00)
    \      occasions                                      6                      6                      6           6.00(0.00)
    \      parameters                                    41                     41                     41          41.00(0.00)
    \      LL                                       -13,320                -13,392                -13,675   -1.346250e+04(188)
    \      AIC                                       26,721                 26,867                 27,433    2.700701e+04(376)
    \      BIC                                       26,913                 27,059                 27,625    2.719908e+04(376)

##  letter 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _letter_


 process   label                                    aehplus
---------  -------------------------  ---------------------
    a      Level                       34.02 (0.49)    <.01
    a      Slope                       -0.61 (0.06)    <.01
    a      Level * age                 -0.46 (0.04)    <.01
    a      Level * education           -0.09 (0.08)     .26
    a      Level * height               0.22 (0.04)    <.01
    a      Level * smoking              0.26 (0.62)     .67
    a      Level * cardio               0.37 (0.61)     .55
    a      Level * diabetes            -2.94 (1.44)     .04
    a      Slope * age                 -0.03 (0.00)    <.01
    a      Slope * education            0.01 (0.01)     .23
    a      Slope * height              -0.00 (0.00)     .46
    a      Slope * smoking             -0.11 (0.06)     .06
    a      Slope * cardio              -0.05 (0.06)     .43
    a      Slope * diabetes            -0.30 (0.12)     .02
    b      Level                       21.91 (0.37)    <.01
    b      Slope                       -0.39 (0.04)    <.01
    b      Level * age                 -0.35 (0.03)    <.01
    b      Level * education            0.76 (0.06)    <.01
    b      Level * height               0.11 (0.03)    <.01
    b      Level * smoking             -0.81 (0.46)     .08
    b      Level * cardio              -0.39 (0.47)     .41
    b      Level * diabetes            -1.21 (1.01)     .23
    b      Slope * age                 -0.01 (0.00)    <.01
    b      Slope * education           -0.01 (0.01)     .05
    b      Slope * height               0.00 (0.00)     .77
    b      Slope * smoking             -0.07 (0.05)     .11
    b      Slope * cardio              -0.03 (0.04)     .48
    b      Slope * diabetes            -0.18 (0.09)     .04
    a      Var (Level)                 39.12 (3.66)    <.01
    a      Var (Slope)                  0.03 (0.04)     .45
    a      Var (Residual)              21.16 (1.19)    <.01
    a      Covar (Level, Slope)        -0.32 (0.30)     .28
    b      Var (Level)                 27.09 (1.70)    <.01
    b      Var (Slope)                  0.07 (0.02)    <.01
    b      Var (Residual)               5.73 (0.35)    <.01
    b      Covar (Level, Slope)        -0.24 (0.13)     .06
   ab      Covar (Levels)               3.28 (1.69)     .05
   ab      Covar (Slopes)               0.03 (0.02)     .09
   ab      Covar (Residuals)            0.96 (0.39)     .01
    \      Correlation of Levels                      0.101
    \      Correlation of Slopes                      0.600
    \      Correlation of Residuals                   0.087
    \      N                                            800
    \      occasions                                      6
    \      parameters                                    41
    \      LL                                       -13,320
    \      AIC                                       26,721
    \      BIC                                       26,913

##  raven 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _raven_


 process   label                                    aehplus
---------  -------------------------  ---------------------
    a      Level                       33.98 (0.49)    <.01
    a      Slope                       -0.59 (0.06)    <.01
    a      Level * age                 -0.46 (0.04)    <.01
    a      Level * education           -0.10 (0.08)     .24
    a      Level * height               0.22 (0.04)    <.01
    a      Level * smoking              0.26 (0.61)     .67
    a      Level * cardio               0.40 (0.61)     .51
    a      Level * diabetes            -2.94 (1.45)     .04
    a      Slope * age                 -0.03 (0.00)    <.01
    a      Slope * education            0.01 (0.01)     .20
    a      Slope * height              -0.00 (0.00)     .38
    a      Slope * smoking             -0.11 (0.06)     .05
    a      Slope * cardio              -0.05 (0.06)     .42
    a      Slope * diabetes            -0.29 (0.12)     .02
    b      Level                       17.23 (0.20)    <.01
    b      Slope                       -0.16 (0.02)    <.01
    b      Level * age                 -0.18 (0.01)    <.01
    b      Level * education            0.36 (0.03)    <.01
    b      Level * height               0.05 (0.01)    <.01
    b      Level * smoking             -0.08 (0.24)     .75
    b      Level * cardio              -0.48 (0.26)     .06
    b      Level * diabetes            -1.26 (0.54)     .02
    b      Slope * age                 -0.00 (0.00)     .08
    b      Slope * education           -0.00 (0.00)     .51
    b      Slope * height               0.00 (0.00)     .82
    b      Slope * smoking             -0.02 (0.03)     .48
    b      Slope * cardio               0.00 (0.03)     .87
    b      Slope * diabetes            -0.05 (0.05)     .34
    a      Var (Level)                 39.11 (3.67)    <.01
    a      Var (Slope)                  0.02 (0.03)     .47
    a      Var (Residual)              21.22 (1.20)    <.01
    a      Covar (Level, Slope)        -0.33 (0.29)     .26
    b      Var (Level)                  6.46 (0.47)    <.01
    b      Var (Slope)                  0.02 (0.01)     .01
    b      Var (Residual)               4.03 (0.22)    <.01
    b      Covar (Level, Slope)        -0.03 (0.04)     .54
   ab      Covar (Levels)               2.65 (0.89)    <.01
   ab      Covar (Slopes)               0.02 (0.01)     .02
   ab      Covar (Residuals)            0.70 (0.31)     .03
    \      Correlation of Levels                      0.167
    \      Correlation of Slopes                      0.922
    \      Correlation of Residuals                   0.075
    \      N                                            800
    \      occasions                                      6
    \      parameters                                    41
    \      LL                                       -13,392
    \      AIC                                       26,867
    \      BIC                                       27,059

##  word_im 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _word_im_


 process   label                                    aehplus
---------  -------------------------  ---------------------
    a      Level                       34.05 (0.49)    <.01
    a      Slope                       -0.61 (0.06)    <.01
    a      Level * age                 -0.46 (0.04)    <.01
    a      Level * education           -0.10 (0.08)     .24
    a      Level * height               0.22 (0.04)    <.01
    a      Level * smoking              0.24 (0.62)     .69
    a      Level * cardio               0.37 (0.61)     .55
    a      Level * diabetes            -2.98 (1.44)     .04
    a      Slope * age                 -0.03 (0.00)    <.01
    a      Slope * education            0.01 (0.01)     .19
    a      Slope * height              -0.00 (0.00)     .42
    a      Slope * smoking             -0.11 (0.06)     .06
    a      Slope * cardio              -0.04 (0.06)     .49
    a      Slope * diabetes            -0.30 (0.12)     .01
    b      Level                       17.89 (0.30)    <.01
    b      Slope                       -0.32 (0.04)    <.01
    b      Level * age                 -0.35 (0.02)    <.01
    b      Level * education            0.41 (0.06)    <.01
    b      Level * height               0.06 (0.03)     .02
    b      Level * smoking             -0.09 (0.41)     .82
    b      Level * cardio              -0.07 (0.40)     .86
    b      Level * diabetes            -1.52 (0.89)     .09
    b      Slope * age                  0.00 (0.00)     .22
    b      Slope * education           -0.01 (0.01)     .02
    b      Slope * height              -0.00 (0.00)     .50
    b      Slope * smoking             -0.09 (0.05)     .05
    b      Slope * cardio              -0.03 (0.05)     .60
    b      Slope * diabetes            -0.19 (0.08)     .01
    a      Var (Level)                 39.24 (3.69)    <.01
    a      Var (Slope)                  0.03 (0.04)     .39
    a      Var (Residual)              21.11 (1.19)    <.01
    a      Covar (Level, Slope)        -0.35 (0.30)     .24
    b      Var (Level)                 14.30 (1.49)    <.01
    b      Var (Slope)                  0.01 (0.02)     .55
    b      Var (Residual)              12.81 (0.58)    <.01
    b      Covar (Level, Slope)         0.01 (0.14)     .95
   ab      Covar (Levels)               1.76 (1.54)     .25
   ab      Covar (Slopes)               0.00 (0.01)     .84
   ab      Covar (Residuals)            2.25 (0.53)    <.01
    \      Correlation of Levels                      0.074
    \      Correlation of Slopes                      0.173
    \      Correlation of Residuals                   0.137
    \      N                                            800
    \      occasions                                      6
    \      parameters                                    41
    \      LL                                       -13,675
    \      AIC                                       27,433
    \      BIC                                       27,625

## Summary 

 Study = _LASA_; Gender = _male_; Process (a) = _grip_

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
   <td style="text-align:right;"> letter </td>
   <td style="text-align:right;"> 0.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> raven </td>
   <td style="text-align:right;"> 0.17 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.07 </td>
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
   <td style="text-align:right;"> letter </td>
   <td style="text-align:right;"> 0.60 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> raven </td>
   <td style="text-align:right;"> 0.92 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.17 </td>
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
   <td style="text-align:right;"> letter </td>
   <td style="text-align:right;"> 0.09 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> raven </td>
   <td style="text-align:right;"> 0.08 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.14 </td>
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
   <td style="text-align:right;"> letter </td>
   <td style="text-align:right;"> 0.05 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Levels </td>
   <td style="text-align:right;"> raven </td>
   <td style="text-align:right;"> 0.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Levels </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.25 </td>
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
   <td style="text-align:right;"> letter </td>
   <td style="text-align:right;"> 0.09 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Slopes </td>
   <td style="text-align:right;"> raven </td>
   <td style="text-align:right;"> 0.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Slopes </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.84 </td>
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
   <td style="text-align:right;"> letter </td>
   <td style="text-align:right;"> 0.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of  Residuals </td>
   <td style="text-align:right;"> raven </td>
   <td style="text-align:right;"> 0.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of  Residuals </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.00 </td>
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
