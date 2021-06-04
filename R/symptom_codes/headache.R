## Codes for headache


# Description:

desc <- "Headache"

# Diagnosis codes:

icd9_codes <- as.character(get_icd_from_ccs(c(84)))

icd10_codes <- as.character(get_icd_from_ccs(c(84),icd_version = 10))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
