## Codes for legion


# Description:

desc <- "Legionellosis"

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("48284","48283")))

icd10_codes <- as.character(children_safe(c("A481","A482")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
