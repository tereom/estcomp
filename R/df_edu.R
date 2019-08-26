#' Educational data from INEGI's 2015 intra-census survey
#'
#' A data set containing the educational estimates from INEGI's 2015
#' intra-census survey, estimates are presented for each municipio and sex.
#' \url{https://www.inegi.org.mx/programas/intercensal/2015/}.
#'
#' @format A data frame with 7371 rows and 16 columns:
#' \describe{
#'  \item{state_code}{INEGI code of each state}
#'  \item{municipio_code}{INEGI code of each municipio}
#'  \item{region}{INEGI code of the state}
#'  \item{state_name}{Short state name (e.g. Coahuila)}
#'  \item{state_abbr}{State abbreviation}
#'  \item{municipio_name}{Official name of each municipio}
#'  \item{sex}{sex corresponding to estimate: female (Mujeres), male (Hombres)}
#'  \item{pop_15}{Estimate of population 15 years old and older}
#'  \item{no_school}{Estimated proportion of population (15 years old and older)
#'    with no school experience}
#'  \item{preschool}{Estimated proportion that attended preschool}
#'  \item{elementary}{Estimated proportion that completed elementary school}
#'  \item{secondary}{Estimated proportion that attended secondary school
#'    (includes dropouts)}
#'  \item{highscool}{Estimated proportion that attended secondary school (at
#'    least for one year)}
#'  \item{higher_edu}{Estimated proportion that attended higher education (at
#'    least for one year)}
#'  \item{other}{Not specified education level}
#'  \item{schoolyrs}{Estimated average years of school}
#' }
#' @source INEGI: \url{https://www.inegi.org.mx/programas/intercensal/2015/}
"df_edu"
