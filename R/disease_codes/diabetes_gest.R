## Codes for diabetes_gest


# Description:

desc <- "Gestational Diabetes"

# Diagnosis codes:

icd9_codes <- as.character(children(c("6488")))

icd10_codes <- as.character(children(c("O244")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
