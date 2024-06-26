## Codes for takayasu 

    
# Description:
    
desc <- "Aortic arch syndrome (Takayasu)"
    
tokens <- c("aortic arch syndrome (Takayasu)","aortic arch syndrome","takayasu")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("4467")))
    
icd10_codes <- as.character(children_safe(c("M314")))

# as.character(children_safe(c("M314"))) %>% icd10_to_icd9()
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()