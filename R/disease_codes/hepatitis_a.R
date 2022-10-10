## Codes for hepatitis_a 

    
# Description:
    
desc <- "Hepatitis A"
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("0700","0701")))
    
icd10_codes <- as.character(children_safe(c("B15")))

    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()