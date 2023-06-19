## Codes for pancreatic_steatorrhea


# Description:

desc <- "Pancreatic Steatorrhea"

tokens <- c('pancreatic steatorrhea')

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("5794")))

icd10_codes <- as.character(children_safe(c("K903")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
