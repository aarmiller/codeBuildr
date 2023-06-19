## Codes for tularemia 

    
# Description:
    
desc <- "Tularemia"

tokens <- c('tularemia')
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("21")))
    
icd10_codes <- as.character(children_safe(c("A21")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
