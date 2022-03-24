#' Calendar-year day to month conversion
#'
#' Converts calendar-year day to month
#' 
#' @param cyd Calendar-year day
#' @param cy Calendar year
#' 
#' @author Ryan Bart
#'
#' @export

cyd_to_m = function(cyd, cy){
  if (lubridate::leap_year(cy) == TRUE){
    m <- dplyr::case_when(
      cyd %in% seq(1,31) ~ 1,
      cyd %in% seq(32,60) ~ 2,
      cyd %in% seq(61,91) ~ 3,
      cyd %in% seq(92,121) ~ 4,
      cyd %in% seq(122,152) ~ 5,
      cyd %in% seq(153,182) ~ 6,
      cyd %in% seq(183,213) ~ 7,
      cyd %in% seq(214,244) ~ 8,
      cyd %in% seq(245,274) ~ 9,
      cyd %in% seq(275,305) ~ 10,
      cyd %in% seq(306,335) ~ 11,
      cyd %in% seq(336,366) ~ 12
    )
  } else {
    m <- dplyr::case_when(
      cyd %in% seq(1,31) ~ 1,
      cyd %in% seq(32,59) ~ 2,
      cyd %in% seq(60,90) ~ 3,
      cyd %in% seq(91,120) ~ 4,
      cyd %in% seq(121,151) ~ 5,
      cyd %in% seq(152,181) ~ 6,
      cyd %in% seq(182,212) ~ 7,
      cyd %in% seq(213,243) ~ 8,
      cyd %in% seq(244,273) ~ 9,
      cyd %in% seq(274,304) ~ 10,
      cyd %in% seq(305,334) ~ 11,
      cyd %in% seq(335,365) ~ 12
    )
  }
  return(m)
}
