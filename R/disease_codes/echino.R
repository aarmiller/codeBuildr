## Codes for echino


# Description:

desc <- "Echinococcosis"

tokens <- c("echinococcosis","echinocococcus","cystic echinococcosis",
            "alveolar echinococcosis")

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("122")))

icd10_codes <- as.character(children_safe(c("B67")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
