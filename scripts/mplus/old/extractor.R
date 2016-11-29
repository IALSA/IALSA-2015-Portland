# # this script contains the definitions of the functions that extract the results of model estimation
#
# extractor <- function( mplus_output ) {
#   requireNamespace("IalsaSynthesis"); #devtools::install_github("IALSA/IalsaSynthesis")
#
#
#   one_liners <- c("parameter_count", "loglikelihood", "aic", "bic", "bic_adjusted")
#
#   d <- data.frame(
#     name  = one_liners,
#     value = NA_real_,
#     stringsAsFactors = FALSE
#   )
#   rownames(d) <- d$name
#
# browser()
#
#   d["parameter_count"    , ]$value <- IalsaSynthesis::extract_free_parameter_count(mplus_output)
#   d["loglikelihood"      , ]$value <- IalsaSynthesis::extract_loglikelihood(mplus_output)
#   d["aic"                , ]$value <- IalsaSynthesis::extract_aic(mplus_output)
#   d["bic"                , ]$value <- IalsaSynthesis::extract_bic(mplus_output)
#   d["bic_adjusted"       , ]$value <- IalsaSynthesis::extract_bic_adjusted(mplus_output)
#
#   # MplusAutomation:::extractInput_1file(mplus_output, "screw you")
#
#   return( d )
# }
#
# mplus_output <- readr::read_file("./studies/eas/physical-cognitive/without-errors/b1_female_ae_walking_executive_gait_trailsb.out")
#
# extractor(mplus_output)

extractor1 <- function( path ) {
  # if( !file.exists(path)) stop("zzzz")
  one_liners <- MplusAutomation::extractModelSummaries(path)
  parameters <- MplusAutomation::extractModelParameters(path)

  # if( length(parameters) <= 0) stop("zzzz")
  # browser()

  list(one_liners=one_liners, parameters=parameters[[1]])
}


extractor2 <- function(p2, headerZZ, paramZZ) {
# browser()
  p2[p2$paramHeader==headerZZ & p2$param==paramZZ, ]
}

e <- extractor1("./studies/eas/physical-cognitive/without-errors/Gait/b1_female_ae_walking_executive_gait_trailsb.out")
p <- e$parameters
extractor2(p, "IP.ON", "EDUC")

MplusAutomation::extractModelSummaries("./studies/eas/physical-cognitive/without-errors/b1_female_ae_walking_executive_gait_trailsb.out")
MplusAutomation::extractModelParameters("./studies/eas/physical-cognitive/without-errors/b1_female_ae_walking_executive_gait_trailsb.out")
MplusAutomation::extractModelSummaries("./studies/eas/physical-cognitive/with-errors/NEW models for PEK/b1_female_full_pulmonary_memory_pek_digitspantotal.out")
MplusAutomation::extractModelParameters("./studies/eas/physical-cognitive/with-errors/NEW models for PEK/b1_female_full_pulmonary_memory_pek_digitspantotal.out")
# MplusAutomation::extract.mplus.model("./studies/eas/physical-cognitive/with-errors/NEW models for PEK/b1_female_full_pulmonary_memory_pek_digitspantotal.out")
