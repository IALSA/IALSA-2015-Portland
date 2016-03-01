# Track renaming in IALSA Portland 2015 model collective



<!--  Set the working directory to the repository's base directory; this assumes the report is nested inside of two directories.-->


<!-- Set the report-wide options, and point to the external code file. -->


<!-- Load the sources.  Suppress the output when loading sources. --> 


<!-- Load 'sourced' R files.  Suppress the output when loading packages. --> 


<!-- Load any Global functions and variables declared in the R file.  Suppress the output. --> 


<!-- Declare any global functions specific to a Rmd output.  Suppress the output. --> 


<!-- Load the datasets.   -->
Load the data from the rawest source.

```r
# ds1 <- readRDS('./data/shared/ds0.rds')
ds1 <- read.csv('./data/shared/results_all.csv')
# ds <- ds1 %>% dplyr::filter(study_name=="satsa")
ds <- ds1 %>% dplyr::arrange_("cognitive_measure")
# ds <- ds1[ds1$study_name=="eas",]
head(ds[c("cognitive_construct","cognitive_measure","output_file")])
```

```
  cognitive_construct cognitive_measure                                         output_file
1                  NA         knowledge b1_female_ae_pulmonary_ knowledge_pek_waisvocab.out
2                  NA             block                    b1_female_aehplus_gait_block.out
3                  NA             block                    b1_female_aehplus_grip_block.out
4                  NA             block                     b1_female_aehplus_pef_block.out
5                  NA             block                      b1_male_aehplus_gait_block.out
6                  NA             block                      b1_male_aehplus_grip_block.out
```

```r
tail(ds[c("cognitive_construct","cognitive_measure","output_file")])
```

```
     cognitive_construct cognitive_measure                                                output_file
1466                  NA      visuospatial b1_female_aehplus_pulmonary_visuospatial_fev_rotations.out
1467                  NA      visuospatial         b1_male_0_pulmonary_visuospatial_fev_rotations.out
1468                  NA      visuospatial         b1_male_a_pulmonary_visuospatial_fev_rotations.out
1469                  NA      visuospatial        b1_male_ae_pulmonary_visuospatial_fev_rotations.out
1470                  NA      visuospatial       b1_male_aeh_pulmonary_visuospatial_fev_rotations.out
1471                  NA      visuospatial   b1_male_aehplus_pulmonary_visuospatial_fev_rotations.out
```

```r
nrow(ds)
```

```
[1] 1471
```
Each row is a model.
<!-- Tweak the datasets.   -->




Now I will throw out the models which were named illegaly, that is did not contain exactly 7 components.

```r
# desired_subpart_count <- 7L # necessary number of componets in legal filename
# ds$model_name <- gsub(pattern=".out",replacement="",ds$output_file) # remove .out ending
# subparts <- strsplit(ds$model_name,"_") # break up each  model_name, store in a list
# subpart_count <- sapply(subparts, length) # count compents in each element of the list
# is_valid <- (subpart_count==desired_subpart_count) # create logical vector
# length(ds$output_file[!is_valid]) # that many models with omitted elements in the name
#
# # Define what models have invalid names and print them
# if(sum(!is_valid)>0){ print(ds$output_file[!is_valid])}else{
#   cat("All your models were named properly")
# }
# ds <- ds[is_valid,] # keep only model the valid names
nrow(ds) # how many models we ended up with.
```

```
[1] 1471
```

To simplify editing of the names, we'll convert them to lowercase

```r
# ds$physical_construct <- tolower(stringr::str_trim(ds$physical_construct))
ds$physical_measure <- tolower(stringr::str_trim(ds$physical_measure))
# ds$cognitive_construct <- tolower(stringr::str_trim(ds$cognitive_construct))
ds$cognitive_measure <- tolower(stringr::str_trim(ds$cognitive_measure))

names(ds)
```

