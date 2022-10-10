## Codes for influenza 

    
# Description:
    
desc <- "Influenza"
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("487","488")))
    
icd10_codes <- as.character(children_safe(c("J09","J10","J11")))

# codeBuildr::children10(c("J09","J10","J11"))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()