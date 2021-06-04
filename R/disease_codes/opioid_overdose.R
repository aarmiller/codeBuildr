## Codes for opioid_overdose


# Description:

desc <- "Opioid Overdose"

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("9650","E8500", "E8501", "E8502")))

icd10_codes <- as.character(children_safe(c("T400", "T401", "T402", "T403", "T404")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
