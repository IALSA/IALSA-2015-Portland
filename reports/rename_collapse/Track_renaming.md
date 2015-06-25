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
ds1 <- readRDS('./data/shared/ds1.rds')
# ds <- ds1 %>% dplyr::filter(study_name=="satsa")
ds <- ds1 %>% dplyr::arrange_("cognitive_measure")
# ds <- ds1[ds1$study_name=="eas",]
head(ds[c("cognitive_construct","cognitive_measure","output_file")])
```

```
  cognitive_construct cognitive_measure                                  output_file
1              mental               3ms     b1_female_aeh_muscle_mental_hand_3ms.out
2              mental               3ms b1_female_aehplus_muscle_mental_hand_3ms.out
3              mental               3ms     b1_female_age_muscle_mental_hand_3ms.out
4              mental               3ms    b1_female_full_muscle_mental_hand_3ms.out
5              mental               3ms       b1_male_aeh_muscle_mental_hand_3ms.out
6              mental               3ms   b1_male_aehplus_muscle_mental_hand_3ms.out
```

```r
tail(ds[c("cognitive_construct","cognitive_measure","output_file")])
```

```
     cognitive_construct cognitive_measure                            output_file
1226               noCog              <NA>        u1_male_age_pulmonary_noCog.out
1227           reasoning              <NA>    b1_male_age_pulmonary_reasoning.out
1228               speed              <NA>        b1_male_age_pulmonary_speed.out
1229        visuospatial              <NA> b1_male_age_pulmonary_visuospatial.out
1230               noCog              <NA>        u1_female_age_walking_noCog.out
1231               noCog              <NA>          u1_male_age_walking_noCog.out
```

```r
nrow(ds)
```

```
[1] 1231
```
Each row is a model.
<!-- Tweak the datasets.   -->




Now I will throw out the models which were named illegaly, that is did not contain exactly 7 components.

```r
desired_subpart_count <- 7L # necessary number of componets in legal filename
ds$model_name <- gsub(pattern=".out",replacement="",ds$output_file) # remove .out ending
subparts <- strsplit(ds$model_name,"_") # break up each  model_name, store in a list
subpart_count <- sapply(subparts, length) # count compents in each element of the list
is_valid <- (subpart_count==desired_subpart_count) # create logical vector
length(ds$output_file[!is_valid]) # that many models with omitted elements in the name
```

```
[1] 121
```

```r
# Define what models have invalid names and print them
if(sum(!is_valid)>0){ print(ds$output_file[!is_valid])}else{
  cat("All your models were named properly")
}
```

```
  [1] "u1_female_aeh_nophys_block.out"                "u1_female_aeh_nophys_block_nocogspec.out"     
  [3] "u1_male_age_ pulmonary_nocog.out"              "u1_male_age_nophys_memory.out"                
  [5] "u0_male_empty_nophys_memory.out"               "u0_male_empty_pulmonary_nocog.out"            
  [7] "u1_female_age_nophys_global.out"               "u2_female_age_nophys_global.out"              
  [9] "u1_male_age_nophys_global.out"                 "u2_male_age_nophys_global.out"                
 [11] "b1_female_aeh_walking_global.out"              "b1_female_age_walking_global.out"             
 [13] "b1_male_aeh_walking_global.out"                "b1_male_age_walking_global.out"               
 [15] "u2_female_age_walking_nocog.out"               "u2_male_age_walking_nocog.out"                
 [17] "u1_female_age_walking_noCog.out"               "u1_male_age_walking_noCog.out"                
 [19] "b1_female_aeh_grip_block.out"                  "b1_female_aehplus_grip_block.out"             
 [21] "b1_female_age_grip_block.out"                  "b1_male_aeh_grip_block.out"                   
 [23] "b1_male_aehplus_grip_block.out"                "b1_male_age_grip_block.out"                   
 [25] "b1_female_aeh_grip_digitbackward.out"          "b1_female_aehplus_grip_digitbackward.out"     
 [27] "b1_female_age_grip_digitbackward.out"          "b1_male_aeh_grip_digitbackward.out"           
 [29] "b1_male_aehplus_grip_digitbackward.out"        "b1_male_age_grip_digitbackward.out"           
 [31] "b1_female_aeh_grip_digitforward.out"           "b1_female_aehplus_grip_digitforward.out"      
 [33] "b1_female_age_grip_digitforward.out"           "b1_male_aeh_grip_digitforward.out"            
 [35] "b1_male_aehplus_grip_digitforward.out"         "b1_male_age_grip_digitforward.out"            
 [37] "b1_female_aeh_grip_digitsymbol.out"            "b1_female_aehplus_grip_digitsymbol.out"       
 [39] "b1_female_age_grip_digitsymbol.out"            "b1_male_aeh_grip_digitsymbol.out"             
 [41] "b1_male_aehplus_grip_digitsymbol.out"          "b1_male_age_grip_digitsymbol.out"             
 [43] "b1_female_aeh_grip_figurelogic.out"            "b1_female_aehplus_grip_figurelogic.out"       
 [45] "b1_female_age_grip_figurelogic.out"            "b1_male_aeh_grip_figurelogic.out"             
 [47] "b1_male_aehplus_grip_figurelogic.out"          "b1_male_age_grip_figurelogic.out"             
 [49] "b1_female_aeh_grip_mirrecall.out"              "b1_female_aehplus_grip_mirrecall.out"         
 [51] "b1_female_age_grip_mirrecall.out"              "b1_male_aeh_grip_mirrecall.out"               
 [53] "b1_male_aehplus_grip_mirrecall.out"            "b1_male_age_grip_mirrecall.out"               
 [55] "b1_female_aeh_grip_proserecall.out"            "b1_female_aehplus_grip_proserecall.out"       
 [57] "b1_female_age_grip_proserecall.out"            "b1_male_aeh_grip_proserecall.out"             
 [59] "b1_male_aehplus_grip_proserecall.out"          "b1_male_age_grip_proserecall.out"             
 [61] "b1_female_aeh_pulmonary_block.out"             "b1_female_aehplus_pulmonary_block.out"        
 [63] "b1_female_age_pulmonary_block.out"             "b1_female_full_pulmonary_block.out"           
 [65] "b1_male_aeh_pulmonary_block.out"               "b1_male_aehplus_pulmonary_block.out"          
 [67] "b1_male_age_pulmonary_block.out"               "b1_male_full_pulmonary_block.out"             
 [69] "b1_female_aeh_pulmonary_digitbackward.out"     "b1_female_aehplus_pulmonary_digitbackward.out"
 [71] "b1_female_age_pulmonary_digitbackward.out"     "b1_male_aeh_pulmonary_digitbackward.out"      
 [73] "b1_male_aehplus_pulmonary_digitbackward.out"   "b1_male_age_pulmonary_digitbackward.out"      
 [75] "b1_female_aeh_pulmonary_digitforward.out"      "b1_female_aehplus_pulmonary_digitforward.out" 
 [77] "b1_female_age_pulmonary_digitforward.out"      "b1_male_aeh_pulmonary_digitforward.out"       
 [79] "b1_male_aehplus_pulmonary_digitforward.out"    "b1_male_age_pulmonary_digitforward.out"       
 [81] "b1_female_aeh_pulmonary_digitsymbol.out"       "b1_female_aehplus_pulmonary_digitsymbol.out"  
 [83] "b1_female_age_pulmonary_digitsymbol.out"       "b1_male_aeh_pulmonary_digitsymbol.out"        
 [85] "b1_male_aehplus_pulmonary_digitsymbol.out"     "b1_male_age_pulmonary_digitsymbol.out"        
 [87] "b1_female_aeh_pulmonary_figurelogic.out"       "b1_female_aehplus_pulmonary_figurelogic.out"  
 [89] "b1_female_age_pulmonary_figurelogic.out"       "b1_male_aeh_pulmonary_figurelogic.out"        
 [91] "b1_male_aehplus_pulmonary_figurelogic.out"     "b1_male_age_pulmonary_figurelogic.out"        
 [93] "b1_female_aeh_pulmonary_mirrecall.out"         "b1_female_aehplus_pulmonary_mirrecall.out"    
 [95] "b1_female_age_pulmonary_mirrecall.out"         "b1_male_aeh_pulmonary_mirrecall.out"          
 [97] "b1_male_aehplus_pulmonary_mirrecall.out"       "b1_male_age_pulmonary_mirrecall.out"          
 [99] "b1_female_aeh_pulmonary_proserecall.out"       "b1_female_aehplus_pulmonary_proserecall.out"  
