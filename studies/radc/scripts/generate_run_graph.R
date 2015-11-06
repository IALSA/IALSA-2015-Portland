## This script 
options(width=160)
rm(list=ls())
cat("\f")

library(dplyr)
library(tidyr)
library(ggplot2)


pathRoot <- getwd()
pathFolder <- file.path(pathRoot,"outputs/pairs")



#e.g pc_TAU_00 <- c("pc_TAU_00_est", "pc_TAU_00_se", "pc_TAU_00_wald","pc_TAU_00_pval")
source("./scripts/mplus/group_variables.R") # selected_results
# load functions that generate scripts
source("./scripts/mplus/functions_to_generate_Mplus_scripts.R")
# load functions that process the output files and create a summary dataset
source("./scripts/mplus/extraction_functions.R")



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
make_script_waves(
  prototype = "scripts/mplus/prototype/prototype_b1_RADC.inp"
  ,place_in = "outputs/pairs/grip_numbercomp"
  ,processP_name = "grip" # measure name
  ,processP = "gripavg" # Mplus variable
  ,processC_name = 'numbercomp'# measure name
  ,processC = 'cts_nccrtd'# Mplus variable
  ,covariates = "a"
  ,least_waves = "4"
  ,most_waves = "18"
  ,all_waves = "21"
  ,run_models = TRUE
) # generate mplus scripts from a prototype, estimate (run_models=TRUE)
# from "./scripts/mplus/extraction_functions.R  script
collect_model_results(folder = "outputs/pairs/grip_numbercomp") # collect and save into the same folder
ds <- readRDS(paste0(pathFolder,".rds")) # load the data for outcome pair
# from "./scripts/graphs/koval_brown_profiles.R" 
kb_profiles(ds,  vertical="wave_count",  border=5) # produces the kb_profile graph




#### Grip - Boston Naming Task ####

# from "./scripts/mplus/extraction_functions.R  script
collect_model_results(folder = "outputs/pairs/grip_bnt") # collect and save into the same folder
ds <- readRDS(file.path(pathFolder,"grip_bnt.rds")) # load the data for outcome pair
# from "./scripts/graphs/koval_brown_profiles.R" 
kb_profiles(ds,  vertical="wave_count",  border=5) # produces the kb_profile graph



#### Grip - Boston Story Delayed Recall ####

# from "./scripts/mplus/extraction_functions.R  script
collect_model_results(folder = "outputs/pairs/grip_bostonstorydelay") # collect and save into the same folder
ds <- readRDS(file.path(pathFolder,"grip_bostonstorydelay.rds")) # load the data for outcome pair
# from "./scripts/graphs/koval_brown_profiles.R" 
kb_profiles(ds,  vertical="wave_count",  border=5) # produces the kb_profile graph


#### Grip - Boston Story Immediate Recall ####

# from "./scripts/mplus/extraction_functions.R  script
collect_model_results(folder = "outputs/pairs/grip_bostonstoryimm") # collect and save into the same folder
ds <- readRDS(file.path(pathFolder,"grip_bostonstoryimm.rds")) # load the data for outcome pair
# from "./scripts/graphs/koval_brown_profiles.R" 
kb_profiles(ds,  vertical="wave_count",  border=5) # produces the kb_profile graph


#### Grip - complex ideational material ####

# from "./scripts/mplus/extraction_functions.R  script
collect_model_results(folder = "outputs/pairs/grip_complexidea") # collect and save into the same folder
ds <- readRDS(file.path(pathFolder,"grip_complexidea.rds")) # load the data for outcome pair
# from "./scripts/graphs/koval_brown_profiles.R" 
kb_profiles(ds,  vertical="wave_count",  border=5) # produces the kb_profile graph


#### Grip - digit ordering ####

# from "./scripts/mplus/extraction_functions.R  script
collect_model_results(folder = "outputs/pairs/grip_digitordering") # collect and save into the same folder
ds <- readRDS(file.path(pathFolder,"grip_digitordering.rds")) # load the data for outcome pair
# from "./scripts/graphs/koval_brown_profiles.R" 
kb_profiles(ds,  vertical="wave_count",  border=5) # produces the kb_profile graph





#### Grip - digits forwards ####

# from "./scripts/mplus/extraction_functions.R  script
collect_model_results(folder = "outputs/pairs/grip_digitsf") # collect and save into the same folder
ds <- readRDS(file.path(pathFolder,"grip_digitsf.rds")) # load the data for outcome pair
# from "./scripts/graphs/koval_brown_profiles.R" 
kb_profiles(ds,  vertical="wave_count",  border=5) # produces the kb_profile graph


#### Grip - digits backwawrds ####

