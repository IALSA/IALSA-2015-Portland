# Correlation Report #1
Date: `r Sys.Date()`  

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





# Static Tables
The 'aehplus' model (with covariates *a*ge, *e*ducation, *h*ealth, and others) is shown for each combination of

* study,
* process, and
* gender.


##  eas 



|Processes           |Gender | $n$|    $r_{intercepts}$|        $r_{slopes}$|     $r_{residuals}$|
|:-------------------|:------|---:|-------------------:|-------------------:|-------------------:|
|gait vs block       |female | 150|  0.17(0.16),*p*=.28|  0.02(0.67),*p*=.98| -0.07(0.08),*p*=.36|
|gait vs block       |male   |  72|  0.29(0.37),*p*=.43|  0.15(7.19),*p*=.98|  0.01(0.15),*p*=.95|
|gait vs bnt         |female | 150|  0.09(0.18),*p*=.63|  0.67(0.49),*p*=.18| -0.00(0.12),*p*=.97|
|gait vs bnt         |male   |  72|  0.17(0.38),*p*=.64|  0.27(2.80),*p*=.92| -0.02(0.20),*p*=.91|
|gait vs categories  |female | 150|  0.01(0.13),*p*=.93|  0.38(0.44),*p*=.39|  0.05(0.11),*p*=.66|
|gait vs categories  |male   |  72|  0.24(0.38),*p*=.52|  0.92(1.14),*p*=.42| -0.02(0.17),*p*=.90|
|gait vs digit_tot   |female | 150|  0.18(0.16),*p*=.29|  0.65(0.40),*p*=.10|  0.07(0.08),*p*=.40|
|gait vs digit_tot   |male   |  72|  0.06(0.37),*p*=.87|  0.71(1.50),*p*=.63| -0.01(0.18),*p*=.96|
|gait vs fas         |female | 150|  0.26(0.14),*p*=.06|  0.49(0.61),*p*=.42| -0.07(0.08),*p*=.40|
|gait vs fas         |male   |  72| -0.05(0.29),*p*=.86|  0.68(2.69),*p*=.80| -0.02(0.22),*p*=.93|
|gait vs information |female | 130|  0.12(0.22),*p*=.58| -0.54(1.41),*p*=.70| -0.02(0.11),*p*=.87|
|gait vs information |male   |  70|  0.44(0.44),*p*=.32| -0.21(8.37),*p*=.98|  0.02(0.19),*p*=.90|
|gait vs logic_tot   |female | 150|  0.08(0.15),*p*=.60|  0.31(0.76),*p*=.68|  0.02(0.10),*p*=.83|
|gait vs logic_tot   |male   |  72|  0.17(0.36),*p*=.62|  0.62(2.40),*p*=.80| -0.02(0.19),*p*=.90|
|gait vs mmms        |female |  72|  0.26(0.63),*p*=.67|  0.14(3.05),*p*=.96|  0.03(0.16),*p*=.85|
|gait vs mmms        |male   |  72|  0.26(0.63),*p*=.67|  0.14(3.05),*p*=.96|  0.03(0.16),*p*=.85|
|gait vs symbol      |female | 150|  0.18(0.15),*p*=.24|  0.79(0.61),*p*=.19| -0.08(0.10),*p*=.44|
|gait vs symbol      |male   |  72|  0.01(0.29),*p*=.97|  0.82(1.14),*p*=.47| -0.05(0.22),*p*=.83|
|gait vs trailsb     |female | 150| -0.08(0.19),*p*=.68| -0.37(1.68),*p*=.82| -0.01(0.10),*p*=.94|
|gait vs trailsb     |male   |  72| -0.01(0.47),*p*=.97| -0.65(1.70),*p*=.70|  0.03(0.14),*p*=.84|
|gait vs waisvocab   |female | 150|  0.28(0.13),*p*=.03|  0.86(0.75),*p*=.26|  0.05(0.10),*p*=.65|
|gait vs waisvocab   |male   |  72| -0.11(0.37),*p*=.76| -0.61(3.05),*p*=.84| -0.06(0.22),*p*=.78|
|grip vs block       |female | 150|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs block       |male   |  72|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs bnt         |female | 150|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs bnt         |male   |  72|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs categories  |female | 150|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs categories  |male   |  72|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs digit_tot   |female | 150|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs digit_tot   |male   |  72|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs fas         |female | 150|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs fas         |male   |  72|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs information |female | 145|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs information |male   |  72|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs logic_tot   |female | 150|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs logic_tot   |male   |  72|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs mmms        |female | 150|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs mmms        |male   |  72|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs symbol      |female | 150|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs symbol      |male   |  72|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs trailsb     |female | 150|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs trailsb     |male   |  72|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs waisvocab   |female | 150|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs waisvocab   |male   |  72|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|pef vs block        |female | 150|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|pef vs block        |male   |  72|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|pef vs digit_tot    |female | 150|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|pef vs digit_tot    |male   |  72|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|pef vs symbol       |female | 150|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|pef vs symbol       |male   |  72|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|pef vs trailsb      |female | 150|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|pef vs trailsb      |male   |  72|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|


