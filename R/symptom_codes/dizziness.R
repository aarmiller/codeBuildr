## Codes for dizziness 

    
# Description:
    
desc <- "Dizziness and giddiness"
    
tokens <- c("dizziness and giddiness","dizziness","giddiness","vertigo",
            "disembarkment syndrome","disequilibrium","dysequilibrium",
            "light headedness","lightheadedness","dedebarquement syndrome",
            "lightheaded")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("7804")))
    
icd10_codes <- as.character(children_safe(c("R42")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()