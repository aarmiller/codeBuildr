## Codes for pcp


# Description:

desc <- "Pneumocystic Pneumonia"

tokens <- c('pneumocystic pneumonia')

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("1363")))

icd10_codes <- as.character(children_safe(c("J173","B59")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
