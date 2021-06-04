## Codes for jaundice_neonatal


# Description:

desc <- "Neonatal jaundice"

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("774")))

icd10_codes <- as.character(children_safe(c("P57","P58","P59")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