```
  [1] "software"            "version"             "date"                "time"                "study_name"         
  [6] "model_number"        "subgroup"            "model_type"          "physical_construct"  "cognitive_construct"
 [11] "physical_measure"    "cognitive_measure"   "converged"           "subject_count"       "wave_count"         
 [16] "datapoint_count"     "parameter_count"     "LL"                  "aic"                 "bic"                
 [21] "adj_bic"             "aaic"                "output_file"         "data_file"           "pc_TAU_00_est"      
 [26] "pc_TAU_00_se"        "pc_TAU_00_wald"      "pc_TAU_00_pval"      "pc_TAU_11_est"       "pc_TAU_11_se"       
 [31] "pc_TAU_11_wald"      "pc_TAU_11_pval"      "pc_TAU_01_est"       "pc_TAU_01_se"        "pc_TAU_01_wald"     
 [36] "pc_TAU_01_pval"      "pc_TAU_10_est"       "pc_TAU_10_se"        "pc_TAU_10_wald"      "pc_TAU_10_pval"     
 [41] "pc_SIGMA_est"        "pc_SIGMA_se"         "pc_SIGMA_wald"       "pc_SIGMA_pval"       "pp_TAU_00_est"      
 [46] "pp_TAU_00_se"        "pp_TAU_00_wald"      "pp_TAU_00_pval"      "pp_TAU_11_est"       "pp_TAU_11_se"       
 [51] "pp_TAU_11_wald"      "pp_TAU_11_pval"      "pp_TAU_01_est"       "pp_TAU_01_se"        "pp_TAU_01_wald"     
 [56] "pp_TAU_01_pval"      "p_SIGMA_est"         "p_SIGMA_se"          "p_SIGMA_wald"        "p_SIGMA_pval"       
 [61] "cc_TAU_00_est"       "cc_TAU_00_se"        "cc_TAU_00_wald"      "cc_TAU_00_pval"      "cc_TAU_11_est"      
 [66] "cc_TAU_11_se"        "cc_TAU_11_wald"      "cc_TAU_11_pval"      "cc_TAU_10_est"       "cc_TAU_10_se"       
 [71] "cc_TAU_10_wald"      "cc_TAU_10_pval"      "c_SIGMA_est"         "c_SIGMA_se"          "c_SIGMA_wald"       
 [76] "c_SIGMA_pval"        "p_GAMMA_00_est"      "p_GAMMA_00_se"       "p_GAMMA_00_wald"     "p_GAMMA_00_pval"    
 [81] "p_GAMMA_10_est"      "p_GAMMA_10_se"       "p_GAMMA_10_wald"     "p_GAMMA_10_pval"     "c_GAMMA_00_est"     
 [86] "c_GAMMA_00_se"       "c_GAMMA_00_wald"     "c_GAMMA_00_pval"     "c_GAMMA_10_est"      "c_GAMMA_10_se"      
 [91] "c_GAMMA_10_wald"     "c_GAMMA_10_pval"     "R_IPIC_est"          "R_IPIC_se"           "R_IPIC_wald"        
 [96] "R_IPIC_pval"         "R_SPSC_est"          "R_SPSC_se"           "R_SPSC_wald"         "R_SPSC_pval"        
[101] "R_RES_PC_est"        "R_RES_PC_se"         "R_RES_PC_wald"       "R_RES_PC_pval"       "p_GAMMA_01_est"     
[106] "p_GAMMA_01_se"       "p_GAMMA_01_wald"     "p_GAMMA_01_pval"     "p_GAMMA_11_est"      "p_GAMMA_11_se"      
[111] "p_GAMMA_11_wald"     "p_GAMMA_11_pval"     "c_GAMMA_01_est"      "c_GAMMA_01_se"       "c_GAMMA_01_wald"    
[116] "c_GAMMA_01_pval"     "c_GAMMA_11_est"      "c_GAMMA_11_se"       "c_GAMMA_11_wald"     "c_GAMMA_11_pval"    
[121] "p_GAMMA_02_est"      "p_GAMMA_02_se"       "p_GAMMA_02_wald"     "p_GAMMA_02_pval"     "p_GAMMA_12_est"     
[126] "p_GAMMA_12_se"       "p_GAMMA_12_wald"     "p_GAMMA_12_pval"     "c_GAMMA_02_est"      "c_GAMMA_02_se"      
[131] "c_GAMMA_02_wald"     "c_GAMMA_02_pval"     "c_GAMMA_12_est"      "c_GAMMA_12_se"       "c_GAMMA_12_wald"    
[136] "c_GAMMA_12_pval"     "p_GAMMA_03_est"      "p_GAMMA_03_se"       "p_GAMMA_03_wald"     "p_GAMMA_03_pval"    
[141] "p_GAMMA_13_est"      "p_GAMMA_13_se"       "p_GAMMA_13_wald"     "p_GAMMA_13_pval"     "c_GAMMA_03_est"     
[146] "c_GAMMA_03_se"       "c_GAMMA_03_wald"     "c_GAMMA_03_pval"     "c_GAMMA_13_est"      "c_GAMMA_13_se"      
[151] "c_GAMMA_13_wald"     "c_GAMMA_13_pval"     "p_GAMMA_04_est"      "p_GAMMA_04_se"       "p_GAMMA_04_wald"    
[156] "p_GAMMA_04_pval"     "p_GAMMA_14_est"      "p_GAMMA_14_se"       "p_GAMMA_14_wald"     "p_GAMMA_14_pval"    
[161] "c_GAMMA_04_est"      "c_GAMMA_04_se"       "c_GAMMA_04_wald"     "c_GAMMA_04_pval"     "c_GAMMA_14_est"     
[166] "c_GAMMA_14_se"       "c_GAMMA_14_wald"     "c_GAMMA_14_pval"     "p_GAMMA_05_est"      "p_GAMMA_05_se"      
[171] "p_GAMMA_05_wald"     "p_GAMMA_05_pval"     "p_GAMMA_15_est"      "p_GAMMA_15_se"       "p_GAMMA_15_wald"    
[176] "p_GAMMA_15_pval"     "c_GAMMA_05_est"      "c_GAMMA_05_se"       "c_GAMMA_05_wald"     "c_GAMMA_05_pval"    
[181] "c_GAMMA_15_est"      "c_GAMMA_15_se"       "c_GAMMA_15_wald"     "c_GAMMA_15_pval"     "p_GAMMA_06_est"     
[186] "p_GAMMA_06_se"       "p_GAMMA_06_wald"     "p_GAMMA_06_pval"     "p_GAMMA_16_est"      "p_GAMMA_16_se"      
[191] "p_GAMMA_16_wald"     "p_GAMMA_16_pval"     "c_GAMMA_06_est"      "c_GAMMA_06_se"       "c_GAMMA_06_wald"    
[196] "c_GAMMA_06_pval"     "c_GAMMA_16_est"      "c_GAMMA_16_se"       "c_GAMMA_16_wald"     "c_GAMMA_16_pval"    
[201] "trust_all"           "mistrust"            "has_converged"       "covar_covered"      
```

