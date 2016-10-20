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
pef         letter              2
pef         raven               2
pef         word_im             2




study_name   subgroup   model_type   process_a   process_b    n_models
-----------  ---------  -----------  ----------  ----------  ---------
lasa         female     aehplus      pef         letter              1
lasa         female     aehplus      pef         raven               1
lasa         female     aehplus      pef         word_im             1




study_name   subgroup   model_type   process_a   process_b    n_models
-----------  ---------  -----------  ----------  ----------  ---------
lasa         male       aehplus      pef         letter              1
lasa         male       aehplus      pef         raven               1
lasa         male       aehplus      pef         word_im             1


# female 

 Gender = _female_; Model type: _aehplus_;  Process (a) = _pef_; Process (b): *letter*, *raven*, *word_im*


 process   label                                        letter                     raven                   word_im             mean(sd)
---------  -------------------------  ------------------------  ------------------------  ------------------------  -------------------
    a      Level                          352.09(4.52),   <.01      352.05(4.51),   <.01      352.00(4.52),   <.01         352.05(0.05)
    a      Slope                           -3.80(0.36),   <.01       -3.79(0.36),   <.01       -3.77(0.36),   <.01          -3.79(0.02)
    a      Level * age                     -4.50(0.36),   <.01       -4.50(0.36),   <.01       -4.51(0.36),   <.01          -4.50(0.01)
    a      Level * education                3.08(0.87),   <.01        3.08(0.87),   <.01        3.07(0.87),   <.01           3.08(0.00)
    a      Level * height                   2.52(0.41),   <.01        2.52(0.41),   <.01        2.53(0.41),   <.01           2.52(0.01)
    a      Level * smoking                -30.62(6.89),   <.01      -30.73(6.88),   <.01      -30.55(6.89),   <.01         -30.63(0.09)
    a      Level * cardio                 -12.32(7.36),    .09      -12.36(7.35),    .09      -12.34(7.36),    .09         -12.34(0.02)
    a      Level * diabetes               -3.75(12.46),    .76      -3.72(12.49),    .77      -3.83(12.47),    .76          -3.77(0.06)
    a      Slope * age                     -0.14(0.03),   <.01       -0.14(0.03),   <.01       -0.13(0.03),   <.01          -0.14(0.00)
    a      Slope * education               -0.08(0.06),    .19       -0.09(0.06),    .18       -0.09(0.06),    .18          -0.09(0.00)
    a      Slope * height                  -0.04(0.03),    .19       -0.04(0.03),    .21       -0.04(0.03),    .21          -0.04(0.00)
    a      Slope * smoking                 -0.82(0.47),    .08       -0.80(0.47),    .09       -0.84(0.47),    .07          -0.82(0.02)
    a      Slope * cardio                   0.03(0.52),    .95        0.07(0.52),    .90        0.02(0.52),    .96           0.04(0.02)
    a      Slope * diabetes                -0.93(1.13),    .41       -0.91(1.15),    .43       -0.85(1.15),    .46          -0.90(0.04)
    b      Level                           24.26(0.35),   <.01       17.82(0.18),   <.01       21.04(0.28),   <.01                  ---
    b      Slope                           -0.34(0.02),   <.01       -0.17(0.02),   <.01       -0.29(0.03),   <.01                  ---
    b      Level * age                     -0.33(0.03),   <.01       -0.15(0.01),   <.01       -0.29(0.02),   <.01                  ---
    b      Level * education                0.85(0.07),   <.01        0.40(0.03),   <.01        0.47(0.05),   <.01                  ---
    b      Level * height                   0.08(0.03),    .01        0.01(0.02),    .70        0.01(0.03),    .59                  ---
    b      Level * smoking                 -0.58(0.54),    .28       -0.66(0.28),    .02       -0.46(0.49),    .35                  ---
    b      Level * cardio                  -1.02(0.54),    .06       -0.04(0.29),    .90       -0.60(0.48),    .21                  ---
    b      Level * diabetes                -0.71(1.00),    .48       -0.83(0.56),    .14       -0.94(0.79),    .24                  ---
    b      Slope * age                     -0.01(0.00),   <.01       -0.00(0.00),   <.01        0.00(0.00),    .96                  ---
    b      Slope * education               -0.01(0.00),    .06        0.00(0.00),    .80       -0.00(0.00),    .62                  ---
    b      Slope * height                   0.00(0.00),    .86        0.00(0.00),    .83        0.00(0.00),    .33                  ---
    b      Slope * smoking                  0.01(0.03),    .80        0.02(0.02),    .49       -0.03(0.04),    .43                  ---
    b      Slope * cardio                   0.00(0.04),    .92       -0.04(0.03),    .09       -0.00(0.05),    .97                  ---
    b      Slope * diabetes                -0.13(0.10),    .17       -0.08(0.06),    .12       -0.05(0.08),    .53                  ---
    a      Var (Level)                 3902.40(273.52),   <.01   3922.55(277.38),   <.01   3921.81(276.94),   <.01       3915.59(11.43)
    a      Var (Slope)                      1.15(0.78),    .14        1.66(1.29),    .20        1.61(1.31),    .22           1.47(0.28)
    a      Var (Residual)              2096.08(136.13),   <.01   2082.58(137.67),   <.01   2083.64(139.15),   <.01        2087.43(7.51)
    a      Covar (Level, Slope)           24.32(13.29),    .07      20.23(14.83),    .17      20.74(14.71),    .16          21.76(2.23)
    b      Var (Level)                     28.91(1.54),   <.01        5.72(0.43),   <.01       13.88(1.32),   <.01                  ---
    b      Var (Slope)                      0.04(0.01),   <.01        0.00(0.00),    .34        0.01(0.01),    .53                  ---
    b      Var (Residual)                   5.95(0.26),   <.01        5.34(0.23),   <.01       16.63(0.66),   <.01                  ---
    b      Covar (Level, Slope)            -0.12(0.08),    .13        0.04(0.03),    .19        0.10(0.10),    .32                  ---
   ab      Covar (Levels)                 74.21(15.62),   <.01       43.20(8.05),   <.01      37.66(13.01),   <.01                  ---
   ab      Covar (Slopes)                  -0.01(0.06),    .91       -0.01(0.04),    .76        0.01(0.06),    .86                  ---
   ab      Covar (Residuals)               12.67(3.60),   <.01        0.53(2.73),    .85       25.45(4.52),   <.01                  ---
    \      Correlation of Levels                         0.221                     0.288                      0.16           0.22(0.06)
    \      Correlation of Slopes                        -0.034                    -0.156                      0.10          -0.03(0.13)
    \      Correlation of Residuals                      0.113                     0.005                      0.14           0.09(0.07)
    \      N                                               782                       782                       782         782.00(0.00)
    \      occasions                                         6                         6                         6           6.00(0.00)
    \      parameters                                       41                        41                        41          41.00(0.00)
    \      LL                                          -22,762                   -22,940                   -23,544   -2.308195e+04(410)
    \      AIC                                          45,606                    45,961                    47,170    4.624591e+04(820)
    \      BIC                                          45,797                    46,153                    47,361    4.643704e+04(820)

