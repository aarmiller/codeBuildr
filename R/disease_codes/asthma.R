# Diagnosis codes for asthma

dx_codes_9 <- as.character(get_icd_from_ccs(c(128)))

dx_codes_10 <- as.character(get_icd_from_ccs(c(128),icd_version = 10))