## Codes for rash 

    
# Description:
    
desc <- "Skin Rash"
    
tokens <- c("rash","skin eruption")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("7821")))
    
icd10_codes <- as.character(children_safe(c("R21")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()