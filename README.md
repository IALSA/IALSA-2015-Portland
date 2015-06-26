
[![logl](libs/images/ialsa_long.png)](http://www.ialsa.org/)

##  Analytic Tools to date
### Reports 
 - [Rename and collapse](https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/rename_collapse/Track_renaming.md)  gives account of how model filename elements (subgroup, model_type, cognitive_measure, etc.) are corrected, renamed, and reclassified. Incorporates the results of Teleconference 1 on Jun 12.    
 - [Model Counts](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/basic/counts.html)  and  [Model Essentials](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/basic/essentials.html)  give basic tabled view of data in model space.   
 - Data quality check for each study:
 [EAS](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/eas.html), [ELSA](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/elsa.html), [HABC](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/habc.html), 
 [ILSE](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/ilse.html), [NAS](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/nas.html) , 
 [NuAge](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/nuage.html),  [OCTO-Twin](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/octo.html),
 [RADC](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/radc.html),
 [SATSA](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/satsa.html)  
 - [model_space](https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/model_space/README.md) is a series of reports that tries to understand how best to organize our models for the analysis, in which model (not individual) is the primary unit .   
 - [dashboard](./dashboard.R) script that re-generates all these reports.
 
###  Apps  
 - [pivot tables](http://shiny.ouhsc.edu/IALSA-2015-Portland/shiny/pivotTable) for basic exploration in the space of the submitted models
 -  [Bivariate ISR](http://shiny.ouhsc.edu/IALSA-2015-Portland/shiny/bivariate_ISR) reviews correlations between intercepts (I), slopes (S), and residuals(R) for all models in one study using the same physical measure. 

## Coordinated analysis with replication (CAR)
 IALSA-2015-Portland workshop coordinates modeling concomitant decline in physical and cognitive functioning during later adulthood.
 The following is the map of the observed model space adopted as the coordination fulcrum.
 [![model space 5D](./reports/model_space/figure_modelSpace5D/dashboard_tile_graph-1.png)](https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/model_space/Model-Space-5D.md)
 The coordination fulcrum is a bivariate linear growth model that has the following specification   
![general_model_specification](./libs/images/general_model_specification.png)   
with respective covariance structure.
![general_model_specification](./libs/images/specification_covariance_structure.png)  
See details in [model specification](./reports/model_specification/README.md)



## Teleconference on June 26, 2015

##### AGENDA (dev)

0. Updates
 - All reports have been updated. Links to reports are in the section "Analytic Tools to date".  
 - pivotTable app got a new look. Select only your study and make sure only "1" are in the cells.  
 - model specification added. help us proofread it and complete it  
 
 
1. Remaining issues:  
  - **habc**:  
   - confusion: b1_male_full_muscle_mental_gait_clock.out and b1_male_full_walking_mental_gait_clock.out    
 - **eas**:  
   - confusion: b1_female_ae_muscle_memory_grip_digitsymbol.out and b1_female_ae_muscle_speed_grip_digitsymbol.out  
 - **nas**:
   - *aeplus* models were filtered out until. Lewina re-runs *aehplus* with data unadjusted for height.  
   
2. Discussing results:  
 - [ ] What is in "plus" models?  
 - [ ] Operationalization and centering of covariates


## Teleconference on June 12

Please open these files for the teleconference  
- review the [interactive pivot tables](http://shiny.ouhsc.edu/IALSA-2015-Portland/shiny/pivotTable)  
- view the list of edits in the report on [renaming and collapsing](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/rename_collapse/Track_renaming.html)  

TO DO LIST:  
 - [ ] For each unique pair run 12 models (model_type by subgroup)
 - [ ] See what cognitive and physical measures your study has, but the pair of which your study did not estimate in a bivariate model. Estimate all 12 versions of each unique pair. 
 - [ ] Identify which cognitive measures your study does not report, but other studies do.  Estimate all 12 versions of each unique pair. 

## Participating Studies & Contacts

| Study | Contact |
| :---- | :------ |
| [EAS](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/eas.html) | [Andrea Zammit](mailto:Andrea.Zammit@einstein.yu.edu) |
| [ELSA](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/elsa.html) | [Annie Robitaille](mailto:annie.g.robitaille@gmail.com) |
| [HABC](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/habc.html) | [Chenkai Wu](mailto:chenkai.wu2010@gmail.com) |
| [ILSE](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/ilse.html) | [Philipp Handschuh](mailto:philipp.handschuh@uni-ulm.de) |
| [NAS](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/nas.html) | [Lewina Lee](mailto:lewina@bu.edu) |
| [NuAge](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/nuage.html) | [Valerie Jarry ](mailto:valerie.jarry@umontreal.ca ) |
| [OCTO-Twin](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/octo.html) | [Marcus Praetorius](mailto:marcus.praetorius@psy.gu.se) |
| [RADC](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/radc.html) | [Cassandra Brown](mailto:clb@uvic.ca) |
| [SATSA](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/satsa.html) | [Deborah Finkel](mailto:dfinkel@ius.edu) |

## Overview

The IALSA Analysis Workshop ([pdf overview](https://www.dropbox.com/s/a8zmh70ybedyec6/IALSA%20Feb%202015%20Workshop%20Overview.pdf?dl=0)) was  held in Portland, Oregon from Monday February 23rd (8:30am) to Wednesday February 25th (12:30pm), 2015. The primary aim was to examine associations between changes in physical functioning (i.e., grip strength, pulmonary function, chair stands, walking speed) and cognitive functioning (i.e., measures of speed, memory, reasoning, executive functioning) in multiple-study comparative framework. Multivariate analyses are used to evaluate dynamic associations in change and variation within and across these domains and in relation to sample and individual differences in age, lifestyle, and health outcomes. The results from these analyses will extend recent systematic reviews and meta-analyses (e.g., [Clouston et al., 2012, Epidemiological Reviews](https://www.dropbox.com/s/vfe7u2ez5oxp3ev/Clouston_2013_Epidemiol%20Rev.pdf?dl=0) and will be submitted for publication as a set of independent brief reports, capped by a literature review/overview of analysis and completed with a research synthesis summary.


### Contact IALSA team

 - [Andrey Koval](mailto:andkov@uvic.ca)  
 - [Andrea Piccinin](mailto:piccinin@uvic.ca)   
 - [Graciela Muniz](mailto:gm299@cam.ac.uk)  



## Analysis Projects: 
Results will be organized into several "multivariate change" publication sets including
- Pulmonary Function/Cognition  
- Walking Speed/Cognition  
- Grip Strength/Cognition  
- All Physical  
- All Cognitive  

## Catalog of names  
  Different studies may have the data for the same measures, but modelers may name them differently in their models, which results in our scripts treating them as different measures. To avoid this, please consult our [Catalog of names](https://github.com/IALSA/IALSA-2015-Portland/blob/master/Catalog of names.md) and make sure that your models reflect the convention established there. Any member of the collective can [edit the catalog](https://github.com/IALSA/IALSA-2015-Portland/edit/master/Catalog of names.md) and we encourage you to do so: this will greatly increase the replicability effect of the project. (inspect the latest [html version](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/Catalog_of_names.html))   
NOTE: the purpose of this undertaking seems to be achieved through other means. Deprecate soon (2015-06-25) if unused. 
  
[edit me](https://github.com/IALSA/IALSA-2015-Portland/edit/master/README.md)
