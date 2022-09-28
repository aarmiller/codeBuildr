## Codes for diabetes_sec 

    
# Description:
    
desc <- "Secondary Diabetes"
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("249")))

# Note: need to double check this one
icd10_codes <- as.character(children_safe(c("249"))) %>% icd9_to_icd10() %>% unique()
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
