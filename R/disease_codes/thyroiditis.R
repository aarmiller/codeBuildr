## Codes for thyroiditis 

    
# Description:
    
desc <- "Thyroiditis"
    
tokens <- c("thyroiditis")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("245")))
    
icd10_codes <- as.character(c("E06","E061","E062","E063","E064","E065","E069"))

# as.character(children_safe(c("E06"))) %>% icd10_to_icd9()
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()