## Codes for ipd 

    
# Description:
    
desc <- "Interstitial Pulmonary Diseases"

tokens <- c('interstitial pulmonary diseases')
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("5163")))
    
icd10_codes <- as.character(children_safe(c("J84")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
