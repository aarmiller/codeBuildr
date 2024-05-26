## Codes for acute_myeloid_leukemia 

    
# Description:
    
desc <- "Acute Myeloid Leukemia"
    
tokens <- c("acute myeloid leukemia")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("205")))
    
icd10_codes <- as.character(children_safe(c("c92")))

# as.character(children_safe(c("c92"))) %>% icd10_to_icd9()
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()