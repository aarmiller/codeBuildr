## Codes for sinusitis_chronic


# Description:

desc <- "Chronic Sinusitis"

tokens <- c('chronic sinusitis')

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("4730","4731","4732","4733","4738",
                                           "4739")))

icd10_codes <- as.character(children_safe(c("J320","J321","J322","J323","J324",
                                            "J328","J329")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