```r
# t <- table(ds$physical_construct, ds$cognitive_construct);t[t==0]<-".";t
```

## Spelling mistakes
Now we will correct for what seemed to us were benign spelling issues. We'll keep the order from the model naming convention
![naming convention](../../libs/images/model_naming_convention.png)

### Model number

```r
t <- table(ds$model_number, ds$study_name);t[t==0]<-".";t
```

```
    
     eas elsa hrs ilse lasa nuage octo radc satsa
  b1 371 18   76  47   18   12    206  302  162  
  u0 4   .    .   4    .    10    .    .    .    
  u1 20  .    .   6    .    36    .    149  .    
  u2 30  .    .   .    .    .     .    .    .    
```
No obvious typos were detected.

### Subgroup

```r
t <- table(ds$subgroup, ds$study_name);t[t==0]<-".";t
```

```
        
         eas elsa hrs ilse lasa nuage octo radc satsa
  female 214 9    38  29   9    29    103  225  81   
  male   211 9    38  28   9    29    103  226  81   
```
No obvious typos were detected.

### Model type

```r
t <- table(ds$model_type, ds$study_name);t[t==0]<-".";t
```

```
         
          eas elsa hrs ilse lasa nuage octo radc satsa
  0       .   .    .   .    .    .     .    .    20   
  a       .   .    .   .    .    10    .    113  10   
  ae      85  .    .   .    .    .     .    109  34   
  aeh     84  .    24  14   .    16    72   116  34   
  aehplus 84  18   28  25   18   16    58   113  40   
  age     82  .    24  14   .    6     72   .    24   
  aheplus 1   .    .   .    .    .     .    .    .    
  empty   4   .    .   4    .    10    .    .    .    
  full    85  .    .   .    .    .     4    .    .    
```
obvious typo "aheplus" was detected.  

