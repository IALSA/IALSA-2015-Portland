Project description

Note: The features of the workflow will be organized in accordance to the  [github labels](https://github.com/IALSA/IALSA-2015-Portland/blob/master/projects/github_labels.md) ( see github [label panel](https://github.com/IALSA/IALSA-2015-Portland/labels)) 

## Resources for the **physical** project

Table 1 identifies physical outcomes that were used in statistical models by each participating study.

Table 1. Phystical outcomes in participating studies 

| STUDIES & outcomes  |   |   |   |   |   |   |  
|---|---|---|---|---|---|---| 
|ELSA   | grip |  | fev  |    |   |   | 
|HRS    | grip  | gait  |   | pek  |   |   | 
|OCTO   | grip  | gait  |   | pek  |   |   | 
|RADC   | grip  | gait  | fev  |   |   |   | 


Note: Should we allow studies in with only 2 outcome? Is it still worth it?




If we consider all possible pairings of physical outcomes and match them to the availability of the variables in the study we'll get table 2. 

Table 2. Availability of outcome pairs across participating studies

|pairs & STUDIES   |   |   |   |   |
|---|---|---|---|---|
| grip-gait   |   | HRS  | OCTO   | RADC  |
| grip-fev  | ELSA   |   |   | RADC  |
| grip-pek  |   | HRS  | OCTO|   |
| gait-fev  |   |   |   | RADC   |
| gait-pek  |   |HRS  | OCTO  |   |
| fev-pek  |   |   |   |   |


Table 3. Re-expression of Table 2 in a matrix form 

| outcomes & STUDIES  |grip   |gait   |fev   |pek   |
|---|---|---|---|---|
|grip   | * |HRS, OCTO, RADC   | ELSA, RADC   |HRS, OCTO   |
|gait   |   | *  |RADC   | HRS, OCTO   |
|fev   |   |   | * | -  |
|pek   |   |   |   | * |





This table suggest the following roadmap for running bivariate models.
