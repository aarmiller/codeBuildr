## Codes for fluid_electrolyte


# Description:

desc <- "Fluid and electrolyte disorders"

tokens <- c('fluid and electrolyte disorders')

# Diagnosis codes:

icd9_codes <- as.character(get_icd_from_ccs(c(55)))

icd10_codes <- as.character(get_icd_from_ccs(c(55,10)))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