# from "./scripts/mplus/extraction_functions.R  script
collect_model_results(folder = "outputs/pairs/grip_digitsb") # collect and save into the same folder
ds <- readRDS(file.path(pathFolder,"grip_digitsb.rds")) # load the data for outcome pair
# from "./scripts/graphs/koval_brown_profiles.R" 
kb_profiles(ds,  vertical="wave_count",  border=5) # produces the kb_profile graph


#### Grip - digits backwawrds ####

# from "./scripts/mplus/extraction_functions.R  script
collect_model_results(folder = "outputs/pairs/grip_digitsb") # collect and save into the same folder
ds <- readRDS(file.path(pathFolder,"grip_digitsb.rds")) # load the data for outcome pair
# from "./scripts/graphs/koval_brown_profiles.R" 
kb_profiles(ds,  vertical="wave_count",  border=5) # produces the kb_profile graph


#### Grip - line orientation ####

# from "./scripts/mplus/extraction_functions.R  script
collect_model_results(folder = "outputs/pairs/grip_lineorientation") # collect and save into the same folder
ds <- readRDS(file.path(pathFolder,"grip_lineorientation.rds")) # load the data for outcome pair
# from "./scripts/graphs/koval_brown_profiles.R" 
kb_profiles(ds,  vertical="wave_count",  border=5) # produces the kb_profile graph


#### Grip - Logical Memory Delayed Recall ####

# from "./scripts/mplus/extraction_functions.R  script
collect_model_results(folder = "outputs/pairs/grip_lmdelayed") # collect and save into the same folder
ds <- readRDS(file.path(pathFolder,"grip_lmdelayed.rds")) # load the data for outcome pair
# from "./scripts/graphs/koval_brown_profiles.R" 
kb_profiles(ds,  vertical="wave_count",  border=5) # produces the kb_profile graph


#### Grip - Logical Memory Immediate Recall ####

# from "./scripts/mplus/extraction_functions.R  script
collect_model_results(folder = "outputs/pairs/grip_lmimmed") # collect and save into the same folder
ds <- readRDS(file.path(pathFolder,"grip_lmimmed.rds")) # load the data for outcome pair
# from "./scripts/graphs/koval_brown_profiles.R" 
kb_profiles(ds,  vertical="wave_count",  border=5) # produces the kb_profile graph


#### Grip - Matrices ####

# from "./scripts/mplus/extraction_functions.R  script
collect_model_results(folder = "outputs/pairs/grip_matrices") # collect and save into the same folder
ds <- readRDS(file.path(pathFolder,"grip_matrices.rds")) # load the data for outcome pair
# from "./scripts/graphs/koval_brown_profiles.R" 
kb_profiles(ds,  vertical="wave_count",  border=5) # produces the kb_profile graph


#### Grip - number comparison ####

# from "./scripts/mplus/extraction_functions.R  script
collect_model_results(folder = "outputs/pairs/grip_numbercomp") # collect and save into the same folder
ds <- readRDS(file.path(pathFolder,"grip_numbercomp.rds")) # load the data for outcome pair
# from "./scripts/graphs/koval_brown_profiles.R" 
kb_profiles(ds,  vertical="wave_count",  border=5) # produces the kb_profile graph


#### Grip - word list III delayed recognition ####

# from "./scripts/mplus/extraction_functions.R  script
collect_model_results(folder = "outputs/pairs/grip_wordlistrec") # collect and save into the same folder
ds <- readRDS(file.path(pathFolder,"grip_wordlistrec.rds")) # load the data for outcome pair
# from "./scripts/graphs/koval_brown_profiles.R" 
kb_profiles(ds,  vertical="wave_count",  border=5) # produces the kb_profile graph


#### Grip - Categories ####
# from "./scripts/mplus/extraction_functions.R  script
collect_model_results(folder = "outputs/pairs/grip_categories") # collect and save into the same folder
ds <- readRDS(file.path(pathFolder,"grip_categories.rds")) # load the data for outcome pair
# from "./scripts/graphs/koval_brown_profiles.R" 
kb_profiles(ds,  vertical="wave_count",  border=5) # produces the kb_profile graph


#### Grip - Digit Symbol #####
collect_model_results(folder = "outputs/pairs/grip_digitsymbol")
ds <- readRDS(file.path(pathFolder,"grip_digitsymbol.rds")) # load the data for outcome pare
kb_profiles(ds,  vertical="wave_count",  border=5) # produce the kb_profile graph


#### Grip - Logical memory immediate recall ####
# generate mplus scripts
collect_model_results(folder = "outputs/pairs/grip_lmimmed")
ds <- readRDS(file.path(pathFolder,"grip_lmimmed.rds")) # load the data for outcome pare
kb_profiles(ds,  vertical="wave_count",  border=5) # produce the kb_profile graph



