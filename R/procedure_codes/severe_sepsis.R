## Codes for severe_sepsis 

    
# Description:
    
desc <- "Severe Sepsis Codes"
    
tokens <- c()
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c()))
    
icd10_codes <- as.character(children_safe(c()))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c("1GZ31GPND",#Ventilation invasive transtracheal jet & pos pressure
                    "1GZ31CRND",#Ventilation  PO invasive by tracheostomy & pos pressure,
                    "1GZ31CAND")
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()