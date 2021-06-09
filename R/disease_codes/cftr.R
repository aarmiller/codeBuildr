## Codes for cftr


# Description:

desc <- "CFTR Mutation (CF or CF Carrier)"

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("2770","V8381")))

icd10_codes <- as.character(children_safe(c("E84","E840","E841","E8411","E8419",
                                            "E848","E849","Z141")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