##  letter 

 Gender = _female_;  Process (a) = *pef*; Process (b) = _letter_


 process   label                                       aehplus            mean(sd)
---------  -------------------------  ------------------------  ------------------
    a      Level                          352.09(4.52),   <.01          352.09(NA)
    a      Slope                           -3.80(0.36),   <.01           -3.80(NA)
    a      Level * age                     -4.50(0.36),   <.01           -4.50(NA)
    a      Level * education                3.08(0.87),   <.01            3.08(NA)
    a      Level * height                   2.52(0.41),   <.01            2.52(NA)
    a      Level * smoking                -30.62(6.89),   <.01          -30.62(NA)
    a      Level * cardio                 -12.32(7.36),    .09          -12.32(NA)
    a      Level * diabetes               -3.75(12.46),    .76           -3.75(NA)
    a      Slope * age                     -0.14(0.03),   <.01           -0.14(NA)
    a      Slope * education               -0.08(0.06),    .19           -0.08(NA)
    a      Slope * height                  -0.04(0.03),    .19           -0.04(NA)
    a      Slope * smoking                 -0.82(0.47),    .08           -0.82(NA)
    a      Slope * cardio                   0.03(0.52),    .95            0.03(NA)
    a      Slope * diabetes                -0.93(1.13),    .41           -0.93(NA)
    b      Level                           24.26(0.35),   <.01           24.26(NA)
    b      Slope                           -0.34(0.02),   <.01           -0.34(NA)
    b      Level * age                     -0.33(0.03),   <.01           -0.33(NA)
    b      Level * education                0.85(0.07),   <.01            0.85(NA)
    b      Level * height                   0.08(0.03),    .01            0.08(NA)
    b      Level * smoking                 -0.58(0.54),    .28           -0.58(NA)
    b      Level * cardio                  -1.02(0.54),    .06           -1.02(NA)
    b      Level * diabetes                -0.71(1.00),    .48           -0.71(NA)
    b      Slope * age                     -0.01(0.00),   <.01           -0.01(NA)
    b      Slope * education               -0.01(0.00),    .06           -0.01(NA)
    b      Slope * height                   0.00(0.00),    .86            0.00(NA)
    b      Slope * smoking                  0.01(0.03),    .80            0.01(NA)
    b      Slope * cardio                   0.00(0.04),    .92            0.00(NA)
    b      Slope * diabetes                -0.13(0.10),    .17           -0.13(NA)
    a      Var (Level)                 3902.40(273.52),   <.01         3902.40(NA)
    a      Var (Slope)                      1.15(0.78),    .14            1.15(NA)
    a      Var (Residual)              2096.08(136.13),   <.01         2096.08(NA)
    a      Covar (Level, Slope)           24.32(13.29),    .07           24.32(NA)
    b      Var (Level)                     28.91(1.54),   <.01           28.91(NA)
    b      Var (Slope)                      0.04(0.01),   <.01            0.04(NA)
    b      Var (Residual)                   5.95(0.26),   <.01            5.95(NA)
    b      Covar (Level, Slope)            -0.12(0.08),    .13           -0.12(NA)
   ab      Covar (Levels)                 74.21(15.62),   <.01           74.21(NA)
   ab      Covar (Slopes)                  -0.01(0.06),    .91           -0.01(NA)
   ab      Covar (Residuals)               12.67(3.60),   <.01           12.67(NA)
    \      Correlation of Levels                         0.221            0.22(NA)
    \      Correlation of Slopes                        -0.034           -0.03(NA)
    \      Correlation of Residuals                      0.113            0.11(NA)
    \      N                                               782          782.00(NA)
    \      occasions                                         6            6.00(NA)
    \      parameters                                       41           41.00(NA)
    \      LL                                          -22,762   -2.276212e+04(NA)
    \      AIC                                          45,606    4.560623e+04(NA)
    \      BIC                                          45,797    4.579737e+04(NA)

