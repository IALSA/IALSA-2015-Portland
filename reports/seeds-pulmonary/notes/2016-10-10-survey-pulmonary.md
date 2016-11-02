# Notes on Pulmonary
Date: `r Sys.Date()`  
<!-- For instructions, see http://rmarkdown.rstudio.com/word_document_format.html and http://rmarkdown.rstudio.com/articles_docx.html -->

This report provides an overview for the models in the _pulmonary_ track. 
<!--  Set the working directory to the repository's base directory; this assumes the report is nested inside of two directories.-->


<!-- Set the report-wide options, and point to the external code file. -->


<!-- Load the sources.  Suppress the output when loading sources. --> 


<!-- Load 'sourced' R files.  Suppress the output when loading packages. --> 


<!-- Load any global functions and variables declared in the R file.  Suppress the output. --> 


<!-- Declare any global functions specific to a Rmd output.  Suppress the output. --> 


<!-- Load the datasets.   -->


<!-- Tweak the datasets.   -->



```r
catalog %>% # includes univariate models
  dplyr::distinct(study_name, subgroup, model_type, process_a, process_b) %>%
  nrow()
```

```
[1] 1160
```

```r
cat("After cleaning and processing the following number of bivariate models
    constitute the Portland model pool:")
```

```
After cleaning and processing the following number of bivariate models
    constitute the Portland model pool:
```

```r
catalog_spread %>% # contains only bivariate models
  dplyr::distinct(study_name, subgroup, model_type, process_a, process_b) %>%
  nrow()
```

```
[1] 960
```

```r
cat("Number of submitted models (bivariate only) in each study")
```

```
Number of submitted models (bivariate only) in each study
```

```r
catalog_spread %>%
  dplyr::distinct(study_name, subgroup, model_type, process_a, process_b) %>%
  dplyr::group_by(study_name) %>%
  dplyr::summarize(n_models = n())
```

```
# A tibble: 9 × 2
  study_name n_models
       <chr>    <int>
1        eas      254
2       elsa       18
3        hrs       72
4       ilse       45
5       lasa       18
6        map      298
7      nuage       12
8       octo       89
9      satsa      154
```

```r
cat("ILSE and NuAge do not have a measure of pulmonary function and
     thus were not included into the meta-analysis ")
```

```
ILSE and NuAge do not have a measure of pulmonary function and
     thus were not included into the meta-analysis 
```

```r
catalog_spread %>%
  dplyr::filter(!study_name %in% c("ilse","nuage")) %>%
  dplyr::distinct(study_name, subgroup, model_type, process_a, process_b) %>%
  dplyr::group_by(study_name) %>%
  dplyr::summarize(n_models = n())
```

```
# A tibble: 7 × 2
  study_name n_models
       <chr>    <int>
1        eas      254
2       elsa       18
3        hrs       72
4       lasa       18
5        map      298
6       octo       89
7      satsa      154
```

```r
cat("Breaking down by the physical process in the outcome pair of bivariate model")
```

```
Breaking down by the physical process in the outcome pair of bivariate model
```

```r
catalog_spread %>%
  dplyr::filter(!study_name %in% c("ilse","nuage")) %>%
  dplyr::distinct(study_name, subgroup, model_type, process_a, process_b) %>%
  dplyr::group_by(study_name, process_a) %>%
  dplyr::summarize(n_models = n())
```

```
Source: local data frame [20 x 3]
Groups: study_name [?]

   study_name process_a n_models
        <chr>     <chr>    <int>
1         eas      gait      110
2         eas      grip      109
3         eas       pef       35
4        elsa       fev        4
5        elsa    fev100        4
6        elsa      gait        6
7        elsa      grip        4
8         hrs      gait       24
9         hrs      grip       24
10        hrs       pef       24
11       lasa      gait        6
12       lasa      grip        6
13       lasa       pef        6
14        map       fev      150
15        map      grip      148
16       octo      gait        9
17       octo      grip       38
18       octo       pef       42
19      satsa       fev      102
20      satsa      grip       52
```

```r
cat("Focusing on the pulmonary measure")
```

```
Focusing on the pulmonary measure
```

