## Codes for diabetes_type2 

    
# Description:
    
desc <- "Type II diabetes"

tokens <- c("type ii diabetes","type 2 diabetes","diabetes")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c()))
    
icd10_codes <- as.character(children_safe(c()))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()