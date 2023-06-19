## Codes for pe


# Description:

desc <- "Pulmonary Embolism"

tokens <- c('pulmonary embolism')

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("4151")))

icd10_codes <- as.character(children_safe(c("I26")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
