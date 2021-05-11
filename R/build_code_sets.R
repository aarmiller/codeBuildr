

# build code sets

#' Build codes sets
#'
#' Builds csv data from corresponding files
#'
#'
build_code_sets <- function(){

  # get file names
  disease_files <- list.files(path = "R/disease_codes/")

  # for each disease build code set
  for (i in disease_files){

    source(paste0("R/disease_codes/",i),local = TRUE)

    dis_name <- stringr::str_remove(i,".R")

    tmp <- rbind(tibble::tibble(code = dx_codes_9,
                                icd_version = 9),
                 tibble::tibble(code = dx_codes_10,
                                icd_version = 10))

    readr::write_csv(tmp, file = paste0("inst/extdata/diag_",dis_name,
                                        ".csv"))

  }
}



