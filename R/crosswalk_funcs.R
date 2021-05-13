
#' Get ICD codes corresponding to ccs codes
#'
#' `get_icd_from_ccs` returns the icd-9 or icd-10 codes corresponding
#' to a vector of CCS categories
#'
#' @param ccs_list A vector of CCS values
#' @param icd_version An integer value for the icd version to return
#'
#' @export
#'
#' @examples
#' get_icd_from_ccs(c(20,22))
#' get_icd_from_ccs(c(20,22),icd_version=10)
get_icd_from_ccs <- function(ccs_list,icd_version=9){
  if (icd_version==9){
    ccs9_mappings %>%
      dplyr::filter(ccs_code %in% ccs_list) %>%
      .$icd9cm
  } else {
    ccs10_mappings %>%
      dplyr::filter(ccs_code %in% ccs_list) %>%
      .$icd10cm
  }
}

#' Get description of CCS codes
#'
#' `explain_ccs` returns a tibble of descriptions for a vector of
#' of CCS categories
#'
#' @param ccs_list A vector of CCS values
#'
#' @export
#'
#' @examples
#' explain_ccs(122)
#' explain_ccs(c(1,246))
explain_ccs <- function(ccs_list){
  ccs_labels %>%
    dplyr::filter(ccs_code %in% ccs_list)
}


#' Find CCS category containing a given term
#'
#' `explain_ccs` returns a tibble of CCS codes and category labels
#' where the category contains a given term
#'
#' @param term A term (string) to search within CCS categories
#'
#' @export
#'
#' @examples
#' find_ccs("flu")
#' find_ccs("fever")
find_ccs <- function(term){
  ccs_labels %>%
    dplyr::filter(stringr::str_detect(tolower(ccs_category),tolower(term)))
}


#' Convert ICD-9-CM values to ICD-10-CM
#'
#' `icd9_to_icd10` converts a vector of ICD-9 values to possible ICD-10 values.
#' Uses the NBER crosswalk file.
#'
#' @param icd_list A vector of ICD-9 values
#'
#' @export
#'
#' @examples
#' # Get ICD-10 codes for CDI
#' icd9_to_icd10("00845")
#'
#' # To collect all codes use children() from `icd` package
#' icd9_to_icd10("00845") %>% children()
icd9_to_icd10 <- function(icd_list){
  icd9cm_to_10 %>%
    dplyr::filter(icd9cm %in% icd_list) %>%
    .$icd10cm
}


#' Convert ICD-10-CM values to ICD-9-10
#'
#' `icd10_to_icd9` converts a vector of ICD-10 values to possible ICD-9 values.
#' Uses the NBER crosswalk file.
#'
#' @param icd_list A vector of ICD-10 values
#'
#' @export
#'
#' @examples
#' icd10_to_icd9("A047")
icd10_to_icd9 <- function(icd_list){
  icd10cm_to_9 %>%
    dplyr::filter(icd10cm %in% icd_list) %>%
    .$icd9cm
}
