
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
#' @param symptom_names a vector of project names to get codes for
#'
#' @export
load_symptom_codes <- function(symptom_names){


  # get_descriptions
  descriptions <- avail_symptom_codes()

  # if single code return a single list
  if (length(symptom_names)==1){

    # load code
    tmp <- readr::read_csv(system.file("extdata",
                                       paste0("symp_",symptom_names,".csv"),
                                       package = "codeBuildr"),
                           col_types = readr::cols(code = readr::col_character(),
                                                   type = readr::col_character())
    )


    return(list(desc = descriptions[descriptions$name==symptom_names,]$description,
                icd9_codes = tmp[tmp$type=="icd9",]$code,
                icd10_codes = tmp[tmp$type=="icd10",]$code,
                icd9pcs_codes = tmp[tmp$type=="icd9pcs",]$code,
                icd10pcs_codes = tmp[tmp$type=="icd10pcs",]$code,
                rx_codes = tmp[tmp$type=="ndc",]$code
    ))
  }

  # otherwise return named sublists
  out_list <- list()

  for (i in symptom_names){

    # load code
    tmp <- readr::read_csv(system.file("extdata",
                                       paste0("symp_",i,".csv"),
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


#' Load diagnosis codes for for a set of ccs codes
#'
#' Return the sets of codes that correspond to particular CCS codes. This function
#' loads the icd-9 and icd-10 codes in the dx code list format along with the
#' description of the ccs category
#'
#' @param symptom_names a vector of project names to get codes for
#'
#' @export
load_ccs_codes <- function(ccs_codes){
  
  return_ccs_dx_list <- function(ccs_code){
    
    list(desc = explain_ccs(ccs_code)$ccs_category,
         icd9_codes = get_icd_from_ccs(c(ccs_code)),
         icd10_codes = get_icd_from_ccs(ccs_code,icd_version = 10))
  }
  
  out <- lapply(ccs_codes,return_ccs_dx_list)
  
  names(out) <- paste0("ccs_",ccs_codes)
  
  return(out)
  
}


#' Return available procedure code sets
#'
#' Return the names and descriptions of the available procedure code sets
#'
#' @param description a logical indicator for whether to return descriptions
#'
#' @export
avail_procedure_codes <- function(description = TRUE){
  
  out <- readr::read_csv(system.file("extdata","procedure_list.csv",package = "codeBuildr"),
                         col_types = readr::cols(name = readr::col_character(),
                                                 description = readr::col_character()
                         ))
  
  if (description == FALSE) {
    out <- out$name
  }
  
  return(out)
  
}

#' Load codes for a particular procedure
#'
#' Return the sets of codes used to identify a particular procedure
#'
#' @param procedure_names a vector of procedure names to get codes for
#'
#' @export
load_procedure_codes <- function(procedure_names){
  
  # get_descriptions
  descriptions <- avail_procedure_codes()
  
  # if single code return a single list
  if (length(procedure_names)==1){
    
    # load code
    tmp <- readr::read_csv(system.file("extdata",
                                       paste0("proc_",procedure_names,".csv"),
                                       package = "codeBuildr"),
                           col_types = readr::cols(code = readr::col_character(),
                                                   type = readr::col_character())
    )
    
    
    return(list(desc = descriptions[descriptions$name==procedure_names,]$description,
                #icd9_codes = tmp[tmp$type=="icd9",]$code,
                #icd10_codes = tmp[tmp$type=="icd10",]$code,
                icd9pcs_codes = tmp[tmp$type=="icd9pcs",]$code,
                icd10pcs_codes = tmp[tmp$type=="icd10pcs",]$code,
                cpt_codes = tmp[tmp$type=="cpt",]$code
                #rx_codes = tmp[tmp$type=="ndc",]$code
    ))
  }
  
  # otherwise return named sublists
  out_list <- list()
  
  for (i in procedure_names){
    
    # load code
    tmp <- readr::read_csv(system.file("extdata",
                                       paste0("proc_",i,".csv"),
                                       package = "codeBuildr"),
                           col_types = readr::cols(code = readr::col_character(),
                                                   type = readr::col_character())
    )
    
    out_list[[i]] <- list(desc = descriptions[descriptions$name==i,]$description,
                          #icd9_codes = tmp[tmp$type=="icd9",]$code,
                          #icd10_codes = tmp[tmp$type=="icd10",]$code,
                          icd9pcs_codes = tmp[tmp$type=="icd9pcs",]$code,
                          icd10pcs_codes = tmp[tmp$type=="icd10pcs",]$code,
                          cpt_codes = tmp[tmp$type=="cpt",]$code
                          #rx_codes = tmp[tmp$type=="ndc",]$code
                          )
  }
  
  return(out_list)
}


#' Load misc code sets
#'
#' Get miscellaneous code sets
#'
#' @param misc_group an misc code set to load
#'
#' @export
load_misc_codes <- function(misc_group){
  
  readr::read_csv(system.file("extdata",
                              paste0("misc_",misc_group,".csv"),
                              package = "codeBuildr"))
}


#' Return available miscellaneous code sets
#'
#' Return the names and descriptions of the available miscellaneous code sets
#'
#' @param description a logical indicator for whether to return descriptions
#'
#' @export
avail_misc_codes <- function(description = TRUE){
  
  out <- readr::read_csv(system.file("extdata","misc_list.csv",package = "codeBuildr"),
                         col_types = readr::cols(name = readr::col_character(),
                                                 description = readr::col_character()
                         ))
  
  if (description == FALSE) {
    out <- out$name
  }
  
  return(out)
  
}
