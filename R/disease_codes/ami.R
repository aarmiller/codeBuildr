# Diagnosis codes for ami

dx_codes_9 <- icd::children("410")
dx_codes_10 <- icd::children(c("I21","I22"))

# tmp <- rbind(tibble::tibble(code = dx_codes_9,
#                      icd_version = 9),
#       tibble::tibble(code = dx_codes_10,
#                      icd_version = 10))
#
# readr::write_csv(tmp, file = "inst/extdata/diag_ami.csv")
