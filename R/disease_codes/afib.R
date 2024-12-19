## Codes for afib 

    
# Description:
    
desc <- "Atrial fibrillation"
    
tokens <- c("Atrial fibrillation","afib","a fib")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("42731")))
    
icd10_codes <- as.character(children_safe(c("I480","I481","I4811","I4819","I482","I4820","I4821","I4891")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()