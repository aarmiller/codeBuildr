## Codes for ra 

    
# Description:
    
desc <- "Rheumatoid arthritis"

tokens <- c('rheumatoid arthritis')
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(codeBuildr::get_icd_from_ccs(202)))
    
icd10_codes <- as.character(children_safe(codeBuildr::get_icd_from_ccs(202,10)))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
