#' mm to acre-feet streamflow conversion
#'
#' Converts streamflow at mm to acre-feet
#' 
#' @param mm Millimeters of streamflow
#' @param km2 Watershed area in km2
#' 
#' @author Ryan Bart
#'
#' @examples
#' # Compute 1 acre-foot of water (arguments are 1 foot and 1 acre, respectively)
#' mm_to_af(25.4*12, 0.00404686)
#'
#' @export

mm_to_af = function(mm, km2){
  # mm * km2 * 1m/1000mm * 1000000m2/1km2 * 1af/1233.48184m3
  af <- mm*km2*0.810713192
  return(af)
}
