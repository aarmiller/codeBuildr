## Codes for abnormal_sputum 

    
# Description:
    
desc <- "Abnormal sputum"

tokens <- c('abnormal sputum', "coughing sputum", "coughing up sputum",
            "sputum", "phlegm")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("7864")))
    
icd10_codes <- as.character(children_safe(c("R093")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
