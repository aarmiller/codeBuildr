## Codes for bronchitis_chronic


# Description:

desc <- "Chronic Bronchitis"

tokens <- c("bronchitis", "chronic bronchitis")

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("491")))

icd10_codes <- as.character(children_safe(c("J41","J42")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
