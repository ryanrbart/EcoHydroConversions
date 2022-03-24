#' Calendar year to water year conversion
#'
#' Converts calendar year to water year based on month
#' 
#' @param cy Calendar year
#' @param m Month as a integer (e.g. October = 10)
#' @param start_month Starting month as a integer (e.g. October = 10)
#' 
#' @author Ryan Bart
#'
#' @export

cy_to_wy = function(cy, m, start_month=10){
  wy = ifelse(m >= start_month, cy + 1, cy)
  return(wy)
}
