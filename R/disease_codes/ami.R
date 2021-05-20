## Codes for ami


# Description:

desc <- "Acute Myocardial Infarction"

# Diagnosis codes:

icd9_codes <- as.character(children(c("410")))

icd10_codes <- as.character(children(c("I21","I22")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
