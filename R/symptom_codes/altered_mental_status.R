## Codes for altered_mental_status 

    
# Description:
    
desc <- "Altered Mental Status"

tokens <- c('altered mental status','confusion')
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("78097")))
    
icd10_codes <- as.character(children_safe(c("R4182","R410","R4182")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
