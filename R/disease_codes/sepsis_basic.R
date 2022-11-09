## Codes for sepsis_basic 

    
# Description:
    
desc <- "Sepsis Basic Codes"
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("0031","0362","038","99591","99592","78552")))
    
icd10_codes <- as.character(children_safe(c("A021","A394","A40","A41","R652"))) %>% unique()


# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()