[101] "b1_female_age_pulmonary_proserecall.out"       "b1_female_full_pulmonary_proserecall.out"     
[103] "b1_male_aeh_pulmonary_proserecall.out"         "b1_male_aehplus_pulmonary_proserecall.out"    
[105] "b1_male_age_pulmonary_proserecall.out"         "b1_male_full_pulmonary_proserecall.out"       
[107] "b1_male_age_muscle_executive.out"              "b1_male_age_muscle_knowledge.out"             
[109] "u1_female_age_muscle_nocog.out"                "b1_male_age_muscle_reasoning.out"             
[111] "b1_male_age_muscle_speed.out"                  "b1_male_age_muscle_visuospatial.out"          
[113] "b1_male_age_pulmonary_executive.out"           "b1_male_age_pulmonary_knowledge.out"          
[115] "u1_female_age_pulmonary_noCog.out"             "u1_male_age_pulmonary_noCog.out"              
[117] "b1_male_age_pulmonary_reasoning.out"           "b1_male_age_pulmonary_speed.out"              
[119] "b1_male_age_pulmonary_visuospatial.out"        "u1_female_age_walking_noCog.out"              
[121] "u1_male_age_walking_noCog.out"                
```

```r
ds <- ds[is_valid,] # keep only model the valid names
nrow(ds) # how many models we ended up with.
```

```
[1] 1110
```

To simplify editing of the names, we'll convert them to lowercase

```r
ds$physical_construct <- tolower(stringr::str_trim(ds$physical_construct))
ds$physical_measure <- tolower(stringr::str_trim(ds$physical_measure))
ds$cognitive_construct <- tolower(stringr::str_trim(ds$cognitive_construct))
ds$cognitive_measure <- tolower(stringr::str_trim(ds$cognitive_measure))
```

## Spelling mistakes
Now we will correct for what seemed to us were benign spelling issues. We'll keep the order from the model naming convention
![naming convention](../../libs/images/model_naming_convention.png)

### Model number

```r
t <- table(ds$model_number, ds$study_name);t[t==0]<-".";t
```

```
    
     eas habc ilse nas nuage octo radc satsa
  b1 219 48   72   41  6     88   137  92   
  u0 6   10   14   .   10    .    .    .    
  u1 129 30   37   .   36    .    4    .    
  u2 131 .    .    .   .     .    .    .    
