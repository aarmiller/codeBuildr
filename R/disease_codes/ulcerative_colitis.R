## Codes for ulcerative_colitis 

    
# Description:
    
desc <- "Ulcerative colitis"

tokens <- c('ulcerative colitis')
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("556")))
    
icd10_codes <- as.character(children_safe(c("K51")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
