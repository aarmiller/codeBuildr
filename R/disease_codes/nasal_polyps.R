## Codes for nasal_polyps


# Description:

desc <- "Nasal Polyposis"

tokens <- c('nasal polyposis')

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("471")))

icd10_codes <- as.character(children_safe(c("J33")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
