## Codes for malaria


# Description:

desc <- "Malaria"

tokens <- c('malaria')

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("084")))

icd10_codes <- as.character(children_safe(c("B50","B51","B52","B53","B54")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
