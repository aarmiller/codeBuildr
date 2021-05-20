## Codes for tb


# Description:

desc <- "Tuberculosis"

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("013","017","018","011","012","014",
                                           "015","016")))

icd10_codes <- c("B90",as.character(children(c("A15","A17","A18","A19"))))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
