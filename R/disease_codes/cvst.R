## Codes for cvst 

    
# Description:
    
desc <- "Cerebral Venous Sinus Thrombosis"
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("325","4376","6715")))
    
icd10_codes <- as.character(children_safe(c("I636","I676","G08","O225","0873")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()