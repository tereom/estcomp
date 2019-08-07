#' Subset of presidential electoral results 2012.
#'
#' A dataset containing a simple random sample of the election results for
#' president 2012, each row corresponds to a polling station.
#'
#' @format A data frame with 1500 rows and 22 variables:
#' \describe{
#'   \item{state_code, state_name, state_abbr}{Character variables indicating
#'   the state corresponding to the polling station. State code's follow INEGI's
#'   standard}
#'   \item{polling_id}{Numeric identifier of the polling station}
#'   \item{distrito_loc_17, distrito_fed_17}{Local and fedral district, the
#'   districts are ploygons that partition each state, they are defined by INE's
#'   cartography}
#'   \item{section}{The section is the miminal electoral geographical unit that
#'   contains the polling station}
#'   \item{polling_type}{Type of polling station, Basic (B) is the
#'   basic and most common type, Contigua (C) these polling stations arise when
#'   the nominal list surpases 750 people, Extraoridinaria (E) these are
#'   installed when people can not reach their planned station and Especial (S)
#'   polling stations are where people can vote outside their asigned polling
#'   station}
#'   \item{section_type}{Section type (in 2017), whether the section of the
#'   station is rural (R), urban (U) or mixed (M)}
#'   \item{pri_pvem}{Number of votes favoring the parties PRI and/or PVEM}
#'   \item{pan}{Number of votes favoring PAN}
#'   \item{panal}{Number of votes favoring Partido Nueva Alianza}
#'   \item{prd_pt_mc}{Number of votes favoring the parties PRD, PT, Movimiento
#'   Ciudadano.}
#'   \item{otros}{Number of votes that do not favor any of the parties (null,
#'   non-registered candidates)}
#'   \item{total}{Total number of votes registered}
#'   \item{nominal_list}{Nominal list, number of people registered to vote}
#'   \item{pri_pvem_pct, pan_pct, panal_pct, prd_pt_mc_pct, otros_pcr}{
#'   Percentage of votes per party/allegiance}
#'   \item{winner}{Winner party/allegiance}
#' }
#' @source \url{https://cartografia.ife.org.mx}
"election_sub_2012"
