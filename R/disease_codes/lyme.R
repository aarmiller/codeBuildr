## Codes for lyme


# Description:

desc <- "Lyme Disease"

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("08881")))

icd10_codes <- as.character(children_safe(c("A692")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
