## Codes for intestinal_atresia


# Description:

desc <- "Intestinal atresia"

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("7511", "7512")))

icd10_codes <- as.character(children_safe(c("Q419","Q429")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
