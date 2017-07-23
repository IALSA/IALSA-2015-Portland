Project: Pulmonary function and cognition
----
Table of correlations between factor scores of intercepts, slopes, residuals in a bivariate linear growth model. 
- [focus][corr_focus] - static tables in MS Word format, focusing on estimated correlations 
- [full][corr_full] - static tables in MS Word format, expanding the [focus][corr_focus] report with raw covariances, computed correlations, and confidence intervals. 
- [dynamic][corr_dynamic] - forest plots  and dynamic summary table 
- [table data][table-data] - stand-alone `csv` files containing source data of the all above reports
- [domain map][domain_map] - examine BISR estimates across cognitive domains (under construction at the moment)
- [meta analyis spreadsheet][meta-analysis] - meta analysis conducted outside of R, using Excel macro


|Study<sup>1</sup> | Initial Summary Report |
|---|---|
[EAS][eas_table_1]      | [word][eas_word] or [html][eas_html]     |
[ELSA][elsa_table_1]    | [word][elsa_word] or [html][elsa_html]  |
[HRS][hrs_table_1]      | [word][hrs_word] or [html][hrs_html]    |
[LASA][lasa_table_1]    | [word][lasa_word] or [html][lasa_html]  |
[MAP][map_table_1]      | [word][map_word] or [html][map_html]    |
[NAS][nas_table_1]      | [word][nas_word] or [html][nas_html]    |
[OCTO][octo_table_1]    | [word][octo_word] or [html][octo_html]  |
[SATSA][satsa_table_1]  | [word][satsa_word] or [html][satsa_html]|

<sup>1</sup> - Descriptives available after the link.

