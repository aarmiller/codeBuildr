## Codes for cerebellar_stroke 

    
# Description:
    
desc <- "Cerebellar Stroke"

tokens <- c("cerebellar stroke","cerebellar infarct","stroke")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c()))
    
icd10_codes <- as.character(children_safe(c("G464","I6334","I6344","I6354")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()