## Legend

- `Cov(Slopes)` = raw covariance  
- `Corr(Slopes)Est` = correlation , ESTimated in Mplus  
- `CI(Slopes)Est` = Confidence intervals estimated in Mplus  
- `Corr(Slopes)Comp` = correlation, computed outside of Mplus  

Note: cases in which restricted (co)variances or insufficient decimals prevent the computation of correlations are marked by `---`

Raw covariance and estimated correlations are reported in the form : ` est(se) pval`     
where      
- `est` is the covariance estimate on the original metric   
- `se` is the standard error on the original metric  
- `pval` is the p-value associated with the raw covariance  
- `star` is significance indicator associated with corresponding covariance estimate, with  `.`, `*`, `**`, and `***` indicating significance at `.10`, `.05`, `.01`, and `.001` alpha levels, respectively

Confidence intervals for estimated correlations are reported in the form: `(low,high)`
where
- `low` - bottom boundry of the 95% confidence interval
- `high` - top boundry of the 95% confidence interval

Computed correlations are reported in the form: ` est(low, high)`   
where      
- `est` is the correlation coefficient computed from raw (co)variances using Fisher transfrom   
- `low` and `high` are the 95% confidence intervals associated with the computed correlations  
