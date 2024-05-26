## Codes for wegeners 

    
# Description:
    
desc <- "Granulomatosis with polyangiitis (Wegener's granulomatosis)"
    
tokens <- c("granulomatosis with polyangiitis","wegener's granulomatosis","wegeners","wegeners granulomatosis")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("4464")))
    
icd10_codes <- as.character(children_safe(c("M313")))

# as.character(children_safe(c("M313"))) %>% icd10_to_icd9()
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()