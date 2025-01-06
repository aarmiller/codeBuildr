## Codes for uti 

    
# Description:
    
desc <- "Urinary Tract Infection"
    
tokens <- c("uti","urinary tract infection")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("5950","5990")))
    
icd10_codes <- as.character(children_safe(c("N3000","N3001","N390")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()