## Codes for gi_cancer 

    
# Description:
    
desc <- "Cancer of other GI organs; peritoneum"

tokens <- c("gastrointestinal cancer")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c(get_icd_from_ccs(c(18)))))
    
icd10_codes <- as.character(children_safe(c(get_icd_from_ccs(18,10))))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()