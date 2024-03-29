## Codes for e_coli 

    
# Description:
    
desc <- "E. coli O157"

tokens <- c("escherichia coli","e. coli","e coli", "e. coli 0157")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("04141")))
    
icd10_codes <- as.character(children_safe(c("B9621")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()