## Codes for append


# Description:

desc <- "Appendicitis"

# Diagnosis codes:

icd9_codes <- as.character(children(c("540","5400", "5401", "5409", "542", "541",
                                      "4701", "4709")))

icd10_codes <- as.character(children(c("K35", "K36", "K37", "Q2860", "Q2861",
                                       "Q2862", "Q2863")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
