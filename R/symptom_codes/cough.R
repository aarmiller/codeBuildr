## Codes for cough


# Description:

desc <- "Cough"

tokens <- c('cough')

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("7862")))

icd10_codes <- as.character(children_safe(c("R05")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
