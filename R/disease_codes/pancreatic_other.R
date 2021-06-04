## Codes for pancreatic_other


# Description:

desc <- "Other Pancreatic Disorders"

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("5778","5779")))

icd10_codes <- as.character(children_safe(c("K868","K8681","K9689","K869")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
