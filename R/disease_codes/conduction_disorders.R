## Codes for conduction_disorders 

    
# Description:
    
desc <- "Conduction disorders"

tokens <- c("conduction disorders","heart block","bundle branch block",
            "long qt syndrome","lqts")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(codeBuildr::get_icd_from_ccs(105)))

icd10_codes <- as.character(children_safe(codeBuildr::get_icd_from_ccs(105,icd_version=10)))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()