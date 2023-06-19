## Codes for swelling_abdom


# Description:

desc <- "Abdominal Swelling"

tokens <- c('abdominal swelling')

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("7893")))

icd10_codes <- as.character(children_safe(c("R190")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
