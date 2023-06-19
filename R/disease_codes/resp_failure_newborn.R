## Codes for resp_failure_newborn


# Description:

desc <- "Respiratory Failure of Newborn"

tokens <- c('respiratory failure of newborn')

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("77081","77082","77083","77084",
                                           "77087","77088","77089")))

icd10_codes <- as.character(children_safe(c("P283","P284","P282","P285","P2881",
                                            "P84","P2889")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
