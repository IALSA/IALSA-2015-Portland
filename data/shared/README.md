[.](https://github.com/IALSA/IALSA-2015-Portland/edit/master/data/shared/README.md)   

## Data

- ```ds0.rds``` contains raw model data as it was extracted from output files produced by Mplus. 

- ```ds1.rds``` contains data corrected for typos, misnomers, and misclassifications.


- ```ds2.rds``` augements corrected data with specialty transformations (correlation, 95%CI)


## Scripts

- [`./scripts/collect-physical-cognitive.R`]()   directs to the location of the saved output files. Combines a roster of models from all studies. Source 'extraction-function.R'. Produces a dataframe with rows as individual models and columns as their properties extracted from the output files. Saves the file in `./data/shared/results-physical-cognitive.csv` 

- [`extraction-functions.R`]()  defines all the functions that reach into the text output and extracts the needed information (e.g. fit value, parameter estimates, etc). Sources `group-variables.R`. Applies the functions to the dataframe passed from a higher-order script ( e.g. `collect-physical-cognitive.R`)

- [`group-variable.R`]()  creates objects with names of the variables. Used in higher-order scripts, saving them space

- [`get-gh5.R`]()  processes `*.gh5` files, if they are submitted along with the output. 


- [```0_collect_studies.R```](https://github.com/IALSA/IALSA-2015-Portland/blob/master/scripts/0_collect_studies.R): ```model.out```  >>>  ```./study1...studyS/study_automation_results.csv```  
Uses the functions defined in the script [0a_functions_that_collect.R](https://github.com/IALSA/IALSA-2015-Portland/blob/master/scripts/0a_functions_that_collect.R) to extract model results from individual Mplus output files. Creates a ```.csv``` file for each study. 


- [```0c_combine_model_outputs.R```](https://github.com/IALSA/IALSA-2015-Portland/blob/master/scripts/1_combine_model_outputs.R): ```./study1...studyS/study_automation_results.csv```   >>>  **ds0**  
Combines all ```study_automation_results.csv``` files, each of which contains extracted model descriptors from the corresponding study.  The resulting datastate is ds0.rds.


- [```./reports/rename_collapse/Track_renaming.R```](https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/rename_collapse/Track_renaming.R): **ds0**  >>>  **ds1**   
Takes ```./data/shared/ds0.rds```(which contains all raw model results in the collective),  corrects for typoes, misnomers, and misclassifications, and  produces ```./data/shared/ds1.rds```


- [```./reports/extend/standardize_ISR.R```](https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/extend/standardize_ISR.R): **ds1.rds**  >>>  **ds2.rds**    
The script takes ```./data/shared/ds1.rds```(which contains all raw model results in the collective) and corrects for typoes, misnomers, and misclassifications, producing ```./data/shared/ds2.rds``

 




