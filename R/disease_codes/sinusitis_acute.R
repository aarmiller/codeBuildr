## Codes for sinusitis_acute


# Description:

desc <- "Acute Sinusitis"

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("4610","4611","4612","4613","4618")))

icd10_codes <- as.character(children_safe(c("J010","J011","J012","J013","J014","J018")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
