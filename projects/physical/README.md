Project description

Note: The features of the workflow will be organized in accordance to the  [github labels](https://github.com/IALSA/IALSA-2015-Portland/blob/master/projects/github_labels.md) ( see github [label panel](https://github.com/IALSA/IALSA-2015-Portland/labels)) 

## Resources for the **physical** project


Table 1. Phystical outcomes in participating studies 

| STUDIES & outcomes  |   |   |   |   |   |   |  
|---|---|---|---|---|---|---| 
|ELSA   | grip |  | fev  |    |   |   | 
|HRS    | grip  | gait  |   | pek  |   |   | 
|OCTO   | grip  | gait  |   | pek  |   |   | 
|RADC   | grip  | gait  | fev  |   |   |   | 


Table 2.  

| outcomes & STUDIES  |   |   |   |   |
|---|---|---|---|---|
|grip   | ELSA | HRS | OCTO | RADC |
|gait   |   | HRS | OCTO | RADC | 
|fev   |  ELSA |  |  | RADC |
|pek   |   | HRS | OCTO |  |


If we consider all possible pairings of physical outcomes and match them to the availability of the variables in the study we'll get table 2. 

Table 3. Availability of outcome pairs across participating studies

|pairs & STUDIES   |   |   |   |   |
|---|---|---|---|---|
| grip_gait   |   | HRS  | OCTO   | RADC  |
| grip_fev  | ELSA   |   |   | RADC  |
| grip_pek  |   | HRS  | OCTO|   |
| gait_fev  |   |   |   | RADC   |
| gait_pek  |   |HRS  | OCTO  |   |
| fev_pek  |   |   |   |   |

| STUDIES & pairs  |   |   |   |   |   |   |  
|---|---|---|---|---|---|---| 
|ELSA   |   |grip_fev  |   |   |   | |  
|HRS    | grip_gait  |  | grip_pek  |   |gait_pek   | | 
|OCTO   | grip_gait  |  | grip_pek  |   |gait_pek   | | 
|RADC   | grip_gait  |grip_fev  |   |gait_fev   |   |fev_pek | 



Table 3. Re-expression of Table 2 in a matrix form 

| outcomes & STUDIES  |grip   |gait   |fev   |pek   |
|---|---|---|---|---|
|grip   | * |HRS, OCTO, RADC   | ELSA, RADC   |HRS, OCTO   |
|gait   |   | *  |RADC   | HRS, OCTO   |
|fev   |   |   | * | -  |
|pek   |   |   |   | * |





This table suggest the following roadmap for running bivariate models.
