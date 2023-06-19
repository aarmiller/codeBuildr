## Codes for crohns 

    
# Description:
    
desc <- "Crohn's disease"

tokens <- c("crohn's disease","ileitis","crohns disease",
            "crohn's","crohns")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("555")))
    
icd10_codes <- as.character(children_safe(c("K50")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()