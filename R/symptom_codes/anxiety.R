## Codes for anxiety 

    
# Description:
    
desc <- "Anxiety disorders"
    
tokens <- c("anxiety", "panic", "panic attack", "overanxious","anxious")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("3000")))
    
icd10_codes <- as.character(children_safe(c("F41")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()