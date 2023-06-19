## Codes for rheumatoid_arthritis 

    
# Description:
    
desc <- "Rheumatoid arthritis "

tokens <- c('rheumatoid arthritis')
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("714")))
    
icd10_codes <- as.character(children_safe(c("M05","M06","M08")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
