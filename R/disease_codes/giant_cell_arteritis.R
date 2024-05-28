## Codes for giant_cell_arteritis 

    
# Description:
    
desc <- "Giant cell arteritis"
    
tokens <- c("giant cell arteritis")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("4465")))
    
icd10_codes <- as.character(children_safe(c("M315","M316")))

# as.character(children_safe(c("M315","M316"))) %>% icd10_to_icd9()
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()