##  raven 

 Gender = _female_;  Process (a) = *pef*; Process (b) = _raven_


 process   label                                       aehplus            mean(sd)
---------  -------------------------  ------------------------  ------------------
    a      Level                          352.05(4.51),   <.01          352.05(NA)
    a      Slope                           -3.79(0.36),   <.01           -3.79(NA)
    a      Level * age                     -4.50(0.36),   <.01           -4.50(NA)
    a      Level * education                3.08(0.87),   <.01            3.08(NA)
    a      Level * height                   2.52(0.41),   <.01            2.52(NA)
    a      Level * smoking                -30.73(6.88),   <.01          -30.73(NA)
    a      Level * cardio                 -12.36(7.35),    .09          -12.36(NA)
    a      Level * diabetes               -3.72(12.49),    .77           -3.72(NA)
    a      Slope * age                     -0.14(0.03),   <.01           -0.14(NA)
    a      Slope * education               -0.09(0.06),    .18           -0.09(NA)
    a      Slope * height                  -0.04(0.03),    .21           -0.04(NA)
    a      Slope * smoking                 -0.80(0.47),    .09           -0.80(NA)
    a      Slope * cardio                   0.07(0.52),    .90            0.07(NA)
    a      Slope * diabetes                -0.91(1.15),    .43           -0.91(NA)
    b      Level                           17.82(0.18),   <.01           17.82(NA)
    b      Slope                           -0.17(0.02),   <.01           -0.17(NA)
    b      Level * age                     -0.15(0.01),   <.01           -0.15(NA)
    b      Level * education                0.40(0.03),   <.01            0.40(NA)
    b      Level * height                   0.01(0.02),    .70            0.01(NA)
    b      Level * smoking                 -0.66(0.28),    .02           -0.66(NA)
    b      Level * cardio                  -0.04(0.29),    .90           -0.04(NA)
    b      Level * diabetes                -0.83(0.56),    .14           -0.83(NA)
    b      Slope * age                     -0.00(0.00),   <.01           -0.00(NA)
    b      Slope * education                0.00(0.00),    .80            0.00(NA)
    b      Slope * height                   0.00(0.00),    .83            0.00(NA)
    b      Slope * smoking                  0.02(0.02),    .49            0.02(NA)
    b      Slope * cardio                  -0.04(0.03),    .09           -0.04(NA)
    b      Slope * diabetes                -0.08(0.06),    .12           -0.08(NA)
    a      Var (Level)                 3922.55(277.38),   <.01         3922.55(NA)
    a      Var (Slope)                      1.66(1.29),    .20            1.66(NA)
    a      Var (Residual)              2082.58(137.67),   <.01         2082.58(NA)
    a      Covar (Level, Slope)           20.23(14.83),    .17           20.23(NA)
    b      Var (Level)                      5.72(0.43),   <.01            5.72(NA)
    b      Var (Slope)                      0.00(0.00),    .34            0.00(NA)
    b      Var (Residual)                   5.34(0.23),   <.01            5.34(NA)
    b      Covar (Level, Slope)             0.04(0.03),    .19            0.04(NA)
   ab      Covar (Levels)                  43.20(8.05),   <.01           43.20(NA)
   ab      Covar (Slopes)                  -0.01(0.04),    .76           -0.01(NA)
   ab      Covar (Residuals)                0.53(2.73),    .85            0.53(NA)
    \      Correlation of Levels                         0.288            0.29(NA)
    \      Correlation of Slopes                        -0.156           -0.16(NA)
    \      Correlation of Residuals                      0.005            0.00(NA)
    \      N                                               782          782.00(NA)
    \      occasions                                         6            6.00(NA)
    \      parameters                                       41           41.00(NA)
    \      LL                                          -22,940   -2.293974e+04(NA)
    \      AIC                                          45,961    4.596147e+04(NA)
    \      BIC                                          46,153    4.615261e+04(NA)

