#' acre-feet to mm streamflow conversion
#'
#' Converts streamflow in acre-feet to mm
#' 
#' @param af Acre-feet of streamflow
#' @param km2 Watershed area in km2
#' 
#' @author Ryan Bart
#'
#' @examples
#' # Compute 12 inches (304.8 mm) of water (arguments are 1 acre-foot and 1 acre, respectively)
#' af_to_mm(1, 0.00404686)
#'
#' @export

af_to_mm = function(af, km2){
  # af * 1/km2 * 1000mm/1m * 1km2/1000000m2 * 1233.48184m3/1af
  mm <- af/km2*1.233482
  return(mm)
}
