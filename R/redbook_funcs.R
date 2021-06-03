#' Get NDC code from medication name
#'
#' `get_ndc_from_name` returns the ndc code, or the corresponding redbook
#'  entries, for medications of a given name. The name provided is matched to
#'  the variables "genme" and "prodnme" in the redbook file.
#'
#' @param terms A vector of medication names
#' @param return_all A logical indicator of whether to return all values. Default
#'   value is set to FALSE (if FALSE only ndc codes are returned)
#' @param redbook_path The path to the redbook file.
#'
#' @export
get_ndc_from_terms <- function(terms,return_all=FALSE,
                              redbook_path = "~/Data/redbook.csv"){

  redbook <- readr::read_csv(redbook_path,
                             col_types = readr::cols())

  terms <- tolower(terms)

  ndc_out <- redbook[0,]

  for (i in terms){
    tmp_ndc_out <- dplyr::bind_rows(redbook %>%
                                      dplyr::filter(stringr::str_detect(tolower(GENNME),i)),
                                    redbook %>%
                                      dplyr::filter(stringr::str_detect(tolower(PRODNME),i)),
                                    redbook %>%
                                      dplyr::filter(stringr::str_detect(tolower(THRCLDS),i))
    ) %>%
      dplyr::distinct()

    ndc_out <- rbind(ndc_out,tmp_ndc_out)
    }

  if (return_all==FALSE){
    ndc_out <- ndc_out %>%
      dplyr::select(ndcnum = NDCNUM)
  }

  return(ndc_out)
}


#' Get Entire Redbook
#'
#' `load_redbook` returns the redbook file as a tibble
#'
#' @param redbook_path The path to the redbook file.
#'
#' @export
load_redbook <- function(redbook_path = "~/Data/redbook.csv"){

  redbook <- readr::read_csv(redbook_path,
                             col_types = readr::cols())

  return(redbook)
}
