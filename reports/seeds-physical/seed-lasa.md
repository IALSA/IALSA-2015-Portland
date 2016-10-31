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





# grip : Available models 

 Study **LASA** have contributed the following outcome pairs to the IASLA-2015-Portland model pool: 
NULL

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> process_a </th>
   <th style="text-align:left;"> process_b </th>
   <th style="text-align:right;"> n_models </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> grip </td>
   <td style="text-align:left;"> gait </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip </td>
   <td style="text-align:left;"> pef </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
</tbody>
</table>


<table>
 <thead>
  <tr>
   <th style="text-align:left;"> study_name </th>
   <th style="text-align:left;"> subgroup </th>
   <th style="text-align:left;"> model_type </th>
   <th style="text-align:left;"> process_a </th>
   <th style="text-align:left;"> process_b </th>
   <th style="text-align:right;"> n_models </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> lasa </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> aehplus </td>
   <td style="text-align:left;"> grip </td>
   <td style="text-align:left;"> gait </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> lasa </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> aehplus </td>
   <td style="text-align:left;"> grip </td>
   <td style="text-align:left;"> pef </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
</tbody>
</table>


<table>
 <thead>
  <tr>
   <th style="text-align:left;"> study_name </th>
   <th style="text-align:left;"> subgroup </th>
   <th style="text-align:left;"> model_type </th>
   <th style="text-align:left;"> process_a </th>
   <th style="text-align:left;"> process_b </th>
   <th style="text-align:right;"> n_models </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> lasa </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> aehplus </td>
   <td style="text-align:left;"> grip </td>
   <td style="text-align:left;"> gait </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> lasa </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> aehplus </td>
   <td style="text-align:left;"> grip </td>
   <td style="text-align:left;"> pef </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
</tbody>
</table>


# female 

 Gender = _female_; Model type: _aehplus_;  Process (a) = _grip_; Process (b): *gait*, *pef*
