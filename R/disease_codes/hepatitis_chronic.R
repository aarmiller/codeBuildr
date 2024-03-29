## Codes for hepatitis_chronic


# Description:

desc <- "Chronic Hepatitis"

tokens <- c('chronic hepatitis')

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("57141","57149","57140")))

icd10_codes <- as.character(children_safe(c("K73")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