#### Correct model type


```r
ds[ds$model_type %in% c("aheplus", "aeplus") ,"model_type"] <- "aehplus"
ds[ds$model_type=="age","model_type"] <- "a" # rename for sorting/consistency purposes
ds[ds$model_type=="empty","model_type"] <- "0"
t <- table(ds$model_type, ds$study_name);t[t==0]<-".";t
```

```
         
          eas elsa hrs ilse lasa nuage octo radc satsa
  0       4   .    .   4    .    10    .    .    20   
  a       82  .    24  14   .    16    72   113  34   
  ae      85  .    .   .    .    .     .    109  34   
  aeh     84  .    24  14   .    16    72   116  34   
  aehplus 85  18   28  25   18   16    58   113  40   
  age     .   .    .   .    .    .     .    .    .    
  aheplus .   .    .   .    .    .     .    .    .    
  empty   .   .    .   .    .    .     .    .    .    
  full    85  .    .   .    .    .     4    .    .    
```

```r
# we also remove "aeplus" for now, while Lewina is reruning models with data unadjusted for height
ds <- ds %>% dplyr::filter(!(model_type %in% c("aeplus")))
# ds <- ds[ds$model_type %in% c("aeplus","aheplus","age","empty"),]
```
#### QUESTIONS 
 1. Is "aeplus" a typo or particular model?  

### Physical domain

```r
# t <- table(ds$physical_construct, ds$study_name);t[t==0]<-".";t
```

#### Correct Physical domain


```r
# # rename obvious typo
# ds[ds$physical_construct %in% c("pumonary"),"physical_construct"] <- "pulmonary"
# # Rename the absense of physical construct
# ds[ds$physical_construct %in% c("nophys", "nophysspec"),"physical_construct"] <- "Univar"
# # inspect new names
# t <- table(ds$physical_construct, ds$study_name);t[t==0]<-".";t
#
```

#### QUESTIONS 

### Physical measure

```r
t <- table(ds$physical_measure, ds$study_name);t[t==0]<-".";t
```

```
           
            eas elsa hrs ilse lasa nuage octo radc satsa
  chair     .   .    .   .    .    8     .    .    .    
  fev       .   4    .   .    .    .     .    .    .    
  fev100    .   4    .   .    .    .     .    .    .    
  flamingo  .   .    .   .    .    8     .    .    .    
  gait      .   6    .   .    6    .     10   .    .    
  grip      .   4    .   .    6    .     52   .    .    
  hand      .   .    2   .    .    .     .    .    .    
  muscle    131 .    24  14   .    20    44   149  52   
  nophys    .   .    .   .    .    6     .    149  .    
  peak      .   .    2   .    .    .     .    .    .    
  pef       .   .    .   .    6    .     10   .    .    
  pulmonary 172 .    24  .    .    .     90   153  109  
  pulomnary 2   .    .   .    .    .     .    .    .    
  pumonary  .   .    .   .    .    .     .    .    1    
  tug       .   .    .   43   .    8     .    .    .    
  walking   120 .    24  .    .    8     .    .    .    
```

#### Correct Physical measure


```r
# rename obvious type
ds[ds$physical_measure %in% c("fevc", "fev1", "fvc", "fev100") ,"physical_measure"] <- "fev"
## iN ILSE, look up philipp about tug
ds[(ds$physical_measure == "nophysspec" | ds$physical_measure == "nophyscog")  & ds$physical_construct == "tug","physical_measure"] <- "tug"
t <- table(ds$physical_measure, ds$study_name);t[t==0]<-".";t
```

```
           
            eas elsa hrs ilse lasa nuage octo radc satsa
  chair     .   .    .   .    .    8     .    .    .    
  fev       .   8    .   .    .    .     .    .    .    
  flamingo  .   .    .   .    .    8     .    .    .    
  gait      .   6    .   .    6    .     10   .    .    
  grip      .   4    .   .    6    .     52   .    .    
  hand      .   .    2   .    .    .     .    .    .    
  muscle    131 .    24  14   .    20    44   149  52   
  nophys    .   .    .   .    .    6     .    149  .    
  peak      .   .    2   .    .    .     .    .    .    
  pef       .   .    .   .    6    .     10   .    .    
  pulmonary 172 .    24  .    .    .     90   153  109  
  pulomnary 2   .    .   .    .    .     .    .    .    
  pumonary  .   .    .   .    .    .     .    .    1    
  tug       .   .    .   43   .    8     .    .    .    
  walking   120 .    24  .    .    8     .    .    .    
```

