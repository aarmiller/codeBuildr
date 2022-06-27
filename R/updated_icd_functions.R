
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

  if (is.null(icd_codes)){
    return("")
  }
  tmp <- children(icd_codes)

  unique(c(tmp,icd_codes))
}

#' Describe ICD-10 codes
#'
#' Returns the labels for a set of ICD-10 codes. 
#'
#' @param icd_codes a vector of ICD-10 codes to get descriptions.
#' @param return_short an indicator of whether to only return the short code description
#' as oppoed to the long description (default is FALSE)
#'
#' @export
describe_icd10 <- function(icd_codes,return_short = FALSE){
  tmp <- tibble::tibble(code = icd_codes) %>% 
    dplyr::left_join(icd10cm_labels, by = "code")
  
  if (return_short==TRUE){
    tmp$short_desc
  } else {
    tmp$long_desc
  }
  
}
