Model Specification
---
Bivariate linear growth curve model used by the Portland Collective as the fulcrum of coordination has the following specification
![bivariate model specification](../../libs/images/general_model_specification.png)    
where    
 *y<sub>t</sub><sub>i</sub>* - is score on the outcome *o* for the individual *i* at time *t*    
 
  &beta;<sub>0</sub>  - is intercept of the outcome *o*  
  &beta;<sub>1</sub>  - is rate of change of the outcome *o* 
  
  &gamma;<sub>00</sub> - is the intercept (grand mean when all predictors are 0)  
  &gamma;<sub>10</sub> - is the slope (rate of change over time when all predictors are 0)

  &#915;<sub>0*k*</sub> - is the vector of weights for the trajectory intercept regressions on the *k*th set of covariates  
  &#915;<sub>1*k*</sub> - is  the vector of weights for the trajectory slope regressions on the *k*th set of covariates 
  
   *u*<sub>0</sub> - is variance of random intercept of the outcome *o*  
   *u*<sub>1</sub> - is variance of random slope of the outcome *o*   
  
  
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
