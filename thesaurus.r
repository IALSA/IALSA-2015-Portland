## The script demonstrates and explains the use of main functions in the this repository


# strsplit()
# Split the Elements of a Character Vector
a <- "b1_female_ae_muscle_fluency_grip_bostonnaming.out"
b <- strsplit(a,"_")
b
c <- strsplit(a,"_|.out")
c

# scan()
# reads data into a vector or a list from console or file
a <- scan("C:/Users/andkov/Documents/GitHub/IALSA-2015-Portland/studies/eas/b1_female_aeh_pulmonary_memory_pek_digitspan.out", what='character', sep='\n')
a


# which()
# Give the TRUE indices of a logical object, allowing for array indices.
a <- strsplit("Copyright (c) 1998-2014 Muthen & Muthen",split=" ")
a[[1]]=="Muthen"
b <- which(a[[1]]=="Muthen")
b
