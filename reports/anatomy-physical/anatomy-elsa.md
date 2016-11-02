# ELSA : Anatomy report
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


### Factor Scores 
<img src="figure-png/elsa/elsa-1.png" width="900px" />

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
   <td style="text-align:right;"> 3,511 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 6,819 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 7,071 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 0.02(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.46 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.45 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.22(0.04),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> 0.40(0.25),  p=.11 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.02(0.03),  p=.44 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 1.88(0.02),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.03(0.00),  p&lt;.01 </td>
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
   <td style="text-align:right;"> 0.10(0.02),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.03(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.10(0.02),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.11(0.04),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.05(0.04),  p=.31 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.41 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.64 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.40 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.00(0.01),  p=.66 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.00(0.01),  p=.64 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 0.84(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.02(0.00),  p&lt;.01 </td>
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
   <td style="text-align:right;"> 0.09(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.01(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.04(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.08(0.02),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.13(0.03),  p&lt;.01 </td>
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
   <td style="text-align:right;"> 0.00(0.00),  p=.92 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.93 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.34 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.85 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 0.14(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.42 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 0.10(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 0.04(0.00),  p&lt;.01 </td>
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
   <td style="text-align:right;"> -0.00(0.00),  p=.44 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.00(0.00),  p&lt;.01 </td>
  </tr>
</tbody>
</table>

## female-aehplus-grip-fev 

### Trajectories 


### Factor Scores 
<img src="figure-png/elsa/elsa-2.png" width="900px" />

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
   <td style="text-align:right;"> 3,511 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 52,553 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 52,806 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 0.40(0.07),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.22 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 0.01(0.02),  p=.57 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.25(0.04),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> 0.63(0.95),  p=.50 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.01(0.02),  p=.57 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 20.54(0.21),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.41(0.03),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.22(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 1.02(0.22),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.22(0.02),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.13(0.20),  p=.51 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -1.72(0.40),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -1.48(0.46),  p&lt;.01 </td>
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
   <td style="text-align:right;"> -0.02(0.03),  p=.51 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.04 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.01(0.02),  p=.78 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.08(0.05),  p=.12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.02(0.06),  p=.70 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 1.88(0.02),  p&lt;.01 </td>
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
   <td style="text-align:right;"> 0.10(0.02),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.03(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.10(0.02),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.11(0.04),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.04(0.04),  p=.32 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.54 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.67 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.42 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.00(0.01),  p=.68 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.00(0.01),  p=.61 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 18.64(1.21),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.03(0.02),  p=.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 8.64(0.43),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 0.14(0.02),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.68 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 0.10(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.22(0.13),  p=.09 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.70 </td>
  </tr>
</tbody>
</table>

## female-aehplus-grip-gait 

### Trajectories 


### Factor Scores 
<img src="figure-png/elsa/elsa-3.png" width="900px" />

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
   <td style="text-align:right;"> 3,511 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 42,343 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 42,596 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 0.30(0.03),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.04 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 0.03(0.01),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.36(0.03),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> 0.50(0.10),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.06(0.02),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 20.56(0.21),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.42(0.03),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.22(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 1.02(0.22),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.22(0.02),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.15(0.20),  p=.46 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -1.73(0.40),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -1.49(0.46),  p&lt;.01 </td>
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
   <td style="text-align:right;"> -0.02(0.03),  p=.49 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.04 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.01(0.02),  p=.80 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.08(0.05),  p=.11 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.02(0.06),  p=.70 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 0.84(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.02(0.00),  p&lt;.01 </td>
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
   <td style="text-align:right;"> 0.09(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.01(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.04(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.08(0.02),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.13(0.03),  p&lt;.01 </td>
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
   <td style="text-align:right;"> 0.00(0.00),  p=.92 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.88 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.40 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.88 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 18.79(1.15),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.03(0.02),  p=.04 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 8.57(0.40),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 0.04(0.00),  p&lt;.01 </td>
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
   <td style="text-align:right;"> -0.24(0.12),  p=.04 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.00(0.00),  p&lt;.01 </td>
  </tr>
</tbody>
</table>

## male-aehplus-fev-gait 

### Trajectories 


### Factor Scores 
<img src="figure-png/elsa/elsa-4.png" width="900px" />

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
   <td style="text-align:right;"> 3,091 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 10,781 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 11,029 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 0.03(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.21 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.59 </td>
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
   <td style="text-align:right;"> 0.34(0.31),  p=.26 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.01(0.02),  p=.59 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 2.62(0.04),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.03(0.01),  p&lt;.01 </td>
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
   <td style="text-align:right;"> 0.22(0.04),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.03(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.22(0.03),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.21(0.05),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.01(0.06),  p=.81 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.16 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.01(0.00),  p=.08 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.88 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.39 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.00(0.01),  p=.49 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.02(0.01),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 0.88(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.02(0.00),  p&lt;.01 </td>
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
   <td style="text-align:right;"> 0.10(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.00(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.04(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.04(0.02),  p=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.06(0.02),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.00(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.06 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.98 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.37 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.79 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 0.36(0.04),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.07 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 0.19(0.02),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 0.04(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.20 </td>
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
   <td style="text-align:right;"> -0.01(0.00),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.26 </td>
  </tr>
</tbody>
</table>

## male-aehplus-grip-fev 

### Trajectories 


### Factor Scores 
<img src="figure-png/elsa/elsa-5.png" width="900px" />

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
   <td style="text-align:right;"> 3,091 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 55,762 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 56,010 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 0.71(0.16),  p&lt;.01 </td>
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
   <td style="text-align:right;"> 0.02(0.05),  p=.61 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.19(0.04),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> 0.42(0.34),  p=.22 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.01(0.03),  p=.61 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 34.60(0.40),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.64(0.05),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.43(0.02),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 1.33(0.35),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.29(0.02),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.33(0.34),  p=.33 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 0.02(0.45),  p=.96 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -1.58(0.58),  p=.01 </td>
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
   <td style="text-align:right;"> -0.04(0.04),  p=.35 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.54 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.01(0.04),  p=.71 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.17(0.06),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.21(0.07),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 2.62(0.04),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.03(0.01),  p&lt;.01 </td>
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
   <td style="text-align:right;"> 0.22(0.04),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.03(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.22(0.03),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.20(0.05),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.01(0.06),  p=.83 </td>
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
   <td style="text-align:right;"> -0.01(0.00),  p=.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.85 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.41 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.00(0.01),  p=.52 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.02(0.01),  p=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 39.85(2.98),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.05(0.04),  p=.23 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 18.41(0.96),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 0.36(0.04),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.09 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 0.19(0.02),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.58(0.33),  p=.08 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.01(0.00),  p=.02 </td>
  </tr>
</tbody>
</table>

## male-aehplus-grip-gait 

### Trajectories 


### Factor Scores 
<img src="figure-png/elsa/elsa-6.png" width="900px" />

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
   <td style="text-align:right;"> 3,091 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 42,646 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 42,893 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 0.34(0.07),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.15 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 0.01(0.02),  p=.43 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.28(0.05),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> 0.55(0.40),  p=.18 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation </td>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.02(0.03),  p=.43 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 34.62(0.40),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.65(0.05),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.43(0.02),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 1.34(0.35),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.29(0.02),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.34(0.34),  p=.32 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 0.02(0.45),  p=.97 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -1.58(0.58),  p=.01 </td>
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
   <td style="text-align:right;"> -0.04(0.04),  p=.30 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.51 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.01(0.04),  p=.75 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.16(0.06),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.21(0.07),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 0.88(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.02(0.00),  p&lt;.01 </td>
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
   <td style="text-align:right;"> 0.10(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.00(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.04(0.01),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.04(0.02),  p=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.06(0.02),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.00(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.04 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.17 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.90 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.28 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fixed Effect </td>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.72 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 40.50(2.99),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> aa </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.07(0.05),  p=.12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 18.14(0.94),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 0.04(0.00),  p&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Variance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00(0.00),  p=.19 </td>
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
   <td style="text-align:right;"> -0.66(0.34),  p=.05 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance </td>
   <td style="text-align:center;"> bb </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.00(0.00),  p=.26 </td>
  </tr>
</tbody>
</table>