<table>
 <thead>
  <tr>
   <th style="text-align:center;"> process </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> gait </th>
   <th style="text-align:right;"> pef </th>
   <th style="text-align:right;"> mean(sd) </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> -3.91 (1.27)    &lt;.01 </td>
   <td style="text-align:right;"> 76.86 (19.88)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> -0.02 (0.02)     .31 </td>
   <td style="text-align:right;"> 0.00 (0.22)     .99 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 0.09 (0.40)     .82 </td>
   <td style="text-align:right;"> 5.73 (7.32)     .43 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> -0.34 (0.07)    &lt;.01 </td>
   <td style="text-align:right;"> 0.30 (0.07)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.68 (1.60)     .67 </td>
   <td style="text-align:right;"> 0.03 (1.49)     .98 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.01 (0.03)     .82 </td>
   <td style="text-align:right;"> 0.03 (0.04)     .43 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 19.41 (0.28)    &lt;.01 </td>
   <td style="text-align:right;"> 19.49 (0.29)    &lt;.01 </td>
   <td style="text-align:right;"> 19.45(0.06) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.28 (0.03)    &lt;.01 </td>
   <td style="text-align:right;"> -0.31 (0.04)    &lt;.01 </td>
   <td style="text-align:right;"> -0.30(0.02) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.30 (0.02)    &lt;.01 </td>
   <td style="text-align:right;"> -0.30 (0.02)    &lt;.01 </td>
   <td style="text-align:right;"> -0.30(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.09 (0.06)     .13 </td>
   <td style="text-align:right;"> 0.09 (0.06)     .11 </td>
   <td style="text-align:right;"> 0.09(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.17 (0.03)    &lt;.01 </td>
   <td style="text-align:right;"> 0.16 (0.03)    &lt;.01 </td>
   <td style="text-align:right;"> 0.17(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.60 (0.52)     .24 </td>
   <td style="text-align:right;"> -0.61 (0.51)     .23 </td>
   <td style="text-align:right;"> -0.61(0.01) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.34 (0.44)     .44 </td>
   <td style="text-align:right;"> -0.41 (0.44)     .36 </td>
   <td style="text-align:right;"> -0.37(0.05) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -1.93 (0.76)     .01 </td>
   <td style="text-align:right;"> -1.82 (0.75)     .01 </td>
   <td style="text-align:right;"> -1.88(0.08) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> -0.01(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.00 (0.00)     .36 </td>
   <td style="text-align:right;"> -0.01 (0.00)     .26 </td>
   <td style="text-align:right;"> -0.01(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.00 (0.00)     .26 </td>
   <td style="text-align:right;"> -0.00 (0.00)     .40 </td>
   <td style="text-align:right;"> -0.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.05 (0.05)     .32 </td>
   <td style="text-align:right;"> -0.09 (0.05)     .08 </td>
   <td style="text-align:right;"> -0.07(0.03) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.02 (0.04)     .54 </td>
   <td style="text-align:right;"> -0.02 (0.04)     .66 </td>
   <td style="text-align:right;"> -0.02(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.05 (0.09)     .54 </td>
   <td style="text-align:right;"> -0.08 (0.09)     .41 </td>
   <td style="text-align:right;"> -0.06(0.02) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 8.84 (0.26)    &lt;.01 </td>
   <td style="text-align:right;"> 346.09 (4.99)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> 0.44 (0.06)    &lt;.01 </td>
   <td style="text-align:right;"> -4.42 (0.57)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> 0.25 (0.03)    &lt;.01 </td>
   <td style="text-align:right;"> -5.23 (0.41)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.08 (0.05)     .12 </td>
   <td style="text-align:right;"> 2.13 (1.02)     .04 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.02 (0.03)     .52 </td>
   <td style="text-align:right;"> 1.98 (0.46)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.47 (0.36)     .20 </td>
   <td style="text-align:right;"> -39.66 (8.22)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 0.92 (0.46)     .04 </td>
   <td style="text-align:right;"> -12.26 (8.53)     .15 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 2.52 (0.96)     .01 </td>
   <td style="text-align:right;"> 7.92 (13.14)     .55 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.03 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> -0.08 (0.05)     .09 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.00 (0.01)     .60 </td>
   <td style="text-align:right;"> 0.00 (0.11)     .99 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.01 (0.00)     .06 </td>
   <td style="text-align:right;"> 0.01 (0.05)     .81 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.07 (0.07)     .34 </td>
   <td style="text-align:right;"> 0.11 (0.73)     .88 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.06 (0.07)     .39 </td>
   <td style="text-align:right;"> 0.30 (0.87)     .73 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.06 (0.18)     .75 </td>
   <td style="text-align:right;"> -3.40 (1.70)     .05 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 15.21 (1.96)    &lt;.01 </td>
   <td style="text-align:right;"> 14.55 (2.15)    &lt;.01 </td>
   <td style="text-align:right;"> 14.88(0.47) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.01 (0.02)     .81 </td>
   <td style="text-align:right;"> 0.00 (0.04)     .97 </td>
   <td style="text-align:right;"> 0.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 13.01 (0.69)    &lt;.01 </td>
   <td style="text-align:right;"> 14.43 (0.80)    &lt;.01 </td>
   <td style="text-align:right;"> 13.72(1.01) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 8.79 (6.38)     .17 </td>
   <td style="text-align:right;"> 4647.01 (390.63)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.14 (0.08)     .10 </td>
   <td style="text-align:right;"> 8.79 (3.97)     .03 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 17.46 (5.57)    &lt;.01 </td>
   <td style="text-align:right;"> 2100.13 (188.18)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.09 (0.19)     .63 </td>
   <td style="text-align:right;"> -0.05 (0.25)     .85 </td>
   <td style="text-align:right;"> -0.07(0.03) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.58 (0.80)     .47 </td>
   <td style="text-align:right;"> -55.81 (33.50)     .10 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> -0.338 </td>
   <td style="text-align:right;"> 0.296 </td>
   <td style="text-align:right;"> -0.02(0.45) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> -0.668 </td>
   <td style="text-align:right;"> 0.030 </td>
   <td style="text-align:right;"> -0.32(0.49) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> 0.006 </td>
   <td style="text-align:right;"> 0.033 </td>
   <td style="text-align:right;"> 0.02(0.02) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 782 </td>
   <td style="text-align:right;"> 782 </td>
   <td style="text-align:right;"> 782.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> occasions </td>
   <td style="text-align:right;"> 6 </td>
   <td style="text-align:right;"> 6 </td>
   <td style="text-align:right;"> 6.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> parameters </td>
   <td style="text-align:right;"> 41 </td>
   <td style="text-align:right;"> 41 </td>
   <td style="text-align:right;"> 41.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> LL </td>
   <td style="text-align:right;"> -15,404 </td>
   <td style="text-align:right;"> -16,838 </td>
   <td style="text-align:right;"> -1.612071e+04(1,014) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 30,890 </td>
   <td style="text-align:right;"> 33,757 </td>
   <td style="text-align:right;"> 3.232342e+04(2,028) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 31,081 </td>
   <td style="text-align:right;"> 33,948 </td>
   <td style="text-align:right;"> 3.251456e+04(2,028) </td>
  </tr>
</tbody>
</table>

##  gait 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _gait_
<table>
 <thead>
  <tr>
   <th style="text-align:center;"> process </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> -3.91 (1.27)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> -0.02 (0.02)     .31 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 0.09 (0.40)     .82 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> -0.34 (0.07)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.68 (1.60)     .67 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.01 (0.03)     .82 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 19.41 (0.28)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.28 (0.03)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.30 (0.02)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.09 (0.06)     .13 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.17 (0.03)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.60 (0.52)     .24 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.34 (0.44)     .44 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -1.93 (0.76)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.00 (0.00)     .36 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.00 (0.00)     .26 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.05 (0.05)     .32 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.02 (0.04)     .54 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.05 (0.09)     .54 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 8.84 (0.26)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> 0.44 (0.06)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> 0.25 (0.03)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.08 (0.05)     .12 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.02 (0.03)     .52 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.47 (0.36)     .20 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 0.92 (0.46)     .04 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 2.52 (0.96)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.03 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.00 (0.01)     .60 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.01 (0.00)     .06 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.07 (0.07)     .34 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.06 (0.07)     .39 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.06 (0.18)     .75 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 15.21 (1.96)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.01 (0.02)     .81 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 13.01 (0.69)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 8.79 (6.38)     .17 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.14 (0.08)     .10 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 17.46 (5.57)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.09 (0.19)     .63 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.58 (0.80)     .47 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> -0.338 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> -0.668 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> 0.006 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 782 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> occasions </td>
   <td style="text-align:right;"> 6 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> parameters </td>
   <td style="text-align:right;"> 41 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> LL </td>
   <td style="text-align:right;"> -15,404 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 30,890 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 31,081 </td>
  </tr>
</tbody>
</table>

##  pef 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _pef_
<table>
 <thead>
  <tr>
   <th style="text-align:center;"> process </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 76.86 (19.88)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.00 (0.22)     .99 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 5.73 (7.32)     .43 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.30 (0.07)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> 0.03 (1.49)     .98 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.03 (0.04)     .43 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 19.49 (0.29)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.31 (0.04)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.30 (0.02)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.09 (0.06)     .11 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.16 (0.03)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.61 (0.51)     .23 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.41 (0.44)     .36 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -1.82 (0.75)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.01 (0.00)     .26 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.00 (0.00)     .40 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.09 (0.05)     .08 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.02 (0.04)     .66 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.08 (0.09)     .41 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 346.09 (4.99)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -4.42 (0.57)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -5.23 (0.41)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 2.13 (1.02)     .04 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 1.98 (0.46)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -39.66 (8.22)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -12.26 (8.53)     .15 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 7.92 (13.14)     .55 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.08 (0.05)     .09 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.00 (0.11)     .99 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.01 (0.05)     .81 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.11 (0.73)     .88 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.30 (0.87)     .73 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -3.40 (1.70)     .05 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 14.55 (2.15)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00 (0.04)     .97 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 14.43 (0.80)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 4647.01 (390.63)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 8.79 (3.97)     .03 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 2100.13 (188.18)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.05 (0.25)     .85 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -55.81 (33.50)     .10 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> 0.296 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> 0.030 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> 0.033 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 782 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> occasions </td>
   <td style="text-align:right;"> 6 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> parameters </td>
   <td style="text-align:right;"> 41 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> LL </td>
   <td style="text-align:right;"> -16,838 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 33,757 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 33,948 </td>
  </tr>
</tbody>
</table>

# male 

 Gender = _male_; Model type: _aehplus_;  Process (a) = _grip_; Process (b): *gait*, *pef*
<table>
 <thead>
  <tr>
   <th style="text-align:center;"> process </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> gait </th>
   <th style="text-align:right;"> pef </th>
   <th style="text-align:right;"> mean(sd) </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> -5.54 (2.73)     .04 </td>
   <td style="text-align:right;"> 153.76 (29.38)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> -0.10 (0.18)     .59 </td>
   <td style="text-align:right;"> 0.29 (0.10)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> -0.49 (0.59)     .41 </td>
   <td style="text-align:right;"> -12.42 (7.99)     .12 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> -0.35 (0.21)     .10 </td>
   <td style="text-align:right;"> 0.24 (0.04)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.76 (0.49)     .12 </td>
   <td style="text-align:right;"> 0.57 (0.10)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> -0.04 (0.04)     .42 </td>
   <td style="text-align:right;"> -0.05 (0.03)     .11 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 34.11 (0.49)    &lt;.01 </td>
   <td style="text-align:right;"> 33.98 (0.48)    &lt;.01 </td>
   <td style="text-align:right;"> 34.04(0.09) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.68 (0.06)    &lt;.01 </td>
   <td style="text-align:right;"> -0.61 (0.06)    &lt;.01 </td>
   <td style="text-align:right;"> -0.64(0.05) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.46 (0.04)    &lt;.01 </td>
   <td style="text-align:right;"> -0.46 (0.04)    &lt;.01 </td>
   <td style="text-align:right;"> -0.46(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.09 (0.08)     .26 </td>
   <td style="text-align:right;"> -0.08 (0.08)     .34 </td>
   <td style="text-align:right;"> -0.09(0.01) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.22 (0.04)    &lt;.01 </td>
   <td style="text-align:right;"> 0.22 (0.04)    &lt;.01 </td>
   <td style="text-align:right;"> 0.22(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.20 (0.61)     .74 </td>
   <td style="text-align:right;"> 0.38 (0.61)     .53 </td>
   <td style="text-align:right;"> 0.29(0.13) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 0.35 (0.61)     .56 </td>
   <td style="text-align:right;"> 0.38 (0.60)     .53 </td>
   <td style="text-align:right;"> 0.37(0.02) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -3.00 (1.42)     .04 </td>
   <td style="text-align:right;"> -2.96 (1.43)     .04 </td>
   <td style="text-align:right;"> -2.98(0.03) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.04 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> -0.03 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> -0.04(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.01 (0.01)     .17 </td>
   <td style="text-align:right;"> 0.00 (0.01)     .76 </td>
   <td style="text-align:right;"> 0.01(0.01) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.00 (0.00)     .49 </td>
   <td style="text-align:right;"> -0.00 (0.00)     .70 </td>
   <td style="text-align:right;"> -0.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.11 (0.06)     .08 </td>
   <td style="text-align:right;"> -0.17 (0.06)    &lt;.01 </td>
   <td style="text-align:right;"> -0.14(0.05) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.04 (0.07)     .49 </td>
   <td style="text-align:right;"> -0.06 (0.06)     .38 </td>
   <td style="text-align:right;"> -0.05(0.01) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.31 (0.12)     .01 </td>
   <td style="text-align:right;"> -0.29 (0.13)     .02 </td>
   <td style="text-align:right;"> -0.30(0.01) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 8.19 (0.24)    &lt;.01 </td>
   <td style="text-align:right;"> 454.10 (7.13)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> 0.50 (0.26)     .06 </td>
   <td style="text-align:right;"> -5.40 (0.76)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> 0.14 (0.02)    &lt;.01 </td>
   <td style="text-align:right;"> -7.60 (0.55)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.13 (0.03)    &lt;.01 </td>
   <td style="text-align:right;"> 4.28 (1.24)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> -0.02 (0.02)     .26 </td>
   <td style="text-align:right;"> 3.11 (0.56)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.08 (0.29)     .78 </td>
   <td style="text-align:right;"> -63.63 (9.06)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 0.30 (0.27)     .26 </td>
   <td style="text-align:right;"> -0.72 (9.09)     .94 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 0.46 (0.48)     .34 </td>
   <td style="text-align:right;"> -3.18 (16.81)     .85 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.03 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> -0.04 (0.06)     .48 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.01 (0.01)     .41 </td>
   <td style="text-align:right;"> -0.04 (0.13)     .74 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .66 </td>
   <td style="text-align:right;"> -0.03 (0.06)     .60 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.07 (0.12)     .56 </td>
   <td style="text-align:right;"> -0.73 (0.94)     .44 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.01 (0.07)     .83 </td>
   <td style="text-align:right;"> -1.91 (1.04)     .07 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.16 (0.21)     .46 </td>
   <td style="text-align:right;"> -1.12 (2.83)     .69 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 38.29 (3.58)    &lt;.01 </td>
   <td style="text-align:right;"> 38.35 (3.00)    &lt;.01 </td>
   <td style="text-align:right;"> 38.32(0.04) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.06 (0.04)     .15 </td>
   <td style="text-align:right;"> 0.01 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.04(0.04) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 20.95 (1.19)    &lt;.01 </td>
   <td style="text-align:right;"> 21.92 (1.25)    &lt;.01 </td>
   <td style="text-align:right;"> 21.43(0.68) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 6.48 (2.92)     .03 </td>
   <td style="text-align:right;"> 10662.27 (728.73)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.26 (1.26)     .83 </td>
   <td style="text-align:right;"> 28.82 (8.40)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 9.59 (1.48)    &lt;.01 </td>
   <td style="text-align:right;"> 2473.38 (173.44)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.10 (0.35)     .78 </td>
   <td style="text-align:right;"> -0.08 (0.11)     .46 </td>
   <td style="text-align:right;"> -0.09(0.01) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 1.28 (0.53)     .01 </td>
   <td style="text-align:right;"> -99.17 (56.14)     .08 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> -0.352 </td>
   <td style="text-align:right;"> 0.240 </td>
   <td style="text-align:right;"> -0.06(0.42) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> -0.755 </td>
   <td style="text-align:right;"> 0.579 </td>
   <td style="text-align:right;"> -0.09(0.94) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> -0.035 </td>
   <td style="text-align:right;"> -0.053 </td>
   <td style="text-align:right;"> -0.04(0.01) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 800 </td>
   <td style="text-align:right;"> 800 </td>
   <td style="text-align:right;"> 800.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> occasions </td>
   <td style="text-align:right;"> 6 </td>
   <td style="text-align:right;"> 6 </td>
   <td style="text-align:right;"> 6.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> parameters </td>
   <td style="text-align:right;"> 41 </td>
   <td style="text-align:right;"> 41 </td>
   <td style="text-align:right;"> 41.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> LL </td>
   <td style="text-align:right;"> -14,605 </td>
   <td style="text-align:right;"> -17,112 </td>
   <td style="text-align:right;"> -1.585828e+04(1,772) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 29,292 </td>
   <td style="text-align:right;"> 34,305 </td>
   <td style="text-align:right;"> 3.179856e+04(3,545) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 29,484 </td>
   <td style="text-align:right;"> 34,497 </td>
   <td style="text-align:right;"> 3.199063e+04(3,545) </td>
  </tr>
</tbody>
</table>

##  gait 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _gait_
<table>
 <thead>
  <tr>
   <th style="text-align:center;"> process </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> -5.54 (2.73)     .04 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> -0.10 (0.18)     .59 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> -0.49 (0.59)     .41 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> -0.35 (0.21)     .10 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.76 (0.49)     .12 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> -0.04 (0.04)     .42 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 34.11 (0.49)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.68 (0.06)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.46 (0.04)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.09 (0.08)     .26 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.22 (0.04)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.20 (0.61)     .74 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 0.35 (0.61)     .56 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -3.00 (1.42)     .04 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.04 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.01 (0.01)     .17 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.00 (0.00)     .49 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.11 (0.06)     .08 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.04 (0.07)     .49 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.31 (0.12)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 8.19 (0.24)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> 0.50 (0.26)     .06 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> 0.14 (0.02)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.13 (0.03)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> -0.02 (0.02)     .26 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.08 (0.29)     .78 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 0.30 (0.27)     .26 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 0.46 (0.48)     .34 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.03 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.01 (0.01)     .41 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .66 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.07 (0.12)     .56 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.01 (0.07)     .83 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.16 (0.21)     .46 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 38.29 (3.58)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.06 (0.04)     .15 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 20.95 (1.19)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 6.48 (2.92)     .03 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.26 (1.26)     .83 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 9.59 (1.48)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.10 (0.35)     .78 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 1.28 (0.53)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> -0.352 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> -0.755 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> -0.035 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 800 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> occasions </td>
   <td style="text-align:right;"> 6 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> parameters </td>
   <td style="text-align:right;"> 41 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> LL </td>
   <td style="text-align:right;"> -14,605 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 29,292 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 29,484 </td>
  </tr>
</tbody>
</table>

##  pef 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _pef_
<table>
 <thead>
  <tr>
   <th style="text-align:center;"> process </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 153.76 (29.38)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.29 (0.10)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> -12.42 (7.99)     .12 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.24 (0.04)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> 0.57 (0.10)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> -0.05 (0.03)     .11 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 33.98 (0.48)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.61 (0.06)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.46 (0.04)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.08 (0.08)     .34 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.22 (0.04)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.38 (0.61)     .53 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 0.38 (0.60)     .53 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -2.96 (1.43)     .04 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.03 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.00 (0.01)     .76 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.00 (0.00)     .70 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.17 (0.06)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.06 (0.06)     .38 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.29 (0.13)     .02 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 454.10 (7.13)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -5.40 (0.76)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -7.60 (0.55)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 4.28 (1.24)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 3.11 (0.56)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -63.63 (9.06)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.72 (9.09)     .94 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -3.18 (16.81)     .85 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.04 (0.06)     .48 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.04 (0.13)     .74 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.03 (0.06)     .60 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.73 (0.94)     .44 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -1.91 (1.04)     .07 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -1.12 (2.83)     .69 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 38.35 (3.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.01 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 21.92 (1.25)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 10662.27 (728.73)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 28.82 (8.40)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 2473.38 (173.44)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.08 (0.11)     .46 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -99.17 (56.14)     .08 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> 0.240 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> 0.579 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> -0.053 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 800 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> occasions </td>
   <td style="text-align:right;"> 6 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> parameters </td>
   <td style="text-align:right;"> 41 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> LL </td>
   <td style="text-align:right;"> -17,112 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 34,305 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 34,497 </td>
  </tr>
</tbody>
</table>

# pef : Available models 

 Study **LASA** have contributed the following outcome pairs to the IASLA-2015-Portland model pool: 
NULL

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> process_a </th>
   <th style="text-align:left;"> process_b </th>
   <th style="text-align:right;"> n_models </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> pef </td>
   <td style="text-align:left;"> gait </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
</tbody>
</table>


<table>
 <thead>
  <tr>
   <th style="text-align:left;"> study_name </th>
   <th style="text-align:left;"> subgroup </th>
   <th style="text-align:left;"> model_type </th>
   <th style="text-align:left;"> process_a </th>
   <th style="text-align:left;"> process_b </th>
   <th style="text-align:right;"> n_models </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> lasa </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> aehplus </td>
   <td style="text-align:left;"> pef </td>
   <td style="text-align:left;"> gait </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
</tbody>
</table>


<table>
 <thead>
  <tr>
   <th style="text-align:left;"> study_name </th>
   <th style="text-align:left;"> subgroup </th>
   <th style="text-align:left;"> model_type </th>
   <th style="text-align:left;"> process_a </th>
   <th style="text-align:left;"> process_b </th>
   <th style="text-align:right;"> n_models </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> lasa </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> aehplus </td>
   <td style="text-align:left;"> pef </td>
   <td style="text-align:left;"> gait </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
</tbody>
</table>


# female 

 Gender = _female_; Model type: _aehplus_;  Process (a) = _pef_; Process (b): *gait*
<table>
 <thead>
  <tr>
   <th style="text-align:center;"> process </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> gait </th>
   <th style="text-align:right;"> mean(sd) </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> -19.83 (9.76)     .04 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> -0.16 (0.13)     .24 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> -3.88 (4.68)     .41 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> -0.23 (0.13)     .09 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.25 (0.20)     .21 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> -0.02 (0.03)     .40 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 351.97 (4.52)    &lt;.01 </td>
   <td style="text-align:right;"> 351.97(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -3.77 (0.36)    &lt;.01 </td>
   <td style="text-align:right;"> -3.77(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -4.50 (0.36)    &lt;.01 </td>
   <td style="text-align:right;"> -4.50(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 3.08 (0.87)    &lt;.01 </td>
   <td style="text-align:right;"> 3.08(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 2.53 (0.41)    &lt;.01 </td>
   <td style="text-align:right;"> 2.53(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -30.64 (6.90)    &lt;.01 </td>
   <td style="text-align:right;"> -30.64(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -12.35 (7.37)     .09 </td>
   <td style="text-align:right;"> -12.35(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -3.86 (12.45)     .76 </td>
   <td style="text-align:right;"> -3.86(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.14 (0.03)    &lt;.01 </td>
   <td style="text-align:right;"> -0.14(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.09 (0.06)     .17 </td>
   <td style="text-align:right;"> -0.09(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.04 (0.03)     .17 </td>
   <td style="text-align:right;"> -0.04(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.82 (0.47)     .08 </td>
   <td style="text-align:right;"> -0.82(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.06 (0.52)     .90 </td>
   <td style="text-align:right;"> 0.06(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.89 (1.14)     .43 </td>
   <td style="text-align:right;"> -0.89(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 7.72 (0.17)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> 0.45 (0.06)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> 0.13 (0.02)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.05 (0.04)     .17 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> -0.03 (0.02)     .16 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.32 (0.27)     .23 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 1.27 (0.34)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 1.74 (0.82)     .03 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.04 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.01 (0.01)     .39 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.01 (0.00)     .01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.06 (0.06)     .26 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.03 (0.07)     .65 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.18 (0.15)     .23 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 3905.20 (273.76)    &lt;.01 </td>
   <td style="text-align:right;"> 3905.20(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 1.26 (0.91)     .17 </td>
   <td style="text-align:right;"> 1.26(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 2094.66 (137.17)    &lt;.01 </td>
   <td style="text-align:right;"> 2094.66(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 1.96 (1.57)     .21 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.32 (0.19)     .09 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 13.33 (2.51)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 23.55 (13.59)     .08 </td>
   <td style="text-align:right;"> 23.55(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.56 (0.46)     .22 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> -0.227 </td>
   <td style="text-align:right;"> -0.23(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> -0.246 </td>
   <td style="text-align:right;"> -0.25(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> -0.023 </td>
   <td style="text-align:right;"> -0.02(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 782 </td>
   <td style="text-align:right;"> 782.00(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> occasions </td>
   <td style="text-align:right;"> 6 </td>
   <td style="text-align:right;"> 6.00(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> parameters </td>
   <td style="text-align:right;"> 41 </td>
   <td style="text-align:right;"> 41.00(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> LL </td>
   <td style="text-align:right;"> -24,499 </td>
   <td style="text-align:right;"> -2.449899e+04(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 49,080 </td>
   <td style="text-align:right;"> 4.907998e+04(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 49,271 </td>
   <td style="text-align:right;"> 4.927112e+04(NA) </td>
  </tr>
</tbody>
</table>

##  gait 

 Gender = _female_;  Process (a) = *pef*; Process (b) = _gait_
<table>
 <thead>
  <tr>
   <th style="text-align:center;"> process </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> -19.83 (9.76)     .04 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> -0.16 (0.13)     .24 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> -3.88 (4.68)     .41 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> -0.23 (0.13)     .09 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.25 (0.20)     .21 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> -0.02 (0.03)     .40 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 351.97 (4.52)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -3.77 (0.36)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -4.50 (0.36)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 3.08 (0.87)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 2.53 (0.41)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -30.64 (6.90)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -12.35 (7.37)     .09 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -3.86 (12.45)     .76 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.14 (0.03)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.09 (0.06)     .17 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.04 (0.03)     .17 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.82 (0.47)     .08 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.06 (0.52)     .90 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.89 (1.14)     .43 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 7.72 (0.17)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> 0.45 (0.06)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> 0.13 (0.02)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.05 (0.04)     .17 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> -0.03 (0.02)     .16 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.32 (0.27)     .23 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 1.27 (0.34)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 1.74 (0.82)     .03 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.04 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.01 (0.01)     .39 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.01 (0.00)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.06 (0.06)     .26 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.03 (0.07)     .65 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.18 (0.15)     .23 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 3905.20 (273.76)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 1.26 (0.91)     .17 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 2094.66 (137.17)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 1.96 (1.57)     .21 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.32 (0.19)     .09 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 13.33 (2.51)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 23.55 (13.59)     .08 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.56 (0.46)     .22 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> -0.227 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> -0.246 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> -0.023 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 782 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> occasions </td>
   <td style="text-align:right;"> 6 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> parameters </td>
   <td style="text-align:right;"> 41 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> LL </td>
   <td style="text-align:right;"> -24,499 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 49,080 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 49,271 </td>
  </tr>
</tbody>
</table>

# male 

 Gender = _male_; Model type: _aehplus_;  Process (a) = _pef_; Process (b): *gait*
<table>
 <thead>
  <tr>
   <th style="text-align:center;"> process </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> gait </th>
   <th style="text-align:right;"> mean(sd) </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> -40.60 (5.66)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> -0.78 (0.33)     .02 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> -4.31 (4.73)     .36 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> -0.36 (0.06)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.40 (0.09)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> -0.03 (0.03)     .37 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 468.60 (6.54)    &lt;.01 </td>
   <td style="text-align:right;"> 468.60(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -5.39 (0.55)    &lt;.01 </td>
   <td style="text-align:right;"> -5.39(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -6.52 (0.47)    &lt;.01 </td>
   <td style="text-align:right;"> -6.52(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 4.46 (1.11)    &lt;.01 </td>
   <td style="text-align:right;"> 4.46(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 3.17 (0.50)    &lt;.01 </td>
   <td style="text-align:right;"> 3.17(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -53.24 (7.92)    &lt;.01 </td>
   <td style="text-align:right;"> -53.24(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.58 (8.44)     .94 </td>
   <td style="text-align:right;"> -0.58(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 1.34 (14.31)     .92 </td>
   <td style="text-align:right;"> 1.34(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.16 (0.04)    &lt;.01 </td>
   <td style="text-align:right;"> -0.16(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.06 (0.09)     .52 </td>
   <td style="text-align:right;"> -0.06(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.02 (0.04)     .56 </td>
   <td style="text-align:right;"> -0.02(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -1.76 (0.62)    &lt;.01 </td>
   <td style="text-align:right;"> -1.76(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -1.38 (0.69)     .04 </td>
   <td style="text-align:right;"> -1.38(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -1.58 (1.47)     .28 </td>
   <td style="text-align:right;"> -1.58(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 7.21 (0.14)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> 0.41 (0.05)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> 0.08 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.07 (0.02)     .01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> -0.02 (0.01)     .11 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.08 (0.20)     .68 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 0.29 (0.21)     .17 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 0.46 (0.37)     .21 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.02 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.01 (0.00)     .01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .74 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.03 (0.05)     .55 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.02 (0.05)     .72 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.03 (0.11)     .77 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 9154.71 (603.18)    &lt;.01 </td>
   <td style="text-align:right;"> 9154.71(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 15.63 (3.40)    &lt;.01 </td>
   <td style="text-align:right;"> 15.63(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 2620.98 (155.42)    &lt;.01 </td>
   <td style="text-align:right;"> 2620.98(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 1.42 (0.40)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.24 (0.13)     .06 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 9.36 (2.23)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 23.50 (32.77)     .47 </td>
   <td style="text-align:right;"> 23.50(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.53 (0.23)     .02 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> -0.356 </td>
   <td style="text-align:right;"> -0.36(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> -0.401 </td>
   <td style="text-align:right;"> -0.40(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> -0.028 </td>
   <td style="text-align:right;"> -0.03(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 800 </td>
   <td style="text-align:right;"> 800.00(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> occasions </td>
   <td style="text-align:right;"> 6 </td>
   <td style="text-align:right;"> 6.00(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> parameters </td>
   <td style="text-align:right;"> 41 </td>
   <td style="text-align:right;"> 41.00(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> LL </td>
   <td style="text-align:right;"> -23,890 </td>
   <td style="text-align:right;"> -2.389024e+04(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 47,862 </td>
   <td style="text-align:right;"> 4.786249e+04(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 48,055 </td>
   <td style="text-align:right;"> 4.805456e+04(NA) </td>
  </tr>
</tbody>
</table>

##  gait 

 Gender = _male_;  Process (a) = *pef*; Process (b) = _gait_
<table>
 <thead>
  <tr>
   <th style="text-align:center;"> process </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> -40.60 (5.66)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> -0.78 (0.33)     .02 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> -4.31 (4.73)     .36 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> -0.36 (0.06)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.40 (0.09)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> -0.03 (0.03)     .37 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 468.60 (6.54)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -5.39 (0.55)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -6.52 (0.47)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 4.46 (1.11)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 3.17 (0.50)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -53.24 (7.92)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.58 (8.44)     .94 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 1.34 (14.31)     .92 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.16 (0.04)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.06 (0.09)     .52 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.02 (0.04)     .56 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -1.76 (0.62)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -1.38 (0.69)     .04 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -1.58 (1.47)     .28 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 7.21 (0.14)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> 0.41 (0.05)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> 0.08 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.07 (0.02)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> -0.02 (0.01)     .11 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.08 (0.20)     .68 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 0.29 (0.21)     .17 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 0.46 (0.37)     .21 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.02 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.01 (0.00)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .74 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.03 (0.05)     .55 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.02 (0.05)     .72 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.03 (0.11)     .77 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 9154.71 (603.18)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 15.63 (3.40)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 2620.98 (155.42)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 1.42 (0.40)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.24 (0.13)     .06 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 9.36 (2.23)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 23.50 (32.77)     .47 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.53 (0.23)     .02 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> -0.356 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> -0.401 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> -0.028 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 800 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> occasions </td>
   <td style="text-align:right;"> 6 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> parameters </td>
   <td style="text-align:right;"> 41 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> LL </td>
   <td style="text-align:right;"> -23,890 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 47,862 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 48,055 </td>
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
[1] grid      stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] RColorBrewer_1.1-2        dichromat_2.0-0           extrafont_0.17            rhdf5_2.16.0             
[5] knitr_1.14                IalsaSynthesis_0.1.8.9000 MplusAutomation_0.6-4     ggplot2_2.1.0            
[9] magrittr_1.5             

loaded via a namespace (and not attached):
 [1] Rcpp_0.12.7      formatR_1.4      highr_0.6        plyr_1.8.4       zlibbioc_1.18.0  tools_3.3.1     
 [7] boot_1.3-18      digest_0.6.10    jsonlite_1.1     evaluate_0.10    tibble_1.2       gtable_0.2.0    
[13] lattice_0.20-34  texreg_1.36.7    DBI_0.5-1        yaml_2.1.13      proto_0.3-10     Rttf2pt1_1.3.4  
[19] coda_0.18-1      dplyr_0.5.0      stringr_1.1.0    htmlwidgets_0.7  cowplot_0.6.3    DT_0.2          
[25] R6_2.2.0         rmarkdown_1.1    gsubfn_0.6-6     extrafontdb_1.0  pander_0.6.0     tidyr_0.6.0     
[31] readr_1.0.0      scales_0.4.0     htmltools_0.3.5  rsconnect_0.5    assertthat_0.1   testit_0.5      
[37] colorspace_1.2-7 xtable_1.8-2     labeling_0.3     stringi_1.1.2    lazyeval_0.2.0   munsell_0.4.3   
```
