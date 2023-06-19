## Codes for gout 

    
# Description:
    
desc <- "Gout"

tokens <- c('gout')
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("274")))
    
icd10_codes <- as.character(children_safe(c("M10","M1A")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
