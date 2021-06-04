## Codes for hemoptysis


# Description:

desc <- "Hemoptysis"

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("7863")))

icd10_codes <- as.character(children_safe(c("R042","R048","R049")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
