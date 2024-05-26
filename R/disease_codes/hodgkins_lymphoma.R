## Codes for hodgkins_lymphoma 

    
# Description:
    
desc <- "Hodgkin’s Lymphoma"
    
tokens <- c("Hodgkin’s Lymphoma","Hodgkins")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("201")))
    
icd10_codes <- as.character(children_safe(c("c81")))

# as.character(children_safe(c("c81"))) %>% icd10_to_icd9()
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()