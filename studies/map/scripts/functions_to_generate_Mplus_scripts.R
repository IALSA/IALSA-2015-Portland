# ## This script
# options(width=160)
# rm(list=ls())
# cat("\f")
#
# ## @knitr load_packages
# library(dplyr)
# library(ggplot2)
# library(tidyr)
# library(IalsaSynthesis)
#
# processP = "grip"
# processC = "digit_symbols"
# covariates = "a"

make_script_waves <- function(
                              prototype = "studies/map/scripts/prototype/prototype_b1_RADC.inp",
                              place_in = "studies/map/scripts/mplus_scripts",
                              processP_name = "grip", # goes into the name of the file
                              processP = "gripavg", # goes into the mplus script
                              processC_name = 'digitsymbols',
                              covariates = "a",
                              processC = 'cts_catflu',
                              least_waves = "4",
                              most_waves = "18",
                              all_waves = "21",
                              sex = "male",
                              run_models = FALSE){

  # get a the prototypical model script
  # pathFile <- "./scripts/mplus/prototype/prototype_b1_RADC.inp"
  pathFile <- paste0(pathRoot,"/",prototype)
  # point to the folder where new files should go to
  outFolder <- paste0(pathRoot,"/",place_in)


  #gender <- c("male",'female')
  #for(sex in gender){

    waves <- as.character(c(least_waves:most_waves))
    for(wave in waves){

      # newFile <-  "./scripts/mplus/prototype/new_b1_male_a_grip_categories_18.inp"
      newFile <- paste0(outFolder,"/","b1","_", sex ,"_",covariates,"_",processP_name,"_",processC_name,"_",wave,".inp")

      proto_input <- scan(pathFile, what='character', sep='\n')


      line_found <- (grep("!define the variables used in the analysis", proto_input))
      proto_input[line_found+1] <- gsub("timeXX", paste0("time",wave), proto_input[line_found+1])
      proto_input[line_found+2] <- gsub("pXX",    paste0("p",wave), proto_input[line_found+2])
      proto_input[line_found+3] <- gsub("cXX",    paste0("c",wave), proto_input[line_found+3])


      line_found <- (grep("!define the time points", proto_input))
      proto_input[line_found+1] <- gsub("timeXX", paste0("time",wave), proto_input[line_found+1])


      line_found <- (grep("!select a subset of observations", proto_input))
      if(sex=="male"){
            print_sex_value <- paste0("msex EQ 1")}else{
            print_sex_value <- paste0("msex EQ 0")}
      proto_input[line_found+1] <- gsub("msex EQ XX", print_sex_value, proto_input[line_found+1])


      line_found <- (grep("!assign variables to the process p", proto_input))
      for(i in 1:21){
        proto_input[line_found+i] <- gsub("processP", processP, proto_input[line_found+i])
      }


      line_found <- (grep("!assign variables to the process c", proto_input))
      for(i in 1:21){
        proto_input[line_found+i] <- gsub("processC", processC, proto_input[line_found+i])
      }


      line_found <- (grep("! define the second-level terms", proto_input))
      if(sex=="male"){
        heightc <- paste0("1.72")}else{
        heightc <- paste0("1.60")}
      proto_input[line_found+3] <- gsub("XX", heightc, proto_input[line_found+3])


      line_found <- (grep("!first-level equation", proto_input))
      proto_input[line_found+1] <- gsub("pXX",    paste0("p",wave), proto_input[line_found+1])
      proto_input[line_found+1] <- gsub("timeXX", paste0("time",wave), proto_input[line_found+1])
      proto_input[line_found+2] <- gsub("cXX",    paste0("c",wave), proto_input[line_found+2])
      proto_input[line_found+2] <- gsub("timeXX", paste0("time",wave), proto_input[line_found+2])


      line_found <- (grep("!residual means", proto_input))
      proto_input[line_found+1] <- gsub("pXX", paste0("p",wave), proto_input[line_found+1])
      proto_input[line_found+2] <- gsub("cXX", paste0("c",wave), proto_input[line_found+2])


      line_found <- (grep("!Paired covariances constrained to be equal across t", proto_input))
      proto_input[line_found+1] <- gsub("pXX", paste0("p",wave), proto_input[line_found+1])
      proto_input[line_found+1] <- gsub("cXX", paste0("c",wave), proto_input[line_found+1])

      writeLines(proto_input,newFile)
    } #close wave loop
  #} #close sex loop
  # run_models <- TRUE
  if(run_models){
  # run all models in the folder
  MplusAutomation::runModels(directory=outFolder )#, Mplus_command = Mplus_install_path)
  }
} # close function



