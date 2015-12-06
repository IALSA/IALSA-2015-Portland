This folder contains the most current (5-Dec-2015) version of extraction scripts

## `extraction_function.R`
- the main file  
- contains definitions of all extraction functions

## `group_variables.R`
- support file  
- contains definitions of objects with names of variables for easier handling in sourcing scripts
- gives the total scope of extracted indices

## `get_gh5.R`
- optional file  
- processes .gh5 filed if provided  
- .gh5 files contain observed and modeled datapoints
- very useful to have


## `collect_physical.R` 
- collect models in the track **Physical-Physical**, aka physical  
- here you provide links for a folder from each study where the models of the track are located
- the script culminates with production of a dataset `./projects/physical/outputs/physical.rds` containing estimation results of all models in the physical track.  
- every row of this data set is a model  

## `collect_physical-cognitive.R`
- same as `collect_physical.R` but for a different track

## `collect_all.R`
- same as `collect_physical.R` but for all models in the collective

