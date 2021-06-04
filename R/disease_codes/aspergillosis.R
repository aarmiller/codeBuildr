## Codes for aspergillosis


# Description:

desc <- "Aspergillosis associated disease"

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("5186","4846","1173")))

icd10_codes <- as.character(children_safe(c("B449","B440","B4481")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
