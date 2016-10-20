
The workflow of table production depends on the following objects:

1. `catalog` - contains model solutions extracted from Mplus outputs. One row = one model. 
2. `catalog_spread` - transformed `catalog` in which one model is stored as multiple rows (according to the number of extracted parameters) and four columns : `est`, `se`, `wald`, and `pval`
3. `stencil` - a `.csv` template that selects, orders, and assigns labels to the parameters used in reporting model solutions.

# VIEWING functions

### `view_options()`

To view the list of models submitted by a study into the model collective, use the function `view_options()`. 

```r
view_options( 
   d           = catalog_spread                       # transformed catalog
  ,study_name  ="elsa"                                # name of study
  ,model_types = c("a","ae","aeh","aehplus", "full")  # types of model (covariate set)
  ,processes_a = c("fev","fev100","pef")              # names of process 1
  ,processes_b = c("word_de", "word_im")              # names of process 2
  ,full_id     = TRUE
) 
```
Only the first argument (`study_name = `) is mandatory. If arguments `model_types`, `processes_a`, and `processes_b` are not specified, the output will show all possible values. This feature can be used to narrow  on the desired set of models by incrementally restricting the search. Alternatively, you can add more studies to the `study_name = ` argument to view what overlaps exist across studies. 


### `view_one_model()`

To view the solution of a single model use the function `veiw_one_model()`. 
```r
view_one_model(
  d           = catalog_spread,  # transformed catalog
  study_name_ = "elsa",    # name of study
  subgroup_   = "female",  # gender: male or female
  model_type_ = "aehplus", # type of model (covariate set)
  process_a_  = "fev",     # single measure of process 1
  process_b_  = "word_de", # single measure of process 2
  pretty_     = FALSE      # formatting option
)
```
Note that it assumes a `stencil` object is loaded. Change (or adjust) `stencil` by editing the source `csv` file in order to change the selected parameters or their labels. The argument `pretty = ` controls whether the values of the reported parameters are printed in separate columns for each index  (`FALSE`)  or combined into a formatted string (`TRUE`). Note that the format of the dense string can be adjusted .


### `print_coefficients()`

