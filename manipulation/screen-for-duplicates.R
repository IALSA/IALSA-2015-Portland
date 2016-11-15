
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




feb27
jun16
nov06
nov14

intersect(feb27, jun16)
intersect(feb27, nov06)
intersect(feb27, nov14)

intersect(nov06, nov14)
