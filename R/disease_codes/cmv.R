## Codes for cmv 

    
# Description:
    
desc <- "Cytomegalovirus (CMV) infection"
    
tokens <- c("Cytomegalovirus","CMV","Cytomegalovirus infection")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("0785","4841")))
    
icd10_codes <- as.character(children_safe(c("B25")))

# as.character(children_safe(c("B25"))) %>% codeBuildr::icd10_to_icd9()
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()