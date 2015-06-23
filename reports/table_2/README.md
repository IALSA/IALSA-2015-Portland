Project "Table 2"
---

## Overview
"Table 2" refers to the collection of statistical devices designed to explore the correlations between random intercepts (I), slopes (S), and residuals (R) from bivariate models of concomitant decline in physical and cognitive performance.

### Current objectives  
 - [ ] ktable of ISR and their confidence intervals. 
     - X: 
 

## General Model Specification
  Summarizes correlation estimates between intercepts, slopes, and residuals of cognitive and physical measures in bivariate growth models, specified as  
![bivariate model specification](../../libs/images/general_model_specification.png)  
where    
 *<sub>o</sub> y<sub>t</sub><sub>i</sub>* - is score on the outcome *o* for the individual *i* at time *t*    
 
  &beta;<sub>0</sub>  - is  
  &beta;<sub>1</sub>  - is  
  
  &gamma;<sub>00</sub> - is  
  &gamma;<sub>10</sub> - is  

  &#915;<sub>0*k*</sub> - is   
  &#915;<sub>1*k*</sub> - is 
  
  <sub>o</sub> *u*<sub>0</sub> - is variance of random intercept of the outcome *o*  
  <sub>o</sub> *u*<sub>1</sub> - is    
  
  
  *i* - individual    
  *t* - timepoint   
  *o* - outcome   
  *p* - physical measure used in estimation  
  *c* - cognitive measure used in estimation  
  
## Reporting Mixed Effects

Random and Fixed effects of each model can be organized into the following table  

![covariance structure](../../libs/images/specification_covariance_structure.png)

in which    

 - *&tau;* - variances and covariances bewteen random terms of the bivariate models 
 - *&gamma;<sub>00</sub>* -  common intercept     
 - *&gamma;<sub>10</sub>* -  common slope      
 - *&gamma;<sub>01...k</sub>* - effects of the covariates the common intercept      
 - *&gamma;<sub>11...k</sub>* - effects of the covariates the common slope      

In order to ease the comparison acress studies, we will convert these covariances into correlation   

![correlation structure](../../libs/images/specification_correlation_structure.png)




<!-- for greek letter codes see http://www.scriptingmaster.com/html/inserting-greek-letters.asp -->
