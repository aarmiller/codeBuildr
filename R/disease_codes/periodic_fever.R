## Codes for periodic_fever 

    
# Description:
    
desc <- "Periodic fever syndromes (Familial Mediterranean fever)"
    
tokens <- c("periodic fever syndrome","familial mediterranean fever")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("27731")))
    
icd10_codes <- as.character(children_safe(c("M041")))

# as.character(children_safe(c("M041"))) %>% icd10_to_icd9()
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()