```r
# rename the absense of physical measure
ds[ds$physical_measure %in% c("nophysspec","nophsyspec","nophyscog", "nophyspec", "nophyssec" ), "physical_measure"] <- "univar"
# collapse a category
ds[ds$physical_measure == "hand","physical_measure"] <- "grip"
# rename suspected misspelling
ds[ds$physical_measure %in% c("peak"),"physical_measure"] <- "pef"
ds[ds$physical_measure %in% c("pumonary","pulomnary"),"physical_measure"] <- "pulmonary"
t <- table(ds$physical_measure, ds$study_name);t[t==0]<-".";t
```

```
           
            eas elsa hrs ilse lasa nuage octo radc satsa
  chair     .   .    .   .    .    8     .    .    .    
  fev       .   8    .   .    .    .     .    .    .    
  flamingo  .   .    .   .    .    8     .    .    .    
  gait      .   6    .   .    6    .     10   .    .    
  grip      .   4    2   .    6    .     52   .    .    
  muscle    131 .    24  14   .    20    44   149  52   
  nophys    .   .    .   .    .    6     .    149  .    
  pef       .   .    2   .    6    .     10   .    .    
  pulmonary 174 .    24  .    .    .     90   153  110  
  tug       .   .    .   43   .    8     .    .    .    
  walking   120 .    24  .    .    8     .    .    .    
```

```r
# inspect new names
t <- table(ds$physical_measure, ds$study_name);t[t==0]<-".";t
```

```
           
            eas elsa hrs ilse lasa nuage octo radc satsa
  chair     .   .    .   .    .    8     .    .    .    
  fev       .   8    .   .    .    .     .    .    .    
  flamingo  .   .    .   .    .    8     .    .    .    
  gait      .   6    .   .    6    .     10   .    .    
  grip      .   4    2   .    6    .     52   .    .    
  muscle    131 .    24  14   .    20    44   149  52   
  nophys    .   .    .   .    .    6     .    149  .    
  pef       .   .    2   .    6    .     10   .    .    
  pulmonary 174 .    24  .    .    .     90   153  110  
  tug       .   .    .   43   .    8     .    .    .    
  walking   120 .    24  .    .    8     .    .    .    
```

#### QUESTIONS 

### Cognitive domain

```r
# t <- table(ds$cognitive_construct, ds$study_name);t[t==0]<-".";t
```

#### Correct Cognitive domain


```r
# # rename obvious typos
# ds[ds$cognitive_construct %in% c(" knowledge", "knoledge", "knowlegde"),"cognitive_construct"] <- "knowledge"
# # rename the absense of physical measure
# ds[ds$cognitive_construct %in% c("nocog", "nocogspec"),"cognitive_construct"] <- "Univar"
# # collape categories
# ds[ds$cognitive_construct %in% c("memoryattention","cognitive_construct")] <- "memory"
# ds[ds$cognitive_construct %in% c("fluid","fluidreasoning"),"cognitive_construct"] <- "reasoning"
# ds[ds$cognitive_construct %in% c("verbalfluency"),"cognitive_construct"] <- "fluency"
# # inspect new names
# t <- table(ds$cognitive_construct, ds$study_name);t[t==0]<-".";t
```


#### QUESTIONS 

### Cognitive measure

```r
t <- table(ds$cognitive_measure, ds$study_name);t[t==0]<-".";t
```

