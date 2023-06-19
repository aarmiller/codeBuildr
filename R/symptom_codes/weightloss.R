## Codes for weightloss 

    
# Description:
    
desc <- "Abnormal loss of weight and underweight"

tokens <- c('abnormal loss of weight and underweight',"weight loss", "underweight")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("7832")))
    
icd10_codes <- as.character(children_safe(c("R634","R635")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
