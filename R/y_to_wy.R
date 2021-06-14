#' Calendar year to water year conversion
#'
#' Converts calendar year to water year based on month
#' 
#' @param year Calendar year
#' @param month Month Month as a integer (e.g. October = 10)
#' @param start_month Starting month as a integer (e.g. October = 10)
#' 
#' @author Ryan Bart
#'
#' @export
#'

y_to_wy = function(year, month, start_month=10){
  wateryear = ifelse(month >= start_month, year + 1, year)
  return(wateryear)
}
