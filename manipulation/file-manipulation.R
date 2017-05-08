

# desing a function to rename many files
folder <- "./studies/eas/physical/"

add_extension <- function(folder, ext, fire=FALSE){
  # values for testing
  # folder <- "./studies/eas/physical/"
  # ext <- ".dat"
  #
  names_full <- list.files(folder,recursive = T, full.names = T)
  names_base <- basename(names_full)
  with_extension <- grep("[.]\\w+$", names_base, value = T)
  without_extension <- setdiff(names_base, with_extension)
  num_key  <- names_base %in% without_extension
  #
  path_old <- names_full[num_key]
  path_new <- paste0(path_old,ext)
  #
  print(without_extension)
  #
  if(fire){
    file.rename(from = path_old, to = path_new)
  }

}
# Usage
# folder <- "./studies/eas/physical/"
# add_extension(folder,".dat", fire=F)
# add_extension(folder,".dat", fire=T)


# ---- add-extension ---------------------
folder <- "./studies/eas"
add_extension(folder,".dat", fire=T)
