## Codes for toxo


# Description:

desc <- "Toxoplasmosis"

tokens <- c('toxoplasmosis')

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("130")))

icd10_codes <- as.character(children_safe(c("B58")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
