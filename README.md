
[![logl](libs/images/ialsa_long.png)](http://www.ialsa.org/)
Quick links: [news](#news)  -  [projects](#projects)  -  [tools](#tools)  -  [log](#log)  -  [participants](#participants)  -  [dashboard](http://shiny.ouhsc.edu/IALSA-2015-Portland/shiny/dashboard)  -  [GSA poster](https://github.com/IALSA/IALSA-2015-Portland/blob/master/projects/physical-cognitive/gsa_poster.md)

#Concurrent decline of body and mind  

IALSA-2015-Portland workshop performs a **coordinated analysis with replication (CAR)** of decline in physical and cognitive functioning during later adulthood. The research agenda distinguishes the following foci:    
* [`gait-cognitive`](/projects/gait-cognitive) - Associations between changes in measures of **gait** and changes in cognitive function. 
* [`grip-cognitive`](/projects/grip-cognitive) - Associations between changes in **grip** function and changes in cognitive function. 
* [`pulmonary-cognitive`](/projects/pulmonary-cognitive) - Associations between changes in **pulmonary** function and changes in cognitive function. 
* [`physical-cognitive`](/projects/physical-cognitive) -  Associations between **physical** and **cognitive** decline.    
* [`physical-physical`](/projects/physical-physical) - Associations among rates of change in measures of **physical** functioning.   
* [`cognitive-cognitive`](/projects/cognitive-cognitive) - Associations among rates of change in measures of **cognitive** function.   


The following information display shows the available  statistical models in the collective, grouping them by cognitive domains (color), items tapping those domains (row labels), and specific tests (cell labels) and indicating the total number of models using this item (number after cell label). 

 [![outcome space](https://raw.githubusercontent.com/IALSA/IALSA-2015-Portland/master/reports/outcome-space/figures_rmd/domain_map-1.png)](https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/outcome-space/outcome-space.md)  

Any model in the collective can be specified by a form nested within the general **specification**:  
[![general_model_specification](./libs/images/general_model_specification.png)](./reports/model_specification/README.md)  
</br>
The **covariance structure** will be given as
[![general_model_specification](./libs/images/specification_covariance_structure.png)](./reports/model_specification/README.md)  
For  details see [model specification](./reports/model-specification/README.md).  


## Tools  
Analytic tools available to the workshop participants include dynamic **reports** and interactive **apps**. Both reports and apps are regenerated with each new influx of model submissions.  

### Reports 
 - [Rename and collapse](https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/rename_collapse/Track_renaming.md)  gives account of how model filename elements (subgroup, model_type, cognitive_measure, etc.) are corrected, renamed, and reclassified. Incorporates the results of Teleconference 1 on Jun 12.    
 - [Model Counts](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/basic/counts.html)  and  [Model Essentials](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/basic/essentials.html)  give basic tabled view of data in model space.   
 - Current status update for each study:
 [EAS](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/eas.html), [ELSA](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/elsa.html), [HABC](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/habc.html), 
 [ILSE](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/ilse.html), [NAS](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/nas.html) , 
 [NuAge](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/nuage.html),  [OCTO-Twin](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/octo.html),
 [RADC](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/radc.html),
 [SATSA](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/satsa.html)  
 - [model_space](https://raw.githubusercontent.com/IALSA/Portland-physical-cognitive/master/analysis/model_space/cog_domain_map/domain_map-1.png) graphing how the measures are mapped into domains. We need to understand how best to organize our models for the analysis, in which model (not individual) is the primary unit .    
 - [reproduce](./scripts/utility/reproduce.R) script that re-generates all these reports.   
 - [scripts README](./scripts/README.md) overview scripts that replicates data preparation  
 
### Apps  
 - [dashboard](http://shiny.ouhsc.edu/IALSA-2015-Portland/shiny/dashboard)  
 - [pivot tables](http://shiny.ouhsc.edu/IALSA-2015-Portland/shiny/pivotTable) for basic exploration in the space of the submitted models

## Participants
| Study | Contact |
| :---- | :------ |
| [EAS](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/eas.html) | [measures](./EAS/measures.md) |
| [ELSA](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/elsa.html) | [Annie Robitaille](mailto:annie.g.robitaille@gmail.com) |
| [HABC](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/habc.html) | [Chenkai Wu](mailto:chenkai.wu2010@gmail.com) |
| [ILSE](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/ilse.html) | [Philipp Handschuh](mailto:philipp.handschuh@uni-ulm.de) |
| [NAS](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/nas.html) | [Lewina Lee](mailto:lewina@bu.edu) |
| [NuAge](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/nuage.html) | [Valerie Jarry ](mailto:valerie.jarry@umontreal.ca ) |
| [OCTO-Twin](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/octo.html) | [Marcus Praetorius](mailto:marcus.praetorius@psy.gu.se) |
| [RADC](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/radc.html) | [Cassandra Brown](mailto:clb@uvic.ca) |
| [SATSA](http://htmlpreview.github.io/?https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/individual/satsa.html) | [Deborah Finkel](mailto:dfinkel@ius.edu) |

### Contact IALSA team

 - [Andrey Koval](mailto:andkov@uvic.ca)  
 - [Andrea Piccinin](mailto:piccinin@uvic.ca)   
 - [Graciela Muniz](mailto:gm299@cam.ac.uk)  
 - [Will Beasley](mailto:wibeasley@hotmail.com)  

### Background

The current repository analyzes the results of the IALSA Analysis Workshop ([pdf overview](https://www.dropbox.com/s/a8zmh70ybedyec6/IALSA%20Feb%202015%20Workshop%20Overview.pdf?dl=0)) that was  held in Portland, Oregon from Monday February 23rd (8:30am) to Wednesday February 25th (12:30pm), 2015. 

The primary aim of the workshop was to examine associations between changes in physical functioning (i.e., grip strength, pulmonary function, chair stands, walking speed) and cognitive functioning (i.e., measures of speed, memory, reasoning, executive functioning) in multiple-study comparative framework. Bivariate growth processes were estimated to evaluate dynamic associations in change and variation within and across these domains and in relation to sample and individual differences in age, lifestyle, and health outcomes. The results from these analyses will extend recent systematic reviews and meta-analyses (e.g., [Clouston et al., 2012, Epidemiological Reviews](https://www.dropbox.com/s/vfe7u2ez5oxp3ev/Clouston_2013_Epidemiol%20Rev.pdf?dl=0) and will be submitted for publication as a set of independent brief reports, capped by a literature review/overview of analysis and completed with a research synthesis summary.

## Projects

See [projects](./projects/README.md) page for a detailed overview of the projects planned before the Portland conference. 

At the time a project shapes up it gets its own repository, which will eventually host the publication manuscript and all contingencies for reproducibility. Currently, the following repos are gearing toward producing manuscript for submission:  
- [Portland-physical-cognitive](https://github.com/IALSA/Portland-physical-cognitive) repo follow the physical-cognitive track, evaluating the longitudinal models in which physical and cognitive outcomes form a bivariate linear structure. 
 


## News
 -  GSA poster presenting developments in the [**physical-cognitive**](./projects/physical-cognitive/README.md) track  
 - Scatters of Factor Scores: graphs explained in the [issue #100](https://github.com/IALSA/IALSA-2015-Portland/issues/100)
 - [Reminder](./projects/physical/reminder_160915.md) has been sent to those who did not yet provided Table 1, measure descriptions, or PxP models.   
 - [Description of measures](./studies/measures.md) have been added. Still many missing item documentations.
 - Announcing [Physical Track](https://github.com/IALSA/IALSA-2015-Portland/blob/master/projects/physical/announce.md)
 - [A Collaborative Modeling Framework for Multi-Study Coordinated Analyses](http://htmlpreview.github.io/?https://raw.githubusercontent.com/IALSA/IALSA-2015-Portland/master/talks/2015_presentations/22_July/A%20Collaborative%20Modeling%20Framework%20for%20Multi-Study%20Coordinated%20Analyses.html#/), *Wellcome Trust Conference*, July 22, 2015  


## Log 

The agenda and outcomes of each teleconference following the Portland workshop  
 - Announcing [Physical Track](https://github.com/IALSA/IALSA-2015-Portland/blob/master/projects/physical/announce.md)  
 - [Teleconference #3, 10-July-2015](./log.md)
 - [Teleconference #2, 26-June-2015](./log.md)
 - [Teleconference #1, 12-June-2015](./log.md#New) 

</br>  

Quick links: [news](#news)  -  [projects](#projects)  -  [tools](#tools)  -  [log](#log)  -  [participants](#participants)  -  [dashboard](http://shiny.ouhsc.edu/IALSA-2015-Portland/shiny/dashboard)

[edit me](https://github.com/IALSA/IALSA-2015-Portland/edit/master/README.md)
