## Codes for resp_failure


# Description:

desc <- "Respiratory Failure"

tokens <- c('respiratory failure')

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("51851","51852","51853","51881","51882",
                                           "51883","51884","51889")))

icd10_codes <- as.character(children_safe(c("J96","J95821","J951","J952","J953",
                                            "J95822","J80","J9610","J984")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
