## Codes for chest_pain


# Description:

desc <- "Chest Pain"

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("7841","7865")))

icd10_codes <- as.character(children_safe(c("R07")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
