## Codes for liver_enzyme


# Description:

desc <- "Abnormal liver serum enzyme levels"

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("7905")))

icd10_codes <- as.character(children_safe(c("R748")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
