## This script
options(width=160)
rm(list=ls())
cat("\f")

library(dplyr)
library(tidyr)
library(ggplot2)


pathRoot <- getwd()
pathFolder <- file.path(pathRoot,"studies/radc/outputs/physical_cognitive")



#e.g pc_TAU_00 <- c("pc_TAU_00_est", "pc_TAU_00_se", "pc_TAU_00_wald","pc_TAU_00_pval")
source("./scripts/mplus/group_variables.R") # selected_results
# load functions that generate scripts
source("./studies/radc/scripts/functions_to_generate_Mplus_scripts.R")
# load functions that process the output files and create a summary dataset
source("./studies/radc/scripts/extraction_functions.R")



# create a object with main_theme definition
source("./scripts/graphs/main_theme.R")
# load graphical function
source("./scripts/graphs/kb_profiles_functions.R")


# point to  the folder with datasets containing model results

run_models_on <- TRUE # TRUE - run models, FALSE - only create script


## Run the lines above to load the needed functions
## Execute script snippets for each pair individually below this


############################################################ GRIP #####
## @knitr dummy_1
# Use the first example as the template for further pairs
# from "./scripts/mplus/functions_to_generate_Mplus_scripts.R"

#Grip_numbercomparison
#Male models
make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/grip_numbercomp"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'numbercomp'# measure name
  ,processC = 'cts_nccrtd'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = FALSE
)

# generate mplus scripts from a prototype, estimate (run_models=TRUE)

#Female models
make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/grip_numbercomp"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'numbercomp'# measure name
  ,processC = 'cts_nccrtd'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = FALSE
)


#### Grip - Boston Naming Task ####

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/grip_bnt"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'bnt'# measure name
  ,processC = 'cts_bname'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = FALSE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/grip_bnt"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'bnt'# measure name
  ,processC = 'cts_bname'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = FALSE
)

#### Grip - Boston Story Delayed Recall ####

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'bostonstorydelay'# measure name
  ,processC = 'cts_ebdr'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = FALSE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'bostonstorydelay'# measure name
  ,processC = 'cts_ebdr'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = FALSE
)


#### Grip - Boston Story Immediate Recall ####

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'bostonstoryimm'# measure name
  ,processC = 'cts_ebmt'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = FALSE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'bostonstoryimm'# measure name
  ,processC = 'cts_ebmt'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = FALSE
)




#### Grip - complex ideational material ####

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'complexidea'# measure name
  ,processC = 'cts_idea'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = FALSE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'complexidea'# measure name
  ,processC = 'cts_idea'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = FALSE
)


#### Grip - digit ordering ####

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'digitordering'# measure name
  ,processC = 'cts_doperf'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = FALSE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'digitordering'# measure name
  ,processC = 'cts_doperf'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = FALSE
)


#### Grip - digits forwards ####

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'digitsf'# measure name
  ,processC = 'cts_df'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = FALSE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'digitsf'# measure name
  ,processC = 'cts_df'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = FALSE
)


#### Grip - digits backwards ####

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'digitsb'# measure name
  ,processC = 'cts_db'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = FALSE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'digitsb'# measure name
  ,processC = 'cts_db'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = FALSE
)


#### Grip - line orientation ####

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'lineorientation'# measure name
  ,processC = 'cts_lopair'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = FALSE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'lineorientation'# measure name
  ,processC = 'cts_lopair'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = FALSE
)


#### Grip - Logical Memory Delayed Recall ####

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'lmdelayed'# measure name
  ,processC = 'cts_delay'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = FALSE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'lmdelayed'# measure name
  ,processC = 'cts_delay'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = FALSE
)



#### Grip - Logical Memory Immediate Recall ####

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'lmimmed'# measure name
  ,processC = 'cts_story'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = FALSE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'lmimmed'# measure name
  ,processC = 'cts_story'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = FALSE
)


#### Grip - Matrices ####

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'matrices'# measure name
  ,processC = 'cts_pmat'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = FALSE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'matrices'# measure name
  ,processC = 'cts_pmat'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = FALSE
)


#### Grip - word list ####

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'wordlistimm'# measure name
  ,processC = 'cts_wli'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = FALSE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'wordlistimm'# measure name
  ,processC = 'cts_wli'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = FALSE
)

#### Grip - word list delayed recall ####

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'wordlistdelayed'# measure name
  ,processC = 'cts_wlii'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = FALSE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'wordlistdelayed'# measure name
  ,processC = 'cts_wlii'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = FALSE
)

#### Grip - word list recognition ####

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'wordlistrec'# measure name
  ,processC = 'cts_wliii'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = FALSE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'wordlistrec'# measure name
  ,processC = 'cts_wliii'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = FALSE
)

#### Grip - Categories ####

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'categories'# measure name
  ,processC = 'cts_catflu'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = FALSE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'categories'# measure name
  ,processC = 'cts_catflu'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = FALSE
)


#### Grip - Digit Symbol #####

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'digitsymbol'# measure name
  ,processC = 'cts_sdmt'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = FALSE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'digitsymbol'# measure name
  ,processC = 'cts_sdmt'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = FALSE
)


#### Grip - MMSE ####

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'mmse'# measure name
  ,processC = 'cts_mmse30'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = FALSE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'mmse'# measure name
  ,processC = 'cts_mmse30'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = FALSE
)


####Grip-NART######

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'nart'# measure name
  ,processC = 'cts_read_nart'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = FALSE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'nart'# measure name
  ,processC = 'cts_read_nart'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = TRUE
)



