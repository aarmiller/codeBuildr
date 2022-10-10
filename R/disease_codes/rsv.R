## Codes for rsv 

    
# Description:
    
desc <- "Respiratory Syncytial Virus (RSV)"
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("4801","46611","0796")))
    
icd10_codes <- as.character(children_safe(c("J121","J210","J205")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()