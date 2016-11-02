# OCTO : Anatomy report
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
<img src="figure-png/octo/octo-1.png" width="900px" />

### Factor Scores 
<img src="figure-png/octo/octo-2.png" width="900px" />

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
   <td style="text-align:right;"> 270 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 8,338 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 8,485 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> -2.08(0.95),  p=.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> -0.01(0.05),  p=.91 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> -0.17(0.25),  p=.50 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> -0.33(0.14),  p=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.04(0.40),  p=.91 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> -0.04(0.07),  p=.50 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 9.18(0.29),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.33(0.04),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.15(0.06),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.17(0.08),  p=.04 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.09(0.02),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.52(0.37),  p=.17 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.16(0.28),  p=.57 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.01(0.55),  p=.98 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.00(0.01),  p=.68 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.01(0.01),  p=.46 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.55 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.01(0.06),  p=.85 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.00(0.04),  p=.99 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.05(0.07),  p=.48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 10.29(0.97),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> 0.53(0.32),  p=.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> 0.32(0.17),  p=.07 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.32(0.31),  p=.30 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> -0.04(0.08),  p=.60 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.04(0.99),  p=.97 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 0.71(0.86),  p=.40 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 1.70(1.71),  p=.32 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.00(0.07),  p=.94 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.03(0.11),  p=.78 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.01(0.03),  p=.80 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.07(0.45),  p=.88 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.18(0.35),  p=.61 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 1.09(0.46),  p=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 3.19(0.40),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.02(0.01),  p=.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 1.26(0.06),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 12.37(2.77),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.96(0.20),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 11.25(0.57),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.04(0.05),  p=.48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 3.18(0.47),  p&lt;.01 </td>
  </tr>
</tbody>
</table>

## female-aehplus-grip-pef 

### Trajectories 
<img src="figure-png/octo/octo-3.png" width="900px" />

### Factor Scores 
<img src="figure-png/octo/octo-4.png" width="900px" />

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
   <td style="text-align:right;"> 270 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 11,419 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 11,567 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 44.94(13.12),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.23(0.27),  p=.40 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 1.29(3.13),  p=.68 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.39(0.10),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> 0.34(0.40),  p=.39 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.02(0.06),  p=.68 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 9.19(0.27),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.33(0.04),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.15(0.05),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.17(0.08),  p=.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.09(0.02),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.51(0.36),  p=.15 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.16(0.29),  p=.57 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.02(0.53),  p=.97 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.00(0.01),  p=.67 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.01(0.01),  p=.48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.59 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.01(0.06),  p=.89 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.00(0.04),  p=.99 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.04(0.07),  p=.59 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 327.88(12.43),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -7.07(2.05),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -6.62(2.26),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 5.83(3.15),  p=.06 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 2.60(0.98),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -35.45(13.48),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 2.34(11.87),  p=.84 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 1.19(32.57),  p=.97 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.94(0.42),  p=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.26(0.58),  p=.65 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.21(0.13),  p=.11 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -3.38(2.58),  p=.19 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -2.72(2.28),  p=.23 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 3.53(6.76),  p=.60 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 3.18(0.35),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.02(0.01),  p=.04 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 1.27(0.07),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 4263.73(740.09),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 27.16(16.41),  p=.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 2119.94(173.14),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.03(0.04),  p=.49 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -154.09(92.11),  p=.09 </td>
  </tr>
</tbody>
</table>

## female-aehplus-pef-gait 

### Trajectories 
<img src="figure-png/octo/octo-5.png" width="900px" />

### Factor Scores 
<img src="figure-png/octo/octo-6.png" width="900px" />

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
   <td style="text-align:right;"> 263 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 12,676 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 12,823 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> -79.93(42.16),  p=.06 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> -3.79(3.35),  p=.26 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> -3.43(14.41),  p=.81 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> -0.35(0.17),  p=.04 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.58(0.40),  p=.15 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> -0.02(0.09),  p=.81 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 327.17(12.79),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -7.54(2.14),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -6.12(2.33),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 5.66(3.17),  p=.07 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 2.62(1.02),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -34.61(13.90),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 3.25(11.91),  p=.78 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 1.86(26.43),  p=.94 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.82(0.44),  p=.06 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.16(0.60),  p=.79 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.25(0.17),  p=.15 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -3.87(2.87),  p=.18 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -2.27(2.35),  p=.33 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 1.14(5.87),  p=.85 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 10.30(0.96),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> 0.54(0.34),  p=.11 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> 0.32(0.16),  p=.06 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.31(0.30),  p=.31 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> -0.04(0.08),  p=.60 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.01(0.97),  p=.99 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 0.74(0.83),  p=.37 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 1.68(1.55),  p=.28 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.01(0.07),  p=.91 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.03(0.11),  p=.79 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.01(0.04),  p=.76 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.08(0.45),  p=.86 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.19(0.35),  p=.58 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 1.01(0.51),  p=.05 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 4215.38(737.23),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 39.57(23.90),  p=.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 2105.13(165.79),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 12.11(2.63),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 1.07(0.22),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 11.12(0.69),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -126.12(97.27),  p=.20 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 3.30(0.38),  p&lt;.01 </td>
  </tr>
</tbody>
</table>

## male-aehplus-grip-gait 

### Trajectories 
<img src="figure-png/octo/octo-7.png" width="900px" />

