#' calendar-year day to water-year day conversion
#'
#' Converts calendar-year day to water-year day based on a Oct-Sept water year.
#'
#' @param cyd Calendar-year day
#' @param cy Calendar year
#'
#' @author Ryan Bart
#'
#' @section Note: This function should be generalized for use with any start_day
#'   for water year
#'
#' @export

cyd_to_wyd = function(cyd, cy){
  if (lubridate::leap_year(cy) == TRUE){
    wyd <- ifelse(cyd>=275, cyd-274, cyd+92)
  } else {
    wyd <- ifelse(cyd>=274, cyd-273, cyd+92)
  }
  return(wyd)
}
