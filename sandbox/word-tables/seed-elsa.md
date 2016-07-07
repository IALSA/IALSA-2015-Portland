# Seed report for Meta-Analysis #1
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


# Summary

### Notes 
1. All available models are contained in the dynamic table, while only the 'aehplus' models are shown in the static tables.

### Unanswered Questions


1. How should we handle entries that are entirely missing?
1. How should we handle entries containing null/NA results?

### Answered Questions





# Dynamic Tables

## Correlations


## Growth Curves


# Static Tables
The 'aehplus' model (with covariates *a*ge, *e*ducation, *h*ealth, and others) is shown for each combination of

* study,
* process, and
* gender.

## Correlations

##  elsa 



|Processes         |Gender |  $n$|   $r_{intercepts}$|        $r_{slopes}$|     $r_{residuals}$|
|:-----------------|:------|----:|------------------:|-------------------:|-------------------:|
|fev vs word_de    |female | 3511| 0.05(0.04),*p*=.25| -0.43(1.05),*p*=.68|  0.01(0.03),*p*=.56|
|fev vs word_de    |male   | 3091| 0.06(0.04),*p*=.16| -0.22(0.39),*p*=.58|  0.03(0.03),*p*=.27|
|fev vs word_im    |female | 3511| 0.07(0.04),*p*=.09| -0.16(0.43),*p*=.71|  0.02(0.02),*p*=.28|
|fev vs word_im    |male   | 3091| 0.06(0.04),*p*=.15| -0.11(0.18),*p*=.53|  0.05(0.02),*p*=.06|
|fev100 vs word_de |female | 3511| 0.05(0.04),*p*=.24| -0.43(0.41),*p*=.29|  0.01(0.02),*p*=.54|
|fev100 vs word_de |male   | 3091| 0.06(0.04),*p*=.15| -0.22(0.33),*p*=.51|  0.03(0.02),*p*=.25|
|fev100 vs word_im |female | 3511| 0.07(0.04),*p*=.08| -0.16(0.33),*p*=.63|  0.02(0.02),*p*=.24|
|fev100 vs word_im |male   | 3091| 0.06(0.04),*p*=.15| -0.11(0.17),*p*=.52|  0.05(0.02),*p*=.06|
|gait vs fluency   |female | 3510| 0.19(0.03),*p*<.01|  0.22(0.16),*p*=.18|  0.04(0.02),*p*=.04|
|gait vs fluency   |male   | 3090| 0.22(0.04),*p*<.01|  0.12(0.25),*p*=.63|  0.00(0.02),*p*=.89|
|gait vs word_de   |female | 3510| 0.21(0.04),*p*<.01|  0.24(0.22),*p*=.27| -0.02(0.02),*p*=.35|
|gait vs word_de   |male   | 3090| 0.23(0.04),*p*<.01| -0.07(0.21),*p*=.74|  0.03(0.02),*p*=.16|
|gait vs word_im   |female | 3510| 0.22(0.04),*p*<.01|  0.30(0.19),*p*=.11|  0.02(0.02),*p*=.18|
|gait vs word_im   |male   | 3088| 0.21(0.04),*p*<.01| -0.11(0.14),*p*=.44| -0.00(0.02),*p*=.94|
|grip vs word_de   |female | 3511| 0.13(0.03),*p*<.01| -0.02(0.57),*p*=.97|  0.02(0.02),*p*=.30|
|grip vs word_de   |male   | 3091| 0.05(0.04),*p*=.20| -0.48(0.42),*p*=.26|  0.02(0.02),*p*=.33|
|grip vs word_im   |female | 3511| 0.12(0.04),*p*<.01| -0.03(0.28),*p*=.91|  0.02(0.02),*p*=.49|
|grip vs word_im   |male   | 3091| 0.02(0.04),*p*=.57| -0.42(0.34),*p*=.22|  0.06(0.02),*p*=.02|

## Growth Curves

##  elsa 



