## Codes for pneumonia_mrsa 

    
# Description:
    
desc <- "Methicillin resistant pneumonia due to Staphylococcus aureus"
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("48242")))
    
icd10_codes <- as.character(children_safe(c("J15212")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()