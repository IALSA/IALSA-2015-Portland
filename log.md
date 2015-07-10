Updates and News
---

 - [Teleconference #3, 10-July-2015](./log.md)
 - [Teleconference #2, 26-June-2015](./log.md)
 - [Teleconference #1, 12-June-2015](./log.md#New) 
 
##Teleconference #3 
**July 10, 2015**
</br>
*AGENDA*

#### 0.Update
 - new app: dashboard  
 - project pages

#### 1.Publication model
 - Review, Meta, and Individual papers

#### 2.ISR Summaries 

#### 3. Brief Report anatomy

#### 4. Plans

**Next week**:  
-  Fill the gaps, use pivotTable  
-  Pulmonary Brief Report: table 1 + table 2

**Next Month**:  
- Can we use "aehplus" as the common model? Exploring table 3: mixed effects.

##Teleconference #2
**26 July 2015**
</br>
*AGENDA*
### 0. Updates
 - Reports and Apps will be on the top from now on.    
 - All reports have been regenerated. Links to reports are in the section "Analytic Tools to date".They will be regenerated every time substantial changes are made to the model collective (in the future these updates will be automatic)    
 - pivotTable app got a new default look. Select only your study and make sure only "1" are in the cells.    
 - [model specification](./reports/model_specification/README.md) added. help us proofread it and complete it    
 
  
### 1. Renaming  
- **eas**: ok  
- **elsa**: ok  
- **habc**: ok 
  - confusion: b1_male_full_muscle_mental_gait_clock.out and b1_male_full_walking_mental_gait_clock.out    
- **eas**:  
  - confusion: b1_female_ae_muscle_memory_grip_digitsymbol.out and b1_female_ae_muscle_speed_grip_digitsymbol.out  
- **ilse**: ok  
- **nas**:
  - *aeplus* models were filtered out until. Lewina re-runs *aehplus* with data unadjusted for height.  
- **nuage**: ok  
- **radc**: ok  
- **satsa**: ok 

### 2.  Descriptive tables  (Table 1)
 1. we need your tables!
 2. place file named study_descriptives.docx into your study sub folder ./study/elsa
 3. we need these descriptives to properly calibrate modelled trajectories, so we can't proceed with table 3 until we have these.

### 3. Bivariate ISR (Table 2)
  - Meet new graph : bivariate ISR correlations. 
  - Purpose: help you survey and summarize the models in your study. 
  - What it's not optimized for: cross-study comparisons. But you can still do them.

### 4. ISR with pivotTable  

PivotTable can enhance our use of ISR graph. Use it to view what physical measures and model types should be selected in the exploration of each study. To do that: open the pivot table in the default view, click on "Unselect All" in the drop down menu of the "study" pivot, and select only one study - yours. If now you select only "b1" under pivot "model_number" you should only see "1" in every cell of your pivotTable.  If the cell is blank, you need run that model, if the cell is greater than 1 then something went wrong: there should be only one model in this study with these specifications.

 
### 5. Discussing results:  
 - [ ] What is in "plus" models?  
 - [ ] Operationalization and centering of covariates

### 6. Interpretation of ISR correlations
 - UPPERCASE: significant correlation  
 - lowercase: insignificant correlation  
 
 Bivariate models can exhibit the following patterns (among others):   
   1. ISR     
   2. ISr   
   3. Isr   
   4. isr   
   5. iSr   
   6. isR   

 
What should the interpretation be for each combination?   
  
   
### 7. Next steps

- write a brief report summary interpreting Bivariate ISR graph (table 2)   


## Teleconference #1, 12-June-2015

Please open these files for the teleconference  
- review the [interactive pivot tables](http://shiny.ouhsc.edu/IALSA-2015-Portland/shiny/pivotTable)  
- view the list of edits in the report on [renaming and collapsing](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/rename_collapse/Track_renaming.html)  

TO DO LIST:  
 - [ ] For each unique pair run 12 models (model_type by subgroup)
 - [ ] See what cognitive and physical measures your study has, but the pair of which your study did not estimate in a bivariate model. Estimate all 12 versions of each unique pair. 
 - [ ] Identify which cognitive measures your study does not report, but other studies do.  Estimate all 12 versions of each unique pair. 
