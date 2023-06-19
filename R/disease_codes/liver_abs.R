## Codes for liver_abs


# Description:

desc <- "Liver Abscess"

tokens <- c('liver abscess')

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("5720","0063")))

icd10_codes <- as.character(children_safe(c("K750","A064")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