To print the values of a chosen parameters across outcome pairs and model types use `print_coefficients()` function.
```r
print_coefficients(
  d              = catalog         # contains model solutions, row = model
  ,study_name    = "octo"          # name of study
  ,subgroup      = "female"        # gender : male or female
  ,pivot         = "pef"           # fixed; name of process 1
  ,target_names  = c(              # coefficients of interest
    "cr_levels_est"
    # ,"cr_slopes_est"
    # ,"cr_resid_est"
    )
  ,target_labels = c(              # labels for the coefs of interest
    "Correlation of Levels"
    # ,"Correlation of Slopes"
    # ,"Correlation of Residuals"
    )
)
```
Note that the function relies on the `catalog` object, before it is transformed into `catalog_spread`.  The argument `pivot = `specifies the measure of process 1 that you would like to hold constant. Provided the pivot, the function finds all models in which process 1 is `pivot` and retrieves all available model types.  You can request any value stored in the `catalog`, to view options print `names(catalog)`. For the guide to parameter names, review [model specification](https://github.com/IALSA/IALSA-2015-Portland/blob/master/reports/model-specification/README.md).   
Dependencies:  
- `report_short_hand()` - a more basic function used to produce the table
- `report_long_hang()` - a version of `report_short_hand()` for more verbose model identification



# BAKING functions

### `pull_one_model()`

To created a list object with pre-selected model parameters, separated according to their numerical properties use `pull_one_model()` function.  
```r 
ls <- pull_one_model(
   d           = catalog_spread      # transformed catalog
  ,study_name_ = "octo"    # name of study
  ,subgroup_   = "female"  # gender : male or female
  ,model_type_ = "aehplus"# type of model (covariate set)
  ,process_a_  = "pef"    # name of process 1
  ,process_b_ = "block"    # name of process 2
)
lapply(ls, names)
```

This list object will be used by subsequent functions to combine models into tables.
Dependencies:  
- a chosen `stencil` must be loaded
Assembled elements:  
- `$id` - 5 values that uniquely define the model in the collective
- `$coef` -  model coefficienct selected by the chosen `stencil`
- `$corr` - bivariate correlations of levels, slopse, and residuals, computed from covariance and variances in `$coef`
- `$info_1` -  model information expressed and integers (sample size, time points, parameters, ect. May be extended)
- `$info_2` - model information express as continuous number (LL, AIC, BIC, ect., May be extended)

We need to separate `$info_1` and `$info_2` so that we can apply different formatting rules before entering them into the reported table.


### `make_baking_mix_()`

To create a list object, with elements corresponding to models across which you would like to make comparisons use `make_baking_mix_model_type()` or `make_baking_mix_process_a` functions. 
```r
baking_mix <- make_baking_mix_model_type(
  d = catalog_spread
  ,study_name_ = "octo"
  ,subgroup_   = "female"
  ,model_type_ = c("a","ae","aeh","aehplus")
  ,process_a_   = "pef"
  ,process_b_ = "block"
)
lapply(baking_mix, names)


baking_mix <- make_baking_mix_process_a(
  d = catalog_spread 
  ,study_name_ = "octo" 
  ,subgroup_   = "female" 
  ,model_type_ = c("aehplus") 
  ,process_a_   = "pef" 
) 
lapply(baking_mix, names)
```

These functions are similar, and produce the objects of similar structures. 

`make_baking_mix_model_type()` take the model pair specified by the arguments `process_a = ` and `process_b = ` and produces a list object in which each element is the output of the `pull_one_model()` for this outcome pair  and all the model types listed in the `model_type = ` argument.  Each element is names after the corresponding model type. 

Comparatively, `make_baking_mix_process_a()` filters the models of given type (`model_type = ` argument) and returns all models with the first outcome specified in the `process_a = ` argument.  Each element is named after the second outcome in the pair. 

Dependencies:  
- a chosen `stencil` must be loaded
- `pull_one_model()`


### `bake_the_cake()`

To transform a `baking_mix` into a layered object that combines selected group of models use `bake_the_cake()` function.  
```r
cake <- bake_the_cake(
  baking_mix # the output of make_baking_mix_()
)
lapply(cake, names) # inspect the cake
```
Note that the output of the function depends completely on the `baking_mix` you feed into it. It takes the elements of the `baking_mix` list object (types of models or process b names) and assembles an object that groups estimates (`est`), standard errors (`se`) and p-values (`pval`) into separate elements and computes descriptives across models.

Dependencies:  
- `put_stat_frosting()` - internal function that computes descriptives (mean, se, min, max) over group of model parameters. 
Assenbled elements:
- `$id` - list the elements from the `baking_mix` then went into the cake (model types or names of the second process)
- `$est` - estimated parameter value for all components of `$id`
- `$se` - standard error for all components of `$id`
- `$pval` - p-values for all components of `$id`
- `$baking_mix` - the original baking mix for records. 

# SERVING functions

### `slice_the_cake()`

To produce the table of results in which columns correspond to the vector of model comparison (model type or process ) use `slice_the_cake()` function. 

```r
slice <- slice_the_cake(
  cake,                                  # output of bake_the_cake()
  mask_not  = c("a","b","ab","aa","bb"), # process components to keep
  info      = TRUE,                      # include model information section?
  corr      = TRUE,                      # include bivariate correlation section?
  aggregate = TRUE                       # include column of aggregates across models?
)
print(slice)
```
The baked cake contains all the information about the group of models we have selected for comparison in the `baking_mix`.  The slicing function defines what components should be pull out, how they should be organized in a single display, and what formatting options should be applied. 

Note that the aggregate would not always make sense, but will be computed nonetheless to keep the function general. For example, when comparing models across outcome pairs involving the measure of `pef` it make sense to compute the mean of estimates for `pef` across contexts, but it doesn't make sense to aggregate estimates describing different processes in the pairs. The measure `pef` is located in the slot `process_a`, therefore we keep the aggregates for this process by specifying `mask_not = "a"`


### `serve_slice_()`

To streamline the production of tables, use wrapper functions `serve_slice_model_type()` and `serve_slice_process_a()`.

```r 
serve_slice_model_type(
   study_name = "octo"                      # name of study 
  ,subgroup   = "female"                    # gender : male or female 
  ,model_type = c("a","ae","aeh","aehplus") # compare across these models
  ,process_a  = "pef"                       # name of process 1
  ,process_b  = "block"                     # name of process 2
  ,print_config = FALSE                     # should configuration be printed?
  ,mask_not = c("a","b","ab","aa","bb")     # process components to keep
  ,info = TRUE                              # include bivariate correlation section?
  ,corr = TRUE                              # include collumn of aggregates across models?
)
  
serve_slice_process_a(
   study_name = "octo"    # name of study 
  ,subgroup = "female"    # gender : male or female 
  ,model_type = "aehplus" # target model type used in comparisons
  ,process_a = "pef"      # fixed name of process 1
  ,print_config = FALSE   # should configuration be printed?
  ,mask_not = c("a","aa") # process components to keep
  ,info = TRUE            # include bivariate correlation section?
  ,corr = TRUE            # include collumn of aggregates across models?
)
```

Dependencies: 
- `catalog_spread` needs to be loaded
- `make_baking_mix_()`
- `bake_the_cake()`
- `slice_the_cake()`


### `print_outcome_pairs()`

To produce all tables for all outcome pairs in a given study use `print_outcome_pairs()` function.

```r 
print_outcome_pairs(
   d = catalog_spread # transformed catalog
  ,study               = "octo"                      # name of study
  ,gender              = "female"                    # gender : male or female
  ,outcome             = "pef"                       # fixed name of process 1
  ,model_type_standard = "aehplus"                   # compare this type
  ,model_type_set      = c("a","ae","aeh","aehplus") # compare across these models
)
```
Dependencies:  
- 
- `serve_slice_process_a()` 
- `serve_slice_model_type()`


Note that as a higher-order wrapper this function inherits the defaults of the `serve_slice_()` functions, namely in the `info = TRUE` and `corr = TRUE` arguments.  It is, perhaps, more appropriate to place this function in the source file for the `.Rmd`, rather than in a stand-alone compendium of functions. 



