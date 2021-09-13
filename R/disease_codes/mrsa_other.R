## Codes for mrsa_other 

    
# Description:
    
desc <- "Methicillin Resistant Staphylococcus Aureus Colonization/Carrier or History"
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("V0254","V1204")))
    
icd10_codes <- as.character(children_safe(c("Z22322","Z8614")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()