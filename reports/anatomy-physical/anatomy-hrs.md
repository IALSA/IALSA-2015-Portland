# HRS : Anatomy report
Date: `r Sys.Date()`  
<!-- For instructions, see http://rmarkdown.rstudio.com/word_document_format.html and http://rmarkdown.rstudio.com/articles_docx.html -->

This report contains a searchable table, followed by publication-ready tables.

<!--  Set the working directory to the repository's base directory; this assumes the report is nested inside of two directories.-->


<!-- Set the report-wide options, and point to the external code file. -->


<!-- Load the sources.  Suppress the output when loading sources. --> 

```
[1] "Loaded rhdf5 package"
```

<!-- Load 'sourced' R files.  Suppress the output when loading packages. --> 


<!-- Load any global functions and variables declared in the R file.  Suppress the output. --> 


<!-- Declare any global functions specific to a Rmd output.  Suppress the output. --> 


<!-- Load the datasets.   -->


<!-- Tweak the datasets.   -->



## female-aehplus-grip-gait 

### Trajectories 
<img src="figure-png/hrs/hrs-1.png" width="900px" />

### Factor Scores 
<img src="figure-png/hrs/hrs-2.png" width="900px" />

### Coefficients 
<table>
 <thead>
  <tr>
   <th style="text-align:left;"> type </th>
   <th style="text-align:center;"> process </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> dense </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 285 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 4,021 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 4,171 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 0.09(0.06),  p=.12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.90 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 0.01(0.02),  p=.72 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.21(0.13),  p=.12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> 0.13(1.00),  p=.90 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.02(0.05),  p=.72 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 22.77(0.60),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.29(0.12),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.27(0.04),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.06(0.08),  p=.43 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 9.51(4.96),  p=.06 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.06(0.52),  p=.90 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.66(0.54),  p=.22 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.22(0.65),  p=.73 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.01(0.01),  p=.29 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.02(0.02),  p=.17 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 1.38(0.86),  p=.11 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.01(0.10),  p=.92 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.05(0.12),  p=.68 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.17(0.11),  p=.12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 0.77(0.02),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.04(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.01(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.02(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.08(0.18),  p=.67 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.03(0.02),  p=.17 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.04(0.03),  p=.16 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.05(0.03),  p=.11 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.00(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.03(0.04),  p=.54 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.00(0.01),  p=.84 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.00(0.01),  p=.76 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.00(0.01),  p=.87 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 11.07(1.47),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.05(0.09),  p=.55 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 8.35(0.90),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 0.02(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.64 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 0.03(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.19(0.28),  p=.50 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.97 </td>
  </tr>
</tbody>
</table>

## female-aehplus-grip-pef 

### Trajectories 
<img src="figure-png/hrs/hrs-3.png" width="900px" />

### Factor Scores 
<img src="figure-png/hrs/hrs-4.png" width="900px" />

### Coefficients 
<table>
 <thead>
  <tr>
   <th style="text-align:left;"> type </th>
   <th style="text-align:center;"> process </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> dense </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 285 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 13,014 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 13,164 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 53.68(17.29),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> -0.38(0.73),  p=.60 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 9.96(8.03),  p=.21 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.29(0.09),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.52(1.12),  p=.64 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.08(0.07),  p=.22 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 22.77(0.59),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.28(0.12),  p=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.27(0.04),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.06(0.08),  p=.42 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 9.50(4.95),  p=.06 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.06(0.52),  p=.90 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.65(0.54),  p=.23 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.20(0.65),  p=.76 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.01(0.01),  p=.32 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.02(0.02),  p=.17 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 1.39(0.86),  p=.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.00(0.10),  p=.96 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.04(0.13),  p=.73 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.19(0.11),  p=.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 253.71(9.87),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -2.86(1.81),  p=.11 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -3.23(0.60),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 3.92(1.35),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 83.28(53.59),  p=.12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -18.82(8.28),  p=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -5.70(9.46),  p=.55 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 1.54(10.49),  p=.88 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.47(0.09),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.07(0.27),  p=.79 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 14.84(8.36),  p=.08 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.71(1.29),  p=.58 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.05(1.72),  p=.98 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -1.32(1.60),  p=.41 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 11.14(1.47),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.06(0.09),  p=.49 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 8.31(0.90),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 3093.09(397.97),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 9.11(15.74),  p=.56 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 1752.06(206.22),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.14(0.29),  p=.62 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.22(54.81),  p=.99 </td>
  </tr>
</tbody>
</table>

## female-aehplus-pef-gait 

### Trajectories 
<img src="figure-png/hrs/hrs-5.png" width="900px" />

### Factor Scores 
<img src="figure-png/hrs/hrs-6.png" width="900px" />

### Coefficients 
<table>
 <thead>
  <tr>
   <th style="text-align:left;"> type </th>
   <th style="text-align:center;"> process </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> dense </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 285 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 8,456 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 8,605 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 2.10(0.88),  p=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.02(0.04),  p=.63 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 0.96(0.42),  p=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.29(0.11),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> 0.58(1.21),  p=.63 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.14(0.06),  p=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 253.63(9.88),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -2.91(1.82),  p=.11 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -3.24(0.60),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 3.94(1.36),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 82.39(53.72),  p=.12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -18.76(8.29),  p=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -5.48(9.48),  p=.56 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 1.38(10.51),  p=.90 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.47(0.09),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.06(0.27),  p=.82 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 14.70(8.37),  p=.08 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.74(1.30),  p=.57 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.01(1.72),  p=.99 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -1.36(1.61),  p=.40 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 0.77(0.02),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.04(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.01(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.02(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.09(0.18),  p=.64 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.03(0.02),  p=.17 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.04(0.03),  p=.16 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.04(0.03),  p=.11 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.00(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.08 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.03(0.04),  p=.44 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.00(0.01),  p=.80 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.00(0.01),  p=.69 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.00(0.01),  p=.78 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 3092.00(396.56),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 8.32(15.77),  p=.60 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 1757.84(206.47),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 0.02(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.61 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 0.03(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 1.16(54.47),  p=.98 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.97 </td>
  </tr>
</tbody>
</table>

## male-aehplus-grip-gait 

### Trajectories 
<img src="figure-png/hrs/hrs-7.png" width="900px" />

### Factor Scores 
<img src="figure-png/hrs/hrs-8.png" width="900px" />

### Coefficients 
<table>
 <thead>
  <tr>
   <th style="text-align:left;"> type </th>
   <th style="text-align:center;"> process </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> dense </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 236 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 3,953 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 4,095 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 0.12(0.09),  p=.18 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.89 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 0.04(0.04),  p=.39 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.15(0.11),  p=.17 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> 0.10(0.76),  p=.89 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.06(0.07),  p=.38 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 34.86(1.16),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.72(0.19),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.52(0.08),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.06(0.13),  p=.61 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 25.43(6.70),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 1.10(0.87),  p=.20 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 1.92(0.81),  p=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -3.04(1.11),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.01(0.01),  p=.21 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.02(0.02),  p=.32 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.12(0.90),  p=.89 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.09(0.15),  p=.56 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.26(0.13),  p=.05 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.03(0.18),  p=.88 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 0.83(0.04),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.02(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.05 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.01(0.00),  p=.08 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.12(0.20),  p=.55 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.02(0.03),  p=.43 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.03(0.03),  p=.30 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.04(0.03),  p=.24 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.04 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.16 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.03(0.05),  p=.51 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.01(0.01),  p=.40 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.00(0.01),  p=.74 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.01(0.01),  p=.15 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 27.59(3.95),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.03(0.16),  p=.83 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 15.21(2.16),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 0.02(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.04 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 0.03(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.46(0.51),  p=.36 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.21 </td>
  </tr>
</tbody>
</table>

## male-aehplus-grip-pef 

### Trajectories 
<img src="figure-png/hrs/hrs-9.png" width="900px" />

### Factor Scores 
<img src="figure-png/hrs/hrs-10.png" width="900px" />

### Coefficients 
<table>
 <thead>
  <tr>
   <th style="text-align:left;"> type </th>
   <th style="text-align:center;"> process </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> dense </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 236 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 11,898 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 12,040 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 50.22(36.70),  p=.17 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> -0.18(1.15),  p=.87 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 25.03(15.29),  p=.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.11(0.08),  p=.16 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.16(1.17),  p=.89 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.12(0.07),  p=.09 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 34.88(1.16),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.72(0.19),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.52(0.08),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.06(0.13),  p=.62 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 25.27(6.68),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 1.09(0.87),  p=.21 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 1.92(0.81),  p=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -3.06(1.10),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.01(0.01),  p=.21 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.02(0.02),  p=.30 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.16(0.90),  p=.86 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.08(0.15),  p=.56 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.25(0.13),  p=.06 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.03(0.18),  p=.88 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 344.86(18.02),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -5.85(2.89),  p=.04 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -4.15(1.06),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 7.91(1.95),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 172.84(83.36),  p=.04 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -6.61(13.86),  p=.63 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 11.55(13.49),  p=.39 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -18.53(15.70),  p=.24 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.04(0.15),  p=.79 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.12(0.35),  p=.73 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 14.12(12.62),  p=.26 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.96(2.09),  p=.65 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -1.82(1.99),  p=.36 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.54(2.44),  p=.82 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 27.52(3.95),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.04(0.16),  p=.81 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 15.18(2.17),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 7604.97(918.54),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 33.33(34.28),  p=.33 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 3000.28(409.44),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.46(0.51),  p=.37 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 50.15(135.23),  p=.71 </td>
  </tr>
</tbody>
</table>

## male-aehplus-pef-gait 

### Trajectories 
<img src="figure-png/hrs/hrs-11.png" width="900px" />

### Factor Scores 
<img src="figure-png/hrs/hrs-12.png" width="900px" />

### Coefficients 
<table>
 <thead>
  <tr>
   <th style="text-align:left;"> type </th>
   <th style="text-align:center;"> process </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> dense </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 236 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 7,612 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 7,754 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 3.90(1.37),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.13(0.06),  p=.05 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 0.45(0.67),  p=.50 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.30(0.10),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> 0.84(0.48),  p=.08 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.05(0.08),  p=.50 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 345.23(17.94),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -5.93(2.88),  p=.04 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -4.18(1.06),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 7.88(1.94),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 170.27(83.41),  p=.04 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -6.36(13.83),  p=.64 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 11.89(13.46),  p=.38 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -18.98(15.71),  p=.23 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.03(0.15),  p=.85 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.13(0.35),  p=.71 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 15.62(12.64),  p=.22 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 1.02(2.09),  p=.62 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -2.04(2.00),  p=.31 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.36(2.43),  p=.88 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 0.83(0.04),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.02(0.01),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.05 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.01(0.00),  p=.08 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.11(0.20),  p=.57 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.02(0.03),  p=.44 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.03(0.03),  p=.31 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.04(0.04),  p=.24 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.04 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.21 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.03(0.05),  p=.53 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.01(0.01),  p=.45 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.00(0.01),  p=.83 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.01(0.01),  p=.14 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 7548.57(910.50),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 32.80(34.45),  p=.34 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 3016.01(413.52),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 0.02(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 0.02(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 53.72(134.00),  p=.69 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.16 </td>
  </tr>
</tbody>
</table>


