## Codes for hairy_cell_leukemia 

    
# Description:
    
desc <- "Hairy Cell Leukemia"
    
tokens <- c("hairy cell leukemia")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("2024")))
    
icd10_codes <- as.character(children_safe(c("c914")))

# as.character(children_safe(c("c914"))) %>% icd10_to_icd9()
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()