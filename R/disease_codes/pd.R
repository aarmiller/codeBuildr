## Codes for pd


# Description:

desc <- "Parkinson's Disease"

tokens <- c("parkinson's disease","parkinsons disease","parkinsons")

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("3320")))

icd10_codes <- as.character(children_safe(c("G20")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

# get_ndc_from_terms("levodopa")

rx_codes <- get_ndc_from_terms("levodopa")$ndcnum
