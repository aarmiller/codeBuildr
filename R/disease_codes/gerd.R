## Codes for gerd


# Description:

desc <- "Gastroesophageal reflux disease (GERD)"

tokens <- c("gastroesophageal reflux disease","gerd","reflux","acid reflux")

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("53081")))

icd10_codes <- as.character(children_safe(c("K21")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
