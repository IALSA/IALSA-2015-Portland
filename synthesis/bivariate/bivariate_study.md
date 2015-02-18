# Bivariate Outcomes -- Study-Specific


This report covers the analyses used in the ZZZ project (Marcus Mark, PI).

<!--  Set the working directory to the repository's base directory; this assumes the report is nested inside of two directories.-->


<!-- Set the report-wide options, and point to the external code file. -->


<!-- Load the sources.  Suppress the output when loading sources. --> 


<!-- Load 'sourced' R files.  Suppress the output when loading packages. --> 


<!-- Load any Global functions and variables declared in the R file.  Suppress the output. --> 


<!-- Declare any global functions specific to a Rmd output.  Suppress the output. --> 


<!-- Load the datasets.   -->


<!-- Tweak the datasets.   -->


<!-- Calculate the forest results (but don't plot yet).   -->


## Notes

**Note 1**: The current report covers 3 studies: elsa, octo, radc.

**Note 2**: The Seattle track's phluguerstometer was producing flaky negative values; it's measurements have been dropped.

# Study-Specific Tables
One table is shown for each study, each representing zzz.

## elsa

|model_number | version|active |date       |time  |study_name |converged |subgroup | subject_count| wave_count|    n| parameter_count| deviance|cognitive_outcome   | var_int_cog| var_slope_cog| var_residual_cog|physical_outcome      | var_int_physical| var_slope_physical| var_residual_physical| cov_int| cov_slope| cov_residual| p_cov_int| p_cov_slope| p_cov_res|input_file |output_file |software |model_description |
|:------------|-------:|:------|:----------|:-----|:----------|:---------|:--------|-------------:|----------:|----:|---------------:|--------:|:-------------------|-----------:|-------------:|----------------:|:---------------------|----------------:|------------------:|---------------------:|-------:|---------:|------------:|---------:|-----------:|---------:|:----------|:-----------|:--------|:-----------------|
|model_1      |     0.1|TRUE   |2015-02-13 |14:45 |ELSA       |FALSE     |FEMALE   |           345|          6| 1234|              12|      345|Muscle strength     |      0.8332|        0.8358|           0.2436|Speed                 |           0.4458|             0.0305|                0.5409|    0.34|    0.7510|       0.0361|    0.0181|      0.9806|    0.7346|NA         |NA          |Mplus    |NA                |
|model_2      |     1.1|TRUE   |2015-02-14 |15:45 |ELSA       | TRUE     |MALE     |           765|          6|  434|              12|      765|Flamingo stand time |      0.8506|        0.4051|           0.5791|Executive functioning |           0.1427|             0.0749|                0.3759|    0.56|    0.1704|       0.4619|    0.3937|      0.9611|    0.2790|NA         |NA          |R        |NA                |
[1] "|model_number | version|active |date       |time  |study_name |converged |subgroup | subject_count| wave_count|    n| parameter_count| deviance|cognitive_outcome   | var_int_cog| var_slope_cog| var_residual_cog|physical_outcome      | var_int_physical| var_slope_physical| var_residual_physical| cov_int| cov_slope| cov_residual| p_cov_int| p_cov_slope| p_cov_res|input_file |output_file |software |model_description |"
[2] "|:------------|-------:|:------|:----------|:-----|:----------|:---------|:--------|-------------:|----------:|----:|---------------:|--------:|:-------------------|-----------:|-------------:|----------------:|:---------------------|----------------:|------------------:|---------------------:|-------:|---------:|------------:|---------:|-----------:|---------:|:----------|:-----------|:--------|:-----------------|"
[3] "|model_1      |     0.1|TRUE   |2015-02-13 |14:45 |ELSA       |FALSE     |FEMALE   |           345|          6| 1234|              12|      345|Muscle strength     |      0.8332|        0.8358|           0.2436|Speed                 |           0.4458|             0.0305|                0.5409|    0.34|    0.7510|       0.0361|    0.0181|      0.9806|    0.7346|NA         |NA          |Mplus    |NA                |"
[4] "|model_2      |     1.1|TRUE   |2015-02-14 |15:45 |ELSA       | TRUE     |MALE     |           765|          6|  434|              12|      765|Flamingo stand time |      0.8506|        0.4051|           0.5791|Executive functioning |           0.1427|             0.0749|                0.3759|    0.56|    0.1704|       0.4619|    0.3937|      0.9611|    0.2790|NA         |NA          |R        |NA                |"

## octo

|model_number | version|active |date       |time  |study_name |converged |subgroup | subject_count| wave_count|    n| parameter_count| deviance|cognitive_outcome  | var_int_cog| var_slope_cog| var_residual_cog|physical_outcome     | var_int_physical| var_slope_physical| var_residual_physical| cov_int| cov_slope| cov_residual| p_cov_int| p_cov_slope| p_cov_res|input_file |output_file |software |model_description |
|:------------|-------:|:------|:----------|:-----|:----------|:---------|:--------|-------------:|----------:|----:|---------------:|--------:|:------------------|-----------:|-------------:|----------------:|:--------------------|----------------:|------------------:|---------------------:|-------:|---------:|------------:|---------:|-----------:|---------:|:----------|:-----------|:--------|:-----------------|
|model_1      |     0.1|TRUE   |2015-02-13 |14:45 |OCTO       | TRUE     |MALE     |           455|          5| 4567|              11|     2345|Walking speed time |      0.9025|        0.3163|           0.5058|Visuospatial ability |           0.7765|             0.6504|                0.0078|    0.34|    0.6088|       0.2789|    0.4320|      0.3600|    0.8363|NA         |NA          |Mplus    |NA                |
|model_2      |     1.1|TRUE   |2015-02-14 |15:45 |OCTO       |FALSE     |FEMALE   |           343|          5| 6543|              11|      765|Chair rise time    |      0.0684|        0.5110|           0.0621|Mental status        |           0.9819|             0.5696|                0.6640|    0.56|    0.7661|       0.9950|    0.5289|      0.8678|    0.6725|NA         |NA          |R        |NA                |
[1] "|model_number | version|active |date       |time  |study_name |converged |subgroup | subject_count| wave_count|    n| parameter_count| deviance|cognitive_outcome  | var_int_cog| var_slope_cog| var_residual_cog|physical_outcome     | var_int_physical| var_slope_physical| var_residual_physical| cov_int| cov_slope| cov_residual| p_cov_int| p_cov_slope| p_cov_res|input_file |output_file |software |model_description |"
[2] "|:------------|-------:|:------|:----------|:-----|:----------|:---------|:--------|-------------:|----------:|----:|---------------:|--------:|:------------------|-----------:|-------------:|----------------:|:--------------------|----------------:|------------------:|---------------------:|-------:|---------:|------------:|---------:|-----------:|---------:|:----------|:-----------|:--------|:-----------------|"
[3] "|model_1      |     0.1|TRUE   |2015-02-13 |14:45 |OCTO       | TRUE     |MALE     |           455|          5| 4567|              11|     2345|Walking speed time |      0.9025|        0.3163|           0.5058|Visuospatial ability |           0.7765|             0.6504|                0.0078|    0.34|    0.6088|       0.2789|    0.4320|      0.3600|    0.8363|NA         |NA          |Mplus    |NA                |"
[4] "|model_2      |     1.1|TRUE   |2015-02-14 |15:45 |OCTO       |FALSE     |FEMALE   |           343|          5| 6543|              11|      765|Chair rise time    |      0.0684|        0.5110|           0.0621|Mental status        |           0.9819|             0.5696|                0.6640|    0.56|    0.7661|       0.9950|    0.5289|      0.8678|    0.6725|NA         |NA          |R        |NA                |"

## radc

|model_number | version|active |date       |time  |study_name |converged |subgroup | subject_count| wave_count|    n| parameter_count| deviance|cognitive_outcome  | var_int_cog| var_slope_cog| var_residual_cog|physical_outcome      | var_int_physical| var_slope_physical| var_residual_physical| cov_int| cov_slope| cov_residual| p_cov_int| p_cov_slope| p_cov_res|input_file |output_file |software |model_description |
|:------------|-------:|:------|:----------|:-----|:----------|:---------|:--------|-------------:|----------:|----:|---------------:|--------:|:------------------|-----------:|-------------:|----------------:|:---------------------|----------------:|------------------:|---------------------:|-------:|---------:|------------:|---------:|-----------:|---------:|:----------|:-----------|:--------|:-----------------|
|model_1      |     0.1|TRUE   |2015-02-13 |14:45 |RADC       |FALSE     |FEMALE   |           876|          7| 7654|              13|     1234|Walking speed time |      0.5714|        0.2321|           0.7360|Executive functioning |           0.6844|             0.1508|                0.2338|    0.34|    0.8124|       0.5752|    0.2127|      0.0918|    0.3402|NA         |NA          |Mplus    |NA                |
|model_2      |     1.1|TRUE   |2015-02-14 |15:45 |RADC       | TRUE     |MALE     |           874|          7| 9876|              13|     5435|Pulmonary function |      0.0399|        0.2017|           0.8522|Reasoning             |           0.1142|             0.9206|                0.1573|    0.56|    0.2489|       0.1191|    0.1130|      0.2529|    0.3546|NA         |NA          |R        |NA                |
[1] "|model_number | version|active |date       |time  |study_name |converged |subgroup | subject_count| wave_count|    n| parameter_count| deviance|cognitive_outcome  | var_int_cog| var_slope_cog| var_residual_cog|physical_outcome      | var_int_physical| var_slope_physical| var_residual_physical| cov_int| cov_slope| cov_residual| p_cov_int| p_cov_slope| p_cov_res|input_file |output_file |software |model_description |"
[2] "|:------------|-------:|:------|:----------|:-----|:----------|:---------|:--------|-------------:|----------:|----:|---------------:|--------:|:------------------|-----------:|-------------:|----------------:|:---------------------|----------------:|------------------:|---------------------:|-------:|---------:|------------:|---------:|-----------:|---------:|:----------|:-----------|:--------|:-----------------|"
[3] "|model_1      |     0.1|TRUE   |2015-02-13 |14:45 |RADC       |FALSE     |FEMALE   |           876|          7| 7654|              13|     1234|Walking speed time |      0.5714|        0.2321|           0.7360|Executive functioning |           0.6844|             0.1508|                0.2338|    0.34|    0.8124|       0.5752|    0.2127|      0.0918|    0.3402|NA         |NA          |Mplus    |NA                |"
[4] "|model_2      |     1.1|TRUE   |2015-02-14 |15:45 |RADC       | TRUE     |MALE     |           874|          7| 9876|              13|     5435|Pulmonary function |      0.0399|        0.2017|           0.8522|Reasoning             |           0.1142|             0.9206|                0.1573|    0.56|    0.2489|       0.1191|    0.1130|      0.2529|    0.3546|NA         |NA          |R        |NA                |"


# Questions
## Unanswered Questions
 1. What does `VS` stand for?  How was it measured?
 1. Where the cars at the Philly track measured with the same phluguerstometer and the Cleveland track?
 
## Answered Questions
 1. The Seattle track's phluguerstometer was producing flaky negative values; it's measurements have been dropped.

# Session Information
For the sake of documentation and reproducibility, the current report was rendered on a system using the following software.


```
Report rendered by andkov at 2015-02-18, 10:17 -0800
```

```
R version 3.1.1 (2014-07-10)
Platform: x86_64-w64-mingw32/x64 (64-bit)

locale:
[1] LC_COLLATE=English_Canada.1252  LC_CTYPE=English_Canada.1252    LC_MONETARY=English_Canada.1252
[4] LC_NUMERIC=C                    LC_TIME=English_Canada.1252    

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] ggplot2_1.0.0      RColorBrewer_1.0-5 scales_0.2.4       knitr_1.6         

loaded via a namespace (and not attached):
 [1] colorspace_1.2-4 digest_0.6.4     evaluate_0.5.5   formatR_1.0      grid_3.1.1       gtable_0.1.2    
 [7] htmltools_0.2.6  MASS_7.3-35      munsell_0.4.2    plyr_1.8.1       proto_0.3-10     Rcpp_0.11.3     
[13] reshape2_1.4     rmarkdown_0.3.3  stringr_0.6.2    tools_3.1.1      yaml_2.1.13     
```
