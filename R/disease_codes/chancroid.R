## Codes for chancroid 

# SOURCE https://www.mdpi.com/2077-0383/11/1/71
# Description:
    
desc <- "Chancroid"

tokens <- c("chancroid","haemophilus ducreyi")
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("0990")))
    
icd10_codes <- as.character(children_safe(c("A57")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()