```
No obvious typos were detected.

### Subgroup

```r
t <- table(ds$subgroup, ds$study_name);t[t==0]<-".";t
```

```
        
         eas habc ilse nas nuage octo radc satsa
  female 244 44   62   .   26    44   69   46   
  male   241 44   61   41  26    44   72   46   
```
No obvious typos were detected.

### Model type

```r
t <- table(ds$model_type, ds$study_name);t[t==0]<-".";t
```

```
         
          eas habc ilse nas nuage octo radc satsa
  a       .   .    36   .   8     .    .    .    
  ae      97  .    .    14  .     .    .    24   
  aeh     95  22   37   .   14    44   53   24   
  aehplus 94  22   36   .   14    .    72   20   
  aeplus  .   .    .    13  .     .    .    .    
  age     96  22   .    14  6     44   12   24   
  aheplus 1   .    .    .   .     .    .    .    
  empty   6   10   14   .   10    .    4    .    
  full    96  12   .    .   .     .    .    .    
```
obvious typo "aheplus" was detected.  

#### Correct model type


```r
# rename obvious typo
ds[ds$model_type=="aheplus","model_type"] <- "aehplus"
# rename values for consistency
ds[ds$model_type=="age","model_type"] <- "a" # rename for sorting/consistency purposes
ds[ds$model_type=="empty","model_type"] <- "0"
# inspect new names
t <- table(ds$model_type, ds$study_name);t[t==0]<-".";t
```

```
         
          eas habc ilse nas nuage octo radc satsa
  0       6   10   14   .   10    .    4    .    
  a       96  22   36   14  14    44   12   24   
  ae      97  .    .    14  .     .    .    24   
  aeh     95  22   37   .   14    44   53   24   
  aehplus 95  22   36   .   14    .    72   20   
  aeplus  .   .    .    13  .     .    .    .    
  full    96  12   .    .   .     .    .    .    