##  elsa 



|Processes         |Gender |   $n$|   $r_{intercepts}$|        $r_{slopes}$|     $r_{residuals}$|
|:-----------------|:------|-----:|------------------:|-------------------:|-------------------:|
|fev vs word_de    |female | 3,511| 0.05(0.04),*p*=.25| -0.43(1.05),*p*=.68|  0.01(0.03),*p*=.56|
|fev vs word_de    |male   | 3,091| 0.06(0.04),*p*=.16| -0.22(0.39),*p*=.58|  0.03(0.03),*p*=.27|
|fev vs word_im    |female | 3,511| 0.07(0.04),*p*=.09| -0.16(0.43),*p*=.71|  0.02(0.02),*p*=.28|
|fev vs word_im    |male   | 3,091| 0.06(0.04),*p*=.15| -0.11(0.18),*p*=.53|  0.05(0.02),*p*=.06|
|fev100 vs word_de |female | 3,511| 0.05(0.04),*p*=.24| -0.43(0.41),*p*=.29|  0.01(0.02),*p*=.54|
|fev100 vs word_de |male   | 3,091| 0.06(0.04),*p*=.15| -0.22(0.33),*p*=.51|  0.03(0.02),*p*=.25|
|fev100 vs word_im |female | 3,511| 0.07(0.04),*p*=.08| -0.16(0.33),*p*=.63|  0.02(0.02),*p*=.24|
|fev100 vs word_im |male   | 3,091| 0.06(0.04),*p*=.15| -0.11(0.17),*p*=.52|  0.05(0.02),*p*=.06|
|gait vs fluency   |female | 3,510| 0.19(0.03),*p*<.01|  0.22(0.16),*p*=.18|  0.04(0.02),*p*=.04|
|gait vs fluency   |male   | 3,090| 0.22(0.04),*p*<.01|  0.12(0.25),*p*=.63|  0.00(0.02),*p*=.89|
|gait vs word_de   |female | 3,510| 0.21(0.04),*p*<.01|  0.24(0.22),*p*=.27| -0.02(0.02),*p*=.35|
|gait vs word_de   |male   | 3,090| 0.23(0.04),*p*<.01| -0.07(0.21),*p*=.74|  0.03(0.02),*p*=.16|
|gait vs word_im   |female | 3,510| 0.22(0.04),*p*<.01|  0.30(0.19),*p*=.11|  0.02(0.02),*p*=.18|
|gait vs word_im   |male   | 3,088| 0.21(0.04),*p*<.01| -0.11(0.14),*p*=.44| -0.00(0.02),*p*=.94|
|grip vs word_de   |female | 3,511| 0.13(0.03),*p*<.01| -0.02(0.57),*p*=.97|  0.02(0.02),*p*=.30|
|grip vs word_de   |male   | 3,091| 0.05(0.04),*p*=.20| -0.48(0.42),*p*=.26|  0.02(0.02),*p*=.33|
|grip vs word_im   |female | 3,511| 0.12(0.04),*p*<.01| -0.03(0.28),*p*=.91|  0.02(0.02),*p*=.49|
|grip vs word_im   |male   | 3,091| 0.02(0.04),*p*=.57| -0.42(0.34),*p*=.22|  0.06(0.02),*p*=.02|


