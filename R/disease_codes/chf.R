## Codes for chf 

    
# Description:
    
desc <- "Congestive Heart Failure"
    
tokens <- c("chf","heart failure","congestive heart failure")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("428","40201","40211","40291","40401","40403","40411","40413","40491","40493")))
    
icd10_codes <- as.character(children_safe(c("I0981","I110","I130","I132","I50")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()