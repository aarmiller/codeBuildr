## Codes for measles


# Description:

desc <- "Measles"

tokens <- c('measles')

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("055")))

icd10_codes <- as.character(children_safe(c("B05")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
