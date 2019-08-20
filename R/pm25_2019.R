#' PM2.5 pollutant measurements in Mexico City
#'
#' A data set containing the measuremnts of PM2.5, particles smaller than 2.5
#' micrometers measured in micrograms per square meter, across 70 stations
#' within Mexico City for the first months of 2019.
#'
#' @source \url{http://www.aire.cdmx.gob.mx/default.php?opc=%27aKBh%27}.
#'
#' @format A data frame with 5088 rows and 26 columns:
#' \describe{
#'   \item{date}{Date when the measurment was taken}
#'   \item{hour}{Hour at which the measurment was taken, 1 to 24}
#'   \item{AJM, AJU,...,XAL}{Initials indication the monitoring station}
#' }
"pm25_2019"
