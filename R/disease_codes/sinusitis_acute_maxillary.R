## Codes for sinusitis_acute_maxillary 

    
# Description:
    
desc <- "Acute maxillary sinusitis"

tokens <- c('acute maxillary sinusitis')
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("4610")))
    
icd10_codes <- as.character(children_safe(c("J010","J0100","J0101")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
