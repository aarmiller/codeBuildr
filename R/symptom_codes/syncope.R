## Codes for syncope 

    
# Description:
    
desc <- "Syncope and collapse"
    
tokens <- c("syncope","collapse","syncope and collapse","fainting",
            "loss of consciousness","faint")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("7802")))
    
icd10_codes <- as.character(children_safe(c("R55")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()