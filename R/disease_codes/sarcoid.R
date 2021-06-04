## Codes for sarcoid


# Description:

desc <- "Sarcoidosis"

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("135","3214")))

icd10_codes <- as.character(children_safe(c("D86")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
