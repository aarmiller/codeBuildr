## Codes for postinfective_arthropathies 

    
# Description:
    
desc <- "Postinfective and reactive arthropathies"
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("711","713")))
    
icd10_codes <- as.character(children_safe(c("M02")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()