```
                 
                  eas elsa hrs ilse lasa nuage octo radc satsa
  block           .   .    .   .    .    .     20   .    .    
  codingtask      .   .    .   .    6    .     .    .    .    
  delayedrecall   .   8    .   .    .    .     .    .    .    
  digitbackward   .   .    .   .    .    .     18   .    .    
  digitforward    .   .    .   .    .    .     18   .    .    
  digitsymbol     .   .    .   .    .    .     18   .    .    
  executive       29  .    .   .    .    .     .    50   10   
  figurelogic     .   .    .   .    .    .     12   .    .    
  fluency         87  2    .   7    .    .     .    23   .    
  fluid           10  .    .   .    .    .     .    .    .    
  global          20  .    .   .    .    18    8    .    16   
  immediaterecall .   8    4   .    6    .     .    .    .    
  knowledge       54  .    .   8    .    .     16   23   54   
  language        10  .    .   .    .    .     .    47   .    
  memory          73  .    36  .    .    .     32   188  28   
  mental          10  .    36  .    .    .     .    45   2    
  mirrecall       .   .    .   .    .    .     12   .    .    
  nocog           54  .    .   10   .    40    .    .    .    
  prose           .   .    .   .    .    .     6    .    .    
  proserecall     .   .    .   .    .    .     14   .    .    
  raven           .   .    .   .    6    .     .    .    .    
  reasoning       38  .    .   24   .    .     16   24   12   
  speed           40  .    .   8    .    .     16   47   30   
  visuospatial    .   .    .   .    .    .     .    4    10   
```

#### Correct Cognitive measure


```r
# rename obvious typos
ds[ds$cognitive_measure %in% c("wasivocab"),"cognitive_measure"] <- "waisvocab"
ds[ds$cognitive_measure %in% c("digitsymol"),"cognitive_measure"] <- "digitsymbol"

# rename the absense of physical measure
ds[ds$cognitive_measure %in% c("nocog", "nocogspec"),"cognitive_measure"] <- "univar"

# renaming categories
ds[ds$cognitive_measure %in% c("anal"),"cognitive_measure"] <- "analogies"

# collapse categories
ds[ds$cognitive_measure %in% c("bostonmaning","nostonnaming", "bostonnaming"),"cognitive_measure"] <- "bnt"
#
ds[ds$cognitive_measure %in% c("mmms"),"cognitive_measure"] <- "3ms"
#
ds[ds$cognitive_measure %in% c("blockdesign","waisblockdesign"),"cognitive_measure"] <- "block"
#
ds[ds$cognitive_measure %in% c("delayedwordrecall"),"cognitive_measure"] <- "wordlistdelay"
#
ds[ds$cognitive_measure %in% c("animals","categoryfluency","category"),"cognitive_measure"] <- "categories"
#
ds[ds$cognitive_measure %in% c("figid"),"cognitive_measure"] <- "figureid"
#
ds[ds$cognitive_measure %in% c("information"),"cognitive_measure"] <- "info"
#
ds[ds$cognitive_measure %in% c("immediaterecall"),"cognitive_measure"] <- "wordlistimmed"
#
ds[ds$cognitive_measure %in% c("synon"),"cognitive_measure"] <- "synonyms"
#
ds[ds$cognitive_measure %in% c("fas","verbalfluencytest"),"cognitive_measure"] <- "verbalfluency"
#
ds[ds$cognitive_measure %in% c("digitsymbol","digitsymbolsubstitutiontest","digitsymboltotal"),"cognitive_measure"] <- "symbol"
#
ds[ds$cognitive_measure %in% c("digitbackward","digitspanbackward"),"cognitive_measure"] <- "digitsback"
#
ds[ds$cognitive_measure %in% c("digitsforward","digitspanforward"),"cognitive_measure"] <- "digitsforward"
#
ds[ds$cognitive_measure %in% c("digitspantotal","disigtspantotal"),"cognitive_measure"] <- "digitspan"
#
ds[ds$cognitive_measure %in% c("logicalmemorytotal"),"cognitive_measure"] <- "logicalmemory"

# recategorize
ds[ds$cognitive_measure %in% c("info"),"cognitive_construct"] <- "knowledge"
ds[ds$cognitive_measure %in% c("symbol"),"cognitive_construct"] <- "speed"
ds[ds$cognitive_measure %in% c("bnt"),"cognitive_construct"] <- "language"
ds[ds$cognitive_measure %in% c("categories"),"cognitive_construct"] <- "fluency"
ds[ds$cognitive_measure %in% c("bnt"),"cognitive_construct"] <- "language"
ds[ds$cognitive_measure %in% c("digitsback"),"cognitive_construct"] <- "executive"
ds[ds$cognitive_measure %in% c("figurelogic"),"cognitive_construct"] <- "speed"
ds[ds$cognitive_measure %in% c("trailsb"),"cognitive_construct"] <- "executive"
ds[ds$cognitive_measure %in% c("figureid"),"cognitive_construct"] <- "speed"
ds[ds$cognitive_measure %in% c("3ms"),"cognitive_construct"] <- "mental"
ds[ds$cognitive_measure %in% c("digitsforward"),"cognitive_construct"] <- "memory"
ds[ds$cognitive_measure %in% c("figurelogic"),"cognitive_construct"] <- "reasoning"
ds[ds$cognitive_measure %in% c("mmse"),"cognitive_construct"] <- "mental"
# Pending
ds[ds$cognitive_measure %in% c("patterncomparison"),"cognitive_construct"] <- "speed"


t <- table(ds$cognitive_measure, ds$study_name);t[t==0]<-".";t
```

