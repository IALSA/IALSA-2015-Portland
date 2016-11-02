# SATSA : Anatomy report
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



## female-aehplus-gait-fev 

### Trajectories 
<img src="figure-png/satsa/satsa-1.png" width="900px" />

### Factor Scores 
<img src="figure-png/satsa/satsa-2.png" width="900px" />

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
   <td style="text-align:right;"> 366 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 7,148 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 7,308 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> -0.24(0.16),  p=.12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.34 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> -0.03(0.04),  p=.46 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> -0.38(0.23),  p=.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.38(0.36),  p=.30 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> -0.04(0.06),  p=.46 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 10.77(0.50),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> 0.12(0.06),  p=.06 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> 0.14(0.05),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.37(0.48),  p=.44 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> -0.01(0.05),  p=.85 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.04(0.69),  p=.95 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 0.22(0.95),  p=.81 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 2.08(1.61),  p=.20 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.01(0.01),  p=.36 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.00(0.06),  p=.97 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00(0.01),  p=.94 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.07(0.08),  p=.38 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.00(0.13),  p=.99 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.18(0.29),  p=.53 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 1.85(0.04),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.03(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.03(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.04(0.04),  p=.23 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.02(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.11(0.05),  p=.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.18(0.07),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.12(0.26),  p=.66 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.16 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.94 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.79 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.64 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.00(0.01),  p=.80 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.00(0.02),  p=.93 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 4.88(1.11),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.09(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 8.54(0.21),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 0.08(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 0.06(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.50(0.13),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.73 </td>
  </tr>
</tbody>
</table>

## female-aehplus-gait-grip 

### Trajectories 
<img src="figure-png/satsa/satsa-3.png" width="900px" />

### Factor Scores 
<img src="figure-png/satsa/satsa-4.png" width="900px" />

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
   <td style="text-align:right;"> 366 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 13,910 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 14,070 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> -1.06(2.67),  p=.69 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> -0.00(0.02),  p=.96 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> -0.08(0.71),  p=.91 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> -0.16(0.42),  p=.69 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.03(0.59),  p=.96 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> -0.01(0.05),  p=.91 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 10.77(0.49),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> 0.12(0.06),  p=.05 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> 0.14(0.04),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.33(0.49),  p=.50 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> -0.01(0.05),  p=.78 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.03(0.69),  p=.97 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 0.19(0.92),  p=.83 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 2.08(1.79),  p=.24 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.01(0.01),  p=.33 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.00(0.06),  p=.96 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00(0.01),  p=.91 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.07(0.08),  p=.42 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.00(0.12),  p=.99 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.19(0.28),  p=.51 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 21.73(0.69),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.59(0.06),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.17(0.05),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.77(0.55),  p=.16 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.17(0.08),  p=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.65(0.88),  p=.46 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -2.17(1.04),  p=.04 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -1.84(2.89),  p=.52 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.01(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.00(0.05),  p=.97 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.00(0.01),  p=.66 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.00(0.08),  p=.97 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.04(0.11),  p=.69 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.39(0.50),  p=.44 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 4.99(1.17),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.09(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 8.55(0.28),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 8.26(4.08),  p=.04 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.02(0.02),  p=.45 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 22.48(1.29),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.52(0.13),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.29(0.26),  p=.27 </td>
  </tr>
</tbody>
</table>

## female-aehplus-grip-fev 

### Trajectories 
<img src="figure-png/satsa/satsa-5.png" width="900px" />

### Factor Scores 
<img src="figure-png/satsa/satsa-6.png" width="900px" />

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
   <td style="text-align:right;"> 408 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 10,251 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 10,415 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 0.06(0.12),  p=.59 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.94 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 0.17(0.04),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.06(0.11),  p=.58 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> 0.03(0.35),  p=.94 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.15(0.04),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 21.51(0.45),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.57(0.04),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.19(0.04),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.30(0.39),  p=.44 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.15(0.05),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.26(0.63),  p=.69 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -2.23(0.83),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -1.12(1.99),  p=.57 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.01(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.02(0.03),  p=.49 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.93 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.02(0.06),  p=.69 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.01(0.07),  p=.88 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.47(0.32),  p=.15 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 1.80(0.04),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.03(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.03(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.04(0.03),  p=.19 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.02(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.06(0.04),  p=.19 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.12(0.06),  p=.06 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.10(0.11),  p=.36 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.17 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.95 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.53 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.51 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.00(0.01),  p=.95 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.00(0.01),  p=.72 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 13.67(2.39),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.02(0.01),  p=.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 21.60(1.06),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 0.09(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 0.06(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.10(0.14),  p=.48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.21 </td>
  </tr>
</tbody>
</table>

## male-aehplus-gait-fev 

### Trajectories 
<img src="figure-png/satsa/satsa-7.png" width="900px" />

### Factor Scores 
<img src="figure-png/satsa/satsa-8.png" width="900px" />

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
   <td style="text-align:right;"> 265 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 5,248 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 5,394 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> -0.06(0.20),  p=.76 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.40 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 0.04(0.05),  p=.48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> -0.10(0.34),  p=.76 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.55(0.62),  p=.38 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.05(0.07),  p=.48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 9.57(0.44),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> 0.16(0.06),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> 0.10(0.04),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.31(0.29),  p=.29 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.00(0.04),  p=.93 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.49(0.47),  p=.29 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 0.69(0.64),  p=.28 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.14(2.58),  p=.96 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.34 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.00(0.04),  p=.91 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.00(0.01),  p=.58 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.01(0.06),  p=.92 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.06(0.09),  p=.49 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.01(0.39),  p=.98 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 2.68(0.10),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.06(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.03(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.03(0.05),  p=.61 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.04(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.12(0.10),  p=.23 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.25(0.15),  p=.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.70(0.56),  p=.21 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.08 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.63 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.43 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.00(0.01),  p=.70 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.00(0.01),  p=.81 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.03(0.09),  p=.75 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 1.38(1.31),  p=.29 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.03(0.02),  p=.07 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 5.04(0.52),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 0.25(0.04),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.31 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 0.10(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.14(0.14),  p=.32 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.24 </td>
  </tr>
</tbody>
</table>

## male-aehplus-gait-grip 

### Trajectories 
<img src="figure-png/satsa/satsa-9.png" width="900px" />

### Factor Scores 
<img src="figure-png/satsa/satsa-10.png" width="900px" />

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
   <td style="text-align:right;"> 265 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 10,015 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 10,162 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> -2.81(2.50),  p=.26 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> -0.02(0.02),  p=.39 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> -0.32(0.97),  p=.74 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> -0.51(0.49),  p=.30 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.42(0.46),  p=.37 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> -0.02(0.07),  p=.74 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 9.61(0.43),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> 0.15(0.06),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> 0.10(0.04),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.35(0.31),  p=.26 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.00(0.04),  p=.96 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.53(0.48),  p=.27 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 0.59(0.64),  p=.36 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.19(7.13),  p=.98 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.34 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.00(0.04),  p=.97 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.57 </td>
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
   <td style="text-align:right;"> -0.05(0.10),  p=.63 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.00(1.27),  p=.99 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 37.99(1.20),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -1.01(0.12),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.31(0.07),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.70(0.66),  p=.29 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.41(0.10),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 2.56(1.22),  p=.04 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.27(1.65),  p=.87 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.34(8.69),  p=.97 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.03(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.02(0.06),  p=.72 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.00(0.01),  p=.52 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.04(0.11),  p=.68 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.00(0.14),  p=.98 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.68(3.57),  p=.85 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 1.42(1.37),  p=.30 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.03(0.02),  p=.08 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 4.98(0.55),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 21.49(7.25),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.06(0.05),  p=.25 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 34.42(2.65),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.12(0.14),  p=.37 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.71(0.54),  p=.19 </td>
  </tr>
</tbody>
</table>

## male-aehplus-grip-fev 

### Trajectories 
<img src="figure-png/satsa/satsa-11.png" width="900px" />

### Factor Scores 
<img src="figure-png/satsa/satsa-12.png" width="900px" />

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
   <td style="text-align:right;"> 299 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 8,577 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 8,728 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 0.64(0.33),  p=.05 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.14 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 0.28(0.08),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.21(0.10),  p=.04 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> 0.74(0.45),  p=.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.15(0.04),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 36.89(0.84),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.97(0.08),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.47(0.06),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.05(0.57),  p=.93 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.37(0.09),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 1.64(1.05),  p=.12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.41(1.49),  p=.78 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -2.52(3.43),  p=.46 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.02(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.00(0.04),  p=.96 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.00(0.01),  p=.77 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.03(0.08),  p=.73 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.07(0.10),  p=.50 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.17(0.49),  p=.72 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 2.54(0.07),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.05(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.04(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.04(0.04),  p=.35 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.04(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.12(0.08),  p=.16 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.28(0.13),  p=.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.43(0.27),  p=.11 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.31 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.96 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.64 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.00(0.01),  p=.86 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.00(0.01),  p=.59 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.01(0.04),  p=.79 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 35.34(5.33),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.04(0.03),  p=.25 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 35.13(2.33),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 0.27(0.04),  p&lt;.01 </td>
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
   <td style="text-align:right;"> 0.09(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.34(0.34),  p=.32 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.48 </td>
  </tr>
</tbody>
</table>


