#' Water year to calendar year conversion
#'
#' Converts calendar year to water year based on month
#' 
#' @param wy Water year
#' @param m Month as a integer (e.g. October = 10)
#' @param start_month Starting month as a integer (e.g. October = 10)
#' 
#' @author Ryan Bart
#'
#' @export

wy_to_cy = function(wy, m, start_month=10){
  cy = ifelse(m >= start_month, wy - 1, wy)
  return(cy)
}
