Updates and News
---

 - [Teleconference #3, 10-July-2015](./log.md)
 - [Teleconference #2, 26-June-2015](./log.md)
 - [Teleconference #1, 12-June-2015](./log.md#New) 


##Announcing Physical Track
 [edit me](https://github.com/IALSA/IALSA-2015-Portland/edit/master/log.md)  
 
 Dear colleagues, 
   
1.  After the Wellcome Trust conference   
	Hope all of you had a good summer and now ready for a productive season! First some good news. All of your hard work started paying off after we presented the first preliminary results of Portland Collective at the Wellcome Trust [Longitudinal Studies: Maximising their Value for Ageing Research](http://conf.hinxton.wellcome.ac.uk/advancedcourses/LongitudinalStudies.pdf) conference in Hinxton, England on July 21-23. We had a great reaction to our [presentation](http://htmlpreview.github.io/?https://raw.githubusercontent.com/IALSA/IALSA-2015-Portland/master/talks/2015_presentations/22_July/A%20Collaborative%20Modeling%20Framework%20for%20Multi-Study%20Coordinated%20Analyses.html#/): many have shared their excitement at the prospects of such collaborative framework as we've demonstrated. In particular, the power to process and make sense of such a vast number of models has been in the spotlight. 
 
2.  Behind the scenes updates
	This event allowed our tech team to patch many gaps in the software system and make serious progress in the performance of analytic tools. You'll see many reports updated to reflect the changes. The main dashboard has been altered too. But if you can't spot these changes: no worries.   
 
3.  Significance Decisions: pvalues and CIs
	One important methodological news. As you all know, we had a hard time explaining why some confidence intervals of the correlation ( that we've computed after extracting model outputs ) didn't line up in the statistical significance decision with the pvalues of the covariances that came directly from the model outputs. We suspected scripting errors. As it turns out, there are theoretically valid reasons why they wouldn't line up. If you are interested in details, please follow [issue #75](https://github.com/IALSA/IALSA-2015-Portland/issues/75). In short, now we'll try to estimate correlations and CIs directly in MPlus. This will happen impact on how you run your model and M plus. But more about this later, in the technical instructions. 

4.  New Focus: Analytics    
	Another important development occured in the area of workflow organization. So far our focus has been on estimating, uploading, and processing models. We were building the infrastructure, so the primary goal was to just make it work. It is worth recognizing that we did it!! It's not perfect, not at all, but works well enough to start shifting out focus to actually doing something with the wealth of information we have at our disposal.  Model submission will continue, of course, but it will be much easier now. It will be more targeted and  more structured, motivated by a more precise set of questions.  Our challange  now is to **discuss how certain groups of these models can help us understand particular aspects of human aging**.

5.  Publication model  
	One of such groups will constists of models pairing only physical measures. Hence a slight shift of focus for the next few months, that Andrea Piccinin announced in the previous email:
	```
	We would very much like to feature results from the Portland IALSA workshop, 
	with a focus on bivariate associations among trajectories of the physical measures. 
	Given the limitations for publication in this journal and because there are fewer 
	physical than cognitive measures, a multi-authored single paper will be the format 
	for this set of results. The paper will provide information regarding the extent to
	which various physical functions decline together within individuals, as opposed to 
	declining in isolation, with different losses in different individuals.
	```	
	
	
	To remind you. Our current publication model intends 5 foci. So far we've been referring to them as: pulmonary, grip, gait, cognitive, and physical.  Each of them implies a paper or a series of papers exploring particular associations and their replications across multiple longitudinal studies. Each of them is organized as a separate [project](https://github.com/IALSA/IALSA-2015-Portland/blob/master/projects/README.md) and is (will be)  given a unique [Milestone](https://github.com/IALSA/IALSA-2015-Portland/milestones) within GitHub Issues. Pulmonary project has been our flagship project so far, however it appears that the publication opportunity with IJE offers a quicker path to a deliverable: a multistudy paper on physical outcomes, [project 5](https://github.com/IALSA/IALSA-2015-Portland/blob/master/projects/physical/README.md) on our publication agenda. 


6. Deadline : October 31
   It's 9 weeks away, so we need to move fast. Here are the physical outcomes we've identified we have:
   
	| STUDY / outcome |  | |  | | |   
	|---|---|---|---|---|---|
	| EAS  |grip|pef|   |   |    |  
	| ELSA |grip|   |fev|   |    |  
	| HRS  |grip|pef|   |   |gait|  
	| ILSE |grip|   |   |tug|    |  
	| LASA |grip|pef|   |   |gait|  
	| NUAGE|grip|   |   |tug|    |   
	| OCTO |grip|pef|   |   |gait| 
	| RADC |grip|   |fev|   |gait|  
	| SATSA|grip|pef|   |   |    |  

	In order to maximize replication effect we will combine PEF and FEV, as well as TUG and GAIT, resulting in the following formation:

	| STUDY / domain  |grip  |breath | locomoto |   
	|---|---|---|---|
	| EAS   |grip   |pef|    |  
	| ELSA  |grip   |fev|    |  
	| HRS   |grip   |pef|gait|  
	| ILSE  |grip   |   |tug |  
	| LASA  |grip   |pef|gait|  
	| NUAGE |grip   |   |tug |  
	| OCTO  |grip   |pef|gait|  
	| RADC  |grip   |fev|gait|  
	| SATSA |grip   |pef|    | 

	If your study has at least one pair of physical measures, you are welcome to participate and submit the models. 


7. Describe measures
	If you are interested in the project and would like to submit model outputs to the collective, please start by documenting the measures the association among which you will be exploring with bivariate models. Each study's folder on github now contains a file ./studies/STUDY/measures.md. Please edit this file to provide the description of your measures. 
   
8. Run models
	There are just a few models in each study that needs to be run, so we list them all here. Each name refers to a pair of models, one for each sex. You can use this list as your roadmap for estimation.  
   
	|study  | model | 
	|---|---|
	|EAS|   |
	|   |b1_SEX_aehplus_grip_pef |
	|ELSA|   |
	|   |b1_SEX_aehplus_grip_fev |
	|HRS|   |
	|   |b1_SEX_aehplus_grip_pef |
	|   |b1_SEX_aehplus_grip_gait|
	|   |b1_SEX_aehplus_pef_gait |
	|ILSE|   |
	|   |b1_SEX_aehplus_grip_tug |
	|LASA|   |
	|   |b1_SEX_aehplus_grip_pef |
	|   |b1_SEX_aehplus_grip_gait|
	|   |b1_SEX_aehplus_pef_gait |
	|NuAge|   |
	|   |b1_SEX_aehplus_grip_tug |
	|OCTO|   |
	|   |b1_SEX_aehplus_grip_pef |
	|   |b1_SEX_aehplus_grip_gait|
	|   |b1_SEX_aehplus_pef_gait |
	|RADC|   |
	|   |b1_SEX_aehplus_grip_fev |
	|   |b1_SEX_aehplus_grip_gait|
	|   |b1_SEX_aehplus_fev_gait |
	|SATSA|   |
	|   |b1_SEX_aehplus_grip_pef |

	Please use these exact names when naming your output files (after substituting SEX for "female" or "male").


8.  Adjust MPlus code: PxP
    Some adjustment are in order to accomodate this shift from  physical-cognitive to physical-physical pairing. Let's say we'd like to run ```b1_SEX_aehplus_grip_pef```.  In the DEFINE statement we used "p" and "c" to refer to "physical" and "cogntive", but now we'll simply think of them as "process A" and "process B". Here's the confusing part: in order to maintain the integrity of the post-processing scripts we won't do any renaming in MPplus scritp, we'll just point to different variables. To demonstrate, the first two lines of the DEFINE statement would read something like: 
	```
	DEFINE:
	p1=gripp1; p2=gripp2; p3=gripp3; p4=gripp4; p5=gripp5;
    c1=pek1;   c2=pek2;   c3=pek3;   c4=pek4;   c5=pek5;
	```
	
9. Adjust MPlus code: Correlation and CI	
   As I mentioned before, we are adjusting our Mplus scripts to compute the correlations (not just covariances) and their confidence intervals. THis will require two straigforward steps.
   STEP 1. Name parameters in the MODEL statement
   ```
	ip (v_ip); ! v - variance
	sp (v_sp); 
	ic (v_ic);
	sc (v_sc);
	ip WITH sp (c_ipsp); ! c - covariance
	ip WITH ic (c_ipic);
	ip WITH sc (c_ipsc);
	sp WITH ic (c_spic);
	sp WITH sc (c_spsc);
	ic WITH sc (c_icsc);
    ```
	
	STEP 2: Add MODEL CONSTRAINT statement
    Referring to the estimated parameters by the names defined in STEP 1, we compute correlations and their confidence intervals:
	```
	MODEL CONSTRAINT:

	NEW r_ipic;
	NEW r_spsc;
	NEW r_res_pc;

	r_ipic = c_ipic/((v_ip**0.5)*(v_ic**0.5));
	r_spsc = c_spsc/((v_sp**0.5)*(v_sc**0.5));
	r_res_pc = res_cov/((res_p**0.5)*(res_c**0.5));

	OUTPUT: sampstat Cinterval;
    ```
	Please make sure you copy the OUTPUT statement as well to request Cinterval. 
	Here's the complete model specification in Mplus used in this [example](https://github.com/IALSA/IALSA-2015-Portland/blob/master/projects/physical/outputs/b1_female_aehplus_grip_pek.out). 

10. Upload the output files
    In the folder of you study, create a folder called "physical",  for example  
	```	./studies/eas/physical```  
	and upload your models there. 
	
	
11. Follow the developments
	The "./projects/physical/[README](https://github.com/IALSA/IALSA-2015-Portland/blob/master/projects/physical/README.md)" will be the frontpage for this project. I'll post all reports and analytic tools there, as well as the project administration instruments. 
	
	




[edit me](https://github.com/IALSA/IALSA-2015-Portland/edit/master/log.md)

 
##Teleconference #3 
**July 10, 2015**
</br>
*AGENDA*

#### 0.Update
 - new app: dashboard  
 - [project pages](https://github.com/IALSA/IALSA-2015-Portland/blob/master/projects/README.md)  

#### 1.Publication model
 - Review, Meta, and Individual papers

#### 2.ISR Summaries 
- [review online](https://github.com/IALSA/IALSA-2015-Portland/tree/master/studies/table_2_ISR)

#### 3. Brief Report anatomy
 -  ```./projects```

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
