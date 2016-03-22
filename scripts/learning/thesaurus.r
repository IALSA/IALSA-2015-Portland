## The script demonstrates and explains the use of main functions in the this repository
getwd()
pathFile <- "./studies/b1_female_ae_muscle_fluency_grip_bostonnamingTest.out"

# @knitr rooting_file_paths -----------------------------------
# given a character string with a file's address path
example_string <- "C:/Users/koval_000/Documents/GitHub/IALSA-2015-Portland/studies/satsa/physical/copy_27_Oct/b1_male_aehplus_grip_fev.out"
# split the path into bits separated by the slash "/" sign
(a <- strsplit(example_string, split="/"))
# create a dummy logical vector searching for the word "studies"
(selector <- a[[1]] %in% c("studies"))
# count in  what position "TRUE" occurs
(position_number <- c(1:length(selector))[selector])
# take first element to the right (+1) of where you found "studies"
(study_name[i] <- a[[1]][position_number+1])

## Alternative
subparts <- strsplit(ds$model_name,"_") # break up each  model_name, store in a list
subpart_count <- sapply(subparts, length) # count compents in each element of the list
is_valid <- (subpart_count==desired_subpart_count) # create logical vector



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


# ----- splitting-character-into-multiples ----------------------------
# http://stackoverflow.com/questions/7069076/split-column-at-delimiter-in-data-frame
# given a data frame
(ds <- data.frame(v0 = c("a_b_d","a_c_a","d_w"),stringsAsFactors = F))
# GOAL: split "v0" into two variables containing elements separated by "_"

# using do.call
foo <- data.frame(do.call("rbind", strsplit(as.character(ds$v0),split = "_")))
foo <- plyr::rename(foo, replace = c("X1" = "one", "X2" = "two"))
foo

# using tidyr::
foo2 <- ds %>% tidyr::separate(col=v0, into = c("one","two","three"), sep = "_" ); foo2

# using for loop
foo3 <- ds
for(i in seq_along(foo3$v0)){
  subject <- strsplit(foo3[i,"v0"], split = "_")[[1]]
  foo3[i,"one"] <- subject[1]
  foo3[i,"two"] <- subject[2]
  foo3[i,"three"] <- subject[3]
}; foo3


## @knitr passing_variable_names
###########  START creating a function for the tile graph ###############

# passing unquoted variable names use aes() or dplyr::count() - NONSTANDARD EVALUATIONS (NSE)
# passing quoted variable names use aes_string() or dplyr::count_() - STANDARD EVALUATION

ds <- readRDS("./data/shared/ds1a.rds")

requireNamespace("dplyr") # loads, but not really

## @knitr define_themes
baseSize <- 10
theme1 <- ggplot2::theme_bw(base_size=baseSize) +
  ggplot2::theme(title=ggplot2::element_text(colour="gray20",size = baseSize+1)) +
  ggplot2::theme(axis.text=ggplot2::element_text(colour="gray40", size=baseSize-2)) +
  ggplot2::theme(axis.title=ggplot2::element_text(colour="gray40")) +
  ggplot2::theme(panel.border = ggplot2::element_rect(colour="gray80")) +
  ggplot2::theme(axis.ticks.length = grid::unit(0, "cm")) +
  ggplot2::theme(text = element_text(size =baseSize+7))



basic_tile <- function(ds,x_name){
  # Define color palette and display labels
  x_name_colors <- c("physical_measure"="#e78ac3",
                     "study_name"="#8da0cb",
                     "model_type"="#fc8d62",
                     "subgroup"="#66c2a5")
  x_name_labels <- c("physical_measure"="Physical Measure",
                     "study_name"="Study",
                     "model_type"="Predictor Set",
                     "subgroup"="Sex Subgroup")
  # define the data
  d <- ds %>% dplyr::count_(c("cognitive_measure", x_name))
  #
  g <- ggplot2::ggplot(d, aes_string(x=x_name, y="cognitive_measure", fill="n", label="n"))
  g <- g + geom_tile()
  g <- g + geom_text(size = baseSize-6)
  g <- g + scale_y_discrete(limits=rev(unique(d$cognitive_measure)))
  g <- g + scale_fill_gradient(low="white", high=x_name_colors[x_name], na.value = "white")
  g <- g + labs(title=x_name_labels[x_name], x=NULL, y="Cognitive Measures")
  g <- g + theme1
  g <- g + theme(axis.text.y = element_text(hjust=1, angle=0),
                 axis.text.x = element_text(hjust=1, angle=90, size=9),
                 legend.position="top")
  return(g)
}
basic_tile(ds,"physical_measure")
basic_tile(ds,"study_name")
basic_tile(ds,"model_type")
basic_tile(ds,"subgroup")

###########  END creating a function for the tile graph ###############



## @knitr pass_strings_to_facet_grid
# http://stackoverflow.com/questions/21588096/pass-string-to-facet-grid-ggplot2

FUN <- function(data, x, y, fac1, fac2) {
      ggplot(data = data, aes_string(x=x, y=y)) +
      geom_point() + facet_grid(reformulate(fac2,fac1))
}

FUN(mtcars, 'hp', 'mpg', 'cyl', 'am')


## @knitr remove_leading_zeros
a <- c(100, 100/3, 1/3, -1/3, -100/3, "0.33b")
gsub("^(\\[+-])?(0)?(\\.\\d+)$", "\\1\\3", a)


## @knitr insert_greek_letters_into_md
# http://www.scriptingmaster.com/html/inserting-greek-letters.asp


## @knitr sub_and_super_scripts_markdown
# <sub>2</sub>
# <sup>3</sup>



# ----- passing-character-vector-to-dplyr-calls --------------
dlong <- dlong %>% dplyr::arrange_(.dots=stem_vars)