```r
catalog_spread %>%
  dplyr::filter(!study_name %in% c("ilse","nuage")) %>%
  dplyr::filter(process_a %in% c("pef","fev","fev100")) %>%
  dplyr::distinct(study_name, subgroup, model_type, process_a, process_b) %>%
  dplyr::group_by(study_name, process_a) %>%
  dplyr::summarize(n_models = n())
```

```
Source: local data frame [8 x 3]
Groups: study_name [?]

  study_name process_a n_models
       <chr>     <chr>    <int>
1        eas       pef       35
2       elsa       fev        4
3       elsa    fev100        4
4        hrs       pef       24
5       lasa       pef        6
6        map       fev      150
7       octo       pef       42
8      satsa       fev      102
```

```r
cat("Two of the studies (ELSA and LASA) submitted only `aehplus` type of models.
    The current scripts require at least two model types and stumble on this assymetry.
    Will be corrected soon.
    ")
```

```
Two of the studies (ELSA and LASA) submitted only `aehplus` type of models.
    The current scripts require at least two model types and stumble on this assymetry.
    Will be corrected soon.
    
```

```r
catalog_spread %>% view_options(
  study_name="elsa"
  # ,model_types = c("a","aehplus")
  ,processes_a = c("pef","fev", "fev100")
  # ,process_b = "mmse"
  ,full_id  = T
)
```

```
  study_name subgroup model_type process_a process_b n_models
1       elsa   female    aehplus       fev   word_de        1
2       elsa   female    aehplus       fev   word_im        1
3       elsa   female    aehplus    fev100   word_de        1
4       elsa   female    aehplus    fev100   word_im        1
5       elsa     male    aehplus       fev   word_de        1
6       elsa     male    aehplus       fev   word_im        1
7       elsa     male    aehplus    fev100   word_de        1
8       elsa     male    aehplus    fev100   word_im        1
```

```r
catalog_spread %>% view_options(
  study_name="lasa"
  # ,model_types = c("a","aehplus")
  ,processes_a = c("pef","fev", "fev100")
  # ,process_b = "mmse"
  ,full_id  = T
)
```

```
  study_name subgroup model_type process_a process_b n_models
1       lasa   female    aehplus       pef    letter        1
2       lasa   female    aehplus       pef     raven        1
3       lasa   female    aehplus       pef   word_im        1
4       lasa     male    aehplus       pef    letter        1
5       lasa     male    aehplus       pef     raven        1
6       lasa     male    aehplus       pef   word_im        1
```

```r
cat("Focusing on the pulmonary measure")
```

```
Focusing on the pulmonary measure
```

```r
a <- catalog_spread %>%
  dplyr::filter(!study_name %in% c("ilse","nuage")) %>%
  dplyr::filter(process_a %in% c("pef","fev","fev100")) %>%
  dplyr::distinct(study_name, subgroup, model_type, process_a, process_b) %>%
  dplyr::group_by(study_name, process_a) %>%
  dplyr::summarize(n_models = n())
print(a)
```

```
Source: local data frame [8 x 3]
Groups: study_name [?]

  study_name process_a n_models
       <chr>     <chr>    <int>
1        eas       pef       35
2       elsa       fev        4
3       elsa    fev100        4
4        hrs       pef       24
5       lasa       pef        6
6        map       fev      150
7       octo       pef       42
8      satsa       fev      102
```

```r
sum(a$n_models)
```

```
[1] 367
```

```r
# eas --------
catalog_spread %>% view_options(
  study_name="elsa"
  # ,model_types = c("a","aehplus")
  ,processes_a = c("pef","fev", "fev100")
  # ,process_b = "mmse"
  ,full_id  = T
)
```

```
  study_name subgroup model_type process_a process_b n_models
1       elsa   female    aehplus       fev   word_de        1
2       elsa   female    aehplus       fev   word_im        1
3       elsa   female    aehplus    fev100   word_de        1
4       elsa   female    aehplus    fev100   word_im        1
5       elsa     male    aehplus       fev   word_de        1
6       elsa     male    aehplus       fev   word_im        1
7       elsa     male    aehplus    fev100   word_de        1
8       elsa     male    aehplus    fev100   word_im        1
```


