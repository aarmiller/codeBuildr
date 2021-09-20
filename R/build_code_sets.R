

# build code sets

#' Build codes sets
#'
#' Builds csv data from corresponding files
#'
#'
build_code_sets <- function(){

  ## BUILD DISEASE CODE SETS ---------------------------------------------------
  
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
                                type = "icd9"),
                 tibble::tibble(code = icd10_codes,
                                type = "icd10"),
                 tibble::tibble(code = as.character(pr_codes_icd9),
                                type = "icd9pcs"),
                 tibble::tibble(code = as.character(pr_codes_icd10),
                                type = "icd10pcs"),
                 tibble::tibble(code = as.character(pr_codes_cpt),
                                type = "cpt"),
                 tibble::tibble(code = as.character(rx_codes),
                                type = "ndc"))

    readr::write_csv(tmp, file = paste0("inst/extdata/diag_",dis_name,
                                        ".csv"))

    tmp_row <- tibble::tibble(name = stringr::str_remove(i,".R"),
                              description = desc)

    desc_file <- rbind(desc_file,tmp_row)

    rm(desc, icd9_codes, icd10_codes, pr_codes_icd9, pr_codes_icd10,
       pr_codes_cpt, rx_codes)

  }

  readr::write_csv(desc_file, file = "inst/extdata/disease_list.csv")

  ## BUILD SYMPTOM CODE SETS ---------------------------------------------------

  # get file names
  symp_files <- list.files(path = "R/symptom_codes/")

  # description file
  desc_file <- tibble::tibble(name = character(),
                              description = character())

  # for each disease build code set
  for (i in symp_files){

    source(paste0("R/symptom_codes/",i),local = TRUE)

    symp_name <- stringr::str_remove(i,".R")

    tmp <- rbind(tibble::tibble(code = icd9_codes,
                                type = "icd9"),
                 tibble::tibble(code = icd10_codes,
                                type = "icd10"),
                 tibble::tibble(code = as.character(pr_codes_icd9),
                                type = "icd9pcs"),
                 tibble::tibble(code = as.character(pr_codes_icd10),
                                type = "icd10pcs"),
                 tibble::tibble(code = as.character(pr_codes_cpt),
                                type = "cpt"),
                 tibble::tibble(code = as.character(rx_codes),
                                type = "ndc"))

    readr::write_csv(tmp, file = paste0("inst/extdata/symp_",symp_name,
                                        ".csv"))

    tmp_row <- tibble::tibble(name = stringr::str_remove(i,".R"),
                              description = desc)

    desc_file <- rbind(desc_file,tmp_row)

    rm(desc, icd9_codes, icd10_codes, pr_codes_icd9, pr_codes_icd10,
       pr_codes_cpt, rx_codes)

  }

  readr::write_csv(desc_file, file = "inst/extdata/symptom_list.csv")
  
  ## BUILD PROCEDURE CODE SETS -------------------------------------------------
  
  # get file names
  proc_files <- list.files(path = "R/procedure_codes/")
  
  # description file
  desc_file <- tibble::tibble(name = character(),
                              description = character())
  
  # for each disease build code set
  for (i in proc_files){
    
    source(paste0("R/procedure_codes/",i),local = TRUE)
    
    proc_name <- stringr::str_remove(i,".R")
    
    tmp <- rbind(tibble::tibble(code = icd9_codes,
                                type = "icd9"),
                 tibble::tibble(code = icd10_codes,
                                type = "icd10"),
                 tibble::tibble(code = as.character(pr_codes_icd9),
                                type = "icd9pcs"),
                 tibble::tibble(code = as.character(pr_codes_icd10),
                                type = "icd10pcs"),
                 tibble::tibble(code = as.character(pr_codes_cpt),
                                type = "cpt"),
                 tibble::tibble(code = as.character(rx_codes),
                                type = "ndc"))
    
    readr::write_csv(tmp, file = paste0("inst/extdata/proc_",proc_name,
                                        ".csv"))
    
    tmp_row <- tibble::tibble(name = stringr::str_remove(i,".R"),
                              description = desc)
    
    desc_file <- rbind(desc_file,tmp_row)
    
    rm(desc, icd9_codes, icd10_codes, pr_codes_icd9, pr_codes_icd10,
       pr_codes_cpt, rx_codes)
    
  }
  
  readr::write_csv(desc_file, file = "inst/extdata/procedure_list.csv")

}

#' Build condition files
#'
#' Builds files for conditions
#'
#'
build_cond_file <- function(cond_name, type = "disease"){

  file_name <- paste0(cond_name,".R")

  if (type == "disease"){
    file_path <- "R/disease_codes/"
  } else if (type == "symptom"){
    file_path <- "R/symptom_codes/"
  } else if (type == "procedure") {
    file_path <- "R/procedure_codes/"
  }

  current_files <- list.files(file_path)

  file_path <- paste0(file_path,file_name)

  if (file_name %in% current_files) {
    warning("File Already Exists - No changes made")
  } else {

    cat(paste0("## Codes for ", cond_name),
        '\n
    \n# Description:
    \ndesc <- ""
    \n# Diagnosis codes:
    \nicd9_codes <- as.character(children_safe(c()))
    \nicd10_codes <- as.character(children_safe(c()))
    \n# Procedure codes:
    \npr_codes_icd9 <- c()
    \npr_codes_icd10 <- c()
    \npr_codes_cpt <- c()
    \n# Medication codes
    \nrx_codes <- c()', file = file_path)
  }
}

