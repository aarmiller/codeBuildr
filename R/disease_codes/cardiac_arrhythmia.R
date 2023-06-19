## Codes for cardiac_arrhythmia 

    
# Description:
    
desc <- "Cardiac arrhythmia"

tokens <- c("cardiac arrhythmia","arrhythmia","irregular heartbeat")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(codeBuildr::get_icd_from_ccs(106)))

icd10_codes <- as.character(children_safe(codeBuildr::get_icd_from_ccs(106,10)))

# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()