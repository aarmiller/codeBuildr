## Codes for cf


# Description:

desc <- "Cystic Fibrosis"

tokens <- c("cystic fibrosis","cf")

# Diagnosis codes:

icd9_codes <- as.character(children(c("2770")))

icd10_codes <- as.character(children(as.icd10(c("E84","E840","E841","E8411","E8419",
                                       "E848","E849")))) %>% unique()

?children

# Procedure codes:

pr_codes_icd9 <- c()

pr_codes_icd10 <- c()

pr_codes_cpt <- c()

# Medication codes

rx_codes <- c()
