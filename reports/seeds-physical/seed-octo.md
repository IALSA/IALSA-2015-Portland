# OCTO : Seed Report
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

 Study **OCTO** have contributed the following outcome pairs to the IASLA-2015-Portland model pool: 
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
   <td style="text-align:left;"> octo </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> aehplus </td>
   <td style="text-align:left;"> grip </td>
   <td style="text-align:left;"> gait </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> octo </td>
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
   <td style="text-align:left;"> octo </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> aehplus </td>
   <td style="text-align:left;"> grip </td>
   <td style="text-align:left;"> gait </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> octo </td>
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
   <td style="text-align:right;"> -2.08 (0.55)    &lt;.01 </td>
   <td style="text-align:right;"> 44.94 (10.25)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> -0.01 (0.03)     .84 </td>
   <td style="text-align:right;"> 0.23 (0.25)     .36 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> -0.17 (0.18)     .35 </td>
   <td style="text-align:right;"> 1.29 (3.23)     .69 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> -0.33 (0.07)    &lt;.01 </td>
   <td style="text-align:right;"> 0.39 (0.07)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.04 (0.24)     .86 </td>
   <td style="text-align:right;"> 0.34 (0.37)     .36 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> -0.04 (0.05)     .33 </td>
   <td style="text-align:right;"> 0.02 (0.06)     .69 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 9.18 (0.25)    &lt;.01 </td>
   <td style="text-align:right;"> 9.19 (0.25)    &lt;.01 </td>
   <td style="text-align:right;"> 9.18(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.33 (0.04)    &lt;.01 </td>
   <td style="text-align:right;"> -0.33 (0.04)    &lt;.01 </td>
   <td style="text-align:right;"> -0.33(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.15 (0.04)    &lt;.01 </td>
   <td style="text-align:right;"> -0.15 (0.04)    &lt;.01 </td>
   <td style="text-align:right;"> -0.15(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.17 (0.07)     .01 </td>
   <td style="text-align:right;"> 0.17 (0.07)     .01 </td>
   <td style="text-align:right;"> 0.17(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.09 (0.02)    &lt;.01 </td>
   <td style="text-align:right;"> 0.09 (0.02)    &lt;.01 </td>
   <td style="text-align:right;"> 0.09(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.52 (0.32)     .10 </td>
   <td style="text-align:right;"> -0.51 (0.32)     .10 </td>
   <td style="text-align:right;"> -0.51(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.16 (0.25)     .52 </td>
   <td style="text-align:right;"> -0.16 (0.25)     .52 </td>
   <td style="text-align:right;"> -0.16(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.01 (0.52)     .98 </td>
   <td style="text-align:right;"> -0.02 (0.53)     .97 </td>
   <td style="text-align:right;"> -0.02(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.00 (0.01)     .64 </td>
   <td style="text-align:right;"> -0.00 (0.01)     .64 </td>
   <td style="text-align:right;"> -0.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.01 (0.01)     .39 </td>
   <td style="text-align:right;"> -0.01 (0.01)     .38 </td>
   <td style="text-align:right;"> -0.01(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.00 (0.00)     .46 </td>
   <td style="text-align:right;"> -0.00 (0.00)     .52 </td>
   <td style="text-align:right;"> -0.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.01 (0.05)     .81 </td>
   <td style="text-align:right;"> 0.01 (0.04)     .86 </td>
   <td style="text-align:right;"> 0.01(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.00 (0.04)     .99 </td>
   <td style="text-align:right;"> 0.00 (0.04)     .99 </td>
   <td style="text-align:right;"> 0.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.05 (0.11)     .64 </td>
   <td style="text-align:right;"> -0.04 (0.10)     .71 </td>
   <td style="text-align:right;"> -0.04(0.01) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 10.29 (0.47)    &lt;.01 </td>
   <td style="text-align:right;"> 327.88 (8.75)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> 0.53 (0.29)     .07 </td>
   <td style="text-align:right;"> -7.07 (1.40)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> 0.32 (0.09)    &lt;.01 </td>
   <td style="text-align:right;"> -6.62 (1.90)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.32 (0.13)     .01 </td>
   <td style="text-align:right;"> 5.83 (2.65)     .03 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> -0.04 (0.05)     .41 </td>
   <td style="text-align:right;"> 2.60 (0.98)     .01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.04 (0.75)     .96 </td>
   <td style="text-align:right;"> -35.45 (12.80)     .01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 0.71 (0.53)     .18 </td>
   <td style="text-align:right;"> 2.34 (10.14)     .82 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 1.70 (1.41)     .23 </td>
   <td style="text-align:right;"> 1.19 (16.02)     .94 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.00 (0.04)     .91 </td>
   <td style="text-align:right;"> 0.94 (0.35)     .01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.03 (0.04)     .48 </td>
   <td style="text-align:right;"> -0.26 (0.46)     .57 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.01 (0.02)     .66 </td>
   <td style="text-align:right;"> -0.21 (0.20)     .28 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.07 (0.17)     .68 </td>
   <td style="text-align:right;"> -3.38 (2.04)     .10 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.18 (0.20)     .38 </td>
   <td style="text-align:right;"> -2.72 (1.66)     .10 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 1.09 (0.84)     .20 </td>
   <td style="text-align:right;"> 3.53 (3.46)     .31 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 3.19 (0.43)    &lt;.01 </td>
   <td style="text-align:right;"> 3.18 (0.43)    &lt;.01 </td>
   <td style="text-align:right;"> 3.19(0.01) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.02 (0.01)     .04 </td>
   <td style="text-align:right;"> 0.02 (0.01)     .05 </td>
   <td style="text-align:right;"> 0.02(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 1.26 (0.12)    &lt;.01 </td>
   <td style="text-align:right;"> 1.27 (0.12)    &lt;.01 </td>
   <td style="text-align:right;"> 1.27(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 12.37 (4.30)    &lt;.01 </td>
   <td style="text-align:right;"> 4263.73 (507.44)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.96 (1.77)     .58 </td>
   <td style="text-align:right;"> 27.16 (15.02)     .07 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 11.25 (2.68)    &lt;.01 </td>
   <td style="text-align:right;"> 2119.94 (183.89)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.04 (0.04)     .38 </td>
   <td style="text-align:right;"> -0.03 (0.04)     .45 </td>
   <td style="text-align:right;"> -0.03(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 3.18 (3.71)     .39 </td>
   <td style="text-align:right;"> -154.09 (83.92)     .07 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> -0.331 </td>
   <td style="text-align:right;"> 0.386 </td>
   <td style="text-align:right;"> 0.03(0.51) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> -0.046 </td>
   <td style="text-align:right;"> 0.340 </td>
   <td style="text-align:right;"> 0.15(0.27) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> -0.045 </td>
   <td style="text-align:right;"> 0.025 </td>
   <td style="text-align:right;"> -0.01(0.05) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 270 </td>
   <td style="text-align:right;"> 270 </td>
   <td style="text-align:right;"> 270.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> occasions </td>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:right;"> 5.00(0.00) </td>
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
   <td style="text-align:right;"> -4,128 </td>
   <td style="text-align:right;"> -5,669 </td>
   <td style="text-align:right;"> -4,898(1,089) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 8,338 </td>
   <td style="text-align:right;"> 11,419 </td>
   <td style="text-align:right;"> 9,878(2,179) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 8,485 </td>
   <td style="text-align:right;"> 11,567 </td>
   <td style="text-align:right;"> 10,026(2,179) </td>
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
   <td style="text-align:right;"> -2.08 (0.55)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> -0.01 (0.03)     .84 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> -0.17 (0.18)     .35 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> -0.33 (0.07)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.04 (0.24)     .86 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> -0.04 (0.05)     .33 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 9.18 (0.25)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.33 (0.04)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.15 (0.04)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.17 (0.07)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.09 (0.02)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.52 (0.32)     .10 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.16 (0.25)     .52 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.01 (0.52)     .98 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.00 (0.01)     .64 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.01 (0.01)     .39 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.00 (0.00)     .46 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.01 (0.05)     .81 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.00 (0.04)     .99 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.05 (0.11)     .64 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 10.29 (0.47)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> 0.53 (0.29)     .07 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> 0.32 (0.09)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.32 (0.13)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> -0.04 (0.05)     .41 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.04 (0.75)     .96 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 0.71 (0.53)     .18 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 1.70 (1.41)     .23 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.00 (0.04)     .91 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.03 (0.04)     .48 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.01 (0.02)     .66 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.07 (0.17)     .68 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.18 (0.20)     .38 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 1.09 (0.84)     .20 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 3.19 (0.43)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.02 (0.01)     .04 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 1.26 (0.12)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 12.37 (4.30)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.96 (1.77)     .58 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 11.25 (2.68)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.04 (0.04)     .38 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 3.18 (3.71)     .39 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> -0.331 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> -0.046 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> -0.045 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 270 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> occasions </td>
   <td style="text-align:right;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> parameters </td>
   <td style="text-align:right;"> 41 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> LL </td>
   <td style="text-align:right;"> -4,128 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 8,338 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 8,485 </td>
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
   <td style="text-align:right;"> 44.94 (10.25)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.23 (0.25)     .36 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 1.29 (3.23)     .69 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.39 (0.07)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> 0.34 (0.37)     .36 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.02 (0.06)     .69 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 9.19 (0.25)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.33 (0.04)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.15 (0.04)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.17 (0.07)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.09 (0.02)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.51 (0.32)     .10 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.16 (0.25)     .52 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.02 (0.53)     .97 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.00 (0.01)     .64 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.01 (0.01)     .38 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.00 (0.00)     .52 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.01 (0.04)     .86 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.00 (0.04)     .99 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.04 (0.10)     .71 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 327.88 (8.75)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -7.07 (1.40)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -6.62 (1.90)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 5.83 (2.65)     .03 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 2.60 (0.98)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -35.45 (12.80)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 2.34 (10.14)     .82 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 1.19 (16.02)     .94 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.94 (0.35)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.26 (0.46)     .57 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.21 (0.20)     .28 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -3.38 (2.04)     .10 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -2.72 (1.66)     .10 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 3.53 (3.46)     .31 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 3.18 (0.43)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.02 (0.01)     .05 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 1.27 (0.12)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 4263.73 (507.44)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 27.16 (15.02)     .07 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 2119.94 (183.89)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.03 (0.04)     .45 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -154.09 (83.92)     .07 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> 0.386 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> 0.340 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> 0.025 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 270 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> occasions </td>
   <td style="text-align:right;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> parameters </td>
   <td style="text-align:right;"> 41 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> LL </td>
   <td style="text-align:right;"> -5,669 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 11,419 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 11,567 </td>
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
   <td style="text-align:right;"> -1.57 (0.68)     .02 </td>
   <td style="text-align:right;"> 28.29 (27.56)     .30 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> -0.04 (0.05)     .33 </td>
   <td style="text-align:right;"> 0.10 (0.58)     .87 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> -0.39 (0.27)     .16 </td>
   <td style="text-align:right;"> 10.21 (6.67)     .13 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> -0.35 (0.14)     .01 </td>
   <td style="text-align:right;"> 0.15 (0.14)     .29 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.70 (0.51)     .17 </td>
   <td style="text-align:right;"> 0.10 (0.60)     .87 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> -0.13 (0.09)     .14 </td>
   <td style="text-align:right;"> 0.14 (0.09)     .11 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 10.76 (0.60)    &lt;.01 </td>
   <td style="text-align:right;"> 12.07 (0.46)    &lt;.01 </td>
   <td style="text-align:right;"> 11.41(0.93) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.10 (0.10)     .31 </td>
   <td style="text-align:right;"> -0.23 (0.08)    &lt;.01 </td>
   <td style="text-align:right;"> -0.17(0.09) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.16 (0.07)     .02 </td>
   <td style="text-align:right;"> -0.16 (0.07)     .01 </td>
   <td style="text-align:right;"> -0.16(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.13 (0.05)     .01 </td>
   <td style="text-align:right;"> -0.13 (0.05)     .01 </td>
   <td style="text-align:right;"> -0.13(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.11 (0.04)    &lt;.01 </td>
   <td style="text-align:right;"> 0.11 (0.04)    &lt;.01 </td>
   <td style="text-align:right;"> 0.11(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.12 (0.43)     .78 </td>
   <td style="text-align:right;"> 0.12 (0.42)     .78 </td>
   <td style="text-align:right;"> 0.12(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.42 (0.41)     .31 </td>
   <td style="text-align:right;"> -0.42 (0.40)     .30 </td>
   <td style="text-align:right;"> -0.42(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -1.55 (0.70)     .03 </td>
   <td style="text-align:right;"> -1.57 (0.70)     .02 </td>
   <td style="text-align:right;"> -1.56(0.01) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.06 (0.02)    &lt;.01 </td>
   <td style="text-align:right;"> -0.05 (0.02)     .01 </td>
   <td style="text-align:right;"> -0.06(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.00 (0.01)     .91 </td>
   <td style="text-align:right;"> -0.00 (0.01)     .96 </td>
   <td style="text-align:right;"> -0.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.01 (0.01)     .10 </td>
   <td style="text-align:right;"> -0.01 (0.01)     .08 </td>
   <td style="text-align:right;"> -0.01(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.02 (0.08)     .84 </td>
   <td style="text-align:right;"> 0.02 (0.08)     .83 </td>
   <td style="text-align:right;"> 0.02(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.23 (0.08)    &lt;.01 </td>
   <td style="text-align:right;"> -0.23 (0.07)    &lt;.01 </td>
   <td style="text-align:right;"> -0.23(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.08 (0.13)     .54 </td>
   <td style="text-align:right;"> -0.07 (0.13)     .60 </td>
   <td style="text-align:right;"> -0.07(0.01) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 9.14 (0.64)    &lt;.01 </td>
   <td style="text-align:right;"> 466.52 (23.76)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> 0.19 (0.17)     .27 </td>
   <td style="text-align:right;"> -4.51 (3.60)     .21 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> 0.28 (0.10)    &lt;.01 </td>
   <td style="text-align:right;"> -11.41 (4.14)     .01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.07 (0.10)     .43 </td>
   <td style="text-align:right;"> 6.93 (2.09)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> -0.06 (0.04)     .17 </td>
   <td style="text-align:right;"> 2.09 (1.48)     .16 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 1.05 (0.57)     .07 </td>
   <td style="text-align:right;"> -35.09 (22.02)     .11 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 1.26 (0.53)     .02 </td>
   <td style="text-align:right;"> -21.40 (19.54)     .27 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 1.31 (0.82)     .11 </td>
   <td style="text-align:right;"> 38.77 (27.77)     .16 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.00 (0.03)     .92 </td>
   <td style="text-align:right;"> -0.01 (1.04)     .99 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.01 (0.03)     .83 </td>
   <td style="text-align:right;"> -0.44 (0.59)     .45 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.01 (0.01)     .31 </td>
   <td style="text-align:right;"> 0.20 (0.27)     .45 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.11 (0.14)     .41 </td>
   <td style="text-align:right;"> -4.63 (3.49)     .18 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.24 (0.16)     .12 </td>
   <td style="text-align:right;"> -2.30 (2.97)     .44 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.12 (0.25)     .64 </td>
   <td style="text-align:right;"> -5.17 (4.52)     .25 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 4.47 (0.68)    &lt;.01 </td>
   <td style="text-align:right;"> 4.42 (0.68)    &lt;.01 </td>
   <td style="text-align:right;"> 4.45(0.04) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.04 (0.02)     .06 </td>
   <td style="text-align:right;"> 0.04 (0.02)     .08 </td>
   <td style="text-align:right;"> 0.04(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 1.54 (0.20)    &lt;.01 </td>
   <td style="text-align:right;"> 1.57 (0.21)    &lt;.01 </td>
   <td style="text-align:right;"> 1.56(0.02) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 4.57 (1.60)    &lt;.01 </td>
   <td style="text-align:right;"> 8263.24 (1404.73)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.09 (0.13)     .49 </td>
   <td style="text-align:right;"> 23.60 (18.30)     .20 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 6.04 (1.05)    &lt;.01 </td>
   <td style="text-align:right;"> 3395.04 (431.72)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.16 (0.10)     .10 </td>
   <td style="text-align:right;"> -0.14 (0.10)     .14 </td>
   <td style="text-align:right;"> -0.15(0.01) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.06 (0.42)     .88 </td>
   <td style="text-align:right;"> -228.44 (145.86)     .12 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> -0.35 </td>
   <td style="text-align:right;"> 0.15 </td>
   <td style="text-align:right;"> -0.10(0.35) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> -0.70 </td>
   <td style="text-align:right;"> 0.10 </td>
   <td style="text-align:right;"> -0.30(0.57) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> -0.13 </td>
   <td style="text-align:right;"> 0.14 </td>
   <td style="text-align:right;"> 0.01(0.19) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 138 </td>
   <td style="text-align:right;"> 138 </td>
   <td style="text-align:right;"> 138.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> occasions </td>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:right;"> 5.00(0.00) </td>
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
   <td style="text-align:right;"> -1,835 </td>
   <td style="text-align:right;"> -2,924 </td>
   <td style="text-align:right;"> -2,380(  770) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 3,753 </td>
   <td style="text-align:right;"> 5,930 </td>
   <td style="text-align:right;"> 4,841(1,540) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 3,873 </td>
   <td style="text-align:right;"> 6,050 </td>
   <td style="text-align:right;"> 4,961(1,540) </td>
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
   <td style="text-align:right;"> -1.57 (0.68)     .02 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> -0.04 (0.05)     .33 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> -0.39 (0.27)     .16 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> -0.35 (0.14)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.70 (0.51)     .17 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> -0.13 (0.09)     .14 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 10.76 (0.60)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.10 (0.10)     .31 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.16 (0.07)     .02 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.13 (0.05)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.11 (0.04)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.12 (0.43)     .78 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.42 (0.41)     .31 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -1.55 (0.70)     .03 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.06 (0.02)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.00 (0.01)     .91 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.01 (0.01)     .10 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.02 (0.08)     .84 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.23 (0.08)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.08 (0.13)     .54 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 9.14 (0.64)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> 0.19 (0.17)     .27 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> 0.28 (0.10)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.07 (0.10)     .43 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> -0.06 (0.04)     .17 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 1.05 (0.57)     .07 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 1.26 (0.53)     .02 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 1.31 (0.82)     .11 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.00 (0.03)     .92 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.01 (0.03)     .83 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.01 (0.01)     .31 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.11 (0.14)     .41 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.24 (0.16)     .12 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.12 (0.25)     .64 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 4.47 (0.68)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.04 (0.02)     .06 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 1.54 (0.20)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 4.57 (1.60)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.09 (0.13)     .49 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 6.04 (1.05)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.16 (0.10)     .10 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.06 (0.42)     .88 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> -0.35 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> -0.70 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> -0.13 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 138 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> occasions </td>
   <td style="text-align:right;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> parameters </td>
   <td style="text-align:right;"> 41 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> LL </td>
   <td style="text-align:right;"> -1,835 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 3,753 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 3,873 </td>
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
   <td style="text-align:right;"> 28.29 (27.56)     .30 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.10 (0.58)     .87 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 10.21 (6.67)     .13 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.15 (0.14)     .29 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> 0.10 (0.60)     .87 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.14 (0.09)     .11 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 12.07 (0.46)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.23 (0.08)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.16 (0.07)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.13 (0.05)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.11 (0.04)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.12 (0.42)     .78 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.42 (0.40)     .30 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -1.57 (0.70)     .02 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.05 (0.02)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.00 (0.01)     .96 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.01 (0.01)     .08 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.02 (0.08)     .83 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.23 (0.07)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.07 (0.13)     .60 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 466.52 (23.76)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -4.51 (3.60)     .21 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -11.41 (4.14)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 6.93 (2.09)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 2.09 (1.48)     .16 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -35.09 (22.02)     .11 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -21.40 (19.54)     .27 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 38.77 (27.77)     .16 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.01 (1.04)     .99 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.44 (0.59)     .45 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.20 (0.27)     .45 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -4.63 (3.49)     .18 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -2.30 (2.97)     .44 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -5.17 (4.52)     .25 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 4.42 (0.68)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.04 (0.02)     .08 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 1.57 (0.21)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 8263.24 (1404.73)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 23.60 (18.30)     .20 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 3395.04 (431.72)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.14 (0.10)     .14 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -228.44 (145.86)     .12 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> 0.15 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> 0.10 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> 0.14 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 138 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> occasions </td>
   <td style="text-align:right;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> parameters </td>
   <td style="text-align:right;"> 41 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> LL </td>
   <td style="text-align:right;"> -2,924 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 5,930 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 6,050 </td>
  </tr>
</tbody>
</table>

# pef : Available models 

 Study **OCTO** have contributed the following outcome pairs to the IASLA-2015-Portland model pool: 
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
   <td style="text-align:left;"> octo </td>
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
   <td style="text-align:left;"> octo </td>
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
   <td style="text-align:right;"> -79.93 (19.18)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> -3.79 (12.86)     .77 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> -3.43 (10.65)     .75 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> -0.35 (0.08)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.58 (0.91)     .52 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> -0.02 (0.07)     .75 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 327.17 (8.63)    &lt;.01 </td>
   <td style="text-align:right;"> 327.17(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -7.54 (2.19)    &lt;.01 </td>
   <td style="text-align:right;"> -7.54(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -6.12 (1.86)    &lt;.01 </td>
   <td style="text-align:right;"> -6.12(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 5.66 (2.64)     .03 </td>
   <td style="text-align:right;"> 5.66(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 2.62 (0.98)     .01 </td>
   <td style="text-align:right;"> 2.62(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -34.61 (12.78)     .01 </td>
   <td style="text-align:right;"> -34.61(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 3.25 (10.29)     .75 </td>
   <td style="text-align:right;"> 3.25(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 1.86 (16.37)     .91 </td>
   <td style="text-align:right;"> 1.86(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.82 (0.46)     .07 </td>
   <td style="text-align:right;"> 0.82(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.16 (0.57)     .78 </td>
   <td style="text-align:right;"> -0.16(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.25 (0.23)     .28 </td>
   <td style="text-align:right;"> -0.25(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -3.87 (2.36)     .10 </td>
   <td style="text-align:right;"> -3.87(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -2.27 (2.08)     .27 </td>
   <td style="text-align:right;"> -2.27(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 1.14 (6.35)     .86 </td>
   <td style="text-align:right;"> 1.14(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 10.30 (0.47)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> 0.54 (0.32)     .09 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> 0.32 (0.09)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.31 (0.13)     .01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> -0.04 (0.05)     .42 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.01 (0.74)     .99 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 0.74 (0.52)     .15 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 1.68 (1.41)     .23 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.01 (0.04)     .86 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.03 (0.05)     .56 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.01 (0.02)     .65 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.08 (0.19)     .67 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.19 (0.23)     .40 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 1.01 (0.89)     .26 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 4215.38 (488.82)    &lt;.01 </td>
   <td style="text-align:right;"> 4215.38(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 39.57 (68.79)     .56 </td>
   <td style="text-align:right;"> 39.57(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 2105.13 (197.62)    &lt;.01 </td>
   <td style="text-align:right;"> 2105.13(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 12.11 (3.72)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 1.07 (2.13)     .62 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 11.12 (2.69)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -126.12 (106.82)     .24 </td>
   <td style="text-align:right;"> -126.12(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 3.30 (3.87)     .39 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> -0.354 </td>
   <td style="text-align:right;"> -0.35(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> -0.583 </td>
   <td style="text-align:right;"> -0.58(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> -0.022 </td>
   <td style="text-align:right;"> -0.02(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 263 </td>
   <td style="text-align:right;"> 263.00(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> occasions </td>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:right;"> 5.00(NA) </td>
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
   <td style="text-align:right;"> -6,297 </td>
   <td style="text-align:right;"> -6,297(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 12,676 </td>
   <td style="text-align:right;"> 12,676(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 12,823 </td>
   <td style="text-align:right;"> 12,823(NA) </td>
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
   <td style="text-align:right;"> -79.93 (19.18)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> -3.79 (12.86)     .77 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> -3.43 (10.65)     .75 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> -0.35 (0.08)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.58 (0.91)     .52 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> -0.02 (0.07)     .75 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 327.17 (8.63)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -7.54 (2.19)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -6.12 (1.86)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 5.66 (2.64)     .03 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 2.62 (0.98)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -34.61 (12.78)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 3.25 (10.29)     .75 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 1.86 (16.37)     .91 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.82 (0.46)     .07 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.16 (0.57)     .78 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.25 (0.23)     .28 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -3.87 (2.36)     .10 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -2.27 (2.08)     .27 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 1.14 (6.35)     .86 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 10.30 (0.47)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> 0.54 (0.32)     .09 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> 0.32 (0.09)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.31 (0.13)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> -0.04 (0.05)     .42 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.01 (0.74)     .99 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 0.74 (0.52)     .15 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 1.68 (1.41)     .23 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.01 (0.04)     .86 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.03 (0.05)     .56 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.01 (0.02)     .65 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.08 (0.19)     .67 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.19 (0.23)     .40 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 1.01 (0.89)     .26 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 4215.38 (488.82)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 39.57 (68.79)     .56 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 2105.13 (197.62)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 12.11 (3.72)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 1.07 (2.13)     .62 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 11.12 (2.69)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -126.12 (106.82)     .24 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 3.30 (3.87)     .39 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> -0.354 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> -0.583 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> -0.022 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 263 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> occasions </td>
   <td style="text-align:right;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> parameters </td>
   <td style="text-align:right;"> 41 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> LL </td>
   <td style="text-align:right;"> -6,297 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 12,676 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 12,823 </td>
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
   <td style="text-align:right;"> -70.87 (34.39)     .04 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> -1.34 (0.94)     .15 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> -6.48 (11.36)     .57 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> -0.38 (0.15)     .01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.79 (0.17)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> -0.05 (0.08)     .56 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 443.45 (28.24)    &lt;.01 </td>
   <td style="text-align:right;"> 443.45(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -7.54 (4.43)     .09 </td>
   <td style="text-align:right;"> -7.54(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -11.40 (4.15)     .01 </td>
   <td style="text-align:right;"> -11.40(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 7.04 (2.11)    &lt;.01 </td>
   <td style="text-align:right;"> 7.04(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 2.13 (1.48)     .15 </td>
   <td style="text-align:right;"> 2.13(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -38.37 (21.57)     .07 </td>
   <td style="text-align:right;"> -38.37(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -19.93 (19.56)     .31 </td>
   <td style="text-align:right;"> -19.93(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 39.27 (27.97)     .16 </td>
   <td style="text-align:right;"> 39.27(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.17 (0.99)     .87 </td>
   <td style="text-align:right;"> 0.17(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.58 (0.57)     .31 </td>
   <td style="text-align:right;"> -0.58(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.22 (0.26)     .39 </td>
   <td style="text-align:right;"> 0.22(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -4.06 (3.54)     .25 </td>
   <td style="text-align:right;"> -4.06(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -2.70 (3.13)     .39 </td>
   <td style="text-align:right;"> -2.70(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -5.70 (3.88)     .14 </td>
   <td style="text-align:right;"> -5.70(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 9.17 (0.64)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> 0.18 (0.18)     .31 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> 0.27 (0.10)     .01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.09 (0.10)     .36 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> -0.06 (0.04)     .18 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 1.06 (0.56)     .06 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 1.24 (0.52)     .02 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 1.25 (0.80)     .12 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.01 (0.03)     .85 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.01 (0.02)     .78 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.01 (0.01)     .53 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.10 (0.14)     .49 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.25 (0.15)     .09 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.11 (0.23)     .62 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 8329.51 (1416.88)    &lt;.01 </td>
   <td style="text-align:right;"> 8329.51(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 36.14 (20.55)     .08 </td>
   <td style="text-align:right;"> 36.14(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 3319.17 (416.82)    &lt;.01 </td>
   <td style="text-align:right;"> 3319.17(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 4.25 (1.30)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.08 (0.07)     .24 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 6.10 (1.04)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -268.96 (157.76)     .09 </td>
   <td style="text-align:right;"> -268.96(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.01 (0.30)     .97 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> -0.377 </td>
   <td style="text-align:right;"> -0.38(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> -0.793 </td>
   <td style="text-align:right;"> -0.79(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> -0.046 </td>
   <td style="text-align:right;"> -0.05(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 132 </td>
   <td style="text-align:right;"> 132.00(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> occasions </td>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:right;"> 5.00(NA) </td>
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
   <td style="text-align:right;"> -3,031 </td>
   <td style="text-align:right;"> -3,031(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 6,143 </td>
   <td style="text-align:right;"> 6,143(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 6,262 </td>
   <td style="text-align:right;"> 6,262(NA) </td>
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
   <td style="text-align:right;"> -70.87 (34.39)     .04 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> -1.34 (0.94)     .15 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> -6.48 (11.36)     .57 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> -0.38 (0.15)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.79 (0.17)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> -0.05 (0.08)     .56 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 443.45 (28.24)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -7.54 (4.43)     .09 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -11.40 (4.15)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 7.04 (2.11)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 2.13 (1.48)     .15 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -38.37 (21.57)     .07 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -19.93 (19.56)     .31 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 39.27 (27.97)     .16 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.17 (0.99)     .87 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.58 (0.57)     .31 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.22 (0.26)     .39 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -4.06 (3.54)     .25 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -2.70 (3.13)     .39 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -5.70 (3.88)     .14 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 9.17 (0.64)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> 0.18 (0.18)     .31 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> 0.27 (0.10)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.09 (0.10)     .36 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> -0.06 (0.04)     .18 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 1.06 (0.56)     .06 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 1.24 (0.52)     .02 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 1.25 (0.80)     .12 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.01 (0.03)     .85 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.01 (0.02)     .78 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.01 (0.01)     .53 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.10 (0.14)     .49 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.25 (0.15)     .09 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.11 (0.23)     .62 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 8329.51 (1416.88)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 36.14 (20.55)     .08 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 3319.17 (416.82)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 4.25 (1.30)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.08 (0.07)     .24 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 6.10 (1.04)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -268.96 (157.76)     .09 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.01 (0.30)     .97 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> -0.377 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> -0.793 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> -0.046 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 132 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> occasions </td>
   <td style="text-align:right;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> parameters </td>
   <td style="text-align:right;"> 41 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> LL </td>
   <td style="text-align:right;"> -3,031 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 6,143 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 6,262 </td>
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
