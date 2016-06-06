[edit me](https://github.com/IALSA/IALSA-2015-Portland/edit/master/data/shared/README.md)   

## Data sets

* [`parsed-results-raw.csv`](https://github.com/IALSA/IALSA-2015-Portland/blob/master/data/shared/parsed-results-raw.csv) - raw model solutions, extracted and organized: one row = one model. Produced by [`0-ellis-island.R`](https://github.com/IALSA/IALSA-2015-Portland/blob/master/manipulation/0-ellis-island.R). 

* [`parsed-results-mapped.csv`]() - processed model solutions, re-named and re-classified. Organized according to the current domain map. Produced by [`1-rename-classify.R`]()

* [`parsed-results-computed_ci.csv`]() - confidence intervals for correlations between BISR are computed post-estimation in Mplus, using Fisher transform. Produced by [`2-compute-bisr-ci.R`]()