# Bivariate Outcomes -- Combining Studies


This report covers the analyses used in the ZZZ project (Marcus Mark, PI).

<!--  Set the working directory to the repository's base directory; this assumes the report is nested inside of one directory.-->


<!-- Set the report-wide options, and point to the external code file. -->


<!-- Load the sources.  Suppress the output when loading sources. --> 


<!-- Load 'sourced' R files.  Suppress the output when loading packages. --> 


<!-- Load any Global functions and variables declared in the R file.  Suppress the output. --> 


<!-- Declare any global functions specific to a Rmd output.  Suppress the output. --> 


<!-- Load the datasets.   -->


<!-- Tweak the datasets.   -->



<!-- FREQS across studies and outcomes.  

 -->
<!-- Calculate the forest results (but don't plot yet).  

 -->

## Notes

**Note 1**: The current report covers 10 studies: eas, elsa, habc, hrs, ilse, nas, nuage, octo, radc, satsa.


# Forest Plot (Static)

## `fev` 

Studies with this physical variable listed in the model output: elsa, nas, radc, satsa 



study_name   cognitive_measure      subgroup   model_type    subject_count   wave_count  converged 
-----------  ---------------------  ---------  -----------  --------------  -----------  ----------
satsa        analogies              female     ae                      485            7  TRUE      
satsa        analogies              female     aeh                     476            7  TRUE      
satsa        analogies              female     aehplus                 408            7  TRUE      
satsa        analogies              female     a                       507            7  TRUE      
satsa        analogies              male       ae                      341            7  TRUE      
satsa        analogies              male       aeh                     338            7  TRUE      
satsa        analogies              male       aehplus                 300            7  TRUE      
satsa        analogies              male       a                       347            7  TRUE      
satsa        analogies              female     0                       512            7  TRUE      
satsa        analogies              male       0                       347            7  TRUE      
nas          categories             male       ae                     1132            5  TRUE      
nas          categories             male       aeh                    1132            5  TRUE      
nas          categories             male       aehplus                1131            5  TRUE      
nas          categories             male       a                      1132            5  TRUE      
nas          categories             male       0                      1131            5  TRUE      
nas          categories             male       full                   1131            5  TRUE      
satsa        block                  female     0                       512            7  TRUE      
satsa        block                  female     a                       512            7  TRUE      
satsa        block                  female     ae                      490            7  TRUE      
satsa        block                  female     aeh                     477            7  TRUE      
satsa        block                  female     aehplus                 409            7  TRUE      
satsa        block                  male       0                       347            7  TRUE      
satsa        block                  male       a                       347            7  TRUE      
satsa        block                  male       ae                      341            7  TRUE      
satsa        block                  male       aeh                     338            7  TRUE      
satsa        block                  male       aehplus                 300            7  TRUE      
radc         bnt                    female     a                      1010            5  TRUE      
radc         bnt                    female     ae                     1010            5  TRUE      
radc         bnt                    female     aeh                    1010            5  TRUE      
radc         bnt                    female     aehplus                1010            5  TRUE      
radc         bnt                    male       a                       351            5  TRUE      
radc         bnt                    male       ae                      351            5  TRUE      
radc         bnt                    male       aeh                     351            5  TRUE      
radc         bnt                    male       aehplus                 351            5  TRUE      
radc         bostonstorydelay       female     a                      1010            5  TRUE      
radc         bostonstorydelay       female     ae                     1010            5  TRUE      
radc         bostonstorydelay       female     aeh                    1010            5  TRUE      
radc         bostonstorydelay       female     aehplus                1010            5  TRUE      
radc         bostonstorydelay       male       a                       351            5  TRUE      
radc         bostonstorydelay       male       ae                      351            5  TRUE      
radc         bostonstorydelay       male       aeh                     351            5  TRUE      
radc         bostonstorydelay       male       aehplus                 351            5  TRUE      
radc         bostonstoryimmediate   female     a                      1010            5  TRUE      
radc         bostonstoryimmediate   female     ae                     1010            5  TRUE      
radc         bostonstoryimmediate   female     aeh                    1010            5  TRUE      
radc         bostonstoryimmediate   female     aehplus                1010            5  TRUE      
radc         bostonstoryimmediate   male       a                       351            5  TRUE      
radc         bostonstoryimmediate   male       ae                      351            5  TRUE      
radc         bostonstoryimmediate   male       aeh                     351            5  TRUE      
radc         bostonstoryimmediate   male       aehplus                 351            5  TRUE      
radc         categories             female     a                      1010            5  TRUE      
radc         categories             female     ae                     1010            5  TRUE      
radc         categories             female     aeh                    1010            5  TRUE      
radc         categories             female     aehplus                1010            5  TRUE      
radc         categories             male       a                       351            5  TRUE      
radc         categories             male       ae                      351            5  TRUE      
radc         categories             male       aeh                     351            5  TRUE      
radc         categories             male       aehplus                 351            5  TRUE      
radc         complexideas           female     a                      1010            5  TRUE      
radc         complexideas           female     ae                     1010            5  TRUE      
radc         complexideas           female     aeh                    1010            5  TRUE      
radc         complexideas           female     aehplus                1010            5  TRUE      
radc         complexideas           male       a                       351            5  TRUE      
radc         complexideas           male       ae                      351            5  TRUE      
radc         complexideas           male       aeh                     351            5  TRUE      
radc         complexideas           male       aehplus                 351            5  TRUE      
elsa         delayedrecall          female     ae                     6106            6  TRUE      
elsa         delayedrecall          female     ae                     6106            6  TRUE      
elsa         delayedrecall          female     aeh                    2795            6  TRUE      
elsa         delayedrecall          female     aeh                    2795            6  TRUE      
elsa         delayedrecall          female     aehplus                2782            6  TRUE      
elsa         delayedrecall          female     aehplus                2782            6  TRUE      
elsa         delayedrecall          female     a                      6117            6  TRUE      
elsa         delayedrecall          female     a                      6117            6  TRUE      
elsa         delayedrecall          female     0                      3811            6  TRUE      
elsa         delayedrecall          female     0                      3811            6  TRUE      
elsa         delayedrecall          male       ae                     5123            6  TRUE      
elsa         delayedrecall          male       ae                     5123            6  TRUE      
elsa         delayedrecall          male       aeh                    2269            6  TRUE      
elsa         delayedrecall          male       aeh                    2269            6  TRUE      
elsa         delayedrecall          male       aehplus                2256            6  TRUE      
elsa         delayedrecall          male       aehplus                2256            6  TRUE      
elsa         delayedrecall          male       a                      5140            6  TRUE      
elsa         delayedrecall          male       a                      5140            6  TRUE      
elsa         delayedrecall          male       0                      3075            6  TRUE      
elsa         delayedrecall          male       0                      3075            6  TRUE      
nas          delayedrecall          male       ae                     1132            6  TRUE      
nas          delayedrecall          male       aeh                    1132            6  TRUE      
nas          delayedrecall          male       aehplus                1131            6  TRUE      
nas          delayedrecall          male       a                      1132            6  TRUE      
nas          delayedrecall          male       0                      1131            6  TRUE      
nas          delayedrecall          male       full                   1131            6  TRUE      
nas          digitbackwardspan      male       ae                     1132            6  TRUE      
nas          digitbackwardspan      male       aeh                    1132            6  TRUE      
nas          digitbackwardspan      male       aehplus                1131            6  TRUE      
nas          digitbackwardspan      male       a                      1132            6  TRUE      
nas          digitbackwardspan      male       0                      1130            6  TRUE      
nas          digitbackwardspan      male       full                   1131            6  TRUE      
nas          digitbackwardtotal     male       ae                     1132            6  TRUE      
nas          digitbackwardtotal     male       aeh                    1132            6  TRUE      
nas          digitbackwardtotal     male       aehplus                1131            6  TRUE      
nas          digitbackwardtotal     male       a                      1132            6  TRUE      
nas          digitbackwardtotal     male       0                      1130            6  TRUE      
nas          digitbackwardtotal     male       full                   1131            6  TRUE      
radc         digitordering          female     a                      1010            5  TRUE      
radc         digitordering          female     ae                     1010            5  TRUE      
radc         digitordering          female     aeh                    1010            5  TRUE      
radc         digitordering          female     aehplus                1010            5  TRUE      
radc         digitordering          male       a                       351            5  TRUE      
radc         digitordering          male       ae                      351            5  TRUE      
radc         digitordering          male       aeh                     351            5  TRUE      
radc         digitordering          male       aehplus                 351            5  TRUE      
radc         digitsback             female     a                      1010            5  TRUE      
radc         digitsback             female     ae                     1010            5  TRUE      
radc         digitsback             female     aeh                    1010            5  TRUE      
radc         digitsback             female     aehplus                1010            5  TRUE      
radc         digitsback             male       a                       351            5  TRUE      
radc         digitsback             male       ae                      351            5  TRUE      
radc         digitsback             male       aeh                     351            5  TRUE      
radc         digitsback             male       aehplus                 351            5  TRUE      
satsa        digitsback             female     0                       512            7  TRUE      
satsa        digitsback             female     a                       512            7  TRUE      
satsa        digitsback             female     ae                      490            7  TRUE      
satsa        digitsback             female     aeh                     478            7  TRUE      
satsa        digitsback             female     aehplus                 410            7  TRUE      
satsa        digitsback             male       0                       347            7  TRUE      
satsa        digitsback             male       a                       347            7  TRUE      
satsa        digitsback             male       ae                      341            7  TRUE      
satsa        digitsback             male       aeh                     338            7  TRUE      
satsa        digitsback             male       aehplus                 300            7  TRUE      
radc         digitsforward          female     a                      1010            5  TRUE      
radc         digitsforward          female     ae                     1010            5  TRUE      
radc         digitsforward          female     aeh                    1010            5  TRUE      
radc         digitsforward          female     aehplus                1010            5  TRUE      
radc         digitsforward          male       a                       351            5  TRUE      
radc         digitsforward          male       ae                      351            5  TRUE      
radc         digitsforward          male       aeh                     351            5  TRUE      
radc         digitsforward          male       aehplus                 351            5  TRUE      
satsa        digitsforward          female     0                       512            7  TRUE      
satsa        digitsforward          female     a                       512            7  TRUE      
satsa        digitsforward          female     ae                      490            7  TRUE      
satsa        digitsforward          female     aeh                     478            7  TRUE      
satsa        digitsforward          female     aehplus                 410            7  TRUE      
satsa        digitsforward          male       0                       347            7  TRUE      
satsa        digitsforward          male       a                       347            7  TRUE      
satsa        digitsforward          male       ae                      341            7  TRUE      
satsa        digitsforward          male       aeh                     338            7  TRUE      
satsa        digitsforward          male       aehplus                 300            7  TRUE      
radc         symbol                 female     a                      1010            5  TRUE      
radc         symbol                 female     ae                     1010            5  TRUE      
radc         symbol                 female     aeh                    1010            5  TRUE      
radc         symbol                 female     aehplus                1010            5  TRUE      
radc         symbol                 male       a                       351            5  TRUE      
radc         symbol                 male       ae                      351            5  TRUE      
radc         symbol                 male       aeh                     351            5  TRUE      
radc         symbol                 male       aehplus                 351            5  TRUE      
satsa        figureid               female     ae                      487            7  TRUE      
satsa        figureid               female     aeh                     478            7  TRUE      
satsa        figureid               female     a                       509            7  TRUE      
satsa        figureid               male       ae                      341            7  TRUE      
satsa        figureid               male       aeh                     338            7  TRUE      
satsa        figureid               male       a                       347            7  TRUE      
nas          figurecopy             male       ae                     1132            6  TRUE      
nas          figurecopy             male       aeh                    1132            6  TRUE      
nas          figurecopy             male       aehplus                1131            6  TRUE      
nas          figurecopy             male       a                      1132            6  TRUE      
nas          figurecopy             male       0                      1132            6  TRUE      
nas          figurecopy             male       full                   1131            6  TRUE      
satsa        figurememory           female     0                       512            7  TRUE      
satsa        figurememory           female     a                       512            7  TRUE      
satsa        figurememory           female     ae                      490            7  TRUE      
satsa        figurememory           female     aeh                     478            7  TRUE      
satsa        figurememory           female     aehplus                 410            7  TRUE      
satsa        figurememory           male       0                       347            7  TRUE      
satsa        figurememory           male       a                       347            7  TRUE      
satsa        figurememory           male       ae                      341            7  TRUE      
satsa        figurememory           male       aeh                     337            7  TRUE      
satsa        figurememory           male       aehplus                 299            7  TRUE      
elsa         wordlistimmed          female     ae                     6106            6  TRUE      
elsa         wordlistimmed          female     ae                     6106            6  TRUE      
elsa         wordlistimmed          female     aeh                    2795            6  TRUE      
elsa         wordlistimmed          female     aeh                    2795            6  TRUE      
elsa         wordlistimmed          female     aehplus                2782            6  TRUE      
elsa         wordlistimmed          female     aehplus                2782            6  TRUE      
elsa         wordlistimmed          female     a                      6117            6  TRUE      
elsa         wordlistimmed          female     a                      6117            6  TRUE      
elsa         wordlistimmed          female     0                      3809            6  TRUE      
elsa         wordlistimmed          female     0                      3809            6  TRUE      
elsa         wordlistimmed          male       ae                     5123            6  TRUE      
elsa         wordlistimmed          male       ae                     5123            6  TRUE      
elsa         wordlistimmed          male       aeh                    2269            6  TRUE      
elsa         wordlistimmed          male       aeh                    2269            6  TRUE      
elsa         wordlistimmed          male       aehplus                2256            6  TRUE      
elsa         wordlistimmed          male       aehplus                2256            6  TRUE      
elsa         wordlistimmed          male       a                      5140            6  TRUE      
elsa         wordlistimmed          male       a                      5140            6  TRUE      
elsa         wordlistimmed          male       0                      3072            6  TRUE      
elsa         wordlistimmed          male       0                      3072            6  TRUE      
nas          wordlistimmed          male       ae                     1132            6  TRUE      
nas          wordlistimmed          male       aeh                    1132            6  TRUE      
nas          wordlistimmed          male       aehplus                1131            6  TRUE      
nas          wordlistimmed          male       a                      1132            6  TRUE      
nas          wordlistimmed          male       0                      1131            6  TRUE      
nas          wordlistimmed          male       full                   1131            6  TRUE      
satsa        info                   female     0                       512            7  TRUE      
satsa        info                   female     ae                      490            7  TRUE      
satsa        info                   female     aeh                     479            7  TRUE      
satsa        info                   female     aehplus                 411            7  TRUE      
satsa        info                   female     a                       512            7  TRUE      
satsa        info                   male       0                       347            7  TRUE      
satsa        info                   male       ae                      341            7  TRUE      
satsa        info                   male       aeh                     338            7  TRUE      
satsa        info                   male       aehplus                 300            7  TRUE      
satsa        info                   male       a                       347            7  TRUE      
radc         lineorientation        female     a                      1010            5  TRUE      
radc         lineorientation        female     ae                     1010            5  TRUE      
radc         lineorientation        female     aeh                    1010            5  TRUE      
radc         lineorientation        female     aehplus                1010            5  TRUE      
radc         lineorientation        male       a                       351            5  TRUE      
radc         lineorientation        male       ae                      351            5  TRUE      
radc         lineorientation        male       aeh                     351            5  TRUE      
radc         lineorientation        male       aehplus                 351            5  TRUE      
radc         lineorientation        female     aeh                     951            5  TRUE      
radc         lineorientation        male       aeh                     327            5  TRUE      
radc         logicalmemorydelay     female     a                      1010            5  TRUE      
radc         logicalmemorydelay     female     ae                     1010            5  TRUE      
radc         logicalmemorydelay     female     aeh                    1010            5  TRUE      
radc         logicalmemorydelay     female     aehplus                1010            5  TRUE      
radc         logicalmemorydelay     male       a                       351            5  TRUE      
radc         logicalmemorydelay     male       ae                      351            5  TRUE      
radc         logicalmemorydelay     male       aeh                     351            5  TRUE      
radc         logicalmemorydelay     male       aehplus                 351            5  TRUE      
radc         logicalmemoryimmed     female     ae                     1010            5  TRUE      
radc         logicalmemoryimmed     female     aeh                    1010            5  TRUE      
radc         logicalmemoryimmed     female     aehplus                1010            5  TRUE      
radc         logicalmemoryimmed     male       a                       351            5  TRUE      
radc         logicalmemoryimmed     male       ae                      351            5  TRUE      
radc         logicalmemoryimmed     male       aeh                     351            5  TRUE      
radc         logicalmemoryimmed     male       aehplus                 351            5  TRUE      
radc         matrices               female     a                      1010            5  TRUE      
radc         matrices               female     ae                     1010            5  TRUE      
radc         matrices               female     aeh                    1010            5  TRUE      
radc         matrices               female     aehplus                1010            5  TRUE      
radc         matrices               male       a                       351            5  TRUE      
radc         matrices               male       ae                      351            5  TRUE      
radc         matrices               male       aeh                     351            5  TRUE      
radc         matrices               male       aehplus                 351            5  TRUE      
nas          mmse                   male       ae                     1132            6  TRUE      
nas          mmse                   male       aeh                    1132            6  TRUE      
nas          mmse                   male       aehplus                1131            6  TRUE      
nas          mmse                   male       a                      1132            6  TRUE      
nas          mmse                   male       0                      1132            6  TRUE      
nas          mmse                   male       full                   1131            6  TRUE      
radc         mmse                   female     ae                     1010            5  TRUE      
radc         mmse                   female     aeh                    1010            5  TRUE      
radc         mmse                   female     aehplus                1010            5  TRUE      
radc         mmse                   male       ae                      351            5  TRUE      
radc         mmse                   male       aeh                     351            5  TRUE      
radc         mmse                   male       aehplus                 351            5  TRUE      
satsa        mmse                   female     ae                      489            7  TRUE      
satsa        mmse                   female     aeh                     480            7  TRUE      
satsa        mmse                   female     aehplus                 412            7  TRUE      
satsa        mmse                   female     a                       511            7  TRUE      
satsa        mmse                   male       ae                      341            7  TRUE      
satsa        mmse                   male       aeh                     338            7  TRUE      
satsa        mmse                   male       aehplus                 300            7  TRUE      
satsa        mmse                   male       a                       346            7  TRUE      
satsa        mmse                   female     0                       512            7  TRUE      
satsa        mmse                   male       0                       347            7  TRUE      
radc         nart                   female     a                      1010            5  TRUE      
radc         nart                   female     ae                     1010            5  TRUE      
radc         nart                   female     aeh                    1010            5  TRUE      
radc         nart                   female     aehplus                1010            5  TRUE      
radc         nart                   male       a                       351            5  TRUE      
radc         nart                   male       ae                      351            5  TRUE      
radc         nart                   male       aeh                     351            5  TRUE      
radc         nart                   male       aehplus                 351            5  TRUE      
nas          nocogm                 male       ae                     1132            6  TRUE      
nas          nocogm                 male       ae                     1132            6  TRUE      
nas          nocogm                 male       ae                     1132            6  TRUE      
nas          nocogm                 male       aeh                    1132            6  TRUE      
nas          nocogm                 male       aeh                    1132            6  TRUE      
nas          nocogm                 male       aeh                    1132            6  TRUE      
nas          nocogm                 male       aehplus                1131            6  TRUE      
nas          nocogm                 male       aehplus                1131            6  TRUE      
nas          nocogm                 male       aehplus                1131            6  TRUE      
nas          nocogm                 male       a                      1132            6  TRUE      
nas          nocogm                 male       a                      1132            6  TRUE      
nas          nocogm                 male       a                      1132            6  TRUE      
nas          nocogm                 male       0                      1125            6  TRUE      
nas          nocogm                 male       0                      1125            6  TRUE      
nas          nocogm                 male       0                      1125            6  TRUE      
nas          nocogm                 male       full                   1131            6  TRUE      
nas          nocogm                 male       full                   1131            6  TRUE      
nas          nocogm                 male       full                   1131            6  TRUE      
elsa         univar                 female     ae                     6106            6  TRUE      
elsa         univar                 female     ae                     6106            6  TRUE      
elsa         univar                 female     ae                     6106            6  TRUE      
elsa         univar                 female     aeh                    2795            6  TRUE      
elsa         univar                 female     aeh                    2795            6  TRUE      
elsa         univar                 female     aeh                    2795            6  TRUE      
elsa         univar                 female     aeh                    2795            6  TRUE      
elsa         univar                 female     aehplus                2782            6  TRUE      
elsa         univar                 female     aehplus                2782            6  TRUE      
elsa         univar                 female     aehplus                2782            6  TRUE      
elsa         univar                 female     aehplus                2782            6  TRUE      
elsa         univar                 female     a                      6117            6  TRUE      
elsa         univar                 female     a                      6117            6  TRUE      
elsa         univar                 female     a                      6117            6  TRUE      
elsa         univar                 female     a                      6117            6  TRUE      
elsa         univar                 female     0                      3457            6  TRUE      
elsa         univar                 female     0                      3457            6  TRUE      
elsa         univar                 female     0                      3457            6  TRUE      
elsa         univar                 female     0                      3457            6  TRUE      
elsa         univar                 male       ae                     5123            6  TRUE      
elsa         univar                 male       ae                     5123            6  TRUE      
elsa         univar                 male       ae                     5123            6  TRUE      
elsa         univar                 male       ae                     5123            6  TRUE      
elsa         univar                 male       aeh                    2269            6  TRUE      
elsa         univar                 male       aeh                    2269            6  TRUE      
elsa         univar                 male       aeh                    2269            6  TRUE      
elsa         univar                 male       aeh                    2269            6  TRUE      
elsa         univar                 male       aehplus                2256            6  TRUE      
elsa         univar                 male       aehplus                2256            6  TRUE      
elsa         univar                 male       aehplus                2256            6  TRUE      
elsa         univar                 male       aehplus                2256            6  TRUE      
elsa         univar                 male       a                      5140            6  TRUE      
elsa         univar                 male       a                      5140            6  TRUE      
elsa         univar                 male       a                      5140            6  TRUE      
elsa         univar                 male       a                      5140            6  TRUE      
elsa         univar                 male       0                      2828            6  TRUE      
elsa         univar                 male       0                      2828            6  TRUE      
elsa         univar                 male       0                      2828            6  TRUE      
elsa         univar                 male       0                      2828            6  TRUE      
elsa         univar                 female     ae                     6106            6  TRUE      
radc         numbercomparison       female     a                      1010            5  TRUE      
radc         numbercomparison       female     ae                     1010            5  TRUE      
radc         numbercomparison       female     aeh                    1010            5  TRUE      
radc         numbercomparison       female     aehplus                1010            5  TRUE      
radc         numbercomparison       male       a                       351            5  TRUE      
radc         numbercomparison       male       ae                      351            5  TRUE      
radc         numbercomparison       male       aeh                     351            5  TRUE      
radc         numbercomparison       male       aehplus                 351            5  TRUE      
nas          patterncomparison      male       ae                     1132            4  TRUE      
nas          patterncomparison      male       aeh                    1132            4  TRUE      
nas          patterncomparison      male       aehplus                1131            4  TRUE      
nas          patterncomparison      male       a                      1132            4  TRUE      
nas          patterncomparison      male       0                      1131            4  TRUE      
nas          patterncomparison      male       full                   1131            4  TRUE      
satsa        rotations              female     0                       512            7  TRUE      
satsa        rotations              female     a                       512            7  TRUE      
satsa        rotations              female     ae                      490            7  TRUE      
satsa        rotations              female     aeh                     476            7  TRUE      
satsa        rotations              female     aehplus                 408            7  TRUE      
satsa        rotations              male       0                       347            7  TRUE      
satsa        rotations              male       a                       347            7  TRUE      
satsa        rotations              male       ae                      341            7  TRUE      
satsa        rotations              male       aeh                     337            7  TRUE      
satsa        rotations              male       aehplus                 299            7  TRUE      
satsa        symbol                 female     0                       512            7  TRUE      
satsa        symbol                 female     ae                      486            7  TRUE      
satsa        symbol                 female     aeh                     477            7  TRUE      
satsa        symbol                 female     aehplus                 409            7  TRUE      
satsa        symbol                 female     a                       508            7  TRUE      
satsa        symbol                 male       0                       347            7  TRUE      
satsa        symbol                 male       ae                      341            7  TRUE      
satsa        symbol                 male       aeh                     338            7  TRUE      
satsa        symbol                 male       aehplus                 300            7  TRUE      
satsa        symbol                 male       a                       347            7  TRUE      
satsa        synonyms               female     ae                      487            7  TRUE      
satsa        synonyms               female     aeh                     478            7  TRUE      
satsa        synonyms               female     aehplus                 410            7  TRUE      
satsa        synonyms               female     a                       509            7  TRUE      
satsa        synonyms               male       ae                      341            7  TRUE      
satsa        synonyms               male       aeh                     338            7  TRUE      
satsa        synonyms               male       aehplus                 300            7  TRUE      
satsa        synonyms               male       a                       347            7  TRUE      
satsa        synonyms               female     0                       512            7  TRUE      
satsa        synonyms               male       0                       347            7  TRUE      
radc         wordlistdelay          female     a                      1010            5  TRUE      
radc         wordlistdelay          female     ae                     1010            5  TRUE      
radc         wordlistdelay          female     aeh                    1010            5  TRUE      
radc         wordlistdelay          female     aehplus                1010            5  TRUE      
radc         wordlistdelay          male       a                       351            5  TRUE      
radc         wordlistdelay          male       ae                      351            5  TRUE      
radc         wordlistdelay          male       aeh                     351            5  TRUE      
radc         wordlistdelay          male       aehplus                 351            5  TRUE      
radc         wordlistimmed          female     a                      1010            5  TRUE      
radc         wordlistimmed          female     ae                     1010            5  TRUE      
radc         wordlistimmed          female     aeh                    1010            5  TRUE      
radc         wordlistimmed          female     aehplus                1010            5  TRUE      
radc         wordlistimmed          male       a                       351            5  TRUE      
radc         wordlistimmed          male       ae                      351            5  TRUE      
radc         wordlistimmed          male       aeh                     351            5  TRUE      
radc         wordlistimmed          male       aehplus                 351            5  TRUE      
radc         wordlistrecog          female     a                      1010            5  TRUE      
radc         wordlistrecog          female     ae                     1010            5  TRUE      
radc         wordlistrecog          female     aeh                    1010            5  TRUE      
radc         wordlistrecog          female     aehplus                1010            5  TRUE      
radc         wordlistrecog          male       a                       351            5  TRUE      
radc         wordlistrecog          male       ae                      351            5  TRUE      
radc         wordlistrecog          male       aeh                     351            5  TRUE      
radc         wordlistrecog          male       aehplus                 351            5  TRUE      

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

![](figure_meta/forest_static-1.png) 

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

![](figure_meta/forest_static-2.png) ![](figure_meta/forest_static-3.png) ![](figure_meta/forest_static-4.png) ![](figure_meta/forest_static-5.png) 

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

![](figure_meta/forest_static-6.png) ![](figure_meta/forest_static-7.png) 

```
Warning: Removed 2 rows containing missing values (geom_segment).
```

```
Warning: Removed 2 rows containing missing values (geom_segment).
```

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

![](figure_meta/forest_static-8.png) 

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

![](figure_meta/forest_static-9.png) 

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

![](figure_meta/forest_static-10.png) ![](figure_meta/forest_static-11.png) 

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

![](figure_meta/forest_static-12.png) 

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

![](figure_meta/forest_static-13.png) 

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

![](figure_meta/forest_static-14.png) ![](figure_meta/forest_static-15.png) 

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

![](figure_meta/forest_static-16.png) 

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

![](figure_meta/forest_static-17.png) ![](figure_meta/forest_static-18.png) ![](figure_meta/forest_static-19.png) ![](figure_meta/forest_static-20.png) ![](figure_meta/forest_static-21.png) 

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

![](figure_meta/forest_static-22.png) ![](figure_meta/forest_static-23.png) ![](figure_meta/forest_static-24.png) 

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

![](figure_meta/forest_static-25.png) 

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

![](figure_meta/forest_static-26.png) 

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

![](figure_meta/forest_static-27.png) 

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

![](figure_meta/forest_static-28.png) ![](figure_meta/forest_static-29.png) 

```
Warning: Removed 2 rows containing missing values (geom_segment).
```

```
Warning: Removed 2 rows containing missing values (geom_segment).
```

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

![](figure_meta/forest_static-30.png) ![](figure_meta/forest_static-31.png) 

## `gait` 

Studies with this physical variable listed in the model output: habc, hrs 



study_name   cognitive_measure   subgroup   model_type    subject_count   wave_count  converged 
-----------  ------------------  ---------  -----------  --------------  -----------  ----------
habc         3ms                 female     aeh                    1578           11  TRUE      
habc         3ms                 female     aehplus                1538           11  TRUE      
habc         3ms                 female     a                      1584           11  TRUE      
habc         3ms                 female     full                   1536           11  TRUE      
habc         3ms                 male       aeh                    1489           11  TRUE      
habc         3ms                 male       aehplus                1464           11  TRUE      
habc         3ms                 male       a                      1491           11  TRUE      
habc         3ms                 male       full                   1454           11  TRUE      
habc         clock               female     aeh                    1552           10  TRUE      
habc         clock               female     aehplus                1513           10  TRUE      
habc         clock               female     a                      1558           10  TRUE      
habc         clock               female     full                   1511           10  TRUE      
habc         clock               male       aeh                    1471           10  TRUE      
habc         clock               male       aehplus                1446           10  TRUE      
habc         clock               male       a                      1473           10  TRUE      
habc         clock               male       full                   1436           10  TRUE      
hrs          delayedrecall       female     aeh                     370            5  TRUE      
hrs          delayedrecall       female     aehplus                 370            5  TRUE      
hrs          delayedrecall       female     a                       370            5  TRUE      
hrs          delayedrecall       male       aeh                     318            5  TRUE      
hrs          delayedrecall       male       aehplus                 318            5  TRUE      
hrs          delayedrecall       male       a                       318            5  TRUE      
habc         symbol              female     aeh                    1575           11  TRUE      
habc         symbol              female     aehplus                1535           11  TRUE      
habc         symbol              female     a                      1581           11  TRUE      
habc         symbol              female     full                   1533           11  TRUE      
habc         symbol              male       aeh                    1485           11  TRUE      
habc         symbol              male       aehplus                1460           11  TRUE      
habc         symbol              male       a                      1487           11  TRUE      
habc         symbol              male       full                   1450           11  TRUE      
hrs          wordlistimmed       female     aeh                     370            5  TRUE      
hrs          wordlistimmed       female     aehplus                 370            5  TRUE      
hrs          wordlistimmed       female     a                       370            5  TRUE      
hrs          wordlistimmed       male       aeh                     318            5  TRUE      
hrs          wordlistimmed       male       aehplus                 318            5  TRUE      
hrs          wordlistimmed       male       a                       318            5  TRUE      
habc         univar              female     aeh                    1553           10  TRUE      
habc         univar              female     aehplus                1513           10  TRUE      
habc         univar              female     a                      1559           10  TRUE      
habc         univar              female     0                      1559           10  TRUE      
habc         univar              male       aeh                    1468           10  TRUE      
habc         univar              male       aehplus                1443           10  TRUE      
habc         univar              male       a                      1470           10  TRUE      
habc         univar              male       0                      1470           10  TRUE      
hrs          serial7             female     aeh                     370            5  TRUE      
hrs          serial7             female     aehplus                 370            5  TRUE      
hrs          serial7             female     a                       370            5  TRUE      
hrs          serial7             male       aeh                     318            5  TRUE      
hrs          serial7             male       aehplus                 318            5  TRUE      
hrs          serial7             male       a                       318            5  TRUE      
hrs          tics                female     aeh                     370            5  TRUE      
hrs          tics                female     aehplus                 370            5  TRUE      
hrs          tics                female     a                       370            5  TRUE      
hrs          tics                male       aeh                     318            5  TRUE      
hrs          tics                male       aehplus                 318            5  TRUE      
hrs          tics                male       a                       318            5  TRUE      


![](figure_meta/forest_static-32.png) ![](figure_meta/forest_static-33.png) ![](figure_meta/forest_static-34.png) ![](figure_meta/forest_static-35.png) ![](figure_meta/forest_static-36.png) ![](figure_meta/forest_static-37.png) ![](figure_meta/forest_static-38.png) 

## `grip` 

Studies with this physical variable listed in the model output: eas, elsa, habc, hrs, ilse, nuage, octo, satsa 



study_name   cognitive_measure       subgroup   model_type    subject_count   wave_count  converged 
-----------  ----------------------  ---------  -----------  --------------  -----------  ----------
habc         3ms                     female     aeh                    1578           11  TRUE      
habc         3ms                     female     aehplus                1538           11  TRUE      
habc         3ms                     female     a                      1584           11  TRUE      
habc         3ms                     female     full                   1536           11  TRUE      
habc         3ms                     male       aeh                    1489           11  TRUE      
habc         3ms                     male       aehplus                1464           11  TRUE      
habc         3ms                     male       a                      1491           11  TRUE      
habc         3ms                     male       full                   1454           11  TRUE      
satsa        analogies               female     ae                      486            7  TRUE      
satsa        analogies               female     aeh                     477            7  TRUE      
satsa        analogies               female     aehplus                 410            7  TRUE      
satsa        analogies               female     a                       508            7  TRUE      
satsa        analogies               male       ae                      341            7  TRUE      
satsa        analogies               male       aeh                     338            7  TRUE      
satsa        analogies               male       aehplus                 300            7  TRUE      
satsa        analogies               male       a                       347            7  TRUE      
eas          block                   female     ae                      563            8  TRUE      
eas          block                   female     aeh                     150            8  TRUE      
eas          block                   female     aehplus                 150            8  TRUE      
eas          block                   female     a                       563            8  TRUE      
eas          block                   female     full                    150            8  TRUE      
eas          block                   male       ae                      350            8  TRUE      
eas          block                   male       aeh                      72            8  TRUE      
eas          block                   male       aehplus                  72            8  TRUE      
eas          block                   male       a                       350            8  TRUE      
eas          block                   male       full                     72            8  TRUE      
octo         block                   female     aeh                     275            5  TRUE      
octo         block                   female     a                       303            5  TRUE      
octo         block                   male       aeh                     139            5  TRUE      
octo         block                   male       a                       158            5  TRUE      
eas          bnt                     female     ae                      594            8  TRUE      
eas          bnt                     female     aeh                     150            8  TRUE      
eas          bnt                     female     aehplus                 150            8  TRUE      
eas          bnt                     female     a                       594            8  TRUE      
eas          bnt                     female     full                    150            8  TRUE      
eas          bnt                     male       ae                      376            8  TRUE      
eas          bnt                     male       aeh                      72            8  TRUE      
eas          bnt                     male       aehplus                  72            8  TRUE      
eas          bnt                     male       a                       376            8  TRUE      
eas          bnt                     male       full                     72            8  TRUE      
eas          categories              female     ae                      593            8  TRUE      
eas          categories              female     aeh                     150            8  TRUE      
eas          categories              female     aehplus                 150            8  TRUE      
eas          categories              female     a                       593            8  TRUE      
eas          categories              female     full                    150            8  TRUE      
eas          categories              male       ae                      376            8  TRUE      
eas          categories              male       aeh                      72            8  TRUE      
eas          categories              male       aehplus                  72            8  TRUE      
eas          categories              male       a                       376            8  TRUE      
eas          categories              male       full                     72            8  TRUE      
habc         clock                   female     aeh                    1575           10  TRUE      
habc         clock                   female     aehplus                1535           10  TRUE      
habc         clock                   female     a                      1581           10  TRUE      
habc         clock                   female     full                   1533           10  TRUE      
habc         clock                   male       aeh                    1489           10  TRUE      
habc         clock                   male       aehplus                1464           10  TRUE      
habc         clock                   male       a                      1491           10  TRUE      
habc         clock                   male       full                   1454           10  TRUE      
elsa         delayedrecall           female     ae                     6106            6  TRUE      
elsa         delayedrecall           female     aeh                    2795            6  TRUE      
elsa         delayedrecall           female     aehplus                2782            6  TRUE      
elsa         delayedrecall           female     a                      6117            6  TRUE      
elsa         delayedrecall           female     0                      3811            6  TRUE      
elsa         delayedrecall           male       ae                     5123            6  TRUE      
elsa         delayedrecall           male       aeh                    2269            6  TRUE      
elsa         delayedrecall           male       aehplus                2256            6  TRUE      
elsa         delayedrecall           male       a                      5140            6  TRUE      
elsa         delayedrecall           male       0                      3075            6  TRUE      
hrs          delayedrecall           female     aeh                     641            5  TRUE      
hrs          delayedrecall           female     aehplus                 641            5  TRUE      
hrs          delayedrecall           female     a                       641            5  TRUE      
hrs          delayedrecall           male       aeh                     507            5  TRUE      
hrs          delayedrecall           male       aehplus                 507            5  TRUE      
hrs          delayedrecall           male       a                       507            5  TRUE      
eas          digitspan               female     ae                      595            8  TRUE      
eas          digitspan               female     aeh                     150            8  TRUE      
eas          digitspan               female     aehplus                 150            8  TRUE      
eas          digitspan               female     a                       595            8  TRUE      
eas          digitspan               female     full                    150            8  TRUE      
eas          digitspan               male       ae                      379            8  TRUE      
eas          digitspan               male       aeh                      72            8  TRUE      
eas          digitspan               male       aehplus                  72            8  TRUE      
eas          digitspan               male       a                       379            8  TRUE      
eas          digitspan               male       full                     72            8  TRUE      
octo         digitsback              female     aeh                     276            5  TRUE      
octo         digitsback              female     a                       305            5  TRUE      
octo         digitsback              male       aeh                     139            5  TRUE      
octo         digitsback              male       a                       161            5  TRUE      
octo         digitsforward           female     aeh                     276            5  TRUE      
octo         digitsforward           female     a                       306            5  TRUE      
octo         digitsforward           male       aeh                     139            5  TRUE      
octo         digitsforward           male       a                       161            5  TRUE      
eas          symbol                  female     ae                      592            8  TRUE      
eas          symbol                  female     aeh                     150            8  TRUE      
eas          symbol                  female     aehplus                 150            8  TRUE      
eas          symbol                  female     a                       592            8  TRUE      
eas          symbol                  female     full                    150            8  TRUE      
eas          symbol                  male       ae                      377            8  TRUE      
eas          symbol                  male       aeh                      72            8  TRUE      
eas          symbol                  male       aehplus                  72            8  TRUE      
eas          symbol                  male       a                       377            8  TRUE      
habc         symbol                  female     aeh                    1578           11  TRUE      
habc         symbol                  female     aehplus                1538           11  TRUE      
habc         symbol                  female     a                      1584           11  TRUE      
habc         symbol                  female     full                   1536           11  TRUE      
habc         symbol                  male       aeh                    1488           11  TRUE      
habc         symbol                  male       aehplus                1463           11  TRUE      
habc         symbol                  male       a                      1490           11  TRUE      
habc         symbol                  male       full                   1453           11  TRUE      
octo         symbol                  female     aeh                     272            5  TRUE      
octo         symbol                  female     a                       299            5  TRUE      
octo         symbol                  male       aeh                     138            5  TRUE      
octo         symbol                  male       a                       156            5  TRUE      
ilse         symbol                  female     a                       228            3  TRUE      
ilse         symbol                  female     aeh                     226            3  TRUE      
ilse         symbol                  female     aehplus                 225            3  TRUE      
ilse         symbol                  male       a                       253            3  TRUE      
ilse         symbol                  male       aeh                     253            3  TRUE      
ilse         symbol                  male       aehplus                 252            3  TRUE      
eas          symbol                  male       full                     72            8  TRUE      
eas          verbalfluency           female     ae                      571            8  TRUE      
eas          verbalfluency           female     aeh                     150            8  TRUE      
eas          verbalfluency           female     aehplus                 150            8  TRUE      
eas          verbalfluency           female     a                       571            8  TRUE      
eas          verbalfluency           female     full                    150            8  TRUE      
eas          verbalfluency           male       ae                      358            8  TRUE      
eas          verbalfluency           male       aeh                      72            8  TRUE      
eas          verbalfluency           male       aehplus                  72            8  TRUE      
eas          verbalfluency           male       a                       358            8  TRUE      
eas          verbalfluency           male       full                     72            8  TRUE      
satsa        figureid                female     ae                      486            7  TRUE      
satsa        figureid                female     aeh                     477            7  TRUE      
satsa        figureid                female     a                       508            7  TRUE      
satsa        figureid                male       ae                      341            7  TRUE      
satsa        figureid                male       aeh                     338            7  TRUE      
satsa        figureid                male       a                       347            7  TRUE      
octo         figurelogic             female     aeh                     274            5  TRUE      
octo         figurelogic             female     a                       302            5  TRUE      
octo         figurelogic             male       aeh                     138            5  TRUE      
octo         figurelogic             male       a                       157            5  TRUE      
elsa         wordlistimmed           female     ae                     6106            6  TRUE      
elsa         wordlistimmed           female     aeh                    2795            6  TRUE      
elsa         wordlistimmed           female     aehplus                2782            6  TRUE      
elsa         wordlistimmed           female     a                      6117            6  TRUE      
elsa         wordlistimmed           female     0                      3810            6  TRUE      
elsa         wordlistimmed           male       ae                     5123            6  TRUE      
elsa         wordlistimmed           male       aeh                    2269            6  TRUE      
elsa         wordlistimmed           male       aehplus                2256            6  TRUE      
elsa         wordlistimmed           male       a                      5140            6  TRUE      
elsa         wordlistimmed           male       0                      3073            6  TRUE      
hrs          wordlistimmed           female     aeh                     641            5  TRUE      
hrs          wordlistimmed           female     aehplus                 641            5  TRUE      
hrs          wordlistimmed           female     a                       641            5  TRUE      
hrs          wordlistimmed           male       aeh                     507            5  TRUE      
hrs          wordlistimmed           male       aehplus                 507            5  TRUE      
hrs          wordlistimmed           male       a                       507            5  TRUE      
satsa        info                    female     ae                      488            7  TRUE      
satsa        info                    female     aeh                     479            7  TRUE      
satsa        info                    female     aehplus                 411            7  TRUE      
satsa        info                    female     a                       510            7  TRUE      
satsa        info                    male       ae                      341            7  TRUE      
satsa        info                    male       aeh                     338            7  TRUE      
satsa        info                    male       aehplus                 300            7  TRUE      
satsa        info                    male       a                       347            7  TRUE      
eas          info                    female     a                       538            7  TRUE      
eas          info                    male       ae                      353            7  TRUE      
eas          info                    male       aeh                      72            7  TRUE      
eas          info                    male       aehplus                  72            7  TRUE      
eas          info                    male       a                       353            7  TRUE      
eas          info                    male       full                     72            7  TRUE      
eas          info                    female     ae                      538            7  TRUE      
eas          info                    female     aeh                     145            7  TRUE      
eas          info                    female     aehplus                 145            7  TRUE      
eas          info                    female     full                    145            7  TRUE      
octo         info                    female     aeh                     275            5  TRUE      
octo         info                    female     a                       305            5  TRUE      
octo         info                    male       aeh                     140            5  TRUE      
octo         info                    male       a                       162            5  TRUE      
eas          logicalmemory           female     ae                      554            8  TRUE      
eas          logicalmemory           female     aeh                     150            8  TRUE      
eas          logicalmemory           female     aehplus                 150            8  TRUE      
eas          logicalmemory           female     a                       554            8  TRUE      
eas          logicalmemory           female     full                    150            8  TRUE      
eas          logicalmemory           male       ae                      349            8  TRUE      
eas          logicalmemory           male       aehplus                  72            8  TRUE      
eas          logicalmemory           male       a                       349            8  TRUE      
eas          logicalmemory           male       full                     72            8  TRUE      
ilse         lpsspatialability       female     a                       228            3  TRUE      
ilse         lpsspatialability       female     aeh                     226            3  TRUE      
ilse         lpsspatialability       female     aehplus                 225            3  TRUE      
ilse         lpsspatialability       male       a                       253            3  TRUE      
ilse         lpsspatialability       male       aehplus                 252            3  TRUE      
octo         mirrecall               female     aeh                     273            5  TRUE      
octo         mirrecall               female     a                       303            5  TRUE      
octo         mirrecall               male       aeh                     139            5  TRUE      
octo         mirrecall               male       a                       159            5  TRUE      
nuage        3ms                     female     aeh                     934            4  TRUE      
nuage        3ms                     female     aehplus                 934            4  TRUE      
nuage        3ms                     female     a                       939            4  TRUE      
nuage        3ms                     male       aeh                     847            4  TRUE      
nuage        3ms                     male       aehplus                 847            4  TRUE      
nuage        3ms                     male       a                       851            4  TRUE      
eas          mmse                    female     ae                      600            8  TRUE      
eas          mmse                    female     aeh                     150            8  TRUE      
eas          mmse                    female     aehplus                 150            8  TRUE      
eas          mmse                    female     a                       600            8  TRUE      
eas          mmse                    female     full                    150            8  TRUE      
eas          mmse                    male       ae                      383            8  TRUE      
eas          mmse                    male       aeh                      72            8  TRUE      
eas          mmse                    male       aehplus                  72            8  TRUE      
eas          mmse                    male       a                       383            8  TRUE      
eas          mmse                    male       full                     72            8  TRUE      
nuage        mmse                    female     a                       939            4  TRUE      
nuage        mmse                    female     aeh                     934            4  TRUE      
nuage        mmse                    female     aehplus                 934            4  TRUE      
nuage        mmse                    male       a                       851            4  TRUE      
nuage        mmse                    male       aeh                     847            4  TRUE      
nuage        mmse                    male       aehplus                 847            4  TRUE      
octo         mmse                    female     aeh                     276            5  TRUE      
octo         mmse                    female     a                       311            5  TRUE      
octo         mmse                    male       aeh                     140            5  TRUE      
octo         mmse                    male       a                       164            5  TRUE      
satsa        mmse                    female     ae                      489            7  TRUE      
satsa        mmse                    female     aeh                     480            7  TRUE      
satsa        mmse                    female     aehplus                 412            7  TRUE      
satsa        mmse                    female     a                       511            7  TRUE      
satsa        mmse                    male       ae                      341            7  TRUE      
satsa        mmse                    male       aeh                     338            7  TRUE      
satsa        mmse                    male       aehplus                 300            7  TRUE      
satsa        mmse                    male       a                       347            7  TRUE      
habc         univar                  female     aeh                    1574           10  TRUE      
habc         univar                  female     aehplus                1534           10  TRUE      
habc         univar                  female     a                      1580           10  TRUE      
habc         univar                  female     0                      1580           10  TRUE      
habc         univar                  male       aeh                    1487           10  TRUE      
habc         univar                  male       aehplus                1462           10  TRUE      
habc         univar                  male       a                      1489           10  TRUE      
habc         univar                  male       0                      1489           10  TRUE      
eas          univar                  female     ae                      215            8  TRUE      
eas          univar                  female     ae                      215            8  TRUE      
eas          univar                  female     aeh                     145            8  TRUE      
eas          univar                  female     aeh                     145            8  TRUE      
eas          univar                  female     aehplus                 145            8  TRUE      
eas          univar                  female     aehplus                 145            8  TRUE      
eas          univar                  female     a                       215            8  TRUE      
eas          univar                  female     a                       215            8  TRUE      
eas          univar                  female     0                       215            8  TRUE      
eas          univar                  female     full                    145            8  TRUE      
eas          univar                  female     full                    145            8  TRUE      
eas          univar                  male       ae                      123            8  TRUE      
eas          univar                  male       ae                      123            8  TRUE      
eas          univar                  male       aeh                      72            8  TRUE      
eas          univar                  male       aeh                      72            8  TRUE      
eas          univar                  male       aehplus                  72            8  TRUE      
eas          univar                  male       aehplus                  72            8  TRUE      
eas          univar                  male       a                       123            8  TRUE      
eas          univar                  male       a                       123            8  TRUE      
eas          univar                  male       0                       123            8  TRUE      
eas          univar                  male       full                     72            8  TRUE      
eas          univar                  male       full                     72            8  TRUE      
elsa         univar                  female     ae                     6106            6  TRUE      
elsa         univar                  female     ae                     6106            6  TRUE      
elsa         univar                  female     aeh                    2795            6  TRUE      
elsa         univar                  female     aeh                    2795            6  TRUE      
elsa         univar                  female     aehplus                2782            6  TRUE      
elsa         univar                  female     aehplus                2782            6  TRUE      
elsa         univar                  female     a                      6117            6  TRUE      
elsa         univar                  female     a                      6117            6  TRUE      
elsa         univar                  female     0                      3603            6  TRUE      
elsa         univar                  female     0                      3603            6  TRUE      
elsa         univar                  male       ae                     5123            6  TRUE      
elsa         univar                  male       ae                     5123            6  TRUE      
elsa         univar                  male       aeh                    2269            6  TRUE      
elsa         univar                  male       aeh                    2269            6  TRUE      
elsa         univar                  male       aehplus                2256            6  TRUE      
elsa         univar                  male       a                      5140            6  TRUE      
elsa         univar                  male       0                      2967            6  TRUE      
ilse         univar                  female     a                       226            3  TRUE      
ilse         univar                  female     aeh                     224            3  TRUE      
ilse         univar                  female     aehplus                 223            3  TRUE      
ilse         univar                  female     0                       238            3  TRUE      
ilse         univar                  male       a                       253            3  TRUE      
ilse         univar                  male       aeh                     253            3  TRUE      
ilse         univar                  male       aehplus                 252            3  TRUE      
ilse         univar                  male       0                       260            3  TRUE      
nuage        univar                  female     aeh                     933            4  TRUE      
nuage        univar                  female     aehplus                 933            4  TRUE      
nuage        univar                  female     a                       937            4  TRUE      
nuage        univar                  female     0                       940            4  TRUE      
nuage        univar                  male       aeh                     846            4  TRUE      
nuage        univar                  male       aehplus                 846            4  TRUE      
nuage        univar                  male       a                       848            4  TRUE      
nuage        univar                  male       0                       853            4  TRUE      
nuage        univar                  male       0                       853            4  TRUE      
octo         proserecall             female     aeh                     273            5  TRUE      
octo         proserecall             female     a                       302            5  TRUE      
octo         proserecall             male       aeh                     139            5  TRUE      
octo         proserecall             male       a                       161            5  TRUE      
octo         psif                    female     aeh                     271            4  TRUE      
octo         psif                    female     a                       298            4  TRUE      
octo         psif                    male       aeh                     138            4  TRUE      
octo         psif                    male       a                       156            4  TRUE      
hrs          serial7                 female     aeh                     641            5  TRUE      
hrs          serial7                 female     aehplus                 641            5  TRUE      
hrs          serial7                 female     a                       641            5  TRUE      
hrs          serial7                 male       aeh                     507            5  TRUE      
hrs          serial7                 male       aehplus                 507            5  TRUE      
hrs          serial7                 male       a                       507            5  TRUE      
satsa        symbol                  female     ae                      486            7  TRUE      
satsa        symbol                  female     aeh                     477            7  TRUE      
satsa        symbol                  female     aehplus                 410            7  TRUE      
satsa        symbol                  female     a                       508            7  TRUE      
satsa        symbol                  male       ae                      341            7  TRUE      
satsa        symbol                  male       aeh                     338            7  TRUE      
satsa        symbol                  male       aehplus                 300            7  TRUE      
satsa        symbol                  male       a                       347            7  TRUE      
satsa        synonyms                female     ae                      486            7  TRUE      
satsa        synonyms                female     aeh                     477            7  TRUE      
satsa        synonyms                female     aehplus                 410            7  TRUE      
satsa        synonyms                female     a                       508            7  TRUE      
satsa        synonyms                male       ae                      341            7  TRUE      
satsa        synonyms                male       aeh                     338            7  TRUE      
satsa        synonyms                male       aehplus                 300            7  TRUE      
satsa        synonyms                male       a                       347            7  TRUE      
octo         synonyms                female     aeh                     273            5  TRUE      
octo         synonyms                female     a                       301            5  TRUE      
octo         synonyms                male       aeh                     139            5  TRUE      
octo         synonyms                male       a                       157            5  TRUE      
hrs          tics                    female     aeh                     641            5  TRUE      
hrs          tics                    female     aehplus                 641            5  TRUE      
hrs          tics                    female     a                       641            5  TRUE      
hrs          tics                    male       aeh                     507            5  TRUE      
hrs          tics                    male       aehplus                 507            5  TRUE      
hrs          tics                    male       a                       507            5  TRUE      
eas          trailsb                 female     ae                      580            8  TRUE      
eas          trailsb                 female     aeh                     150            8  TRUE      
eas          trailsb                 female     aehplus                 150            8  TRUE      
eas          trailsb                 female     a                       580            8  TRUE      
eas          trailsb                 female     full                    150            8  TRUE      
eas          trailsb                 male       ae                      368            8  TRUE      
eas          trailsb                 male       aeh                      72            8  TRUE      
eas          trailsb                 male       aehplus                  72            8  TRUE      
eas          trailsb                 male       a                       368            8  TRUE      
eas          trailsb                 male       full                     72            8  TRUE      
ilse         verbalfluency           female     a                       228            3  TRUE      
ilse         verbalfluency           female     aeh                     226            3  TRUE      
ilse         verbalfluency           female     aehplus                 225            3  TRUE      
ilse         verbalfluency           male       a                       253            3  TRUE      
ilse         verbalfluency           male       aeh                     253            3  TRUE      
ilse         verbalfluency           male       aehplus                 252            3  TRUE      
ilse         block                   female     a                       228            3  TRUE      
ilse         block                   female     aeh                     226            3  TRUE      
ilse         block                   female     aehplus                 225            3  TRUE      
ilse         block                   male       a                       253            3  TRUE      
ilse         block                   male       aeh                     253            3  TRUE      
ilse         block                   male       aehplus                 252            3  TRUE      
ilse         waisgeneralknowledge    female     a                       228            3  TRUE      
ilse         waisgeneralknowledge    female     aeh                     226            3  TRUE      
ilse         waisgeneralknowledge    female     aehplus                 225            3  TRUE      
ilse         waisgeneralknowledge    male       a                       253            3  TRUE      
ilse         waisgeneralknowledge    male       aeh                     253            3  TRUE      
ilse         waisgeneralknowledge    male       aehplus                 252            3  TRUE      
ilse         waispicturecompletion   female     a                       228            3  TRUE      
ilse         waispicturecompletion   female     aeh                     226            3  TRUE      
ilse         waispicturecompletion   female     aehplus                 225            3  TRUE      
ilse         waispicturecompletion   male       a                       253            3  TRUE      
ilse         waispicturecompletion   male       aeh                     253            3  TRUE      
ilse         waispicturecompletion   male       aehplus                 252            3  TRUE      
eas          waisvocab               female     ae                      594            8  TRUE      
eas          waisvocab               female     aeh                     150            8  TRUE      
eas          waisvocab               female     aehplus                 150            8  TRUE      
eas          waisvocab               female     a                       594            8  TRUE      
eas          waisvocab               female     full                    150            8  TRUE      
eas          waisvocab               male       ae                      377            8  TRUE      
eas          waisvocab               male       aeh                      72            8  TRUE      
eas          waisvocab               male       aehplus                  72            8  TRUE      
eas          waisvocab               male       a                       377            8  TRUE      
eas          waisvocab               male       full                     72            8  TRUE      


![](figure_meta/forest_static-39.png) ![](figure_meta/forest_static-40.png) ![](figure_meta/forest_static-41.png) ![](figure_meta/forest_static-42.png) ![](figure_meta/forest_static-43.png) ![](figure_meta/forest_static-44.png) 

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

![](figure_meta/forest_static-45.png) ![](figure_meta/forest_static-46.png) ![](figure_meta/forest_static-47.png) ![](figure_meta/forest_static-48.png) ![](figure_meta/forest_static-49.png) ![](figure_meta/forest_static-50.png) ![](figure_meta/forest_static-51.png) ![](figure_meta/forest_static-52.png) ![](figure_meta/forest_static-53.png) ![](figure_meta/forest_static-54.png) ![](figure_meta/forest_static-55.png) ![](figure_meta/forest_static-56.png) ![](figure_meta/forest_static-57.png) ![](figure_meta/forest_static-58.png) ![](figure_meta/forest_static-59.png) ![](figure_meta/forest_static-60.png) ![](figure_meta/forest_static-61.png) ![](figure_meta/forest_static-62.png) ![](figure_meta/forest_static-63.png) ![](figure_meta/forest_static-64.png) ![](figure_meta/forest_static-65.png) ![](figure_meta/forest_static-66.png) 

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

```
Warning: Removed 1 rows containing missing values (geom_segment).
```

![](figure_meta/forest_static-67.png) 

## `pek` 

Studies with this physical variable listed in the model output: eas, hrs, octo 



study_name   cognitive_measure   subgroup   model_type    subject_count   wave_count  converged 
-----------  ------------------  ---------  -----------  --------------  -----------  ----------
eas          block               female     ae                      563            9  TRUE      
eas          block               female     aeh                     150            8  TRUE      
eas          block               female     aehplus                 150            8  TRUE      
eas          block               female     a                       563            9  TRUE      
eas          block               female     full                    150            8  TRUE      
eas          block               male       ae                      350            9  TRUE      
eas          block               male       aeh                      72            8  TRUE      
eas          block               male       aehplus                  72            8  TRUE      
eas          block               male       a                       350            9  TRUE      
eas          block               male       full                     72            8  TRUE      
octo         block               female     aeh                     272            5  TRUE      
octo         block               female     a                       293            5  TRUE      
octo         block               male       aeh                     136            5  TRUE      
octo         block               male       a                       151            5  TRUE      
eas          bnt                 male       ae                      376            8  TRUE      
eas          bnt                 female     ae                      594            8  TRUE      
eas          bnt                 female     aeh                     150            8  TRUE      
eas          bnt                 female     aehplus                 150            8  TRUE      
eas          bnt                 female     a                       594            8  TRUE      
eas          bnt                 female     full                    150            8  TRUE      
eas          bnt                 male       aeh                      72            8  TRUE      
eas          bnt                 male       aehplus                  72            8  TRUE      
eas          bnt                 male       a                       376            8  TRUE      
eas          bnt                 male       full                     72            8  TRUE      
eas          categories          female     ae                      593            9  TRUE      
eas          categories          female     aeh                     150            9  TRUE      
eas          categories          female     aehplus                 150            9  TRUE      
eas          categories          female     a                       593            9  TRUE      
eas          categories          female     full                    150            9  TRUE      
eas          categories          male       ae                      376            9  TRUE      
eas          categories          male       aeh                      72            8  TRUE      
eas          categories          male       aehplus                  72            8  TRUE      
eas          categories          male       a                       376            9  TRUE      
eas          categories          male       full                     72            8  TRUE      
hrs          delayedrecall       female     aeh                     715            5  TRUE      
hrs          delayedrecall       female     aehplus                 715            5  TRUE      
hrs          delayedrecall       female     a                       715            5  TRUE      
hrs          delayedrecall       male       aeh                     535            5  TRUE      
hrs          delayedrecall       male       aehplus                 535            5  TRUE      
hrs          delayedrecall       male       a                       535            5  TRUE      
eas          digitspan           female     aeh                     150            8  TRUE      
eas          digitspan           female     aehplus                 150            8  TRUE      
eas          digitspan           female     full                    150            9  TRUE      
eas          digitspan           male       aeh                      72            7  TRUE      
octo         digitsback          female     aeh                     276            5  TRUE      
octo         digitsback          female     a                       299            5  TRUE      
octo         digitsback          male       aeh                     138            5  TRUE      
octo         digitsback          male       a                       158            5  TRUE      
octo         digitsforward       female     aeh                     276            5  TRUE      
octo         digitsforward       female     a                       300            5  TRUE      
octo         digitsforward       male       aeh                     138            5  TRUE      
octo         digitsforward       male       a                       158            5  TRUE      
eas          digitspan           female     ae                      595            8  TRUE      
eas          digitspan           female     a                       595            8  TRUE      
eas          digitspan           male       ae                      379            8  TRUE      
eas          digitspan           male       aehplus                  72            8  TRUE      
eas          digitspan           male       a                       379            8  TRUE      
eas          digitspan           male       full                     72            8  TRUE      
eas          symbol              female     ae                      592            7  TRUE      
eas          symbol              female     aeh                     150            6  TRUE      
eas          symbol              female     aehplus                 150            6  TRUE      
eas          symbol              female     a                       592            9  TRUE      
eas          symbol              female     full                    150            6  TRUE      
eas          symbol              male       ae                      377            5  TRUE      
eas          symbol              male       aeh                      72            6  TRUE      
eas          symbol              male       aehplus                  72            6  TRUE      
eas          symbol              male       a                       377            9  TRUE      
eas          symbol              male       full                     72            6  TRUE      
octo         symbol              female     aeh                     264            5  TRUE      
octo         symbol              female     a                       278            5  TRUE      
octo         symbol              male       aeh                     133            5  TRUE      
octo         symbol              male       a                       142            5  TRUE      
eas          verbalfluency       female     ae                      571            8  TRUE      
eas          verbalfluency       female     aeh                     150            8  TRUE      
eas          verbalfluency       female     aehplus                 150            8  TRUE      
eas          verbalfluency       female     a                       571            8  TRUE      
eas          verbalfluency       female     full                    150            8  TRUE      
eas          verbalfluency       male       ae                      358            8  TRUE      
eas          verbalfluency       male       aeh                      72            8  TRUE      
eas          verbalfluency       male       aehplus                  72            8  TRUE      
eas          verbalfluency       male       a                       358            9  TRUE      
eas          verbalfluency       male       full                     72            8  TRUE      
octo         figurelogic         female     aeh                     268            5  TRUE      
octo         figurelogic         female     a                       284            5  TRUE      
octo         figurelogic         male       aeh                     133            5  TRUE      
octo         figurelogic         male       a                       146            5  TRUE      
hrs          wordlistimmed       female     aeh                     715            5  TRUE      
hrs          wordlistimmed       female     aehplus                 715            5  TRUE      
hrs          wordlistimmed       female     a                       715            5  TRUE      
hrs          wordlistimmed       male       aeh                     535            5  TRUE      
hrs          wordlistimmed       male       aehplus                 535            5  TRUE      
hrs          wordlistimmed       male       a                       535            5  TRUE      
eas          info                female     ae                      543            7  TRUE      
eas          info                female     aeh                     150            7  TRUE      
eas          info                female     aehplus                 150            7  TRUE      
eas          info                female     a                       543            7  TRUE      
eas          info                female     full                    150            7  TRUE      
eas          info                male       ae                      353            7  TRUE      
eas          info                male       aeh                      72            7  TRUE      
eas          info                male       aehplus                  72            7  TRUE      
eas          info                male       a                       353            7  TRUE      
eas          info                male       full                     72            7  TRUE      
octo         info                female     aeh                     275            5  TRUE      
octo         info                female     a                       301            5  TRUE      
octo         info                male       aeh                     138            5  TRUE      
octo         info                male       a                       156            5  TRUE      
eas          logicalmemory       female     a                       554            9  TRUE      
eas          logicalmemory       female     ae                      554            9  TRUE      
eas          logicalmemory       female     aeh                     150            9  TRUE      
eas          logicalmemory       female     aehplus                 150            9  TRUE      
eas          logicalmemory       female     full                    150            9  TRUE      
eas          logicalmemory       male       ae                      349            9  TRUE      
eas          logicalmemory       male       aeh                      72            8  TRUE      
eas          logicalmemory       male       aehplus                  72            8  TRUE      
eas          logicalmemory       male       a                       349            9  TRUE      
eas          logicalmemory       male       full                     72            8  TRUE      
octo         mirrecall           female     aeh                     271            5  TRUE      
octo         mirrecall           female     a                       293            5  TRUE      
octo         mirrecall           male       aeh                     137            5  TRUE      
octo         mirrecall           male       a                       153            5  TRUE      
eas          mmse                female     ae                      600            7  TRUE      
eas          mmse                female     aeh                     150            7  TRUE      
eas          mmse                female     aehplus                 150            7  TRUE      
eas          mmse                female     a                       600            7  TRUE      
eas          mmse                female     full                    150            7  TRUE      
eas          mmse                male       ae                      383            7  TRUE      
eas          mmse                male       aeh                      72            7  TRUE      
eas          mmse                male       aehplus                  72            7  TRUE      
eas          mmse                male       a                       383            7  TRUE      
eas          mmse                male       full                     72            7  TRUE      
octo         mmse                female     aeh                     276            5  TRUE      
octo         mmse                female     a                       311            5  TRUE      
octo         mmse                male       aeh                     140            5  TRUE      
octo         mmse                male       a                       164            5  TRUE      
eas          univar              female     ae                      217            9  TRUE      
eas          univar              female     ae                      217            9  TRUE      
eas          univar              female     aeh                     150            8  TRUE      
eas          univar              female     aeh                     150            8  TRUE      
eas          univar              female     aehplus                 150            8  TRUE      
eas          univar              female     aehplus                 150            8  TRUE      
eas          univar              female     a                       217            9  TRUE      
eas          univar              female     a                       217            9  TRUE      
eas          univar              female     0                       217            9  TRUE      
eas          univar              female     full                    150            8  TRUE      
eas          univar              female     full                    150            8  TRUE      
eas          univar              male       ae                      122            9  TRUE      
eas          univar              male       aeh                      72            8  TRUE      
eas          univar              male       aeh                      72            8  TRUE      
eas          univar              male       aehplus                  72            8  TRUE      
eas          univar              male       aehplus                  72            8  TRUE      
eas          univar              male       a                       122            9  TRUE      
eas          univar              male       a                       122            9  TRUE      
eas          univar              male       0                       217            9  TRUE      
eas          univar              male       full                     72            8  TRUE      
eas          univar              male       full                     72            8  TRUE      
octo         proserecall         female     aeh                     268            5  TRUE      
octo         proserecall         female     a                       289            5  TRUE      
octo         proserecall         male       aeh                     136            5  TRUE      
octo         proserecall         male       a                       153            5  TRUE      
octo         psif                female     aeh                     254            4  TRUE      
octo         psif                female     a                       268            4  TRUE      
octo         psif                male       aeh                     127            4  TRUE      
octo         psif                male       a                       135            4  TRUE      
hrs          serial7             female     aeh                     715            5  TRUE      
hrs          serial7             female     aehplus                 715            5  TRUE      
hrs          serial7             female     a                       715            5  TRUE      
hrs          serial7             male       aeh                     535            5  TRUE      
hrs          serial7             male       aehplus                 535            5  TRUE      
hrs          serial7             male       a                       535            5  TRUE      
octo         synonyms            female     aeh                     265            5  TRUE      
octo         synonyms            female     a                       280            5  TRUE      
octo         synonyms            male       aeh                     132            5  TRUE      
octo         synonyms            male       a                       142            5  TRUE      
hrs          tics                female     aeh                     715            5  TRUE      
hrs          tics                female     aehplus                 715            5  TRUE      
hrs          tics                female     a                       715            5  TRUE      
hrs          tics                male       aeh                     535            5  TRUE      
hrs          tics                male       aehplus                 535            5  TRUE      
hrs          tics                male       a                       535            5  TRUE      
eas          trailsb             female     a                       580            9  TRUE      
eas          trailsb             male       a                       368            9  TRUE      
eas          trailsb             female     ae                      580            9  TRUE      
eas          trailsb             female     aeh                     150            8  TRUE      
eas          trailsb             female     aehplus                 150            8  TRUE      
eas          trailsb             female     full                    150            8  TRUE      
eas          trailsb             male       ae                      368            9  TRUE      
eas          trailsb             male       aeh                      72            8  TRUE      
eas          trailsb             male       aehplus                  72            8  TRUE      
eas          trailsb             male       full                     72            8  TRUE      
eas          waisvocab           female     ae                      594            8  TRUE      
eas          waisvocab           female     aeh                     150            8  TRUE      
eas          waisvocab           female     aehplus                 150            8  TRUE      
eas          waisvocab           female     a                       594            8  TRUE      
eas          waisvocab           female     full                    150            8  TRUE      
eas          waisvocab           male       ae                      377            8  TRUE      
eas          waisvocab           male       aeh                      72            8  TRUE      
eas          waisvocab           male       aehplus                  72            8  TRUE      
eas          waisvocab           male       a                       358            8  TRUE      
eas          waisvocab           male       full                     72            8  TRUE      


![](figure_meta/forest_static-68.png) ![](figure_meta/forest_static-69.png) ![](figure_meta/forest_static-70.png) ![](figure_meta/forest_static-71.png) ![](figure_meta/forest_static-72.png) ![](figure_meta/forest_static-73.png) ![](figure_meta/forest_static-74.png) ![](figure_meta/forest_static-75.png) ![](figure_meta/forest_static-76.png) ![](figure_meta/forest_static-77.png) ![](figure_meta/forest_static-78.png) ![](figure_meta/forest_static-79.png) ![](figure_meta/forest_static-80.png) ![](figure_meta/forest_static-81.png) ![](figure_meta/forest_static-82.png) ![](figure_meta/forest_static-83.png) ![](figure_meta/forest_static-84.png) ![](figure_meta/forest_static-85.png) ![](figure_meta/forest_static-86.png) ![](figure_meta/forest_static-87.png) ![](figure_meta/forest_static-88.png) ![](figure_meta/forest_static-89.png) 

## `tug` 

Studies with this physical variable listed in the model output: ilse, nuage 



study_name   cognitive_measure         subgroup   model_type    subject_count   wave_count  converged 
-----------  ------------------------  ---------  -----------  --------------  -----------  ----------
ilse         digitsymbolsubstitution   female     aehplus                 225            3  TRUE      
ilse         digitsymbolsubstitution   male       aehplus                 252            3  TRUE      
ilse         symbol                    female     aeh                     226            3  TRUE      
ilse         symbol                    female     a                       228            3  TRUE      
ilse         symbol                    male       aeh                     253            3  TRUE      
ilse         symbol                    male       a                       253            3  TRUE      
ilse         lpsspacialability         female     aeh                     226            3  TRUE      
ilse         lpsspacialability         female     aehplus                 225            3  TRUE      
ilse         lpsspacialability         female     a                       228            3  TRUE      
ilse         lpsspacialability         male       aeh                     253            3  TRUE      
ilse         lpsspacialability         male       aehplus                 252            3  TRUE      
ilse         lpsspacialability         male       a                       253            3  TRUE      
ilse         univar                    female     aeh                     215            3  TRUE      
ilse         univar                    female     aehplus                 214            3  TRUE      
ilse         univar                    female     a                       217            3  TRUE      
ilse         univar                    female     0                       229            3  TRUE      
ilse         univar                    male       aeh                     238            3  TRUE      
ilse         univar                    male       aehplus                 237            3  TRUE      
ilse         univar                    male       a                       238            3  TRUE      
ilse         univar                    male       0                       245            3  TRUE      
nuage        univar                    female     a                       938            4  TRUE      
nuage        univar                    female     aeh                     934            4  TRUE      
nuage        univar                    female     aehplus                 934            4  TRUE      
nuage        univar                    female     0                       940            4  TRUE      
nuage        univar                    male       a                       848            4  TRUE      
nuage        univar                    male       aeh                     846            4  TRUE      
nuage        univar                    male       aehplus                 846            4  TRUE      
nuage        univar                    male       0                       853            4  TRUE      
ilse         verbalfluency             female     aeh                     226            3  TRUE      
ilse         verbalfluency             female     aehplus                 225            3  TRUE      
ilse         verbalfluency             female     a                       228            3  TRUE      
ilse         verbalfluency             male       aeh                     253            3  TRUE      
ilse         verbalfluency             male       aehplus                 252            3  TRUE      
ilse         verbalfluency             male       a                       253            3  TRUE      
ilse         block                     female     aeh                     226            3  TRUE      
ilse         block                     female     aehplus                 225            3  TRUE      
ilse         block                     female     a                       228            3  TRUE      
ilse         block                     male       aeh                     253            3  TRUE      
ilse         block                     male       aehplus                 252            3  TRUE      
ilse         block                     male       a                       253            3  TRUE      
ilse         waisgeneralknowledge      female     aeh                     226            3  TRUE      
ilse         waisgeneralknowledge      female     aehplus                 225            3  TRUE      
ilse         waisgeneralknowledge      female     a                       228            3  TRUE      
ilse         waisgeneralknowledge      male       aeh                     253            3  TRUE      
ilse         waisgeneralknowledge      male       aehplus                 252            3  TRUE      
ilse         waisgeneralknowledge      male       a                       253            3  TRUE      
ilse         waispicturecompletion     female     aeh                     226            3  TRUE      
ilse         waispicturecompletion     female     aehplus                 225            3  TRUE      
ilse         waispicturecompletion     female     a                       228            3  TRUE      
ilse         waispicturecompletion     male       aeh                     253            3  TRUE      
ilse         waispicturecompletion     male       aehplus                 252            3  TRUE      
ilse         waispicturecompletion     male       a                       253            3  TRUE      


![](figure_meta/forest_static-90.png) ![](figure_meta/forest_static-91.png) ![](figure_meta/forest_static-92.png) ![](figure_meta/forest_static-93.png) ![](figure_meta/forest_static-94.png) ![](figure_meta/forest_static-95.png) ![](figure_meta/forest_static-96.png) 

## `univar` 

Studies with this physical variable listed in the model output: eas, elsa, habc, ilse, nuage, radc 



study_name   cognitive_measure       subgroup   model_type    subject_count   wave_count  converged 
-----------  ----------------------  ---------  -----------  --------------  -----------  ----------
habc         3ms                     female     aeh                    1578           11  TRUE      
habc         3ms                     female     aehplus                1538           11  TRUE      
habc         3ms                     female     a                      1584           11  TRUE      
habc         3ms                     female     0                      1584           11  TRUE      
habc         3ms                     male       aeh                    1484           11  TRUE      
habc         3ms                     male       aehplus                1459           11  TRUE      
habc         3ms                     male       a                      1486           11  TRUE      
habc         3ms                     male       0                      1486           11  TRUE      
elsa         categories              female     ae                     6106            5  TRUE      
elsa         categories              female     ae                     6106            5  TRUE      
elsa         categories              female     ae                     6106            5  TRUE      
elsa         categories              female     aeh                    2795            5  TRUE      
elsa         categories              female     aeh                    2795            5  TRUE      
elsa         categories              female     aeh                    2795            5  TRUE      
elsa         categories              female     aehplus                2782            5  TRUE      
elsa         categories              female     aehplus                2782            5  TRUE      
elsa         categories              female     aehplus                2782            5  TRUE      
elsa         categories              female     a                      6117            5  TRUE      
elsa         categories              female     a                      6117            5  TRUE      
elsa         categories              female     a                      6117            5  TRUE      
elsa         categories              female     0                      6008            5  TRUE      
elsa         categories              female     0                      6008            5  TRUE      
elsa         categories              female     0                      6008            5  TRUE      
elsa         categories              male       ae                     5123            5  TRUE      
elsa         categories              male       ae                     5123            5  TRUE      
elsa         categories              male       ae                     5123            5  TRUE      
elsa         categories              male       aeh                    2269            5  TRUE      
elsa         categories              male       aeh                    2269            5  TRUE      
elsa         categories              male       aeh                    2269            5  TRUE      
elsa         categories              male       aehplus                2256            5  TRUE      
elsa         categories              male       aehplus                2256            5  TRUE      
elsa         categories              male       aehplus                2256            5  TRUE      
elsa         categories              male       a                      5140            5  TRUE      
elsa         categories              male       a                      5140            5  TRUE      
elsa         categories              male       a                      5140            5  TRUE      
elsa         categories              male       0                      5018            5  TRUE      
elsa         categories              male       0                      5018            5  TRUE      
elsa         categories              male       0                      5018            5  TRUE      
eas          block                   female     0                       563            9  TRUE      
eas          block                   male       0                       350            9  TRUE      
eas          block                   female     ae                      563            9  TRUE      
eas          block                   female     ae                      563            9  TRUE      
eas          block                   female     aeh                     150            8  TRUE      
eas          block                   female     aeh                     150            8  TRUE      
eas          block                   female     aehplus                 150            8  TRUE      
eas          block                   female     aehplus                 150            8  TRUE      
eas          block                   female     a                       563            9  TRUE      
eas          block                   female     a                       563            9  TRUE      
eas          block                   female     full                    150            8  TRUE      
eas          block                   female     full                    150            8  TRUE      
eas          block                   male       ae                      350            9  TRUE      
eas          block                   male       ae                      350            9  TRUE      
eas          block                   male       aeh                      72            8  TRUE      
eas          block                   male       aeh                      72            8  TRUE      
eas          block                   male       aehplus                  72            8  TRUE      
eas          block                   male       aehplus                  72            8  TRUE      
eas          block                   male       a                       350            9  TRUE      
eas          block                   male       a                       350            9  TRUE      
eas          block                   male       full                     72            8  TRUE      
eas          block                   male       full                     72            8  TRUE      
radc         bnt                     female     a                      1010            5  TRUE      
radc         bnt                     female     ae                     1010            5  TRUE      
radc         bnt                     female     aeh                    1010            5  TRUE      
radc         bnt                     female     aehplus                1010            5  TRUE      
radc         bnt                     male       a                       351            5  TRUE      
radc         bnt                     male       ae                      351            5  TRUE      
radc         bnt                     male       aeh                     351            5  TRUE      
radc         bnt                     male       aehplus                 351            5  TRUE      
eas          bnt                     female     ae                      594            9  TRUE      
eas          bnt                     female     ae                      594            9  TRUE      
eas          bnt                     female     aeh                     150            9  TRUE      
eas          bnt                     female     aeh                     150            9  TRUE      
eas          bnt                     female     aehplus                 150            9  TRUE      
eas          bnt                     female     aehplus                 150            9  TRUE      
eas          bnt                     female     a                       594            9  TRUE      
eas          bnt                     female     a                       600            9  TRUE      
eas          bnt                     female     full                    150            9  TRUE      
eas          bnt                     female     full                    150            9  TRUE      
eas          bnt                     male       ae                      376            9  TRUE      
eas          bnt                     male       ae                      376            9  TRUE      
eas          bnt                     male       aeh                      72            9  TRUE      
eas          bnt                     male       aeh                      72            9  TRUE      
eas          bnt                     male       aehplus                  72            9  TRUE      
eas          bnt                     male       a                       384            9  TRUE      
eas          bnt                     male       aehplus                  72            9  TRUE      
eas          bnt                     male       full                     72            9  TRUE      
eas          bnt                     male       full                     72            9  TRUE      
radc         bostonstorydelay        female     a                      1010            5  TRUE      
radc         bostonstorydelay        female     ae                     1010            5  TRUE      
radc         bostonstorydelay        female     aeh                    1010            5  TRUE      
radc         bostonstorydelay        female     aehplus                1010            5  TRUE      
radc         bostonstorydelay        male       a                       351            5  TRUE      
radc         bostonstorydelay        male       ae                      351            5  TRUE      
radc         bostonstorydelay        male       aeh                     351            5  TRUE      
radc         bostonstorydelay        male       aehplus                 351            5  TRUE      
radc         bostonstoryimmediate    female     a                      1010            5  TRUE      
radc         bostonstoryimmediate    female     ae                     1010            5  TRUE      
radc         bostonstoryimmediate    female     aeh                    1010            5  TRUE      
radc         bostonstoryimmediate    female     aehplus                1010            5  TRUE      
radc         bostonstoryimmediate    male       a                       351            5  TRUE      
radc         bostonstoryimmediate    male       ae                      351            5  TRUE      
radc         bostonstoryimmediate    male       aeh                     351            5  TRUE      
radc         bostonstoryimmediate    male       aehplus                 351            5  TRUE      
radc         categories              female     a                      1010            5  TRUE      
radc         categories              female     ae                     1010            5  TRUE      
radc         categories              female     aeh                    1010            5  TRUE      
radc         categories              female     aehplus                1010            5  TRUE      
radc         categories              male       a                       351            5  TRUE      
radc         categories              male       ae                      351            5  TRUE      
radc         categories              male       aeh                     351            5  TRUE      
radc         categories              male       aehplus                 351            5  TRUE      
eas          categories              female     ae                      593            9  TRUE      
eas          categories              female     ae                      593            9  TRUE      
eas          categories              female     aeh                     150            9  TRUE      
eas          categories              female     aeh                     150            9  TRUE      
eas          categories              female     aehplus                 150            9  TRUE      
eas          categories              female     aehplus                 150            9  TRUE      
eas          categories              female     a                       593            9  TRUE      
eas          categories              female     a                       593            9  TRUE      
eas          categories              female     full                    150            9  TRUE      
eas          categories              female     full                    150            9  TRUE      
eas          categories              male       ae                      376            9  TRUE      
eas          categories              male       ae                      376            9  TRUE      
eas          categories              male       aeh                      72            9  TRUE      
eas          categories              male       aeh                      72            9  TRUE      
eas          categories              male       aehplus                  72            9  TRUE      
eas          categories              male       aehplus                  72            9  TRUE      
eas          categories              male       a                       376            9  TRUE      
eas          categories              male       a                       376            9  TRUE      
eas          categories              male       full                     72            9  TRUE      
eas          categories              male       full                     72            9  TRUE      
habc         clock                   female     aeh                    1402           10  TRUE      
habc         clock                   female     aehplus                1369           10  TRUE      
habc         clock                   female     a                      1407           10  TRUE      
habc         clock                   female     0                      1407           10  TRUE      
habc         clock                   male       aeh                    1282           10  TRUE      
habc         clock                   male       aehplus                1263           10  TRUE      
habc         clock                   male       a                      1284           10  TRUE      
habc         clock                   male       0                      1284           10  TRUE      
radc         complexideas            female     a                      1010            5  TRUE      
radc         complexideas            female     ae                     1010            5  TRUE      
radc         complexideas            female     aeh                    1010            5  TRUE      
radc         complexideas            female     aehplus                1010            5  TRUE      
radc         complexideas            male       a                       351            5  TRUE      
radc         complexideas            male       ae                      351            5  TRUE      
radc         complexideas            male       aeh                     351            5  TRUE      
radc         complexideas            male       aehplus                 351            5  TRUE      
elsa         delayedrecall           female     ae                     6106            6  TRUE      
elsa         delayedrecall           female     ae                     6106            6  TRUE      
elsa         delayedrecall           female     ae                     6106            6  TRUE      
elsa         delayedrecall           female     aeh                    2795            6  TRUE      
elsa         delayedrecall           female     aeh                    2795            6  TRUE      
elsa         delayedrecall           female     aeh                    2795            6  TRUE      
elsa         delayedrecall           female     aehplus                2782            6  TRUE      
elsa         delayedrecall           female     aehplus                2782            6  TRUE      
elsa         delayedrecall           female     aehplus                2782            6  TRUE      
elsa         delayedrecall           female     a                      6117            6  TRUE      
elsa         delayedrecall           female     a                      6117            6  TRUE      
elsa         delayedrecall           female     a                      6117            6  TRUE      
elsa         delayedrecall           female     0                      6003            6  TRUE      
elsa         delayedrecall           female     0                      6003            6  TRUE      
elsa         delayedrecall           female     0                      6003            6  TRUE      
elsa         delayedrecall           male       ae                     5123            6  TRUE      
elsa         delayedrecall           male       ae                     5123            6  TRUE      
elsa         delayedrecall           male       ae                     5123            6  TRUE      
elsa         delayedrecall           male       aeh                    2269            6  TRUE      
elsa         delayedrecall           male       aeh                    2269            6  TRUE      
elsa         delayedrecall           male       aeh                    2269            6  TRUE      
elsa         delayedrecall           male       aehplus                2256            6  TRUE      
elsa         delayedrecall           male       aehplus                2256            6  TRUE      
elsa         delayedrecall           male       aehplus                2256            6  TRUE      
elsa         delayedrecall           male       a                      5140            6  TRUE      
elsa         delayedrecall           male       a                      5140            6  TRUE      
elsa         delayedrecall           male       a                      5140            6  TRUE      
elsa         delayedrecall           male       0                      5022            6  TRUE      
elsa         delayedrecall           male       0                      5022            6  TRUE      
elsa         delayedrecall           male       0                      5022            6  TRUE      
radc         digitordering           female     a                      1010            5  TRUE      
radc         digitordering           female     ae                     1010            5  TRUE      
radc         digitordering           female     aeh                    1010            5  TRUE      
radc         digitordering           female     aehplus                1010            5  TRUE      
radc         digitordering           male       a                       351            5  TRUE      
radc         digitordering           male       ae                      351            5  TRUE      
radc         digitordering           male       aeh                     351            5  TRUE      
radc         digitordering           male       aehplus                 351            5  TRUE      
radc         digitsback              female     a                      1010            5  TRUE      
radc         digitsback              female     ae                     1010            5  TRUE      
radc         digitsback              female     aeh                    1010            5  TRUE      
radc         digitsback              female     aehplus                1010            5  TRUE      
radc         digitsback              male       a                       351            5  TRUE      
radc         digitsback              male       ae                      351            5  TRUE      
radc         digitsback              male       aeh                     351            5  TRUE      
radc         digitsback              male       aehplus                 351            5  TRUE      
radc         digitsforward           female     a                      1010            5  TRUE      
radc         digitsforward           female     ae                     1010            5  TRUE      
radc         digitsforward           female     aeh                    1010            5  TRUE      
radc         digitsforward           female     aehplus                1010            5  TRUE      
radc         digitsforward           male       a                       351            5  TRUE      
radc         digitsforward           male       ae                      351            5  TRUE      
radc         digitsforward           male       aeh                     351            5  TRUE      
radc         digitsforward           male       aehplus                 351            5  TRUE      
eas          digitspan               female     ae                      595            9  TRUE      
eas          digitspan               female     ae                      595            9  TRUE      
eas          digitspan               female     aeh                     150            9  TRUE      
eas          digitspan               female     aeh                     150            9  TRUE      
eas          digitspan               female     aehplus                 150            9  TRUE      
eas          digitspan               female     aehplus                 150            9  TRUE      
eas          digitspan               female     a                       595            9  TRUE      
eas          digitspan               female     a                       595            9  TRUE      
eas          digitspan               female     full                    150            9  TRUE      
eas          digitspan               female     full                    150            9  TRUE      
eas          digitspan               male       ae                      379            9  TRUE      
eas          digitspan               male       aeh                      72            9  TRUE      
eas          digitspan               male       aeh                      72            9  TRUE      
eas          digitspan               male       aehplus                  72            9  TRUE      
eas          digitspan               male       aehplus                  72            9  TRUE      
eas          digitspan               male       a                       379            9  TRUE      
eas          digitspan               male       a                       379            9  TRUE      
eas          digitspan               male       full                     72            9  TRUE      
eas          digitspan               male       full                     72            9  TRUE      
eas          symbol                  female     ae                      592            6  TRUE      
eas          symbol                  female     ae                      592            6  TRUE      
eas          symbol                  female     aeh                     150            6  TRUE      
eas          symbol                  female     aeh                     150            6  TRUE      
eas          symbol                  female     aehplus                 150            6  TRUE      
eas          symbol                  female     aehplus                 150            6  TRUE      
eas          symbol                  female     a                       592           10  TRUE      
eas          symbol                  female     a                       592            9  TRUE      
eas          symbol                  female     full                    150            6  TRUE      
eas          symbol                  female     full                    150            6  TRUE      
eas          symbol                  male       ae                      377            6  TRUE      
eas          symbol                  male       ae                      377            6  TRUE      
eas          symbol                  male       aeh                      72            6  TRUE      
eas          symbol                  male       aeh                      72            6  TRUE      
eas          symbol                  male       aehplus                  72            6  TRUE      
eas          symbol                  male       aehplus                  72            6  TRUE      
eas          symbol                  male       a                       377            9  TRUE      
eas          symbol                  male       a                       377            9  TRUE      
eas          symbol                  male       full                     72            6  TRUE      
eas          symbol                  male       full                     72            6  TRUE      
habc         symbol                  female     aeh                    1570           11  TRUE      
habc         symbol                  female     aehplus                1531           11  TRUE      
habc         symbol                  female     a                      1576           11  TRUE      
habc         symbol                  female     0                      1576           11  TRUE      
habc         symbol                  male       aeh                    1471           11  TRUE      
habc         symbol                  male       aehplus                1446           11  TRUE      
habc         symbol                  male       a                      1473           11  TRUE      
habc         symbol                  male       0                      1473           11  TRUE      
radc         symbol                  female     a                      1010            5  TRUE      
radc         symbol                  female     ae                     1010            5  TRUE      
radc         symbol                  female     aeh                    1010            5  TRUE      
radc         symbol                  female     aehplus                1010            5  TRUE      
radc         symbol                  male       a                       351            5  TRUE      
radc         symbol                  male       ae                      351            5  TRUE      
radc         symbol                  male       aeh                     351            5  TRUE      
radc         symbol                  male       aehplus                 351            5  TRUE      
ilse         symbol                  female     a                       228            3  TRUE      
ilse         symbol                  female     aeh                     226            3  TRUE      
ilse         symbol                  female     aehplus                 225            3  TRUE      
ilse         symbol                  female     0                       240            3  TRUE      
ilse         symbol                  male       a                       253            3  TRUE      
ilse         symbol                  male       aeh                     253            3  TRUE      
ilse         symbol                  male       aehplus                 252            3  TRUE      
ilse         symbol                  male       0                       259            3  TRUE      
eas          digitspan               male       ae                      379            9  TRUE      
eas          verbalfluency           female     ae                      571            9  TRUE      
eas          verbalfluency           female     ae                      571            9  TRUE      
eas          verbalfluency           female     aeh                     150            9  TRUE      
eas          verbalfluency           female     aeh                     150            9  TRUE      
eas          verbalfluency           female     aehplus                 150            9  TRUE      
eas          verbalfluency           female     aehplus                 150            9  TRUE      
eas          verbalfluency           female     a                       571            9  TRUE      
eas          verbalfluency           female     a                       571            9  TRUE      
eas          verbalfluency           female     full                    150            9  TRUE      
eas          verbalfluency           female     full                    150            9  TRUE      
eas          verbalfluency           male       ae                      358            9  TRUE      
eas          verbalfluency           male       ae                      358            9  TRUE      
eas          verbalfluency           male       aeh                      72            9  TRUE      
eas          verbalfluency           male       aeh                      72            9  TRUE      
eas          verbalfluency           male       aehplus                  72            9  TRUE      
eas          verbalfluency           male       aehplus                  72            9  TRUE      
eas          verbalfluency           male       a                       358            9  TRUE      
eas          verbalfluency           male       a                       358            9  TRUE      
eas          verbalfluency           male       full                     72            9  TRUE      
eas          verbalfluency           male       full                     72            9  TRUE      
elsa         wordlistimmed           female     ae                     6106            6  TRUE      
elsa         wordlistimmed           female     ae                     6106            6  TRUE      
elsa         wordlistimmed           female     ae                     6106            6  TRUE      
elsa         wordlistimmed           female     aeh                    2795            6  TRUE      
elsa         wordlistimmed           female     aeh                    2795            6  TRUE      
elsa         wordlistimmed           female     aeh                    2795            6  TRUE      
elsa         wordlistimmed           female     aehplus                2782            6  TRUE      
elsa         wordlistimmed           female     aehplus                2782            6  TRUE      
elsa         wordlistimmed           female     aehplus                2782            6  FALSE     
elsa         wordlistimmed           female     a                      6117            6  TRUE      
elsa         wordlistimmed           female     a                      6117            6  TRUE      
elsa         wordlistimmed           female     a                      6117            6  TRUE      
elsa         wordlistimmed           female     0                      6008            6  TRUE      
elsa         wordlistimmed           female     0                      6008            6  TRUE      
elsa         wordlistimmed           female     0                      6008            6  TRUE      
elsa         wordlistimmed           male       ae                     5123            6  TRUE      
elsa         wordlistimmed           male       ae                     5123            6  TRUE      
elsa         wordlistimmed           male       ae                     5123            6  TRUE      
elsa         wordlistimmed           male       aeh                    2269            6  TRUE      
elsa         wordlistimmed           male       aeh                    2269            6  TRUE      
elsa         wordlistimmed           male       aeh                    2269            6  TRUE      
elsa         wordlistimmed           male       aehplus                2256            6  TRUE      
elsa         wordlistimmed           male       aehplus                2256            6  TRUE      
elsa         wordlistimmed           male       aehplus                2256            6  TRUE      
elsa         wordlistimmed           male       a                      5140            6  TRUE      
elsa         wordlistimmed           male       a                      5140            6  TRUE      
elsa         wordlistimmed           male       a                      5140            6  TRUE      
elsa         wordlistimmed           male       0                      5023            6  TRUE      
elsa         wordlistimmed           male       0                      5023            6  TRUE      
elsa         wordlistimmed           male       0                      5023            6  TRUE      
eas          info                    female     a                       503            7  TRUE      
eas          info                    female     ae                      503            7  TRUE      
eas          info                    female     ae                      503            7  TRUE      
eas          info                    female     aeh                     110            7  TRUE      
eas          info                    female     aeh                     110            7  TRUE      
eas          info                    female     aehplus                 110            7  TRUE      
eas          info                    female     aehplus                 110            7  TRUE      
eas          info                    female     a                       503            7  TRUE      
eas          info                    female     full                    110            7  TRUE      
eas          info                    female     full                    110            7  TRUE      
eas          info                    male       ae                      337            7  TRUE      
eas          info                    male       ae                      337            7  TRUE      
eas          info                    male       aeh                      56            7  TRUE      
eas          info                    male       aeh                      56            7  TRUE      
eas          info                    male       aehplus                  56            7  TRUE      
eas          info                    male       aehplus                  56            7  TRUE      
eas          info                    male       a                       337            7  TRUE      
eas          info                    male       a                       337            7  TRUE      
eas          info                    male       full                     56            7  TRUE      
eas          info                    male       full                     56            7  TRUE      
radc         lineorientation         female     a                      1010            5  TRUE      
radc         lineorientation         female     ae                     1010            5  TRUE      
radc         lineorientation         female     aeh                    1010            5  TRUE      
radc         lineorientation         female     aehplus                1010            5  TRUE      
radc         lineorientation         male       a                       351            5  TRUE      
radc         lineorientation         male       ae                      351            5  TRUE      
radc         lineorientation         male       aeh                     351            5  TRUE      
radc         lineorientation         male       aehplus                 351            5  TRUE      
eas          logicalmemory           female     ae                      554            9  TRUE      
eas          logicalmemory           female     ae                      554            9  TRUE      
eas          logicalmemory           female     aeh                     150            9  TRUE      
eas          logicalmemory           female     aeh                     150            9  TRUE      
eas          logicalmemory           female     aehplus                 150            9  TRUE      
eas          logicalmemory           female     aehplus                 150            9  TRUE      
eas          logicalmemory           female     a                       554            9  TRUE      
eas          logicalmemory           female     a                       554            9  TRUE      
eas          logicalmemory           female     full                    150            9  TRUE      
eas          logicalmemory           female     full                    150            9  TRUE      
eas          logicalmemory           male       ae                      349            9  TRUE      
eas          logicalmemory           male       ae                      349            9  TRUE      
eas          logicalmemory           male       aeh                      72            9  TRUE      
eas          logicalmemory           male       aeh                      72            9  TRUE      
eas          logicalmemory           male       aehplus                  72            9  TRUE      
eas          logicalmemory           male       aehplus                  72            9  TRUE      
eas          logicalmemory           male       a                       349            9  TRUE      
eas          logicalmemory           male       a                       349            9  TRUE      
eas          logicalmemory           male       full                     72            9  TRUE      
eas          logicalmemory           male       full                     72            9  TRUE      
radc         logicalmemorydelay      female     ae                     1010            5  TRUE      
radc         logicalmemorydelay      female     aeh                    1010            5  TRUE      
radc         logicalmemorydelay      female     aehplus                1010            5  TRUE      
radc         logicalmemorydelay      male       ae                      351            5  TRUE      
radc         logicalmemorydelay      male       aeh                     351            5  TRUE      
radc         logicalmemorydelay      male       aehplus                 351            5  TRUE      
radc         logicalmemoryimmed      female     ae                     1010            5  TRUE      
radc         logicalmemoryimmed      female     aeh                    1010            5  TRUE      
radc         logicalmemoryimmed      female     aehplus                1010            5  TRUE      
radc         logicalmemoryimmed      male       ae                      351            5  TRUE      
radc         logicalmemoryimmed      male       aeh                     351            5  TRUE      
radc         logicalmemoryimmed      male       aehplus                 351            5  TRUE      
ilse         lpsspacialability       male       0                       260            3  TRUE      
ilse         lpsspatialability       female     aeh                     226            3  TRUE      
ilse         lpsspatialability       female     aehplus                 225            3  TRUE      
ilse         lpsspatialability       female     a                       228            3  TRUE      
ilse         lpsspatialability       male       aeh                     253            3  TRUE      
ilse         lpsspatialability       male       aehplus                 252            3  TRUE      
ilse         lpsspatialability       male       a                       253            3  TRUE      
ilse         lpsspatialability       female     0                       240            3  TRUE      
radc         matrices                female     a                      1010            5  TRUE      
radc         matrices                female     ae                     1010            5  TRUE      
radc         matrices                female     aeh                    1010            5  TRUE      
radc         matrices                female     aehplus                1010            5  TRUE      
radc         matrices                male       a                       351            5  TRUE      
radc         matrices                male       ae                      351            5  TRUE      
radc         matrices                male       aeh                     351            5  TRUE      
radc         matrices                male       aehplus                 351            5  TRUE      
nuage        3ms                     female     aeh                     934            4  TRUE      
nuage        3ms                     female     aehplus                 934            4  TRUE      
nuage        3ms                     female     a                       939            4  TRUE      
nuage        3ms                     male       aeh                     847            4  TRUE      
nuage        3ms                     male       aehplus                 847            4  TRUE      
nuage        3ms                     male       a                       851            4  TRUE      
eas          mmse                    female     ae                      600            9  TRUE      
eas          mmse                    female     ae                      600            9  TRUE      
eas          mmse                    female     aeh                     150            9  TRUE      
eas          mmse                    female     aeh                     150            9  TRUE      
eas          mmse                    female     aehplus                 150            9  TRUE      
eas          mmse                    female     aehplus                 150            9  TRUE      
eas          mmse                    female     a                       600            9  TRUE      
eas          mmse                    female     a                       600            9  TRUE      
eas          mmse                    female     full                    150            9  TRUE      
eas          mmse                    female     full                    150            9  TRUE      
eas          mmse                    male       ae                      383            9  TRUE      
eas          mmse                    male       ae                      383            9  TRUE      
eas          mmse                    male       aeh                      72            9  TRUE      
eas          mmse                    male       aeh                      72            9  TRUE      
eas          mmse                    male       aehplus                  72            9  TRUE      
eas          mmse                    male       aehplus                  72            9  TRUE      
eas          mmse                    male       a                       383            9  TRUE      
eas          mmse                    male       a                       383            9  TRUE      
eas          mmse                    male       full                     72            9  TRUE      
eas          mmse                    male       full                     72            9  TRUE      
radc         mmse                    female     a                      1010            5  TRUE      
radc         mmse                    female     ae                     1010            5  TRUE      
radc         mmse                    female     aeh                    1010            5  TRUE      
radc         mmse                    female     aehplus                1010            5  TRUE      
radc         mmse                    male       a                       351            5  TRUE      
radc         mmse                    male       ae                      351            5  TRUE      
radc         mmse                    male       aeh                     351            5  TRUE      
radc         mmse                    male       aehplus                 351            5  TRUE      
radc         nart                    female     a                      1010            5  TRUE      
radc         nart                    female     ae                     1010            5  TRUE      
radc         nart                    female     aeh                    1010            5  TRUE      
radc         nart                    female     aehplus                1010            5  TRUE      
radc         nart                    male       a                       351            5  TRUE      
radc         nart                    male       ae                      351            5  TRUE      
radc         nart                    male       aeh                     351            5  TRUE      
radc         nart                    male       aehplus                 351            5  TRUE      
nuage        univar                  female     a                       919            4  TRUE      
nuage        univar                  female     aeh                     915            4  TRUE      
nuage        univar                  female     aehplus                 915            4  TRUE      
nuage        univar                  female     0                       940            4  TRUE      
nuage        univar                  male       a                       845            4  TRUE      
nuage        univar                  male       aeh                     843            4  TRUE      
nuage        univar                  male       aehplus                 843            4  TRUE      
nuage        univar                  male       0                       853            4  TRUE      
nuage        univar                  female     a                       937            4  TRUE      
nuage        univar                  female     aeh                     933            4  TRUE      
nuage        univar                  female     aehplus                 933            4  TRUE      
nuage        univar                  female     0                       940            4  TRUE      
nuage        univar                  male       a                       848            4  TRUE      
nuage        univar                  male       aeh                     846            4  TRUE      
nuage        univar                  male       aehplus                 846            4  TRUE      
nuage        univar                  male       0                       853            4  TRUE      
nuage        univar                  female     a                       938            4  TRUE      
nuage        univar                  female     aeh                     934            4  TRUE      
nuage        univar                  female     aehplus                 934            4  TRUE      
nuage        univar                  female     0                       940            4  TRUE      
nuage        univar                  male       a                       848            4  TRUE      
nuage        univar                  male       aeh                     846            4  TRUE      
nuage        univar                  male       aehplus                 846            4  TRUE      
eas          bnt                     male       a                       376            9  TRUE      
radc         numbercomparison        female     a                      1010            5  TRUE      
radc         numbercomparison        female     ae                     1010            5  TRUE      
radc         numbercomparison        female     aeh                    1010            5  TRUE      
radc         numbercomparison        female     aehplus                1010            5  TRUE      
radc         numbercomparison        male       a                       351            5  TRUE      
radc         numbercomparison        male       ae                      351            5  TRUE      
radc         numbercomparison        male       aeh                     351            5  TRUE      
radc         numbercomparison        male       aehplus                 351            5  TRUE      
eas          trailsb                 female     ae                      580            9  TRUE      
eas          trailsb                 female     ae                      580            9  TRUE      
eas          trailsb                 female     aeh                     150            8  TRUE      
eas          trailsb                 female     aeh                     150            8  TRUE      
eas          trailsb                 female     aehplus                 150            8  TRUE      
eas          trailsb                 female     aehplus                 150            5  TRUE      
eas          trailsb                 female     a                       580            9  TRUE      
eas          trailsb                 female     a                       580            9  TRUE      
eas          trailsb                 female     full                    150            8  TRUE      
eas          trailsb                 female     full                    150            8  TRUE      
eas          trailsb                 male       ae                      368            9  TRUE      
eas          trailsb                 male       ae                      368            9  TRUE      
eas          trailsb                 male       aeh                      72            5  TRUE      
eas          trailsb                 male       aeh                      72            5  TRUE      
eas          trailsb                 male       aehplus                  72            5  TRUE      
eas          trailsb                 male       a                       368            9  TRUE      
eas          trailsb                 male       a                       368            9  TRUE      
eas          trailsb                 male       full                     72            8  TRUE      
eas          trailsb                 male       full                     72            8  TRUE      
ilse         verbalfluency           female     a                       228            3  TRUE      
ilse         verbalfluency           female     aeh                     226            3  TRUE      
ilse         verbalfluency           female     aehplus                 225            3  TRUE      
ilse         verbalfluency           female     0                       240            3  TRUE      
ilse         verbalfluency           male       a                       252            3  TRUE      
ilse         verbalfluency           male       aeh                     252            3  TRUE      
ilse         verbalfluency           male       aehplus                 251            3  TRUE      
ilse         verbalfluency           male       0                       259            3  TRUE      
ilse         block                   female     a                       228            3  TRUE      
ilse         block                   female     aeh                     226            3  TRUE      
ilse         block                   female     aehplus                 225            3  TRUE      
ilse         block                   female     0                       240            3  TRUE      
ilse         block                   male       a                       253            3  TRUE      
ilse         block                   male       aeh                     253            3  TRUE      
ilse         block                   male       aehplus                 252            3  TRUE      
ilse         block                   male       0                       259            3  TRUE      
ilse         waisgeneralknowledge    female     aeh                     226            3  TRUE      
ilse         waisgeneralknowledge    female     aehplus                 225            3  TRUE      
ilse         waisgeneralknowledge    female     a                       228            3  TRUE      
ilse         waisgeneralknowledge    female     0                       240            3  TRUE      
ilse         waisgeneralknowledge    male       aeh                     253            3  TRUE      
ilse         waisgeneralknowledge    male       aehplus                 252            3  TRUE      
ilse         waisgeneralknowledge    male       a                       253            3  TRUE      
ilse         waisgeneralknowledge    male       0                       260            3  TRUE      
ilse         waispicturecompletion   female     a                       228            3  TRUE      
ilse         waispicturecompletion   female     aeh                     226            3  TRUE      
ilse         waispicturecompletion   female     aehplus                 225            3  TRUE      
ilse         waispicturecompletion   female     0                       240            3  TRUE      
ilse         waispicturecompletion   male       a                       253            3  TRUE      
ilse         waispicturecompletion   male       aeh                     253            3  TRUE      
ilse         waispicturecompletion   male       aehplus                 252            3  TRUE      
ilse         waispicturecompletion   male       0                       260            3  TRUE      
eas          waisvocab               female     ae                      594            9  TRUE      
eas          waisvocab               female     ae                      594            9  TRUE      
eas          waisvocab               female     aeh                     150            9  TRUE      
eas          waisvocab               female     aehplus                 150            9  TRUE      
eas          waisvocab               female     a                       594            9  TRUE      
eas          waisvocab               female     a                       594            9  TRUE      
eas          waisvocab               female     full                    150            9  TRUE      
eas          waisvocab               female     full                    150            9  TRUE      
eas          waisvocab               male       ae                      377            9  TRUE      
eas          waisvocab               male       ae                      377            9  TRUE      
eas          waisvocab               male       aeh                      72            9  TRUE      
eas          waisvocab               male       aeh                      72            9  TRUE      
eas          waisvocab               male       aehplus                  72            9  TRUE      
eas          waisvocab               male       aehplus                  72            9  TRUE      
eas          waisvocab               male       a                       377            9  TRUE      
eas          waisvocab               male       full                     72            9  TRUE      
eas          waisvocab               male       full                     72            9  TRUE      
eas          waisvocab               male       a                       377            9  TRUE      
eas          waisvocab               female     aeh                     150            9  TRUE      
eas          waisvocab               female     aehplus                 150            9  TRUE      
radc         wmslmdel                female     a                      1010            5  TRUE      
radc         wmslmdel                male       a                       351            5  TRUE      
radc         wmslmimmed              female     a                      1010            5  TRUE      
radc         wmslmimmed              male       a                       351            5  TRUE      
radc         wordlistdelay           female     a                      1010            5  TRUE      
radc         wordlistdelay           female     ae                     1010            5  TRUE      
radc         wordlistdelay           female     aeh                    1010            5  TRUE      
radc         wordlistdelay           female     aehplus                1010            5  TRUE      
radc         wordlistdelay           male       a                       351            5  TRUE      
radc         wordlistdelay           male       ae                      351            5  TRUE      
radc         wordlistdelay           male       aeh                     351            5  TRUE      
radc         wordlistdelay           male       aehplus                 351            5  TRUE      
radc         wordlistimmed           female     a                      1010            5  TRUE      
radc         wordlistimmed           female     ae                     1010            5  TRUE      
radc         wordlistimmed           female     aeh                    1010            5  TRUE      
radc         wordlistimmed           female     aehplus                1010            5  TRUE      
radc         wordlistimmed           male       a                       351            5  TRUE      
radc         wordlistimmed           male       ae                      351            5  TRUE      
radc         wordlistimmed           male       aeh                     351            5  TRUE      
radc         wordlistimmed           male       aehplus                 351            5  TRUE      
radc         wordlistrecog           female     a                      1010            5  TRUE      
radc         wordlistrecog           female     aehplus                1010            5  TRUE      
radc         wordlistrecog           male       a                       351            5  TRUE      
radc         wordlistrecog           male       aeh                     351            5  TRUE      
radc         wordlistrecog           male       aehplus                 351            5  TRUE      

# Forest Plot (Animated)



# Questions
## Unanswered Questions
 1. What does `VS` stand for?  How was it measured?
 1. Where the cars at the Philly track measured with the same phluguerstometer and the Cleveland track?
 
## Answered Questions
 1. The Seattle track's phluguerstometer was producing flaky negative values; it's measurements have been dropped.

# Session Information
For the sake of documentation and reproducibility, the current report was rendered on a system using the following software.


```
Report rendered by wibeasley at 2015-07-21, 23:44 +0100
```

```
R version 3.2.1 (2015-06-18)
Platform: x86_64-pc-linux-gnu (64-bit)
Running under: Ubuntu 14.04.2 LTS

locale:
 [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C               LC_TIME=en_US.UTF-8        LC_COLLATE=en_US.UTF-8    
 [5] LC_MONETARY=en_US.UTF-8    LC_MESSAGES=en_US.UTF-8    LC_PAPER=en_US.UTF-8       LC_NAME=C                 
 [9] LC_ADDRESS=C               LC_TELEPHONE=C             LC_MEASUREMENT=en_US.UTF-8 LC_IDENTIFICATION=C       

attached base packages:
[1] grid      stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] testit_0.4         ggplot2_1.0.1      RColorBrewer_1.1-2 scales_0.2.5       knitr_1.10.5      

loaded via a namespace (and not attached):
 [1] Rcpp_0.11.6        digest_0.6.8       MASS_7.3-43        plyr_1.8.3         gtable_0.1.2       formatR_1.2       
 [7] magrittr_1.5       evaluate_0.7       highr_0.5          stringi_0.5-5      reshape2_1.4.1     rmarkdown_0.7     
[13] labeling_0.3       proto_0.3-10       tools_3.2.1        stringr_1.0.0.9000 munsell_0.4.2      yaml_2.1.13       
[19] colorspace_1.2-6   htmltools_0.2.6   
```
