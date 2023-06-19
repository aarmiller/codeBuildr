## Codes for cvid


# Description:

desc <- "Common Variable Immunodeficiency"

tokens <- c("cvid","common variable immunodeficiency")

# Diagnosis codes:

icd9_codes <- as.character(icd10_to_icd9(children_safe(c("D83")))) %>% unique()

icd10_codes <- as.character(children_safe(c("D83")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