|Process |Gender |  $n$|   species|            intercept|               slope|
|:-------|:------|----:|---------:|--------------------:|-------------------:|
|fev     |female | 3511| intercept|   1.88(0.02),*p*<.01| -0.02(0.00),*p*<.01|
|        |       |     |       age|  -0.03(0.00),*p*<.01|  0.00(0.00),*p*=.42|
|        |       |     | education|   0.10(0.02),*p*<.01|  0.00(0.00),*p*=.65|
|        |       |     |    height|   0.03(0.00),*p*<.01|  0.00(0.00),*p*=.03|
|        |       |     |   smoking|  -0.11(0.02),*p*<.01| -0.00(0.00),*p*=.46|
|        |       |     |    cardio|  -0.11(0.03),*p*<.01|  0.00(0.00),*p*=.50|
|        |       |     |  diabetes|  -0.05(0.04),*p*=.18| -0.00(0.01),*p*=.53|
|fev     |male   | 3091| intercept|   2.63(0.03),*p*<.01| -0.02(0.00),*p*<.01|
|        |       |     |       age|  -0.03(0.00),*p*<.01|  0.00(0.00),*p*=.50|
|        |       |     | education|   0.20(0.03),*p*<.01| -0.01(0.00),*p*=.08|
|        |       |     |    height|   0.03(0.00),*p*<.01|  0.00(0.00),*p*=.93|
|        |       |     |   smoking|  -0.21(0.03),*p*<.01|  0.00(0.00),*p*=.35|
|        |       |     |    cardio|  -0.20(0.04),*p*<.01|  0.00(0.00),*p*=.57|
|        |       |     |  diabetes|  -0.06(0.05),*p*=.18| -0.02(0.01),*p*=.01|
|fev100  |female | 3511| intercept| 188.50(1.68),*p*<.01| -2.13(0.19),*p*<.01|
|        |       |     |       age|  -2.61(0.10),*p*<.01| -0.01(0.01),*p*=.42|
|        |       |     | education|  10.17(1.79),*p*<.01|  0.09(0.21),*p*=.65|
|        |       |     |    height|   2.76(0.15),*p*<.01| -0.04(0.02),*p*=.03|
|        |       |     |   smoking| -10.89(1.70),*p*<.01| -0.15(0.20),*p*=.46|
|        |       |     |    cardio| -11.18(3.09),*p*<.01|  0.31(0.46),*p*=.50|
|        |       |     |  diabetes|  -5.14(3.83),*p*=.18| -0.35(0.56),*p*=.53|
|fev100  |male   | 3091| intercept| 262.62(3.21),*p*<.01| -2.21(0.44),*p*<.01|
|        |       |     |       age|  -3.41(0.15),*p*<.01| -0.01(0.02),*p*=.50|
|        |       |     | education|  20.33(2.89),*p*<.01| -0.64(0.36),*p*=.08|
|        |       |     |    height|   3.34(0.21),*p*<.01| -0.00(0.02),*p*=.93|
|        |       |     |   smoking| -21.05(2.83),*p*<.01|  0.32(0.34),*p*=.35|
|        |       |     |    cardio| -19.51(3.86),*p*<.01|  0.28(0.49),*p*=.57|
|        |       |     |  diabetes|  -6.20(4.67),*p*=.18| -1.60(0.63),*p*=.01|
|fluency |female | 3510| intercept|  17.64(0.18),*p*<.01| -0.08(0.03),*p*<.01|
|        |       |     |       age|  -0.16(0.01),*p*<.01| -0.01(0.00),*p*<.01|
|        |       |     | education|   3.34(0.20),*p*<.01|  0.03(0.03),*p*=.35|
|        |       |     |    height|   0.10(0.02),*p*<.01| -0.00(0.00),*p*=.09|
|        |       |     |   smoking|  -0.06(0.19),*p*=.74| -0.04(0.03),*p*=.13|
|        |       |     |    cardio|  -0.23(0.35),*p*=.52| -0.04(0.05),*p*=.35|
|        |       |     |  diabetes|  -0.62(0.50),*p*=.22| -0.14(0.07),*p*=.05|
|fluency |male   | 3090| intercept|  18.25(0.26),*p*<.01| -0.07(0.04),*p*=.06|
|        |       |     |       age|  -0.15(0.01),*p*<.01| -0.01(0.00),*p*<.01|
|        |       |     | education|   2.76(0.22),*p*<.01| -0.04(0.03),*p*=.23|
|        |       |     |    height|   0.08(0.02),*p*<.01|  0.00(0.00),*p*=.06|
|        |       |     |   smoking|  -0.18(0.23),*p*=.45| -0.04(0.03),*p*=.23|
|        |       |     |    cardio|  -0.58(0.30),*p*=.06|  0.04(0.04),*p*=.35|
|        |       |     |  diabetes|  -0.12(0.40),*p*=.77| -0.06(0.06),*p*=.28|
|gait    |female | 3510| intercept|   0.83(0.01),*p*<.01| -0.01(0.00),*p*<.01|
|        |       |     |       age|  -0.01(0.00),*p*<.01|  0.00(0.00),*p*<.01|
|        |       |     | education|   0.09(0.01),*p*<.01|  0.00(0.00),*p*=.96|
|        |       |     |    height|   0.01(0.00),*p*<.01|  0.00(0.00),*p*=.13|
|        |       |     |   smoking|  -0.03(0.01),*p*<.01|  0.00(0.00),*p*=.92|
|        |       |     |    cardio|  -0.08(0.02),*p*<.01| -0.00(0.00),*p*=.32|
|        |       |     |  diabetes|  -0.13(0.02),*p*<.01|  0.00(0.00),*p*=.64|
|gait    |male   | 3090| intercept|   0.86(0.01),*p*<.01| -0.01(0.00),*p*<.01|
|        |       |     |       age|  -0.01(0.00),*p*<.01|  0.00(0.00),*p*<.01|
|        |       |     | education|   0.11(0.01),*p*<.01|  0.00(0.00),*p*=.25|
|        |       |     |    height|   0.00(0.00),*p*<.01|  0.00(0.00),*p*=.66|
|        |       |     |   smoking|  -0.04(0.01),*p*<.01|  0.00(0.00),*p*=.83|
|        |       |     |    cardio|  -0.06(0.01),*p*<.01| -0.00(0.00),*p*=.71|
|        |       |     |  diabetes|  -0.06(0.02),*p*<.01| -0.00(0.00),*p*=.78|
|grip    |female | 3511| intercept|  20.25(0.18),*p*<.01| -0.29(0.02),*p*<.01|
|        |       |     |       age|  -0.24(0.01),*p*<.01| -0.01(0.00),*p*<.01|
|        |       |     | education|   0.99(0.19),*p*<.01| -0.01(0.02),*p*=.46|
|        |       |     |    height|   0.21(0.01),*p*<.01| -0.00(0.00),*p*=.05|
|        |       |     |   smoking|  -0.17(0.17),*p*=.32|  0.00(0.02),*p*=.95|
|        |       |     |    cardio|  -1.54(0.34),*p*<.01|  0.06(0.04),*p*=.13|
|        |       |     |  diabetes|  -1.42(0.40),*p*<.01|  0.00(0.04),*p*=.91|
|grip    |male   | 3091| intercept|  34.27(0.33),*p*<.01| -0.45(0.04),*p*<.01|
|        |       |     |       age|  -0.46(0.01),*p*<.01| -0.01(0.00),*p*<.01|
|        |       |     | education|   1.26(0.30),*p*<.01| -0.03(0.03),*p*=.36|
|        |       |     |    height|   0.29(0.02),*p*<.01|  0.00(0.00),*p*=.55|
|        |       |     |   smoking|  -0.38(0.29),*p*=.20| -0.01(0.03),*p*=.75|
|        |       |     |    cardio|  -0.33(0.39),*p*=.39| -0.13(0.04),*p*<.01|
|        |       |     |  diabetes|  -2.04(0.50),*p*<.01| -0.16(0.05),*p*<.01|
|word_de |female | 3511| intercept|   3.89(0.06),*p*<.01| -0.04(0.01),*p*<.01|
|        |       |     |       age|  -0.07(0.00),*p*<.01| -0.00(0.00),*p*<.01|
|        |       |     | education|   1.00(0.07),*p*<.01| -0.00(0.01),*p*=.56|
|        |       |     |    height|   0.02(0.00),*p*<.01|  0.00(0.00),*p*=.71|
|        |       |     |   smoking|  -0.21(0.06),*p*<.01|  0.01(0.01),*p*=.05|
|        |       |     |    cardio|  -0.12(0.12),*p*=.32| -0.01(0.01),*p*=.55|
|        |       |     |  diabetes|  -0.38(0.16),*p*=.02|  0.01(0.02),*p*=.63|
|word_de |male   | 3091| intercept|   3.27(0.08),*p*<.01|  0.00(0.01),*p*=.61|
|        |       |     |       age|  -0.07(0.00),*p*<.01| -0.00(0.00),*p*<.01|
|        |       |     | education|   0.92(0.07),*p*<.01| -0.01(0.01),*p*=.18|
|        |       |     |    height|   0.02(0.00),*p*<.01|  0.00(0.00),*p*=.96|
|        |       |     |   smoking|   0.02(0.07),*p*=.71| -0.02(0.01),*p*=.02|
|        |       |     |    cardio|  -0.06(0.10),*p*=.52| -0.03(0.01),*p*=.03|
|        |       |     |  diabetes|  -0.28(0.11),*p*=.01| -0.01(0.02),*p*=.40|
|word_im |female | 3511| intercept|   5.29(0.05),*p*<.01| -0.04(0.01),*p*<.01|
|        |       |     |       age|  -0.06(0.00),*p*<.01| -0.00(0.00),*p*<.01|
|        |       |     | education|   0.73(0.06),*p*<.01|  0.01(0.01),*p*=.08|
|        |       |     |    height|   0.01(0.00),*p*=.05|  0.00(0.00),*p*=.26|
|        |       |     |   smoking|  -0.04(0.05),*p*=.49| -0.00(0.01),*p*=.58|
|        |       |     |    cardio|  -0.20(0.10),*p*=.05|  0.00(0.01),*p*=.78|
|        |       |     |  diabetes|  -0.33(0.14),*p*=.02|  0.01(0.02),*p*=.57|
|word_im |male   | 3091| intercept|   4.87(0.07),*p*<.01| -0.03(0.01),*p*<.01|
|        |       |     |       age|  -0.05(0.00),*p*<.01| -0.00(0.00),*p*<.01|
|        |       |     | education|   0.76(0.06),*p*<.01| -0.00(0.01),*p*=.95|
|        |       |     |    height|   0.01(0.00),*p*<.01|  0.00(0.00),*p*=.10|
|        |       |     |   smoking|  -0.00(0.06),*p*=.95| -0.02(0.01),*p*=.04|
|        |       |     |    cardio|  -0.16(0.09),*p*=.07| -0.01(0.01),*p*=.66|
|        |       |     |  diabetes|  -0.10(0.10),*p*=.32| -0.01(0.02),*p*=.51|

