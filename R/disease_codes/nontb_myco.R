## Codes for nontb_myco


# Description:

desc <- "Nontuberculous Mycobacteria"

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("0310","0318","0319")))

icd10_codes <- as.character(children_safe(c("A310","A311","A318","A319")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
