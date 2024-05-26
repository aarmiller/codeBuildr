## Codes for venous_insuf 

    
# Description:
    
desc <- "Venous insufficiency (chronic peripheral)"
    
tokens <- c("Venous insufficiency (chronic peripheral)","Venous insufficiency")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("45981")))
    
icd10_codes <- as.character(children_safe(c("I872")))

# as.character(children_safe(c("I872"))) %>% codeBuildr::icd10_to_icd9()
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()