## Codes for sinusitis_acute_other 

    
# Description:
    
desc <- "Other acute sinusitis"

tokens <- c('other acute sinusitis')
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("4618")))
    
icd10_codes <- as.character(children_safe(c("J018","J0180","J0181")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