##  hrs 



|Processes       |Gender | $n$| $r_{intercepts}$|  $r_{slopes}$| $r_{residuals}$|
|:---------------|:------|---:|----------------:|-------------:|---------------:|
|gait vs serial7 |female | 370|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|gait vs serial7 |male   | 318|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|gait vs tics    |female | 370|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|gait vs tics    |male   | 318|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|gait vs word_de |female | 370|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|gait vs word_de |male   | 318|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|gait vs word_im |female | 370|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|gait vs word_im |male   | 318|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs serial7 |female | 641|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs serial7 |male   | 507|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs tics    |female | 641|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs tics    |male   | 507|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs word_de |female | 641|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs word_de |male   | 507|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs word_im |female | 641|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs word_im |male   | 507|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|pef vs serial7  |female | 715|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|pef vs serial7  |male   | 535|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|pef vs tics     |female | 715|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|pef vs tics     |male   | 535|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|pef vs word_de  |female | 715|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|pef vs word_de  |male   | 535|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|pef vs word_im  |female | 715|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|pef vs word_im  |male   | 535|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|


##  ilse 



|Processes           |Gender | $n$|    $r_{intercepts}$|        $r_{slopes}$|     $r_{residuals}$|
|:-------------------|:------|---:|-------------------:|-------------------:|-------------------:|
|grip vs fluency     |female | 225|  0.10(0.11),*p*=.35|  0.58(0.72),*p*=.43|  0.15(0.08),*p*=.06|
|grip vs fluency     |male   | 252|  0.07(0.10),*p*=.47|  0.19(0.76),*p*=.80|  0.21(0.07),*p*<.01|
|grip vs piccomp     |female | 225|  0.02(0.11),*p*=.85|  0.32(0.63),*p*=.61|  0.00(0.08),*p*=.91|
|grip vs piccomp     |male   | 252|  0.20(0.11),*p*=.06|  0.42(0.41),*p*=.29|  0.06(0.08),*p*=.32|
|grip vs symbol      |female | 225| -0.25(0.09),*p*=.01|  0.21(0.30),*p*=.48| -0.01(0.07),*p*=.86|
|grip vs symbol      |male   | 252| -0.08(0.10),*p*=.41| -0.07(0.36),*p*=.85|  0.06(0.08),*p*=.40|
|grip vs waisgeneral |female | 225|  0.03(0.09),*p*=.75|  0.42(0.42),*p*=.32| -0.08(0.08),*p*=.31|
|grip vs waisgeneral |male   | 252|  0.12(0.11),*p*=.25|  0.23(1.11),*p*=.83| -0.04(0.08),*p*=.65|
|tug vs block        |female | 225|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|tug vs block        |male   | 252|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|tug vs fluency      |female | 225|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|tug vs piccomp      |female | 225|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|tug vs piccomp      |male   | 252|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|tug vs symbol       |female | 225|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|tug vs symbol       |male   | 252|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|tug vs waisgeneral  |female | 225|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|tug vs waisgeneral  |male   | 252|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|


##  lasa 



