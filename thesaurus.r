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
