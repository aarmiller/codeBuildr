## Codes for multiple_sclerosis 

    
# Description:
    
desc <- "Multiple sclerosis"

tokens <- c('multiple sclerosis')
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(codeBuildr::get_icd_from_ccs(80)))

icd10_codes <- as.character(children_safe(codeBuildr::get_icd_from_ccs(80,icd_version=10)))

# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
