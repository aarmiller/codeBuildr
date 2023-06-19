## Codes for nec_fasc


# Description:

desc <- "Necrotizing Faciitis"

tokens <- c('necrotizing faciitis')

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("72886","60883","0400","V1389")))

icd10_codes <- as.character(children_safe(c("M726","N493","Z87438")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
