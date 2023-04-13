## Codes for aortic_dissection 

    
# Description:
    
desc <- "Aortic dissection"
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("4410")))
    
icd10_codes <- as.character(children_safe(c("I710","I71010","I71011","I71012","I71019")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()