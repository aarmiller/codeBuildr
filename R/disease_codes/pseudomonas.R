## Codes for pseudomonas


# Description:

desc <- "Pseudomonas Infections"

tokens <- c('pseudomonas infections')

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("0417","4821")))

icd10_codes <- as.character(children_safe(c("B965","J151")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
