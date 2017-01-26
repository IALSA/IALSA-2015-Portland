# ELSA : Seed report
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

 Study **ELSA** have contributed the following outcome pairs to the IASLA-2015-Portland model pool: 
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
   <td style="text-align:left;"> word_de </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip </td>
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
   <td style="text-align:left;"> elsa </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> aehplus </td>
   <td style="text-align:left;"> grip </td>
   <td style="text-align:left;"> word_de </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> elsa </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> aehplus </td>
   <td style="text-align:left;"> grip </td>
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
   <td style="text-align:left;"> elsa </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> aehplus </td>
   <td style="text-align:left;"> grip </td>
   <td style="text-align:left;"> word_de </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> elsa </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> aehplus </td>
   <td style="text-align:left;"> grip </td>
   <td style="text-align:left;"> word_im </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
</tbody>
</table>


# female 

 Gender = _female_; Model type: _aehplus_;  Process (a) = _grip_; Process (b): *word_de*, *word_im*
<table>
 <thead>
  <tr>
   <th style="text-align:center;"> process </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> word_de </th>
   <th style="text-align:right;"> word_im </th>
   <th style="text-align:right;"> mean(sd) </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 0.65 (0.17)    &lt;.01 </td>
   <td style="text-align:right;"> 0.48 (0.16)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.00 (0.00)     .99 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .92 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 0.09 (0.09)     .31 </td>
   <td style="text-align:right;"> 0.05 (0.08)     .52 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.13 (0.03)    &lt;.01 </td>
   <td style="text-align:right;"> 0.12 (0.04)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.01 (0.66)     .99 </td>
   <td style="text-align:right;"> -0.03 (0.29)     .92 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.02 (0.02)     .31 </td>
   <td style="text-align:right;"> 0.01 (0.02)     .52 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 20.28 (0.18)    &lt;.01 </td>
   <td style="text-align:right;"> 20.27 (0.18)    &lt;.01 </td>
   <td style="text-align:right;"> 20.27(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.29 (0.02)    &lt;.01 </td>
   <td style="text-align:right;"> -0.29 (0.02)    &lt;.01 </td>
   <td style="text-align:right;"> -0.29(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.25 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> -0.25 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> -0.25(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.99 (0.19)    &lt;.01 </td>
   <td style="text-align:right;"> 0.99 (0.19)    &lt;.01 </td>
   <td style="text-align:right;"> 0.99(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.21 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> 0.21 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> 0.21(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.18 (0.17)     .29 </td>
   <td style="text-align:right;"> -0.18 (0.17)     .30 </td>
   <td style="text-align:right;"> -0.18(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -1.61 (0.34)    &lt;.01 </td>
   <td style="text-align:right;"> -1.61 (0.34)    &lt;.01 </td>
   <td style="text-align:right;"> -1.61(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -1.40 (0.40)    &lt;.01 </td>
   <td style="text-align:right;"> -1.40 (0.40)    &lt;.01 </td>
   <td style="text-align:right;"> -1.40(0.00) </td>
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
   <td style="text-align:right;"> -0.01 (0.02)     .44 </td>
   <td style="text-align:right;"> -0.01 (0.02)     .46 </td>
   <td style="text-align:right;"> -0.01(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.00 (0.00)     .06 </td>
   <td style="text-align:right;"> -0.00 (0.00)     .05 </td>
   <td style="text-align:right;"> -0.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.00 (0.02)     .92 </td>
   <td style="text-align:right;"> 0.00 (0.02)     .94 </td>
   <td style="text-align:right;"> 0.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.05 (0.04)     .17 </td>
   <td style="text-align:right;"> 0.05 (0.04)     .19 </td>
   <td style="text-align:right;"> 0.05(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.00 (0.04)     .91 </td>
   <td style="text-align:right;"> 0.00 (0.04)     .92 </td>
   <td style="text-align:right;"> 0.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 3.89 (0.06)    &lt;.01 </td>
   <td style="text-align:right;"> 5.31 (0.05)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.04 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> -0.04 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.07 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> -0.06 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 1.00 (0.07)    &lt;.01 </td>
   <td style="text-align:right;"> 0.72 (0.06)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.02 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.01 (0.00)     .05 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.22 (0.06)    &lt;.01 </td>
   <td style="text-align:right;"> -0.04 (0.05)     .46 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.14 (0.12)     .24 </td>
   <td style="text-align:right;"> -0.23 (0.11)     .04 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.38 (0.16)     .02 </td>
   <td style="text-align:right;"> -0.32 (0.14)     .02 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.00 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> -0.00 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.00 (0.01)     .59 </td>
   <td style="text-align:right;"> 0.01 (0.01)     .05 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .56 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .31 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.01 (0.01)     .07 </td>
   <td style="text-align:right;"> -0.00 (0.01)     .60 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.01 (0.02)     .69 </td>
   <td style="text-align:right;"> 0.01 (0.01)     .69 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.01 (0.02)     .62 </td>
   <td style="text-align:right;"> 0.01 (0.02)     .60 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 17.96 (0.84)    &lt;.01 </td>
   <td style="text-align:right;"> 17.95 (0.84)    &lt;.01 </td>
   <td style="text-align:right;"> 17.96(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.02 (0.01)     .02 </td>
   <td style="text-align:right;"> 0.02 (0.01)     .02 </td>
   <td style="text-align:right;"> 0.02(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 8.39 (0.41)    &lt;.01 </td>
   <td style="text-align:right;"> 8.38 (0.41)    &lt;.01 </td>
   <td style="text-align:right;"> 8.39(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 1.44 (0.10)    &lt;.01 </td>
   <td style="text-align:right;"> 0.94 (0.09)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00 (0.00)     .74 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .12 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 1.91 (0.07)    &lt;.01 </td>
   <td style="text-align:right;"> 1.61 (0.06)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.15 (0.07)     .03 </td>
   <td style="text-align:right;"> -0.15 (0.07)     .03 </td>
   <td style="text-align:right;"> -0.15(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.01 (0.01)     .35 </td>
   <td style="text-align:right;"> -0.01 (0.01)     .45 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> 0.128 </td>
   <td style="text-align:right;"> 0.116 </td>
   <td style="text-align:right;"> 0.12(0.01) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> 0.000 </td>
   <td style="text-align:right;"> 0.000 </td>
   <td style="text-align:right;"> 0.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> 0.023 </td>
   <td style="text-align:right;"> 0.015 </td>
   <td style="text-align:right;"> 0.02(0.01) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 3,393 </td>
   <td style="text-align:right;"> 3,391 </td>
   <td style="text-align:right;"> 3392.00(1.41) </td>
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
   <td style="text-align:right;"> -37,326 </td>
   <td style="text-align:right;"> -36,379 </td>
   <td style="text-align:right;"> -3.685255e+04(  669) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 74,734 </td>
   <td style="text-align:right;"> 72,840 </td>
   <td style="text-align:right;"> 7.378709e+04(1,339) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 74,985 </td>
   <td style="text-align:right;"> 73,092 </td>
   <td style="text-align:right;"> 7.403839e+04(1,339) </td>
  </tr>
</tbody>
</table>

##  word_de 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _word_de_
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
   <td style="text-align:right;"> 0.65 (0.17)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.00 (0.00)     .99 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 0.09 (0.09)     .31 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.13 (0.03)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.01 (0.66)     .99 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.02 (0.02)     .31 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 20.28 (0.18)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.29 (0.02)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.25 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.99 (0.19)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.21 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.18 (0.17)     .29 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -1.61 (0.34)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -1.40 (0.40)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.01 (0.02)     .44 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.00 (0.00)     .06 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.00 (0.02)     .92 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.05 (0.04)     .17 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.00 (0.04)     .91 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 3.89 (0.06)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.04 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.07 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 1.00 (0.07)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.02 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.22 (0.06)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.14 (0.12)     .24 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.38 (0.16)     .02 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.00 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.00 (0.01)     .59 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .56 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.01 (0.01)     .07 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.01 (0.02)     .69 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.01 (0.02)     .62 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 17.96 (0.84)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.02 (0.01)     .02 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 8.39 (0.41)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 1.44 (0.10)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00 (0.00)     .74 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 1.91 (0.07)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.15 (0.07)     .03 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.01 (0.01)     .35 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> 0.128 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> 0.000 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> 0.023 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 3,393 </td>
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
   <td style="text-align:right;"> -37,326 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 74,734 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 74,985 </td>
  </tr>
</tbody>
</table>

##  word_im 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _word_im_
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
   <td style="text-align:right;"> 0.48 (0.16)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.00 (0.00)     .92 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 0.05 (0.08)     .52 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.12 (0.04)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.03 (0.29)     .92 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.01 (0.02)     .52 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 20.27 (0.18)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.29 (0.02)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.25 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.99 (0.19)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.21 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.18 (0.17)     .30 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -1.61 (0.34)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -1.40 (0.40)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.01 (0.02)     .46 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.00 (0.00)     .05 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.00 (0.02)     .94 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.05 (0.04)     .19 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.00 (0.04)     .92 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 5.31 (0.05)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.04 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.06 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.72 (0.06)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.01 (0.00)     .05 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.04 (0.05)     .46 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.23 (0.11)     .04 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.32 (0.14)     .02 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.00 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.01 (0.01)     .05 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .31 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.00 (0.01)     .60 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.01 (0.01)     .69 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.01 (0.02)     .60 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 17.95 (0.84)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.02 (0.01)     .02 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 8.38 (0.41)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 0.94 (0.09)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00 (0.00)     .12 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 1.61 (0.06)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.15 (0.07)     .03 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.01 (0.01)     .45 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> 0.116 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> 0.000 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> 0.015 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 3,391 </td>
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
   <td style="text-align:right;"> -36,379 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 72,840 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 73,092 </td>
  </tr>
</tbody>
</table>

## Summary 

 Study = _ELSA_; Gender = _female_; Process (a) = _grip_

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
   <td style="text-align:right;"> word_de </td>
   <td style="text-align:right;"> 0.13 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.12 </td>
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
   <td style="text-align:right;"> word_de </td>
   <td style="text-align:right;"> 0.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Slopes </td>
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
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> word_de </td>
   <td style="text-align:right;"> 0.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.01 </td>
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
   <td style="text-align:right;"> word_de </td>
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
   <td style="text-align:right;"> word_de </td>
   <td style="text-align:right;"> 0.99 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Slopes </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.92 </td>
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
   <td style="text-align:right;"> word_de </td>
   <td style="text-align:right;"> 0.31 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of  Residuals </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.52 </td>
  </tr>
</tbody>
</table>



# male 

 Gender = _male_; Model type: _aehplus_;  Process (a) = _grip_; Process (b): *word_de*, *word_im*
<table>
 <thead>
  <tr>
   <th style="text-align:center;"> process </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> word_de </th>
   <th style="text-align:right;"> word_im </th>
   <th style="text-align:right;"> mean(sd) </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 0.29 (0.26)     .27 </td>
   <td style="text-align:right;"> 0.13 (0.23)     .58 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> -0.01 (0.00)     .12 </td>
   <td style="text-align:right;"> -0.00 (0.00)     .12 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 0.15 (0.12)     .22 </td>
   <td style="text-align:right;"> 0.30 (0.12)     .01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.04 (0.04)     .27 </td>
   <td style="text-align:right;"> 0.02 (0.04)     .58 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.51 (0.40)     .21 </td>
   <td style="text-align:right;"> -0.44 (0.34)     .20 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.03 (0.02)     .22 </td>
   <td style="text-align:right;"> 0.06 (0.02)     .01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 34.31 (0.33)    &lt;.01 </td>
   <td style="text-align:right;"> 34.31 (0.33)    &lt;.01 </td>
   <td style="text-align:right;"> 34.31(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.45 (0.04)    &lt;.01 </td>
   <td style="text-align:right;"> -0.45 (0.04)    &lt;.01 </td>
   <td style="text-align:right;"> -0.45(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.46 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> -0.46 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> -0.46(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 1.21 (0.30)    &lt;.01 </td>
   <td style="text-align:right;"> 1.21 (0.30)    &lt;.01 </td>
   <td style="text-align:right;"> 1.21(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.29 (0.02)    &lt;.01 </td>
   <td style="text-align:right;"> 0.29 (0.02)    &lt;.01 </td>
   <td style="text-align:right;"> 0.29(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.35 (0.30)     .24 </td>
   <td style="text-align:right;"> -0.34 (0.30)     .24 </td>
   <td style="text-align:right;"> -0.34(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.32 (0.39)     .41 </td>
   <td style="text-align:right;"> -0.32 (0.39)     .41 </td>
   <td style="text-align:right;"> -0.32(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -2.09 (0.50)    &lt;.01 </td>
   <td style="text-align:right;"> -2.10 (0.50)    &lt;.01 </td>
   <td style="text-align:right;"> -2.09(0.00) </td>
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
   <td style="text-align:right;"> -0.03 (0.03)     .31 </td>
   <td style="text-align:right;"> -0.03 (0.03)     .35 </td>
   <td style="text-align:right;"> -0.03(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .53 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .56 </td>
   <td style="text-align:right;"> 0.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.01 (0.03)     .81 </td>
   <td style="text-align:right;"> -0.01 (0.03)     .82 </td>
   <td style="text-align:right;"> -0.01(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.13 (0.04)    &lt;.01 </td>
   <td style="text-align:right;"> -0.13 (0.04)    &lt;.01 </td>
   <td style="text-align:right;"> -0.13(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.17 (0.05)    &lt;.01 </td>
   <td style="text-align:right;"> -0.17 (0.05)    &lt;.01 </td>
   <td style="text-align:right;"> -0.17(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 3.28 (0.08)    &lt;.01 </td>
   <td style="text-align:right;"> 4.88 (0.07)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> 0.00 (0.01)     .63 </td>
   <td style="text-align:right;"> -0.03 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.07 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> -0.06 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.91 (0.07)    &lt;.01 </td>
   <td style="text-align:right;"> 0.75 (0.06)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.02 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.01 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.03 (0.07)     .62 </td>
   <td style="text-align:right;"> 0.00 (0.06)     .98 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.04 (0.10)     .67 </td>
   <td style="text-align:right;"> -0.13 (0.09)     .12 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.28 (0.11)     .01 </td>
   <td style="text-align:right;"> -0.10 (0.10)     .35 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.00 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> -0.00 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.01 (0.01)     .22 </td>
   <td style="text-align:right;"> 0.00 (0.01)     .98 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .90 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .04 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.02 (0.01)     .02 </td>
   <td style="text-align:right;"> -0.02 (0.01)     .04 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.03 (0.01)     .02 </td>
   <td style="text-align:right;"> -0.01 (0.01)     .57 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.01 (0.02)     .36 </td>
   <td style="text-align:right;"> -0.01 (0.02)     .44 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 37.57 (1.96)    &lt;.01 </td>
   <td style="text-align:right;"> 37.38 (1.96)    &lt;.01 </td>
   <td style="text-align:right;"> 37.48(0.14) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.05 (0.03)     .07 </td>
   <td style="text-align:right;"> 0.04 (0.03)     .11 </td>
   <td style="text-align:right;"> 0.04(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 18.05 (0.93)    &lt;.01 </td>
   <td style="text-align:right;"> 18.21 (0.94)    &lt;.01 </td>
   <td style="text-align:right;"> 18.13(0.11) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 1.42 (0.10)    &lt;.01 </td>
   <td style="text-align:right;"> 0.99 (0.08)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00 (0.00)     .14 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .02 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 1.71 (0.06)    &lt;.01 </td>
   <td style="text-align:right;"> 1.40 (0.06)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.41 (0.19)     .02 </td>
   <td style="text-align:right;"> -0.38 (0.18)     .04 </td>
   <td style="text-align:right;"> -0.40(0.02) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.01 (0.01)     .24 </td>
   <td style="text-align:right;"> -0.02 (0.01)     .06 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> 0.040 </td>
   <td style="text-align:right;"> 0.021 </td>
   <td style="text-align:right;"> 0.03(0.01) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> -0.500 </td>
   <td style="text-align:right;"> -0.390 </td>
   <td style="text-align:right;"> -0.45(0.08) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> 0.028 </td>
   <td style="text-align:right;"> 0.059 </td>
   <td style="text-align:right;"> 0.04(0.02) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 3,045 </td>
   <td style="text-align:right;"> 3,043 </td>
   <td style="text-align:right;"> 3044.00(1.41) </td>
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
   <td style="text-align:right;"> -35,105 </td>
   <td style="text-align:right;"> -34,252 </td>
   <td style="text-align:right;"> -3.467861e+04(  603) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 70,292 </td>
   <td style="text-align:right;"> 68,586 </td>
   <td style="text-align:right;"> 6.943921e+04(1,206) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 70,539 </td>
   <td style="text-align:right;"> 68,833 </td>
   <td style="text-align:right;"> 6.968607e+04(1,206) </td>
  </tr>
</tbody>
</table>

##  word_de 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _word_de_
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
   <td style="text-align:right;"> 0.29 (0.26)     .27 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> -0.01 (0.00)     .12 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 0.15 (0.12)     .22 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.04 (0.04)     .27 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.51 (0.40)     .21 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.03 (0.02)     .22 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 34.31 (0.33)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.45 (0.04)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.46 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 1.21 (0.30)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.29 (0.02)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.35 (0.30)     .24 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.32 (0.39)     .41 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -2.09 (0.50)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.03 (0.03)     .31 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .53 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.01 (0.03)     .81 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.13 (0.04)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.17 (0.05)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 3.28 (0.08)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> 0.00 (0.01)     .63 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.07 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.91 (0.07)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.02 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.03 (0.07)     .62 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.04 (0.10)     .67 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.28 (0.11)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.00 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.01 (0.01)     .22 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .90 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.02 (0.01)     .02 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.03 (0.01)     .02 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.01 (0.02)     .36 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 37.57 (1.96)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.05 (0.03)     .07 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 18.05 (0.93)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 1.42 (0.10)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00 (0.00)     .14 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 1.71 (0.06)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.41 (0.19)     .02 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.01 (0.01)     .24 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> 0.040 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> -0.500 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> 0.028 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 3,045 </td>
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
   <td style="text-align:right;"> -35,105 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 70,292 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 70,539 </td>
  </tr>
</tbody>
</table>

##  word_im 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _word_im_
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
   <td style="text-align:right;"> 0.13 (0.23)     .58 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> -0.00 (0.00)     .12 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 0.30 (0.12)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Levels) </td>
   <td style="text-align:right;"> 0.02 (0.04)     .58 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Slopes) </td>
   <td style="text-align:right;"> -0.44 (0.34)     .20 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> er </td>
   <td style="text-align:left;"> Corr (Residuals) </td>
   <td style="text-align:right;"> 0.06 (0.02)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 34.31 (0.33)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.45 (0.04)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.46 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 1.21 (0.30)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.29 (0.02)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.34 (0.30)     .24 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.32 (0.39)     .41 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -2.10 (0.50)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.03 (0.03)     .35 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .56 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.01 (0.03)     .82 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.13 (0.04)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.17 (0.05)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 4.88 (0.07)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.03 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.06 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.75 (0.06)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.01 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.00 (0.06)     .98 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.13 (0.09)     .12 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.10 (0.10)     .35 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.00 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.00 (0.01)     .98 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .04 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.02 (0.01)     .04 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.01 (0.01)     .57 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.01 (0.02)     .44 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 37.38 (1.96)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.04 (0.03)     .11 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 18.21 (0.94)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 0.99 (0.08)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00 (0.00)     .02 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 1.40 (0.06)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.38 (0.18)     .04 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.02 (0.01)     .06 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> 0.021 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> -0.390 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> 0.059 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 3,043 </td>
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
   <td style="text-align:right;"> -34,252 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 68,586 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 68,833 </td>
  </tr>
</tbody>
</table>

## Summary 

 Study = _ELSA_; Gender = _male_; Process (a) = _grip_

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
   <td style="text-align:right;"> word_de </td>
   <td style="text-align:right;"> 0.04 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.02 </td>
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
   <td style="text-align:right;"> word_de </td>
   <td style="text-align:right;"> -0.50 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> -0.39 </td>
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
   <td style="text-align:right;"> word_de </td>
   <td style="text-align:right;"> 0.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.06 </td>
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
   <td style="text-align:right;"> word_de </td>
   <td style="text-align:right;"> 0.27 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Levels </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.58 </td>
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
   <td style="text-align:right;"> word_de </td>
   <td style="text-align:right;"> 0.12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of Slopes </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.12 </td>
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
   <td style="text-align:right;"> word_de </td>
   <td style="text-align:right;"> 0.22 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Covariance of  Residuals </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 0.01 </td>
  </tr>
</tbody>
</table>


```

#Session Info
```

```
R version 3.3.2 (2016-10-31)
Platform: x86_64-w64-mingw32/x64 (64-bit)
Running under: Windows >= 8 x64 (build 9200)

locale:
[1] LC_COLLATE=English_United States.1252  LC_CTYPE=English_United States.1252    LC_MONETARY=English_United States.1252
[4] LC_NUMERIC=C                           LC_TIME=English_United States.1252    

attached base packages:
[1] grid      stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] knitr_1.15.1              IalsaSynthesis_0.1.8.9000 MplusAutomation_0.6-4     ggplot2_2.2.1            
[5] forestplot_1.7            checkmate_1.8.2           magrittr_1.5             

loaded via a namespace (and not attached):
 [1] Rcpp_0.12.8      munsell_0.4.3    testit_0.6       xtable_1.8-2     lattice_0.20-34  colorspace_1.3-2
 [7] R6_2.2.0         highr_0.6        plyr_1.8.4       stringr_1.1.0    dplyr_0.5.0      tools_3.3.2     
[13] DT_0.2           gtable_0.2.0     texreg_1.36.18   coda_0.19-1      DBI_0.5-1        htmltools_0.3.5 
[19] yaml_2.1.14      lazyeval_0.2.0   assertthat_0.1   digest_0.6.11    rprojroot_1.1    tibble_1.2      
[25] readr_1.0.0      tidyr_0.6.1      htmlwidgets_0.8  evaluate_0.10    gsubfn_0.6-6     rmarkdown_1.3   
[31] stringi_1.1.2    pander_0.6.0     scales_0.4.1     backports_1.0.4  boot_1.3-18      proto_1.0.0     
```
