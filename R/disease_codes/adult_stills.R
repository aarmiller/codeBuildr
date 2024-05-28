## Codes for adult_stills 

    
# Description:
    
desc <- "Adult Still’s disease"
    
tokens <- c("adult still’s disease","adult stills disease")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("7142")))
    
icd10_codes <- as.character(children_safe(c("M061")))

# as.character(children_safe(c("M061"))) %>% icd10_to_icd9()
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()