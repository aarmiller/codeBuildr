## Codes for meningococcal 

    
# Description:
    
desc <- "Meningococcal disease"

tokens <- c('meningococcal disease')
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("036")))
    
icd10_codes <- as.character(children_safe(c("A39")))

    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
