## Codes for cirrhosis


# Description:

desc <- "Cirrhosis"

tokens <- c("cirrhosis","hepatic cirrhosis")

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("5715","5719","5716")))

icd10_codes <- as.character(children_safe(c("K74")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
