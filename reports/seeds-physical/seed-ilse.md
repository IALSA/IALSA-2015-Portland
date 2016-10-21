# ILSE : Seed Report
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

 Study **ILSE** have contributed the following outcome pairs to the IASLA-2015-Portland model pool: 
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
   <td style="text-align:left;"> tug </td>
   <td style="text-align:right;"> 6 </td>
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
   <td style="text-align:left;"> ilse </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> a </td>
   <td style="text-align:left;"> grip </td>
   <td style="text-align:left;"> tug </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ilse </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> aeh </td>
   <td style="text-align:left;"> grip </td>
   <td style="text-align:left;"> tug </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ilse </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> aehplus </td>
   <td style="text-align:left;"> grip </td>
   <td style="text-align:left;"> tug </td>
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
   <td style="text-align:left;"> ilse </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> a </td>
   <td style="text-align:left;"> grip </td>
   <td style="text-align:left;"> tug </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ilse </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> aeh </td>
   <td style="text-align:left;"> grip </td>
   <td style="text-align:left;"> tug </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ilse </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> aehplus </td>
   <td style="text-align:left;"> grip </td>
   <td style="text-align:left;"> tug </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
</tbody>
</table>


# female 

 Gender = _female_; Model type: _aehplus_;  Process (a) = _grip_; Process (b): *tug*
