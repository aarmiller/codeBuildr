## Codes for failure_to_thrive_adult


# Description:

desc <- "Cachexia and Adult Failure to thrive"

tokens <- c("cachexia","adult failure to thrive","failure to thrive",
            "wasting syndrome")

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("7994","7837")))

icd10_codes <- as.character(children_safe(c("R64","R627")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
