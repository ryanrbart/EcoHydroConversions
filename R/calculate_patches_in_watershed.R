#' Calculate how many patches in a watershed
#'
#' Converts watershed size and patch size to number of patches
#'
#' @param watershed_area_km2 Watershed area in square kilometers. Dafaults to
#'   this value if both watershed_area_mi2 and watershed_area_mi2 are included
#'   as arguments.
#' @param watershed_area_mi2 Watershed area in square miles.
#' @param patch_side_m Length of a patch side in meters
#'
#' @author Ryan Bart
#'
#' @examples
#' # Compute number of 100m patches in a square km and square mile
#' calculate_patches_in_watershed(watershed_area_mi2 = 1, patch_side_m = 100)
#' calculate_patches_in_watershed(watershed_area_km2 = 1, patch_side_m = 100)
#' 
#' @export

calculate_patches_in_watershed <- function(watershed_area_km2 = NULL,
                                           watershed_area_mi2 = NULL,
                                           patch_side_m){
  
  # Change square miles to square kilometers 
  if (is.null(watershed_area_km2)){
    if (!is.null(watershed_area_mi2)){
      watershed_area_km2 <- watershed_area_mi2 * 2.589988110336
    } else {
      stop("Please add an argument")
    }
  }
  
  # Calculate number of patches
  patch_num <- (watershed_area_km2 * 1000 * 1000) / (patch_side_m * patch_side_m)
  
  return(patch_num)
}


