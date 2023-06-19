## Codes for cdi


# Description:

desc <- "Clostridioides difficile Infection"

tokens <- c("clostridioides difficile infection","clostridium difficile infection",
            "clostridioides difficile","clostridium difficile",
            "cdi","cdiff","c. diff","c. difficile")

# Diagnosis codes:

icd9_codes <- as.character(c("00845"))

icd10_codes <- as.character(c(c("A047","A0471","A0472")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
