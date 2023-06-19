## Codes for skin_ulcers_chronic 

    
# Description:
    
desc <- "Chronic skin ulcers"

tokens <- c('chronic skin ulcers')
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("707")))
    
icd10_codes <- as.character(children_safe(c("L97","L984")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
