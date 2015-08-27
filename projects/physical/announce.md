##Announcing Physical Track
 [edit me](https://github.com/IALSA/IALSA-2015-Portland/edit/master/log.md)  
 
 Dear colleagues, 
 
Table of Contents   
- 1. After the Wellcome Trust conference   
- 2. Behind the Scenes Updates    
- 3. Significance Decisions: pvalues and CIs    
- 4. New Focus: Analytics    
- 5. New Focus: Physical-Physical    
- 6. Our Deadline: October 31   
- 7. Describe your physical measures     
- 8. Models to Run    
- 9. Adjust MPlus code: PxP    
- 10. Adjust MPlus code: Correlation and CI   
- 11. Where to Upload the Output Files    
- 12. How to Follow the Developments     

	 
 
1.After the Wellcome Trust conference    
	Hope all of you had a good summer and now ready for a productive season! First some good news. All of the hard work started paying off after we presented the first preliminary results of Portland Collective at the Wellcome Trust [Longitudinal Studies: Maximising their Value for Ageing Research](http://conf.hinxton.wellcome.ac.uk/advancedcourses/LongitudinalStudies.pdf) conference in Hinxton, England on July 21-23. We had a great reaction to our [presentation](http://htmlpreview.github.io/?https://raw.githubusercontent.com/IALSA/IALSA-2015-Portland/master/talks/2015_presentations/22_July/A%20Collaborative%20Modeling%20Framework%20for%20Multi-Study%20Coordinated%20Analyses.html#/): many have shared their excitement at the prospects of such collaborative framework as we've demonstrated. In particular, the power to process and make sense of such a vast number of models has been in the spotlight. 
 
2.Behind the Scenes Updates    
	This event allowed our tech team to patch many gaps in the software system and make serious progress in the performance of analytic tools. You'll see many reports updated to reflect the changes. The main dashboard has been altered too. But if you can't spot these changes, no worries.   
 
3. Significance Decisions: pvalues and CIs    
	One important methodological news. As you all know, we had a hard time explaining why some confidence intervals of the correlation ( that we've computed after extracting model outputs ) didn't line up in the statistical significance decision with the pvalues of the covariances that came directly from the model outputs. We suspected scripting errors, but couldn't find verification. As it turns out, there are theoretically valid reasons why they wouldn't line up. If you are interested in details, please follow [issue #75](https://github.com/IALSA/IALSA-2015-Portland/issues/75). In short, now we'll try to estimate correlations and CIs directly in MPlus. This will happen impact on how you run your model and M plus. But more about this later, in the technical instructions. 

4.  New Focus: Analytics     
	Another important development occured in the area of workflow organization. So far our focus has been on estimating, uploading, and processing models. We were building the infrastructure, so the primary goal was to just make it work. It is worth recognizing that we did it!! It's not perfect, not at all, but works well enough to start shifting out focus to actually doing something with the wealth of information we have at our disposal.  Model submission will continue, of course, but it will be much easier now. It will be more targeted and  more structured, motivated by a more precise set of questions.  Our challange  now is to **discuss how certain groups of these models can help us understand particular aspects of human aging**. Practically, this will mean to fine-tuning our efforts to cater to the needs of the specifict [project](https://github.com/IALSA/IALSA-2015-Portland/blob/master/projects/README.md), so that we all can get published. Let's keep our eyes on the deliverables. 

5. New Focus: Physical-Physical   
	One of such groups will constists of models pairing only physical measures. Hence a slight shift of focus for the next few months, that Andrea Piccinin announced in the previous email:
	```
    The paper will provide information regarding the extent to
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

	Please see if we missed any measures, and you study has measure to fill in the blanks. 


7. Describe measures   
	If you are interested in the project and would like to submit model outputs to the collective, please start by documenting the measures the association among which you will be exploring with bivariate models. Each study's folder on github now contains a file ```./studies/STUDY/measures.md```. Please edit this file to provide the description of your measures.  Please refer to the [issue #79](https://github.com/IALSA/IALSA-2015-Portland/issues/79) for announcements and discussion of what should go into these descriptions. 
   
8. Run models   
	There are just a few models in each study that needs to be run, so we list them all here. Each name refers to a pair of models, one for each sex. For the purposes of this paper "aehplus" model type is sufficient (that is models containing, age, education, height, and specific plus variable as covariates) You can use this list as your roadmap.  
   
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


9.  Adjust MPlus code: PxP   
    Some adjustment are in order to accomodate this shift from  physical-cognitive to physical-physical pairing. Let's say we'd like to run ```b1_SEX_aehplus_grip_pef```.  In the DEFINE statement we used "p" and "c" to refer to "physical" and "cogntive", but now we'll simply think of them as "process A" and "process B". Here's the confusing part: in order to maintain the integrity of the post-processing scripts we won't do any renaming in MPplus scritp, we'll just point to different variables. To demonstrate, the first two lines of the DEFINE statement would read something like: 
	```
	DEFINE:
	p1=gripp1; p2=gripp2; p3=gripp3; p4=gripp4; p5=gripp5;
    c1=pek1;   c2=pek2;   c3=pek3;   c4=pek4;   c5=pek5;
	```
	
10. Adjust MPlus code: Correlation and CI	   
   As I mentioned before, we are adjusting our Mplus scripts to compute the correlations (not just covariances) and their confidence intervals. THis will require two straigforward steps.  
   **STEP 1**: Name parameters in the MODEL statement   
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
	
	**STEP 2**: Add MODEL CONSTRAINT statement   
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

11. Upload the output files      
    In the folder of you study, create a folder called "physical",  for example  
	```	
	./studies/eas/physical
	```     
	and upload your models there. 
	
	
12. Follow the developments      
	The "./projects/physical/[README](https://github.com/IALSA/IALSA-2015-Portland/blob/master/projects/physical/README.md)" will be the frontpage for this project. I'll post all reports and analytic tools there, as well as the project administration instruments.  Closer to the end of September we'll begin unrolling the reports and interactive apps that make sense of these models. 
	
	
	So, allow me to recap: 
	
1. After the Wellcome Trust conference - others think we're doing a cool thing, let's keep at it!  
2. Behind the Scenes Updates  -  technical details  
3. Significance Decisions: pvalues and CIs  - discrapancy clarified  
4. New Focus: Analytics  - focus on completing projects : publishing  
5. New Focus: Physical-Physical  - best current opportunity  
6. Our Deadline: October 31 -  we can do it, here's [timetable](https://github.com/IALSA/IALSA-2015-Portland/blob/master/projects/physical/timetable.md) how.   

**CALL FOR ACTION**: 
7. Describe your physical measures  - it's only two or three. we need them to start analytics asap.    
8. Models to Run - you won't have to run more than 6  
9. Adjust MPlus code: PxP - important technical details on how to modify the scripts  
10. Adjust MPlus code: Correlation and CI - important technical details on how to modify the scripts   
11. Where to Upload the Output Files - ./studies/YOURSTUDY/physical/
12. How to Follow the Developments  - read ./projects/physical/[README](https://github.com/IALSA/IALSA-2015-Portland/blob/master/projects/physical/README.md)






	
	
	