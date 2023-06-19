## Codes for obesity


# Description:

desc <- "Obesity"

tokens <- c('obesity')

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("27800","27801","27803")))

icd10_codes <- as.character(children_safe(c("E660","E6601","E6609","E661","E662",
                                            "E668","E669")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
