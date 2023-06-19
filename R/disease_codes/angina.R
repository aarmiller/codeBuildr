## Codes for angina 

    
# Description:
    
desc <- "Angina pectoris"
    
tokens <- c("angina", "angina pectoris", "chest pain")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("413")))
    
icd10_codes <- as.character(children_safe(c("I20")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()