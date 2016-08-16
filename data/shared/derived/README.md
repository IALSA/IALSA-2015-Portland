[edit me](https://github.com/IALSA/IALSA-2015-Portland/edit/master/data/shared/README.md)   

## Data sets

* [`parsed-results-raw.csv`](https://github.com/IALSA/IALSA-2015-Portland/blob/master/data/shared/parsed-results-raw.csv) - raw model solutions, extracted and organized: one row = one model. Produced by [`0-ellis-island.R`](https://github.com/IALSA/IALSA-2015-Portland/blob/master/manipulation/0-ellis-island.R). 

* [`parsed-results-mapped.csv`](https://github.com/IALSA/IALSA-2015-Portland/blob/master/data/shared/parsed-results-mapped.csv) - processed model solutions, re-named and re-classified. Organized according to the current domain map. Produced by [`1-rename-classify.R`](https://github.com/IALSA/IALSA-2015-Portland/blob/master/manipulation/1-rename-classify.R). Has the same contents as `parsed-results.rds`.

* [`parsed-results-computed_ci.csv`](https://github.com/IALSA/IALSA-2015-Portland/blob/master/data/shared/parsed-results-computed_ci.csv) - confidence intervals for correlations between BISR are computed post-estimation in Mplus, using Fisher transform. Produced by [`2-compute-bisr-ci.R`](https://github.com/IALSA/IALSA-2015-Portland/blob/master/manipulation/2-compute-bisr-ci.R) Same contents as `parsed-results-computed_ci.rds`


## Data objects

* [`parsed-results.rds`]() - parsed and cleaned catalog with all model solutions.  Produced by [`1-rename-classify.R`](https://github.com/IALSA/IALSA-2015-Portland/blob/master/manipulation/1-rename-classify.R). Has the same contents as `parsed-results-mapped.csv`.

* [`parsed-results-computed_vs_estimated_ci.xlsx`]()  - shows the differnce between two methods of computing correlations between components of bivariate growth curve model: via Mplus during estimation phase, or in R after the estimation. 
