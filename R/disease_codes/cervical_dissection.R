## Codes for cervical_dissection 

    
# Description:
    
desc <- "Cervical and Cerebral Artery Dissection"
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("44321","44324")))
    
icd10_codes <- as.character(children_safe(c("I7771","I7774","I670","I7775")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()