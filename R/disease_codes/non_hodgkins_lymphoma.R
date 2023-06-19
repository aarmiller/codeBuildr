## Codes for non_hodgkins_lymphoma 

    
# Description:
    
desc <- "Non-Hodgkin's lymphoma"

tokens <- c("non-hodgkin's lymphoma")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(codeBuildr::get_icd_from_ccs(38)))

icd10_codes <- as.character(children_safe(codeBuildr::get_icd_from_ccs(38,icd_version=10)))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
