## Codes for multiple_myeloma 

    
# Description:
    
desc <- "Multiple myeloma"

tokens <- c('multiple myeloma')
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(codeBuildr::get_icd_from_ccs(40)))

icd10_codes <- as.character(children_safe(codeBuildr::get_icd_from_ccs(40,icd_version=10)))

    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
