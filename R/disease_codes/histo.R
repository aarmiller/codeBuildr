## Codes for histo


# Description:

desc <- "Histoplasmosis"

tokens <- c('histoplasmosis')

# Diagnosis codes:

icd9_codes <- as.character(children("115"))

icd10_codes <- as.character(children("B39"))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