#### Grip - MMSE ####
collect_model_results(folder = "outputs/pairs/grip_mmse")
ds <- readRDS(file.path(pathFolder,"grip_mmse.rds")) # load the data for outcome pare
kb_profiles(ds,  vertical="wave_count",  border=5) # produce the kb_profile graph




#### Grip - World List im ####
collect_model_results(folder = "outputs/pairs/grip_wordlistimmed")
ds <- readRDS(file.path(pathFolder,"grip_wordlistimmed.rds")) # load the data for outcome pare
kb_profiles(ds,  vertical="wave_count",  border=5) # produce the kb_profile graph




#### Grip - word list delayed recall ####
collect_model_results(folder = "outputs/pairs/grip_wordlistdelayed")
ds <- readRDS(file.path(pathFolder,"grip_wordlistdelayed.rds")) # load the data for outcome pare
kb_profiles(ds,  vertical="wave_count",  border=5) # produce the kb_profile graph

#### Grip - word list recognition ####
collect_model_results(folder = "outputs/pairs/grip_wordlistrec")
ds <- readRDS(file.path(pathFolder,"grip_wordlistrec.rds")) # load the data for outcome pare
kb_profiles(ds,  vertical="wave_count",  border=5) # produce the kb_profile graph



############################################################ FEV #####

#### FEV - Categories ####
# generate mplus scripts
make_script_waves(
  prototype = "scripts/mplus/prototype/prototype_b1_RADC.inp"
  ,place_in = "outputs/pairs/fev_categories"
  ,processP_name = "fev" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'categories'# measure name
  ,processC = 'cts_catflu'# Mplus variable
  ,covariates = "a"
  ,least_waves = "4"
  ,most_waves = "18"
  ,all_waves = "21"
  ,run_models = run_models_on
)
collect_model_results(folder = "outputs/pairs/fev_categories")
ds <- readRDS(file.path(pathFolder,"fev_categories.rds")) # load the data for outcome pare
kb_profiles(ds,  vertical="wave_count",  border=5) # produce the kb_profile graph


#### FEV - Digit Symbol ####
# generate mplus scripts
make_script_waves(
  prototype = "scripts/mplus/prototype/prototype_b1_RADC.inp"
  ,place_in = "outputs/pairs/fev_digitsymbol"
  ,processP_name = "fev" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'digitsymbols'# measure name
  ,processC = 'cts_sdmt'# Mplus variable
  ,covariates = "a"
  ,least_waves = "4"
  ,most_waves = "18"
  ,all_waves = "21"
  ,run_models = run_models_on
)
collect_model_results(folder = "outputs/pairs/fev_digitsymbol")
ds <- readRDS(file.path(pathFolder,"fev_digitsymbol.rds")) # load the data for outcome pare
kb_profiles(ds,  vertical="wave_count",  border=5) # produce the kb_profile graph


#### FEV - Word List Im ####
# generate mplus scripts
make_script_waves(
  prototype = "scripts/mplus/prototype/prototype_b1_RADC.inp"
  ,place_in = "outputs/pairs/fev_wordlistimmed"
  ,processP_name = "fev" # measure name
  ,processP = "fev" # Mplus variable
  ,processC_name = 'wordlistimmed'# measure name
  ,processC = 'cts_wli'# Mplus variable
  ,covariates = "a"
  ,least_waves = "4"
  ,most_waves = "18"
  ,all_waves = "21"
  ,run_models = run_models_on
)
collect_model_results(folder = "outputs/pairs/fev_wordlistimmed")
ds <- readRDS(file.path(pathFolder,"fev_wordlistimmed.rds")) # load the data for outcome pare
kb_profiles(ds,  vertical="wave_count",  border=5) # produce the kb_profile graph


#### FEV - MMSE ####
# generate mplus scripts
make_script_waves(
  prototype = "scripts/mplus/prototype/prototype_b1_RADC.inp"
  ,place_in = "outputs/pairs/fev_mmse"
  ,processP_name = "fev" # measure name 
  ,processP = "fev" # Mplus variable
  ,processC_name = 'mmse'# measure name
  ,processC = 'cts_mmse30'# Mplus variable
  ,covariates = "a"
  ,least_waves = "5"
  ,most_waves = "20"
  ,all_waves = "21"
  ,run_models = run_models_on
)
# the following function is defined in extraction_functions.R  script
collect_model_results(folder = "outputs/pairs/fev_mmse")
ds <- readRDS(file.path(pathFolder,"fev_mmse.rds")) # load the data for outcome pare
kb_profiles(ds,  vertical="wave_count",  border=5) # produce the kb_profile graph




