## Codes for hsv_enceph


# Description:

desc <- "Herpes Simplex Virus Encephalitis"

tokens <- c('herpes simplex virus encephalitis')

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("0543")))

icd10_codes <- as.character(children_safe(c("B004")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
