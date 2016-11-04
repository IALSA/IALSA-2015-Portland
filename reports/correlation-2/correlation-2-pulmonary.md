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



# Static Tables
The 'aehplus' model (with covariates *a*ge, *e*ducation, *h*ealth, and others) is shown for each combination of

* study,
* process, and
* gender.


## male

domain                   study  phys              cog   $n$                   Cov(Levels)              Cov(Slopes)             Cov(Residuals)           Corr(Levels)          Corr(Slopes)  Corr(Residuals)      
----------------------  ------  -------  ------------  ------  --------------------------  -----------------------  -------------------------  ---------------------  --------------------  ---------------------
attention                  map  fev           digit_f   351            .05( .05), $p$=.33       .00( .00), $p$=.31        -.00( .01), $p$=.79       .07(-.04, .17) +      .77( .73, .81) +  -.01(-.12, .09) +    
attention                 octo  pef           digit_f   138         -7.21(10.70), $p$=.50       .36( .19), $p$=.05         .45(2.34), $p$=.85      -.09(-.25, .08) +    .62( .51, .71) + .  .01(-.16, .18) +     
attention                satsa  fev           digit_f   299            .06( .04), $p$=.18       .00( .00), $p$=.92         .01( .01), $p$=.36       .15( .03, .26) +                   ---  .05(-.07, .16) +     
attention                  hrs  pef           serial7   3287         13.68(3.34), $p$<.01       .15( .09), $p$=.10        2.17(1.87), $p$=.25   .16( .13, .19) + ***    .21( .18, .25) + .  .03(-.00, .07) +     
episodic memory            map  fev         bstory_de   351            .02( .07), $p$=.73       .00( .00), $p$=.62        -.01( .02), $p$=.53       .03(-.07, .14) +      .64( .57, .70) +  -.03(-.13, .08) +    
episodic memory          satsa  fev       information   300            .35( .27), $p$=.19       .00( .00), $p$=.96         .08( .04), $p$=.04       .11(-.01, .22) +                   ---  .10(-.01, .21) + *   
episodic memory            map  fev          logic_de   351            .20( .12), $p$=.11      -.01( .01), $p$=.35        -.00( .02), $p$=.88       .11( .01, .22) +     -.38(-.47,-.29) +  -.01(-.11, .10) +    
executive function         eas  pef           trailsb    72     1194.13(1879.70), $p$=.52   19.54(145.95), $p$=.89   -279.10(856.01), $p$=.74       .28( .05, .48) +      .35( .13, .54) +  -.10(-.33, .13) +    
fluency                    nas  fev           animals   1131         -1.01( .81), $p$=.21      -.00( .00), $p$=.89         .15( .14), $p$=.30      -.06(-.12,-.00) +     -.04(-.09, .02) +  .03(-.03, .09) +     
fluency                    map  fev        categories   351            .67( .28), $p$=.02       .01( .01), $p$=.51         .03( .05), $p$=.52     .18( .08, .28) + *      .48( .40, .56) +  .03(-.07, .13) +     
fluid reasoning          satsa  fev         analogies   300            .15( .14), $p$=.29       .00( .00), $p$=.93         .04( .04), $p$=.24       .11(-.00, .22) +                   ---  .06(-.05, .17) +     
fluid reasoning            eas  pef             block    72      -165.36(340.93), $p$=.63    -1.10(15.01), $p$=.94      31.73(63.31), $p$=.62      -.23(-.44, .01) +     -.50(-.65,-.30) +  .10(-.14, .32) +     
fluid reasoning           octo  pef             block   136        158.68(59.03), $p$=.01      1.05( .81), $p$=.19      19.93(11.14), $p$=.07    .30( .14, .45) + **      .75( .66, .81) +  .11(-.06, .28) + .   
fluid reasoning            nas  fev          fig_copy   1131          3.13( .97), $p$<.01       .01( .01), $p$=.09        -.60( .20), $p$<.01   .18( .13, .24) + ***    .52( .47, .56) + .  -.09(-.15,-.04) + ** 
fluid reasoning            map  fev          matrices   351            .17( .08), $p$=.03       .00( .00), $p$=.29        -.01( .02), $p$=.60     .17( .07, .27) + *      .65( .58, .70) +  -.02(-.13, .08) +    
fluid reasoning           lasa  pef             raven   800         44.79(11.81), $p$<.01       .19( .06), $p$<.01        3.44(2.98), $p$=.25   .18( .12, .25) + ***   .56( .51, .60) + **  .03(-.04, .10) +     
fluid reasoning          satsa  fev            rotate   299           1.50( .69), $p$=.03       .00( .00), $p$=.73         .06( .15), $p$=.70     .19( .08, .30) + *                   ---  .02(-.10, .13) +     
mental status              map  fev              mmse   351            .03( .06), $p$=.67      -.00( .01), $p$=.46         .01( .01), $p$=.69       .03(-.07, .14) +     -.39(-.48,-.30) +  .02(-.08, .12) +     
mental status              nas  fev              mmse   1131           .70( .28), $p$=.01      -.00( .00), $p$=.74        -.05( .06), $p$=.42     .18( .12, .23) + *     -.12(-.18,-.07) +  -.02(-.08, .04) +    
mental status            satsa  fev              mmse   300            .11( .09), $p$=.20       .00( .00), $p$=.28         .02( .02), $p$=.29       .16( .05, .27) +                   ---  .05(-.06, .16) +     
mental status              hrs  pef              tics   535           8.15(6.79), $p$=.23      -.29( .29), $p$=.32         .44(3.30), $p$=.90       .16( .08, .24) +     -.13(-.21,-.05) +  .01(-.08, .09) +     
perceptual speed          lasa  pef            letter   800         79.73(21.48), $p$<.01       .16( .11), $p$=.13       14.97(3.66), $p$<.01   .16( .09, .23) + ***      .18( .12, .25) +  .12( .05, .19) + *** 
perceptual speed           map  fev          num_comp   351            .21( .21), $p$=.32      -.01( .01), $p$=.31        -.01( .04), $p$=.87       .07(-.04, .17) +     -.76(-.80,-.72) +  -.01(-.11, .10) +    
perceptual speed           nas  fev          pat_comp   1131          -.03( .28), $p$=.90      -.00( .00), $p$=.24         .04( .05), $p$=.44      -.01(-.07, .05) +     -.34(-.39,-.29) +  .03(-.03, .08) +     
perceptual speed           eas  pef            symbol    72        -8.45(313.97), $p$=.98    -4.97(19.70), $p$=.80      17.31(73.82), $p$=.81      -.01(-.24, .22) +     -.31(-.50,-.08) +  .05(-.18, .28) +     
perceptual speed           map  fev            symbol   351            .85( .32), $p$=.01      -.00( .02), $p$=.97         .04( .04), $p$=.38    .20( .09, .29) + **     -.04(-.15, .06) +  .04(-.07, .14) +     
perceptual speed          octo  pef            symbol   133        244.57(90.32), $p$=.01      3.13(1.56), $p$=.04      -9.63(18.28), $p$=.60    .31( .15, .46) + **    .73( .64, .80) + *  -.04(-.21, .13) +    
semantic memory            map  fev               bnt   351            .05( .04), $p$=.23      -.00( .00), $p$=.33        -.00( .01), $p$=.71       .09(-.02, .19) +     -.82(-.85,-.78) +  -.02(-.13, .08) +    
semantic memory            map  fev              nart   351            .10( .06), $p$=.08      -.00( .00), $p$=.81        -.00( .01), $p$=.72     .10(-.01, .20) + .     -.24(-.33,-.13) +  -.02(-.12, .09) +    
semantic memory          satsa  fev          synonyms   300            .30( .20), $p$=.14       .00( .00), $p$=.79         .02( .03), $p$=.38       .13( .02, .24) +                   ---  .04(-.07, .15) +     
semantic memory           elsa  fev           word_de   3091           .04( .03), $p$=.16       .00( .00), $p$=.54         .02( .01), $p$=.27       .06( .02, .09) +      .00(-.04, .04) +  .03(-.01, .06) +     
semantic memory           elsa  fev           word_de   3091           .04( .03), $p$=.16       .00( .00), $p$=.54         .02( .01), $p$=.27       .06( .02, .09) +      .00(-.04, .04) +  .03(-.01, .06) +     
semantic memory           elsa  fev100        word_de   3091          3.78(2.64), $p$=.15      -.02( .03), $p$=.48        1.62(1.39), $p$=.24       .06( .02, .09) +     -.23(-.27,-.20) +  .03(-.01, .06) +     
semantic memory           elsa  fev100        word_de   3091          3.78(2.64), $p$=.15      -.02( .03), $p$=.48        1.62(1.39), $p$=.24       .06( .02, .09) +     -.23(-.27,-.20) +  .03(-.01, .06) +     
semantic memory            hrs  pef           word_de   3288         30.33(3.72), $p$<.01       .15( .08), $p$=.07        1.95(1.80), $p$=.28   .27( .24, .30) + ***    .74( .72, .75) + .  .03(-.01, .06) +     
semantic memory            map  fev           word_de   351            .05( .07), $p$=.44       .00( .00), $p$=.82         .00( .01), $p$=.77       .06(-.04, .17) +      .27( .17, .36) +  .01(-.09, .12) +     
semantic memory            nas  fev           word_de   1131           .54( .31), $p$=.08       .00( .00), $p$=.84         .04( .05), $p$=.51     .08( .02, .14) + .      .00(-.06, .06) +  .02(-.04, .08) +     
semantic memory            nas  fev           word_de   1131           .54( .31), $p$=.08       .00( .00), $p$=.84         .04( .05), $p$=.51     .08( .02, .14) + .      .00(-.06, .06) +  .02(-.04, .08) +     
semantic memory            map  fev          word_rec   351            .01( .04), $p$=.88      -.00( .00), $p$=.36         .01( .01), $p$=.19       .01(-.09, .12) +     -.38(-.46,-.28) +  .07(-.04, .17) +     
short-term memory          map  fev         bstory_im   351            .05( .06), $p$=.43       .00( .00), $p$=.18        -.01( .01), $p$=.29       .08(-.03, .18) +      .69( .63, .74) +  -.05(-.15, .06) +    
short-term memory          eas  pef         digit_tot    72       -77.93(132.76), $p$=.56     -4.14(5.13), $p$=.42      20.81(16.48), $p$=.21      -.21(-.42, .02) +     -.91(-.94,-.86) +  .20(-.03, .41) +     
short-term memory          nas  fev         digit_tot   1131           .22( .41), $p$=.59       .00( .00), $p$=.79         .09( .07), $p$=.18       .03(-.03, .08) +      .12( .06, .18) +  .04(-.02, .10) +     
short-term memory        satsa  fev           fig_mem   299            .40( .17), $p$=.02       .00( .00), $p$=.91         .01( .04), $p$=.78     .23( .12, .33) + *                   ---  .01(-.10, .13) +     
short-term memory          map  fev          logic_im   351            .12( .12), $p$=.33      -.01( .01), $p$=.22         .00( .02), $p$=.95       .08(-.03, .18) +     -.57(-.63,-.49) +  .00(-.10, .11) +     
short-term memory         octo  pef          prose_im   136         63.89(39.48), $p$=.11      -.17( .42), $p$=.68      11.87(14.47), $p$=.41       .22( .05, .37) +     -.25(-.40,-.09) +  .10(-.07, .26) +     
short-term memory         elsa  fev           word_im   3091           .03( .02), $p$=.15       .00( .00), $p$=.52         .02( .01), $p$=.06       .06( .02, .09) +      .00(-.04, .04) +  .05( .01, .08) + .   
short-term memory         elsa  fev100        word_im   3091          3.22(2.20), $p$=.14      -.02( .03), $p$=.51        2.34(1.21), $p$=.05       .06( .02, .09) +     -.11(-.15,-.08) +  .05( .01, .08) + .   
short-term memory          hrs  pef           word_im   3288         23.98(3.09), $p$<.01       .05( .07), $p$=.47        2.27(1.45), $p$=.12   .26( .22, .29) + ***      .37( .34, .40) +  .04( .00, .07) +     
short-term memory         lasa  pef           word_im   800         35.22(17.06), $p$=.04       .03( .11), $p$=.81       19.63(5.39), $p$<.01     .10( .03, .17) + *      .11( .04, .18) +  .10( .03, .17) + *** 
short-term memory          map  fev           word_im   351            .12( .10), $p$=.24      -.00( .01), $p$=.88         .05( .02), $p$=.05       .10(-.01, .20) +     -.09(-.19, .02) +  .09(-.01, .19) + .   
short-term memory          nas  fev           word_im   1131          1.24( .62), $p$=.04       .00( .00), $p$=.34        -.13( .11), $p$=.22     .10( .04, .16) + *      .15( .09, .21) +  -.03(-.09, .02) +    
verbal comprehension       map  fev             ideas   351           -.00( .02), $p$=.78      -.00( .00), $p$=.15         .00( .01), $p$=.56      -.02(-.13, .08) +     -.67(-.72,-.61) +  .03(-.08, .13) +     
visual discrimination      map  fev              line   351            .16( .08), $p$=.05       .00( .00), $p$=.63         .00( .02), $p$=.89     .14( .04, .24) + *      .27( .17, .36) +  .01(-.10, .11) +     
working memory             map  fev           digit_b   351            .08( .06), $p$=.14      -.00( .00), $p$=.85        -.00( .01), $p$=.74       .11( .00, .21) +     -.16(-.26,-.06) +  -.01(-.12, .09) +    
working memory             nas  fev           digit_b   1131           .16( .24), $p$=.52       .00( .00), $p$=.25         .05( .04), $p$=.26       .03(-.02, .09) +                   ---  .03(-.02, .09) +     
working memory            octo  pef           digit_b   138         28.91(13.02), $p$=.03       .33( .37), $p$=.38       -5.13(4.88), $p$=.29     .31( .15, .45) + *      .36( .21, .50) +  -.09(-.25, .08) +    
working memory           satsa  fev           digit_b   299            .09( .04), $p$=.03       .00( .00), $p$=.57        -.01( .01), $p$=.40     .22( .11, .33) + *                   ---  -.03(-.15, .08) +    
working memory             map  fev           digit_o   351           -.02( .04), $p$=.69       .00( .00), $p$=.89        -.00( .01), $p$=.82      -.03(-.14, .07) +      .38( .28, .46) +  -.01(-.12, .09) +    

