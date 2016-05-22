The following scripts implement extraction (parsing) of model results and organize them into a dataset for secondary analysis:

- (0) [`0-ellis-island.R`](./manipulation/0-ellis-island.R) - reaches into individual model outputs and extracts model solution and other relevant information.
- (1) [`1-rename-classify.R`](./manipulation/1-rename-classify.R) - harmonized the names of the variables across studies. 
- (2) [`2-transformations-compute-ci.R`](./manipulation/2-transformations-compute-ci.R) - computes correlations (and confidence intervals) among intercepts, slopes, and residuals (optional, some models compute these parameters during estimation)


#### Governer
- [`manipulation-governor.R`](/manipulation/manipulation-governor.R) - executues the above scripts
