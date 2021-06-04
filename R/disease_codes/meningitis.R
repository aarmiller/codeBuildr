## Codes for meningitis


# Description:

desc <- "Meningitis"

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("00321","0270","0360","0361","320")))

icd10_codes <- as.character(children_safe(c("G00","G03","A87")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
