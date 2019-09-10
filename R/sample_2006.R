#' Sample of 2006 presidential elections.
#'
#' A dataset containing a stratified random sample of the 2006 presidential
#' elections.
#'
#' @format election_2006: A data frame with 7200 rows and 10 columns:
#' \describe{
#'   \item{state_code, state_name, state_abbr}{Character variables indicating
#'   the state corresponding to the polling station. State code's follow INEGI's
#'   standard}
#'   \item{polling_id}{Numeric identifier of the polling station}
#'   \item{edo_id}{State id}
#'   \item{pri_pvem}{Number of votes favoring the parties PRI and/or PVEM}
#'   \item{pan}{Number of votes favoring PAN}
#'   \item{panal}{Number of votes favoring Partido Nueva Alianza}
#'   \item{prd_pt_conv}{Number of votes favoring the parties PRD, PT,
#'   Convergencia}
#'   \item{psd}{Number of votes favoring the parties PSD}
#'   \item{otros}{Number of votes that do not favor any of the parties (null,
#'   non-registered candidates)}
#'   \item{total}{Total number of votes registered}
#'   \item{stratum}{stratum corresponding to the polling station}
#' }
#' @source \url{https://cartografia.ife.org.mx}
"sample_2006"
