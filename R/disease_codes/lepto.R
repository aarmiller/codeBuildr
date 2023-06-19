## Codes for lepto


# Description:

desc <- "Leptospirosis"

tokens <- c('leptospirosis')

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("100")))

icd10_codes <- as.character(children_safe(c("L27")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