```
#### QUESTIONS 
 1. Is "aeplus" a typo or particular model?  

### Physical domain

```r
t <- table(ds$physical_construct, ds$study_name);t[t==0]<-".";t
```

```
            
             eas habc ilse nas nuage octo radc satsa
  chair      .   .    .    .   8     .    .    .    
  flamingo   .   .    .    .   8     .    .    .    
  muscle     131 32   45   .   14    44   79   46   
  nophys     220 24   34   .   6     .    .    .    
  nophysspec 1   .    .    .   .     .    .    .    
  pulmonary  133 .    .    41  .     44   62   45   
  pumonary   .   .    .    .   .     .    .    1    
  tug        .   .    44   .   8     .    .    .    
  walking    .   32   .    .   8     .    .    .    
```

#### Correct Physical domain


```r
# rename obvious typo
ds[ds$physical_construct %in% c("pumonary"),"physical_construct"] <- "pulmonary"
# Rename the absense of physical construct
ds[ds$physical_construct %in% c("nophys", "nophysspec"),"physical_construct"] <- "Univar"
# inspect new names
t <- table(ds$physical_construct, ds$study_name);t[t==0]<-".";t
```

```
           
            eas habc ilse nas nuage octo radc satsa
  chair     .   .    .    .   8     .    .    .    
  flamingo  .   .    .    .   8     .    .    .    
  muscle    131 32   45   .   14    44   79   46   
  pulmonary 133 .    .    41  .     44   62   46   
  tug       .   .    44   .   8     .    .    .    
  Univar    221 24   34   .   6     .    .    .    
  walking   .   32   .    .   8     .    .    .    
```

#### QUESTIONS 

### Physical measure

```r
t <- table(ds$physical_measure, ds$study_name);t[t==0]<-".";t
```

```
            
             eas habc ilse nas nuage octo radc satsa
  fev        .   .    .    .   .     .    62   46   
  fev1       .   .    .    20  .     .    .    .    
  fevc       .   .    .    1   .     .    .    .    
  fvc        .   .    .    20  .     .    .    .    
  gait       .   33   .    .   .     .    .    .    
  grip       131 .    44   .   15    44   79   46   
  hand       .   31   .    .   .     .    .    .    
  nophsyspec 1   .    .    .   .     .    .    .    
  nophyscog  .   .    2    .   .     .    .    .    
  nophyspec  8   .    .    .   .     .    .    .    
  nophyssec  5   .    .    .   .     .    .    .    
  nophysspec 207 24   77   .   37    .    .    .    
  pek        133 .    .    .   .     44   .    .    
```

#### Correct Physical measure


```r
# rename obvious type
ds[ds$physical_measure == "fevc","physical_measure"] <- "fev"
# rename the absense of physical measure
ds[ds$physical_measure %in% c("nophysspec","nophsyspec","nophyscog", "nophyspec", "nophyssec" ), "physical_measure"] <- "univar"
# collapse a category
ds[ds$physical_measure == "hand","physical_measure"] <- "grip"
ds[ds$physical_measure %in% c("fev1"), "physical_measure"] <- "fev"


