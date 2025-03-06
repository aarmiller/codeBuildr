## Codes for diabetes10 

    
# Description:
    
desc <- "Diabetes (ICD-10)"
    
tokens <- c("Diabetes ICD-10")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c()))
    
icd10_codes <- as.character(children_safe(c("E10","E11","E12","E13","E14")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()