## Codes for fever


# Description:

desc <- "Fever"

# Diagnosis codes:

icd9_codes <- as.character(get_icd_from_ccs(246))

icd10_codes <- unique(as.character(c(children_safe(c("R50")),get_icd_from_ccs(246,10))))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
