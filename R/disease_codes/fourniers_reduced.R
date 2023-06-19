## Codes for fourniers_reduced 

    
# Description:
    
desc <- "Fournier's Final Codes (Updated 12/9/21)"

tokens <- c("fournier's","fourniers","fournier's gangrene","fourniers gangrene",
            "necrotizing fasciitis of genital","necrotizing fasciitis of scrotum",
            "necrotizing fasciitis of penis","necrotizing fasciitis of perineum")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("60883")))
    
icd10_codes <- as.character(children_safe(c("N493")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()