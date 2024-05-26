## Codes for kawasaki 

    
# Description:
    
desc <- "Mucocutaneous lymph node syndrome (Kawasaki)"
    
tokens <- c("mucocutaneous lymph node syndrome","kawasaki")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("4461")))
    
icd10_codes <- as.character(children_safe(c("M303")))

# as.character(children_safe(c("M303"))) %>% icd10_to_icd9()
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()