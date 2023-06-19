## Codes for genital_herpes 

# SOURCE https://www.mdpi.com/2077-0383/11/1/71
# Description:
    
desc <- "Genital Herpes"

tokens <- c("genital herpes","herpes","herpes simplex virus")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("0541")))
    
icd10_codes <- as.character(children_safe(c("A60")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()