## Codes for mycoplasma_pneumonia 

    
# Description:
    
desc <- "Mycoplasma pneumonia"

tokens <- c('mycoplasma pneumonia')
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("04181")))
    
icd10_codes <- as.character(children_safe(c("A493")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