## female

domain                   study  phys              cog   $n$                  Cov(Levels)            Cov(Slopes)            Cov(Residuals)           Corr(Levels)          Corr(Slopes)  Corr(Residuals)      
----------------------  ------  -------  ------------  ------  -------------------------  ---------------------  ------------------------  ---------------------  --------------------  ---------------------
attention                  map  fev           digit_f   1010          .06( .02), $p$<.01     .00( .00), $p$=.99        .01( .01), $p$=.22    .13( .07, .19) + **                   ---  .03(-.03, .10) +     
attention                 octo  pef           digit_f   275          -.26(4.91), $p$=.96    -.12( .12), $p$=.31        .45(1.90), $p$=.81      -.01(-.12, .11) +     -.29(-.40,-.18) +  .01(-.11, .13) +     
attention                satsa  fev           digit_f   409           .02( .02), $p$=.41     .00( .00), $p$=.91        .01( .01), $p$=.07       .08(-.02, .18) +                   ---  .07(-.03, .17) + .   
attention                  hrs  pef           serial7   4608         9.13(1.94), $p$<.01     .16( .05), $p$<.01      -1.11( .92), $p$=.22   .13( .10, .16) + ***   .38( .35, .40) + **  -.02(-.05, .00) +    
episodic memory            map  fev         bstory_de   1010          .01( .02), $p$=.74    -.00( .00), $p$=.42       -.01( .01), $p$=.08       .02(-.04, .08) +                   ---  -.06(-.12, .01) + .  
episodic memory          satsa  fev       information   411           .06( .14), $p$=.66     .00( .00), $p$=.05        .09( .03), $p$=.01       .03(-.06, .13) +                   ---  .11( .01, .20) + **  
episodic memory            map  fev          logic_de   1010          .03( .05), $p$=.51    -.01( .00), $p$=.22       -.01( .01), $p$=.61       .03(-.03, .09) +                   ---  -.02(-.08, .04) +    
executive function         eas  pef           trailsb   150     -781.69(661.61), $p$=.24   -.54(29.25), $p$=.98   -78.15(239.81), $p$=.74      -.24(-.38,-.08) +     -.04(-.19, .13) +  -.05(-.21, .11) +    
fluency                    map  fev        categories   1010          .49( .10), $p$<.01     .00( .01), $p$=.99       -.03( .02), $p$=.20   .22( .16, .28) + ***                   ---  -.04(-.10, .03) +    
fluid reasoning          satsa  fev         analogies   408           .19( .07), $p$=.01     .00( .00), $p$=.36        .01( .02), $p$=.66    .26( .17, .35) + **                   ---  .02(-.08, .12) +     
fluid reasoning            eas  pef             block   150        86.03(78.62), $p$=.27     .36(2.06), $p$=.86      -.38(16.61), $p$=.98       .19( .03, .34) +      .15(-.01, .31) +  -.00(-.16, .16) +    
fluid reasoning           octo  pef             block   271        83.65(32.97), $p$=.01     .04( .68), $p$=.96      22.75(9.67), $p$=.02     .23( .12, .34) + *      .02(-.10, .14) +  .15( .03, .26) + *   
fluid reasoning            map  fev          matrices   1010          .12( .03), $p$<.01     .00( .00), $p$=.40       -.01( .01), $p$=.11   .20( .14, .26) + ***                   ---  -.05(-.11, .02) +    
fluid reasoning           lasa  pef             raven   782         43.20(8.05), $p$<.01    -.01( .04), $p$=.76        .53(2.73), $p$=.85   .29( .22, .35) + ***     -.16(-.22,-.09) +  .00(-.07, .08) +     
fluid reasoning          satsa  fev            rotate   408          1.12( .35), $p$<.01     .00( .00), $p$=.98        .03( .10), $p$=.78   .29( .19, .37) + ***                   ---  .01(-.09, .11) +     
mental status              map  fev              mmse   1010          .02( .02), $p$=.36    -.00( .00), $p$=.64        .00( .00), $p$=.73       .05(-.01, .11) +                   ---  .01(-.05, .07) +     
mental status            satsa  fev              mmse   412          -.02( .05), $p$=.68     .00( .00), $p$=.10        .06( .02), $p$<.01      -.07(-.17, .02) +                   ---  .15( .05, .24) + **  
mental status              hrs  pef              tics   715         10.30(6.60), $p$=.12     .33( .20), $p$=.09      -1.12(2.17), $p$=.61       .13( .05, .20) +    .33( .26, .39) + .  -.02(-.09, .05) +    
perceptual speed          lasa  pef            letter   782        74.21(15.62), $p$<.01    -.01( .06), $p$=.91      12.67(3.60), $p$<.01   .22( .15, .29) + ***     -.03(-.10, .04) +  .11( .04, .18) + *** 
perceptual speed           map  fev          num_comp   1010          .28( .08), $p$<.01    -.00( .01), $p$=.47        .00( .02), $p$=.96   .15( .09, .21) + ***                   ---  .00(-.06, .06) +     
perceptual speed           eas  pef            symbol   150      215.86(120.89), $p$=.07    2.80(4.40), $p$=.52     -1.93(24.59), $p$=.94     .30( .14, .44) + .      .50( .37, .62) +  -.01(-.17, .15) +    
perceptual speed           map  fev            symbol   1010          .48( .11), $p$<.01    -.00( .01), $p$=.53        .01( .03), $p$=.69   .18( .12, .24) + ***                   ---  .01(-.05, .08) +     
perceptual speed          octo  pef            symbol   263       202.30(47.72), $p$<.01    2.24(1.04), $p$=.03      8.29(13.50), $p$=.54   .38( .27, .48) + ***    .66( .59, .72) + *  .03(-.09, .15) +     
semantic memory            map  fev               bnt   1010          .02( .02), $p$=.32     .00( .00), $p$=.72       -.00( .00), $p$=.61       .05(-.01, .11) +                   ---  -.02(-.08, .04) +    
semantic memory            map  fev              nart   1010          .10( .03), $p$<.01     .00( .00), $p$=.73        .00( .00), $p$=.98   .16( .10, .22) + ***                   ---  .00(-.06, .06) +     
semantic memory          satsa  fev          synonyms   410           .22( .09), $p$=.02     .00( .00), $p$=.20        .04( .02), $p$=.09     .18( .08, .27) + *                   ---  .08(-.02, .17) + .   
semantic memory           elsa  fev           word_de   3511          .02( .02), $p$=.25     .00( .00), $p$=.63        .01( .01), $p$=.57       .05( .01, .08) +                   ---  .02(-.02, .05) +     
semantic memory           elsa  fev           word_de   3511          .02( .02), $p$=.25     .00( .00), $p$=.63        .01( .01), $p$=.57       .05( .01, .08) +                   ---  .02(-.02, .05) +     
semantic memory           elsa  fev100        word_de   3511         2.12(1.77), $p$=.23    -.01( .03), $p$=.58        .67(1.07), $p$=.53       .05( .01, .08) +     -.42(-.45,-.40) +  .02(-.02, .05) +     
semantic memory           elsa  fev100        word_de   3511         2.12(1.77), $p$=.23    -.01( .03), $p$=.58        .67(1.07), $p$=.53       .05( .01, .08) +     -.42(-.45,-.40) +  .02(-.02, .05) +     
semantic memory            hrs  pef           word_de   4611        22.08(2.27), $p$<.01     .10( .05), $p$=.04       2.00(1.03), $p$=.05   .28( .25, .31) + ***    .70( .69, .72) + *  .04( .01, .07) + .   
semantic memory            map  fev           word_de   1010          .03( .02), $p$=.22    -.00( .00), $p$=.70        .00( .01), $p$=.94       .06(-.01, .12) +                   ---  .00(-.06, .06) +     
semantic memory            map  fev          word_rec   1010          .01( .01), $p$=.66     .00( .00), $p$=.93        .00( .00), $p$=.96       .03(-.03, .09) +      .00(-.06, .06) +  .00(-.06, .06) +     
short-term memory          map  fev         bstory_im   1010          .03( .02), $p$=.13    -.00( .00), $p$=.40       -.01( .01), $p$=.12       .08( .02, .14) +                   ---  -.04(-.10, .02) +    
short-term memory          eas  pef         digit_tot   150       -24.44(27.64), $p$=.38    -.61( .96), $p$=.53       3.65(7.29), $p$=.62      -.15(-.30, .01) +     -.48(-.60,-.35) +  .06(-.10, .22) +     
short-term memory        satsa  fev           fig_mem   410           .10( .08), $p$=.26     .00( .00), $p$=.29        .04( .03), $p$=.20       .10( .00, .19) +                   ---  .06(-.04, .15) +     
short-term memory          map  fev          logic_im   1010          .05( .05), $p$=.26    -.00( .00), $p$=.51       -.01( .01), $p$=.60       .05(-.01, .11) +                   ---  -.02(-.08, .05) +    
short-term memory         octo  pef          prose_im   267        28.79(16.85), $p$=.09    -.08( .54), $p$=.88       7.21(5.67), $p$=.20     .16( .04, .27) + .     -.05(-.17, .07) +  .08(-.04, .19) +     
short-term memory         elsa  fev           word_im   3511          .03( .02), $p$=.09     .00( .00), $p$=.68        .01( .01), $p$=.29     .07( .04, .10) + .                   ---  .02(-.01, .06) +     
short-term memory         elsa  fev100        word_im   3511         2.63(1.49), $p$=.08    -.01( .02), $p$=.63       1.00( .86), $p$=.24     .07( .04, .10) + .     -.16(-.20,-.13) +  .02(-.01, .06) +     
short-term memory          hrs  pef           word_im   4612        18.90(1.80), $p$<.01     .04( .04), $p$=.30       1.71( .85), $p$=.04   .31( .29, .34) + ***      .44( .42, .47) +  .04( .01, .07) + *   
short-term memory         lasa  pef           word_im   782        37.66(13.01), $p$<.01     .01( .06), $p$=.86      25.45(4.52), $p$<.01    .16( .09, .23) + **      .10( .03, .17) +  .14( .07, .20) + *** 
short-term memory          map  fev           word_im   1010          .13( .05), $p$<.01    -.01( .01), $p$=.11        .02( .01), $p$=.23    .12( .06, .18) + **                   ---  .04(-.02, .11) +     
verbal comprehension       map  fev             ideas   1010          .02( .01), $p$<.01     .00( .00), $p$=.58       -.00( .00), $p$=.55    .18( .12, .24) + **                   ---  -.01(-.08, .05) +    
visual discrimination      map  fev              line   1010          .10( .03), $p$<.01     .00( .00), $p$=.96       -.01( .01), $p$=.08    .15( .08, .20) + **                   ---  -.04(-.10, .02) + .  
working memory             map  fev           digit_b   1010          .08( .02), $p$<.01     .00( .00), $p$=.10       -.01( .01), $p$=.11   .15( .09, .21) + ***      .51( .47, .56) +  -.04(-.11, .02) +    
working memory            octo  pef           digit_b   275          8.74(5.74), $p$=.13     .04( .12), $p$=.76        .82(2.44), $p$=.74       .19( .07, .30) +      .15( .04, .27) +  .02(-.10, .13) +     
working memory           satsa  fev           digit_b   409           .08( .03), $p$<.01     .00( .00), $p$=.19       -.01( .01), $p$=.59    .33( .24, .41) + **                   ---  -.03(-.13, .07) +    
working memory             map  fev           digit_o   1010          .06( .02), $p$<.01    -.00( .00), $p$=.31        .00( .00), $p$=.34   .19( .13, .25) + ***                   ---  .03(-.04, .09) +     



