## Codes for pancreatitis_acute


# Description:

desc <- "Acute Pancreatitis"

tokens <- c('acute pancreatitis')

# Diagnosis codes:

icd9_codes <- children(c("5770"))

icd10_codes <- children(c("K85"))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
