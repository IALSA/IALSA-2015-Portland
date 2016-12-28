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
   <td style="text-align:left;"> letter </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef </td>
   <td style="text-align:left;"> raven </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef </td>
   <td style="text-align:left;"> word_im </td>
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
   <td style="text-align:left;"> letter </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> lasa </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> aehplus </td>
   <td style="text-align:left;"> pef </td>
   <td style="text-align:left;"> raven </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> lasa </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> aehplus </td>
   <td style="text-align:left;"> pef </td>
   <td style="text-align:left;"> word_im </td>
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
   <td style="text-align:left;"> letter </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> lasa </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> aehplus </td>
   <td style="text-align:left;"> pef </td>
   <td style="text-align:left;"> raven </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> lasa </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> aehplus </td>
   <td style="text-align:left;"> pef </td>
   <td style="text-align:left;"> word_im </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
</tbody>
</table>


# female 

 Gender = _female_; Model type: _aehplus_;  Process (a) = _pef_; Process (b): *letter*, *raven*, *word_im*
<table>
 <thead>
  <tr>
   <th style="text-align:center;"> process </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> letter </th>
   <th style="text-align:right;"> raven </th>
   <th style="text-align:right;"> word_im </th>
   <th style="text-align:right;"> mean(sd) </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 74.21 (15.62)    &lt;.01 </td>
   <td style="text-align:right;"> 43.20 (8.05)    &lt;.01 </td>
   <td style="text-align:right;"> 37.66 (13.01)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> -0.01 (0.06)     .91 </td>
   <td style="text-align:right;"> -0.01 (0.04)     .76 </td>
   <td style="text-align:right;"> 0.01 (0.06)     .86 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 12.67 (3.60)    &lt;.01 </td>
   <td style="text-align:right;"> 0.53 (2.73)     .85 </td>
   <td style="text-align:right;"> 25.45 (4.52)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.22 (0.04)    &lt;.01 </td>
   <td style="text-align:right;"> 0.29 (0.05)    &lt;.01 </td>
   <td style="text-align:right;"> 0.16 (0.05)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.03 (0.30)     .92 </td>
   <td style="text-align:right;"> -0.14 (0.45)     .75 </td>
   <td style="text-align:right;"> 0.10 (0.57)     .86 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.11 (0.03)    &lt;.01 </td>
   <td style="text-align:right;"> 0.00 (0.03)     .85 </td>
   <td style="text-align:right;"> 0.14 (0.02)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 352.09 (4.52)    &lt;.01 </td>
   <td style="text-align:right;"> 352.05 (4.51)    &lt;.01 </td>
   <td style="text-align:right;"> 352.00 (4.52)    &lt;.01 </td>
   <td style="text-align:right;"> 352.05(0.05) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -3.80 (0.36)    &lt;.01 </td>
   <td style="text-align:right;"> -3.79 (0.36)    &lt;.01 </td>
   <td style="text-align:right;"> -3.77 (0.36)    &lt;.01 </td>
   <td style="text-align:right;"> -3.79(0.02) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -4.50 (0.36)    &lt;.01 </td>
   <td style="text-align:right;"> -4.50 (0.36)    &lt;.01 </td>
   <td style="text-align:right;"> -4.51 (0.36)    &lt;.01 </td>
   <td style="text-align:right;"> -4.50(0.01) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 3.08 (0.87)    &lt;.01 </td>
   <td style="text-align:right;"> 3.08 (0.87)    &lt;.01 </td>
   <td style="text-align:right;"> 3.07 (0.87)    &lt;.01 </td>
   <td style="text-align:right;"> 3.08(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 2.52 (0.41)    &lt;.01 </td>
   <td style="text-align:right;"> 2.52 (0.41)    &lt;.01 </td>
   <td style="text-align:right;"> 2.53 (0.41)    &lt;.01 </td>
   <td style="text-align:right;"> 2.52(0.01) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -30.62 (6.89)    &lt;.01 </td>
   <td style="text-align:right;"> -30.73 (6.88)    &lt;.01 </td>
   <td style="text-align:right;"> -30.55 (6.89)    &lt;.01 </td>
   <td style="text-align:right;"> -30.63(0.09) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -12.32 (7.36)     .09 </td>
   <td style="text-align:right;"> -12.36 (7.35)     .09 </td>
   <td style="text-align:right;"> -12.34 (7.36)     .09 </td>
   <td style="text-align:right;"> -12.34(0.02) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -3.75 (12.46)     .76 </td>
   <td style="text-align:right;"> -3.72 (12.49)     .77 </td>
   <td style="text-align:right;"> -3.83 (12.47)     .76 </td>
   <td style="text-align:right;"> -3.77(0.06) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.14 (0.03)    &lt;.01 </td>
   <td style="text-align:right;"> -0.14 (0.03)    &lt;.01 </td>
   <td style="text-align:right;"> -0.13 (0.03)    &lt;.01 </td>
   <td style="text-align:right;"> -0.14(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.08 (0.06)     .19 </td>
   <td style="text-align:right;"> -0.09 (0.06)     .18 </td>
   <td style="text-align:right;"> -0.09 (0.06)     .18 </td>
   <td style="text-align:right;"> -0.09(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.04 (0.03)     .19 </td>
   <td style="text-align:right;"> -0.04 (0.03)     .21 </td>
   <td style="text-align:right;"> -0.04 (0.03)     .21 </td>
   <td style="text-align:right;"> -0.04(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.82 (0.47)     .08 </td>
   <td style="text-align:right;"> -0.80 (0.47)     .09 </td>
   <td style="text-align:right;"> -0.84 (0.47)     .07 </td>
   <td style="text-align:right;"> -0.82(0.02) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.03 (0.52)     .95 </td>
   <td style="text-align:right;"> 0.07 (0.52)     .90 </td>
   <td style="text-align:right;"> 0.02 (0.52)     .96 </td>
   <td style="text-align:right;"> 0.04(0.02) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.93 (1.13)     .41 </td>
   <td style="text-align:right;"> -0.91 (1.15)     .43 </td>
   <td style="text-align:right;"> -0.85 (1.15)     .46 </td>
   <td style="text-align:right;"> -0.90(0.04) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 24.26 (0.35)    &lt;.01 </td>
   <td style="text-align:right;"> 17.82 (0.18)    &lt;.01 </td>
   <td style="text-align:right;"> 21.04 (0.28)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.34 (0.02)    &lt;.01 </td>
   <td style="text-align:right;"> -0.17 (0.02)    &lt;.01 </td>
   <td style="text-align:right;"> -0.29 (0.03)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.33 (0.03)    &lt;.01 </td>
   <td style="text-align:right;"> -0.15 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> -0.29 (0.02)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.85 (0.07)    &lt;.01 </td>
   <td style="text-align:right;"> 0.40 (0.03)    &lt;.01 </td>
   <td style="text-align:right;"> 0.47 (0.05)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.08 (0.03)     .01 </td>
   <td style="text-align:right;"> 0.01 (0.02)     .70 </td>
   <td style="text-align:right;"> 0.01 (0.03)     .59 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.58 (0.54)     .28 </td>
   <td style="text-align:right;"> -0.66 (0.28)     .02 </td>
   <td style="text-align:right;"> -0.46 (0.49)     .35 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -1.02 (0.54)     .06 </td>
   <td style="text-align:right;"> -0.04 (0.29)     .90 </td>
   <td style="text-align:right;"> -0.60 (0.48)     .21 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.71 (1.00)     .48 </td>
   <td style="text-align:right;"> -0.83 (0.56)     .14 </td>
   <td style="text-align:right;"> -0.94 (0.79)     .24 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> -0.00 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .96 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.01 (0.00)     .06 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .80 </td>
   <td style="text-align:right;"> -0.00 (0.00)     .62 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .86 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .83 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .33 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.01 (0.03)     .80 </td>
   <td style="text-align:right;"> 0.02 (0.02)     .49 </td>
   <td style="text-align:right;"> -0.03 (0.04)     .43 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.00 (0.04)     .92 </td>
   <td style="text-align:right;"> -0.04 (0.03)     .09 </td>
   <td style="text-align:right;"> -0.00 (0.05)     .97 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.13 (0.10)     .17 </td>
   <td style="text-align:right;"> -0.08 (0.06)     .12 </td>
   <td style="text-align:right;"> -0.05 (0.08)     .53 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 3902.40 (273.52)    &lt;.01 </td>
   <td style="text-align:right;"> 3922.55 (277.38)    &lt;.01 </td>
   <td style="text-align:right;"> 3921.81 (276.94)    &lt;.01 </td>
   <td style="text-align:right;"> 3915.59(11.43) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 1.15 (0.78)     .14 </td>
   <td style="text-align:right;"> 1.66 (1.29)     .20 </td>
   <td style="text-align:right;"> 1.61 (1.31)     .22 </td>
   <td style="text-align:right;"> 1.47(0.28) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 2096.08 (136.13)    &lt;.01 </td>
   <td style="text-align:right;"> 2082.58 (137.67)    &lt;.01 </td>
   <td style="text-align:right;"> 2083.64 (139.15)    &lt;.01 </td>
   <td style="text-align:right;"> 2087.43(7.51) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 28.91 (1.54)    &lt;.01 </td>
   <td style="text-align:right;"> 5.72 (0.43)    &lt;.01 </td>
   <td style="text-align:right;"> 13.88 (1.32)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.04 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .34 </td>
   <td style="text-align:right;"> 0.01 (0.01)     .53 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 5.95 (0.26)    &lt;.01 </td>
   <td style="text-align:right;"> 5.34 (0.23)    &lt;.01 </td>
   <td style="text-align:right;"> 16.63 (0.66)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 24.32 (13.29)     .07 </td>
   <td style="text-align:right;"> 20.23 (14.83)     .17 </td>
   <td style="text-align:right;"> 20.74 (14.71)     .16 </td>
   <td style="text-align:right;"> 21.76(2.23) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.12 (0.08)     .13 </td>
   <td style="text-align:right;"> 0.04 (0.03)     .19 </td>
   <td style="text-align:right;"> 0.10 (0.10)     .32 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> 0.221 </td>
   <td style="text-align:right;"> 0.288 </td>
   <td style="text-align:right;"> 0.16 </td>
   <td style="text-align:right;"> 0.22(0.06) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> -0.034 </td>
   <td style="text-align:right;"> -0.156 </td>
   <td style="text-align:right;"> 0.10 </td>
   <td style="text-align:right;"> -0.03(0.13) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> 0.113 </td>
   <td style="text-align:right;"> 0.005 </td>
   <td style="text-align:right;"> 0.14 </td>
   <td style="text-align:right;"> 0.09(0.07) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 782 </td>
   <td style="text-align:right;"> 782 </td>
   <td style="text-align:right;"> 782 </td>
   <td style="text-align:right;"> 782.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> occasions </td>
   <td style="text-align:right;"> 6 </td>
   <td style="text-align:right;"> 6 </td>
   <td style="text-align:right;"> 6 </td>
   <td style="text-align:right;"> 6.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> parameters </td>
   <td style="text-align:right;"> 41 </td>
   <td style="text-align:right;"> 41 </td>
   <td style="text-align:right;"> 41 </td>
   <td style="text-align:right;"> 41.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> LL </td>
   <td style="text-align:right;"> -22,762 </td>
   <td style="text-align:right;"> -22,940 </td>
   <td style="text-align:right;"> -23,544 </td>
   <td style="text-align:right;"> -2.308195e+04(410) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 45,606 </td>
   <td style="text-align:right;"> 45,961 </td>
   <td style="text-align:right;"> 47,170 </td>
   <td style="text-align:right;"> 4.624591e+04(820) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 45,797 </td>
   <td style="text-align:right;"> 46,153 </td>
   <td style="text-align:right;"> 47,361 </td>
   <td style="text-align:right;"> 4.643704e+04(820) </td>
  </tr>
</tbody>
</table>

##  letter 

 Gender = _female_;  Process (a) = *pef*; Process (b) = _letter_
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
   <td style="text-align:right;"> 74.21 (15.62)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> -0.01 (0.06)     .91 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 12.67 (3.60)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.22 (0.04)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.03 (0.30)     .92 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.11 (0.03)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 352.09 (4.52)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -3.80 (0.36)    &lt;.01 </td>
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
   <td style="text-align:right;"> 2.52 (0.41)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -30.62 (6.89)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -12.32 (7.36)     .09 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -3.75 (12.46)     .76 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.14 (0.03)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.08 (0.06)     .19 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.04 (0.03)     .19 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.82 (0.47)     .08 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.03 (0.52)     .95 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.93 (1.13)     .41 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 24.26 (0.35)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.34 (0.02)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.33 (0.03)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.85 (0.07)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.08 (0.03)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.58 (0.54)     .28 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -1.02 (0.54)     .06 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.71 (1.00)     .48 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.01 (0.00)     .06 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .86 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.01 (0.03)     .80 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.00 (0.04)     .92 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.13 (0.10)     .17 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 3902.40 (273.52)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 1.15 (0.78)     .14 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 2096.08 (136.13)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 28.91 (1.54)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.04 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 5.95 (0.26)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 24.32 (13.29)     .07 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.12 (0.08)     .13 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> 0.221 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> -0.034 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> 0.113 </td>
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
   <td style="text-align:right;"> -22,762 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 45,606 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 45,797 </td>
  </tr>
</tbody>
</table>

##  raven 

 Gender = _female_;  Process (a) = *pef*; Process (b) = _raven_
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
   <td style="text-align:right;"> 43.20 (8.05)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> -0.01 (0.04)     .76 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 0.53 (2.73)     .85 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.29 (0.05)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.14 (0.45)     .75 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.00 (0.03)     .85 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 352.05 (4.51)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -3.79 (0.36)    &lt;.01 </td>
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
   <td style="text-align:right;"> 2.52 (0.41)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -30.73 (6.88)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -12.36 (7.35)     .09 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -3.72 (12.49)     .77 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.14 (0.03)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.09 (0.06)     .18 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.04 (0.03)     .21 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.80 (0.47)     .09 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.07 (0.52)     .90 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.91 (1.15)     .43 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 17.82 (0.18)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.17 (0.02)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.15 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.40 (0.03)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.01 (0.02)     .70 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.66 (0.28)     .02 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.04 (0.29)     .90 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.83 (0.56)     .14 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.00 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.00 (0.00)     .80 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .83 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.02 (0.02)     .49 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.04 (0.03)     .09 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.08 (0.06)     .12 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 3922.55 (277.38)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 1.66 (1.29)     .20 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 2082.58 (137.67)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 5.72 (0.43)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00 (0.00)     .34 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 5.34 (0.23)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 20.23 (14.83)     .17 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.04 (0.03)     .19 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> 0.288 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> -0.156 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> 0.005 </td>
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
   <td style="text-align:right;"> -22,940 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 45,961 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 46,153 </td>
  </tr>
</tbody>
</table>

##  word_im 

 Gender = _female_;  Process (a) = *pef*; Process (b) = _word_im_
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
   <td style="text-align:right;"> 37.66 (13.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.01 (0.06)     .86 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 25.45 (4.52)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.16 (0.05)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> 0.10 (0.57)     .86 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.14 (0.02)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 352.00 (4.52)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -3.77 (0.36)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -4.51 (0.36)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 3.07 (0.87)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 2.53 (0.41)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -30.55 (6.89)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -12.34 (7.36)     .09 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -3.83 (12.47)     .76 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.13 (0.03)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.09 (0.06)     .18 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.04 (0.03)     .21 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.84 (0.47)     .07 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.02 (0.52)     .96 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.85 (1.15)     .46 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 21.04 (0.28)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.29 (0.03)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.29 (0.02)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.47 (0.05)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.01 (0.03)     .59 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.46 (0.49)     .35 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.60 (0.48)     .21 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.94 (0.79)     .24 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.00 (0.00)     .96 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.00 (0.00)     .62 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .33 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.03 (0.04)     .43 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.00 (0.05)     .97 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.05 (0.08)     .53 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 3921.81 (276.94)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 1.61 (1.31)     .22 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 2083.64 (139.15)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 13.88 (1.32)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.01 (0.01)     .53 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 16.63 (0.66)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 20.74 (14.71)     .16 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.10 (0.10)     .32 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> 0.16 </td>
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
   <td style="text-align:right;"> -23,544 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 47,170 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 47,361 </td>
  </tr>
</tbody>
</table>

## Summary 

 Study = _LASA_; Gender = _female_; Process (a) = _pef_

 Computed correlations:

 <table>
 <thead>
  <tr>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> letter </td>
   <td style="text-align:right;"> 0.22 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> raven </td>
   <td style="text-align:right;"> 0.29 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.16 </td>
  </tr>
</tbody>
</table>


<table>
 <thead>
  <tr>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> letter </td>
   <td style="text-align:right;"> -0.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> raven </td>
   <td style="text-align:right;"> -0.16 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.10 </td>
  </tr>
</tbody>
</table>


<table>
 <thead>
  <tr>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> letter </td>
   <td style="text-align:right;"> 0.11 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> raven </td>
   <td style="text-align:right;"> 0.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.14 </td>
  </tr>
</tbody>
</table>



P-values for corresponding covariances: 

 <table>
 <thead>
  <tr>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Covariance of Levels </td>
   <td style="text-align:right;"> letter </td>
   <td style="text-align:right;"> 0.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Levels </td>
   <td style="text-align:right;"> raven </td>
   <td style="text-align:right;"> 0.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Levels </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.00 </td>
  </tr>
</tbody>
</table>


<table>
 <thead>
  <tr>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Covariance of Slopes </td>
   <td style="text-align:right;"> letter </td>
   <td style="text-align:right;"> 0.91 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Slopes </td>
   <td style="text-align:right;"> raven </td>
   <td style="text-align:right;"> 0.76 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Slopes </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.86 </td>
  </tr>
</tbody>
</table>


<table>
 <thead>
  <tr>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Covariance of  Residuals </td>
   <td style="text-align:right;"> letter </td>
   <td style="text-align:right;"> 0.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of  Residuals </td>
   <td style="text-align:right;"> raven </td>
   <td style="text-align:right;"> 0.85 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of  Residuals </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.00 </td>
  </tr>
</tbody>
</table>



# male 

 Gender = _male_; Model type: _aehplus_;  Process (a) = _pef_; Process (b): *letter*, *raven*, *word_im*
<table>
 <thead>
  <tr>
   <th style="text-align:center;"> process </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> letter </th>
   <th style="text-align:right;"> raven </th>
   <th style="text-align:right;"> word_im </th>
   <th style="text-align:right;"> mean(sd) </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 79.73 (21.48)    &lt;.01 </td>
   <td style="text-align:right;"> 44.79 (11.81)    &lt;.01 </td>
   <td style="text-align:right;"> 35.22 (17.06)     .04 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.16 (0.11)     .13 </td>
   <td style="text-align:right;"> 0.19 (0.06)    &lt;.01 </td>
   <td style="text-align:right;"> 0.03 (0.11)     .81 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 14.97 (3.66)    &lt;.01 </td>
   <td style="text-align:right;"> 3.44 (2.98)     .25 </td>
   <td style="text-align:right;"> 19.63 (5.39)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.16 (0.04)    &lt;.01 </td>
   <td style="text-align:right;"> 0.18 (0.05)    &lt;.01 </td>
   <td style="text-align:right;"> 0.10 (0.05)     .04 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> 0.18 (0.12)     .13 </td>
   <td style="text-align:right;"> 0.54 (0.19)    &lt;.01 </td>
   <td style="text-align:right;"> 0.11 (0.44)     .80 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.12 (0.03)    &lt;.01 </td>
   <td style="text-align:right;"> 0.03 (0.03)     .25 </td>
   <td style="text-align:right;"> 0.10 (0.03)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 468.55 (6.54)    &lt;.01 </td>
   <td style="text-align:right;"> 468.33 (6.54)    &lt;.01 </td>
   <td style="text-align:right;"> 468.42 (6.53)    &lt;.01 </td>
   <td style="text-align:right;"> 468.43(0.11) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -5.40 (0.55)    &lt;.01 </td>
   <td style="text-align:right;"> -5.30 (0.56)    &lt;.01 </td>
   <td style="text-align:right;"> -5.31 (0.54)    &lt;.01 </td>
   <td style="text-align:right;"> -5.34(0.06) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -6.52 (0.47)    &lt;.01 </td>
   <td style="text-align:right;"> -6.51 (0.47)    &lt;.01 </td>
   <td style="text-align:right;"> -6.52 (0.47)    &lt;.01 </td>
   <td style="text-align:right;"> -6.52(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 4.44 (1.11)    &lt;.01 </td>
   <td style="text-align:right;"> 4.47 (1.11)    &lt;.01 </td>
   <td style="text-align:right;"> 4.45 (1.11)    &lt;.01 </td>
   <td style="text-align:right;"> 4.45(0.01) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 3.17 (0.50)    &lt;.01 </td>
   <td style="text-align:right;"> 3.19 (0.50)    &lt;.01 </td>
   <td style="text-align:right;"> 3.18 (0.50)    &lt;.01 </td>
   <td style="text-align:right;"> 3.18(0.01) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -52.92 (7.94)    &lt;.01 </td>
   <td style="text-align:right;"> -53.26 (7.94)    &lt;.01 </td>
   <td style="text-align:right;"> -52.98 (7.93)    &lt;.01 </td>
   <td style="text-align:right;"> -53.05(0.18) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.88 (8.45)     .92 </td>
   <td style="text-align:right;"> -0.57 (8.45)     .95 </td>
   <td style="text-align:right;"> -0.76 (8.45)     .93 </td>
   <td style="text-align:right;"> -0.73(0.16) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 1.13 (14.27)     .94 </td>
   <td style="text-align:right;"> 1.14 (14.32)     .94 </td>
   <td style="text-align:right;"> 1.32 (14.25)     .93 </td>
   <td style="text-align:right;"> 1.20(0.11) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.16 (0.04)    &lt;.01 </td>
   <td style="text-align:right;"> -0.16 (0.04)    &lt;.01 </td>
   <td style="text-align:right;"> -0.16 (0.04)    &lt;.01 </td>
   <td style="text-align:right;"> -0.16(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.05 (0.09)     .55 </td>
   <td style="text-align:right;"> -0.06 (0.09)     .46 </td>
   <td style="text-align:right;"> -0.06 (0.09)     .47 </td>
   <td style="text-align:right;"> -0.06(0.01) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.02 (0.04)     .63 </td>
   <td style="text-align:right;"> -0.03 (0.04)     .43 </td>
   <td style="text-align:right;"> -0.02 (0.04)     .55 </td>
   <td style="text-align:right;"> -0.02(0.01) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -1.87 (0.62)    &lt;.01 </td>
   <td style="text-align:right;"> -1.71 (0.62)    &lt;.01 </td>
   <td style="text-align:right;"> -1.86 (0.62)    &lt;.01 </td>
   <td style="text-align:right;"> -1.82(0.09) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -1.25 (0.68)     .07 </td>
   <td style="text-align:right;"> -1.35 (0.68)     .05 </td>
   <td style="text-align:right;"> -1.30 (0.68)     .06 </td>
   <td style="text-align:right;"> -1.30(0.05) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -1.53 (1.49)     .30 </td>
   <td style="text-align:right;"> -1.55 (1.47)     .29 </td>
   <td style="text-align:right;"> -1.59 (1.46)     .27 </td>
   <td style="text-align:right;"> -1.56(0.03) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 22.82 (0.35)    &lt;.01 </td>
   <td style="text-align:right;"> 17.65 (0.19)    &lt;.01 </td>
   <td style="text-align:right;"> 17.60 (0.28)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.37 (0.03)    &lt;.01 </td>
   <td style="text-align:right;"> -0.17 (0.02)    &lt;.01 </td>
   <td style="text-align:right;"> -0.20 (0.03)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.31 (0.02)    &lt;.01 </td>
   <td style="text-align:right;"> -0.15 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> -0.25 (0.02)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.76 (0.06)    &lt;.01 </td>
   <td style="text-align:right;"> 0.36 (0.03)    &lt;.01 </td>
   <td style="text-align:right;"> 0.41 (0.05)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.10 (0.03)    &lt;.01 </td>
   <td style="text-align:right;"> 0.06 (0.02)    &lt;.01 </td>
   <td style="text-align:right;"> 0.03 (0.02)     .25 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.71 (0.43)     .10 </td>
   <td style="text-align:right;"> -0.24 (0.24)     .32 </td>
   <td style="text-align:right;"> -0.38 (0.37)     .31 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.35 (0.44)     .43 </td>
   <td style="text-align:right;"> -0.45 (0.25)     .07 </td>
   <td style="text-align:right;"> 0.08 (0.36)     .83 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -2.16 (0.94)     .02 </td>
   <td style="text-align:right;"> -0.97 (0.50)     .05 </td>
   <td style="text-align:right;"> -0.89 (0.71)     .21 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> -0.00 (0.00)     .23 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.01 (0.00)     .08 </td>
   <td style="text-align:right;"> -0.00 (0.00)     .69 </td>
   <td style="text-align:right;"> -0.01 (0.00)     .03 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .49 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .72 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .43 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.06 (0.03)     .05 </td>
   <td style="text-align:right;"> 0.01 (0.02)     .79 </td>
   <td style="text-align:right;"> -0.03 (0.04)     .46 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.00 (0.03)     .95 </td>
   <td style="text-align:right;"> 0.01 (0.02)     .73 </td>
   <td style="text-align:right;"> 0.00 (0.04)     .92 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.01 (0.07)     .93 </td>
   <td style="text-align:right;"> -0.05 (0.05)     .35 </td>
   <td style="text-align:right;"> -0.22 (0.07)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 9161.99 (602.59)    &lt;.01 </td>
   <td style="text-align:right;"> 9164.55 (601.81)    &lt;.01 </td>
   <td style="text-align:right;"> 9149.29 (602.09)    &lt;.01 </td>
   <td style="text-align:right;"> 9158.61(8.17) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 14.66 (3.33)    &lt;.01 </td>
   <td style="text-align:right;"> 14.23 (3.27)    &lt;.01 </td>
   <td style="text-align:right;"> 14.14 (3.33)    &lt;.01 </td>
   <td style="text-align:right;"> 14.35(0.28) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 2629.74 (155.54)    &lt;.01 </td>
   <td style="text-align:right;"> 2638.85 (156.43)    &lt;.01 </td>
   <td style="text-align:right;"> 2638.22 (156.71)    &lt;.01 </td>
   <td style="text-align:right;"> 2635.60(5.09) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 26.81 (1.54)    &lt;.01 </td>
   <td style="text-align:right;"> 6.45 (0.52)    &lt;.01 </td>
   <td style="text-align:right;"> 12.55 (1.08)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.05 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> 0.01 (0.00)     .03 </td>
   <td style="text-align:right;"> 0.00 (0.01)     .61 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 5.56 (0.29)    &lt;.01 </td>
   <td style="text-align:right;"> 4.21 (0.20)    &lt;.01 </td>
   <td style="text-align:right;"> 14.11 (0.58)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 20.00 (32.63)     .54 </td>
   <td style="text-align:right;"> 20.21 (32.41)     .53 </td>
   <td style="text-align:right;"> 22.72 (32.84)     .49 </td>
   <td style="text-align:right;"> 20.98(1.51) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.18 (0.08)     .03 </td>
   <td style="text-align:right;"> -0.01 (0.04)     .69 </td>
   <td style="text-align:right;"> 0.04 (0.07)     .55 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> 0.16 </td>
   <td style="text-align:right;"> 0.184 </td>
   <td style="text-align:right;"> 0.10 </td>
   <td style="text-align:right;"> 0.15(0.04) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> 0.18 </td>
   <td style="text-align:right;"> 0.557 </td>
   <td style="text-align:right;"> 0.11 </td>
   <td style="text-align:right;"> 0.28(0.24) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> 0.12 </td>
   <td style="text-align:right;"> 0.033 </td>
   <td style="text-align:right;"> 0.10 </td>
   <td style="text-align:right;"> 0.09(0.05) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 800 </td>
   <td style="text-align:right;"> 800 </td>
   <td style="text-align:right;"> 800 </td>
   <td style="text-align:right;"> 800.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> occasions </td>
   <td style="text-align:right;"> 6 </td>
   <td style="text-align:right;"> 6 </td>
   <td style="text-align:right;"> 6 </td>
   <td style="text-align:right;"> 6.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> parameters </td>
   <td style="text-align:right;"> 41 </td>
   <td style="text-align:right;"> 41 </td>
   <td style="text-align:right;"> 41 </td>
   <td style="text-align:right;"> 41.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> LL </td>
   <td style="text-align:right;"> -22,701 </td>
   <td style="text-align:right;"> -22,669 </td>
   <td style="text-align:right;"> -23,259 </td>
   <td style="text-align:right;"> -2.287632e+04(332) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 45,483 </td>
   <td style="text-align:right;"> 45,421 </td>
   <td style="text-align:right;"> 46,600 </td>
   <td style="text-align:right;"> 4.583464e+04(663) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 45,676 </td>
   <td style="text-align:right;"> 45,613 </td>
   <td style="text-align:right;"> 46,792 </td>
   <td style="text-align:right;"> 4.602671e+04(663) </td>
  </tr>
</tbody>
</table>

##  letter 

 Gender = _male_;  Process (a) = *pef*; Process (b) = _letter_
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
   <td style="text-align:right;"> 79.73 (21.48)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.16 (0.11)     .13 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 14.97 (3.66)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.16 (0.04)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> 0.18 (0.12)     .13 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.12 (0.03)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 468.55 (6.54)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -5.40 (0.55)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -6.52 (0.47)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 4.44 (1.11)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 3.17 (0.50)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -52.92 (7.94)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.88 (8.45)     .92 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 1.13 (14.27)     .94 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.16 (0.04)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.05 (0.09)     .55 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.02 (0.04)     .63 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -1.87 (0.62)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -1.25 (0.68)     .07 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -1.53 (1.49)     .30 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 22.82 (0.35)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.37 (0.03)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.31 (0.02)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.76 (0.06)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.10 (0.03)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.71 (0.43)     .10 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.35 (0.44)     .43 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -2.16 (0.94)     .02 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.01 (0.00)     .08 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .49 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.06 (0.03)     .05 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.00 (0.03)     .95 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.01 (0.07)     .93 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 9161.99 (602.59)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 14.66 (3.33)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 2629.74 (155.54)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 26.81 (1.54)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.05 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 5.56 (0.29)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 20.00 (32.63)     .54 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.18 (0.08)     .03 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> 0.16 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> 0.18 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> 0.12 </td>
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
   <td style="text-align:right;"> -22,701 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 45,483 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 45,676 </td>
  </tr>
</tbody>
</table>

##  raven 

 Gender = _male_;  Process (a) = *pef*; Process (b) = _raven_
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
   <td style="text-align:right;"> 44.79 (11.81)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.19 (0.06)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 3.44 (2.98)     .25 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.18 (0.05)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> 0.54 (0.19)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.03 (0.03)     .25 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 468.33 (6.54)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -5.30 (0.56)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -6.51 (0.47)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 4.47 (1.11)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 3.19 (0.50)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -53.26 (7.94)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.57 (8.45)     .95 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 1.14 (14.32)     .94 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.16 (0.04)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.06 (0.09)     .46 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.03 (0.04)     .43 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -1.71 (0.62)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -1.35 (0.68)     .05 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -1.55 (1.47)     .29 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 17.65 (0.19)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.17 (0.02)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.15 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.36 (0.03)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.06 (0.02)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.24 (0.24)     .32 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.45 (0.25)     .07 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.97 (0.50)     .05 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.00 (0.00)     .69 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .72 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.01 (0.02)     .79 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.01 (0.02)     .73 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.05 (0.05)     .35 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 9164.55 (601.81)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 14.23 (3.27)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 2638.85 (156.43)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 6.45 (0.52)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.01 (0.00)     .03 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 4.21 (0.20)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 20.21 (32.41)     .53 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.01 (0.04)     .69 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> 0.184 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> 0.557 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> 0.033 </td>
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
   <td style="text-align:right;"> -22,669 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 45,421 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 45,613 </td>
  </tr>
</tbody>
</table>

##  word_im 

 Gender = _male_;  Process (a) = *pef*; Process (b) = _word_im_
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
   <td style="text-align:right;"> 35.22 (17.06)     .04 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.03 (0.11)     .81 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 19.63 (5.39)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.10 (0.05)     .04 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> 0.11 (0.44)     .80 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.10 (0.03)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 468.42 (6.53)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -5.31 (0.54)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -6.52 (0.47)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 4.45 (1.11)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 3.18 (0.50)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -52.98 (7.93)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.76 (8.45)     .93 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> 1.32 (14.25)     .93 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.16 (0.04)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.06 (0.09)     .47 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.02 (0.04)     .55 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -1.86 (0.62)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -1.30 (0.68)     .06 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -1.59 (1.46)     .27 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 17.60 (0.28)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.20 (0.03)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.25 (0.02)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.41 (0.05)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.03 (0.02)     .25 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.38 (0.37)     .31 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 0.08 (0.36)     .83 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.89 (0.71)     .21 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.00 (0.00)     .23 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.01 (0.00)     .03 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .43 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.03 (0.04)     .46 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.00 (0.04)     .92 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.22 (0.07)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 9149.29 (602.09)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 14.14 (3.33)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 2638.22 (156.71)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 12.55 (1.08)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00 (0.01)     .61 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 14.11 (0.58)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 22.72 (32.84)     .49 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.04 (0.07)     .55 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> 0.10 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> 0.11 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> 0.10 </td>
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
   <td style="text-align:right;"> -23,259 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 46,600 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 46,792 </td>
  </tr>
</tbody>
</table>

## Summary 

 Study = _LASA_; Gender = _male_; Process (a) = _pef_

 Computed correlations:

 <table>
 <thead>
  <tr>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> letter </td>
   <td style="text-align:right;"> 0.16 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> raven </td>
   <td style="text-align:right;"> 0.18 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.10 </td>
  </tr>
</tbody>
</table>


<table>
 <thead>
  <tr>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> letter </td>
   <td style="text-align:right;"> 0.18 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> raven </td>
   <td style="text-align:right;"> 0.56 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.11 </td>
  </tr>
</tbody>
</table>


<table>
 <thead>
  <tr>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> letter </td>
   <td style="text-align:right;"> 0.12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> raven </td>
   <td style="text-align:right;"> 0.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.10 </td>
  </tr>
</tbody>
</table>



P-values for corresponding covariances: 

 <table>
 <thead>
  <tr>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Covariance of Levels </td>
   <td style="text-align:right;"> letter </td>
   <td style="text-align:right;"> 0.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Levels </td>
   <td style="text-align:right;"> raven </td>
   <td style="text-align:right;"> 0.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Levels </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.04 </td>
  </tr>
</tbody>
</table>


<table>
 <thead>
  <tr>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Covariance of Slopes </td>
   <td style="text-align:right;"> letter </td>
   <td style="text-align:right;"> 0.13 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Slopes </td>
   <td style="text-align:right;"> raven </td>
   <td style="text-align:right;"> 0.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Slopes </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.81 </td>
  </tr>
</tbody>
</table>


<table>
 <thead>
  <tr>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Covariance of  Residuals </td>
   <td style="text-align:right;"> letter </td>
   <td style="text-align:right;"> 0.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of  Residuals </td>
   <td style="text-align:right;"> raven </td>
   <td style="text-align:right;"> 0.25 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of  Residuals </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.00 </td>
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
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] knitr_1.14                ggplot2_2.2.0             IalsaSynthesis_0.1.8.9000 MplusAutomation_0.6-4    
[5] magrittr_1.5             

loaded via a namespace (and not attached):
 [1] Rcpp_0.12.7      formatR_1.4      plyr_1.8.4       highr_0.6        tools_3.3.1      boot_1.3-18     
 [7] digest_0.6.10    evaluate_0.10    tibble_1.2       gtable_0.2.0     lattice_0.20-34  texreg_1.36.7   
[13] DBI_0.5-1        yaml_2.1.13      proto_0.3-10     coda_0.18-1      dplyr_0.5.0      stringr_1.1.0   
[19] htmlwidgets_0.7  grid_3.3.1       DT_0.2           R6_2.2.0         gsubfn_0.6-6     rmarkdown_1.1   
[25] pander_0.6.0     tidyr_0.6.0      readr_1.0.0      scales_0.4.1     htmltools_0.3.5  rsconnect_0.5   
[31] assertthat_0.1   testit_0.5       xtable_1.8-2     colorspace_1.2-7 stringi_1.1.2    lazyeval_0.2.0  
[37] munsell_0.4.3   
```