##  word_im 

 Gender = _female_;  Process (a) = *pef*; Process (b) = _word_im_


 process   label                                       aehplus            mean(sd)
---------  -------------------------  ------------------------  ------------------
    a      Level                          352.00(4.52),   <.01          352.00(NA)
    a      Slope                           -3.77(0.36),   <.01           -3.77(NA)
    a      Level * age                     -4.51(0.36),   <.01           -4.51(NA)
    a      Level * education                3.07(0.87),   <.01            3.07(NA)
    a      Level * height                   2.53(0.41),   <.01            2.53(NA)
    a      Level * smoking                -30.55(6.89),   <.01          -30.55(NA)
    a      Level * cardio                 -12.34(7.36),    .09          -12.34(NA)
    a      Level * diabetes               -3.83(12.47),    .76           -3.83(NA)
    a      Slope * age                     -0.13(0.03),   <.01           -0.13(NA)
    a      Slope * education               -0.09(0.06),    .18           -0.09(NA)
    a      Slope * height                  -0.04(0.03),    .21           -0.04(NA)
    a      Slope * smoking                 -0.84(0.47),    .07           -0.84(NA)
    a      Slope * cardio                   0.02(0.52),    .96            0.02(NA)
    a      Slope * diabetes                -0.85(1.15),    .46           -0.85(NA)
    b      Level                           21.04(0.28),   <.01           21.04(NA)
    b      Slope                           -0.29(0.03),   <.01           -0.29(NA)
    b      Level * age                     -0.29(0.02),   <.01           -0.29(NA)
    b      Level * education                0.47(0.05),   <.01            0.47(NA)
    b      Level * height                   0.01(0.03),    .59            0.01(NA)
    b      Level * smoking                 -0.46(0.49),    .35           -0.46(NA)
    b      Level * cardio                  -0.60(0.48),    .21           -0.60(NA)
    b      Level * diabetes                -0.94(0.79),    .24           -0.94(NA)
    b      Slope * age                      0.00(0.00),    .96            0.00(NA)
    b      Slope * education               -0.00(0.00),    .62           -0.00(NA)
    b      Slope * height                   0.00(0.00),    .33            0.00(NA)
    b      Slope * smoking                 -0.03(0.04),    .43           -0.03(NA)
    b      Slope * cardio                  -0.00(0.05),    .97           -0.00(NA)
    b      Slope * diabetes                -0.05(0.08),    .53           -0.05(NA)
    a      Var (Level)                 3921.81(276.94),   <.01         3921.81(NA)
    a      Var (Slope)                      1.61(1.31),    .22            1.61(NA)
    a      Var (Residual)              2083.64(139.15),   <.01         2083.64(NA)
    a      Covar (Level, Slope)           20.74(14.71),    .16           20.74(NA)
    b      Var (Level)                     13.88(1.32),   <.01           13.88(NA)
    b      Var (Slope)                      0.01(0.01),    .53            0.01(NA)
    b      Var (Residual)                  16.63(0.66),   <.01           16.63(NA)
    b      Covar (Level, Slope)             0.10(0.10),    .32            0.10(NA)
   ab      Covar (Levels)                 37.66(13.01),   <.01           37.66(NA)
   ab      Covar (Slopes)                   0.01(0.06),    .86            0.01(NA)
   ab      Covar (Residuals)               25.45(4.52),   <.01           25.45(NA)
    \      Correlation of Levels                          0.16            0.16(NA)
    \      Correlation of Slopes                          0.10            0.10(NA)
    \      Correlation of Residuals                       0.14            0.14(NA)
    \      N                                               782          782.00(NA)
    \      occasions                                         6            6.00(NA)
    \      parameters                                       41           41.00(NA)
    \      LL                                          -23,544   -2.354401e+04(NA)
    \      AIC                                          47,170    4.717001e+04(NA)
    \      BIC                                          47,361    4.736115e+04(NA)

## Summary 

 Study = _LASA_; Gender = _female_; Process (a) = _pef_

 

label                    process_b   aehplus
----------------------  ----------  --------
Correlation of Levels       letter      0.22
Correlation of Levels        raven      0.29
Correlation of Levels      word_im      0.16