# inspect new names
t <- table(ds$physical_measure, ds$study_name);t[t==0]<-".";t
```

```
        
         eas habc ilse nas nuage octo radc satsa
  fev    .   .    .    21  .     .    62   46   
  fvc    .   .    .    20  .     .    .    .    
  gait   .   33   .    .   .     .    .    .    
  grip   131 31   44   .   15    44   79   46   
  pek    133 .    .    .   .     44   .    .    
  univar 221 24   79   .   37    .    .    .    
```

#### QUESTIONS 

### Cognitive domain

```r
t <- table(ds$cognitive_construct, ds$study_name);t[t==0]<-".";t
```

```
                 
                  eas habc ilse nas nuage octo radc satsa
  attention       .   .    .    .   .     .    7    .    
  executive       29  .    .    .   .     .    19   .    
  fluency         126 .    20   .   .     .    .    .    
  fluid           10  .    .    .   .     .    .    .    
  fluidreasoning  .   .    .    12  .     .    .    .    
  global          40  .    .    6   12    8    8    16   
  knoledge        1   .    .    .   .     .    .    .    
  knowledge       73  .    12   .   .     16   9    48   
  knowlegde       1   .    .    .   .     .    .    .    
  language        .   .    .    .   .     .    14   .    
  memory          79  .    .    .   .     32   47   .    
  memoryattention .   .    .    17  .     .    .    .    
  mental          .   48   .    .   .     .    .    .    
  nocog           44  16   17   .   40    .    4    .    
  reasoning       42  .    54   .   .     16   9    .    
  speed           40  24   20   .   .     16   15   28   
  verbalfluency   .   .    .    6   .     .    .    .    
  visuospatial    .   .    .    .   .     .    9    .    
```

#### Correct Cognitive domain


```r
# rename obvious typos
ds[ds$cognitive_construct %in% c(" knowledge", "knoledge", "knowlegde"),"cognitive_construct"] <- "knowledge"
# rename the absense of physical measure
ds[ds$cognitive_construct %in% c("nocog", "nocogspec"),"cognitive_construct"] <- "Univar"
# collape categories
ds[ds$cognitive_construct == "memoryattention","cognitive_construct"] <- "memory"
ds[ds$cognitive_construct %in% c("fluid","fluidreasoning"),"cognitive_construct"] <- "reasoning"
ds[ds$cognitive_construct %in% c("verbalfluency"),"cognitive_construct"] <- "fluency"
# inspect new names
t <- table(ds$cognitive_construct, ds$study_name);t[t==0]<-".";t
```

```
              
               eas habc ilse nas nuage octo radc satsa
  attention    .   .    .    .   .     .    7    .    
  executive    29  .    .    .   .     .    19   .    
  fluency      126 .    20   6   .     .    .    .    
  global       40  .    .    6   12    8    8    16   
  knowledge    75  .    12   .   .     16   9    48   
  language     .   .    .    .   .     .    14   .    
  memory       79  .    .    17  .     32   47   .    
  mental       .   48   .    .   .     .    .    .    
  reasoning    52  .    54   12  .     16   9    .    
  speed        40  24   20   .   .     16   15   28   
  Univar       44  16   17   .   40    .    4    .    
  visuospatial .   .    .    .   .     .    9    .    
