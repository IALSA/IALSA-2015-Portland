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
   <td style="text-align:left;"> gait </td>
   <td style="text-align:left;"> fluency </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait </td>
   <td style="text-align:left;"> word_de </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait </td>
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
   <td style="text-align:left;"> gait </td>
   <td style="text-align:left;"> fluency </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> elsa </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> aehplus </td>
   <td style="text-align:left;"> gait </td>
   <td style="text-align:left;"> word_de </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> elsa </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> aehplus </td>
   <td style="text-align:left;"> gait </td>
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
   <td style="text-align:left;"> gait </td>
   <td style="text-align:left;"> fluency </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> elsa </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> aehplus </td>
   <td style="text-align:left;"> gait </td>
   <td style="text-align:left;"> word_de </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> elsa </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> aehplus </td>
   <td style="text-align:left;"> gait </td>
   <td style="text-align:left;"> word_im </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
</tbody>
</table>


# female 

 Gender = _female_; Model type: _aehplus_;  Process (a) = _gait_; Process (b): *fluency*, *word_de*, *word_im*
<table>
 <thead>
  <tr>
   <th style="text-align:center;"> process </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> fluency </th>
   <th style="text-align:right;"> word_de </th>
   <th style="text-align:right;"> word_im </th>
   <th style="text-align:right;"> mean(sd) </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 0.83 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> 0.83 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> 0.83 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> 0.83(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> -0.01(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> -0.01(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.09 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> 0.09 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> 0.09 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> 0.09(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.01 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.01 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.00 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.01(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.03 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> -0.03 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> -0.03 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> -0.03(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.08 (0.02)    &lt;.01 </td>
   <td style="text-align:right;"> -0.08 (0.02)    &lt;.01 </td>
   <td style="text-align:right;"> -0.08 (0.02)    &lt;.01 </td>
   <td style="text-align:right;"> -0.08(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.13 (0.02)    &lt;.01 </td>
   <td style="text-align:right;"> -0.13 (0.02)    &lt;.01 </td>
   <td style="text-align:right;"> -0.14 (0.02)    &lt;.01 </td>
   <td style="text-align:right;"> -0.13(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.00 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.00 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.00 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.00 (0.00)     .89 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .96 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .96 </td>
   <td style="text-align:right;"> 0.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .13 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .15 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .12 </td>
   <td style="text-align:right;"> 0.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.00 (0.00)     .96 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .86 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .92 </td>
   <td style="text-align:right;"> 0.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.00 (0.00)     .28 </td>
   <td style="text-align:right;"> -0.00 (0.00)     .34 </td>
   <td style="text-align:right;"> -0.00 (0.00)     .32 </td>
   <td style="text-align:right;"> -0.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.00 (0.00)     .66 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .58 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .64 </td>
   <td style="text-align:right;"> 0.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 17.64 (0.18)    &lt;.01 </td>
   <td style="text-align:right;"> 3.92 (0.06)    &lt;.01 </td>
   <td style="text-align:right;"> 5.30 (0.05)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.08 (0.03)    &lt;.01 </td>
   <td style="text-align:right;"> -0.06 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> -0.05 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.16 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> -0.07 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> -0.06 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 3.34 (0.20)    &lt;.01 </td>
   <td style="text-align:right;"> 0.99 (0.06)    &lt;.01 </td>
   <td style="text-align:right;"> 0.77 (0.06)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.10 (0.02)    &lt;.01 </td>
   <td style="text-align:right;"> 0.02 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.01 (0.00)     .02 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.06 (0.19)     .74 </td>
   <td style="text-align:right;"> -0.18 (0.06)    &lt;.01 </td>
   <td style="text-align:right;"> -0.06 (0.05)     .22 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.23 (0.35)     .52 </td>
   <td style="text-align:right;"> -0.12 (0.12)     .33 </td>
   <td style="text-align:right;"> -0.15 (0.10)     .14 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.62 (0.50)     .22 </td>
   <td style="text-align:right;"> -0.36 (0.15)     .02 </td>
   <td style="text-align:right;"> -0.32 (0.14)     .02 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> -0.00 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> -0.00 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.03 (0.03)     .35 </td>
   <td style="text-align:right;"> 0.01 (0.01)     .46 </td>
   <td style="text-align:right;"> 0.01 (0.01)     .12 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.00 (0.00)     .09 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .31 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .27 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.04 (0.03)     .13 </td>
   <td style="text-align:right;"> 0.01 (0.01)     .15 </td>
   <td style="text-align:right;"> 0.00 (0.01)     .94 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.04 (0.05)     .35 </td>
   <td style="text-align:right;"> 0.00 (0.02)     .92 </td>
   <td style="text-align:right;"> -0.00 (0.02)     .94 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.14 (0.07)     .05 </td>
   <td style="text-align:right;"> -0.00 (0.02)     .92 </td>
   <td style="text-align:right;"> -0.00 (0.02)     .91 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 0.04 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.04 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.04 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.04(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.00 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.00 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 0.02 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.02 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.02 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.02(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.00 (0.00)     .01 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .01 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .01 </td>
   <td style="text-align:right;"> 0.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 18.06 (1.06)    &lt;.01 </td>
   <td style="text-align:right;"> 1.58 (0.08)    &lt;.01 </td>
   <td style="text-align:right;"> 1.01 (0.07)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.07 (0.02)    &lt;.01 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .01 </td>
   <td style="text-align:right;"> 0.01 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 15.87 (0.58)    &lt;.01 </td>
   <td style="text-align:right;"> 1.84 (0.05)    &lt;.01 </td>
   <td style="text-align:right;"> 1.59 (0.04)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.08 (0.14)     .54 </td>
   <td style="text-align:right;"> 0.00 (0.01)     .99 </td>
   <td style="text-align:right;"> -0.02 (0.01)     .07 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 0.15 (0.03)    &lt;.01 </td>
   <td style="text-align:right;"> 0.05 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> 0.04 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.00 (0.00)     .17 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .26 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .12 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 0.02 (0.01)     .05 </td>
   <td style="text-align:right;"> -0.00 (0.00)     .35 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .18 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> 0.187 </td>
   <td style="text-align:right;"> 0.208 </td>
   <td style="text-align:right;"> 0.219 </td>
   <td style="text-align:right;"> 0.20(0.02) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> Inf </td>
   <td style="text-align:right;"> NaN </td>
   <td style="text-align:right;"> NaN </td>
   <td style="text-align:right;"> Inf(NA) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> 0.036 </td>
   <td style="text-align:right;"> -0.015 </td>
   <td style="text-align:right;"> 0.022 </td>
   <td style="text-align:right;"> 0.01(0.03) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 3,510 </td>
   <td style="text-align:right;"> 3,510 </td>
   <td style="text-align:right;"> 3,510 </td>
   <td style="text-align:right;"> 3510.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> occasions </td>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:right;"> 5.00(0.00) </td>
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
   <td style="text-align:right;"> -33,697 </td>
   <td style="text-align:right;"> -20,817 </td>
   <td style="text-align:right;"> -19,541 </td>
   <td style="text-align:right;"> -2.468514e+04(7.830608e+03) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 67,476 </td>
   <td style="text-align:right;"> 41,716 </td>
   <td style="text-align:right;"> 39,165 </td>
   <td style="text-align:right;"> 4.945229e+04(1.566122e+04) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 67,729 </td>
   <td style="text-align:right;"> 41,969 </td>
   <td style="text-align:right;"> 39,417 </td>
   <td style="text-align:right;"> 4.970499e+04(1.566122e+04) </td>
  </tr>
</tbody>
</table>

##  fluency 

 Gender = _female_;  Process (a) = *gait*; Process (b) = _fluency_
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
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 0.83 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.09 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.01 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.03 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.08 (0.02)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.13 (0.02)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.00 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.00 (0.00)     .89 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .13 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.00 (0.00)     .96 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.00 (0.00)     .28 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.00 (0.00)     .66 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 17.64 (0.18)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.08 (0.03)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.16 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 3.34 (0.20)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.10 (0.02)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.06 (0.19)     .74 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.23 (0.35)     .52 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.62 (0.50)     .22 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.03 (0.03)     .35 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> -0.00 (0.00)     .09 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.04 (0.03)     .13 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.04 (0.05)     .35 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.14 (0.07)     .05 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 0.04 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 0.02 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.00 (0.00)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 18.06 (1.06)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.07 (0.02)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 15.87 (0.58)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.08 (0.14)     .54 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 0.15 (0.03)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.00 (0.00)     .17 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 0.02 (0.01)     .05 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> 0.187 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> Inf </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> 0.036 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 3,510 </td>
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
   <td style="text-align:right;"> -33,697 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 67,476 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 67,729 </td>
  </tr>
</tbody>
</table>

##  word_de 

 Gender = _female_;  Process (a) = *gait*; Process (b) = _word_de_

```
Warning in FUN(newX[, i], ...): no non-missing arguments to min; returning Inf
```

```
Warning in FUN(newX[, i], ...): no non-missing arguments to max; returning -Inf
```

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
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 0.83 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.09 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.01 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.03 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.08 (0.02)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.13 (0.02)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.00 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.00 (0.00)     .96 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .15 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.00 (0.00)     .86 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.00 (0.00)     .34 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.00 (0.00)     .58 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 3.92 (0.06)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.06 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.07 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.99 (0.06)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.02 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.18 (0.06)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.12 (0.12)     .33 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.36 (0.15)     .02 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.00 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.01 (0.01)     .46 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .31 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.01 (0.01)     .15 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.00 (0.02)     .92 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.00 (0.02)     .92 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 0.04 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 0.02 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.00 (0.00)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 1.58 (0.08)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00 (0.00)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 1.84 (0.05)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.00 (0.01)     .99 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 0.05 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.00 (0.00)     .26 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> -0.00 (0.00)     .35 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> 0.208 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> NaN </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> -0.015 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 3,510 </td>
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
   <td style="text-align:right;"> -20,817 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 41,716 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 41,969 </td>
  </tr>
</tbody>
</table>

##  word_im 

 Gender = _female_;  Process (a) = *gait*; Process (b) = _word_im_

```
Warning in FUN(newX[, i], ...): no non-missing arguments to min; returning Inf

Warning in FUN(newX[, i], ...): no non-missing arguments to max; returning -Inf
```

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
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 0.83 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.09 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.00 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.03 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.08 (0.02)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.14 (0.02)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.00 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.00 (0.00)     .96 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .12 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.00 (0.00)     .92 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.00 (0.00)     .32 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> 0.00 (0.00)     .64 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 5.30 (0.05)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.05 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.06 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.77 (0.06)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.01 (0.00)     .02 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.06 (0.05)     .22 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.15 (0.10)     .14 </td>
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
   <td style="text-align:right;"> 0.01 (0.01)     .12 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .27 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.00 (0.01)     .94 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.00 (0.02)     .94 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.00 (0.02)     .91 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 0.04 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 0.02 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.00 (0.00)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 1.01 (0.07)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.01 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 1.59 (0.04)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.02 (0.01)     .07 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 0.04 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.00 (0.00)     .12 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 0.00 (0.00)     .18 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> 0.219 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> NaN </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> 0.022 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 3,510 </td>
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
   <td style="text-align:right;"> -19,541 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 39,165 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 39,417 </td>
  </tr>
</tbody>
</table>

## Summary 

 Study = _ELSA_; Gender = _female_; Process (a) = _gait_

 Computed correlations:

 

label                    process_b   aehplus
----------------------  ----------  --------
Correlation of Levels      fluency      0.19
Correlation of Levels      word_de      0.21
Correlation of Levels      word_im      0.22



label                    process_b   aehplus
----------------------  ----------  --------
Correlation of Slopes      fluency       Inf
Correlation of Slopes      word_de       NaN
Correlation of Slopes      word_im       NaN



label                       process_b   aehplus
-------------------------  ----------  --------
Correlation of Residuals      fluency      0.04
Correlation of Residuals      word_de     -0.02
Correlation of Residuals      word_im      0.02


P-values for corresponding covariances: 

 

label                   process_b   aehplus
---------------------  ----------  --------
Covariance of Levels      fluency      0.00
Covariance of Levels      word_de      0.00
Covariance of Levels      word_im      0.00



label                   process_b   aehplus
---------------------  ----------  --------
Covariance of Slopes      fluency      0.17
Covariance of Slopes      word_de      0.26
Covariance of Slopes      word_im      0.12



label                       process_b   aehplus
-------------------------  ----------  --------
Covariance of  Residuals      fluency      0.05
Covariance of  Residuals      word_de      0.35
Covariance of  Residuals      word_im      0.18


# male 

 Gender = _male_; Model type: _aehplus_;  Process (a) = _gait_; Process (b): *fluency*, *word_de*, *word_im*

```
Warning in FUN(newX[, i], ...): no non-missing arguments to min; returning Inf

Warning in FUN(newX[, i], ...): no non-missing arguments to max; returning -Inf
```

<table>
 <thead>
  <tr>
   <th style="text-align:center;"> process </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> fluency </th>
   <th style="text-align:right;"> word_de </th>
   <th style="text-align:right;"> word_im </th>
   <th style="text-align:right;"> mean(sd) </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 0.86 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> 0.86 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> 0.86 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> 0.86(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> -0.01(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> -0.01(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.11 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> 0.11 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> 0.11 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> 0.11(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.00 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.00 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.00 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.04 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> -0.04 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> -0.04 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> -0.04(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.06 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> -0.06 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> -0.06 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> -0.06(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.06 (0.02)    &lt;.01 </td>
   <td style="text-align:right;"> -0.06 (0.02)    &lt;.01 </td>
   <td style="text-align:right;"> -0.06 (0.02)    &lt;.01 </td>
   <td style="text-align:right;"> -0.06(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.00 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.00 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.00 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.00 (0.00)     .25 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .25 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .23 </td>
   <td style="text-align:right;"> 0.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .66 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .63 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .66 </td>
   <td style="text-align:right;"> 0.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.00 (0.00)     .83 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .82 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .83 </td>
   <td style="text-align:right;"> 0.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.00 (0.00)     .75 </td>
   <td style="text-align:right;"> -0.00 (0.00)     .71 </td>
   <td style="text-align:right;"> -0.00 (0.00)     .71 </td>
   <td style="text-align:right;"> -0.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.00 (0.00)     .78 </td>
   <td style="text-align:right;"> -0.00 (0.00)     .76 </td>
   <td style="text-align:right;"> -0.00 (0.00)     .81 </td>
   <td style="text-align:right;"> -0.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 18.25 (0.26)    &lt;.01 </td>
   <td style="text-align:right;"> 3.35 (0.08)    &lt;.01 </td>
   <td style="text-align:right;"> 4.90 (0.07)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.07 (0.04)     .06 </td>
   <td style="text-align:right;"> -0.02 (0.01)     .11 </td>
   <td style="text-align:right;"> -0.03 (0.01)     .01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.15 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> -0.07 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> -0.05 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 2.76 (0.22)    &lt;.01 </td>
   <td style="text-align:right;"> 0.89 (0.07)    &lt;.01 </td>
   <td style="text-align:right;"> 0.74 (0.06)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.08 (0.02)    &lt;.01 </td>
   <td style="text-align:right;"> 0.02 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.02 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.18 (0.23)     .45 </td>
   <td style="text-align:right;"> 0.01 (0.07)     .88 </td>
   <td style="text-align:right;"> -0.01 (0.06)     .84 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.58 (0.30)     .06 </td>
   <td style="text-align:right;"> -0.11 (0.10)     .25 </td>
   <td style="text-align:right;"> -0.18 (0.08)     .04 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.12 (0.40)     .77 </td>
   <td style="text-align:right;"> -0.27 (0.11)     .01 </td>
   <td style="text-align:right;"> -0.04 (0.10)     .69 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> -0.00 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> -0.00 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.04 (0.03)     .23 </td>
   <td style="text-align:right;"> 0.00 (0.01)     .79 </td>
   <td style="text-align:right;"> 0.01 (0.01)     .56 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .06 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .70 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .08 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.04 (0.03)     .23 </td>
   <td style="text-align:right;"> -0.01 (0.01)     .19 </td>
   <td style="text-align:right;"> -0.01 (0.01)     .24 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.04 (0.04)     .35 </td>
   <td style="text-align:right;"> -0.02 (0.01)     .12 </td>
   <td style="text-align:right;"> -0.00 (0.01)     .80 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.06 (0.06)     .28 </td>
   <td style="text-align:right;"> -0.02 (0.02)     .16 </td>
   <td style="text-align:right;"> -0.03 (0.02)     .05 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 0.04 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.04 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.04 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.04(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.00 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.00 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 0.02 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.02 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.02 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> 0.02(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.00 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> -0.00 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> -0.00 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> -0.00(0.00) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 19.04 (1.16)    &lt;.01 </td>
   <td style="text-align:right;"> 1.44 (0.08)    &lt;.01 </td>
   <td style="text-align:right;"> 1.00 (0.07)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.03 (0.02)     .29 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .06 </td>
   <td style="text-align:right;"> 0.01 (0.00)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 17.40 (0.68)    &lt;.01 </td>
   <td style="text-align:right;"> 1.74 (0.04)    &lt;.01 </td>
   <td style="text-align:right;"> 1.47 (0.04)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.23 (0.13)     .08 </td>
   <td style="text-align:right;"> -0.00 (0.01)     .75 </td>
   <td style="text-align:right;"> -0.02 (0.01)     .02 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 0.20 (0.03)    &lt;.01 </td>
   <td style="text-align:right;"> 0.06 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> 0.04 (0.01)    &lt;.01 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.00 (0.00)     .62 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .74 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .44 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 0.00 (0.01)     .89 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .16 </td>
   <td style="text-align:right;"> 0.00 (0.00)     .94 </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> 0.2218 </td>
   <td style="text-align:right;"> 0.231 </td>
   <td style="text-align:right;"> 0.21 </td>
   <td style="text-align:right;"> 0.22(0.01) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> NaN </td>
   <td style="text-align:right;"> NaN </td>
   <td style="text-align:right;"> NaN </td>
   <td style="text-align:right;"> --- </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> 0.0034 </td>
   <td style="text-align:right;"> 0.027 </td>
   <td style="text-align:right;"> 0.00 </td>
   <td style="text-align:right;"> 0.01(0.01) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 3,090 </td>
   <td style="text-align:right;"> 3,090 </td>
   <td style="text-align:right;"> 3,088 </td>
   <td style="text-align:right;"> 3089.33(1.15) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> occasions </td>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:right;"> 5.00(0.00) </td>
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
   <td style="text-align:right;"> -29,489 </td>
   <td style="text-align:right;"> -17,627 </td>
   <td style="text-align:right;"> -16,535 </td>
   <td style="text-align:right;"> -2.121720e+04(7.184521e+03) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 59,060 </td>
   <td style="text-align:right;"> 35,337 </td>
   <td style="text-align:right;"> 33,152 </td>
   <td style="text-align:right;"> 4.251639e+04(1.436904e+04) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 59,308 </td>
   <td style="text-align:right;"> 35,584 </td>
   <td style="text-align:right;"> 33,399 </td>
   <td style="text-align:right;"> 4.276386e+04(1.436905e+04) </td>
  </tr>
</tbody>
</table>

##  fluency 

 Gender = _male_;  Process (a) = *gait*; Process (b) = _fluency_

```
Warning in FUN(newX[, i], ...): no non-missing arguments to min; returning Inf

Warning in FUN(newX[, i], ...): no non-missing arguments to max; returning -Inf
```

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
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 0.86 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.11 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.00 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.04 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.06 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.06 (0.02)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.00 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.00 (0.00)     .25 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .66 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.00 (0.00)     .83 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.00 (0.00)     .75 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.00 (0.00)     .78 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 18.25 (0.26)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.07 (0.04)     .06 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.15 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 2.76 (0.22)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.08 (0.02)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.18 (0.23)     .45 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.58 (0.30)     .06 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.12 (0.40)     .77 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> -0.04 (0.03)     .23 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .06 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.04 (0.03)     .23 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> 0.04 (0.04)     .35 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.06 (0.06)     .28 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 0.04 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 0.02 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.00 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 19.04 (1.16)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.03 (0.02)     .29 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 17.40 (0.68)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> 0.23 (0.13)     .08 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 0.20 (0.03)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.00 (0.00)     .62 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 0.00 (0.01)     .89 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> 0.2218 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> NaN </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> 0.0034 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 3,090 </td>
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
   <td style="text-align:right;"> -29,489 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 59,060 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 59,308 </td>
  </tr>
</tbody>
</table>

##  word_de 

 Gender = _male_;  Process (a) = *gait*; Process (b) = _word_de_

```
Warning in FUN(newX[, i], ...): no non-missing arguments to min; returning Inf

Warning in FUN(newX[, i], ...): no non-missing arguments to max; returning -Inf
```

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
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 0.86 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.11 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.00 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.04 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.06 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.06 (0.02)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.00 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.00 (0.00)     .25 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .63 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.00 (0.00)     .82 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.00 (0.00)     .71 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.00 (0.00)     .76 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 3.35 (0.08)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.02 (0.01)     .11 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.07 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.89 (0.07)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.02 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> 0.01 (0.07)     .88 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.11 (0.10)     .25 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.27 (0.11)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.00 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.00 (0.01)     .79 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .70 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.01 (0.01)     .19 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.02 (0.01)     .12 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.02 (0.02)     .16 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 0.04 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 0.02 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.00 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 1.44 (0.08)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00 (0.00)     .06 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 1.74 (0.04)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.00 (0.01)     .75 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 0.06 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.00 (0.00)     .74 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 0.00 (0.00)     .16 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> 0.231 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> NaN </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> 0.027 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 3,090 </td>
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
   <td style="text-align:right;"> -17,627 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 35,337 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 35,584 </td>
  </tr>
</tbody>
</table>

##  word_im 

 Gender = _male_;  Process (a) = *gait*; Process (b) = _word_im_

```
Warning in FUN(newX[, i], ...): no non-missing arguments to min; returning Inf

Warning in FUN(newX[, i], ...): no non-missing arguments to max; returning -Inf
```

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
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 0.86 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.01 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.11 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.00 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.04 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.06 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.06 (0.02)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> 0.00 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.00 (0.00)     .23 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .66 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> 0.00 (0.00)     .83 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.00 (0.00)     .71 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.00 (0.00)     .81 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level </td>
   <td style="text-align:right;"> 4.90 (0.07)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope </td>
   <td style="text-align:right;"> -0.03 (0.01)     .01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * age </td>
   <td style="text-align:right;"> -0.05 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * education </td>
   <td style="text-align:right;"> 0.74 (0.06)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * height </td>
   <td style="text-align:right;"> 0.02 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * smoking </td>
   <td style="text-align:right;"> -0.01 (0.06)     .84 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * cardio </td>
   <td style="text-align:right;"> -0.18 (0.08)     .04 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Level * diabetes </td>
   <td style="text-align:right;"> -0.04 (0.10)     .69 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * age </td>
   <td style="text-align:right;"> -0.00 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * education </td>
   <td style="text-align:right;"> 0.01 (0.01)     .56 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * height </td>
   <td style="text-align:right;"> 0.00 (0.00)     .08 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * smoking </td>
   <td style="text-align:right;"> -0.01 (0.01)     .24 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * cardio </td>
   <td style="text-align:right;"> -0.00 (0.01)     .80 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Slope * diabetes </td>
   <td style="text-align:right;"> -0.03 (0.02)     .05 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 0.04 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.00 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 0.02 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> a </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.00 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Level) </td>
   <td style="text-align:right;"> 1.00 (0.07)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Slope) </td>
   <td style="text-align:right;"> 0.01 (0.00)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Var (Residual) </td>
   <td style="text-align:right;"> 1.47 (0.04)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> b </td>
   <td style="text-align:left;"> Covar (Level, Slope) </td>
   <td style="text-align:right;"> -0.02 (0.01)     .02 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Levels) </td>
   <td style="text-align:right;"> 0.04 (0.01)    &lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Slopes) </td>
   <td style="text-align:right;"> 0.00 (0.00)     .44 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> ab </td>
   <td style="text-align:left;"> Covar (Residuals) </td>
   <td style="text-align:right;"> 0.00 (0.00)     .94 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Levels </td>
   <td style="text-align:right;"> 0.21 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Slopes </td>
   <td style="text-align:right;"> NaN </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> Correlation of Residuals </td>
   <td style="text-align:right;"> 0.00 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> N </td>
   <td style="text-align:right;"> 3,088 </td>
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
   <td style="text-align:right;"> -16,535 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 33,152 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> \ </td>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 33,399 </td>
  </tr>
</tbody>
</table>

## Summary 

 Study = _ELSA_; Gender = _male_; Process (a) = _gait_

 Computed correlations:

 

label                    process_b   aehplus
----------------------  ----------  --------
Correlation of Levels      fluency      0.22
Correlation of Levels      word_de      0.23
Correlation of Levels      word_im      0.21



label                    process_b   aehplus
----------------------  ----------  --------
Correlation of Slopes      fluency       NaN
Correlation of Slopes      word_de       NaN
Correlation of Slopes      word_im       NaN



label                       process_b   aehplus
-------------------------  ----------  --------
Correlation of Residuals      fluency      0.00
Correlation of Residuals      word_de      0.03
Correlation of Residuals      word_im      0.00


P-values for corresponding covariances: 

 

label                   process_b   aehplus
---------------------  ----------  --------
Covariance of Levels      fluency      0.00
Covariance of Levels      word_de      0.00
Covariance of Levels      word_im      0.00



label                   process_b   aehplus
---------------------  ----------  --------
Covariance of Slopes      fluency      0.62
Covariance of Slopes      word_de      0.74
Covariance of Slopes      word_im      0.44



label                       process_b   aehplus
-------------------------  ----------  --------
Covariance of  Residuals      fluency      0.89
Covariance of  Residuals      word_de      0.16
Covariance of  Residuals      word_im      0.94


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
[1] knitr_1.14    ggplot2_2.1.0 magrittr_1.5 

loaded via a namespace (and not attached):
 [1] Rcpp_0.12.7      munsell_0.4.3    testit_0.5       colorspace_1.2-7 R6_2.2.0         stringr_1.1.0   
 [7] highr_0.6        plyr_1.8.4       dplyr_0.5.0      tools_3.3.1      DT_0.2           grid_3.3.1      
[13] gtable_0.2.0     DBI_0.5-1        htmltools_0.3.5  yaml_2.1.13      lazyeval_0.2.0   assertthat_0.1  
[19] digest_0.6.10    tibble_1.2       formatR_1.4      readr_1.0.0      tidyr_0.6.0      htmlwidgets_0.7 
[25] rsconnect_0.5    evaluate_0.10    rmarkdown_1.1    stringi_1.1.2    scales_0.4.0    
```
