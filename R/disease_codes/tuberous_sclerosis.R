## Codes for tuberous_sclerosis 

    
# Description:
    
desc <- "Tuberous sclerosis complex"
    
tokens <- c("tuberous sclerosis complex","tuberous sclerosis")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("7595")))
    
icd10_codes <- as.character(children_safe(c("Q851")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()