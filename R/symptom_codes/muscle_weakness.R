## Codes for muscle_weakness


# Description:

desc <- "Muscle Weakness"

tokens <- c('muscle weakness',"weakness")

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("72887")))

icd10_codes <- as.character(icd9_to_icd10(children_safe(c("72887"))))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
