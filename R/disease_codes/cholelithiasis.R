## Codes for cholelithiasis


# Description:

desc <- "Cholelithiasis"

tokens <- c("cholelithiasis","gallstones","gallstone")

# Diagnosis codes:

icd9_codes <- as.character(children_safe(c("574")))

icd10_codes <- as.character(children_safe(c("K80")))

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
