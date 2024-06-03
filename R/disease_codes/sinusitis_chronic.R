## Codes for sinusitis_chronic


# Description:

desc <- "Chronic Sinusitis"

tokens <- c('chronic sinusitis')

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("473")))

icd10_codes <- as.character(children_safe(c("J32")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
