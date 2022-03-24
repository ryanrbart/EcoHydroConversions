#' date to calendar-year day conversion
#'
#' Converts a date (inputs of year, month, day) to calendar-year day  
#' 
#' @param cy Calendar year
#' @param m Month
#' @param d Day of month
#' 
#' @author Ryan Bart
#'
#' @export

date_to_cyd = function(cy, m, d){
  date <- lubridate::ymd(paste(cy, m, d))
  cyd <- lubridate::yday(date)
  return(cyd)
}

