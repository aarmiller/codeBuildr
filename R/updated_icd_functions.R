
# Functions that correct problems with ICD package

#' Get ICD-9/10 Child codes (safe version)
#'
#' Returns the set of child codes corresponding to a given set of icd_codes.
#' This is a safer version than that of the icd package, as it retains a given
#' code even if no child codes can be found.
#'
#' @param icd_codes a vector of icd codes to get children for
#'
#' @export
children_safe <- function(icd_codes){
  tmp <- children(icd_codes)

  unique(c(tmp,icd_codes))
}

