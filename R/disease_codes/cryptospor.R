## Codes for cryptospor


# Description:

desc <- "Cryptosporidiosis"

tokens <- c("cryptosporidiosis","crypto","cryptosporidium spp","cryptosporidium")

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("0074")))

icd10_codes <- as.character(children_safe(c("A072")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
