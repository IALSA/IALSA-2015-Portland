
feb27 <-  list.files(
  "./studies/satsa/physical-cognitive/plus_models/2015-02-27",
  full.names=F, recursive=T, pattern="out$")

jun16 <-  list.files(
  "./studies/satsa/physical-cognitive/plus_models/2015-06-16",
  full.names=F, recursive=T, pattern="out$")

nov06 <-  list.files(
  "./studies/satsa/physical-cognitive/plus_models/2015-11-06",
full.names=F, recursive=T, pattern="out$")

nov14 <-  list.files(
  "./studies/satsa/physical-cognitive/plus_models/2016-11-14",
full.names=F, recursive=T, pattern="out$")




# feb27
# jun16
# nov06
# nov14

intersect(feb27, jun16)
intersect(feb27, nov06)
intersect(feb27, nov14) #
setdiff(feb27, nov14) # unique to first

file.copy(from, to, overwrite = recursive, recursive = FALSE,
          copy.mode = TRUE, copy.date = FALSE)


intersect(jun16, nov06)
intersect(jun16, nov14)

intersect(nov06, nov14)

# ---- duplicates-in-catalog -------------------
catalog <- read.csv("./data/shared/pc-2-parsed-results-computed_ci.csv", header = T,  stringsAsFactors=FALSE)

catalog %>%
  dplyr::filter(study_name == "satsa") %>%
  dplyr::group_by_(.dots = model_components$id) %>%
  dplyr::summarize(n = n()) %>%
  dplyr::arrange(desc(n))
  dplyr::filter(model_type == "aehplus") %>%
  dplyr::filter(process_a == "fev" & process_b == "analogies")

  dplyr::select_(.dots = c(model_components$id,"output_file"))