label                    process_b   aehplus
----------------------  ----------  --------
Correlation of Slopes       letter     -0.03
Correlation of Slopes        raven     -0.16
Correlation of Slopes      word_im      0.10



label                       process_b   aehplus
-------------------------  ----------  --------
Correlation of Residuals       letter      0.11
Correlation of Residuals        raven      0.00
Correlation of Residuals      word_im      0.14



# male 

 Gender = _male_; Model type: _aehplus_;  Process (a) = _pef_; Process (b): *letter*, *raven*, *word_im*


 process   label                                        letter                     raven                   word_im             mean(sd)
---------  -------------------------  ------------------------  ------------------------  ------------------------  -------------------
    a      Level                          468.55(6.54),   <.01      468.33(6.54),   <.01      468.42(6.53),   <.01         468.43(0.11)
    a      Slope                           -5.40(0.55),   <.01       -5.30(0.56),   <.01       -5.31(0.54),   <.01          -5.34(0.06)
    a      Level * age                     -6.52(0.47),   <.01       -6.51(0.47),   <.01       -6.52(0.47),   <.01          -6.52(0.00)
    a      Level * education                4.44(1.11),   <.01        4.47(1.11),   <.01        4.45(1.11),   <.01           4.45(0.01)
    a      Level * height                   3.17(0.50),   <.01        3.19(0.50),   <.01        3.18(0.50),   <.01           3.18(0.01)
    a      Level * smoking                -52.92(7.94),   <.01      -53.26(7.94),   <.01      -52.98(7.93),   <.01         -53.05(0.18)
    a      Level * cardio                  -0.88(8.45),    .92       -0.57(8.45),    .95       -0.76(8.45),    .93          -0.73(0.16)
    a      Level * diabetes                1.13(14.27),    .94       1.14(14.32),    .94       1.32(14.25),    .93           1.20(0.11)
    a      Slope * age                     -0.16(0.04),   <.01       -0.16(0.04),   <.01       -0.16(0.04),   <.01          -0.16(0.00)
    a      Slope * education               -0.05(0.09),    .55       -0.06(0.09),    .46       -0.06(0.09),    .47          -0.06(0.01)
    a      Slope * height                  -0.02(0.04),    .63       -0.03(0.04),    .43       -0.02(0.04),    .55          -0.02(0.01)
    a      Slope * smoking                 -1.87(0.62),   <.01       -1.71(0.62),   <.01       -1.86(0.62),   <.01          -1.82(0.09)
    a      Slope * cardio                  -1.25(0.68),    .07       -1.35(0.68),    .05       -1.30(0.68),    .06          -1.30(0.05)
    a      Slope * diabetes                -1.53(1.49),    .30       -1.55(1.47),    .29       -1.59(1.46),    .27          -1.56(0.03)
    b      Level                           22.82(0.35),   <.01       17.65(0.19),   <.01       17.60(0.28),   <.01                  ---
    b      Slope                           -0.37(0.03),   <.01       -0.17(0.02),   <.01       -0.20(0.03),   <.01                  ---
    b      Level * age                     -0.31(0.02),   <.01       -0.15(0.01),   <.01       -0.25(0.02),   <.01                  ---
    b      Level * education                0.76(0.06),   <.01        0.36(0.03),   <.01        0.41(0.05),   <.01                  ---
    b      Level * height                   0.10(0.03),   <.01        0.06(0.02),   <.01        0.03(0.02),    .25                  ---
    b      Level * smoking                 -0.71(0.43),    .10       -0.24(0.24),    .32       -0.38(0.37),    .31                  ---
    b      Level * cardio                  -0.35(0.44),    .43       -0.45(0.25),    .07        0.08(0.36),    .83                  ---
    b      Level * diabetes                -2.16(0.94),    .02       -0.97(0.50),    .05       -0.89(0.71),    .21                  ---
    b      Slope * age                     -0.01(0.00),   <.01       -0.01(0.00),   <.01       -0.00(0.00),    .23                  ---
    b      Slope * education               -0.01(0.00),    .08       -0.00(0.00),    .69       -0.01(0.00),    .03                  ---
    b      Slope * height                   0.00(0.00),    .49        0.00(0.00),    .72        0.00(0.00),    .43                  ---
    b      Slope * smoking                 -0.06(0.03),    .05        0.01(0.02),    .79       -0.03(0.04),    .46                  ---
    b      Slope * cardio                   0.00(0.03),    .95        0.01(0.02),    .73        0.00(0.04),    .92                  ---
    b      Slope * diabetes                -0.01(0.07),    .93       -0.05(0.05),    .35       -0.22(0.07),   <.01                  ---
    a      Var (Level)                 9161.99(602.59),   <.01   9164.55(601.81),   <.01   9149.29(602.09),   <.01        9158.61(8.17)
    a      Var (Slope)                     14.66(3.33),   <.01       14.23(3.27),   <.01       14.14(3.33),   <.01          14.35(0.28)
    a      Var (Residual)              2629.74(155.54),   <.01   2638.85(156.43),   <.01   2638.22(156.71),   <.01        2635.60(5.09)
    a      Covar (Level, Slope)           20.00(32.63),    .54      20.21(32.41),    .53      22.72(32.84),    .49          20.98(1.51)
    b      Var (Level)                     26.81(1.54),   <.01        6.45(0.52),   <.01       12.55(1.08),   <.01                  ---
    b      Var (Slope)                      0.05(0.01),   <.01        0.01(0.00),    .03        0.00(0.01),    .61                  ---
    b      Var (Residual)                   5.56(0.29),   <.01        4.21(0.20),   <.01       14.11(0.58),   <.01                  ---
    b      Covar (Level, Slope)            -0.18(0.08),    .03       -0.01(0.04),    .69        0.04(0.07),    .55                  ---
   ab      Covar (Levels)                 79.73(21.48),   <.01      44.79(11.81),   <.01      35.22(17.06),    .04                  ---
   ab      Covar (Slopes)                   0.16(0.11),    .13        0.19(0.06),   <.01        0.03(0.11),    .81                  ---
   ab      Covar (Residuals)               14.97(3.66),   <.01        3.44(2.98),    .25       19.63(5.39),   <.01                  ---
    \      Correlation of Levels                          0.16                     0.184                      0.10           0.15(0.04)
    \      Correlation of Slopes                          0.18                     0.557                      0.11           0.28(0.24)
    \      Correlation of Residuals                       0.12                     0.033                      0.10           0.09(0.05)
    \      N                                               800                       800                       800         800.00(0.00)
    \      occasions                                         6                         6                         6           6.00(0.00)
    \      parameters                                       41                        41                        41          41.00(0.00)
    \      LL                                          -22,701                   -22,669                   -23,259   -2.287632e+04(332)
    \      AIC                                          45,483                    45,421                    46,600    4.583464e+04(663)
    \      BIC                                          45,676                    45,613                    46,792    4.602671e+04(663)

