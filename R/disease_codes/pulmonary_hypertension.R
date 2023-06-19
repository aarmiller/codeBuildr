## Codes for pulmonary_hypertension 

    
# Description:
    
desc <- "Pulmonary Hypertension"

tokens <- c('pulmonary hypertension')
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("4168")))
    
icd10_codes <- as.character(children_safe(c("I272")))


# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