```


#### QUESTIONS 

### Cognitive measure

```r
t <- table(ds$cognitive_measure, ds$study_name);t[t==0]<-".";t
```

```
                             
                              eas habc ilse nas nuage octo radc satsa
  3ms                         .   24   .    .   .     .    .    .    
  anal                        .   .    .    .   .     .    .    16   
  animals                     .   .    .    6   .     .    .    .    
  block                       42  .    .    .   .     .    .    .    
  blockdesign                 .   .    .    .   .     8    .    .    
  bnt                         .   .    .    .   .     .    7    .    
  bostonmaning                1   .    .    .   .     .    .    .    
  bostonnaming                38  .    .    .   .     .    .    .    
  bostonstorydelay            .   .    .    .   .     .    7    .    
  bostonstoryimmediate        .   .    .    .   .     .    7    .    
  category                    40  .    .    .   .     .    .    .    
  categoryfluency             .   .    .    .   .     .    5    .    
  clock                       .   24   .    .   .     .    .    .    
  complexideas                .   .    .    .   .     .    7    .    
  delayedwordrecall           .   .    .    6   .     .    .    .    
  digitbackward               .   .    .    5   .     .    .    .    
  digitordering               .   .    .    .   .     .    6    .    
  digitsback                  .   .    .    .   .     .    8    .    
  digitsforward               .   .    .    .   .     .    7    .    
  digitspan                   8   .    .    .   .     .    .    .    
  digitspanbackward           .   .    .    .   .     8    .    .    
  digitspanforward            .   .    .    .   .     8    .    .    
  digitspantotal              25  .    .    .   .     .    .    .    
  digitsymbol                 44  24   .    .   .     8    8    .    
  digitsymbolsubstitutiontest .   .    20   .   .     .    .    .    
  digitsymboltotal            1   .    .    .   .     .    .    .    
  digitsymol                  1   .    .    .   .     .    .    .    
  disigtspantotal             1   .    .    .   .     .    .    .    
  fas                         40  .    .    .   .     .    .    .    
  figid                       .   .    .    .   .     .    .    12   
  figurecopy                  .   .    .    6   .     .    .    .    
  figurelogic                 .   .    .    .   .     8    .    .    
  immediaterecall             .   .    .    6   .     .    .    .    
  info                        .   .    .    .   .     .    .    16   
  information                 40  .    .    .   .     8    .    .    
  lineorientation             .   .    .    .   .     .    9    .    
  logicalmemory               30  .    .    .   .     .    .    .    
  logicalmemorydelay          .   .    .    .   .     .    7    .    
  logicalmemoryimmed          .   .    .    .   .     .    5    .    
  logicalmemorytotal          9   .    .    .   .     .    .    .    
  lpsspacialability           .   .    14   .   .     .    .    .    
  matrices                    .   .    .    .   .     .    9    .    
  mirrecall                   .   .    .    .   .     8    .    .    
  mmms                        .   .    .    .   12    .    .    .    
  mmse                        40  .    .    6   .     8    8    16   
  nart                        .   .    .    .   .     .    9    .    
  nocogspec                   44  16   17   .   40    .    4    .    
  nostonnaming                1   .    .    .   .     .    .    .    
  numbercomparison            .   .    .    .   .     .    7    .    
  patterncomparison           .   .    .    6   .     .    .    .    
  picturecompletion           .   .    8    .   .     .    .    .    
  proserecall                 .   .    .    .   .     8    .    .    
  psif                        .   .    .    .   .     8    .    .    
  symbol                      .   .    .    .   .     .    .    16   
  synon                       .   .    .    .   .     .    .    16   
  synonyms                    .   .    .    .   .     8    .    .    
  trailsb                     39  .    .    .   .     .    .    .    
  verbalfluencytest           .   .    20   .   .     .    .    .    
  waisblockdesign             .   .    20   .   .     .    .    .    
  waisgeneralknowledge        .   .    12   .   .     .    .    .    
  waispicturecompletion       .   .    12   .   .     .    .    .    
  waisvocab                   39  .    .    .   .     .    .    .    
  wasivocab                   2   .    .    .   .     .    .    .    
  wordlistdelay               .   .    .    .   .     .    7    .    
  wordlistimmed               .   .    .    .   .     .    7    .    
  wordlistrecog               .   .    .    .   .     .    7    .    
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
                       
                        eas habc ilse nas nuage octo radc satsa
  3ms                   .   24   .    .   12    .    .    .    
  analogies             .   .    .    .   .     .    .    16   
  block                 42  .    20   .   .     8    .    .    
  bnt                   40  .    .    .   .     .    7    .    
  bostonstorydelay      .   .    .    .   .     .    7    .    
  bostonstoryimmediate  .   .    .    .   .     .    7    .    
  categories            40  .    .    6   .     .    5    .    
  clock                 .   24   .    .   .     .    .    .    
  complexideas          .   .    .    .   .     .    7    .    
  digitordering         .   .    .    .   .     .    6    .    
  digitsback            .   .    .    5   .     8    8    .    
  digitsforward         .   .    .    .   .     8    7    .    
  digitspan             34  .    .    .   .     .    .    .    
  figurecopy            .   .    .    6   .     .    .    .    
  figureid              .   .    .    .   .     .    .    12   
  figurelogic           .   .    .    .   .     8    .    .    
  info                  40  .    .    .   .     8    .    16   
  lineorientation       .   .    .    .   .     .    9    .    
  logicalmemory         39  .    .    .   .     .    .    .    
  logicalmemorydelay    .   .    .    .   .     .    7    .    
  logicalmemoryimmed    .   .    .    .   .     .    5    .    
  lpsspacialability     .   .    14   .   .     .    .    .    
  matrices              .   .    .    .   .     .    9    .    
  mirrecall             .   .    .    .   .     8    .    .    
  mmse                  40  .    .    6   .     8    8    16   
  nart                  .   .    .    .   .     .    9    .    
  numbercomparison      .   .    .    .   .     .    7    .    
  patterncomparison     .   .    .    6   .     .    .    .    
  picturecompletion     .   .    8    .   .     .    .    .    
  proserecall           .   .    .    .   .     8    .    .    
  psif                  .   .    .    .   .     8    .    .    
  symbol                46  24   20   .   .     8    8    16   
  synonyms              .   .    .    .   .     8    .    16   
  trailsb               39  .    .    .   .     .    .    .    
  univar                44  16   17   .   40    .    4    .    
  verbalfluency         40  .    20   .   .     .    .    .    
  waisgeneralknowledge  .   .    12   .   .     .    .    .    
  waispicturecompletion .   .    12   .   .     .    .    .    
  waisvocab             41  .    .    .   .     .    .    .    
  wordlistdelay         .   .    .    6   .     .    7    .    
  wordlistimmed         .   .    .    6   .     .    7    .    
  wordlistrecog         .   .    .    .   .     .    7    .    
