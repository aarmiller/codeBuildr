## Codes for bronchitis_acute


# Description:

desc <- "Acute Bronchitis"

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("466")))

icd10_codes <- as.character(children_safe(c("J20","J21")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
