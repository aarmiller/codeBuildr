## Codes for ascities


# Description:

desc <- "Ascites"

tokens <- c("ascites")

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("7895")))

icd10_codes <- as.character(children_safe(c("R180","R188")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
