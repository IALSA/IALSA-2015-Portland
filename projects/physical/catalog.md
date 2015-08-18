We start with a declaration of the physical outcomes each study has to contribute.

Table 1a. Studies and Outcomes

| STUDIES & outcomes  |   |   |   |   |   |   |  
|---|---|---|---|---|---|---| 
|ELSA   | grip | NA | fev  |    |   |   | 
|HRS    | grip  | gait  |   | pek  |   |   | 
|OCTO   | grip  | gait  |   | pek  |   |   | 
|RADC   | grip  | gait  | fev  |   |   |   | 


Table 1b.  

| outcomes & STUDIES  |   |   |   |   |
|---|---|---|---|---|
|grip   | ELSA | HRS | OCTO | RADC |
|gait   |   | HRS | OCTO | RADC | 
|fev   |  ELSA |  |  | RADC |
|pek   |   | HRS | OCTO |  |


If we consider all possible pairings of physical outcomes and match them to the availability of the variables in the study we'll get table 2. 

Table 2a.  Studies and Pairs

| STUDIES & pairs  |   |   |   |   |   |   |  
|---|---|---|---|---|---|---| 
|ELSA   |   |grip_fev  |   |   |   | |  
|HRS    | grip_gait  |  | grip_pek  |   |gait_pek   | | 
|OCTO   | grip_gait  |  | grip_pek  |   |gait_pek   | | 
|RADC   | grip_gait  |grip_fev  |   |gait_fev   |   | | 


Table 2b. 

|pairs & STUDIES   |   |   |   |   |
|---|---|---|---|---|
| grip_gait   |   | HRS  | OCTO   | RADC  |
| grip_fev  | ELSA   |   |   | RADC  |
| grip_pek  |   | HRS  | OCTO|   |
| gait_fev  |   |   |   | RADC   |
| gait_pek  |   |HRS  | OCTO  |   |
| fev_pek  |   |   |   |   |


Table 3a. Matrix of Studies and Pairs 


Table 3b.  

| outcomes & STUDIES  |grip   |gait   |fev   |pek   |
|---|---|---|---|---|
|grip   | * |HRS, OCTO, RADC   | ELSA, RADC   |HRS, OCTO   |
|gait   |   | *  |RADC   | HRS, OCTO   |
|fev   |   |   | * | -  |
|pek   |   |   |   | * |





This table suggest the following roadmap for running bivariate models.
