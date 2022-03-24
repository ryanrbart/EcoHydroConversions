#' date to water-year day conversion
#'
#' Converts a date (inputs of year, calendar-year day) to water-year day
#'
#' @param cy Calendar year
#' @param cyd Calendar-year day. January 1 is equal to 1. Can be obtained from
#'   date_to_cyd function.
#' @param wyd_start Calendar-year day to start water-year day (Default 274 is
#'   October 1)
#'
#' @author Ryan Bart
#'
#' @section Note: Accounts for leap years (but not the skipping of leap years at
#'   every century except those divisible by 400 (e.g. year 2000))
#'
#'   Tip: Function requires purrr:pmap_dbl or mapply
#'
#'   purrr::pmap_dbl(list(cy, cyd, wyd_start=274), date_to_wyd)
#'
#'   mapply(date_to_wyd, cy, cyd, wyd_start)
#'
#' @export

date_to_wyd <- function(cy, cyd, wyd_start = 274){
  # Compute wateryear day for leap year when wateryear start is after Feb 29
  if (cy %% 4 == 0 && wyd_start >= 60) {
    if (cyd >= (wyd_start + 1)){
      wyd = cyd - wyd_start
    } else {
      wyd = cyd + (365 - wyd_start + 1)
    }
    
    # Compute wateryear day for leap year when wateryear start is before Feb 29
  } else if (cy %% 4 == 0 && wyd_start < 60) {
    if (cyd < wyd_start){
      wyd = cyd + (365 - wyd_start + 1)
    }
    if (cyd >= wyd_start && cyd < 60){
      wyd = cyd - wyd_start + 1
    }
    if (cyd >= 60){
      wyd = cyd - (wyd_start-1)
    }
    
    # Compute wateryear day during the year following a leap year when start is before Feb 29
  } else if (cy %% 4 == 1 && wyd_start < 60 && cyd < wyd_start) {
    wyd = cyd + (365 - wyd_start + 2)
    
    # Compute wateryear day for a normal year
  } else {
    if (cyd >= wyd_start){
      wyd = cyd - (wyd_start - 1)
    } else {
      wyd = cyd + (365 - wyd_start + 1)
    }
  }
  
  return(wyd)
}
