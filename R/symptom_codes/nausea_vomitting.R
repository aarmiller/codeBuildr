## Codes for nausea_vomitting


# Description:

desc <- "Nausea or Vomiting"

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("5362","56987","78701","78703","78704","78720")))

icd10_codes <- as.character(children_safe(c("R110","R111","R112")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
