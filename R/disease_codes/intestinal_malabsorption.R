## Codes for intestinal_malabsorption


# Description:

desc <- "Intestinal Malabsorption"

tokens <- c('intestinal malabsorption')

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("579")))

icd10_codes <- as.character(children_safe(c("K90")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
