## Codes for pseudomonas_pneumonia 

    
# Description:
    
desc <- "Pseudomonas Pneumonia"

tokens <- c('pseudomonas pneumonia')
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("4821")))
    
icd10_codes <- as.character(children_safe(c("J151")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