##  letter 

 Gender = _male_;  Process (a) = *pef*; Process (b) = _letter_


 process   label                                       aehplus            mean(sd)
---------  -------------------------  ------------------------  ------------------
    a      Level                          468.55(6.54),   <.01          468.55(NA)
    a      Slope                           -5.40(0.55),   <.01           -5.40(NA)
    a      Level * age                     -6.52(0.47),   <.01           -6.52(NA)
    a      Level * education                4.44(1.11),   <.01            4.44(NA)
    a      Level * height                   3.17(0.50),   <.01            3.17(NA)
    a      Level * smoking                -52.92(7.94),   <.01          -52.92(NA)
    a      Level * cardio                  -0.88(8.45),    .92           -0.88(NA)
    a      Level * diabetes                1.13(14.27),    .94            1.13(NA)
    a      Slope * age                     -0.16(0.04),   <.01           -0.16(NA)
    a      Slope * education               -0.05(0.09),    .55           -0.05(NA)
    a      Slope * height                  -0.02(0.04),    .63           -0.02(NA)
    a      Slope * smoking                 -1.87(0.62),   <.01           -1.87(NA)
    a      Slope * cardio                  -1.25(0.68),    .07           -1.25(NA)
    a      Slope * diabetes                -1.53(1.49),    .30           -1.53(NA)
    b      Level                           22.82(0.35),   <.01           22.82(NA)
    b      Slope                           -0.37(0.03),   <.01           -0.37(NA)
    b      Level * age                     -0.31(0.02),   <.01           -0.31(NA)
    b      Level * education                0.76(0.06),   <.01            0.76(NA)
    b      Level * height                   0.10(0.03),   <.01            0.10(NA)
    b      Level * smoking                 -0.71(0.43),    .10           -0.71(NA)
    b      Level * cardio                  -0.35(0.44),    .43           -0.35(NA)
    b      Level * diabetes                -2.16(0.94),    .02           -2.16(NA)
    b      Slope * age                     -0.01(0.00),   <.01           -0.01(NA)
    b      Slope * education               -0.01(0.00),    .08           -0.01(NA)
    b      Slope * height                   0.00(0.00),    .49            0.00(NA)
    b      Slope * smoking                 -0.06(0.03),    .05           -0.06(NA)
    b      Slope * cardio                   0.00(0.03),    .95            0.00(NA)
    b      Slope * diabetes                -0.01(0.07),    .93           -0.01(NA)
    a      Var (Level)                 9161.99(602.59),   <.01         9161.99(NA)
    a      Var (Slope)                     14.66(3.33),   <.01           14.66(NA)
    a      Var (Residual)              2629.74(155.54),   <.01         2629.74(NA)
    a      Covar (Level, Slope)           20.00(32.63),    .54           20.00(NA)
    b      Var (Level)                     26.81(1.54),   <.01           26.81(NA)
    b      Var (Slope)                      0.05(0.01),   <.01            0.05(NA)
    b      Var (Residual)                   5.56(0.29),   <.01            5.56(NA)
    b      Covar (Level, Slope)            -0.18(0.08),    .03           -0.18(NA)
   ab      Covar (Levels)                 79.73(21.48),   <.01           79.73(NA)
   ab      Covar (Slopes)                   0.16(0.11),    .13            0.16(NA)
   ab      Covar (Residuals)               14.97(3.66),   <.01           14.97(NA)
    \      Correlation of Levels                          0.16            0.16(NA)
    \      Correlation of Slopes                          0.18            0.18(NA)
    \      Correlation of Residuals                       0.12            0.12(NA)
    \      N                                               800          800.00(NA)
    \      occasions                                         6            6.00(NA)
    \      parameters                                       41           41.00(NA)
    \      LL                                          -22,701   -2.270072e+04(NA)
    \      AIC                                          45,483    4.548343e+04(NA)
    \      BIC                                          45,676    4.567550e+04(NA)

