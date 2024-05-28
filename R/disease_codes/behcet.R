## Codes for behcet 

    
# Description:
    
desc <- "Behçet disease"
    
tokens <- c("behçet disease","behcet disease","behçet","behcet")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("1361")))
    
icd10_codes <- as.character(children_safe(c("M352")))

# as.character(children_safe(c("M352"))) %>% icd10_to_icd9()
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()