### Factor Scores 
<img src="figure-png/octo/octo-8.png" width="900px" />

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
   <td style="text-align:right;"> 138 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 3,753 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 3,873 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> -1.57(0.98),  p=.11 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> -0.04(0.04),  p=.22 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> -0.39(0.25),  p=.13 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> -0.35(0.19),  p=.07 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.70(0.53),  p=.19 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> -0.13(0.08),  p=.11 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 10.76(0.73),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.10(0.15),  p=.48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.16(0.11),  p=.14 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.13(0.13),  p=.30 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.11(0.03),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.12(0.62),  p=.85 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.42(0.50),  p=.40 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -1.55(0.86),  p=.07 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.06(0.02),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.00(0.02),  p=.93 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.01(0.01),  p=.30 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.02(0.11),  p=.88 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.23(0.10),  p=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.08(0.17),  p=.66 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 9.14(1.34),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> 0.19(0.29),  p=.51 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> 0.28(0.16),  p=.09 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.07(0.10),  p=.47 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> -0.06(0.06),  p=.33 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 1.05(0.85),  p=.21 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 1.26(0.76),  p=.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 1.31(1.23),  p=.29 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.00(0.04),  p=.94 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.01(0.04),  p=.88 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.01(0.01),  p=.47 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.11(0.21),  p=.59 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.24(0.18),  p=.17 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.12(0.36),  p=.75 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 4.47(0.83),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.04(0.03),  p=.08 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 1.54(0.16),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 4.57(1.64),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.09(0.10),  p=.33 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 6.04(0.63),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.16(0.13),  p=.21 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.06(0.28),  p=.82 </td>
  </tr>
</tbody>
</table>

## male-aehplus-grip-pef 

### Trajectories 
<img src="figure-png/octo/octo-9.png" width="900px" />

### Factor Scores 
<img src="figure-png/octo/octo-10.png" width="900px" />

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
   <td style="text-align:right;"> 138 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 5,930 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 6,050 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 28.29(25.48),  p=.27 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.10(0.89),  p=.91 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 10.21(6.70),  p=.13 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.15(0.13),  p=.25 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> 0.10(0.91),  p=.91 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.14(0.09),  p=.12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 12.07(0.61),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.23(0.12),  p=.06 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.16(0.11),  p=.13 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.13(0.12),  p=.24 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.11(0.04),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.12(0.64),  p=.85 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.42(0.53),  p=.43 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -1.57(0.81),  p=.05 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.05(0.02),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.00(0.02),  p=.98 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.01(0.01),  p=.24 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.02(0.10),  p=.86 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.23(0.09),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.07(0.19),  p=.71 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 466.52(24.65),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -4.51(5.85),  p=.44 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -11.41(4.26),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 6.93(6.41),  p=.28 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 2.09(2.09),  p=.32 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -35.09(26.57),  p=.19 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -21.40(23.36),  p=.36 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 38.77(53.75),  p=.47 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.01(0.97),  p=.99 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.44(0.81),  p=.58 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.20(0.37),  p=.59 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -4.63(4.99),  p=.35 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -2.30(4.57),  p=.61 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -5.17(13.14),  p=.69 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 4.42(0.84),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.04(0.02),  p=.09 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 1.57(0.16),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 8263.24(1871.13),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 23.60(46.25),  p=.61 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 3395.04(374.89),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.14(0.12),  p=.23 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -228.44(274.33),  p=.40 </td>
  </tr>
</tbody>
</table>

## male-aehplus-pef-gait 

### Trajectories 
<img src="figure-png/octo/octo-11.png" width="900px" />

### Factor Scores 
<img src="figure-png/octo/octo-12.png" width="900px" />

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
   <td style="text-align:right;"> 132 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 6,143 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 6,262 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> -70.87(37.27),  p=.06 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> -1.34(1.95),  p=.49 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> -6.48(18.41),  p=.72 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> -0.38(0.20),  p=.06 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.79(1.10),  p=.47 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> -0.05(0.13),  p=.72 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 443.45(31.42),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -7.54(7.10),  p=.29 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -11.40(4.38),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 7.04(7.47),  p=.35 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 2.13(1.98),  p=.28 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -38.37(27.87),  p=.17 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -19.93(25.03),  p=.43 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 39.27(63.42),  p=.54 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.17(1.03),  p=.87 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.58(0.97),  p=.55 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.22(0.35),  p=.53 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -4.06(5.58),  p=.47 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -2.70(5.30),  p=.61 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -5.70(23.17),  p=.81 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 9.17(1.38),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> 0.18(0.30),  p=.53 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> 0.27(0.17),  p=.11 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.09(0.11),  p=.41 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> -0.06(0.06),  p=.33 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 1.06(0.92),  p=.25 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 1.24(0.77),  p=.11 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 1.25(1.20),  p=.30 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.01(0.05),  p=.90 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.01(0.04),  p=.86 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.01(0.01),  p=.64 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.10(0.22),  p=.66 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.25(0.19),  p=.18 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.11(0.68),  p=.87 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 8329.51(1906.20),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 36.14(47.75),  p=.45 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 3319.17(395.91),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 4.25(1.68),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.08(0.09),  p=.37 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 6.10(0.70),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -268.96(248.21),  p=.28 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.01(0.25),  p=.97 </td>
  </tr>
</tbody>
</table>


