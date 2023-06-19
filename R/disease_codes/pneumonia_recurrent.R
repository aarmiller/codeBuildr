## Codes for pneumonia_recurrent


# Description:

desc <- "Personal history of recurrent pneumonia"

tokens <- c('personal history of recurrent pneumonia')

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("V1261")))

icd10_codes <- as.character(children_safe(c("Z8701")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