|Processes       |Gender | $n$|    $r_{intercepts}$|        $r_{slopes}$|     $r_{residuals}$|
|:---------------|:------|---:|-------------------:|-------------------:|-------------------:|
|gait vs letter  |female | 782| -0.32(0.12),*p*=.01| -0.24(0.11),*p*=.02| -0.05(0.02),*p*=.02|
|gait vs letter  |male   | 800| -0.30(0.21),*p*=.15| -0.32(0.14),*p*=.02| -0.03(0.04),*p*=.43|
|gait vs raven   |female | 782| -0.25(0.15),*p*=.10| -0.53(0.18),*p*<.01|  0.03(0.04),*p*=.40|
|gait vs raven   |male   | 800| -0.23(0.19),*p*=.23| -0.23(0.16),*p*=.15|  0.02(0.03),*p*=.38|
|gait vs word_im |female | 782| -0.31(0.18),*p*=.08| -0.28(0.19),*p*=.13| -0.02(0.02),*p*=.21|
|gait vs word_im |male   | 800| -0.27(0.20),*p*=.17|  0.10(0.49),*p*=.85| -0.01(0.03),*p*=.77|
|grip vs letter  |female | 782|  0.03(0.06),*p*=.59|  0.40(0.93),*p*=.67|  0.08(0.03),*p*<.01|
|grip vs letter  |male   | 800|  0.10(0.05),*p*=.05|  0.61(0.41),*p*=.13|  0.09(0.03),*p*=.01|
|grip vs raven   |female | 782|  0.03(0.07),*p*=.66|  0.32(1.66),*p*=.85|  0.01(0.03),*p*=.70|
|grip vs raven   |male   | 800|  0.17(0.05),*p*<.01|  0.93(0.69),*p*=.18|  0.07(0.03),*p*=.02|
|grip vs word_im |female | 782|  0.11(0.07),*p*=.10|  0.23(2.09),*p*=.91|  0.12(0.03),*p*<.01|
|grip vs word_im |male   | 800|  0.07(0.06),*p*=.25|  0.16(0.80),*p*=.84|  0.14(0.03),*p*<.01|
|pef vs letter   |female | 782|  0.22(0.04),*p*<.01| -0.03(0.30),*p*=.92|  0.11(0.03),*p*<.01|
|pef vs letter   |male   | 800|  0.16(0.04),*p*<.01|  0.18(0.12),*p*=.13|  0.12(0.03),*p*<.01|
|pef vs raven    |female | 782|  0.29(0.05),*p*<.01| -0.14(0.45),*p*=.75|  0.00(0.03),*p*=.85|
|pef vs raven    |male   | 800|  0.18(0.05),*p*<.01|  0.54(0.19),*p*<.01|  0.03(0.03),*p*=.25|
|pef vs word_im  |female | 782|  0.16(0.05),*p*<.01|  0.10(0.57),*p*=.86|  0.14(0.02),*p*<.01|
|pef vs word_im  |male   | 800|  0.10(0.05),*p*=.04|  0.11(0.44),*p*=.80|  0.10(0.03),*p*<.01|


##  map 



|Processes          |Gender |   $n$| $r_{intercepts}$|  $r_{slopes}$| $r_{residuals}$|
|:------------------|:------|-----:|----------------:|-------------:|---------------:|
|fev vs bnt         |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs bnt         |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs bstory_de   |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs bstory_de   |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs bstory_im   |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs bstory_im   |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs categories  |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs categories  |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs digit_b     |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs digit_b     |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs digit_f     |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs digit_f     |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs digit_o     |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs digit_o     |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs ideas       |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs ideas       |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs line        |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs line        |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs logic_de    |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs logic_de    |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs logic_im    |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs logic_im    |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs matrices    |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs matrices    |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs mmms        |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs mmms        |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs nart        |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs nart        |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs num_comp    |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs num_comp    |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs symbol      |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs symbol      |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs word_de     |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs word_de     |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs word_im     |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs word_im     |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs word_rec    |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|fev vs word_rec    |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs bnt        |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs bnt        |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs bstory_de  |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs bstory_de  |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs bstory_im  |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs bstory_im  |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs categories |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs categories |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs digit_b    |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs digit_b    |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs digit_f    |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs digit_f    |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs digit_o    |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs digit_o    |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs ideas      |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs ideas      |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs line       |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs line       |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs logic_de   |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs logic_de   |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs logic_im   |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs logic_im   |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs matrices   |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs matrices   |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs mmms       |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs mmms       |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs nart       |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs nart       |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs num_comp   |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs num_comp   |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs symbol     |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs symbol     |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs word_de    |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs word_de    |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs word_im    |female | 1,010|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs word_im    |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs word_rec   |male   |   351|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|


##  nuage 



