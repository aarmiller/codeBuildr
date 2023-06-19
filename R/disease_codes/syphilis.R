## Codes for syphilis


# Description:

desc <- "Syphilis"

tokens <- c('syphilis')

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("095","096","091","090","092","093",
                                           "094","097")))

icd10_codes <- as.character(children_safe(c("A51","A50","A53","A52")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
