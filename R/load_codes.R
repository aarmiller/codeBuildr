
### Main Functions ###



#' Load codes (diagnosis, procedure and medication) for particular diseases
#'
#' Return the sets of codes used to identify a particular disease
#'
#' @param project_names a vector of project names to get codes for
#'
#' @export
load_disease_codes <- function(project_names){

  # get_descriptions
  descriptions <- avail_disease_codes()

  # if single code return a single list
  if (length(project_names)==1){

    # load code
    tmp <- readr::read_csv(system.file("extdata",
                                       paste0("diag_",project_names,".csv"),
                                       package = "codeBuildr"),
                           col_types = readr::cols(code = readr::col_character(),
                                                   type = readr::col_character())
                           )


    return(list(desc = descriptions[descriptions$name==project_names,]$description,
                icd9_codes = tmp[tmp$type=="icd9",]$code,
                icd10_codes = tmp[tmp$type=="icd10",]$code,
                icd9pcs_codes = tmp[tmp$type=="icd9pcs",]$code,
                icd10pcs_codes = tmp[tmp$type=="icd10pcs",]$code,
                rx_codes = tmp[tmp$type=="ndc",]$code
                ))
  }

  # otherwise return named sublists
  out_list <- list()

  for (i in project_names){

    # load code
    tmp <- readr::read_csv(system.file("extdata",
                                       paste0("diag_",i,".csv"),
                                       package = "codeBuildr"),
                           col_types = readr::cols(code = readr::col_character(),
                                                   type = readr::col_character())
                           )

    out_list[[i]] <- list(desc = descriptions[descriptions$name==i,]$description,
                          icd9_codes = tmp[tmp$type=="icd9",]$code,
                          icd10_codes = tmp[tmp$type=="icd10",]$code,
                          icd9pcs_codes = tmp[tmp$type=="icd9pcs",]$code,
                          icd10pcs_codes = tmp[tmp$type=="icd10pcs",]$code,
                          rx_codes = tmp[tmp$type=="ndc",]$code)
  }

  return(out_list)
}


#' Return available disease code sets
#'
#' Return the names and descriptions of the available disease code sets
#'
#' @param description a logical indicator for whether to return descriptions
#'
#' @export
avail_disease_codes <- function(description = TRUE){

  out <- readr::read_csv(system.file("extdata","disease_list.csv",package = "codeBuildr"),
                         col_types = readr::cols(name = readr::col_character(),
                                                 description = readr::col_character()
                  ))

  if (description == FALSE) {
    out <- out$name
  }

  return(out)

}

#' Load ndc codes for particular group of medications
#'
#' Get NDC codes for a group of drugs
#'
#' @param rx_group an rx group to get ndc codes for
#'
#' @export
load_rx_codes <- function(rx_group){

  ndc_data <- readr::read_csv(system.file("extdata",
                              paste0("rx_",rx_group,".csv"),
                              package = "codeBuildr"),
                  col_types = readr::cols(group = readr::col_character(),
                                          ndc_code = readr::col_character()))

  ndc_data %>%
    dplyr::group_by(group) %>%
    tidyr::nest() %>%
    dplyr::mutate(data = purrr::map(data,~.$ndc_code)) %>%
    tibble::deframe()
}

#' Return available rx code sets
#'
#' Return the names and descriptions of the available disease code sets
#'
#' @param description a logical indicator for whether to return descriptions
#'
#' @export
avail_rx_codes <- function(description = TRUE){

  file_names <- list.files(system.file("extdata", package = "codeBuildr"))

  out <- file_names[stringr::str_detect(file_names,"rx")]

  out <- stringr::str_remove(stringr::str_remove(out,".csv"),"rx_")

  return(out)

}

#' Load diagnosis codes for particular symptoms
#'
#' Return the sets of codes used to identify a particular symptoms
#'
#' @param symptoms_names a vector of project names to get codes for
#'
#' @export
load_symptom_codes <- function(symptom_names){

}



#' Return available symptom code sets
#'
#' Return the names and descriptions of the available symptom code sets
#'
#' @param description a logical indicator for whether to return descriptions
#'
#' @export
avail_symptom_codes <- function(description = TRUE){

  out <- readr::read_csv(system.file("extdata","symptom_list.csv",package = "codeBuildr"),
                         col_types = readr::cols(name = readr::col_character(),
                                                 description = readr::col_character()
                         ))

  if (description == FALSE) {
    out <- out$name
  }

  return(out)

}