|Processes    |Gender | $n$| $r_{intercepts}$|  $r_{slopes}$| $r_{residuals}$|
|:------------|:------|---:|----------------:|-------------:|---------------:|
|grip vs mmms |female | 934|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|
|grip vs mmms |male   | 847|    --,*p*=  ----| --,*p*=  ----|   --,*p*=  ----|


##  octo 



|Processes         |Gender | $n$|    $r_{intercepts}$|        $r_{slopes}$|     $r_{residuals}$|
|:-----------------|:------|---:|-------------------:|-------------------:|-------------------:|
|gait vs block     |female | 272| -0.43(0.12),*p*<.01| -0.49(0.61),*p*=.42| -0.15(0.05),*p*<.01|
|gait vs block     |male   | 137| -0.40(0.13),*p*<.01| -0.73(2.42),*p*=.76| -0.10(0.09),*p*=.27|
|gait vs digit_b   |female | 275| -0.30(0.10),*p*<.01|  0.23(0.45),*p*=.60|  0.03(0.06),*p*=.58|
|gait vs digit_b   |male   | 139| -0.22(0.20),*p*=.29| -0.59(0.86),*p*=.50| -0.04(0.11),*p*=.69|
|gait vs digit_f   |female | 275| -0.11(0.08),*p*=.18| -0.12(0.18),*p*=.50| -0.04(0.04),*p*=.27|
|gait vs digit_f   |male   | 139| -0.17(0.17),*p*=.31| -0.56(0.64),*p*=.39| -0.06(0.07),*p*=.40|
|gait vs prose_im  |female | 268| -0.14(0.12),*p*=.24| -0.23(0.08),*p*<.01| -0.06(0.04),*p*=.11|
|gait vs symbol    |female | 265| -0.37(0.14),*p*=.01| -0.41(0.46),*p*=.37| -0.12(0.08),*p*=.15|
|gait vs symbol    |male   | 134| -0.46(0.14),*p*<.01|  0.00(0.98),*p*=.99| -0.23(0.09),*p*=.01|
|grip vs block     |female | 274|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs block     |male   | 139|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs digit_b   |female | 275|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs digit_b   |male   | 139|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs digit_f   |female | 275|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs digit_f   |male   | 139|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs fig_logic |female | 273|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs fig_logic |male   | 138|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs mir       |female | 272|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs mir       |male   | 139|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs prose_im  |female | 272|  0.14(0.07),*p*=.07|  0.37(0.35),*p*=.29|  0.06(0.07),*p*=.38|
|grip vs prose_im  |male   | 139|  0.35(0.10),*p*<.01| -0.38(2.68),*p*=.89|  0.14(0.09),*p*=.14|
|grip vs symbol    |female | 271|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs symbol    |male   | 138|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|pef vs block      |female | 271|  0.23(0.09),*p*=.01|  0.02(0.34),*p*=.96|  0.15(0.06),*p*=.01|
|pef vs block      |male   | 136|  0.30(0.11),*p*<.01|  0.75(0.17),*p*<.01|  0.11(0.06),*p*=.07|
|pef vs digit_b    |female | 275|  0.19(0.12),*p*=.13|  0.16(0.50),*p*=.75|  0.02(0.05),*p*=.74|
|pef vs digit_b    |male   | 138|  0.30(0.13),*p*=.02|  0.36(0.41),*p*=.37| -0.09(0.08),*p*=.27|
|pef vs digit_f    |female | 275| -0.00(0.10),*p*=.96| -0.30(0.27),*p*=.27|  0.01(0.05),*p*=.81|
|pef vs digit_f    |male   | 138| -0.09(0.13),*p*=.50|  0.63(0.17),*p*<.01|  0.01(0.06),*p*=.85|
|pef vs prose_im   |female | 267|  0.16(0.09),*p*=.08| -0.05(0.35),*p*=.88|  0.08(0.06),*p*=.21|
|pef vs prose_im   |male   | 136|  0.22(0.13),*p*=.09| -0.26(0.53),*p*=.62|  0.10(0.12),*p*=.41|
|pef vs symbol     |female | 263|  0.38(0.08),*p*<.01|  0.66(0.18),*p*<.01|  0.03(0.06),*p*=.54|
|pef vs symbol     |male   | 133|  0.31(0.10),*p*<.01|  0.73(0.15),*p*<.01| -0.04(0.08),*p*=.60|


