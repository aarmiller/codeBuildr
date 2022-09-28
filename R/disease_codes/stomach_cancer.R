## Codes for stomach_cancer 

    
# Description:
    
desc <- "Stomach Cancer"
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c(get_icd_from_ccs(c(13)))))
    
icd10_codes <- as.character(children_safe(c(get_icd_from_ccs(c(13,10)))))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()