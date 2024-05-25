## Codes for ebv 

    
# Description:
    
desc <- "Epstein-Barr virus (EBV) infection"
    
tokens <- c("Epstein-Barr virus","EBV","Epstein-Barr virusinfection")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("075")))
    
icd10_codes <- as.character(children_safe(c("B279")))

# as.character(children_safe(c("B279"))) %>% codeBuildr::icd10_to_icd9()
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()