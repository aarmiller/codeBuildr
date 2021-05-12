# Diagnosis codes for asthma

desc <- "Asthma"
icd9_codes <- as.character(get_icd_from_ccs(c(128)))
icd10_codes  <- as.character(get_icd_from_ccs(c(128),icd_version = 10))
