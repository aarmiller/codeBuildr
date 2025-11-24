## Codes for ntm_pulmonary 

    
# Description:
    
desc <- "Pulmonary NTM"
    
tokens <- c("pulmonary NTM")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("0310")))
    
icd10_codes <- as.character(children_safe(c("A310")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()