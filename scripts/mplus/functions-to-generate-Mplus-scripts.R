# ## This script declares the functions that generate Mplus .inp file used in model fitting.

mplus_generator_bivariate <- function(
   model_number
  ,subgroup
  ,model_type
  ,process_a
  ,process_b

  ,wave_set_modeled
  ,subset_condition_1
  ,path_prototype
  ,folder_data
  ,folder_output
  ,run_models         = FALSE # I
){
  #Values for testing and development
  # model_number       = "b1"
  # subgroup           = "male"
  # model_type         = "aehplus"
  # process_a     = 'fev'# item name of process (A), goes into file name
  # process_b     = 'numbercomparison'# item name of process (B), goes into file name

    # wave_set_modeled   =  c(1,2,3,4,5, 6,7, 8, 9, 11)
  # subset_condition_1 = "dementia_ever NE 1" # subset data to member of this group
  # folder_data        = "./data/unshared/derived/map-1"
  # path_prototype     = "./sandbox/pipeline-demo-1/prototype-wide.inp"
  # folder_output      = "./sandbox/pipeline-demo-1/outputs/"
  # run_models         = FALSE # If TRUE then Mplus runs estimation to produce .out, .gh5, and/or, other files

  model_id  <- paste0(model_number,"_",subgroup,"_",model_type,"_",process_a,"_",process_b)

  covariate_set <- ls_model_type[[model_type]]

  sub_directory <- paste0(folder_output,"/",process_a,"-",process_b)
  dir.create(sub_directory, showWarnings = TRUE)
  path_generic_data <- file.path(folder_data,"wide-dataset.dat")
  path_local_data <- file.path(sub_directory,"wide-dataset.dat")
  path_generic_names <- file.path(folder_data,"wide-variable-names.txt")

  file.copy(
    from=path_generic_data,
    to  =path_local_data,
    overwrite = TRUE
  )

  # after modification .inp files will be saved as:
  input_file_name <- paste0(sub_directory,"/", model_id, ".inp")

  if(is.numeric(wave_set_modeled)){
    a <- as.character(wave_set_modeled)
    for(i in seq_along(a)){
      a[i] <- ifelse( a[i] %in% paste0(0:9), paste0("0",a[i]),a[i])
    }
    wave_set_modeled <- a
  }


  # input the template to work with
  proto_input <- scan(path_prototype, what='character', sep='\n')
  #This makes it all one (big) element, if you need it in the future.
  # proto_input <- paste(proto_input, collapse="\n")

  names_are <- read.csv(path_generic_names, header = F, stringsAsFactors = F)[ ,1]

  # TITLE:
  # DATA:
  # File = wide_dataset.dat; # automatic object, created by `look-at-data.R`


  # VARIABLE:
  # NAMES are
  # define what variables exist in the dataset
  names_are <- paste(names_are, collapse="\n")  #Collapse all the variable names to one element (seperated by line breaks).
  names_are <- stringr::str_wrap(str = names_are, width  = 80, exdent = 4)
  proto_input <- gsub(pattern = "%names_are%", replacement = names_are, x = proto_input)


  # USEVARIABLES are
  # define what variables are used in estimation
  (estimated_timepoints <- paste0("time","_",wave_set_modeled))
  (estimated_timepoints <- paste(estimated_timepoints, collapse="\n"))
  proto_input <- gsub(pattern ="%estimated_timepoints%", replacement = estimated_timepoints, x = proto_input)

  (process_a_timepoints <- paste0("a","_",wave_set_modeled))
  (process_a_timepoints <- paste(process_a_timepoints, collapse="\n"))
  proto_input <- gsub(pattern ="%process_a_timepoints%", replacement = process_a_timepoints, x = proto_input)

  (process_b_timepoints <- paste0("b","_",wave_set_modeled))
  (process_b_timepoints <- paste(process_b_timepoints, collapse="\n"))
  proto_input <- gsub(pattern ="%process_b_timepoints%", replacement = process_b_timepoints, x = proto_input)

  (covariate_set <- paste(covariate_set, collapse="\n"))
  proto_input <- gsub(pattern = "%covariate_set%", replacement = covariate_set, x = proto_input)


  # USEOBSERVATIONS are
  # select a subset of observation
  # TODO: allow for dynamic specification of the grouping variable (male) and values (0,1)
  if(subgroup == "male"){
    print_subgroup_condition <- paste0("male EQ 1")
  }
  if(subgroup == "female"){
    print_subgroup_condition <- paste0("male EQ 0")
  }
  if(subgroup == "unisex"){
    print_subgroup_condition <- paste0("male EQ 0 or male EQ 1 ")
  }
  # subset
  proto_input <- gsub("%subgroup_condition%", print_subgroup_condition, proto_input)
  proto_input <- gsub("%subset_condition_1%", subset_condition_1, proto_input)

  # DEFINE:
  (match_timepoints_process_a <- paste0("a","_",wave_set_modeled,"=",process_a,"_",wave_set_modeled,";"))
  match_timepoints_process_a <- paste(match_timepoints_process_a, collapse="\n")
  proto_input <- gsub(pattern ="%match_timepoints_process_a%", replacement = match_timepoints_process_a, x = proto_input)

  (match_timepoints_process_b <- paste0("b","_",wave_set_modeled,"=",process_b,"_",wave_set_modeled,";"))
  match_timepoints_process_b <- paste(match_timepoints_process_b, collapse="\n")
  proto_input <- gsub(pattern ="%match_timepoints_process_b%", replacement = match_timepoints_process_b, x = proto_input)

  (match_time_since_bl <- paste0("time","_",wave_set_modeled,"=", "years_since_bl","_",wave_set_modeled,";"))
  match_time_since_bl <- paste(match_time_since_bl, collapse="\n")
  proto_input <- gsub(pattern ="%match_timepoints%", replacement = match_time_since_bl, x = proto_input)

  # ANALYSIS:
  # MODEL:

  # define process (A) in time points
  (assing_a_to_timepoints <- paste0("ia sa | a","_",wave_set_modeled," AT ","time","_",wave_set_modeled," ;"))
  (assing_a_to_timepoints <- paste(assing_a_to_timepoints, collapse="\n"))
  proto_input <- gsub(pattern ="%assing_a_to_timepoints%", replacement = assing_a_to_timepoints, x = proto_input)

  # define process (B) in time points
  (assing_b_to_timepoints <- paste0("ib sb | b","_",wave_set_modeled," AT ","time","_",wave_set_modeled," ;"))
  (assing_b_to_timepoints <- paste(assing_b_to_timepoints, collapse="\n"))
  proto_input <- gsub(pattern ="%assing_b_to_timepoints%", replacement = assing_b_to_timepoints, x = proto_input)

  # residual covariance of process (A)
  (resid_covariance_a <- paste0("a","_",wave_set_modeled," (res_a);"))
  (resid_covariance_a <- paste(resid_covariance_a, collapse="\n"))
  proto_input <- gsub(pattern ="%resid_covariance_a%", replacement = resid_covariance_a, x = proto_input)

  # residual covariance of process (B)
  (resid_covariance_b <- paste0("b","_",wave_set_modeled," (res_b);"))
  (resid_covariance_b <- paste(resid_covariance_b, collapse="\n"))
  proto_input <- gsub(pattern ="%resid_covariance_b%", replacement = resid_covariance_b, x = proto_input)

  # residual covariances of processes
  (resid_covariances <- paste0("a","_",wave_set_modeled," pwith ", "b","_", wave_set_modeled," (res_cov);"))
  (resid_covariances <- paste(resid_covariances, collapse="\n"))
  proto_input <- gsub(pattern ="%resid_covariances%", replacement = resid_covariances, x = proto_input)


  # browser()

  # MODEL CONSTRAINT:

  # SAVEDATA:
  # FILE is
  proto_input <- gsub("%saved_analysis%", model_id, proto_input)

  # OUTPUT:
  # PLOT:

  writeLines(proto_input,input_file_name)

  if(run_models){
    # run all models in the folder
    pathRoot <- getwd()
    saved_location_mplus <- paste0(pathRoot,"/",sub_directory)
    saved_location_mplus <- gsub("/./","/",saved_location_mplus)
    MplusAutomation::runModels(
      directory=saved_location_mplus,
      filefilter = paste0(model_id,".inp")
      )#, Mplus_command = Mplus_install_path)
  }
  file.remove(path_local_data)
} # close function
