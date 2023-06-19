## Codes for hpv 

# SOURCE https://www.mdpi.com/2077-0383/11/1/71
# Description:
    
desc <- "Human papillomavirus"

tokens <- c('human papillomavirus')
    
# Diagnosis codes:
    
icd9_codes <- as.character(children_safe(c("07811","79505","79509","79515","79519","79675","79679")))
    
icd10_codes <- as.character(children_safe(c("A630","R8581","R8582","R8781","R8782")))
    
# Procedure codes:
    
pr_codes_icd9 <- c()
    
pr_codes_icd10 <- c()
    
pr_codes_cpt <- c()
    
# Medication codes
    
rx_codes <- c()
