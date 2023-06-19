## Codes for campylobacter 

    
# Description:
    
desc <- "Campylobacter"

tokens <- c("campylobacter", "campylobacteriosis")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("00843")))
    
icd10_codes <- as.character(children_safe(c("A045")))

    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()