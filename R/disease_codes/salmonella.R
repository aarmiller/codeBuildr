## Codes for salmonella 

    
# Description:
    
desc <- "Salmonella"

tokens <- c('salmonella')
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("003")))
    
icd10_codes <- as.character(children_safe(c("A02")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