##  raven 

 Gender = _male_;  Process (a) = *pef*; Process (b) = _raven_


 process   label                                       aehplus            mean(sd)
---------  -------------------------  ------------------------  ------------------
    a      Level                          468.33(6.54),   <.01          468.33(NA)
    a      Slope                           -5.30(0.56),   <.01           -5.30(NA)
    a      Level * age                     -6.51(0.47),   <.01           -6.51(NA)
    a      Level * education                4.47(1.11),   <.01            4.47(NA)
    a      Level * height                   3.19(0.50),   <.01            3.19(NA)
    a      Level * smoking                -53.26(7.94),   <.01          -53.26(NA)
    a      Level * cardio                  -0.57(8.45),    .95           -0.57(NA)
    a      Level * diabetes                1.14(14.32),    .94            1.14(NA)
    a      Slope * age                     -0.16(0.04),   <.01           -0.16(NA)
    a      Slope * education               -0.06(0.09),    .46           -0.06(NA)
    a      Slope * height                  -0.03(0.04),    .43           -0.03(NA)
    a      Slope * smoking                 -1.71(0.62),   <.01           -1.71(NA)
    a      Slope * cardio                  -1.35(0.68),    .05           -1.35(NA)
    a      Slope * diabetes                -1.55(1.47),    .29           -1.55(NA)
    b      Level                           17.65(0.19),   <.01           17.65(NA)
    b      Slope                           -0.17(0.02),   <.01           -0.17(NA)
    b      Level * age                     -0.15(0.01),   <.01           -0.15(NA)
    b      Level * education                0.36(0.03),   <.01            0.36(NA)
    b      Level * height                   0.06(0.02),   <.01            0.06(NA)
    b      Level * smoking                 -0.24(0.24),    .32           -0.24(NA)
    b      Level * cardio                  -0.45(0.25),    .07           -0.45(NA)
    b      Level * diabetes                -0.97(0.50),    .05           -0.97(NA)
    b      Slope * age                     -0.01(0.00),   <.01           -0.01(NA)
    b      Slope * education               -0.00(0.00),    .69           -0.00(NA)
    b      Slope * height                   0.00(0.00),    .72            0.00(NA)
    b      Slope * smoking                  0.01(0.02),    .79            0.01(NA)
    b      Slope * cardio                   0.01(0.02),    .73            0.01(NA)
    b      Slope * diabetes                -0.05(0.05),    .35           -0.05(NA)
    a      Var (Level)                 9164.55(601.81),   <.01         9164.55(NA)
    a      Var (Slope)                     14.23(3.27),   <.01           14.23(NA)
    a      Var (Residual)              2638.85(156.43),   <.01         2638.85(NA)
    a      Covar (Level, Slope)           20.21(32.41),    .53           20.21(NA)
    b      Var (Level)                      6.45(0.52),   <.01            6.45(NA)
    b      Var (Slope)                      0.01(0.00),    .03            0.01(NA)
    b      Var (Residual)                   4.21(0.20),   <.01            4.21(NA)
    b      Covar (Level, Slope)            -0.01(0.04),    .69           -0.01(NA)
   ab      Covar (Levels)                 44.79(11.81),   <.01           44.79(NA)
   ab      Covar (Slopes)                   0.19(0.06),   <.01            0.19(NA)
   ab      Covar (Residuals)                3.44(2.98),    .25            3.44(NA)
    \      Correlation of Levels                         0.184            0.18(NA)
    \      Correlation of Slopes                         0.557            0.56(NA)
    \      Correlation of Residuals                      0.033            0.03(NA)
    \      N                                               800          800.00(NA)
    \      occasions                                         6            6.00(NA)
    \      parameters                                       41           41.00(NA)
    \      LL                                          -22,669   -2.266948e+04(NA)
    \      AIC                                          45,421    4.542096e+04(NA)
    \      BIC                                          45,613    4.561303e+04(NA)

