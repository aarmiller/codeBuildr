## Codes for cystic_lung


# Description:

desc <- "Congenital cystic lung"

tokens <- c("congenital cystic lung","cystic adenomatoid malformation",
            "bronchogenic cyst","pulmonary sequestration",
            "congenital lobar emphysema")

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("7484")))

icd10_codes <- as.character(children_safe(c("Q330")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
