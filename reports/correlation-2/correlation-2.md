# Correlation Report #2
Date: `r Sys.Date()`  

This report contains a searchable table, followed by publication-ready tables.

<!--  Set the working directory to the repository's base directory; this assumes the report is nested inside of two directories.-->


<!-- Set the report-wide options, and point to the external code file. -->


<!-- Load the sources.  Suppress the output when loading sources. --> 


<!-- Load 'sourced' R files.  Suppress the output when loading packages. --> 


<!-- Load any global functions and variables declared in the R file.  Suppress the output. --> 


<!-- Declare any global functions specific to a Rmd output.  Suppress the output. --> 


<!-- Load the datasets.   -->

```
Warning: 40 parsing failures.
row  col   expected   actual
232 time valid date 12:14 PM
233 time valid date 12:13 PM
234 time valid date 12:08 PM
235 time valid date 12:17 PM
236 time valid date 12:06 PM
... .... .......... ........
See problems(...) for more details.
```



<!-- Tweak the datasets.   -->


Correlation report for the pulmonary track

# Dynamic Table

<!--html_preserve--><div id="htmlwidget-794bc1f0885e260c956e" style="width:100%;height:auto;" class="datatables html-widget"></div>
<script type="application/json" data-for="htmlwidget-794bc1f0885e260c956e">{"x":{"filter":"top","filterHTML":"<tr>\n  <td>\u003c/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n  \u003c/td>\n  <td data-type=\"disabled\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n  \u003c/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n  \u003c/td>\n  <td data-type=\"disabled\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n  \u003c/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n  \u003c/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n  \u003c/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n  \u003c/td>\n  <td data-type=\"integer\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n    <div style=\"display: none; position: absolute; width: 200px;\">\n      <div data-min=\"72\" data-max=\"3511\">\u003c/div>\n      <span style=\"float: left;\">\u003c/span>\n      <span style=\"float: right;\">\u003c/span>\n    \u003c/div>\n  \u003c/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n  \u003c/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n  \u003c/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n  \u003c/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n  \u003c/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n  \u003c/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n  \u003c/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n  \u003c/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n  \u003c/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n  \u003c/td>\n\u003c/tr>","data":[["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100"],["eas","eas","eas","eas","eas","eas","eas","eas","elsa","elsa","elsa","elsa","elsa","elsa","elsa","elsa","elsa","elsa","elsa","elsa","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","lasa","lasa","lasa","lasa","lasa","lasa","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa"],["b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1","b1"],["female","female","female","female","male","male","male","male","female","female","female","female","female","female","male","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","male","male","male","female","female","female","female","female","female","female","female","female","female","female","female","female","female","female","female","female","female","female","male","male","male","male","male","male","male","male","male","male","male","male","male","male","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","female","female","female","male","male","male","male","male","male","male","male"],["aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus"],["pef","pef","pef","pef","pef","pef","pef","pef","fev","fev","fev","fev100","fev100","fev100","fev","fev","fev","fev100","fev100","fev100","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev"],["trailsb","digit_tot","block","symbol","trailsb","digit_tot","block","symbol","word_de","word_de","word_im","word_de","word_de","word_im","word_de","word_de","word_im","word_de","word_de","word_im","word_de","word_de","word_im","serial7","tics","word_de","word_de","word_im","serial7","tics","letter","word_im","raven","letter","word_im","raven","digit_o","digit_b","categories","nart","bnt","ideas","bstory_de","bstory_im","digit_f","logic_de","logic_im","word_de","word_im","word_rec","line","mmse","matrices","symbol","num_comp","digit_o","digit_b","categories","nart","bnt","ideas","bstory_de","bstory_im","digit_f","logic_de","logic_im","word_de","word_im","word_rec","line","mmse","matrices","symbol","num_comp","block","digit_b","digit_f","symbol","prose_im","block","digit_b","digit_f","symbol","prose_im","mmse","analogies","information","synonyms","digit_b","digit_f","fig_mem","rotate","mmse","analogies","information","synonyms","digit_b","digit_f","fig_mem","rotate"],["executive function","short-term memory","fluid reasoning","perceptual speed","executive function","short-term memory","fluid reasoning","perceptual speed","semantic memory","semantic memory","short-term memory","semantic memory","semantic memory","short-term memory","semantic memory","semantic memory","short-term memory","semantic memory","semantic memory","short-term memory","semantic memory","semantic memory","short-term memory","attention","mental status","semantic memory","semantic memory","short-term memory","attention","mental status","perceptual speed","short-term memory","fluid reasoning","perceptual speed","short-term memory","fluid reasoning","working memory","working memory","fluency","semantic memory","semantic memory","verbal comprehension","episodic memory","short-term memory","attention","episodic memory","short-term memory","semantic memory","short-term memory","semantic memory","visual discrimination","mental status","fluid reasoning","perceptual speed","perceptual speed","working memory","working memory","fluency","semantic memory","semantic memory","verbal comprehension","episodic memory","short-term memory","attention","episodic memory","short-term memory","semantic memory","short-term memory","semantic memory","visual discrimination","mental status","fluid reasoning","perceptual speed","perceptual speed","fluid reasoning","working memory","attention","perceptual speed","short-term memory","fluid reasoning","working memory","attention","perceptual speed","short-term memory","mental status","fluid reasoning","episodic memory","semantic memory","working memory","attention","short-term memory","fluid reasoning","mental status","fluid reasoning","episodic memory","semantic memory","working memory","attention","short-term memory","fluid reasoning"],[150,150,150,150,72,72,72,72,3511,3511,3511,3511,3511,3511,3091,3091,3091,3091,3091,3091,715,715,715,715,715,535,535,535,535,535,782,782,782,800,800,800,1010,1010,1010,1010,1010,1010,1010,1010,1010,1010,1010,1010,1010,1010,1010,1010,1010,1010,1010,351,351,351,351,351,351,351,351,351,351,351,351,351,351,351,351,351,351,351,271,275,275,263,267,136,138,138,133,136,412,408,411,410,409,409,410,408,300,300,300,300,299,299,299,299],["-781.69(661.61), p=.24","-24.44(27.64), p=.38","86.03(78.62), p=.27","215.86(120.89), p=.07","1194.13(1879.70), p=.52","-77.93(132.76), p=.56","-165.36(340.93), p=.63","-8.45(313.97), p=.98"," .02( .02), p=.25"," .02( .02), p=.25"," .03( .02), p=.09","2.12(1.77), p=.23","2.12(1.77), p=.23","2.63(1.49), p=.08"," .04( .03), p=.16"," .04( .03), p=.16"," .03( .02), p=.15","3.78(2.64), p=.15","3.78(2.64), p=.15","3.22(2.20), p=.14","17.88(4.41), p&lt;.01","17.88(4.41), p&lt;.01","15.65(3.75), p&lt;.01","8.15(4.18), p=.05","10.30(6.60), p=.12","9.99(7.04), p=.16","9.99(7.04), p=.16","16.41(6.13), p=.01","11.16(6.83), p=.10","8.15(6.79), p=.23","74.21(15.62), p&lt;.01","37.66(13.01), p&lt;.01","43.20(8.05), p&lt;.01","79.73(21.48), p&lt;.01","35.22(17.06), p=.04","44.79(11.81), p&lt;.01"," .06( .02), p&lt;.01"," .08( .02), p&lt;.01"," .49( .10), p&lt;.01"," .10( .03), p&lt;.01"," .02( .02), p=.32"," .02( .01), p&lt;.01"," .01( .02), p=.74"," .03( .02), p=.13"," .06( .02), p&lt;.01"," .03( .05), p=.51"," .05( .05), p=.26"," .03( .02), p=.22"," .13( .05), p&lt;.01"," .01( .01), p=.66"," .10( .03), p&lt;.01"," .02( .02), p=.36"," .12( .03), p&lt;.01"," .48( .11), p&lt;.01"," .28( .08), p&lt;.01","-.02( .04), p=.69"," .08( .06), p=.14"," .67( .28), p=.02"," .10( .06), p=.08"," .05( .04), p=.23","-.00( .02), p=.78"," .02( .07), p=.73"," .05( .06), p=.43"," .05( .05), p=.33"," .20( .12), p=.11"," .12( .12), p=.33"," .05( .07), p=.44"," .12( .10), p=.24"," .01( .04), p=.88"," .16( .08), p=.05"," .03( .06), p=.67"," .17( .08), p=.03"," .85( .32), p=.01"," .21( .21), p=.32","83.65(32.97), p=.01","8.74(5.74), p=.13","-.26(4.91), p=.96","202.30(47.72), p&lt;.01","28.79(16.85), p=.09","158.68(59.03), p=.01","28.91(13.02), p=.03","-7.21(10.70), p=.50","244.57(90.32), p=.01","63.89(39.48), p=.11","-.02( .05), p=.68"," .19( .07), p=.01"," .06( .14), p=.66"," .22( .09), p=.02"," .08( .03), p&lt;.01"," .02( .02), p=.41"," .10( .08), p=.26","1.12( .35), p&lt;.01"," .11( .09), p=.20"," .15( .14), p=.29"," .35( .27), p=.19"," .30( .20), p=.14"," .09( .04), p=.03"," .06( .04), p=.18"," .40( .17), p=.02","1.50( .69), p=.03"],["-.54(29.25), p=.98","-.61( .96), p=.53"," .36(2.06), p=.86","2.80(4.40), p=.52","19.54(145.95), p=.89","-4.14(5.13), p=.42","-1.10(15.01), p=.94","-4.97(19.70), p=.80"," .00( .00), p=.63"," .00( .00), p=.63"," .00( .00), p=.68","-.01( .03), p=.58","-.01( .03), p=.58","-.01( .02), p=.63"," .00( .00), p=.54"," .00( .00), p=.54"," .00( .00), p=.52","-.02( .03), p=.48","-.02( .03), p=.48","-.02( .03), p=.51"," .17( .11), p=.12"," .17( .11), p=.12"," .06( .10), p=.57"," .16( .11), p=.17"," .33( .20), p=.09"," .08( .16), p=.62"," .08( .16), p=.62","-.00( .16), p=.99"," .06( .23), p=.78","-.29( .29), p=.32","-.01( .06), p=.91"," .01( .06), p=.86","-.01( .04), p=.76"," .16( .11), p=.13"," .03( .11), p=.81"," .19( .06), p&lt;.01","-.00( .00), p=.31"," .00( .00), p=.10"," .00( .01), p=.99"," .00( .00), p=.73"," .00( .00), p=.72"," .00( .00), p=.58","-.00( .00), p=.42","-.00( .00), p=.40"," .00( .00), p=.99","-.01( .00), p=.22","-.00( .00), p=.51","-.00( .00), p=.70","-.01( .01), p=.11"," .00( .00), p=.93"," .00( .00), p=.96","-.00( .00), p=.64"," .00( .00), p=.40","-.00( .01), p=.53","-.00( .01), p=.47"," .00( .00), p=.89","-.00( .00), p=.85"," .01( .01), p=.51","-.00( .00), p=.81","-.00( .00), p=.33","-.00( .00), p=.15"," .00( .00), p=.62"," .00( .00), p=.18"," .00( .00), p=.31","-.01( .01), p=.35","-.01( .01), p=.22"," .00( .00), p=.82","-.00( .01), p=.88","-.00( .00), p=.36"," .00( .00), p=.63","-.00( .01), p=.46"," .00( .00), p=.29","-.00( .02), p=.97","-.01( .01), p=.31"," .04( .68), p=.96"," .04( .12), p=.76","-.12( .12), p=.31","2.24(1.04), p=.03","-.08( .54), p=.88","1.05( .81), p=.19"," .33( .37), p=.38"," .36( .19), p=.05","3.13(1.56), p=.04","-.17( .42), p=.68"," .00( .00), p=.10"," .00( .00), p=.36"," .00( .00), p=.05"," .00( .00), p=.20"," .00( .00), p=.19"," .00( .00), p=.91"," .00( .00), p=.29"," .00( .00), p=.98"," .00( .00), p=.28"," .00( .00), p=.93"," .00( .00), p=.96"," .00( .00), p=.79"," .00( .00), p=.57"," .00( .00), p=.92"," .00( .00), p=.91"," .00( .00), p=.73"],["-78.15(239.81), p=.74","3.65(7.29), p=.62","-.38(16.61), p=.98","-1.93(24.59), p=.94","-279.10(856.01), p=.74","20.81(16.48), p=.21","31.73(63.31), p=.62","17.31(73.82), p=.81"," .01( .01), p=.57"," .01( .01), p=.57"," .01( .01), p=.29"," .67(1.07), p=.53"," .67(1.07), p=.53","1.00( .86), p=.24"," .02( .01), p=.27"," .02( .01), p=.27"," .02( .01), p=.06","1.62(1.39), p=.24","1.62(1.39), p=.24","2.34(1.21), p=.05"," .86(1.90), p=.65"," .86(1.90), p=.65","1.76(1.61), p=.27","-.44(1.78), p=.80","-1.12(2.17), p=.61","2.30(2.62), p=.38","2.30(2.62), p=.38","4.22(2.37), p=.07","-2.73(2.91), p=.35"," .44(3.30), p=.90","12.67(3.60), p&lt;.01","25.45(4.52), p&lt;.01"," .53(2.73), p=.85","14.97(3.66), p&lt;.01","19.63(5.39), p&lt;.01","3.44(2.98), p=.25"," .00( .00), p=.34","-.01( .01), p=.11","-.03( .02), p=.20"," .00( .00), p=.98","-.00( .00), p=.61","-.00( .00), p=.55","-.01( .01), p=.08","-.01( .01), p=.12"," .01( .01), p=.22","-.01( .01), p=.61","-.01( .01), p=.60"," .00( .01), p=.94"," .02( .01), p=.23"," .00( .00), p=.96","-.01( .01), p=.08"," .00( .00), p=.73","-.01( .01), p=.11"," .01( .03), p=.69"," .00( .02), p=.96","-.00( .01), p=.82","-.00( .01), p=.74"," .03( .05), p=.52","-.00( .01), p=.72","-.00( .01), p=.71"," .00( .01), p=.56","-.01( .02), p=.53","-.01( .01), p=.29","-.00( .01), p=.79","-.00( .02), p=.88"," .00( .02), p=.95"," .00( .01), p=.77"," .05( .02), p=.05"," .01( .01), p=.19"," .00( .02), p=.89"," .01( .01), p=.69","-.01( .02), p=.60"," .04( .04), p=.38","-.01( .04), p=.87","22.75(9.67), p=.02"," .82(2.44), p=.74"," .45(1.90), p=.81","8.29(13.50), p=.54","7.21(5.67), p=.20","19.93(11.14), p=.07","-5.13(4.88), p=.29"," .45(2.34), p=.85","-9.63(18.28), p=.60","11.87(14.47), p=.41"," .06( .02), p&lt;.01"," .01( .02), p=.66"," .09( .03), p=.01"," .04( .02), p=.09","-.01( .01), p=.59"," .01( .01), p=.07"," .04( .03), p=.20"," .03( .10), p=.78"," .02( .02), p=.29"," .04( .04), p=.24"," .08( .04), p=.04"," .02( .03), p=.38","-.01( .01), p=.40"," .01( .01), p=.36"," .01( .04), p=.78"," .06( .15), p=.70"],["---","---","---","---","---","---","---","---"," .05( .04), p=.25"," .05( .04), p=.25"," .07( .04), p=.09"," .05( .04), p=.24"," .05( .04), p=.24"," .07( .04), p=.08"," .06( .04), p=.16"," .06( .04), p=.16"," .06( .04), p=.15"," .06( .04), p=.15"," .06( .04), p=.15"," .06( .04), p=.15","---","---","---","---","---","---","---","---","---","---"," .22( .04), p&lt;.01"," .16( .05), p&lt;.01"," .29( .05), p&lt;.01"," .16( .04), p&lt;.01"," .10( .05), p=.04"," .18( .05), p&lt;.01","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---"," .23( .09), p=.01"," .19( .12), p=.13","-.00( .10), p=.96"," .38( .08), p&lt;.01"," .16( .09), p=.08"," .30( .11), p&lt;.01"," .30( .13), p=.02","-.09( .13), p=.50"," .31( .10), p&lt;.01"," .22( .13), p=.09","---","---","---","---"," .33( .10), p&lt;.01"," .08( .10), p=.42","---","---","---","---","---","---"," .22( .10), p=.02"," .15( .11), p=.17","---","---"],["---","---","---","---","---","---","---","---","-.43(1.05), p=.68","-.43(1.05), p=.68","-.16( .43), p=.71","-.43( .41), p=.29","-.43( .41), p=.29","-.16( .33), p=.63","-.22( .39), p=.58","-.22( .39), p=.58","-.11( .18), p=.53","-.22( .33), p=.51","-.22( .33), p=.51","-.11( .17), p=.52","---","---","---","---","---","---","---","---","---","---","-.03( .30), p=.92"," .10( .57), p=.86","-.14( .45), p=.75"," .18( .12), p=.13"," .11( .44), p=.80"," .54( .19), p&lt;.01","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---"," .02( .34), p=.96"," .16( .50), p=.75","-.30( .27), p=.27"," .66( .18), p&lt;.01","-.05( .35), p=.88"," .75( .17), p&lt;.01"," .36( .41), p=.37"," .63( .17), p&lt;.01"," .73( .15), p&lt;.01","-.26( .53), p=.62","---","---","---","---"," .35( .27), p=.19"," .07( .64), p=.91","---","---","---","---","---","---","-.44( .86), p=.60"," .10( .92), p=.92","---","---"],["---","---","---","---","---","---","---","---"," .01( .03), p=.56"," .01( .03), p=.56"," .02( .02), p=.28"," .01( .02), p=.54"," .01( .02), p=.54"," .02( .02), p=.24"," .03( .03), p=.27"," .03( .03), p=.27"," .05( .02), p=.06"," .03( .02), p=.25"," .03( .02), p=.25"," .05( .02), p=.06","---","---","---","---","---","---","---","---","---","---"," .11( .03), p&lt;.01"," .14( .02), p&lt;.01"," .00( .03), p=.85"," .12( .03), p&lt;.01"," .10( .03), p&lt;.01"," .03( .03), p=.25","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---"," .15( .06), p=.01"," .02( .05), p=.74"," .01( .05), p=.81"," .03( .06), p=.54"," .08( .06), p=.21"," .11( .06), p=.07","-.09( .08), p=.27"," .01( .06), p=.85","-.04( .08), p=.60"," .10( .12), p=.41","---","---","---","---","-.03( .05), p=.59"," .07( .04), p=.07","---","---","---","---","---","---","-.03( .04), p=.40"," .05( .05), p=.36","---","---"],["-.24(-.38,-.08)","-.15(-.30, .01)"," .19( .03, .34)"," .30( .14, .44)"," .28( .05, .48)","-.21(-.42, .02)","-.23(-.44, .01)","-.01(-.24, .22)"," .05( .01, .08)"," .05( .01, .08)"," .07( .04, .10)"," .05( .01, .08)"," .05( .01, .08)"," .07( .04, .10)"," .06( .02, .09)"," .06( .02, .09)"," .06( .02, .09)"," .06( .02, .09)"," .06( .02, .09)"," .06( .02, .09)"," .26( .19, .32)"," .26( .19, .32)"," .30( .23, .36)"," .11( .04, .18)"," .13( .05, .20)"," .10( .02, .19)"," .10( .02, .19)"," .21( .13, .29)"," .11( .02, .19)"," .16( .08, .24)"," .22( .15, .29)"," .16( .09, .23)"," .29( .22, .35)"," .16( .09, .23)"," .10( .03, .17)"," .18( .12, .25)"," .19( .13, .25)"," .15( .09, .21)"," .22( .16, .28)"," .16( .10, .22)"," .05(-.01, .11)"," .18( .12, .24)"," .02(-.04, .08)"," .08( .02, .14)"," .13( .07, .19)"," .03(-.03, .09)"," .05(-.01, .11)"," .06(-.01, .12)"," .12( .06, .18)"," .03(-.03, .09)"," .15( .08, .20)"," .05(-.01, .11)"," .20( .14, .26)"," .18( .12, .24)"," .15( .09, .21)","-.03(-.14, .07)"," .11( .00, .21)"," .18( .08, .28)"," .10(-.01, .20)"," .09(-.02, .19)","-.02(-.13, .08)"," .03(-.07, .14)"," .08(-.03, .18)"," .07(-.04, .17)"," .11( .01, .22)"," .08(-.03, .18)"," .06(-.04, .17)"," .10(-.01, .20)"," .01(-.09, .12)"," .14( .04, .24)"," .03(-.07, .14)"," .17( .07, .27)"," .20( .09, .29)"," .07(-.04, .17)"," .23( .12, .34)"," .19( .07, .30)","-.01(-.12, .11)"," .38( .27, .48)"," .16( .04, .27)"," .30( .14, .45)"," .31( .15, .45)","-.09(-.25, .08)"," .31( .15, .46)"," .22( .05, .37)","-.07(-.17, .02)"," .26( .17, .35)"," .03(-.06, .13)"," .18( .08, .27)"," .33( .24, .41)"," .08(-.02, .18)"," .10( .00, .19)"," .29( .19, .37)"," .16( .05, .27)"," .11(-.00, .22)"," .11(-.01, .22)"," .13( .02, .24)"," .22( .11, .33)"," .15( .03, .26)"," .23( .12, .33)"," .19( .08, .30)"],["-.04(-.19, .13)","-.48(-.60,-.35)"," .15(-.01, .31)"," .50( .37, .62)"," .35( .13, .54)","-.91(-.94,-.86)","-.50(-.65,-.30)","-.31(-.50,-.08)","---","---","---","-.42(-.45,-.40)","-.42(-.45,-.40)","-.16(-.20,-.13)"," .00(-.04, .04)"," .00(-.04, .04)"," .00(-.04, .04)","-.23(-.27,-.20)","-.23(-.27,-.20)","-.11(-.15,-.08)"," .66( .61, .70)"," .66( .61, .70)"," .26( .19, .33)"," .31( .25, .38)"," .33( .26, .39)"," .22( .14, .30)"," .22( .14, .30)","-.00(-.09, .08)"," .04(-.05, .12)","-.13(-.21,-.05)","-.03(-.10, .04)"," .10( .03, .17)","-.16(-.22,-.09)"," .18( .12, .25)"," .11( .04, .18)"," .56( .51, .60)","---"," .51( .47, .56)","---","---","---","---","---","---","---","---","---","---","---"," .00(-.06, .06)","---","---","---","---","---"," .38( .28, .46)","-.16(-.26,-.06)"," .48( .40, .56)","-.24(-.33,-.13)","-.82(-.85,-.78)","-.67(-.72,-.61)"," .64( .57, .70)"," .69( .63, .74)"," .77( .73, .81)","-.38(-.47,-.29)","-.57(-.63,-.49)"," .27( .17, .36)","-.09(-.19, .02)","-.38(-.46,-.28)"," .27( .17, .36)","-.39(-.48,-.30)"," .65( .58, .70)","-.04(-.15, .06)","-.76(-.80,-.72)"," .02(-.10, .14)"," .15( .04, .27)","-.29(-.40,-.18)"," .66( .59, .72)","-.05(-.17, .07)"," .75( .66, .81)"," .36( .21, .50)"," .62( .51, .71)"," .73( .64, .80)","-.25(-.40,-.09)","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---","---"],["-.05(-.21, .11)"," .06(-.10, .22)","-.00(-.16, .16)","-.01(-.17, .15)","-.10(-.33, .13)"," .20(-.03, .41)"," .10(-.14, .32)"," .05(-.18, .28)"," .02(-.02, .05)"," .02(-.02, .05)"," .02(-.01, .06)"," .02(-.02, .05)"," .02(-.02, .05)"," .02(-.01, .06)"," .03(-.01, .06)"," .03(-.01, .06)"," .05( .01, .08)"," .03(-.01, .06)"," .03(-.01, .06)"," .05( .01, .08)"," .01(-.06, .09)"," .01(-.06, .09)"," .04(-.04, .11)","-.01(-.08, .06)","-.02(-.09, .05)"," .03(-.05, .12)"," .03(-.05, .12)"," .07(-.02, .15)","-.05(-.13, .04)"," .01(-.08, .09)"," .11( .04, .18)"," .14( .07, .20)"," .00(-.07, .08)"," .12( .05, .19)"," .10( .03, .17)"," .03(-.04, .10)"," .03(-.04, .09)","-.04(-.11, .02)","-.04(-.10, .03)"," .00(-.06, .06)","-.02(-.08, .04)","-.01(-.08, .05)","-.06(-.12, .01)","-.04(-.10, .02)"," .03(-.03, .10)","-.02(-.08, .04)","-.02(-.08, .05)"," .00(-.06, .06)"," .04(-.02, .11)"," .00(-.06, .06)","-.04(-.10, .02)"," .01(-.05, .07)","-.05(-.11, .02)"," .01(-.05, .08)"," .00(-.06, .06)","-.01(-.12, .09)","-.01(-.12, .09)"," .03(-.07, .13)","-.02(-.12, .09)","-.02(-.13, .08)"," .03(-.08, .13)","-.03(-.13, .08)","-.05(-.15, .06)","-.01(-.12, .09)","-.01(-.11, .10)"," .00(-.10, .11)"," .01(-.09, .12)"," .09(-.01, .19)"," .07(-.04, .17)"," .01(-.10, .11)"," .02(-.08, .12)","-.02(-.13, .08)"," .04(-.07, .14)","-.01(-.11, .10)"," .15( .03, .26)"," .02(-.10, .13)"," .01(-.11, .13)"," .03(-.09, .15)"," .08(-.04, .19)"," .11(-.06, .28)","-.09(-.25, .08)"," .01(-.16, .18)","-.04(-.21, .13)"," .10(-.07, .26)"," .15( .05, .24)"," .02(-.08, .12)"," .11( .01, .20)"," .08(-.02, .17)","-.03(-.13, .07)"," .07(-.03, .17)"," .06(-.04, .15)"," .01(-.09, .11)"," .05(-.06, .16)"," .06(-.05, .17)"," .10(-.01, .21)"," .04(-.07, .15)","-.03(-.15, .08)"," .05(-.07, .16)"," .01(-.10, .13)"," .02(-.10, .13)"]],"container":"<table class=\"cell-border stripe\">\n  <thead>\n    <tr>\n      <th> \u003c/th>\n      <th>study_name\u003c/th>\n      <th>model_number\u003c/th>\n      <th>subgroup\u003c/th>\n      <th>model_type\u003c/th>\n      <th>process_a\u003c/th>\n      <th>process_b\u003c/th>\n      <th>process_b_domain\u003c/th>\n      <th>subject_count\u003c/th>\n      <th>tau_levels\u003c/th>\n      <th>tau_slopes\u003c/th>\n      <th>tau_resid\u003c/th>\n      <th>er_levels\u003c/th>\n      <th>er_slopes\u003c/th>\n      <th>er_resid\u003c/th>\n      <th>cr_levels\u003c/th>\n      <th>cr_slopes\u003c/th>\n      <th>cr_resid\u003c/th>\n    \u003c/tr>\n  \u003c/thead>\n\u003c/table>","options":{"pageLength":6,"autoWidth":true,"columnDefs":[{"className":"dt-right","targets":8},{"orderable":false,"targets":0}],"order":[],"orderClasses":false,"orderCellsTop":true,"lengthMenu":[6,10,25,50,100]}},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->

# Static Tables
The 'aehplus' model (with covariates *a*ge, *e*ducation, *h*ealth, and others) is shown for each combination of

* study,
* process, and
* gender.

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> domain </th>
   <th style="text-align:left;"> study_name </th>
   <th style="text-align:right;"> process_a </th>
   <th style="text-align:right;"> process_b </th>
   <th style="text-align:right;"> $n$ </th>
   <th style="text-align:right;"> Levels
Covariance </th>
   <th style="text-align:left;"> Slopes
Covariance </th>
   <th style="text-align:left;"> Residuals
Covariance </th>
   <th style="text-align:right;"> Levels
R(est) </th>
   <th style="text-align:right;"> Slopes
R(est) </th>
   <th style="text-align:right;"> Residuals
R(est) </th>
   <th style="text-align:right;"> Levels
R(comp) </th>
   <th style="text-align:left;"> Slopes
R(comp) </th>
   <th style="text-align:left;"> Residuals
R(comp) </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> attention </td>
   <td style="text-align:left;"> map </td>
   <td style="text-align:right;"> fev </td>
   <td style="text-align:right;"> digit_f </td>
   <td style="text-align:right;"> 1010 </td>
   <td style="text-align:right;"> .06( .02), $p$&lt;.01 </td>
   <td style="text-align:left;"> .00( .00), $p$=.99 </td>
   <td style="text-align:left;"> .01( .01), $p$=.22 </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> .13( .07, .19) </td>
   <td style="text-align:left;"> --- </td>
   <td style="text-align:left;"> .03(-.03, .10) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> attention </td>
   <td style="text-align:left;"> octo </td>
   <td style="text-align:right;"> pef </td>
   <td style="text-align:right;"> digit_f </td>
   <td style="text-align:right;"> 275 </td>
   <td style="text-align:right;"> -.26(4.91), $p$=.96 </td>
   <td style="text-align:left;"> -.12( .12), $p$=.31 </td>
   <td style="text-align:left;"> .45(1.90), $p$=.81 </td>
   <td style="text-align:right;"> -.00( .10), $p$=.96 </td>
   <td style="text-align:right;"> -.30( .27), $p$=.27 </td>
   <td style="text-align:right;"> .01( .05), $p$=.81 </td>
   <td style="text-align:right;"> -.01(-.12, .11) </td>
   <td style="text-align:left;"> -.29(-.40,-.18) </td>
   <td style="text-align:left;"> .01(-.11, .13) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> attention </td>
   <td style="text-align:left;"> satsa </td>
   <td style="text-align:right;"> fev </td>
   <td style="text-align:right;"> digit_f </td>
   <td style="text-align:right;"> 409 </td>
   <td style="text-align:right;"> .02( .02), $p$=.41 </td>
   <td style="text-align:left;"> .00( .00), $p$=.91 </td>
   <td style="text-align:left;"> .01( .01), $p$=.07 </td>
   <td style="text-align:right;"> .08( .10), $p$=.42 </td>
   <td style="text-align:right;"> .07( .64), $p$=.91 </td>
   <td style="text-align:right;"> .07( .04), $p$=.07 </td>
   <td style="text-align:right;"> .08(-.02, .18) </td>
   <td style="text-align:left;"> --- </td>
   <td style="text-align:left;"> .07(-.03, .17) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> attention </td>
   <td style="text-align:left;"> hrs </td>
   <td style="text-align:right;"> pef </td>
   <td style="text-align:right;"> serial7 </td>
   <td style="text-align:right;"> 715 </td>
   <td style="text-align:right;"> 8.15(4.18), $p$=.05 </td>
   <td style="text-align:left;"> .16( .11), $p$=.17 </td>
   <td style="text-align:left;"> -.44(1.78), $p$=.80 </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> .11( .04, .18) </td>
   <td style="text-align:left;"> .31( .25, .38) </td>
   <td style="text-align:left;"> -.01(-.08, .06) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> episodic memory </td>
   <td style="text-align:left;"> map </td>
   <td style="text-align:right;"> fev </td>
   <td style="text-align:right;"> bstory_de </td>
   <td style="text-align:right;"> 1010 </td>
   <td style="text-align:right;"> .01( .02), $p$=.74 </td>
   <td style="text-align:left;"> -.00( .00), $p$=.42 </td>
   <td style="text-align:left;"> -.01( .01), $p$=.08 </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> .02(-.04, .08) </td>
   <td style="text-align:left;"> --- </td>
   <td style="text-align:left;"> -.06(-.12, .01) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> episodic memory </td>
   <td style="text-align:left;"> satsa </td>
   <td style="text-align:right;"> fev </td>
   <td style="text-align:right;"> information </td>
   <td style="text-align:right;"> 411 </td>
   <td style="text-align:right;"> .06( .14), $p$=.66 </td>
   <td style="text-align:left;"> .00( .00), $p$=.05 </td>
   <td style="text-align:left;"> .09( .03), $p$=.01 </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> .03(-.06, .13) </td>
   <td style="text-align:left;"> --- </td>
   <td style="text-align:left;"> .11( .01, .20) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> episodic memory </td>
   <td style="text-align:left;"> map </td>
   <td style="text-align:right;"> fev </td>
   <td style="text-align:right;"> logic_de </td>
   <td style="text-align:right;"> 1010 </td>
   <td style="text-align:right;"> .03( .05), $p$=.51 </td>
   <td style="text-align:left;"> -.01( .00), $p$=.22 </td>
   <td style="text-align:left;"> -.01( .01), $p$=.61 </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> .03(-.03, .09) </td>
   <td style="text-align:left;"> --- </td>
   <td style="text-align:left;"> -.02(-.08, .04) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> executive function </td>
   <td style="text-align:left;"> eas </td>
   <td style="text-align:right;"> pef </td>
   <td style="text-align:right;"> trailsb </td>
   <td style="text-align:right;"> 150 </td>
   <td style="text-align:right;"> -781.69(661.61), $p$=.24 </td>
   <td style="text-align:left;"> -.54(29.25), $p$=.98 </td>
   <td style="text-align:left;"> -78.15(239.81), $p$=.74 </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> -.24(-.38,-.08) </td>
   <td style="text-align:left;"> -.04(-.19, .13) </td>
   <td style="text-align:left;"> -.05(-.21, .11) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fluency </td>
   <td style="text-align:left;"> map </td>
   <td style="text-align:right;"> fev </td>
   <td style="text-align:right;"> categories </td>
   <td style="text-align:right;"> 1010 </td>
   <td style="text-align:right;"> .49( .10), $p$&lt;.01 </td>
   <td style="text-align:left;"> .00( .01), $p$=.99 </td>
   <td style="text-align:left;"> -.03( .02), $p$=.20 </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> .22( .16, .28) </td>
   <td style="text-align:left;"> --- </td>
   <td style="text-align:left;"> -.04(-.10, .03) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fluid reasoning </td>
   <td style="text-align:left;"> satsa </td>
   <td style="text-align:right;"> fev </td>
   <td style="text-align:right;"> analogies </td>
   <td style="text-align:right;"> 408 </td>
   <td style="text-align:right;"> .19( .07), $p$=.01 </td>
   <td style="text-align:left;"> .00( .00), $p$=.36 </td>
   <td style="text-align:left;"> .01( .02), $p$=.66 </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> .26( .17, .35) </td>
   <td style="text-align:left;"> --- </td>
   <td style="text-align:left;"> .02(-.08, .12) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fluid reasoning </td>
   <td style="text-align:left;"> eas </td>
   <td style="text-align:right;"> pef </td>
   <td style="text-align:right;"> block </td>
   <td style="text-align:right;"> 150 </td>
   <td style="text-align:right;"> 86.03(78.62), $p$=.27 </td>
   <td style="text-align:left;"> .36(2.06), $p$=.86 </td>
   <td style="text-align:left;"> -.38(16.61), $p$=.98 </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> .19( .03, .34) </td>
   <td style="text-align:left;"> .15(-.01, .31) </td>
   <td style="text-align:left;"> -.00(-.16, .16) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fluid reasoning </td>
   <td style="text-align:left;"> octo </td>
   <td style="text-align:right;"> pef </td>
   <td style="text-align:right;"> block </td>
   <td style="text-align:right;"> 271 </td>
   <td style="text-align:right;"> 83.65(32.97), $p$=.01 </td>
   <td style="text-align:left;"> .04( .68), $p$=.96 </td>
   <td style="text-align:left;"> 22.75(9.67), $p$=.02 </td>
   <td style="text-align:right;"> .23( .09), $p$=.01 </td>
   <td style="text-align:right;"> .02( .34), $p$=.96 </td>
   <td style="text-align:right;"> .15( .06), $p$=.01 </td>
   <td style="text-align:right;"> .23( .12, .34) </td>
   <td style="text-align:left;"> .02(-.10, .14) </td>
   <td style="text-align:left;"> .15( .03, .26) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fluid reasoning </td>
   <td style="text-align:left;"> map </td>
   <td style="text-align:right;"> fev </td>
   <td style="text-align:right;"> matrices </td>
   <td style="text-align:right;"> 1010 </td>
   <td style="text-align:right;"> .12( .03), $p$&lt;.01 </td>
   <td style="text-align:left;"> .00( .00), $p$=.40 </td>
   <td style="text-align:left;"> -.01( .01), $p$=.11 </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> .20( .14, .26) </td>
   <td style="text-align:left;"> --- </td>
   <td style="text-align:left;"> -.05(-.11, .02) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fluid reasoning </td>
   <td style="text-align:left;"> lasa </td>
   <td style="text-align:right;"> pef </td>
   <td style="text-align:right;"> raven </td>
   <td style="text-align:right;"> 782 </td>
   <td style="text-align:right;"> 43.20(8.05), $p$&lt;.01 </td>
   <td style="text-align:left;"> -.01( .04), $p$=.76 </td>
   <td style="text-align:left;"> .53(2.73), $p$=.85 </td>
   <td style="text-align:right;"> .29( .05), $p$&lt;.01 </td>
   <td style="text-align:right;"> -.14( .45), $p$=.75 </td>
   <td style="text-align:right;"> .00( .03), $p$=.85 </td>
   <td style="text-align:right;"> .29( .22, .35) </td>
   <td style="text-align:left;"> -.16(-.22,-.09) </td>
   <td style="text-align:left;"> .00(-.07, .08) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fluid reasoning </td>
   <td style="text-align:left;"> satsa </td>
   <td style="text-align:right;"> fev </td>
   <td style="text-align:right;"> rotate </td>
   <td style="text-align:right;"> 408 </td>
   <td style="text-align:right;"> 1.12( .35), $p$&lt;.01 </td>
   <td style="text-align:left;"> .00( .00), $p$=.98 </td>
   <td style="text-align:left;"> .03( .10), $p$=.78 </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> .29( .19, .37) </td>
   <td style="text-align:left;"> --- </td>
   <td style="text-align:left;"> .01(-.09, .11) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> mental status </td>
   <td style="text-align:left;"> map </td>
   <td style="text-align:right;"> fev </td>
   <td style="text-align:right;"> mmse </td>
   <td style="text-align:right;"> 1010 </td>
   <td style="text-align:right;"> .02( .02), $p$=.36 </td>
   <td style="text-align:left;"> -.00( .00), $p$=.64 </td>
   <td style="text-align:left;"> .00( .00), $p$=.73 </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> .05(-.01, .11) </td>
   <td style="text-align:left;"> --- </td>
   <td style="text-align:left;"> .01(-.05, .07) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> mental status </td>
   <td style="text-align:left;"> satsa </td>
   <td style="text-align:right;"> fev </td>
   <td style="text-align:right;"> mmse </td>
   <td style="text-align:right;"> 412 </td>
   <td style="text-align:right;"> -.02( .05), $p$=.68 </td>
   <td style="text-align:left;"> .00( .00), $p$=.10 </td>
   <td style="text-align:left;"> .06( .02), $p$&lt;.01 </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> -.07(-.17, .02) </td>
   <td style="text-align:left;"> --- </td>
   <td style="text-align:left;"> .15( .05, .24) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> mental status </td>
   <td style="text-align:left;"> hrs </td>
   <td style="text-align:right;"> pef </td>
   <td style="text-align:right;"> tics </td>
   <td style="text-align:right;"> 715 </td>
   <td style="text-align:right;"> 10.30(6.60), $p$=.12 </td>
   <td style="text-align:left;"> .33( .20), $p$=.09 </td>
   <td style="text-align:left;"> -1.12(2.17), $p$=.61 </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> .13( .05, .20) </td>
   <td style="text-align:left;"> .33( .26, .39) </td>
   <td style="text-align:left;"> -.02(-.09, .05) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> perceptual speed </td>
   <td style="text-align:left;"> lasa </td>
   <td style="text-align:right;"> pef </td>
   <td style="text-align:right;"> letter </td>
   <td style="text-align:right;"> 782 </td>
   <td style="text-align:right;"> 74.21(15.62), $p$&lt;.01 </td>
   <td style="text-align:left;"> -.01( .06), $p$=.91 </td>
   <td style="text-align:left;"> 12.67(3.60), $p$&lt;.01 </td>
   <td style="text-align:right;"> .22( .04), $p$&lt;.01 </td>
   <td style="text-align:right;"> -.03( .30), $p$=.92 </td>
   <td style="text-align:right;"> .11( .03), $p$&lt;.01 </td>
   <td style="text-align:right;"> .22( .15, .29) </td>
   <td style="text-align:left;"> -.03(-.10, .04) </td>
   <td style="text-align:left;"> .11( .04, .18) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> perceptual speed </td>
   <td style="text-align:left;"> map </td>
   <td style="text-align:right;"> fev </td>
   <td style="text-align:right;"> num_comp </td>
   <td style="text-align:right;"> 1010 </td>
   <td style="text-align:right;"> .28( .08), $p$&lt;.01 </td>
   <td style="text-align:left;"> -.00( .01), $p$=.47 </td>
   <td style="text-align:left;"> .00( .02), $p$=.96 </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> .15( .09, .21) </td>
   <td style="text-align:left;"> --- </td>
   <td style="text-align:left;"> .00(-.06, .06) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> perceptual speed </td>
   <td style="text-align:left;"> eas </td>
   <td style="text-align:right;"> pef </td>
   <td style="text-align:right;"> symbol </td>
   <td style="text-align:right;"> 150 </td>
   <td style="text-align:right;"> 215.86(120.89), $p$=.07 </td>
   <td style="text-align:left;"> 2.80(4.40), $p$=.52 </td>
   <td style="text-align:left;"> -1.93(24.59), $p$=.94 </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> .30( .14, .44) </td>
   <td style="text-align:left;"> .50( .37, .62) </td>
   <td style="text-align:left;"> -.01(-.17, .15) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> perceptual speed </td>
   <td style="text-align:left;"> map </td>
   <td style="text-align:right;"> fev </td>
   <td style="text-align:right;"> symbol </td>
   <td style="text-align:right;"> 1010 </td>
   <td style="text-align:right;"> .48( .11), $p$&lt;.01 </td>
   <td style="text-align:left;"> -.00( .01), $p$=.53 </td>
   <td style="text-align:left;"> .01( .03), $p$=.69 </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> .18( .12, .24) </td>
   <td style="text-align:left;"> --- </td>
   <td style="text-align:left;"> .01(-.05, .08) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> perceptual speed </td>
   <td style="text-align:left;"> octo </td>
   <td style="text-align:right;"> pef </td>
   <td style="text-align:right;"> symbol </td>
   <td style="text-align:right;"> 263 </td>
   <td style="text-align:right;"> 202.30(47.72), $p$&lt;.01 </td>
   <td style="text-align:left;"> 2.24(1.04), $p$=.03 </td>
   <td style="text-align:left;"> 8.29(13.50), $p$=.54 </td>
   <td style="text-align:right;"> .38( .08), $p$&lt;.01 </td>
   <td style="text-align:right;"> .66( .18), $p$&lt;.01 </td>
   <td style="text-align:right;"> .03( .06), $p$=.54 </td>
   <td style="text-align:right;"> .38( .27, .48) </td>
   <td style="text-align:left;"> .66( .59, .72) </td>
   <td style="text-align:left;"> .03(-.09, .15) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> semantic memory </td>
   <td style="text-align:left;"> map </td>
   <td style="text-align:right;"> fev </td>
   <td style="text-align:right;"> bnt </td>
   <td style="text-align:right;"> 1010 </td>
   <td style="text-align:right;"> .02( .02), $p$=.32 </td>
   <td style="text-align:left;"> .00( .00), $p$=.72 </td>
   <td style="text-align:left;"> -.00( .00), $p$=.61 </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> .05(-.01, .11) </td>
   <td style="text-align:left;"> --- </td>
   <td style="text-align:left;"> -.02(-.08, .04) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> semantic memory </td>
   <td style="text-align:left;"> map </td>
   <td style="text-align:right;"> fev </td>
   <td style="text-align:right;"> nart </td>
   <td style="text-align:right;"> 1010 </td>
   <td style="text-align:right;"> .10( .03), $p$&lt;.01 </td>
   <td style="text-align:left;"> .00( .00), $p$=.73 </td>
   <td style="text-align:left;"> .00( .00), $p$=.98 </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> .16( .10, .22) </td>
   <td style="text-align:left;"> --- </td>
   <td style="text-align:left;"> .00(-.06, .06) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> semantic memory </td>
   <td style="text-align:left;"> satsa </td>
   <td style="text-align:right;"> fev </td>
   <td style="text-align:right;"> synonyms </td>
   <td style="text-align:right;"> 410 </td>
   <td style="text-align:right;"> .22( .09), $p$=.02 </td>
   <td style="text-align:left;"> .00( .00), $p$=.20 </td>
   <td style="text-align:left;"> .04( .02), $p$=.09 </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> .18( .08, .27) </td>
   <td style="text-align:left;"> --- </td>
   <td style="text-align:left;"> .08(-.02, .17) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> semantic memory </td>
   <td style="text-align:left;"> elsa </td>
   <td style="text-align:right;"> fev </td>
   <td style="text-align:right;"> word_de </td>
   <td style="text-align:right;"> 3511 </td>
   <td style="text-align:right;"> .02( .02), $p$=.25 </td>
   <td style="text-align:left;"> .00( .00), $p$=.63 </td>
   <td style="text-align:left;"> .01( .01), $p$=.57 </td>
   <td style="text-align:right;"> .05( .04), $p$=.25 </td>
   <td style="text-align:right;"> -.43(1.05), $p$=.68 </td>
   <td style="text-align:right;"> .01( .03), $p$=.56 </td>
   <td style="text-align:right;"> .05( .01, .08) </td>
   <td style="text-align:left;"> --- </td>
   <td style="text-align:left;"> .02(-.02, .05) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> semantic memory </td>
   <td style="text-align:left;"> elsa </td>
   <td style="text-align:right;"> fev </td>
   <td style="text-align:right;"> word_de </td>
   <td style="text-align:right;"> 3511 </td>
   <td style="text-align:right;"> .02( .02), $p$=.25 </td>
   <td style="text-align:left;"> .00( .00), $p$=.63 </td>
   <td style="text-align:left;"> .01( .01), $p$=.57 </td>
   <td style="text-align:right;"> .05( .04), $p$=.25 </td>
   <td style="text-align:right;"> -.43(1.05), $p$=.68 </td>
   <td style="text-align:right;"> .01( .03), $p$=.56 </td>
   <td style="text-align:right;"> .05( .01, .08) </td>
   <td style="text-align:left;"> --- </td>
   <td style="text-align:left;"> .02(-.02, .05) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> semantic memory </td>
   <td style="text-align:left;"> elsa </td>
   <td style="text-align:right;"> fev100 </td>
   <td style="text-align:right;"> word_de </td>
   <td style="text-align:right;"> 3511 </td>
   <td style="text-align:right;"> 2.12(1.77), $p$=.23 </td>
   <td style="text-align:left;"> -.01( .03), $p$=.58 </td>
   <td style="text-align:left;"> .67(1.07), $p$=.53 </td>
   <td style="text-align:right;"> .05( .04), $p$=.24 </td>
   <td style="text-align:right;"> -.43( .41), $p$=.29 </td>
   <td style="text-align:right;"> .01( .02), $p$=.54 </td>
   <td style="text-align:right;"> .05( .01, .08) </td>
   <td style="text-align:left;"> -.42(-.45,-.40) </td>
   <td style="text-align:left;"> .02(-.02, .05) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> semantic memory </td>
   <td style="text-align:left;"> elsa </td>
   <td style="text-align:right;"> fev100 </td>
   <td style="text-align:right;"> word_de </td>
   <td style="text-align:right;"> 3511 </td>
   <td style="text-align:right;"> 2.12(1.77), $p$=.23 </td>
   <td style="text-align:left;"> -.01( .03), $p$=.58 </td>
   <td style="text-align:left;"> .67(1.07), $p$=.53 </td>
   <td style="text-align:right;"> .05( .04), $p$=.24 </td>
   <td style="text-align:right;"> -.43( .41), $p$=.29 </td>
   <td style="text-align:right;"> .01( .02), $p$=.54 </td>
   <td style="text-align:right;"> .05( .01, .08) </td>
   <td style="text-align:left;"> -.42(-.45,-.40) </td>
   <td style="text-align:left;"> .02(-.02, .05) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> semantic memory </td>
   <td style="text-align:left;"> hrs </td>
   <td style="text-align:right;"> pef </td>
   <td style="text-align:right;"> word_de </td>
   <td style="text-align:right;"> 715 </td>
   <td style="text-align:right;"> 17.88(4.41), $p$&lt;.01 </td>
   <td style="text-align:left;"> .17( .11), $p$=.12 </td>
   <td style="text-align:left;"> .86(1.90), $p$=.65 </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> .26( .19, .32) </td>
   <td style="text-align:left;"> .66( .61, .70) </td>
   <td style="text-align:left;"> .01(-.06, .09) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> semantic memory </td>
   <td style="text-align:left;"> hrs </td>
   <td style="text-align:right;"> pef </td>
   <td style="text-align:right;"> word_de </td>
   <td style="text-align:right;"> 715 </td>
   <td style="text-align:right;"> 17.88(4.41), $p$&lt;.01 </td>
   <td style="text-align:left;"> .17( .11), $p$=.12 </td>
   <td style="text-align:left;"> .86(1.90), $p$=.65 </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> .26( .19, .32) </td>
   <td style="text-align:left;"> .66( .61, .70) </td>
   <td style="text-align:left;"> .01(-.06, .09) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> semantic memory </td>
   <td style="text-align:left;"> map </td>
   <td style="text-align:right;"> fev </td>
   <td style="text-align:right;"> word_de </td>
   <td style="text-align:right;"> 1010 </td>
   <td style="text-align:right;"> .03( .02), $p$=.22 </td>
   <td style="text-align:left;"> -.00( .00), $p$=.70 </td>
   <td style="text-align:left;"> .00( .01), $p$=.94 </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> .06(-.01, .12) </td>
   <td style="text-align:left;"> --- </td>
   <td style="text-align:left;"> .00(-.06, .06) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> semantic memory </td>
   <td style="text-align:left;"> map </td>
   <td style="text-align:right;"> fev </td>
   <td style="text-align:right;"> word_rec </td>
   <td style="text-align:right;"> 1010 </td>
   <td style="text-align:right;"> .01( .01), $p$=.66 </td>
   <td style="text-align:left;"> .00( .00), $p$=.93 </td>
   <td style="text-align:left;"> .00( .00), $p$=.96 </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> .03(-.03, .09) </td>
   <td style="text-align:left;"> .00(-.06, .06) </td>
   <td style="text-align:left;"> .00(-.06, .06) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> short-term memory </td>
   <td style="text-align:left;"> map </td>
   <td style="text-align:right;"> fev </td>
   <td style="text-align:right;"> bstory_im </td>
   <td style="text-align:right;"> 1010 </td>
   <td style="text-align:right;"> .03( .02), $p$=.13 </td>
   <td style="text-align:left;"> -.00( .00), $p$=.40 </td>
   <td style="text-align:left;"> -.01( .01), $p$=.12 </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> .08( .02, .14) </td>
   <td style="text-align:left;"> --- </td>
   <td style="text-align:left;"> -.04(-.10, .02) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> short-term memory </td>
   <td style="text-align:left;"> eas </td>
   <td style="text-align:right;"> pef </td>
   <td style="text-align:right;"> digit_tot </td>
   <td style="text-align:right;"> 150 </td>
   <td style="text-align:right;"> -24.44(27.64), $p$=.38 </td>
   <td style="text-align:left;"> -.61( .96), $p$=.53 </td>
   <td style="text-align:left;"> 3.65(7.29), $p$=.62 </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> -.15(-.30, .01) </td>
   <td style="text-align:left;"> -.48(-.60,-.35) </td>
   <td style="text-align:left;"> .06(-.10, .22) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> short-term memory </td>
   <td style="text-align:left;"> satsa </td>
   <td style="text-align:right;"> fev </td>
   <td style="text-align:right;"> fig_mem </td>
   <td style="text-align:right;"> 410 </td>
   <td style="text-align:right;"> .10( .08), $p$=.26 </td>
   <td style="text-align:left;"> .00( .00), $p$=.29 </td>
   <td style="text-align:left;"> .04( .03), $p$=.20 </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> .10( .00, .19) </td>
   <td style="text-align:left;"> --- </td>
   <td style="text-align:left;"> .06(-.04, .15) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> short-term memory </td>
   <td style="text-align:left;"> map </td>
   <td style="text-align:right;"> fev </td>
   <td style="text-align:right;"> logic_im </td>
   <td style="text-align:right;"> 1010 </td>
   <td style="text-align:right;"> .05( .05), $p$=.26 </td>
   <td style="text-align:left;"> -.00( .00), $p$=.51 </td>
   <td style="text-align:left;"> -.01( .01), $p$=.60 </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> .05(-.01, .11) </td>
   <td style="text-align:left;"> --- </td>
   <td style="text-align:left;"> -.02(-.08, .05) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> short-term memory </td>
   <td style="text-align:left;"> octo </td>
   <td style="text-align:right;"> pef </td>
   <td style="text-align:right;"> prose_im </td>
   <td style="text-align:right;"> 267 </td>
   <td style="text-align:right;"> 28.79(16.85), $p$=.09 </td>
   <td style="text-align:left;"> -.08( .54), $p$=.88 </td>
   <td style="text-align:left;"> 7.21(5.67), $p$=.20 </td>
   <td style="text-align:right;"> .16( .09), $p$=.08 </td>
   <td style="text-align:right;"> -.05( .35), $p$=.88 </td>
   <td style="text-align:right;"> .08( .06), $p$=.21 </td>
   <td style="text-align:right;"> .16( .04, .27) </td>
   <td style="text-align:left;"> -.05(-.17, .07) </td>
   <td style="text-align:left;"> .08(-.04, .19) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> short-term memory </td>
   <td style="text-align:left;"> elsa </td>
   <td style="text-align:right;"> fev </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 3511 </td>
   <td style="text-align:right;"> .03( .02), $p$=.09 </td>
   <td style="text-align:left;"> .00( .00), $p$=.68 </td>
   <td style="text-align:left;"> .01( .01), $p$=.29 </td>
   <td style="text-align:right;"> .07( .04), $p$=.09 </td>
   <td style="text-align:right;"> -.16( .43), $p$=.71 </td>
   <td style="text-align:right;"> .02( .02), $p$=.28 </td>
   <td style="text-align:right;"> .07( .04, .10) </td>
   <td style="text-align:left;"> --- </td>
   <td style="text-align:left;"> .02(-.01, .06) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> short-term memory </td>
   <td style="text-align:left;"> elsa </td>
   <td style="text-align:right;"> fev100 </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 3511 </td>
   <td style="text-align:right;"> 2.63(1.49), $p$=.08 </td>
   <td style="text-align:left;"> -.01( .02), $p$=.63 </td>
   <td style="text-align:left;"> 1.00( .86), $p$=.24 </td>
   <td style="text-align:right;"> .07( .04), $p$=.08 </td>
   <td style="text-align:right;"> -.16( .33), $p$=.63 </td>
   <td style="text-align:right;"> .02( .02), $p$=.24 </td>
   <td style="text-align:right;"> .07( .04, .10) </td>
   <td style="text-align:left;"> -.16(-.20,-.13) </td>
   <td style="text-align:left;"> .02(-.01, .06) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> short-term memory </td>
   <td style="text-align:left;"> hrs </td>
   <td style="text-align:right;"> pef </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 715 </td>
   <td style="text-align:right;"> 15.65(3.75), $p$&lt;.01 </td>
   <td style="text-align:left;"> .06( .10), $p$=.57 </td>
   <td style="text-align:left;"> 1.76(1.61), $p$=.27 </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> .30( .23, .36) </td>
   <td style="text-align:left;"> .26( .19, .33) </td>
   <td style="text-align:left;"> .04(-.04, .11) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> short-term memory </td>
   <td style="text-align:left;"> lasa </td>
   <td style="text-align:right;"> pef </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 782 </td>
   <td style="text-align:right;"> 37.66(13.01), $p$&lt;.01 </td>
   <td style="text-align:left;"> .01( .06), $p$=.86 </td>
   <td style="text-align:left;"> 25.45(4.52), $p$&lt;.01 </td>
   <td style="text-align:right;"> .16( .05), $p$&lt;.01 </td>
   <td style="text-align:right;"> .10( .57), $p$=.86 </td>
   <td style="text-align:right;"> .14( .02), $p$&lt;.01 </td>
   <td style="text-align:right;"> .16( .09, .23) </td>
   <td style="text-align:left;"> .10( .03, .17) </td>
   <td style="text-align:left;"> .14( .07, .20) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> short-term memory </td>
   <td style="text-align:left;"> map </td>
   <td style="text-align:right;"> fev </td>
   <td style="text-align:right;"> word_im </td>
   <td style="text-align:right;"> 1010 </td>
   <td style="text-align:right;"> .13( .05), $p$&lt;.01 </td>
   <td style="text-align:left;"> -.01( .01), $p$=.11 </td>
   <td style="text-align:left;"> .02( .01), $p$=.23 </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> .12( .06, .18) </td>
   <td style="text-align:left;"> --- </td>
   <td style="text-align:left;"> .04(-.02, .11) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> verbal comprehension </td>
   <td style="text-align:left;"> map </td>
   <td style="text-align:right;"> fev </td>
   <td style="text-align:right;"> ideas </td>
   <td style="text-align:right;"> 1010 </td>
   <td style="text-align:right;"> .02( .01), $p$&lt;.01 </td>
   <td style="text-align:left;"> .00( .00), $p$=.58 </td>
   <td style="text-align:left;"> -.00( .00), $p$=.55 </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> .18( .12, .24) </td>
   <td style="text-align:left;"> --- </td>
   <td style="text-align:left;"> -.01(-.08, .05) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> visual discrimination </td>
   <td style="text-align:left;"> map </td>
   <td style="text-align:right;"> fev </td>
   <td style="text-align:right;"> line </td>
   <td style="text-align:right;"> 1010 </td>
   <td style="text-align:right;"> .10( .03), $p$&lt;.01 </td>
   <td style="text-align:left;"> .00( .00), $p$=.96 </td>
   <td style="text-align:left;"> -.01( .01), $p$=.08 </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> .15( .08, .20) </td>
   <td style="text-align:left;"> --- </td>
   <td style="text-align:left;"> -.04(-.10, .02) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> working memory </td>
   <td style="text-align:left;"> map </td>
   <td style="text-align:right;"> fev </td>
   <td style="text-align:right;"> digit_b </td>
   <td style="text-align:right;"> 1010 </td>
   <td style="text-align:right;"> .08( .02), $p$&lt;.01 </td>
   <td style="text-align:left;"> .00( .00), $p$=.10 </td>
   <td style="text-align:left;"> -.01( .01), $p$=.11 </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> .15( .09, .21) </td>
   <td style="text-align:left;"> .51( .47, .56) </td>
   <td style="text-align:left;"> -.04(-.11, .02) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> working memory </td>
   <td style="text-align:left;"> octo </td>
   <td style="text-align:right;"> pef </td>
   <td style="text-align:right;"> digit_b </td>
   <td style="text-align:right;"> 275 </td>
   <td style="text-align:right;"> 8.74(5.74), $p$=.13 </td>
   <td style="text-align:left;"> .04( .12), $p$=.76 </td>
   <td style="text-align:left;"> .82(2.44), $p$=.74 </td>
   <td style="text-align:right;"> .19( .12), $p$=.13 </td>
   <td style="text-align:right;"> .16( .50), $p$=.75 </td>
   <td style="text-align:right;"> .02( .05), $p$=.74 </td>
   <td style="text-align:right;"> .19( .07, .30) </td>
   <td style="text-align:left;"> .15( .04, .27) </td>
   <td style="text-align:left;"> .02(-.10, .13) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> working memory </td>
   <td style="text-align:left;"> satsa </td>
   <td style="text-align:right;"> fev </td>
   <td style="text-align:right;"> digit_b </td>
   <td style="text-align:right;"> 409 </td>
   <td style="text-align:right;"> .08( .03), $p$&lt;.01 </td>
   <td style="text-align:left;"> .00( .00), $p$=.19 </td>
   <td style="text-align:left;"> -.01( .01), $p$=.59 </td>
   <td style="text-align:right;"> .33( .10), $p$&lt;.01 </td>
   <td style="text-align:right;"> .35( .27), $p$=.19 </td>
   <td style="text-align:right;"> -.03( .05), $p$=.59 </td>
   <td style="text-align:right;"> .33( .24, .41) </td>
   <td style="text-align:left;"> --- </td>
   <td style="text-align:left;"> -.03(-.13, .07) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> working memory </td>
   <td style="text-align:left;"> map </td>
   <td style="text-align:right;"> fev </td>
   <td style="text-align:right;"> digit_o </td>
   <td style="text-align:right;"> 1010 </td>
   <td style="text-align:right;"> .06( .02), $p$&lt;.01 </td>
   <td style="text-align:left;"> -.00( .00), $p$=.31 </td>
   <td style="text-align:left;"> .00( .00), $p$=.34 </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> --- </td>
   <td style="text-align:right;"> .19( .13, .25) </td>
   <td style="text-align:left;"> --- </td>
   <td style="text-align:left;"> .03(-.04, .09) </td>
  </tr>
</tbody>
</table>



# Session Information
For the sake of documentation and reproducibility, the current report was rendered on a system using the following software.


```
Report rendered by koval_000 at 2016-10-29, 12:46 -0400
```

```
R version 3.3.1 (2016-06-21)
Platform: x86_64-w64-mingw32/x64 (64-bit)
Running under: Windows 10 x64 (build 14393)

locale:
[1] LC_COLLATE=English_United States.1252  LC_CTYPE=English_United States.1252    LC_MONETARY=English_United States.1252
[4] LC_NUMERIC=C                           LC_TIME=English_United States.1252    

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] ggplot2_2.1.0 magrittr_1.5  knitr_1.14   

loaded via a namespace (and not attached):
 [1] Rcpp_0.12.7      munsell_0.4.3    colorspace_1.2-7 R6_2.2.0         highr_0.6        stringr_1.1.0   
 [7] plyr_1.8.4       dplyr_0.5.0      tools_3.3.1      DT_0.2           grid_3.3.1       gtable_0.2.0    
[13] DBI_0.5-1        htmltools_0.3.5  yaml_2.1.13      lazyeval_0.2.0   assertthat_0.1   digest_0.6.10   
[19] tibble_1.2       readr_1.0.0      formatR_1.4      tidyr_0.6.0      htmlwidgets_0.7  evaluate_0.10   
[25] rmarkdown_1.1    stringi_1.1.2    scales_0.4.0     jsonlite_1.1    
```
