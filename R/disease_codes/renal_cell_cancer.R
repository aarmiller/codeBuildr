## Codes for renal_cell_cancer 

    
# Description:
    
desc <- "Renal Cell Cancer"
    
tokens <- c("renal cell cancer")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("1890")))
    
icd10_codes <- as.character(children_safe(c("c64")))

# as.character(children_safe(c("c64"))) %>% icd10_to_icd9()

    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()