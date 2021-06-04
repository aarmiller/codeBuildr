## Codes for bladder_cancer


# Description:

desc <- "Bladder Cancer"

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("188")))

icd10_codes <- as.character(children_safe(c("C67")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
