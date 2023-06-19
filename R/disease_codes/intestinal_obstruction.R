## Codes for intestinal_obstruction


# Description:

desc <- "Intestinal obstruction"

tokens <- c('intestinal obstruction')

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("560")))

icd10_codes <- as.character(children_safe(c("K56")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
