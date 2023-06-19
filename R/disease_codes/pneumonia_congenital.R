## Codes for pneumonia_congenital


# Description:

desc <- "Congenital pneumonia"

tokens <- c('congenital pneumonia')

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("7700")))

icd10_codes <- as.character(children_safe(c("P23")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
