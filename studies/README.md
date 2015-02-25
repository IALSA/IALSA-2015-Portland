How to work with this GitHub folder
---

1. Select the folder that matches your study

2. Create a folder named with your last name inside  **unshared** , all lower case letters. The contents of this folder will not be uploaded.

3. Name your models to fit the common naming convention. This is a key step in organizing aggregation of model results across studies. 
![logl](../libs/images/model_naming_convention.png)

3. After fitting the models , place the output files in the root folder of your study (eg. /octo, /radc, ect). Only the models that have legal names and that have been placed in the proper folder will be added to the pan-study analysis.

## Covariate set

- _empty : no covariate included into the model
- _age : age is entered as a baseline measure, second level
- _ae : age + education
- _aeh : age + education + height
- _aehplus: age + education + height + diabetes + smoking history + cardiovascular
- _full : all covariate availible in the study (will be different across studies)


## LGM in Mplus

A [syntax primer](../libs/materials/LGM_Mplus_primer.pdf) offers step-by-step development of univariate models.


Graciela Muniz's presentation covers the [syntax for bivariate](../libs/materials/Mplus_muniz.pdf) models and some naming convention used in the current project.

