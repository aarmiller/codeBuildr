## Codes for dvt 

    
# Description:
    
desc <- "Deep Venous Thrombosis"
    
tokens <- c("Deep Venous thrombosis","DVT")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("453")))
    
icd10_codes <- as.character(children_safe(c("I82")))

# as.character(children_safe(c("I82"))) %>% codeBuildr::icd10_to_icd9()
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()