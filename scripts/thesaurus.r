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










