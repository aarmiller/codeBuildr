
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


#' Get 10 Child codes 
#'
#' Returns the set of child codes corresponding to a given set of ICD 10 codes. 
#' This updates the children function from the ICD package to use the most recent
#' library of ICD codes.
#'
#' @param icd_codes a vector of icd codes to get children for
#'
#' @export
children10 <- function(icd_10_codes,only_code=TRUE){
  
  if (is.null(icd_10_codes)){
    return("")
  } else if (length(icd_10_codes)==1){
    
    tmp <- codeBuildr::icd10cm_labels %>% 
      dplyr::filter(stringr::str_starts(code,icd_10_codes))
    
  } else {
    
    tmp <- tibble::tibble(parent = icd_10_codes) %>% 
      dplyr::mutate(children = purrr::map(parent,~dplyr::filter(codeBuildr::icd10cm_labels,
                                           stringr::str_starts(code,.)))) %>% 
      tidyr::unnest(children)
    
  }
    
  if (only_code) {
    return(unique(tmp$code))
  } 
  
  dplyr::distinct(tmp)
}