```

```r
#
```


#### QUESTIONS 



```r
saveRDS(ds,"./data/shared/ds1a.rds") # save corrected dataset
```

## Session Information
For the sake of documentation and reproducibility, the current report was rendered on a system using the following software.


```
Report rendered by koval_000 at 2015-06-24, 21:11 -0700
```

```
R version 3.2.0 (2015-04-16)
Platform: x86_64-w64-mingw32/x64 (64-bit)
Running under: Windows 8 x64 (build 9200)

locale:
[1] LC_COLLATE=English_United States.1252  LC_CTYPE=English_United States.1252    LC_MONETARY=English_United States.1252
[4] LC_NUMERIC=C                           LC_TIME=English_United States.1252    

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] testit_0.4            knitr_1.10.5          dplyr_0.4.1           MplusAutomation_0.6-3

loaded via a namespace (and not attached):
 [1] Rcpp_0.11.6      magrittr_1.5     xtable_1.7-4     lattice_0.20-31  stringr_1.0.0    plyr_1.8.2      
 [7] tcltk_3.2.0      tools_3.2.0      parallel_3.2.0   grid_3.2.0       texreg_1.35      coda_0.17-1     
[13] DBI_0.3.1        htmltools_0.2.6  yaml_2.1.13      lazyeval_0.1.10  digest_0.6.8     assertthat_0.1  
[19] formatR_1.2      rsconnect_0.3.79 evaluate_0.7     gsubfn_0.6-6     rmarkdown_0.7    stringi_0.4-1   
[25] boot_1.3-16      proto_0.3-10    
```
