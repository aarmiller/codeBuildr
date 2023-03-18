## Codes for colon_cancer 

    
# Description:
    
desc <- "Colon Cancer"
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c(get_icd_from_ccs(c(14)))))
    
icd10_codes <- as.character(children_safe(c(get_icd_from_ccs(c(14),10))))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()