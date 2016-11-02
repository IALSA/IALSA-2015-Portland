# MAP : Anatomy report
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



## female-aehplus-fev-gait 

### Trajectories 
<img src="figure-png/map/map-1.png" width="900px" />

### Factor Scores 
<img src="figure-png/map/map-2.png" width="900px" />

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
   <td style="text-align:right;"> 931 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> -1,845 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> -1,646 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 0.01(0.00),  p&lt;.01 </td>
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
   <td style="text-align:right;"> 0.00(0.00),  p=.58 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.24(0.05),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.03(0.39),  p=.94 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.02(0.03),  p=.57 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 1.68(0.03),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.04(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.02(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.01(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 1.62(0.22),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.09(0.02),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.06(0.05),  p=.21 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.02(0.04),  p=.56 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.05 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.92 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.07(0.04),  p=.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.62 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.01(0.01),  p=.14 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.01(0.01),  p=.48 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 0.62(0.02),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> 0.01(0.01),  p=.23 </td>
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
   <td style="text-align:right;"> 0.01(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.23(0.09),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.01(0.01),  p=.19 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.00(0.02),  p=.94 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.07(0.02),  p&lt;.01 </td>
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
   <td style="text-align:right;"> -0.00(0.00),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.01(0.03),  p=.66 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.40 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.01(0.01),  p=.38 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.00(0.01),  p=.47 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 0.11(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.52 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 0.03(0.00),  p&lt;.01 </td>
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
   <td style="text-align:right;"> 0.00(0.00),  p&lt;.01 </td>
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
   <td style="text-align:right;"> 0.00(0.00),  p=.90 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.12 </td>
  </tr>
</tbody>
</table>

## female-aehplus-fev-grip 

### Trajectories 
<img src="figure-png/map/map-3.png" width="900px" />

### Factor Scores 
<img src="figure-png/map/map-4.png" width="900px" />

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
   <td style="text-align:right;"> 931 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 18,079 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 18,258 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 0.41(0.13),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.00(0.01),  p=.66 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 0.01(0.02),  p=.53 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.13(0.04),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> 0.16(0.37),  p=.66 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.02(0.03),  p=.53 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 1.68(0.03),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.04(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.02(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.01(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 1.63(0.22),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.09(0.02),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> --,p=  ---- </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.02(0.04),  p=.57 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.07 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.94 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.07(0.04),  p=.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.73 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> --,p=  ---- </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.01(0.01),  p=.40 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 43.84(1.26),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.32(0.31),  p=.31 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.61(0.05),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.39(0.13),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 38.99(4.20),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.42(0.68),  p=.54 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> --,p=  ---- </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 0.03(1.23),  p=.98 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.02(0.01),  p=.09 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.08(0.03),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -1.25(1.16),  p=.28 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.04(0.17),  p=.82 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> --,p=  ---- </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.32(0.29),  p=.26 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 0.11(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.53 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 0.03(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 94.40(5.94),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.72(0.33),  p=.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 19.67(1.07),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.99 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -1.59(1.08),  p=.14 </td>
  </tr>
</tbody>
</table>

## female-aehplus-gait-grip 

### Trajectories 
<img src="figure-png/map/map-5.png" width="900px" />

### Factor Scores 
<img src="figure-png/map/map-6.png" width="900px" />

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
   <td style="text-align:right;"> 931 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 15,616 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 15,814 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 0.41(0.07),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> -0.01(0.01),  p=.17 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> -0.00(0.02),  p=.81 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.30(0.05),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.46(0.31),  p=.15 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> -0.01(0.03),  p=.81 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 0.62(0.02),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> 0.01(0.01),  p=.34 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.01(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.01(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.23(0.09),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.01(0.01),  p=.19 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.00(0.02),  p=.85 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.07(0.02),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.00(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.01(0.03),  p=.68 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.36 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.00(0.01),  p=.46 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.00(0.01),  p=.47 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 43.83(1.25),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.34(0.31),  p=.27 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.61(0.05),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.40(0.13),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 39.14(4.20),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.39(0.67),  p=.56 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 0.53(1.41),  p=.71 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.01(1.23),  p=.99 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.02(0.01),  p=.12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.08(0.03),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -1.22(1.18),  p=.30 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.03(0.17),  p=.85 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.07(0.29),  p=.81 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.32(0.29),  p=.27 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 0.02(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 0.02(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 94.52(5.95),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.74(0.33),  p=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 19.63(1.07),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -1.64(1.08),  p=.13 </td>
  </tr>
</tbody>
</table>

## male-aehplus-fev-gait 

### Trajectories 
<img src="figure-png/map/map-7.png" width="900px" />

### Factor Scores 
<img src="figure-png/map/map-8.png" width="900px" />

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
   <td style="text-align:right;"> 309 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 144 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 297 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 0.02(0.01),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.39 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.90 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.25(0.08),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.46(0.62),  p=.45 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> -0.01(0.05),  p=.90 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 2.39(0.11),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.09(0.02),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.03(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.02(0.01),  p=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 1.64(0.45),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.20(0.06),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.11(0.09),  p=.26 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.23(0.08),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.71 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.87 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.11(0.13),  p=.40 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.04(0.01),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.02(0.02),  p=.26 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.04(0.02),  p=.04 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 0.67(0.04),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> 0.01(0.01),  p=.43 </td>
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
   <td style="text-align:right;"> 0.01(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.14(0.15),  p=.37 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.01(0.02),  p=.43 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.00(0.03),  p=.94 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.04(0.02),  p=.17 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.15 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.11 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00(0.06),  p=.99 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.00(0.01),  p=.49 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.02(0.01),  p=.11 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.01(0.01),  p=.37 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 0.26(0.02),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.23 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 0.04(0.01),  p&lt;.01 </td>
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
   <td style="text-align:right;"> 0.00(0.00),  p=.24 </td>
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
   <td style="text-align:right;"> -0.01(0.00),  p=.16 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.73 </td>
  </tr>
</tbody>
</table>

## male-aehplus-fev-grip 

### Trajectories 
<img src="figure-png/map/map-9.png" width="900px" />

### Factor Scores 
<img src="figure-png/map/map-10.png" width="900px" />

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
   <td style="text-align:right;"> 309 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 7,182 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 7,335 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 1.79(0.50),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> -0.00(0.03),  p=.91 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> -0.02(0.06),  p=.78 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.25(0.06),  p&lt;.01 </td>
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
   <td style="text-align:right;"> -0.01(0.05),  p=.78 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 2.39(0.11),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.09(0.02),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.03(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.02(0.01),  p=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 1.67(0.45),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.20(0.06),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.10(0.09),  p=.26 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.22(0.08),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.79 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.78 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.11(0.13),  p=.39 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.04(0.01),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.02(0.02),  p=.23 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.03(0.02),  p=.07 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 79.85(2.88),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -2.48(0.92),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -1.05(0.13),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.03(0.26),  p=.91 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 80.61(11.32),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.39(1.75),  p=.82 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -5.58(2.75),  p=.04 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -6.45(2.28),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.04(0.04),  p=.33 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.10(0.07),  p=.16 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -2.88(3.59),  p=.42 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.09(0.46),  p=.84 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.84(0.66),  p=.20 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 1.28(0.52),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 0.26(0.02),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.29 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 0.04(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 203.36(19.15),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 3.46(1.49),  p=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 32.55(3.05),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.19 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -6.47(3.30),  p=.05 </td>
  </tr>
</tbody>
</table>

## male-aehplus-gait-grip 

### Trajectories 
<img src="figure-png/map/map-11.png" width="900px" />

### Factor Scores 
<img src="figure-png/map/map-12.png" width="900px" />

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
   <td style="text-align:right;"> 309 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 6,015 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 6,168 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 0.60(0.17),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.01(0.01),  p=.25 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 0.00(0.05),  p=.92 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.30(0.08),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> 0.40(0.34),  p=.24 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.01(0.06),  p=.92 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 0.66(0.04),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> 0.00(0.01),  p=.90 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.01(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.01(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.15(0.15),  p=.34 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.01(0.02),  p=.42 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.00(0.03),  p=.88 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.04(0.02),  p=.14 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.36 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.14 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.05(0.05),  p=.39 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.00(0.01),  p=.72 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.01(0.01),  p=.25 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.00(0.01),  p=.91 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 79.80(2.88),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -2.48(0.91),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -1.05(0.13),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.03(0.26),  p=.91 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 80.71(11.31),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.40(1.75),  p=.82 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -5.57(2.75),  p=.04 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -6.40(2.29),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.04(0.04),  p=.35 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.09(0.07),  p=.16 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -2.61(3.58),  p=.47 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.11(0.47),  p=.81 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.87(0.66),  p=.19 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 1.18(0.51),  p=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 0.02(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.26 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 0.02(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 203.96(19.16),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 3.45(1.45),  p=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 32.50(3.02),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.87 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -6.61(3.25),  p=.04 </td>
  </tr>
</tbody>
</table>