##  word_im 

 Gender = _male_;  Process (a) = *pef*; Process (b) = _word_im_


 process   label                                       aehplus            mean(sd)
---------  -------------------------  ------------------------  ------------------
    a      Level                          468.42(6.53),   <.01          468.42(NA)
    a      Slope                           -5.31(0.54),   <.01           -5.31(NA)
    a      Level * age                     -6.52(0.47),   <.01           -6.52(NA)
    a      Level * education                4.45(1.11),   <.01            4.45(NA)
    a      Level * height                   3.18(0.50),   <.01            3.18(NA)
    a      Level * smoking                -52.98(7.93),   <.01          -52.98(NA)
    a      Level * cardio                  -0.76(8.45),    .93           -0.76(NA)
    a      Level * diabetes                1.32(14.25),    .93            1.32(NA)
    a      Slope * age                     -0.16(0.04),   <.01           -0.16(NA)
    a      Slope * education               -0.06(0.09),    .47           -0.06(NA)
    a      Slope * height                  -0.02(0.04),    .55           -0.02(NA)
    a      Slope * smoking                 -1.86(0.62),   <.01           -1.86(NA)
    a      Slope * cardio                  -1.30(0.68),    .06           -1.30(NA)
    a      Slope * diabetes                -1.59(1.46),    .27           -1.59(NA)
    b      Level                           17.60(0.28),   <.01           17.60(NA)
    b      Slope                           -0.20(0.03),   <.01           -0.20(NA)
    b      Level * age                     -0.25(0.02),   <.01           -0.25(NA)
    b      Level * education                0.41(0.05),   <.01            0.41(NA)
    b      Level * height                   0.03(0.02),    .25            0.03(NA)
    b      Level * smoking                 -0.38(0.37),    .31           -0.38(NA)
    b      Level * cardio                   0.08(0.36),    .83            0.08(NA)
    b      Level * diabetes                -0.89(0.71),    .21           -0.89(NA)
    b      Slope * age                     -0.00(0.00),    .23           -0.00(NA)
    b      Slope * education               -0.01(0.00),    .03           -0.01(NA)
    b      Slope * height                   0.00(0.00),    .43            0.00(NA)
    b      Slope * smoking                 -0.03(0.04),    .46           -0.03(NA)
    b      Slope * cardio                   0.00(0.04),    .92            0.00(NA)
    b      Slope * diabetes                -0.22(0.07),   <.01           -0.22(NA)
    a      Var (Level)                 9149.29(602.09),   <.01         9149.29(NA)
    a      Var (Slope)                     14.14(3.33),   <.01           14.14(NA)
    a      Var (Residual)              2638.22(156.71),   <.01         2638.22(NA)
    a      Covar (Level, Slope)           22.72(32.84),    .49           22.72(NA)
    b      Var (Level)                     12.55(1.08),   <.01           12.55(NA)
    b      Var (Slope)                      0.00(0.01),    .61            0.00(NA)
    b      Var (Residual)                  14.11(0.58),   <.01           14.11(NA)
    b      Covar (Level, Slope)             0.04(0.07),    .55            0.04(NA)
   ab      Covar (Levels)                 35.22(17.06),    .04           35.22(NA)
   ab      Covar (Slopes)                   0.03(0.11),    .81            0.03(NA)
   ab      Covar (Residuals)               19.63(5.39),   <.01           19.63(NA)
    \      Correlation of Levels                          0.10            0.10(NA)
    \      Correlation of Slopes                          0.11            0.11(NA)
    \      Correlation of Residuals                       0.10            0.10(NA)
    \      N                                               800          800.00(NA)
    \      occasions                                         6            6.00(NA)
    \      parameters                                       41           41.00(NA)
    \      LL                                          -23,259   -2.325876e+04(NA)
    \      AIC                                          46,600    4.659951e+04(NA)
    \      BIC                                          46,792    4.679158e+04(NA)

## Summary 

 Study = _LASA_; Gender = _male_; Process (a) = _pef_

 

label                    process_b   aehplus
----------------------  ----------  --------
Correlation of Levels       letter      0.16
Correlation of Levels        raven      0.18
Correlation of Levels      word_im      0.10



label                    process_b   aehplus
----------------------  ----------  --------
Correlation of Slopes       letter      0.18
Correlation of Slopes        raven      0.56
Correlation of Slopes      word_im      0.11



label                       process_b   aehplus
-------------------------  ----------  --------
Correlation of Residuals       letter      0.12
Correlation of Residuals        raven      0.03
Correlation of Residuals      word_im      0.10


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
