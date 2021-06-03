## Codes for abdominal_pain


# Description:

desc <- "Abdominal pain"

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("7890")))

icd10_codes <- as.character(children_safe(c("R10")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
