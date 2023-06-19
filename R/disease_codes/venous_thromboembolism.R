## Codes for venous_thromboembolism


# Description:

desc <- "Venous thromboembolism"

tokens <- c('venous thromboembolism')

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("453","451")))

icd10_codes <- as.character(icd9_to_icd10(children_safe(c("453","451"))))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