```
               
                eas elsa hrs ilse lasa nuage octo radc satsa
  block         .   .    .   .    .    .     20   .    .    
  codingtask    .   .    .   .    6    .     .    .    .    
  delayedrecall .   8    .   .    .    .     .    .    .    
  digitforward  .   .    .   .    .    .     18   .    .    
  digitsback    .   .    .   .    .    .     18   .    .    
  executive     29  .    .   .    .    .     .    50   10   
  figurelogic   .   .    .   .    .    .     12   .    .    
  fluency       87  2    .   7    .    .     .    23   .    
  fluid         10  .    .   .    .    .     .    .    .    
  global        20  .    .   .    .    18    8    .    16   
  knowledge     54  .    .   8    .    .     16   23   54   
  language      10  .    .   .    .    .     .    47   .    
  memory        73  .    36  .    .    .     32   188  28   
  mental        10  .    36  .    .    .     .    45   2    
  mirrecall     .   .    .   .    .    .     12   .    .    
  prose         .   .    .   .    .    .     6    .    .    
  proserecall   .   .    .   .    .    .     14   .    .    
  raven         .   .    .   .    6    .     .    .    .    
  reasoning     38  .    .   24   .    .     16   24   12   
  speed         40  .    .   8    .    .     16   47   30   
  symbol        .   .    .   .    .    .     18   .    .    
  univar        54  .    .   10   .    40    .    .    .    
  visuospatial  .   .    .   .    .    .     .    4    10   
  wordlistimmed .   8    4   .    6    .     .    .    .    
```

```r
#
```


#### QUESTIONS 



```r
saveRDS(ds,"./data/shared/ds1.rds") # save corrected dataset
saveRDS(ds,"./data/shared/ds2.rds") # save corrected dataset
```

## Session Information
For the sake of documentation and reproducibility, the current report was rendered on a system using the following software.


```
Report rendered by koval_000 at 2015-12-15, 14:55 -0800
```

```
R version 3.2.2 (2015-08-14)
Platform: x86_64-w64-mingw32/x64 (64-bit)
Running under: Windows 8 x64 (build 9200)

locale:
[1] LC_COLLATE=English_United States.1252  LC_CTYPE=English_United States.1252    LC_MONETARY=English_United States.1252
[4] LC_NUMERIC=C                           LC_TIME=English_United States.1252    

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] tidyr_0.2.0           ggplot2_1.0.1         IalsaSynthesis_0.1.8  MplusAutomation_0.6-3 dplyr_0.4.1          
[6] testit_0.4            knitr_1.10.5         

loaded via a namespace (and not attached):
 [1] Rcpp_0.11.6      magrittr_1.5     MASS_7.3-44      munsell_0.4.2    colorspace_1.2-6 xtable_1.7-4    
 [7] lattice_0.20-33  R6_2.0.1         stringr_1.0.0    plyr_1.8.3       tcltk_3.2.2      tools_3.2.2     
[13] parallel_3.2.2   grid_3.2.2       gtable_0.1.2     texreg_1.35      coda_0.17-1      DBI_0.3.1       
[19] htmltools_0.2.6  yaml_2.1.13      lazyeval_0.1.10  assertthat_0.1   digest_0.6.8     formatR_1.2     
[25] reshape2_1.4.1   evaluate_0.7     rmarkdown_0.7    gsubfn_0.6-6     stringi_0.4-1    scales_0.2.5    
[31] boot_1.3-17      proto_0.3-10    
```