######################################### FEV ##########################

#fev - number comparison
#Male models
make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_numbcomp"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'numbercomp'# measure name
  ,processC = 'cts_nccrtd'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = TRUE
)

# generate mplus scripts from a prototype, estimate (run_models=TRUE)

#Female models
make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_numbcomp"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'numbercomp'# measure name
  ,processC = 'cts_nccrtd'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "9"
  ,most_waves = "12"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = TRUE
)


#### fev - Boston Naming Task ####

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_bnt"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'bnt'# measure name
  ,processC = 'cts_bname'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = FALSE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_bnt"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'bnt'# measure name
  ,processC = 'cts_bname'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = TRUE
)

#### fev - Boston Story Delayed Recall ####

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_bostonstorydelay"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'bostonstorydelay'# measure name
  ,processC = 'cts_ebdr'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = FALSE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_bostonstorydelay"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'bostonstorydelay'# measure name
  ,processC = 'cts_ebdr'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = TRUE
)


#### fev - Boston Story Immediate Recall ####

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_bostonstoryimm"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'bostonstoryimm'# measure name
  ,processC = 'cts_ebmt'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = TRUE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_bostonstoryimm"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'bostonstoryimm'# measure name
  ,processC = 'cts_ebmt'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = TRUE
)




#### fev - complex ideational material ####

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_complexidea"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'complexidea'# measure name
  ,processC = 'cts_idea'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = TRUE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_complexidea"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'complexidea'# measure name
  ,processC = 'cts_idea'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = TRUE
)


#### fev - digit ordering ####

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_digitordering"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'digitordering'# measure name
  ,processC = 'cts_doperf'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = TRUE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_digitordering"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'digitordering'# measure name
  ,processC = 'cts_doperf'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = TRUE
)


#### Grip - digits forwards ####

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_digitsf"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'digitsf'# measure name
  ,processC = 'cts_df'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = TRUE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_digitsf"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'digitsf'# measure name
  ,processC = 'cts_df'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = TRUE
)


#### fev - digits backwards ####

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_digitsb"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'digitsb'# measure name
  ,processC = 'cts_db'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = TRUE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_digitsb"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'digitsb'# measure name
  ,processC = 'cts_db'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = TRUE
)


#### fev - line orientation ####

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_lineorientation"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'lineorientation'# measure name
  ,processC = 'cts_lopair'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = TRUE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_lineorientation"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'lineorientation'# measure name
  ,processC = 'cts_lopair'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = TRUE
)


#### Grip - Logical Memory Delayed Recall ####

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_lmdelayed"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'lmdelayed'# measure name
  ,processC = 'cts_delay'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = TRUE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_lmdelayed"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'lmdelayed'# measure name
  ,processC = 'cts_delay'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = TRUE
)



#### Grip - Logical Memory Immediate Recall ####

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_lmimmed"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'lmimmed'# measure name
  ,processC = 'cts_story'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = TRUE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_lmimmed"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'lmimmed'# measure name
  ,processC = 'cts_story'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = TRUE
)


#### Grip - Matrices ####

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_matrices"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'matrices'# measure name
  ,processC = 'cts_pmat'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = TRUE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_matrices"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'matrices'# measure name
  ,processC = 'cts_pmat'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = TRUE
)


#### Grip - word list ####

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_wordlistimm"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'wordlistimm'# measure name
  ,processC = 'cts_wli'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = TRUE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/physical_wordlistimm"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'wordlistimm'# measure name
  ,processC = 'cts_wli'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = TRUE
)

#### Grip - word list delayed recall ####

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_wordlistdelayed"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'wordlistdelayed'# measure name
  ,processC = 'cts_wlii'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = TRUE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_wordlistdelayed"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'wordlistdelayed'# measure name
  ,processC = 'cts_wlii'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = TRUE
)

#### Grip - word list recognition ####

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_wordlistrec"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'wordlistrec'# measure name
  ,processC = 'cts_wliii'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = TRUE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_wordlistrec"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'wordlistrec'# measure name
  ,processC = 'cts_wliii'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = TRUE
)

#### Grip - Categories ####

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_categories"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'categories'# measure name
  ,processC = 'cts_catflu'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = TRUE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_categories"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'categories'# measure name
  ,processC = 'cts_catflu'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = TRUE
)


#### Grip - Digit Symbol #####

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_digitsymbol"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'digitsymbol'# measure name
  ,processC = 'cts_sdmt'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = TRUE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_digitsymbol"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'digitsymbol'# measure name
  ,processC = 'cts_sdmt'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = TRUE
)


#### Grip - MMSE ####

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_mmse"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'mmse'# measure name
  ,processC = 'cts_mmse30'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = TRUE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_mmse"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'mmse'# measure name
  ,processC = 'cts_mmse30'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = TRUE
)


####Grip-NART######

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_male.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_nart"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'nart'# measure name
  ,processC = 'cts_read_nart'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "male"
  ,run_models = TRUE
)

make_script_waves(
  prototype = "studies/radc/scripts/prototype/prototype_b1_RADC_fev_female.inp"
  ,place_in = "studies/radc/outputs/physical_cognitive/fev_nart"
  ,processP_name = "fev100" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'nart'# measure name
  ,processC = 'cts_read_nart'# Mplus variable
  ,covariates = "aehplus"
  ,least_waves = "10"
  ,most_waves = "11"
  ,all_waves = "21"
  ,sex = "female"
  ,run_models = TRUE
)




