validate_filename_output <- function( filename ) {
  underscore_count <- sum(grepl(pattern="_", x=filename, perl=T))
  testit::assert("An output filename should contain exactly 4 underscores.", underscore_count==4L)
}

#   mplus_output <- scan(file=file.path(pathStudy, msum$Filename[i]), what='character', sep='\n')
#   mplus_model <- strsplit(msum$Filename[i], split="_|.out") # split file name to extract model specs
#
#   mplus_model[[1]][[2]] # returns group identifier: male, female
#   mplus_model[[1]][[3]] # returns covariates identifier: empty, age, full
#   mplus_model[[1]][[4]] # returns physical outcome: noPhys, pulmonary, muscle, walking, chair, flamingo, summary
#   mplus_model[[1]][[5]] # returns cognitive outcome: noCOg, knowledge, reasoning, speed, visuospatial, executive, mental
