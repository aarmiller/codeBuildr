## Codes for obesity_morbid


# Description:

desc <- "Morbid Obesity"

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("27801")))

icd10_codes <- as.character(children_safe(c("E6601","E662")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