##  satsa 



|Processes           |Gender | $n$|    $r_{intercepts}$|        $r_{slopes}$|     $r_{residuals}$|
|:-------------------|:------|---:|-------------------:|-------------------:|-------------------:|
|fev vs analogies    |female | 408|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|fev vs analogies    |male   | 300|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|fev vs block        |female | 408|  0.23(0.09),*p*=.01|  0.12(0.24),*p*=.62|  0.08(0.04),*p*=.04|
|fev vs block        |male   | 299|  0.23(0.08),*p*<.01|  0.32(0.25),*p*=.20| -0.01(0.05),*p*=.88|
|fev vs digit_b      |female | 409|  0.33(0.10),*p*<.01|  0.35(0.27),*p*=.19| -0.03(0.05),*p*=.59|
|fev vs digit_b      |female | 410|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|fev vs digit_b      |male   | 299|  0.22(0.10),*p*=.02| -0.44(0.86),*p*=.60| -0.03(0.04),*p*=.40|
|fev vs digit_b      |male   | 300|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|fev vs digit_f      |female | 409|  0.08(0.10),*p*=.42|  0.07(0.64),*p*=.91|  0.07(0.04),*p*=.07|
|fev vs digit_f      |female | 410|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|fev vs digit_f      |male   | 299|  0.15(0.11),*p*=.17|  0.10(0.92),*p*=.92|  0.05(0.05),*p*=.36|
|fev vs digit_f      |male   | 300|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|fev vs fig_mem      |female | 410|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|fev vs fig_mem      |male   | 299|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|fev vs information  |female | 411|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|fev vs information  |male   | 300|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|fev vs mmms         |female | 412|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|fev vs mmms         |male   | 300|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|fev vs rotate       |female | 408|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|fev vs rotate       |male   | 299|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|fev vs symbol       |female | 408|  0.10(0.08),*p*=.23| -0.16(0.20),*p*=.43|  0.03(0.04),*p*=.50|
|fev vs symbol       |male   | 299|  0.21(0.08),*p*=.01|  0.19(0.33),*p*=.57|  0.00(0.05),*p*=.99|
|fev vs synonyms     |female | 410|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|fev vs synonyms     |male   | 300|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs analogies   |female | 410|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs analogies   |male   | 300|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs block       |female | 409|  0.20(0.09),*p*=.03|  0.05(0.38),*p*=.89|  0.11(0.04),*p*<.01|
|grip vs block       |male   | 298|  0.36(0.09),*p*<.01|  0.65(0.39),*p*=.10|  0.11(0.04),*p*=.01|
|grip vs digit_b     |female | 409|  0.12(0.13),*p*=.35|  0.34(0.33),*p*=.31|  0.04(0.03),*p*=.27|
|grip vs digit_b     |male   | 299|  0.29(0.13),*p*=.02|  0.39(1.05),*p*=.71| -0.03(0.05),*p*=.59|
|grip vs digit_f     |female | 409| -0.03(0.11),*p*=.77|  0.58(0.84),*p*=.49|  0.03(0.03),*p*=.32|
|grip vs digit_f     |male   | 299|  0.18(0.13),*p*=.17|  0.35(0.87),*p*=.69|  0.03(0.05),*p*=.47|
|grip vs information |female | 411|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs information |male   | 300|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs mmms        |female | 412|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs mmms        |male   | 300|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs symbol      |female | 409|  0.23(0.10),*p*=.02|  0.39(0.28),*p*=.17|  0.11(0.04),*p*<.01|
|grip vs symbol      |male   | 299|  0.28(0.09),*p*<.01| -0.05(0.41),*p*=.91|  0.12(0.05),*p*=.01|
|grip vs synonyms    |female | 410|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|
|grip vs synonyms    |male   | 300|       --,*p*=  ----|       --,*p*=  ----|       --,*p*=  ----|



