The table reports the model of type 'aehplus', which include covariates *a*ge, *e*ducation, *h*eight, and binary covariates smoking history, cardiovascular disease, and diabetes. 

The table reports relationships between levels, slopes, and residuals between the two processes in a given pair of outcomes. For each index, we report the raw covariances produced by the Mplus estimation routine and the correlations with confidence intevals, computed from the estimated (co)variances using Fisher's transform.

Raw covariance are reported in the form : ` est(se) pval`     
where      
- `est` is the covariance estimate on the original metric   
- `se` is the standard error on the original metric  
- `pval` is the p-value associated with the raw covariance  

Computed correlations are reported in the form: ` est(low, high) star`   
where      
- `est` is the correlation coefficient computed from raw (co)variances using Fisher transfrom   
- `low` and `high` are the 95% confidence intervals associated with the computed correlations  
- `star` is significance indicator associated with corresponding covariance estimate, with  `.`, `*`, `**`, and `***` indicating significance at `.10`, `.05`, `.01`, and `.001` alpha levels, respectively

Note: cases in which restricted (co)variances or insufficient decimals prevent the computation of correlations are marked by `---`