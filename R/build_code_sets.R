

# build code sets

#' Build codes sets
#'
#' Builds csv data from corresponding files
#'
#'
build_code_sets <- function(){

  # get file names
  disease_files <- list.files(path = "R/disease_codes/")

  # description file
  desc_file <- tibble::tibble(name = character(),
                              description = character())

  # for each disease build code set
  for (i in disease_files){

    source(paste0("R/disease_codes/",i),local = TRUE)

    dis_name <- stringr::str_remove(i,".R")

    tmp <- rbind(tibble::tibble(code = icd9_codes,
                                icd_version = 9),
                 tibble::tibble(code = icd10_codes,
                                icd_version = 10))

    readr::write_csv(tmp, file = paste0("inst/extdata/diag_",dis_name,
                                        ".csv"))

    tmp_row <- tibble::tibble(name = stringr::str_remove(i,".R"),
                              description = desc)

    desc_file <- rbind(desc_file,tmp_row)

    rm(icd9_codes, icd10_codes, desc)

  }

  readr::write_csv(desc_file, file = "inst/extdata/disease_list.csv")
}