<table>
 <thead>
  <tr>
   <th style="text-align:center;"> process </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> tug </th>
   <th style="text-align:right;"> mean(sd) </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 87.87 (13.62)    &lt;.01 </td>
   <td style="text-align:right;"> 87.87(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -6.81 (2.41)    &lt;.01 </td>
   <td style="text-align:right;"> -6.81(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> 2.82 (1.83)     .12 </td>
   <td style="text-align:right;"> 2.82(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -3.11 (3.59)     .39 </td>
   <td style="text-align:right;"> -3.11(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.63 (0.32)     .05 </td>
   <td style="text-align:right;"> 0.63(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -4.98 (3.75)     .18 </td>
   <td style="text-align:right;"> -4.98(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 1.79 (4.27)     .68 </td>
   <td style="text-align:right;"> 1.79(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.59 (0.33)     .07 </td>
   <td style="text-align:right;"> -0.59(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.67 (0.50)     .18 </td>
   <td style="text-align:right;"> 0.67(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.02 (0.05)     .73 </td>
   <td style="text-align:right;"> -0.02(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.34 (0.52)     .51 </td>
   <td style="text-align:right;"> 0.34(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.02 (0.61)     .97 </td>
   <td style="text-align:right;"> -0.02(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 4.86 (1.55)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> 0.21 (0.20)     .29 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.15 (0.21)     .49 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.51 (0.37)     .17 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.01 (0.02)     .77 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.23 (0.36)     .52 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 0.69 (0.40)     .09 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.00 (0.03)     .91 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.05 (0.05)     .36 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .89 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.05 (0.05)     .34 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.05 (0.05)     .36 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 422.82 (69.53)    &lt;.01 </td>
   <td style="text-align:right;"> 422.82(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 5.17 (1.44)    &lt;.01 </td>
   <td style="text-align:right;"> 5.17(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 167.40 (20.67)    &lt;.01 </td>
   <td style="text-align:right;"> 167.40(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -45.70 (8.95)    &lt;.01 </td>
   <td style="text-align:right;"> -45.70(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 1.42 (0.62)     .02 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00 (0.01)     .88 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 1.73 (0.27)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.03 (0.07)     .63 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> -1.39 (5.52)     .80 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.04 (0.14)     .80 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 1.68 (2.37)     .48 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> -0.057 </td>
   <td style="text-align:right;"> -0.06(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> 0.354 </td>
   <td style="text-align:right;"> 0.35(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> 0.099 </td>
   <td style="text-align:right;"> 0.10(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 224 </td>
   <td style="text-align:right;"> 224.00(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> occasions </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 3.00(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> parameters </td>
   <td style="text-align:right;"> 37 </td>
   <td style="text-align:right;"> 37.00(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> LL </td>
   <td style="text-align:right;"> -2,888 </td>
   <td style="text-align:right;"> -2,888(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 5,850 </td>
   <td style="text-align:right;"> 5,850(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 5,977 </td>
   <td style="text-align:right;"> 5,977(NA) </td>
  </tr>
</tbody>
</table>

##  tug 

 Gender = _female_;  Process (a) = *grip*; Process (b) = _tug_
<table>
 <thead>
  <tr>
   <th style="text-align:center;"> process </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> a </th>
   <th style="text-align:right;"> aeh </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 84.21 (13.39)    &lt;.01 </td>
   <td style="text-align:right;"> 84.87 (13.48)    &lt;.01 </td>
   <td style="text-align:right;"> 87.87 (13.62)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -6.02 (2.24)     .01 </td>
   <td style="text-align:right;"> -6.72 (2.29)    &lt;.01 </td>
   <td style="text-align:right;"> -6.81 (2.41)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> 2.43 (1.82)     .18 </td>
   <td style="text-align:right;"> 2.54 (1.82)     .16 </td>
   <td style="text-align:right;"> 2.82 (1.83)     .12 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> -3.60 (3.51)     .30 </td>
   <td style="text-align:right;"> -3.11 (3.59)     .39 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> 0.58 (0.31)     .06 </td>
   <td style="text-align:right;"> 0.63 (0.32)     .05 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> -4.98 (3.75)     .18 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> 1.79 (4.27)     .68 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.51 (0.31)     .10 </td>
   <td style="text-align:right;"> -0.59 (0.31)     .06 </td>
   <td style="text-align:right;"> -0.59 (0.33)     .07 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> 0.69 (0.48)     .15 </td>
   <td style="text-align:right;"> 0.67 (0.50)     .18 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> -0.01 (0.05)     .81 </td>
   <td style="text-align:right;"> -0.02 (0.05)     .73 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> 0.34 (0.52)     .51 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> -0.02 (0.61)     .97 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 4.68 (1.29)    &lt;.01 </td>
   <td style="text-align:right;"> 4.97 (1.45)    &lt;.01 </td>
   <td style="text-align:right;"> 4.86 (1.55)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> 0.28 (0.16)     .08 </td>
   <td style="text-align:right;"> 0.24 (0.18)     .19 </td>
   <td style="text-align:right;"> 0.21 (0.20)     .29 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.16 (0.18)     .37 </td>
   <td style="text-align:right;"> -0.15 (0.21)     .47 </td>
   <td style="text-align:right;"> -0.15 (0.21)     .49 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> -0.58 (0.37)     .11 </td>
   <td style="text-align:right;"> -0.51 (0.37)     .17 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> 0.00 (0.03)     .96 </td>
   <td style="text-align:right;"> 0.01 (0.02)     .77 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> -0.23 (0.36)     .52 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> 0.69 (0.40)     .09 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.01 (0.02)     .68 </td>
   <td style="text-align:right;"> 0.01 (0.02)     .78 </td>
   <td style="text-align:right;"> 0.00 (0.03)     .91 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> 0.06 (0.05)     .29 </td>
   <td style="text-align:right;"> 0.05 (0.05)     .36 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> 0.00 (0.00)     .95 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .89 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> 0.05 (0.05)     .34 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> -0.05 (0.05)     .36 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 427.75 (67.94)    &lt;.01 </td>
   <td style="text-align:right;"> 421.16 (68.11)    &lt;.01 </td>
   <td style="text-align:right;"> 422.82 (69.53)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 4.80 (1.26)    &lt;.01 </td>
   <td style="text-align:right;"> 4.94 (1.34)    &lt;.01 </td>
   <td style="text-align:right;"> 5.17 (1.44)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 176.02 (21.27)    &lt;.01 </td>
   <td style="text-align:right;"> 171.34 (20.64)    &lt;.01 </td>
   <td style="text-align:right;"> 167.40 (20.67)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -44.25 (8.36)    &lt;.01 </td>
   <td style="text-align:right;"> -44.63 (8.53)    &lt;.01 </td>
   <td style="text-align:right;"> -45.70 (8.95)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 1.39 (0.58)     .02 </td>
   <td style="text-align:right;"> 1.42 (0.61)     .02 </td>
   <td style="text-align:right;"> 1.42 (0.62)     .02 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00 (0.01)     .87 </td>
   <td style="text-align:right;"> 0.00 (0.01)     .88 </td>
   <td style="text-align:right;"> 0.00 (0.01)     .88 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 1.77 (0.25)    &lt;.01 </td>
   <td style="text-align:right;"> 1.74 (0.25)    &lt;.01 </td>
   <td style="text-align:right;"> 1.73 (0.27)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.03 (0.06)     .63 </td>
   <td style="text-align:right;"> -0.03 (0.07)     .64 </td>
   <td style="text-align:right;"> -0.03 (0.07)     .63 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> -1.32 (5.08)     .80 </td>
   <td style="text-align:right;"> -1.48 (5.43)     .79 </td>
   <td style="text-align:right;"> -1.39 (5.52)     .80 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.03 (0.14)     .82 </td>
   <td style="text-align:right;"> 0.04 (0.14)     .79 </td>
   <td style="text-align:right;"> 0.04 (0.14)     .80 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 1.34 (2.23)     .55 </td>
   <td style="text-align:right;"> 1.56 (2.30)     .50 </td>
   <td style="text-align:right;"> 1.68 (2.37)     .48 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> -0.054 </td>
   <td style="text-align:right;"> -0.060 </td>
   <td style="text-align:right;"> -0.057 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> 0.447 </td>
   <td style="text-align:right;"> 0.498 </td>
   <td style="text-align:right;"> 0.354 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> 0.076 </td>
   <td style="text-align:right;"> 0.091 </td>
   <td style="text-align:right;"> 0.099 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 227 </td>
   <td style="text-align:right;"> 225 </td>
   <td style="text-align:right;"> 224 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> occasions </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> parameters </td>
   <td style="text-align:right;"> 21 </td>
   <td style="text-align:right;"> 29 </td>
   <td style="text-align:right;"> 37 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> LL </td>
   <td style="text-align:right;"> -2,939 </td>
   <td style="text-align:right;"> -2,908 </td>
   <td style="text-align:right;"> -2,888 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 5,920 </td>
   <td style="text-align:right;"> 5,873 </td>
   <td style="text-align:right;"> 5,850 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 5,992 </td>
   <td style="text-align:right;"> 5,973 </td>
   <td style="text-align:right;"> 5,977 </td>
  </tr>
</tbody>
</table>

## Summary 

 Study = _ILSE_; Gender = _female_; Process (a) = _grip_

 Computed correlations:

 <table>
 <thead>
  <tr>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> a </th>
   <th style="text-align:right;"> aeh </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> tug </td>
   <td style="text-align:right;"> -0.05 </td>
   <td style="text-align:right;"> -0.06 </td>
   <td style="text-align:right;"> -0.06 </td>
  </tr>
</tbody>
</table>

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> a </th>
   <th style="text-align:right;"> aeh </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> tug </td>
   <td style="text-align:right;"> 0.45 </td>
   <td style="text-align:right;"> 0.50 </td>
   <td style="text-align:right;"> 0.35 </td>
  </tr>
</tbody>
</table>

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> a </th>
   <th style="text-align:right;"> aeh </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> tug </td>
   <td style="text-align:right;"> 0.08 </td>
   <td style="text-align:right;"> 0.09 </td>
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
   <th style="text-align:right;"> a </th>
   <th style="text-align:right;"> aeh </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Covariance of Levels </td>
   <td style="text-align:right;"> tug </td>
   <td style="text-align:right;"> 0.80 </td>
   <td style="text-align:right;"> 0.79 </td>
   <td style="text-align:right;"> 0.80 </td>
  </tr>
</tbody>
</table>

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> a </th>
   <th style="text-align:right;"> aeh </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Covariance of Slopes </td>
   <td style="text-align:right;"> tug </td>
   <td style="text-align:right;"> 0.82 </td>
   <td style="text-align:right;"> 0.79 </td>
   <td style="text-align:right;"> 0.80 </td>
  </tr>
</tbody>
</table>

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> a </th>
   <th style="text-align:right;"> aeh </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Covariance of  Residuals </td>
   <td style="text-align:right;"> tug </td>
   <td style="text-align:right;"> 0.55 </td>
   <td style="text-align:right;"> 0.50 </td>
   <td style="text-align:right;"> 0.48 </td>
  </tr>
</tbody>
</table>


# male 

 Gender = _male_; Model type: _aehplus_;  Process (a) = _grip_; Process (b): *tug*
<table>
 <thead>
  <tr>
   <th style="text-align:center;"> process </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> tug </th>
   <th style="text-align:right;"> mean(sd) </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 94.39 (12.56)    &lt;.01 </td>
   <td style="text-align:right;"> 94.39(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -2.60 (1.52)     .09 </td>
   <td style="text-align:right;"> -2.60(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> 0.89 (1.63)     .59 </td>
   <td style="text-align:right;"> 0.89(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.74 (3.50)     .83 </td>
   <td style="text-align:right;"> 0.74(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.64 (0.26)     .01 </td>
   <td style="text-align:right;"> 0.64(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -3.24 (3.71)     .38 </td>
   <td style="text-align:right;"> -3.24(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -2.65 (3.88)     .49 </td>
   <td style="text-align:right;"> -2.65(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.04 (0.20)     .84 </td>
   <td style="text-align:right;"> -0.04(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.12 (0.48)     .80 </td>
   <td style="text-align:right;"> 0.12(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.05 (0.03)     .15 </td>
   <td style="text-align:right;"> -0.05(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.58 (0.47)     .21 </td>
   <td style="text-align:right;"> 0.58(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.58 (0.48)     .23 </td>
   <td style="text-align:right;"> 0.58(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 4.63 (1.13)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> 0.26 (0.18)     .14 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.06 (0.16)     .71 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> -0.19 (0.25)     .44 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> -0.02 (0.02)     .35 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.13 (0.31)     .68 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> 0.42 (0.26)     .11 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.00 (0.02)     .85 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.02 (0.04)     .57 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .89 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.03 (0.05)     .53 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.02 (0.04)     .72 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 361.89 (51.82)    &lt;.01 </td>
   <td style="text-align:right;"> 361.89(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 1.50 (1.01)     .14 </td>
   <td style="text-align:right;"> 1.50(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 174.83 (16.90)    &lt;.01 </td>
   <td style="text-align:right;"> 174.83(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -22.60 (6.44)    &lt;.01 </td>
   <td style="text-align:right;"> -22.60(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 0.28 (0.42)     .50 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00 (0.01)     .51 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 1.85 (0.26)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.01 (0.05)     .80 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 2.92 (3.48)     .40 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.07 (0.08)     .33 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> -4.96 (1.95)     .01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> 0.29 </td>
   <td style="text-align:right;"> 0.29(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> 0.86 </td>
   <td style="text-align:right;"> 0.86(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> -0.28 </td>
   <td style="text-align:right;"> -0.28(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 252 </td>
   <td style="text-align:right;"> 252.00(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> occasions </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 3.00(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> parameters </td>
   <td style="text-align:right;"> 37 </td>
   <td style="text-align:right;"> 37.00(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> LL </td>
   <td style="text-align:right;"> -3,179 </td>
   <td style="text-align:right;"> -3,179(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 6,433 </td>
   <td style="text-align:right;"> 6,433(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 6,563 </td>
   <td style="text-align:right;"> 6,563(NA) </td>
  </tr>
</tbody>
</table>

##  tug 

 Gender = _male_;  Process (a) = *grip*; Process (b) = _tug_
<table>
 <thead>
  <tr>
   <th style="text-align:center;"> process </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> a </th>
   <th style="text-align:right;"> aeh </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 87.74 (11.48)    &lt;.01 </td>
   <td style="text-align:right;"> 87.80 (11.69)    &lt;.01 </td>
   <td style="text-align:right;"> 94.39 (12.56)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -1.90 (1.40)     .18 </td>
   <td style="text-align:right;"> -1.89 (1.46)     .19 </td>
   <td style="text-align:right;"> -2.60 (1.52)     .09 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> 0.14 (1.57)     .93 </td>
   <td style="text-align:right;"> 0.34 (1.57)     .83 </td>
   <td style="text-align:right;"> 0.89 (1.63)     .59 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> 0.13 (3.46)     .97 </td>
   <td style="text-align:right;"> 0.74 (3.50)     .83 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> 0.67 (0.26)     .01 </td>
   <td style="text-align:right;"> 0.64 (0.26)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> -3.24 (3.71)     .38 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> -2.65 (3.88)     .49 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.02 (0.19)     .92 </td>
   <td style="text-align:right;"> -0.02 (0.19)     .92 </td>
   <td style="text-align:right;"> -0.04 (0.20)     .84 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> 0.22 (0.47)     .64 </td>
   <td style="text-align:right;"> 0.12 (0.48)     .80 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> -0.05 (0.03)     .13 </td>
   <td style="text-align:right;"> -0.05 (0.03)     .15 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> 0.58 (0.47)     .21 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> 0.58 (0.48)     .23 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 4.91 (1.01)    &lt;.01 </td>
   <td style="text-align:right;"> 5.00 (1.06)    &lt;.01 </td>
   <td style="text-align:right;"> 4.63 (1.13)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> 0.25 (0.16)     .11 </td>
   <td style="text-align:right;"> 0.23 (0.17)     .18 </td>
   <td style="text-align:right;"> 0.26 (0.18)     .14 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.04 (0.14)     .80 </td>
   <td style="text-align:right;"> -0.04 (0.15)     .79 </td>
   <td style="text-align:right;"> -0.06 (0.16)     .71 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> -0.20 (0.24)     .41 </td>
   <td style="text-align:right;"> -0.19 (0.25)     .44 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> -0.02 (0.02)     .26 </td>
   <td style="text-align:right;"> -0.02 (0.02)     .35 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> 0.13 (0.31)     .68 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> 0.42 (0.26)     .11 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.00 (0.02)     .87 </td>
   <td style="text-align:right;"> 0.00 (0.02)     .91 </td>
   <td style="text-align:right;"> 0.00 (0.02)     .85 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> 0.03 (0.04)     .49 </td>
   <td style="text-align:right;"> 0.02 (0.04)     .57 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> -0.00 (0.00)     .87 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .89 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> -0.03 (0.05)     .53 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> 0.02 (0.04)     .72 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 390.49 (55.24)    &lt;.01 </td>
   <td style="text-align:right;"> 371.53 (52.31)    &lt;.01 </td>
   <td style="text-align:right;"> 361.89 (51.82)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 1.69 (0.94)     .07 </td>
   <td style="text-align:right;"> 1.66 (0.98)     .09 </td>
   <td style="text-align:right;"> 1.50 (1.01)     .14 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 175.40 (16.17)    &lt;.01 </td>
   <td style="text-align:right;"> 175.57 (16.72)    &lt;.01 </td>
   <td style="text-align:right;"> 174.83 (16.90)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -24.71 (6.31)    &lt;.01 </td>
   <td style="text-align:right;"> -23.81 (6.39)    &lt;.01 </td>
   <td style="text-align:right;"> -22.60 (6.44)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 0.35 (0.42)     .41 </td>
   <td style="text-align:right;"> 0.32 (0.42)     .43 </td>
   <td style="text-align:right;"> 0.28 (0.42)     .50 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00 (0.01)     .49 </td>
   <td style="text-align:right;"> 0.00 (0.01)     .46 </td>
   <td style="text-align:right;"> 0.00 (0.01)     .51 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 1.85 (0.25)    &lt;.01 </td>
   <td style="text-align:right;"> 1.84 (0.25)    &lt;.01 </td>
   <td style="text-align:right;"> 1.85 (0.26)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.01 (0.05)     .87 </td>
   <td style="text-align:right;"> -0.01 (0.05)     .83 </td>
   <td style="text-align:right;"> -0.01 (0.05)     .80 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 1.53 (3.36)     .65 </td>
   <td style="text-align:right;"> 2.54 (3.48)     .46 </td>
   <td style="text-align:right;"> 2.92 (3.48)     .40 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.08 (0.07)     .30 </td>
   <td style="text-align:right;"> 0.08 (0.08)     .30 </td>
   <td style="text-align:right;"> 0.07 (0.08)     .33 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> -5.36 (1.91)    &lt;.01 </td>
   <td style="text-align:right;"> -5.23 (1.90)     .01 </td>
   <td style="text-align:right;"> -4.96 (1.95)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> 0.13 </td>
   <td style="text-align:right;"> 0.23 </td>
   <td style="text-align:right;"> 0.29 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> 0.84 </td>
   <td style="text-align:right;"> 0.89 </td>
   <td style="text-align:right;"> 0.86 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> -0.30 </td>
   <td style="text-align:right;"> -0.29 </td>
   <td style="text-align:right;"> -0.28 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 253 </td>
   <td style="text-align:right;"> 253 </td>
   <td style="text-align:right;"> 252 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> occasions </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> parameters </td>
   <td style="text-align:right;"> 21 </td>
   <td style="text-align:right;"> 29 </td>
   <td style="text-align:right;"> 37 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> LL </td>
   <td style="text-align:right;"> -3,207 </td>
   <td style="text-align:right;"> -3,199 </td>
   <td style="text-align:right;"> -3,179 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 6,455 </td>
   <td style="text-align:right;"> 6,457 </td>
   <td style="text-align:right;"> 6,433 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 6,530 </td>
   <td style="text-align:right;"> 6,559 </td>
   <td style="text-align:right;"> 6,563 </td>
  </tr>
</tbody>
</table>

## Summary 

 Study = _ILSE_; Gender = _male_; Process (a) = _grip_

 Computed correlations:

 <table>
 <thead>
  <tr>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> a </th>
   <th style="text-align:right;"> aeh </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> tug </td>
   <td style="text-align:right;"> 0.13 </td>
   <td style="text-align:right;"> 0.23 </td>
   <td style="text-align:right;"> 0.29 </td>
  </tr>
</tbody>
</table>

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> a </th>
   <th style="text-align:right;"> aeh </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> tug </td>
   <td style="text-align:right;"> 0.84 </td>
   <td style="text-align:right;"> 0.89 </td>
   <td style="text-align:right;"> 0.86 </td>
  </tr>
</tbody>
</table>

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> a </th>
   <th style="text-align:right;"> aeh </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> tug </td>
   <td style="text-align:right;"> -0.30 </td>
   <td style="text-align:right;"> -0.29 </td>
   <td style="text-align:right;"> -0.28 </td>
  </tr>
</tbody>
</table>


P-values for corresponding covariances: 

 <table>
 <thead>
  <tr>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> a </th>
   <th style="text-align:right;"> aeh </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Covariance of Levels </td>
   <td style="text-align:right;"> tug </td>
   <td style="text-align:right;"> 0.65 </td>
   <td style="text-align:right;"> 0.46 </td>
   <td style="text-align:right;"> 0.40 </td>
  </tr>
</tbody>
</table>

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> a </th>
   <th style="text-align:right;"> aeh </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Covariance of Slopes </td>
   <td style="text-align:right;"> tug </td>
   <td style="text-align:right;"> 0.30 </td>
   <td style="text-align:right;"> 0.30 </td>
   <td style="text-align:right;"> 0.33 </td>
  </tr>
</tbody>
</table>

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> a </th>
   <th style="text-align:right;"> aeh </th>
   <th style="text-align:right;"> aehplus </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Covariance of  Residuals </td>
   <td style="text-align:right;"> tug </td>
   <td style="text-align:right;"> 0.00 </td>
   <td style="text-align:right;"> 0.01 </td>
   <td style="text-align:right;"> 0.01 </td>
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
[1] IalsaSynthesis_0.1.8.9000 MplusAutomation_0.6-4     knitr_1.14                ggplot2_2.1.0            
[5] magrittr_1.5             

loaded via a namespace (and not attached):
 [1] Rcpp_0.12.7      munsell_0.4.3    testit_0.5       xtable_1.8-2     lattice_0.20-34  colorspace_1.2-7
 [7] R6_2.2.0         stringr_1.1.0    highr_0.6        plyr_1.8.4       dplyr_0.5.0      tools_3.3.1     
[13] DT_0.2           grid_3.3.1       gtable_0.2.0     texreg_1.36.7    coda_0.18-1      DBI_0.5-1       
[19] htmltools_0.3.5  yaml_2.1.13      lazyeval_0.2.0   assertthat_0.1   digest_0.6.10    tibble_1.2      
[25] formatR_1.4      readr_1.0.0      tidyr_0.6.0      htmlwidgets_0.7  rsconnect_0.5    evaluate_0.10   
[31] gsubfn_0.6-6     rmarkdown_1.1    stringi_1.1.2    pander_0.6.0     scales_0.4.0     boot_1.3-18     
[37] proto_0.3-10    
```
