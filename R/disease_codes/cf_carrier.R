## Codes for cf_carrier


# Description:

desc <- "Cystic Fibrosis Carrier"

# Diagnosis codes:

icd9_codes <- as.character(children("V8381"))

icd10_codes <- as.character(children("Z141"))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