# Session Information
For the sake of documentation and reproducibility, the current report was rendered on a system using the following software.


```
Report rendered by koval_000 at 2016-11-04, 06:36 -0400
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
[1] dplyr_0.5.0               testit_0.5                knitr_1.14                IalsaSynthesis_0.1.8.9000
[5] MplusAutomation_0.6-4     ggplot2_2.1.0             magrittr_1.5             

loaded via a namespace (and not attached):
 [1] Rcpp_0.12.7      formatR_1.4      highr_0.6        plyr_1.8.4       tools_3.3.1      boot_1.3-18     
 [7] digest_0.6.10    jsonlite_1.1     evaluate_0.10    tibble_1.2       gtable_0.2.0     lattice_0.20-34 
[13] texreg_1.36.7    DBI_0.5-1        yaml_2.1.13      proto_0.3-10     coda_0.18-1      stringr_1.1.0   
[19] htmlwidgets_0.7  grid_3.3.1       DT_0.2           R6_2.2.0         rmarkdown_1.1    gsubfn_0.6-6    
[25] pander_0.6.0     tidyr_0.6.0      readr_1.0.0      scales_0.4.0     htmltools_0.3.5  rsconnect_0.5   
[31] assertthat_0.1   colorspace_1.2-7 xtable_1.8-2     stringi_1.1.2    lazyeval_0.2.0   munsell_0.4.3   
```
