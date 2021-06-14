#' cfs to mm/day streamflow conversion
#'
#' Converts streamflow in cubic feet per second to mm/day 
#' 
#' @param cfs Flow in cubic feet per second
#' @param km2 Watershed area in km2
#' 
#' @author Ryan Bart
#'
#' @examples
#' # Change streamflow at 1 cfs to mm/day for a 1 acre watershed
#' cfs_to_mm(1, 0.00404686)
#'
#' @export

cfs_to_mm = function(cfs, km2){
  # ft3/sec * 1m3/35.314667ft3 * 1/km2 * 86400sec/1day * 1km2/1000000m2 * 1000mm/1m
  mm <- cfs * (1/km2) * 2.446576
  return(mm)
}
