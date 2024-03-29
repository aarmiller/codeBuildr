## Codes for endometriosis 

    
# Description:
    
desc <- "Endometriosis"

tokens <- c("endometriosis")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(codeBuildr::get_icd_from_ccs(169)))
    
icd10_codes <- as.character(children_safe(codeBuildr::get_icd_from_ccs(169,10)))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()