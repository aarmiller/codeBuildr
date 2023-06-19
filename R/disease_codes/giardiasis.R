## Codes for giardiasis 

    
# Description:
    
desc <- "Giardiasis"

tokens <- c("giardiasis","giardia","beaver fever","giardia duodenalis")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("0071")))
    
icd10_codes <- as.character(children_safe(c("A071")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()