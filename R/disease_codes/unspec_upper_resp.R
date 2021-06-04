## Codes for unspec_upper_resp


# Description:

desc <- "Upper Respiratory Infection-Unspecified"

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("465")))

icd10_codes <- as.character(icd9_to_icd10(children_safe(c("465"))))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
