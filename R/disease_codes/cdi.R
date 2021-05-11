# Diagnosis codes for cdi

dx_codes_9 <- as.character(c("00845"))
dx_codes_10 <- as.character(c(c("A047","A0471","A0472")))


# tmp <- rbind(tibble::tibble(code = dx_codes_9,
#                             icd_version = 9),
#              tibble::tibble(code = dx_codes_10,
#                             icd_version = 10))
#
# readr::write_csv(tmp, file = "inst/extdata/diag_cdi.csv")
