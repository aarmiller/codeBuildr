## Codes for lymphang 

    
# Description:
    
desc <- "Lymphangioleiomyomatosis"
    
tokens <- c("lymphangioleiomyomatosis")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("5164")))
    
icd10_codes <- as.character(children_safe(c("J8481")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()