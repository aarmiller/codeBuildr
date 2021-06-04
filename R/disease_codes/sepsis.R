## Codes for sepsis


# Description:

desc <- "Sepsis"

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("99592","78552","0223","0362","0545",
                                           "449","7907","99591","038","6700")))

icd10_codes <- as.character(children_safe(c("A40","A41")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
