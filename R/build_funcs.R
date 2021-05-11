
### Main Functions ###



#' Load codes (diagnosis, procedure and medication) for particular diseases
#'
#' collect data from the core table
#'
#' @param project_names a vector of project names to get codes for
#'
#' @export
load_disease_codes <- function(project_names){

  # if single code return a single list
  if (length(project_names)==1){

    # load code
    tmp <- readr::read_csv(system.file("extdata",
                                       paste0("diag_",project_names,".csv"),
                                       package = "codeBuildr"),
                           col_types = readr::cols(code = readr::col_character(),
                                                   icd_version = readr::col_double())
                           )


    return(list(icd9_codes = tmp[tmp$icd_version==9,]$code,
                icd10_codes = tmp[tmp$icd_version==10,]$code))
  }

  # otherwise return named sublists
  out_list <- list()

  for (i in project_names){

    # load code
    tmp <- readr::read_csv(system.file("extdata",
                                       paste0("diag_",i,".csv"),
                                       package = "codeBuildr"),
                           col_types = readr::cols(code = readr::col_character(),
                                                   icd_version = readr::col_double())
                           )

    out_list[[i]] <- list(icd9_codes = tmp[tmp$icd_version==9,]$code,
                          icd10_codes = tmp[tmp$icd_version==10,]$code)
  }

  return(out_list)
}
