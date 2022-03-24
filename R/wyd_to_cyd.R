#' water-year day to calendar-year day conversion
#'
#' Converts water-year day to calendar-year day based on a Oct-Sept water year.
#'
#' @param wyd Water-year day
#' @param cy Calendar year
#'
#' @author Ryan Bart
#'
#' @section Note: This function should be generalized for use with any start_day
#'   for water year
#'
#' @export

wyd_to_cyd = function(wyd, cy){
  if (lubridate::leap_year(cy) == TRUE){
    cyd <- ifelse(wyd<=92, wyd+274, wyd-92)  
  } else {
    cyd <- ifelse(wyd<=92, wyd+273, wyd-92)    
  }
  return(cyd)
}
