## Codes for q_fever


# Description:

desc <- "Q Fever"

tokens <- c('q fever')

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("0830")))

icd10_codes <- as.character(children_safe(c("A78")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
