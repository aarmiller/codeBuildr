## Codes for enlarged_lymph_nodes 

    
# Description:
    
desc <- "Enlarged lymph nodes"

tokens <- c('enlarged lymph nodes','swollen lymph nodes','lymph nodes')
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("7856")))
    
icd10_codes <- as.character(children_safe(c("R59")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
