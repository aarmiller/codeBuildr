## Codes for cellulitis 

    
# Description:
    
desc <- "Cellulitis"

tokens <- c("cellulitis")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("681","682")))
    
icd10_codes <- as.character(children_safe(c("L03")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()