## Slopes across domains
[![female slopes](https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/domain-map/figure-png/print-domain-map-5.png)](https://raw.githubusercontent.com/IALSA/IALSA-2015-Portland/master/reports/domain-map/figure-png/print-domain-map-5.png)

[![male slopes](https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/domain-map/figure-png/print-domain-map-17.png)](https://raw.githubusercontent.com/IALSA/IALSA-2015-Portland/master/reports/domain-map/figure-png/print-domain-map-17.png)

## Model
All fitted models can be specified by a form nested within the following general **specification**:  
[![general_model_specification](https://github.com/IALSA/IALSA-2015-Portland/blob/master/libs/images/general_model_specification.png)](https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/model-specification/README.md)
</br>
with **covariance structure** given as
[![general_model_specification](https://github.com/IALSA/IALSA-2015-Portland/blob/master/libs/images/specification_covariance_structure.png)](https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/model-specification/README.md)  
For  details see [model specification](../../reports/model-specification/README.md).  

# People 

|Researcher  			           |Email					                                          |Role on Project |
|---|---|---|
|Emily C. Duggan, MSc        |[`eduggan at uvic.ca`][eduggan]                         | Project Lead             |                
|Andrea M. Piccinin, PhD     |[`piccinin at uvic.ca`][piccinin]                       | Lead (IALSA)             |  
|Sean Clouston, PhD          |[`sean.clouston at stonybrook.edu`][sean.clouston]      | Meta-analysis            |   
|Andriy V. Koval, PhD        |[`koval.andrey at gmail.com`][koval.andrey]             | Reproducible workflow    |            
|Annie Robitaille, PhD       |[`annie.g.robitaille at gmail.com`][annie.g.robitaille] | ELSA, LASA, OCTO-analysis|                
|Andrea R. Zammit, PhD       |[`andrea.zammit at einstein.yu.edu`][andrea.zammit]     | EAS- analysis/lead       |   
|Chenkai Wu, MPH, MS         |[`wuche at oregonstate.edu`][wuche]                     | HRS - analysis/lead      |    
|Cassandra L. Brown, MSc     |[`clb at uvic.ca`][clb]                                 | MAP – analysis           |     
|Lewina O. Lee, PhD          |[`lewina at bu.edu`][lewina]                            | NAS - analysis/lead      |    
|Deborah Finkel, PhD         |[`dfinkel at ius.edu`][dfinkel]                         | SATSA – analysis/lead    |           
|William H. Beasley, PhD     |[`whb4 at ou.edu`][whb4]                                | Reproducible workflow    |            
|Raquel B. Graham, MSc       |[`rbgraham at uvic.ca`][rbgraham]                       | Systematic review        |       
|Jeffery Kaye, MD            |[`kaye at ohsu.edu`][kaye]                              | IALSA Collaborator       |        
|Graciela Muniz Terrera, PhD |[`g.muniz at ed.ac.uk`][g.muniz]                        | IALSA Collaborator       |   
|Mindy Katz, MPH             |[`mindy.katz at einstein.yu.edu`][mindy.katz]           | EAS – lead               |
|Richard B. Lipton, MD       |[`richard.lipton at einstein.yu.edu`][richard.lipton]   | EAS – lead               |
|Dorly Deeg, PhD             |[`djh.deeg at vumc.nl`][djh.deeg]                       | LASA - lead              | 
|David Bennett, MD           |[`david_a_bennett at rush.edu`][david_a_bennett]        | MAP – lead               |
|Marcus Praetorius Björk, PhD|[`marcus.praetorius at psy.gu.se`][marcus.praetorius]   | OCTO - analysis          |     
|Boo Johansson, PhD          |[`boo.johansson at psy.gu.se`][boo.johansson]           | OCTO - lead              | 
|Avron Spiro III, PhD        |[`aspiro3 at bu.edu`][aspiro3]                          | NAS - lead               |
|Jennifer Weuve, MPH, ScD    |[`jweuve at bu.edu`][jweuve]                            | NAS - lead               |
|Scott Hofer, PhD            |[`smhofer at uvic.ca`][smhofer]                         | Lead (IALSA)             |  



<!-- Below stored the short-cuts for links -->  

  [corr_focus]:https://rawgit.com/IALSA/IALSA-2015-Portland/master/reports/correlation-3/correlation-3-pulmonary-focus.docx
   [corr_full]:https://rawgit.com/IALSA/IALSA-2015-Portland/master/reports/correlation-3/correlation-3-pulmonary-full.docx
[corr_dynamic]:https://rawgit.com/IALSA/IALSA-2015-Portland/master/reports/correlation-3/correlation-3-pulmonary-summary.html
  [table-data]:https://github.com/IALSA/IALSA-2015-Portland/tree/master/reports/correlation-3/table-data
  [domain_map]:https://rawgit.com/IALSA/IALSA-2015-Portland/master/reports/domain-map/domain-map-pulmonary.html
  
  [eas_table_1]:https://rawgit.com/IALSA/IALSA-2015-Portland/master/studies/table_1_descriptives/Table1_EAS_Descriptives_IALSA_Portland.pdf 
 [elsa_table_1]:https://rawgit.com/IALSA/IALSA-2015-Portland/master/studies/table_1_descriptives/Table1_ELSA_Descriptives_IALSA_Portland.pdf   
  [hrs_table_1]:https://rawgit.com/IALSA/IALSA-2015-Portland/master/studies/table_1_descriptives/Table1_HRS_Descriptives_IALSA_Portland.pdf 
 [ilse_table_1]:https://rawgit.com/IALSA/IALSA-2015-Portland/master/studies/table_1_descriptives/Table1_ILSE_Descriptives_IALSA_Portland.pdf 
 [lasa_table_1]:https://rawgit.com/IALSA/IALSA-2015-Portland/master/studies/table_1_descriptives/Table1_LASA_Descriptives_IALSA_Portland.pdf  
  [map_table_1]:https://rawgit.com/IALSA/IALSA-2015-Portland/master/studies/table_1_descriptives/Table1_MAP_Descriptives_IALSA_Portland.pdf
  [nas_table_1]:https://rawgit.com/IALSA/IALSA-2015-Portland/master/studies/table_1_descriptives/Table1_NAS_Descriptives_IALSA_Portland.pdf 
[nuage_table_1]:https://rawgit.com/IALSA/IALSA-2015-Portland/master/studies/table_1_descriptives/Table1_NuAge_Descriptives_IALSA_Portland.pdf 
 [octo_table_1]:https://rawgit.com/IALSA/IALSA-2015-Portland/master/studies/table_1_descriptives/Table1_OCTO_Descriptives_IALSA_Portland.pdf 
[satsa_table_1]:https://rawgit.com/IALSA/IALSA-2015-Portland/master/studies/table_1_descriptives/Table1_SATSA_Descriptives_IALSA_Portland.pdf  

  [eas_word]:https://rawgit.com/IALSA/IALSA-2015-Portland/master/reports/seeds-pulmonary/seed-eas.docx     
 [elsa_word]:https://rawgit.com/IALSA/IALSA-2015-Portland/master/reports/seeds-pulmonary/seed-elsa.docx   
  [hrs_word]:https://rawgit.com/IALSA/IALSA-2015-Portland/master/reports/seeds-pulmonary/seed-hrs.docx     
 [ilse_word]:https://rawgit.com/IALSA/IALSA-2015-Portland/master/reports/seeds-pulmonary/seed-ilse.docx   
 [lasa_word]:https://rawgit.com/IALSA/IALSA-2015-Portland/master/reports/seeds-pulmonary/seed-lasa.docx   
  [nas_word]:https://rawgit.com/IALSA/IALSA-2015-Portland/master/reports/seeds-pulmonary/seed-nas.docx   
[nuage_word]:https://rawgit.com/IALSA/IALSA-2015-Portland/master/reports/seeds-pulmonary/seed-nuage.docx 
  [map_word]:https://rawgit.com/IALSA/IALSA-2015-Portland/master/reports/seeds-pulmonary/seed-map.docx     
 [octo_word]:https://rawgit.com/IALSA/IALSA-2015-Portland/master/reports/seeds-pulmonary/seed-octo.docx   
[satsa_word]:https://rawgit.com/IALSA/IALSA-2015-Portland/master/reports/seeds-pulmonary/seed-satsa.docx   
  
  [eas_html]:https://rawgit.com/IALSA/IALSA-2015-Portland/master/reports/seeds-pulmonary/seed-eas.html     
 [elsa_html]:https://rawgit.com/IALSA/IALSA-2015-Portland/master/reports/seeds-pulmonary/seed-elsa.html   
  [hrs_html]:https://rawgit.com/IALSA/IALSA-2015-Portland/master/reports/seeds-pulmonary/seed-hrs.html     
 [ilse_html]:https://rawgit.com/IALSA/IALSA-2015-Portland/master/reports/seeds-pulmonary/seed-ilse.html   
 [lasa_html]:https://rawgit.com/IALSA/IALSA-2015-Portland/master/reports/seeds-pulmonary/seed-lasa.html   
  [map_html]:https://rawgit.com/IALSA/IALSA-2015-Portland/master/reports/seeds-pulmonary/seed-map.html     
  [nas_html]:https://rawgit.com/IALSA/IALSA-2015-Portland/master/reports/seeds-pulmonary/seed-nas.html   
[nuage_html]:https://rawgit.com/IALSA/IALSA-2015-Portland/master/reports/seeds-pulmonary/seed-nuage.html 
 [octo_html]:https://rawgit.com/IALSA/IALSA-2015-Portland/master/reports/seeds-pulmonary/seed-octo.html   
[satsa_html]:https://rawgit.com/IALSA/IALSA-2015-Portland/master/reports/seeds-pulmonary/seed-satsa.html 

[eduggan]:eduggan@uvic.ca                
[piccinin]:piccinin@uvic.ca                
[sean.clouston]:sean.clouston@stonybrook.edu   
[koval.andrey]:koval.andrey@gmail.com          
[annie.g.robitaille]:annie.g.robitaille@gmail.com    
[andrea.zammit]:andrea.zammit@einstein.yu.edu  
[wuche]:wuche@oregonstate.edu          
[clb]:clb@uvic.ca                    
[lewina]:lewina@bu.edu                   
[dfinkel]:dfinkel@ius.edu                
[whb4]:whb4@ou.edu                     
[rbgraham]:rbgraham@uvic.ca                
[kaye]:kaye@ohsu.edu                   
[g.muniz]:g.muniz@ed.ac.uk               
[mindy.katz]:mindy.katz@einstein.yu.edu      
[richard.lipton]:richard.lipton@einstein.yu.edu  
[djh.deeg]:djh.deeg@vumc.nl                
[david_a_bennett]:david_a_bennett@rush.edu       
[marcus.praetorius]:marcus.praetorius@psy.gu.se    
[boo.johansson]:boo.johansson@psy.gu.se        
[aspiro3]:aspiro3@bu.edu                 
[jweuve]:jweuve@bu.edu                   
[smhofer]:smhofer@uvic.ca  

[meta-analysis]:https://github.com/IALSA/IALSA-2015-Portland/raw/master/projects/pulmonary-cognitive/pulmonary-meta-analysis-2017-06-20.xlsx
