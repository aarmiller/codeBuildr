## Codes for sle 

    
# Description:
    
desc <- "Systemic lupus erythematosus (SLE)"
    
tokens <- c("systemic lupus erythematosus (SLE)","SLE","systemic lupus erythematosus")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("710")))
    
icd10_codes <- as.character(children_safe(c("M32")))

# as.character(children_safe(c("M32"))) %>% icd10_to_icd9()
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()