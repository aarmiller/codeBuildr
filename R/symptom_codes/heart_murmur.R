## Codes for heart_murmur


# Description:

desc <- "Heart Murmur"

tokens <- c('heart murmur')

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("7852","7853")))

icd10_codes <- as.character(children_safe(c("R01")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
