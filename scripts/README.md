Scripts
---

### Naming of scripts  
The leading number in the names of the script (e.g. "0_...", "1_..." ) suggest the order in which they should be executed. The letter following the number (e.g. "0a_...", "0b..." ) implies that these scripts are sourced by the parents with the corresponding number (script "0_..."). Words that describe the script are written in all lowercase separated by the underscore "_".

## 0_ group

### [<code>0_collect_studies.R</code>]() 
Uses the functions defined in the script [0a_functions_that_collect.R]() to extract model results from Mplus output files. 


### [0a_functions_that_collect.R]()
 Defines functions that conduct primary extraction of model results from the model output files.  
- <code>find.Conflicts()</code> checks for issues associated with GitHub conflicts, usually marked by "<<<<" sign.  
- <code>find.CI()</code> checks for and removes CIs from the model output because it breaks MplusAutomation performance.  
- <code>get.Models()</code> does all the heavy lifting. Extracts specific elements from the raw model output files. If you need to extract additional elements this function will have to be adjusted.  Executing ```get.Models("elsa")``` will  collect all models located in [./studies/elsa](./studies/elsa) (i.e. process all *.out files resulted from fitting models in Mplus) and save a  *.csv file "study_automation_results.csv" which will contain 

### [01_functions_that_test.R]()
Uses some basic ```dplyr::count()``` to inspect the names of the element used in the filenames of the model outputs. Used as a stand-aside: not sourced by ```0_collect_studies.R```


## 1_ group

### [```1_combine_and_extend.R```]() 
**Combines** all ```study_automation_results.csv``` files, each of which contains extracted model descriptors from the corresponding study.  
**Extends** the datasets with transformations useful for all consequential scripts:  
  - chunk ``` @knitr standardize_coefficients``` transforms covariances of random terms of the bivariate models into correlations and computes confidence intervals for them.

This script saves the object ```./data/shared/ds1.rds```, the raw, unprocessed extract from all the models in the collective. 

### [```./reports/rename_collapse/Track_renaming.R```]()  
Records the list of corrections made to the output filenames of the submitted models after they have been read in. The resulting object is ```./data/shared/ds1a.rds``` which is the starting point for all analyses.    

## General

### [```thesaurus.R```]() 
 Lists the titbits of learning in this project.  
