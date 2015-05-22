## The script demonstrates and explains the use of main functions in the this repository

getwd()
pathFile <- "./studies/b1_female_ae_muscle_fluency_grip_bostonnamingTest.out"


# strsplit()
# Split the Elements of a Character Vector

b <- strsplit(pathFile,"_")
b
c <- strsplit(pathFile,"_|.out")
c

# scan()
# reads data into a vector or a list from console or file
a <- scan(pathFile, what='character', sep='\n')
a


# which()
# Give the TRUE indices of a logical object, allowing for array indices.
a <- strsplit("Copyright (c) 1998-2014 Muthen & Muthen",split=" ")
a[[1]]=="Muthen"
b <- which(a[[1]]=="Muthen")
b

# grep ()
# Pattern Matching and Replacement
#  return each line of the file as character string
a <- scan(pathFile, what='character', sep='\n')
str(a) # character vector with 557 element
# return the number of the element that contains the patten
b <- grep("CONFIDENCE INTERVALS OF MODEL", a)
b


# Converting lists of character elements with unequal length into a dataframe
a <- c("a1", "b1", "c1")
b <- c("a2","b2")
lc <- list(a,b)
x <- as.data.frame(plyr::rbind.fill.matrix(lapply(lc,t)))
x


## @knitr select_from_character_vector
# http://journal.r-project.org/archive/2010-2/RJournal_2010-2_Wickham.pdf
a <- "My name is"
# the first character
b <- stringr::str_sub(a,1,1); b
# the last character
c <- stringr::str_sub(a,-1,-1); c
# the last two characters
d <- stringr::str_sub(a,-2,-1); d



## @knitr testing_number_of_components
a <- "b1_male_aehplus_pulmonary_visuospatial_fev_lineorientation.out"
b <- "u1_female_aeh_nophys_block.out"
c <- "u1_female_aeh_chairstand_nocog.out"

ds <- as.data.frame(output_file <- c(a,b,c))
ds$output_file <- as.character(ds$output_file)
head(ds)

desired_subpart_count <- 7L
ds$model_name <- gsub(pattern=".out",replacement="",ds$output_file) # remove .out ending
subparts <- strsplit(ds$model_name,"_") # break up each  model_name, store in a list
subpart_count <- sapply(subparts, length) # count compents in each element of the list
is_valid <- (subpart_count==desired_subpart_count) # create logical vector

ds$output_file[!is_valid]








