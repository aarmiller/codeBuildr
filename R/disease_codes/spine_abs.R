## Codes for spine_abs


# Description:

desc <- "Spinal Abscess"

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("3240","3241","3249")))

icd10_codes <- as.character(children_safe(c("G060","G061","G062")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
