## Codes for cocci


# Description:

desc <- "Coccidioidomycosis"

tokens <- c("coccidioidomycosis","cocci","valley fever","coccidioides")

# Diagnosis codes:

icd9_codes <- as.character(children("114"))

icd10_codes <- as.character(children("B38"))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
